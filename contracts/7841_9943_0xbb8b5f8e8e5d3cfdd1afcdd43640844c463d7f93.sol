// contracts/Droplets.sol

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC721A} from "erc721a/contracts/ERC721A.sol";

/**
 * @author h2o <@droplets_h2o> for Droplets <@nft_droplets>
 */
contract Droplets is ERC721A, Ownable {
    /**
     * @dev Enum depicting the sale's current state
     *
     * Variants:
     *
     * - Closed The sale is closed
     * - Restricted The sale is open to whitelisted participants
     * - Open The sale is open to all users
     */
    enum SaleState {
        Closed,
        Restricted,
        Open
    }

    uint256 public constant MAX_SUPPLY = 6500;
    uint256 public constant TOKEN_PRICE = 0.065 ether;
    uint256 public constant PUBLIC_MINT_LIMIT = 3;
    uint256 public constant WHITELIST_MINT_LIMIT = 2;

    SaleState public saleState;
    bytes32 public merkleRoot;

    string public baseURI;

    constructor(
        string memory baseURI_,
        address recipient,
        uint256 allocation
    ) ERC721A("Droplets", "DRIP") {
        if (allocation < MAX_SUPPLY && allocation != 0)
            _safeMint(recipient, allocation);

        baseURI = baseURI_;
    }

    // -------- MODIFIERS --------

    modifier onlyExternallyOwnedAccount() {
        require(tx.origin == msg.sender, "Droplets: not externally owned account");
        _;
    }

    modifier onlyValidProof(bytes32[] calldata proof) {
        bool valid = MerkleProof.verify(proof, merkleRoot, keccak256(abi.encode(msg.sender)));
        require(valid, "Droplets: invalid proof");
        _;
    }

    // -------- TOKEN --------

    /**
     * @dev See {ERC721A-_baseURI}.
     */
    function _baseURI() internal view virtual override returns (string memory) {
        return baseURI;
    }

    function setBaseURI(string memory uri) external onlyOwner {
        baseURI = uri;
    }

    // -------- SALE --------

    function setMerkleRoot(bytes32 _root) external onlyOwner {
        merkleRoot = _root;
    }

    function setSaleState(uint256 newState) external onlyOwner {
        if (newState == 0) saleState = SaleState.Closed;
        else if (newState == 1) saleState = SaleState.Restricted;
        else if (newState == 2) saleState = SaleState.Open;
        else revert("Droplets: sale state does not exist");
    }

    function tokensRemainingForAddress(address who) public view returns (uint256) {
        if (saleState == SaleState.Restricted)
            return WHITELIST_MINT_LIMIT - _numberMinted(who);
        else if (saleState == SaleState.Open)
            return PUBLIC_MINT_LIMIT + _getAux(who) - _numberMinted(who);
        else revert("Droplets: sale state mismatch");
    }

    /**
     * @dev Creates `quantity` new token(s) for `to`. Its token ID will be automatically
     * assigned (and available on the emitted {IERC721-Transfer} event), and the token
     * URI autogenerated based on the base URI passed at construction.
     *
     * See {ERC721A-_mint}.
     *
     * Requirements:
     *
     * - The caller must have not minted more than `PUBLIC_MINT_LIMIT` already.
     * - `quantity` must be greater than 0.
     */
    function buy(uint256 quantity) external payable onlyExternallyOwnedAccount {
        require(this.totalSupply() + quantity <= MAX_SUPPLY, "Droplets: mint exceeds max supply");
        require(saleState == SaleState.Open, "Droplets: sale state mismatch");
        require(msg.value >= TOKEN_PRICE * quantity, "Droplets: insufficient value");
        require(tokensRemainingForAddress(msg.sender) >= quantity, "Droplets: mint limit for user reached");

        _mint(msg.sender, quantity, "", false);
    }

    /**
     * @dev Restricted version of {mint} with an additional check to assert that
     * the sender's address is included in the merkle tree with root `merkleRoot`
     *
     * See {ERC721A-_mint}.
     *
     * Requirements:
     *
     * - The caller must have not minted more than `WHITELIST_MINT_LIMIT` already.
     * - `quantity` must be greater than 0.
     */
    function buyWhitelist(bytes32[] calldata proof, uint256 quantity)
        external
        payable
        onlyExternallyOwnedAccount
        onlyValidProof(proof)
    {
        require(this.totalSupply() + quantity <= MAX_SUPPLY, "Droplets: mint exceeds max supply");
        require(saleState == SaleState.Restricted, "Droplets: sale state mismatch");
        require(msg.value >= TOKEN_PRICE * quantity, "Droplets: insufficient value");
        require(tokensRemainingForAddress(msg.sender) >= quantity, "Droplets: mint limit for user reached");

        _mint(msg.sender, quantity, "", false);

        _setAux(msg.sender, _getAux(msg.sender) + uint64(quantity));
    }

    /**
     * @dev Batched version of {mint} without checks regarding the amount of tokens minted for the recipient.
     *
     * See {mint}.
     *
     * Requirements:
     *
     * - The caller must be the owner of the contract.
     * - `recipients` and `quantities` must have the same length.
     * - If `recipients[i]` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     */
    function batchMint(
        address[] calldata recipients,
        uint256[] calldata quantities
    ) external onlyOwner {
        require(recipients.length == quantities.length, "Droplets: arguments length mismatch");

        // This saves some gas as opposed to computing the sum of
        // the `quantities` array, the only downside is that the
        // transaction will use lots of gas before reverting
        //
        // Copy the total supply into a variable
        uint256 supply = this.totalSupply();

        for (uint256 i; i < recipients.length; i++) {
            // Increment it with the current quantity
            supply += quantities[i];

            // Require it to be less than `MAX_SUPPLY`
            require(supply <= MAX_SUPPLY, "Droplets: batch mint exceeds max supply");

            _mint(recipients[i], quantities[i], "", false);
        }
    }
    /**
     * @dev Withdraws all of the contract's balance to the team recipients and some to the community wallet
     *
     * Recipients (in order):
     *
     * * Multisig composed of 4 members of our team with 3 signatures required
     * ** We will temporarily hold the 5% until 2535 Water completes creation of their wallet
     * 
     * - Faucet (Founder / Artist) - 59%
     * - *Community Multisig       - 15%
     * - h2o (Contract Dev)        - 15%
     * - Overflow (Frontend Dev)   - 5%
     * - **Charity (2535 Water)    - 5%
     * - Animator                  - 1%
     */
    function withdrawToRecipients() external onlyOwner {
        uint256 balancePercentage = address(this).balance / 100;

        address faucet    = 0x9198ed78C710D7BD3dDd01b047dC5fE3fe17d4F6;
        address community = 0x755ee2B4213365E93AC9116B141Aaae1909faf41;
        address h2o       = 0xdE4e8900e9412dFD4Ff4802CFB6399fBeeDC3175;
        address overflow  = 0x02481eF18A1E6738803b0E1B5C66fFCD24dF68Ed;
        address charity   = 0x7b3EC791E7916F33fA46579dA2eBbE3458FEE084;
        address animator  = 0x87a62124a1132e2ebC5bcDB56dF292F05C3d3877;

        address(faucet   ).call{value: balancePercentage * 59}("");
        address(community).call{value: balancePercentage * 15}("");
        address(h2o      ).call{value: balancePercentage * 15}("");
        address(overflow ).call{value: balancePercentage * 5 }("");
        address(charity  ).call{value: balancePercentage * 5 }("");
        address(animator ).call{value: balancePercentage     }("");
    }
}

