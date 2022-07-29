{"ERC20.sol":{"content":"/**\n * Source Code first verified at https://etherscan.io on Wednesday, March 13, 2019\n (UTC) */\n\npragma solidity 0.5.7;\n\ncontract ERC20 {\n  function totalSupply()public view returns (uint256 total_Supply);\n  function balanceOf(address who)public view returns (uint256);\n  function transfer(address to, uint256 value)public returns (bool success);\n  function transferFrom(address from, address to, uint256 value)public returns (bool success);\n  function approve(address spender, uint256 value)public returns (bool success);\n  function allowance(address owner, address spender)public view returns (uint256 remaining);\n  event Transfer(address indexed _from, address indexed _to, uint256 _value);\n  event Approval(address indexed _owner, address indexed _spender, uint256 _value);\n}\n"},"SafeMath.sol":{"content":"pragma solidity ^0.5.0;\n\n/**\n * @dev Wrappers over Solidity\u0027s arithmetic operations with added overflow\n * checks.\n *\n * Arithmetic operations in Solidity wrap on overflow. This can easily result\n * in bugs, because programmers usually assume that an overflow raises an\n * error, which is the standard behavior in high level programming languages.\n * `SafeMath` restores this intuition by reverting the transaction when an\n * operation overflows.\n *\n * Using this library instead of the unchecked operations eliminates an entire\n * class of bugs, so it\u0027s recommended to use it always.\n */\nlibrary SafeMath {\n    /**\n     * @dev Returns the addition of two unsigned integers, reverting on\n     * overflow.\n     *\n     * Counterpart to Solidity\u0027s `+` operator.\n     *\n     * Requirements:\n     * - Addition cannot overflow.\n     */\n    function add(uint256 a, uint256 b) internal pure returns (uint256) {\n        uint256 c = a + b;\n        require(c \u003e= a, \"SafeMath: addition overflow\");\n\n        return c;\n    }\n\n    /**\n     * @dev Returns the subtraction of two unsigned integers, reverting on\n     * overflow (when the result is negative).\n     *\n     * Counterpart to Solidity\u0027s `-` operator.\n     *\n     * Requirements:\n     * - Subtraction cannot overflow.\n     */\n    function sub(uint256 a, uint256 b) internal pure returns (uint256) {\n        return sub(a, b, \"SafeMath: subtraction overflow\");\n    }\n\n    /**\n     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on\n     * overflow (when the result is negative).\n     *\n     * Counterpart to Solidity\u0027s `-` operator.\n     *\n     * Requirements:\n     * - Subtraction cannot overflow.\n     *\n     * _Available since v2.4.0._\n     */\n    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {\n        require(b \u003c= a, errorMessage);\n        uint256 c = a - b;\n\n        return c;\n    }\n\n    /**\n     * @dev Returns the multiplication of two unsigned integers, reverting on\n     * overflow.\n     *\n     * Counterpart to Solidity\u0027s `*` operator.\n     *\n     * Requirements:\n     * - Multiplication cannot overflow.\n     */\n    function mul(uint256 a, uint256 b) internal pure returns (uint256) {\n        // Gas optimization: this is cheaper than requiring \u0027a\u0027 not being zero, but the\n        // benefit is lost if \u0027b\u0027 is also tested.\n        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522\n        if (a == 0) {\n            return 0;\n        }\n\n        uint256 c = a * b;\n        require(c / a == b, \"SafeMath: multiplication overflow\");\n\n        return c;\n    }\n\n    /**\n     * @dev Returns the integer division of two unsigned integers. Reverts on\n     * division by zero. The result is rounded towards zero.\n     *\n     * Counterpart to Solidity\u0027s `/` operator. Note: this function uses a\n     * `revert` opcode (which leaves remaining gas untouched) while Solidity\n     * uses an invalid opcode to revert (consuming all remaining gas).\n     *\n     * Requirements:\n     * - The divisor cannot be zero.\n     */\n    function div(uint256 a, uint256 b) internal pure returns (uint256) {\n        return div(a, b, \"SafeMath: division by zero\");\n    }\n\n    /**\n     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on\n     * division by zero. The result is rounded towards zero.\n     *\n     * Counterpart to Solidity\u0027s `/` operator. Note: this function uses a\n     * `revert` opcode (which leaves remaining gas untouched) while Solidity\n     * uses an invalid opcode to revert (consuming all remaining gas).\n     *\n     * Requirements:\n     * - The divisor cannot be zero.\n     *\n     * _Available since v2.4.0._\n     */\n    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {\n        // Solidity only automatically asserts when dividing by 0\n        require(b \u003e 0, errorMessage);\n        uint256 c = a / b;\n        // assert(a == b * c + a % b); // There is no case in which this doesn\u0027t hold\n\n        return c;\n    }\n\n    /**\n     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),\n     * Reverts when dividing by zero.\n     *\n     * Counterpart to Solidity\u0027s `%` operator. This function uses a `revert`\n     * opcode (which leaves remaining gas untouched) while Solidity uses an\n     * invalid opcode to revert (consuming all remaining gas).\n     *\n     * Requirements:\n     * - The divisor cannot be zero.\n     */\n    function mod(uint256 a, uint256 b) internal pure returns (uint256) {\n        return mod(a, b, \"SafeMath: modulo by zero\");\n    }\n\n    /**\n     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),\n     * Reverts with custom message when dividing by zero.\n     *\n     * Counterpart to Solidity\u0027s `%` operator. This function uses a `revert`\n     * opcode (which leaves remaining gas untouched) while Solidity uses an\n     * invalid opcode to revert (consuming all remaining gas).\n     *\n     * Requirements:\n     * - The divisor cannot be zero.\n     *\n     * _Available since v2.4.0._\n     */\n    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {\n        require(b != 0, errorMessage);\n        return a % b;\n    }\n}\n"},"UznexToken.sol":{"content":"pragma solidity 0.5.7;\n\nimport \"./ERC20.sol\";\nimport \"./SafeMath.sol\";\n\n\ncontract UzNEX is ERC20 {\n    using SafeMath for uint256;\n    //--- Token configurations ----//\n    string private constant _name = \"UzNEX Coin\";\n    string private constant _symbol = \"UNB\";\n    uint8 private constant _decimals = 18;\n\n    uint256 private _totalsupply = 8000000000 * (10 ** uint256(_decimals));\n    address private _owner;\n\n\n    struct Lock {\n        uint256 time;\n        uint256 amount;\n    }\n\n    mapping(address =\u003e uint256) private balances;\n    mapping(address =\u003e mapping(address =\u003e uint256)) private allowed;\n    mapping (address =\u003e Lock) private locks;\n\n\n    event Burn(address indexed from, uint256 amount);\n\n    modifier onlyOwner() {\n        require(msg.sender == _owner, \"Only owner is allowed\");\n        _;\n    }\n\n    constructor() public\n    {\n        balances[msg.sender] = _totalsupply;\n        _owner = msg.sender;\n\n    }\n\n    function name() public pure returns (string memory) {\n        return _name;\n    }\n\n    function symbol() public pure returns (string memory) {\n        return _symbol;\n    }\n\n    function decimals() public pure returns (uint8) {\n        return _decimals;\n    }\n\n\n    function owner() public view returns (address) {\n        return _owner;\n    }\n\n    function lockStatus(address _of) public view returns (uint256,uint256,uint256) {\n        return (block.timestamp, locks[_of].time, locks[_of].amount);\n    }\n\n    function totalSupply() public view returns (uint256) {\n        return _totalsupply;\n    }\n\n    function balanceOf(address _of) public view returns (uint256) {\n        return balances[_of];\n    }\n\n    function lockToken(address _of, uint256 _amount, uint256 _time) public onlyOwner  {\n        locks[_of].time = _time;\n        locks[_of].amount = _amount;\n    }\n\n    function unlockToken(address _of) public onlyOwner  {\n        locks[_of].time = block.timestamp;\n        locks[_of].amount = 0;\n    }\n\n\n    function approve(address _spender, uint256 _amount) public  returns (bool)  {\n        require(_spender != address(0), \"Address can not be 0x0\");\n        require(balances[msg.sender] \u003e= _amount, \"Balance does not have enough tokens\");\n        require(balances[msg.sender] - locks[msg.sender].amount \u003e= _amount || block.timestamp \u003e= locks[msg.sender].time,\"Sender address is locked\");\n        allowed[msg.sender][_spender] = _amount;\n        emit Approval(msg.sender, _spender, _amount);\n        return true;\n    }\n\n    function allowance(address _from, address _spender) public view returns (uint256) {\n        return allowed[_from][_spender];\n    }\n\n    function transfer(address _to, uint256 _amount) public  returns (bool) {\n        require(_to != address(0), \"Receiver can not be 0x0\");\n        require(balances[msg.sender] \u003e= _amount, \"Balance does not have enough tokens\");\n        require(balances[msg.sender] - locks[msg.sender].amount \u003e= _amount || block.timestamp \u003e= locks[msg.sender].time,\"Sender address is locked\");\n        balances[msg.sender] = (balances[msg.sender]).sub(_amount);\n        balances[_to] = (balances[_to]).add(_amount);\n        emit Transfer(msg.sender, _to, _amount);\n        return true;\n    }\n\n    function transferFrom(address _from, address _to, uint256 _amount ) public  returns (bool)  {\n        require(_to != address(0), \"Receiver can not be 0x0\");\n        require(balances[_from] \u003e= _amount, \"Source\u0027s balance is not enough\");\n        require(allowed[_from][msg.sender] \u003e= _amount, \"Allowance is not enough\");\n        require(balances[_from] - locks[_from].amount \u003e= _amount || block.timestamp \u003e= locks[_from].time,\"Sender address is locked\");\n        balances[_from] = (balances[_from]).sub(_amount);\n        allowed[_from][msg.sender] = (allowed[_from][msg.sender]).sub(_amount);\n        balances[_to] = (balances[_to]).add(_amount);\n        emit Transfer(_from, _to, _amount);\n        return true;\n    }\n\n    function burn(uint256 _value) public onlyOwner returns (bool) {\n        require(balances[msg.sender] \u003e= _value,\"Balance does not have enough tokens\");\n        balances[msg.sender] = (balances[msg.sender]).sub(_value);\n        _totalsupply = _totalsupply.sub(_value);\n        emit Burn(msg.sender, _value);\n        return true;\n    }\n}\n"}}