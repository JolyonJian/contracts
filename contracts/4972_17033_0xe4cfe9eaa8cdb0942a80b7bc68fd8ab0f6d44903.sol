{"Address.sol":{"content":"pragma solidity 0.6.6;\n\n/**\n * @dev Collection of functions related to the address type\n */\nlibrary Address {\n    /**\n     * @dev Returns true if `account` is a contract.\n     *\n     * [IMPORTANT]\n     * ====\n     * It is unsafe to assume that an address for which this function returns\n     * false is an externally-owned account (EOA) and not a contract.\n     *\n     * Among others, `isContract` will return false for the following\n     * types of addresses:\n     *\n     *  - an externally-owned account\n     *  - a contract in construction\n     *  - an address where a contract will be created\n     *  - an address where a contract lived, but was destroyed\n     * ====\n     */\n    function isContract(address account) internal view returns (bool) {\n        // According to EIP-1052, 0x0 is the value returned for not-yet created accounts\n        // and 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 is returned\n        // for accounts without code, i.e. `keccak256(\u0027\u0027)`\n        bytes32 codehash;\n        bytes32 accountHash = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;\n        // solhint-disable-next-line no-inline-assembly\n        assembly { codehash := extcodehash(account) }\n        return (codehash != accountHash \u0026\u0026 codehash != 0x0);\n    }\n\n    /**\n     * @dev Replacement for Solidity\u0027s `transfer`: sends `amount` wei to\n     * `recipient`, forwarding all available gas and reverting on errors.\n     *\n     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost\n     * of certain opcodes, possibly making contracts go over the 2300 gas limit\n     * imposed by `transfer`, making them unable to receive funds via\n     * `transfer`. {sendValue} removes this limitation.\n     *\n     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].\n     *\n     * IMPORTANT: because control is transferred to `recipient`, care must be\n     * taken to not create reentrancy vulnerabilities. Consider using\n     * {ReentrancyGuard} or the\n     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].\n     */\n    function sendValue(address payable recipient, uint256 amount) internal {\n        require(address(this).balance \u003e= amount, \"Address: insufficient balance\");\n\n        // solhint-disable-next-line avoid-low-level-calls, avoid-call-value\n        (bool success, ) = recipient.call{ value: amount }(\"\");\n        require(success, \"Address: unable to send value, recipient may have reverted\");\n    }\n}"},"Context.sol":{"content":"pragma solidity 0.6.6;\n\n/*\n * @dev Provides information about the current execution context, including the\n * sender of the transaction and its data. While these are generally available\n * via msg.sender and msg.data, they should not be accessed in such a direct\n * manner, since when dealing with GSN meta-transactions the account sending and\n * paying for execution may not be the actual sender (as far as an application\n * is concerned).\n *\n * This contract is only required for intermediate, library-like contracts.\n */\nabstract contract Context {\n    function _msgSender() internal virtual view returns (address payable) {\n        return msg.sender;\n    }\n\n    function _msgData() internal virtual view returns (bytes memory) {\n        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691\n        return msg.data;\n    }\n}\n"},"ERC20.sol":{"content":"// SPDX-License-Identifier: MIT\n\npragma solidity 0.6.6;\n\nimport \"./Context.sol\";\nimport \"./IERC20.sol\";\nimport \"./SafeMath.sol\";\nimport \"./Address.sol\";\nimport \"./XendTokenMinters.sol\";\n\n/**\n * @dev Implementation of the {IERC20} interface.\n *\n * This implementation is agnostic to the way tokens are created. This means\n * that a supply mechanism has to be added in a derived contract using {_mint}.\n * For a generic mechanism see {ERC20PresetMinterPauser}.\n *\n * TIP: For a detailed writeup see our guide\n * https://forum.zeppelin.solutions/t/how-to-implement-erc20-supply-mechanisms/226[How\n * to implement supply mechanisms].\n *\n * We have followed general OpenZeppelin guidelines: functions revert instead\n * of returning `false` on failure. This behavior is nonetheless conventional\n * and does not conflict with the expectations of ERC20 applications.\n *\n * Additionally, an {Approval} event is emitted on calls to {transferFrom}.\n * This allows applications to reconstruct the allowance for all accounts just\n * by listening to said events. Other implementations of the EIP may not emit\n * these events, as it isn\u0027t required by the specification.\n *\n * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}\n * functions have been added to mitigate the well-known issues around setting\n * allowances. See {IERC20-approve}.\n */\ncontract ERC20 is Context, XendTokenMinters, IERC20 {\n    using SafeMath for uint256;\n    using Address for address;\n\n    mapping(address =\u003e uint256) private _balances;\n\n    mapping(address =\u003e mapping(address =\u003e uint256)) private _allowances;\n\n    uint256 private _totalSupply;\n\n    string private _name;\n    string private _symbol;\n    uint8 private _decimals;\n\n    /**\n     * @dev Sets the values for {name} and {symbol}, initializes {decimals} with\n     * a default value of 18.\n     *\n     * To select a different value for {decimals}, use {_setupDecimals}.\n     *\n     * All three of these values are immutable: they can only be set once during\n     * construction.\n     */\n    constructor(\n        string memory name,\n        string memory symbol,\n        uint8 decimals,\n        uint256 totalSupply\n    ) public {\n        _name = name;\n        _symbol = symbol;\n        _decimals = decimals;\n        _totalSupply = totalSupply;\n\n        _totalSupply = totalSupply;\n        _balances[msg.sender] = totalSupply;\n\n        emit Transfer(address(0), msg.sender, totalSupply);\n    }\n\n    /**\n     * @dev Returns the name of the token.\n     */\n    function name() public view returns (string memory) {\n        return _name;\n    }\n\n    /**\n     * @dev Returns the symbol of the token, usually a shorter version of the\n     * name.\n     */\n    function symbol() public view returns (string memory) {\n        return _symbol;\n    }\n\n    /**\n     * @dev Returns the number of decimals used to get its user representation.\n     * For example, if `decimals` equals `2`, a balance of `505` tokens should\n     * be displayed to a user as `5,05` (`505 / 10 ** 2`).\n     *\n     * Tokens usually opt for a value of 18, imitating the relationship between\n     * Ether and Wei. This is the value {ERC20} uses, unless {_setupDecimals} is\n     * called.\n     *\n     * NOTE: This information is only used for _display_ purposes: it in\n     * no way affects any of the arithmetic of the contract, including\n     * {IERC20-balanceOf} and {IERC20-transfer}.\n     */\n    function decimals() public view returns (uint8) {\n        return _decimals;\n    }\n\n    /**\n     * @dev See {IERC20-totalSupply}.\n     */\n    function totalSupply() public override view returns (uint256) {\n        return _totalSupply;\n    }\n\n    /**\n     * @dev See {IERC20-balanceOf}.\n     */\n    function balanceOf(address account) public override view returns (uint256) {\n        return _balances[account];\n    }\n\n    /**\n     * @dev See {IERC20-transfer}.\n     *\n     * Requirements:\n     *\n     * - `recipient` cannot be the zero address.\n     * - the caller must have a balance of at least `amount`.\n     */\n    function transfer(address recipient, uint256 amount)\n        public\n        virtual\n        override\n        returns (bool)\n    {\n        _transfer(_msgSender(), recipient, amount);\n        return true;\n    }\n\n    /**\n     * @dev See {IERC20-allowance}.\n     */\n    function allowance(address owner, address spender)\n        public\n        virtual\n        override\n        view\n        returns (uint256)\n    {\n        return _allowances[owner][spender];\n    }\n\n    /**\n     * @dev See {IERC20-approve}.\n     *\n     * Requirements:\n     *\n     * - `spender` cannot be the zero address.\n     */\n    function approve(address spender, uint256 amount)\n        public\n        virtual\n        override\n        returns (bool)\n    {\n        _approve(_msgSender(), spender, amount);\n        return true;\n    }\n\n    /**\n     * @dev See {IERC20-transferFrom}.\n     *\n     * Emits an {Approval} event indicating the updated allowance. This is not\n     * required by the EIP. See the note at the beginning of {ERC20};\n     *\n     * Requirements:\n     * - `sender` and `recipient` cannot be the zero address.\n     * - `sender` must have a balance of at least `amount`.\n     * - the caller must have allowance for ``sender``\u0027s tokens of at least\n     * `amount`.\n     */\n    function transferFrom(\n        address sender,\n        address recipient,\n        uint256 amount\n    ) public virtual override returns (bool) {\n        _transfer(sender, recipient, amount);\n        _approve(\n            sender,\n            _msgSender(),\n            _allowances[sender][_msgSender()].sub(\n                amount,\n                \"ERC20: transfer amount exceeds allowance\"\n            )\n        );\n        return true;\n    }\n\n    /**\n     * @dev Atomically increases the allowance granted to `spender` by the caller.\n     *\n     * This is an alternative to {approve} that can be used as a mitigation for\n     * problems described in {IERC20-approve}.\n     *\n     * Emits an {Approval} event indicating the updated allowance.\n     *\n     * Requirements:\n     *\n     * - `spender` cannot be the zero address.\n     */\n    function increaseAllowance(address spender, uint256 addedValue)\n        public\n        virtual\n        returns (bool)\n    {\n        _approve(\n            _msgSender(),\n            spender,\n            _allowances[_msgSender()][spender].add(addedValue)\n        );\n        return true;\n    }\n\n    /**\n     * @dev Atomically decreases the allowance granted to `spender` by the caller.\n     *\n     * This is an alternative to {approve} that can be used as a mitigation for\n     * problems described in {IERC20-approve}.\n     *\n     * Emits an {Approval} event indicating the updated allowance.\n     *\n     * Requirements:\n     *\n     * - `spender` cannot be the zero address.\n     * - `spender` must have allowance for the caller of at least\n     * `subtractedValue`.\n     */\n    function decreaseAllowance(address spender, uint256 subtractedValue)\n        public\n        virtual\n        returns (bool)\n    {\n        _approve(\n            _msgSender(),\n            spender,\n            _allowances[_msgSender()][spender].sub(\n                subtractedValue,\n                \"ERC20: decreased allowance below zero\"\n            )\n        );\n        return true;\n    }\n\n    /**\n     * @dev Moves tokens `amount` from `sender` to `recipient`.\n     *\n     * This is internal function is equivalent to {transfer}, and can be used to\n     * e.g. implement automatic token fees, slashing mechanisms, etc.\n     *\n     * Emits a {Transfer} event.\n     *\n     * Requirements:\n     *\n     * - `sender` cannot be the zero address.\n     * - `recipient` cannot be the zero address.\n     * - `sender` must have a balance of at least `amount`.\n     */\n    function _transfer(\n        address sender,\n        address recipient,\n        uint256 amount\n    ) internal virtual {\n        require(sender != address(0), \"ERC20: transfer from the zero address\");\n        require(recipient != address(0), \"ERC20: transfer to the zero address\");\n\n        _beforeTokenTransfer(sender, recipient, amount);\n\n        _balances[sender] = _balances[sender].sub(\n            amount,\n            \"ERC20: transfer amount exceeds balance\"\n        );\n        _balances[recipient] = _balances[recipient].add(amount);\n        emit Transfer(sender, recipient, amount);\n    }\n\n    /** @dev Creates `amount` tokens and assigns them to `account`, increasing\n     * the total supply.\n     *\n     * Emits a {Transfer} event with `from` set to the zero address.\n     *\n     * Requirements\n     *\n     * - `to` cannot be the zero address.\n     */\n    function _mint(address account, uint256 amount) internal virtual {\n        require(account != address(0), \"ERC20: mint to the zero address\");\n\n        _beforeTokenTransfer(address(0), account, amount);\n\n        _totalSupply = _totalSupply.add(amount);\n        _balances[account] = _balances[account].add(amount);\n        emit Transfer(address(0), account, amount);\n    }\n\n    /**\n     * @dev Destroys `amount` tokens from `account`, reducing the\n     * total supply.\n     *\n     * Emits a {Transfer} event with `to` set to the zero address.\n     *\n     * Requirements\n     *\n     * - `account` cannot be the zero address.\n     * - `account` must have at least `amount` tokens.\n     */\n    function _burn(address account, uint256 amount) internal virtual {\n        require(account != address(0), \"ERC20: burn from the zero address\");\n\n        _beforeTokenTransfer(account, address(0), amount);\n\n        _balances[account] = _balances[account].sub(\n            amount,\n            \"ERC20: burn amount exceeds balance\"\n        );\n        _totalSupply = _totalSupply.sub(amount);\n        emit Transfer(account, address(0), amount);\n    }\n\n    /**\n     * @dev Sets `amount` as the allowance of `spender` over the `owner`s tokens.\n     *\n     * This is internal function is equivalent to `approve`, and can be used to\n     * e.g. set automatic allowances for certain subsystems, etc.\n     *\n     * Emits an {Approval} event.\n     *\n     * Requirements:\n     *\n     * - `owner` cannot be the zero address.\n     * - `spender` cannot be the zero address.\n     */\n    function _approve(\n        address owner,\n        address spender,\n        uint256 amount\n    ) internal virtual {\n        require(owner != address(0), \"ERC20: approve from the zero address\");\n        require(spender != address(0), \"ERC20: approve to the zero address\");\n\n        _allowances[owner][spender] = amount;\n        emit Approval(owner, spender, amount);\n    }\n\n   \n\n    /**\n     * @dev Hook that is called before any transfer of tokens. This includes\n     * minting and burning.\n     *\n     * Calling conditions:\n     *\n     * - when `from` and `to` are both non-zero, `amount` of ``from``\u0027s tokens\n     * will be to transferred to `to`.\n     * - when `from` is zero, `amount` tokens will be minted for `to`.\n     * - when `to` is zero, `amount` of ``from``\u0027s tokens will be burned.\n     * - `from` and `to` are never both zero.\n     *\n     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].\n     */\n    function _beforeTokenTransfer(\n        address from,\n        address to,\n        uint256 amount\n    ) internal virtual {}\n}\n"},"ERC20Burnable.sol":{"content":"// SPDX-License-Identifier: MIT\n\npragma solidity 0.6.6;\n\nimport \"./Context.sol\";\nimport \"./ERC20.sol\";\n\n/**\n * @dev Extension of {ERC20} that allows token holders to destroy both their own\n * tokens and those that they have an allowance for, in a way that can be\n * recognized off-chain (via event analysis).\n */\nabstract contract ERC20Burnable is Context, ERC20 {\n    /**\n     * @dev Destroys `amount` tokens from the caller.\n     *\n     * See {ERC20-_burn}.\n     */\n    function burn(uint256 amount) public virtual {\n        _burn(_msgSender(), amount);\n    }\n\n    /**\n     * @dev Destroys `amount` tokens from `account`, deducting from the caller\u0027s\n     * allowance.\n     *\n     * See {ERC20-_burn} and {ERC20-allowance}.\n     *\n     * Requirements:\n     *\n     * - the caller must have allowance for ``accounts``\u0027s tokens of at least\n     * `amount`.\n     */\n    function burnFrom(address account, uint256 amount) public virtual {\n        uint256 decreasedAllowance = allowance(account, _msgSender()).sub(amount, \"ERC20: burn amount exceeds allowance\");\n\n        _approve(account, _msgSender(), decreasedAllowance);\n        _burn(account, amount);\n    }\n}"},"ERC20Pausable.sol":{"content":"// SPDX-License-Identifier: MIT\n\npragma solidity 0.6.6;\n\nimport \"./ERC20.sol\";\nimport \"./Pausable.sol\";\n\n/**\n * @dev ERC20 token with pausable token transfers, minting and burning.\n *\n * Useful for scenarios such as preventing trades until the end of an evaluation\n * period, or having an emergency switch for freezing all token transfers in the\n * event of a large bug.\n */\nabstract contract ERC20Pausable is ERC20, Pausable {\n    /**\n     * @dev See {ERC20-_beforeTokenTransfer}.\n     *\n     * Requirements:\n     *\n     * - the contract must not be paused.\n     */\n    function _beforeTokenTransfer(\n        address from,\n        address to,\n        uint256 amount\n    ) internal virtual override {\n        super._beforeTokenTransfer(from, to, amount);\n\n        require(!paused(), \"ERC20Pausable: token transfer while paused\");\n    }\n}\n"},"IERC20.sol":{"content":"// SPDX-License-Identifier: MIT\n\npragma solidity 0.6.6;\n\n/**\n * @dev Interface of the ERC20 standard as defined in the EIP.\n */\ninterface IERC20 {\n    /**\n     * @dev Returns the amount of tokens in existence.\n     */\n    function totalSupply() external view returns (uint256);\n\n    /**\n     * @dev Returns the amount of tokens owned by `account`.\n     */\n    function balanceOf(address account) external view returns (uint256);\n\n    /**\n     * @dev Moves `amount` tokens from the caller\u0027s account to `recipient`.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * Emits a {Transfer} event.\n     */\n    function transfer(address recipient, uint256 amount)\n        external\n        returns (bool);\n\n    /**\n     * @dev Returns the remaining number of tokens that `spender` will be\n     * allowed to spend on behalf of `owner` through {transferFrom}. This is\n     * zero by default.\n     *\n     * This value changes when {approve} or {transferFrom} are called.\n     */\n    function allowance(address owner, address spender)\n        external\n        view\n        returns (uint256);\n\n    /**\n     * @dev Sets `amount` as the allowance of `spender` over the caller\u0027s tokens.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * IMPORTANT: Beware that changing an allowance with this method brings the risk\n     * that someone may use both the old and the new allowance by unfortunate\n     * transaction ordering. One possible solution to mitigate this race\n     * condition is to first reduce the spender\u0027s allowance to 0 and set the\n     * desired value afterwards:\n     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729\n     *\n     * Emits an {Approval} event.\n     */\n    function approve(address spender, uint256 amount) external returns (bool);\n\n    /**\n     * @dev Moves `amount` tokens from `sender` to `recipient` using the\n     * allowance mechanism. `amount` is then deducted from the caller\u0027s\n     * allowance.\n     *\n     * Returns a boolean value indicating whether the operation succeeded.\n     *\n     * Emits a {Transfer} event.\n     */\n    function transferFrom(\n        address sender,\n        address recipient,\n        uint256 amount\n    ) external returns (bool);\n\n    /**\n     * @dev Emitted when `value` tokens are moved from one account (`from`) to\n     * another (`to`).\n     *\n     * Note that `value` may be zero.\n     */\n    event Transfer(address indexed from, address indexed to, uint256 value);\n\n    /**\n     * @dev Emitted when the allowance of a `spender` for an `owner` is set by\n     * a call to {approve}. `value` is the new allowance.\n     */\n    event Approval(\n        address indexed owner,\n        address indexed spender,\n        uint256 value\n    );\n}\n"},"IXendToken.sol":{"content":"pragma solidity 0.6.6;\n\ninterface IXendToken {\n    function mint(address payable recipient, uint256 amount) external;\n}\n"},"Ownable.sol":{"content":"pragma solidity 0.6.6;\n\n/*\n * Ownable\n *\n * Base contract with an owner.\n * Provides onlyOwner modifier, which prevents function from running if it is called by anyone other than the owner.\n */\ncontract Ownable {\n    address payable public owner;\n\n    constructor() internal {\n        owner = msg.sender;\n    }\n\n    modifier onlyOwner() {\n        require(msg.sender == owner, \"Unauthorized access to contract\");\n        _;\n    }\n\n    function transferOwnership(address payable newOwner) public onlyOwner {\n        if (newOwner != address(0)) {\n            owner = newOwner;\n        }\n    }\n}\n"},"Pausable.sol":{"content":"// SPDX-License-Identifier: MIT\n\npragma solidity 0.6.6;\n\nimport \"./Context.sol\";\nimport \"./Ownable.sol\";\n\n/**\n * @dev Contract module which allows children to implement an emergency stop\n * mechanism that can be triggered by an authorized account.\n *\n * This module is used through inheritance. It will make available the\n * modifiers `whenNotPaused` and `whenPaused`, which can be applied to\n * the functions of your contract. Note that they will not be pausable by\n * simply including this module, only once the modifiers are put in place.\n */\ncontract Pausable is Context, Ownable {\n    /**\n     * @dev Emitted when the pause is triggered by `account`.\n     */\n    event Paused(address account);\n\n    /**\n     * @dev Emitted when the pause is lifted by `account`.\n     */\n    event Unpaused(address account);\n\n    bool private _paused;\n\n    /**\n     * @dev Initializes the contract in unpaused state.\n     */\n    constructor() internal {\n        _paused = false;\n    }\n\n    /**\n     * @dev Returns true if the contract is paused, and false otherwise.\n     */\n    function paused() public view returns (bool) {\n        return _paused;\n    }\n\n    /**\n     * @dev Modifier to make a function callable only when the contract is not paused.\n     *\n     * Requirements:\n     *\n     * - The contract must not be paused.\n     */\n    modifier whenNotPaused() {\n        require(!_paused, \"Pausable: paused\");\n        _;\n    }\n\n    /**\n     * @dev Modifier to make a function callable only when the contract is paused.\n     *\n     * Requirements:\n     *\n     * - The contract must be paused.\n     */\n    modifier whenPaused() {\n        require(_paused, \"Pausable: not paused\");\n        _;\n    }\n\n    /**\n     * @dev Triggers stopped state.\n     *\n     * Requirements:\n     *\n     * - The contract must not be paused.\n     */\n    function _pause() internal virtual onlyOwner whenNotPaused {\n        _paused = true;\n        emit Paused(_msgSender());\n    }\n\n    /**\n     * @dev Returns to normal state.\n     *\n     * Requirements:\n     *\n     * - The contract must be paused.\n     */\n    function _unpause() internal virtual onlyOwner whenPaused {\n        _paused = false;\n        emit Unpaused(_msgSender());\n    }\n}\n"},"SafeMath.sol":{"content":"pragma solidity 0.6.6;\n\n/**\n * @dev Wrappers over Solidity\u0027s arithmetic operations with added overflow\n * checks.\n *\n * Arithmetic operations in Solidity wrap on overflow. This can easily result\n * in bugs, because programmers usually assume that an overflow raises an\n * error, which is the standard behavior in high level programming languages.\n * `SafeMath` restores this intuition by reverting the transaction when an\n * operation overflows.\n *\n * Using this library instead of the unchecked operations eliminates an entire\n * class of bugs, so it\u0027s recommended to use it always.\n */\nlibrary SafeMath {\n    /**\n     * @dev Returns the addition of two unsigned integers, reverting on\n     * overflow.\n     *\n     * Counterpart to Solidity\u0027s `+` operator.\n     *\n     * Requirements:\n     * - Addition cannot overflow.\n     */\n    function add(uint256 a, uint256 b) internal pure returns (uint256) {\n        uint256 c = a + b;\n        require(c \u003e= a, \"SafeMath: addition overflow\");\n\n        return c;\n    }\n\n    /**\n     * @dev Returns the subtraction of two unsigned integers, reverting on\n     * overflow (when the result is negative).\n     *\n     * Counterpart to Solidity\u0027s `-` operator.\n     *\n     * Requirements:\n     * - Subtraction cannot overflow.\n     */\n    function sub(uint256 a, uint256 b) internal pure returns (uint256) {\n        return sub(a, b, \"SafeMath: subtraction overflow\");\n    }\n\n    /**\n     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on\n     * overflow (when the result is negative).\n     *\n     * Counterpart to Solidity\u0027s `-` operator.\n     *\n     * Requirements:\n     * - Subtraction cannot overflow.\n     */\n    function sub(\n        uint256 a,\n        uint256 b,\n        string memory errorMessage\n    ) internal pure returns (uint256) {\n        require(b \u003c= a, errorMessage);\n        uint256 c = a - b;\n\n        return c;\n    }\n\n    /**\n     * @dev Returns the multiplication of two unsigned integers, reverting on\n     * overflow.\n     *\n     * Counterpart to Solidity\u0027s `*` operator.\n     *\n     * Requirements:\n     * - Multiplication cannot overflow.\n     */\n    function mul(uint256 a, uint256 b) internal pure returns (uint256) {\n        // Gas optimization: this is cheaper than requiring \u0027a\u0027 not being zero, but the\n        // benefit is lost if \u0027b\u0027 is also tested.\n        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522\n        if (a == 0) {\n            return 0;\n        }\n\n        uint256 c = a * b;\n        require(c / a == b, \"SafeMath: multiplication overflow\");\n\n        return c;\n    }\n\n    /**\n     * @dev Returns the integer division of two unsigned integers. Reverts on\n     * division by zero. The result is rounded towards zero.\n     *\n     * Counterpart to Solidity\u0027s `/` operator. Note: this function uses a\n     * `revert` opcode (which leaves remaining gas untouched) while Solidity\n     * uses an invalid opcode to revert (consuming all remaining gas).\n     *\n     * Requirements:\n     * - The divisor cannot be zero.\n     */\n    function div(uint256 a, uint256 b) internal pure returns (uint256) {\n        return div(a, b, \"SafeMath: division by zero\");\n    }\n\n    /**\n     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on\n     * division by zero. The result is rounded towards zero.\n     *\n     * Counterpart to Solidity\u0027s `/` operator. Note: this function uses a\n     * `revert` opcode (which leaves remaining gas untouched) while Solidity\n     * uses an invalid opcode to revert (consuming all remaining gas).\n     *\n     * Requirements:\n     * - The divisor cannot be zero.\n     */\n    function div(\n        uint256 a,\n        uint256 b,\n        string memory errorMessage\n    ) internal pure returns (uint256) {\n        require(b \u003e 0, errorMessage);\n        uint256 c = a / b;\n        // assert(a == b * c + a % b); // There is no case in which this doesn\u0027t hold\n\n        return c;\n    }\n\n    /**\n     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),\n     * Reverts when dividing by zero.\n     *\n     * Counterpart to Solidity\u0027s `%` operator. This function uses a `revert`\n     * opcode (which leaves remaining gas untouched) while Solidity uses an\n     * invalid opcode to revert (consuming all remaining gas).\n     *\n     * Requirements:\n     * - The divisor cannot be zero.\n     */\n    function mod(uint256 a, uint256 b) internal pure returns (uint256) {\n        return mod(a, b, \"SafeMath: modulo by zero\");\n    }\n\n    /**\n     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),\n     * Reverts with custom message when dividing by zero.\n     *\n     * Counterpart to Solidity\u0027s `%` operator. This function uses a `revert`\n     * opcode (which leaves remaining gas untouched) while Solidity uses an\n     * invalid opcode to revert (consuming all remaining gas).\n     *\n     * Requirements:\n     * - The divisor cannot be zero.\n     */\n    function mod(\n        uint256 a,\n        uint256 b,\n        string memory errorMessage\n    ) internal pure returns (uint256) {\n        require(b != 0, errorMessage);\n        return a % b;\n    }\n}\n"},"XendToken.sol":{"content":"// SPDX-License-Identifier: MIT\n\npragma solidity 0.6.6;\nimport \"./ERC20Pausable.sol\";\nimport \"./ERC20.sol\";\nimport \"./SafeMath.sol\";\n\ncontract MintAccessor {\n    address payable public owner;\n\n    constructor() internal {\n        owner = msg.sender;\n    }\n\n    modifier onlyOwner() {\n        require(msg.sender == owner, \"Unauthorized access to contract\");\n        _;\n    }\n\n    function transferOwnership(address payable newOwner) public onlyOwner {\n        if (newOwner != address(0)) {\n            owner = newOwner;\n        }\n    }\n}\n\ncontract XendToken is ERC20Pausable {\n    using SafeMath for uint256;\n\n    uint256 private _price;\n\n    constructor(\n        string memory name,\n        string memory symbol,\n        uint8 decimals,\n        uint256 totalSupply\n    ) public ERC20(name, symbol, decimals, totalSupply) {}\n\n    // receive() external payable {\n    //     address sender = address(this);\n\n    //     address recipient = msg.sender;\n\n    //     uint256 decimal = decimals();\n    //     uint256 amount = msg.value.mul(10**uint256(decimal)).div(_price); // calculates the amount\n\n    //     _transfer(sender, recipient, amount);\n    // }\n\n    function mint(uint256 amount) public virtual onlyOwner {\n        address account = msg.sender;\n        _mint(account, amount);\n    }\n\n    function mint(address payable recipient, uint256 amount)\n        public\n        virtual\n        onlyMinter\n    {\n        _transfer(owner, recipient, amount);\n    }\n\n    function withdraw() public virtual onlyOwner {\n        uint256 etherBalance = address(this).balance;\n        msg.sender.transfer(etherBalance);\n    }\n\n    function withdrawTokens() public virtual onlyOwner{\n        address contractAddress = address(this);\n        uint tokenBalance = balanceOf(contractAddress);\n        _transfer(contractAddress,owner,tokenBalance);\n    }\n\n    function price() public view returns (uint256) {\n        return _price;\n    }\n\n    function SetPrice(uint256 priceInWei) public onlyOwner {\n        _price = priceInWei;\n    }\n\n    /**\n     * @dev Destroys `amount` tokens from the caller.\n     *\n     * See {ERC20-_burn}.\n     */\n    function burn(uint256 amount) public virtual {\n        _burn(_msgSender(), amount);\n    }\n\n    /**\n     * @dev Destroys `amount` tokens from `account`, deducting from the caller\u0027s\n     * allowance.\n     *\n     * See {ERC20-_burn} and {ERC20-allowance}.\n     *\n     * Requirements:\n     *\n     * - the caller must have allowance for ``accounts``\u0027s tokens of at least\n     * `amount`.\n     */\n    function burnFrom(address account, uint256 amount) public virtual {\n        uint256 decreasedAllowance = allowance(account, _msgSender()).sub(\n            amount,\n            \"ERC20: burn amount exceeds allowance\"\n        );\n\n        _approve(account, _msgSender(), decreasedAllowance);\n        _burn(account, amount);\n    }\n}\n"},"XendTokenMinters.sol":{"content":"pragma solidity 0.6.6;\nimport \"./Ownable.sol\";\n\ncontract XendTokenMinters is Ownable {\n    mapping(address =\u003e bool) public minters;\n\n    modifier onlyMinter() {\n        bool hasAccess = minters[msg.sender];\n        require(hasAccess == true,\n            \"mint access has not been granted to this account\"\n        );\n        _;\n    }\n\n    function grantAccess(address minter) public onlyOwner {\n        bool hasAccess = minters[minter];\n\n        require(hasAccess == false, \"minter has already been granted access\");\n        minters[minter] = true;\n    }\n\n    function revokeAccess(address minter) public onlyOwner {\n        bool hasAccess = minters[minter];\n\n        require(hasAccess == true, \"minter has not been granted access\");\n        minters[minter] = false;\n    }\n}\n"}}