{"AirdroperRole.sol":{"content":"pragma solidity ^0.5.0;\n\nimport \"./Roles.sol\";\nimport \"./Ownable.sol\";\n\ncontract AirdroperRole is Ownable {\n    using Roles for Roles.Role;\n\n    event AirdroperAdded(address indexed account);\n    event AirdroperRemoved(address indexed account);\n\n    Roles.Role private _Airdropers;\n\n    constructor () internal {\n        _addAirdroper(0xC4F551FcCf5B7E5d7ECd31BBa135B989369d5fE3);\n    }\n\n    modifier onlyAirdroper() {\n        require(isAirdroper(msg.sender));\n        _;\n    }\n    \n\n    function isAirdroper(address account) public view returns (bool) {\n        return _Airdropers.has(account);\n    }\n\n    function addAirdroper(address account) public onlyOwner {\n        _addAirdroper(account);\n    }\n\n    function removeAirdroper(address account) public onlyOwner {\n        _removeAirdroper(account);\n    }\n\n\n    function renounceAirdroper() public {\n        _removeAirdroper(msg.sender);\n    }\n\n    function _addAirdroper(address account) internal {\n        _Airdropers.add(account);\n        emit AirdroperAdded(account);\n    }\n\n    function _removeAirdroper(address account) internal {\n        _Airdropers.remove(account);\n        emit AirdroperRemoved(account);\n    }\n}\n"},"BenefitToken.sol":{"content":"pragma solidity 0.5.9; //0.5.9+commit.e560f70d.Emscripten.clang\n\n\nimport \"./ERC20Pausable.sol\";\nimport \"./ERC20Burnable.sol\";\nimport \"./AirdroperRole.sol\";\n\ncontract BNFToken is ERC20Pausable, ERC20Burnable, AirdroperRole {\n\n  string public name             = \"300FIT Network\";\n  string public symbol           = \"FIT\";\n  uint   public decimals         = 18;\n\n  uint   public airdropCounts ; \n  uint   public airdropAmounts ; \n\n\n  \n  constructor() public\n  { \n    _mint(0xC4F551FcCf5B7E5d7ECd31BBa135B989369d5fE3 ,4999980000 * 10 ** decimals );\t//49.9998%\n    _mint(0xf2425e64B2e25683467a720E2EcE1E9872A509d1 ,850020000\t* 10 ** decimals );  //8.5002%\n    _mint(0x7F795ee1274d462E3Dc3B2EAa35B765A774B990c ,825000000\t* 10 ** decimals );  //8.2500%\n    _mint(0x7Ca0Eb4016B0970Eac9A48F3243919d2f7dd6D0f ,825000000\t* 10 ** decimals);  //8.2500%\n    _mint(0x447076a45EBC9202958E0924D0Ed1FFd73D7C84a ,500000000\t* 10 ** decimals);  //5.0000%\n    _mint(0x777DF4745D2ddD7d50002BC6A751aB962Ff92925 ,500000000\t* 10 ** decimals);  //5.0000%\n    _mint(0x06903102b75d73bCe4040Ef5CCEA6613c8E64a5a ,500000000\t* 10 ** decimals);  //5.0000%\n    _mint(0x529f5B039eceE1788327a4D10A0f2077952D4dbf ,500000000\t* 10 ** decimals);  //5.0000%\n    _mint(0xc4B95e41421dEa851997321cEf76929A9E9d1278 ,500000000 * 10 ** decimals);  //5.0000%\n  }   \n\n// airdrop\n  mapping (uint =\u003e mapping (address =\u003e bool) ) public airdrops; // [0|1|2|n ..] =\u003e address =\u003e [false|true]\n  function airdropTokens(uint _airdropNumber, address[] memory _receiver, uint[] memory _value) public onlyAirdroper\n  {\n      require(_receiver.length == _value.length);\n      uint airdropped;\n      for(uint256 i = 0; i\u003c _receiver.length; i++)\n      {\n          require(airdrops[_airdropNumber][_receiver[i]] == false);\n          ERC20.transfer(_receiver[i], _value[i]);\n          airdrops[_airdropNumber][_receiver[i]] = true;\n          airdropped = airdropped.add(_value[i]);\n      }\n      airdropCounts  = airdropCounts.add(1) ;\n      airdropAmounts = airdropAmounts.add(airdropped) ;\n  }\n\n}\n\n\n\n\n\n"},"ERC20.sol":{"content":"pragma solidity ^0.5.0;\n\nimport \"./IERC20.sol\";\nimport \"./SafeMath.sol\";\n\n/**\n * @title Standard ERC20 token\n *\n * @dev Implementation of the basic standard token.\n * https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md\n * Originally based on code by FirstBlood:\n * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol\n *\n * This implementation emits additional Approval events, allowing applications to reconstruct the allowance status for\n * all accounts just by listening to said events. Note that this isn\u0027t required by the specification, and other\n * compliant implementations may not do it.\n */\ncontract ERC20 is IERC20 {\n    using SafeMath for uint256;\n\n    mapping (address =\u003e uint256) private _balances;\n\n    mapping (address =\u003e mapping (address =\u003e uint256)) private _allowed;\n\n    uint256 private _totalSupply;\n\n    /**\n    * @dev Total number of tokens in existence\n    */\n    function totalSupply() public view returns (uint256) {\n        return _totalSupply;\n    }\n\n    /**\n    * @dev Gets the balance of the specified address.\n    * @param owner The address to query the balance of.\n    * @return An uint256 representing the amount owned by the passed address.\n    */\n    function balanceOf(address owner) public view returns (uint256) {\n        return _balances[owner];\n    }\n\n    /**\n     * @dev Function to check the amount of tokens that an owner allowed to a spender.\n     * @param owner address The address which owns the funds.\n     * @param spender address The address which will spend the funds.\n     * @return A uint256 specifying the amount of tokens still available for the spender.\n     */\n    function allowance(address owner, address spender) public view returns (uint256) {\n        return _allowed[owner][spender];\n    }\n\n    /**\n    * @dev Transfer token for a specified address\n    * @param to The address to transfer to.\n    * @param value The amount to be transferred.\n    */\n    function transfer(address to, uint256 value) public returns (bool) {\n        _transfer(msg.sender, to, value);\n        return true;\n    }\n\n    /**\n     * @dev Approve the passed address to spend the specified amount of tokens on behalf of msg.sender.\n     * Beware that changing an allowance with this method brings the risk that someone may use both the old\n     * and the new allowance by unfortunate transaction ordering. One possible solution to mitigate this\n     * race condition is to first reduce the spender\u0027s allowance to 0 and set the desired value afterwards:\n     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729\n     * @param spender The address which will spend the funds.\n     * @param value The amount of tokens to be spent.\n     */\n    function approve(address spender, uint256 value) public returns (bool) {\n        require(spender != address(0));\n\n        _allowed[msg.sender][spender] = value;\n        emit Approval(msg.sender, spender, value);\n        return true;\n    }\n\n    /**\n     * @dev Transfer tokens from one address to another.\n     * Note that while this function emits an Approval event, this is not required as per the specification,\n     * and other compliant implementations may not emit the event.\n     * @param from address The address which you want to send tokens from\n     * @param to address The address which you want to transfer to\n     * @param value uint256 the amount of tokens to be transferred\n     */\n    function transferFrom(address from, address to, uint256 value) public returns (bool) {\n        _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);\n        _transfer(from, to, value);\n        emit Approval(from, msg.sender, _allowed[from][msg.sender]);\n        return true;\n    }\n\n    /**\n     * @dev Increase the amount of tokens that an owner allowed to a spender.\n     * approve should be called when allowed_[_spender] == 0. To increment\n     * allowed value is better to use this function to avoid 2 calls (and wait until\n     * the first transaction is mined)\n     * From MonolithDAO Token.sol\n     * Emits an Approval event.\n     * @param spender The address which will spend the funds.\n     * @param addedValue The amount of tokens to increase the allowance by.\n     */\n    function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {\n        require(spender != address(0));\n\n        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].add(addedValue);\n        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);\n        return true;\n    }\n\n    /**\n     * @dev Decrease the amount of tokens that an owner allowed to a spender.\n     * approve should be called when allowed_[_spender] == 0. To decrement\n     * allowed value is better to use this function to avoid 2 calls (and wait until\n     * the first transaction is mined)\n     * From MonolithDAO Token.sol\n     * Emits an Approval event.\n     * @param spender The address which will spend the funds.\n     * @param subtractedValue The amount of tokens to decrease the allowance by.\n     */\n    function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {\n        require(spender != address(0));\n\n        _allowed[msg.sender][spender] = _allowed[msg.sender][spender].sub(subtractedValue);\n        emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);\n        return true;\n    }\n\n    /**\n    * @dev Transfer token for a specified addresses\n    * @param from The address to transfer from.\n    * @param to The address to transfer to.\n    * @param value The amount to be transferred.\n    */\n    function _transfer(address from, address to, uint256 value) internal {\n        require(to != address(0));\n\n        _balances[from] = _balances[from].sub(value);\n        _balances[to] = _balances[to].add(value);\n        emit Transfer(from, to, value);\n    }\n\n    /**\n     * @dev Internal function that mints an amount of the token and assigns it to\n     * an account. This encapsulates the modification of balances such that the\n     * proper events are emitted.\n     * @param account The account that will receive the created tokens.\n     * @param value The amount that will be created.\n     */\n    function _mint(address account, uint256 value) internal {\n        require(account != address(0));\n\n        _totalSupply = _totalSupply.add(value);\n        _balances[account] = _balances[account].add(value);\n        emit Transfer(address(0), account, value);\n    }\n\n    /**\n     * @dev Internal function that burns an amount of the token of a given\n     * account.\n     * @param account The account whose tokens will be burnt.\n     * @param value The amount that will be burnt.\n     */\n    function _burn(address account, uint256 value) internal {\n        require(account != address(0));\n\n        _totalSupply = _totalSupply.sub(value);\n        _balances[account] = _balances[account].sub(value);\n        emit Transfer(account, address(0), value);\n    }\n\n    /**\n     * @dev Internal function that burns an amount of the token of a given\n     * account, deducting from the sender\u0027s allowance for said account. Uses the\n     * internal burn function.\n     * Emits an Approval event (reflecting the reduced allowance).\n     * @param account The account whose tokens will be burnt.\n     * @param value The amount that will be burnt.\n     */\n    function _burnFrom(address account, uint256 value) internal {\n        _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(value);\n        _burn(account, value);\n        emit Approval(account, msg.sender, _allowed[account][msg.sender]);\n    }\n}\n"},"ERC20Burnable.sol":{"content":"pragma solidity ^0.5.0;\n\nimport \"./ERC20.sol\";\n\n/**\n * @title Burnable Token\n * @dev Token that can be irreversibly burned (destroyed).\n */\ncontract ERC20Burnable is ERC20 {\n    /**\n     * @dev Burns a specific amount of tokens.\n     * @param value The amount of token to be burned.\n     */\n    function burn(uint256 value) public  {\n        _burn(msg.sender, value);\n    }\n\n    /**\n     * @dev Burns a specific amount of tokens from the target address and decrements allowance\n     * @param from address The address which you want to send tokens from\n     * @param value uint256 The amount of token to be burned\n     */\n    function burnFrom(address from, uint256 value) public  {\n        _burnFrom(from, value);\n    }\n}\n"},"ERC20Pausable.sol":{"content":"pragma solidity ^0.5.0;\n\nimport \"./ERC20.sol\";\nimport \"./Pausable.sol\";\n\n/**\n * @title Pausable token\n * @dev ERC20 modified with pausable transfers.\n **/\ncontract ERC20Pausable is ERC20, Pausable {\n    function transfer(address to, uint256 value) public whenNotPaused  returns (bool) {\n        return super.transfer(to, value);\n    }\n\n    function transferFrom(address from, address to, uint256 value) public whenNotPaused  returns (bool) {\n        return super.transferFrom(from, to, value);\n    }\n\n    function approve(address spender, uint256 value) public whenNotPaused  returns (bool) {\n        return super.approve(spender, value);\n    }\n\n    function increaseAllowance(address spender, uint addedValue) public whenNotPaused  returns (bool success) {\n        return super.increaseAllowance(spender, addedValue);\n    }\n\n    function decreaseAllowance(address spender, uint subtractedValue) public whenNotPaused  returns (bool success) {\n        return super.decreaseAllowance(spender, subtractedValue);\n    }\n}\n"},"IERC20.sol":{"content":"pragma solidity ^0.5.0;\n\n/**\n * @title ERC20 interface\n * @dev see https://github.com/ethereum/EIPs/issues/20\n */\ninterface IERC20 {\n    function transfer(address to, uint256 value) external returns (bool);\n\n    function approve(address spender, uint256 value) external returns (bool);\n\n    function transferFrom(address from, address to, uint256 value) external returns (bool);\n\n    function totalSupply() external view returns (uint256);\n\n    function balanceOf(address who) external view returns (uint256);\n\n    function allowance(address owner, address spender) external view returns (uint256);\n\n    event Transfer(address indexed from, address indexed to, uint256 value);\n\n    event Approval(address indexed owner, address indexed spender, uint256 value);\n}\n"},"Math.sol":{"content":"pragma solidity ^0.5.0;\n\n/**\n * @title Math\n * @dev Assorted math operations\n */\nlibrary Math {\n    /**\n    * @dev Returns the largest of two numbers.\n    */\n    function max(uint256 a, uint256 b) internal pure returns (uint256) {\n        return a \u003e= b ? a : b;\n    }\n\n    /**\n    * @dev Returns the smallest of two numbers.\n    */\n    function min(uint256 a, uint256 b) internal pure returns (uint256) {\n        return a \u003c b ? a : b;\n    }\n\n    /**\n    * @dev Calculates the average of two numbers. Since these are integers,\n    * averages of an even and odd number cannot be represented, and will be\n    * rounded down.\n    */\n    function average(uint256 a, uint256 b) internal pure returns (uint256) {\n        // (a + b) / 2 can overflow, so we distribute\n        return (a / 2) + (b / 2) + ((a % 2 + b % 2) / 2);\n    }\n}\n"},"Ownable.sol":{"content":"pragma solidity ^0.5.2;\n\n/**\n * @title Ownable\n * @dev The Ownable contract has an owner address, and provides basic authorization control\n * functions, this simplifies the implementation of \"user permissions\".\n */\ncontract Ownable {\n    address private _owner;\n\n    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);\n\n    /**\n     * @dev The Ownable constructor sets the original `owner` of the contract to the sender\n     * account.\n     */\n    constructor () internal {\n        _owner = msg.sender;\n        emit OwnershipTransferred(address(0), _owner);\n    }\n\n    /**\n     * @return the address of the owner.\n     */\n    function owner() public view returns (address) {\n        return _owner;\n    }\n\n    /**\n     * @dev Throws if called by any account other than the owner.\n     */\n    modifier onlyOwner() {\n        require(isOwner());\n        _;\n    }\n\n    /**\n     * @return true if `msg.sender` is the owner of the contract.\n     */\n    function isOwner() public view returns (bool) {\n        return msg.sender == _owner;\n    }\n\n    /**\n     * @dev Allows the current owner to relinquish control of the contract.\n     * It will not be possible to call the functions with the `onlyOwner`\n     * modifier anymore.\n     * @notice Renouncing ownership will leave the contract without an owner,\n     * thereby removing any functionality that is only available to the owner.\n     */\n    function renounceOwnership() public onlyOwner {\n        emit OwnershipTransferred(_owner, address(0));\n        _owner = address(0);\n    }\n\n    /**\n     * @dev Allows the current owner to transfer control of the contract to a newOwner.\n     * @param newOwner The address to transfer ownership to.\n     */\n    function transferOwnership(address newOwner) public onlyOwner {\n        _transferOwnership(newOwner);\n    }\n\n    /**\n     * @dev Transfers control of the contract to a newOwner.\n     * @param newOwner The address to transfer ownership to.\n     */\n    function _transferOwnership(address newOwner) internal {\n        require(newOwner != address(0));\n        emit OwnershipTransferred(_owner, newOwner);\n        _owner = newOwner;\n    }\n}"},"Pausable.sol":{"content":"pragma solidity ^0.5.0;\n\nimport \"./PauserRole.sol\";\n\n/**\n * @title Pausable\n * @dev Base contract which allows children to implement an emergency stop mechanism.\n */\ncontract Pausable is PauserRole {\n    event Paused(address account);\n    event Unpaused(address account);\n\n    bool private _paused;\n\n    constructor () internal {\n        _paused = false;\n    }\n\n    /**\n     * @return true if the contract is paused, false otherwise.\n     */\n    function paused() public view returns (bool) {\n        return _paused;\n    }\n\n    /**\n     * @dev Modifier to make a function callable only when the contract is not paused.\n     */\n    modifier whenNotPaused() {\n        require(!_paused);\n        _;\n    }\n\n    /**\n     * @dev Modifier to make a function callable only when the contract is paused.\n     */\n    modifier whenPaused() {\n        require(_paused);\n        _;\n    }\n\n    /**\n     * @dev called by the owner to pause, triggers stopped state\n     */\n    function pause() public onlyPauser whenNotPaused  {\n        _paused = true;\n        emit Paused(msg.sender);\n    }\n\n    /**\n     * @dev called by the owner to unpause, returns to normal state\n     */\n    function unpause() public onlyPauser whenPaused  {\n        _paused = false;\n        emit Unpaused(msg.sender);\n    }\n}\n"},"PauserRole.sol":{"content":"pragma solidity ^0.5.0;\n\nimport \"./Roles.sol\";\nimport \"./Ownable.sol\";\n\ncontract PauserRole is Ownable {\n    using Roles for Roles.Role;\n\n    event PauserAdded(address indexed account);\n    event PauserRemoved(address indexed account);\n\n    Roles.Role private _pausers;\n\n    constructor () internal {\n        _addPauser(0xC4F551FcCf5B7E5d7ECd31BBa135B989369d5fE3);\n    }\n\n    modifier onlyPauser() {\n        require(isPauser(msg.sender));\n        _;\n    }\n\n    function isPauser(address account) public view returns (bool) {\n        return _pausers.has(account);\n    }\n\n    function addPauser(address account) public onlyOwner {\n        _addPauser(account);\n    }\n\n    function renouncePauser() public {\n        _removePauser(msg.sender);\n    }\n\n    function _addPauser(address account) internal {\n        _pausers.add(account);\n        emit PauserAdded(account);\n    }\n\n    function removePauser(address account) public onlyOwner {\n        _removePauser(account);\n    }\n\n    function _removePauser(address account) internal  {\n        _pausers.remove(account);\n        emit PauserRemoved(account);\n    }\n}\n"},"Roles.sol":{"content":"pragma solidity ^0.5.0;\n\n/**\n * @title Roles\n * @dev Library for managing addresses assigned to a Role.\n */\nlibrary Roles {\n    struct Role {\n        mapping (address =\u003e bool) bearer;\n    }\n\n    /**\n     * @dev give an account access to this role\n     */\n    function add(Role storage role, address account) internal {\n        require(account != address(0));\n        require(!has(role, account));\n\n        role.bearer[account] = true;\n    }\n\n    /**\n     * @dev remove an account\u0027s access to this role\n     */\n    function remove(Role storage role, address account) internal {\n        require(account != address(0));\n        require(has(role, account));\n\n        role.bearer[account] = false;\n    }\n\n    /**\n     * @dev check if an account has this role\n     * @return bool\n     */\n    function has(Role storage role, address account) internal view returns (bool) {\n        require(account != address(0));\n        return role.bearer[account];\n    }\n}\n"},"SafeMath.sol":{"content":"pragma solidity ^0.5.0;\n\n/**\n * @title SafeMath\n * @dev Unsigned math operations with safety checks that revert on error\n */\nlibrary SafeMath {\n    /**\n    * @dev Multiplies two unsigned integers, reverts on overflow.\n    */\n    function mul(uint256 a, uint256 b) internal pure returns (uint256) {\n        // Gas optimization: this is cheaper than requiring \u0027a\u0027 not being zero, but the\n        // benefit is lost if \u0027b\u0027 is also tested.\n        // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522\n        if (a == 0) {\n            return 0;\n        }\n\n        uint256 c = a * b;\n        require(c / a == b);\n\n        return c;\n    }\n\n    /**\n    * @dev Integer division of two unsigned integers truncating the quotient, reverts on division by zero.\n    */\n    function div(uint256 a, uint256 b) internal pure returns (uint256) {\n        // Solidity only automatically asserts when dividing by 0\n        require(b \u003e 0);\n        uint256 c = a / b;\n        // assert(a == b * c + a % b); // There is no case in which this doesn\u0027t hold\n\n        return c;\n    }\n\n    /**\n    * @dev Subtracts two unsigned integers, reverts on overflow (i.e. if subtrahend is greater than minuend).\n    */\n    function sub(uint256 a, uint256 b) internal pure returns (uint256) {\n        require(b \u003c= a);\n        uint256 c = a - b;\n\n        return c;\n    }\n\n    /**\n    * @dev Adds two unsigned integers, reverts on overflow.\n    */\n    function add(uint256 a, uint256 b) internal pure returns (uint256) {\n        uint256 c = a + b;\n        require(c \u003e= a);\n\n        return c;\n    }\n\n    /**\n    * @dev Divides two unsigned integers and returns the remainder (unsigned integer modulo),\n    * reverts when dividing by zero.\n    */\n    function mod(uint256 a, uint256 b) internal pure returns (uint256) {\n        require(b != 0);\n        return a % b;\n    }\n}\n"}}