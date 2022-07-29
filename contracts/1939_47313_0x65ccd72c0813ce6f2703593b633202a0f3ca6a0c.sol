{"BaseToken.sol":{"content":"pragma solidity ^0.5.8;\n\nimport \"./SafeMath.sol\";\nimport \"./Ownable.sol\";\n\ncontract BaseToken is Ownable\n{\n    using SafeMath for uint256;\n\n    // MARK: error message.\n    string constant internal ERROR_APPROVED_BALANCE_NOT_ENOUGH = \u0027Reason: Approved balance is not enough.\u0027;\n    string constant internal ERROR_BALANCE_NOT_ENOUGH          = \u0027Reason: Balance is not enough.\u0027;\n    string constant internal ERROR_LOCKED                      = \u0027Reason: Locked.\u0027;\n    string constant internal ERROR_ADDRESS_NOT_VALID           = \u0027Reason: Address is not valid.\u0027;\n    string constant internal ERROR_ADDRESS_IS_SAME             = \u0027Reason: Address is same.\u0027;\n    string constant internal ERROR_VALUE_NOT_VALID             = \u0027Reason: Value must be greater than 0.\u0027;\n    string constant internal ERROR_NO_LOCKUP                   = \u0027Reason: There is no lockup.\u0027;\n    string constant internal ERROR_DATE_TIME_NOT_VALID         = \u0027Reason: Datetime must grater or equals than zero.\u0027;\n    string constant internal ERROR_OUT_OF_INDEX                = \u0027Reason: Out of index.\u0027;\n    string constant internal ERROR_TIME_IS_PAST                = \u0027Reason: Time is past.\u0027;\n\n    // MARK: basic token information.\n    uint256 constant internal E18      = 1000000000000000000;\n    uint256 constant public decimals = 18;\n    uint256 public totalSupply;\n\n    struct Lock {\n        uint256 amount;\n        uint256 expiresAt;\n    }\n\n    mapping (address =\u003e uint256) public balances;\n    mapping (address =\u003e mapping ( address =\u003e uint256 )) public approvals;\n    mapping (address =\u003e Lock[]) public lockup;\n\n\n    // MARK: events\n    event Transfer(address indexed from, address indexed to, uint256 value);\n    event Approval(address indexed owner, address indexed spender, uint256 value);\n\n    event Locked(address _who,uint256 _index);\n    event UnlockedAll(address _who);\n    event UnlockedIndex(address _who, uint256 _index);\n    event Burn(address indexed from, uint256 indexed value);\n\n    constructor() public\n    {\n        balances[msg.sender] = totalSupply;\n    }\n\n    modifier transferParamsValidation(address _from, address _to, uint256 _value)\n    {\n        require(_from != address(0), ERROR_ADDRESS_NOT_VALID);\n        require(_to != address(0), ERROR_ADDRESS_NOT_VALID);\n        require(_value \u003e 0, ERROR_VALUE_NOT_VALID);\n        require(balances[_from] \u003e= _value, ERROR_BALANCE_NOT_ENOUGH);\n        require(!isLocked(_from, _value), ERROR_LOCKED);\n        _;\n    }\n\n    // MARK: functions for view data\n    function balanceOf(address _who) view public returns (uint256)\n    {\n        return balances[_who];\n    }\n\n    function lockedBalanceOf(address _who) view public returns (uint256)\n    {\n        require(_who != address(0), ERROR_ADDRESS_NOT_VALID);\n\n        uint256 lockedBalance = 0;\n        if(lockup[_who].length \u003e 0)\n        {\n            Lock[] storage locks = lockup[_who];\n\n            uint256 length = locks.length;\n            for (uint i = 0; i \u003c length; i++)\n            {\n                if (now \u003c locks[i].expiresAt)\n                {\n                    lockedBalance = lockedBalance.add(locks[i].amount);\n                }\n            }\n        }\n\n        return lockedBalance;\n    }\n\n    function allowance(address _owner, address _spender) view external returns (uint256)\n    {\n        return approvals[_owner][_spender];\n    }\n\n    // true: _who can transfer token\n    // false: _who can\u0027t transfer token\n    function isLocked(address _who, uint256 _value) view public returns(bool)\n    {\n        uint256 lockedBalance = lockedBalanceOf(_who);\n        uint256 balance = balanceOf(_who);\n\n        if(lockedBalance \u003c= 0)\n        {\n            return false;\n        }\n        else\n        {\n            return !(balance \u003e lockedBalance \u0026\u0026 balance.sub(lockedBalance) \u003e= _value);\n        }\n    }\n\n    // MARK: functions for token transfer\n    function transfer(address _to, uint256 _value) external onlyWhenNotStopped transferParamsValidation(msg.sender, _to, _value) returns (bool)\n    {\n        _transfer(msg.sender, _to, _value);\n\n        return true;\n    }\n\n    function transferFrom(address _from, address _to, uint256 _value) external onlyWhenNotStopped transferParamsValidation(_from, _to, _value) returns (bool)\n    {\n        require(approvals[_from][msg.sender] \u003e= _value, ERROR_APPROVED_BALANCE_NOT_ENOUGH);\n\n        approvals[_from][msg.sender] = approvals[_from][msg.sender].sub(_value);\n\n        _transfer(_from, _to, _value);\n\n        return true;\n    }\n\n    function transferWithLock(address _to, uint256 _value, uint256 _time) onlyOwner transferParamsValidation(msg.sender, _to, _value) external returns (bool)\n    {\n        require(_time \u003e now, ERROR_TIME_IS_PAST);\n\n        _lock(_to, _value, _time);\n        _transfer(msg.sender, _to, _value);\n\n        return true;\n    }\n\n    // MARK: utils for transfer authentication\n    function approve(address _spender, uint256 _value) external onlyWhenNotStopped returns (bool)\n    {\n        require(_spender != address(0), ERROR_VALUE_NOT_VALID);\n        require(balances[msg.sender] \u003e= _value, ERROR_BALANCE_NOT_ENOUGH);\n        require(msg.sender != _spender, ERROR_ADDRESS_IS_SAME);\n\n        approvals[msg.sender][_spender] = _value;\n\n        emit Approval(msg.sender, _spender, _value);\n\n        return true;\n    }\n\n    // MARK: utils for amount of token\n    // Lock up token until specific date time.\n    function unlock(address _who, uint256 _index) onlyOwner external returns (bool)\n    {\n        uint256 length = lockup[_who].length;\n        require(length \u003e _index, ERROR_OUT_OF_INDEX);\n\n        lockup[_who][_index] = lockup[_who][length - 1];\n        lockup[_who].length--;\n\n        emit UnlockedIndex(_who, _index);\n\n        return true;\n    }\n\n    function unlockAll(address _who) onlyOwner external returns (bool)\n    {\n        require(lockup[_who].length \u003e 0, ERROR_NO_LOCKUP);\n\n        delete lockup[_who];\n        emit UnlockedAll(_who);\n\n        return true;\n    }\n\n    function burn(uint256 _value) external\n    {\n        require(balances[msg.sender] \u003e= _value, ERROR_BALANCE_NOT_ENOUGH);\n        require(_value \u003e 0, ERROR_VALUE_NOT_VALID);\n\n        balances[msg.sender] = balances[msg.sender].sub(_value);\n\n        totalSupply = totalSupply.sub(_value);\n\n        emit Burn(msg.sender, _value);\n    }\n\n    // MARK: internal functions\n    function _transfer(address _from, address _to, uint256 _value) internal\n    {\n        balances[_from] = balances[_from].sub(_value);\n        balances[_to] = balances[_to].add(_value);\n\n        emit Transfer(_from, _to, _value);\n    }\n\n    function _lock(address _who, uint256 _value, uint256 _dateTime) onlyOwner internal\n    {\n        lockup[_who].push(Lock(_value, _dateTime));\n\n        emit Locked(_who, lockup[_who].length - 1);\n    }\n\n    // destruct for only after token upgrade\n    function close() onlyOwner public\n    {\n        selfdestruct(msg.sender);\n    }\n}"},"Nestree.sol":{"content":"pragma solidity ^0.5.8;\n\nimport \"./SafeMath.sol\";\nimport \"./BaseToken.sol\";\n\ncontract Nestree is BaseToken\n{\n    using SafeMath for uint256;\n\n    string constant internal ERROR_DUPLICATE_ADDRESS = \u0027Reason: msg.sender and receivers can not be the same.\u0027;\n\n    // MARK: token information.\n    string constant public name    = \u0027Nestree\u0027;\n    string constant public symbol  = \u0027EGG\u0027;\n    string constant public version = \u00271.0.0\u0027;\n\n    // MARK: events\n    event ReferralDrop(address indexed from, address indexed to1, uint256 value1, address indexed to2, uint256 value2);\n\n    constructor() public\n    {\n        totalSupply = 3000000000 * E18;\n        balances[msg.sender] = totalSupply;\n    }\n\n    function referralDrop(address _to1, uint256 _value1, address _to2, uint256 _value2, address _sale, uint256 _fee) external onlyWhenNotStopped returns (bool)\n    {\n        require(_to1 != address(0), ERROR_ADDRESS_NOT_VALID);\n        require(_to2 != address(0), ERROR_ADDRESS_NOT_VALID);\n        require(_sale != address(0), ERROR_ADDRESS_NOT_VALID);\n        require(balances[msg.sender] \u003e= _value1.add(_value2).add(_fee), ERROR_VALUE_NOT_VALID);\n        require(!isLocked(msg.sender, _value1.add(_value2).add(_fee)), ERROR_LOCKED);\n        require(msg.sender != _to1 \u0026\u0026 msg.sender != _to2 \u0026\u0026 msg.sender != _sale, ERROR_DUPLICATE_ADDRESS);\n\n        balances[msg.sender] = balances[msg.sender].sub(_value1.add(_value2).add(_fee));\n\n        if(_value1 \u003e 0)\n        {\n            balances[_to1] = balances[_to1].add(_value1);\n        }\n\n        if(_value2 \u003e 0)\n        {\n            balances[_to2] = balances[_to2].add(_value2);\n        }\n\n        if(_fee \u003e 0)\n        {\n            balances[_sale] = balances[_sale].add(_fee);\n        }\n\n        emit ReferralDrop(msg.sender, _to1, _value1, _to2, _value2);\n        return true;\n    }\n}"},"Ownable.sol":{"content":"pragma solidity ^0.5.8;\n\ncontract Ownable\n{\n    string constant internal ERROR_NO_HAVE_PERMISSION   = \u0027Reason: No have permission.\u0027;\n    string constant internal ERROR_IS_STOPPED           = \u0027Reason: Is stopped.\u0027;\n    string constant internal ERROR_ADDRESS_NOT_VALID    = \u0027Reason: Address is not valid.\u0027;\n    string constant internal ERROR_CALLER_ALREADY_OWNER = \u0027Reason: Caller already is owner\u0027;\n    string constant internal ERROR_NOT_PROPOSED_OWNER   = \u0027Reason: Not proposed owner\u0027;\n\n    bool private stopped;\n    address private _owner;\n    address private proposedOwner;\n    mapping(address =\u003e bool) private _allowed;\n\n    event Stopped();\n    event Started();\n    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);\n    event Allowed(address indexed _address);\n    event RemoveAllowed(address indexed _address);\n\n    constructor () internal\n    {\n        stopped = false;\n        _owner = msg.sender;\n        emit OwnershipTransferred(address(0), _owner);\n    }\n\n    function owner() public view returns (address)\n    {\n        return _owner;\n    }\n\n    modifier onlyOwner()\n    {\n        require(isOwner(), ERROR_NO_HAVE_PERMISSION);\n        _;\n    }\n\n    modifier onlyAllowed()\n    {\n        require(isAllowed() || isOwner(), ERROR_NO_HAVE_PERMISSION);\n        _;\n    }\n\n    modifier onlyWhenNotStopped()\n    {\n        require(!isStopped(), ERROR_IS_STOPPED);\n        _;\n    }\n\n    function isOwner() public view returns (bool)\n    {\n        return msg.sender == _owner;\n    }\n\n    function isAllowed() public view returns (bool)\n    {\n        return _allowed[msg.sender];\n    }\n\n    function allow(address _target) external onlyOwner returns (bool)\n    {\n        _allowed[_target] = true;\n        emit Allowed(_target);\n        return true;\n    }\n\n    function removeAllowed(address _target) external onlyOwner returns (bool)\n    {\n        _allowed[_target] = false;\n        emit RemoveAllowed(_target);\n        return true;\n    }\n\n    function isStopped() public view returns (bool)\n    {\n        if(isOwner() || isAllowed())\n        {\n            return false;\n        }\n        else\n        {\n            return stopped;\n        }\n    }\n\n    function stop() public onlyOwner\n    {\n        _stop();\n    }\n\n    function start() public onlyOwner\n    {\n        _start();\n    }\n\n    function proposeOwner(address _proposedOwner) public onlyOwner\n    {\n        require(msg.sender != _proposedOwner, ERROR_CALLER_ALREADY_OWNER);\n        proposedOwner = _proposedOwner;\n    }\n\n    function claimOwnership() public\n    {\n        require(msg.sender == proposedOwner, ERROR_NOT_PROPOSED_OWNER);\n\n        emit OwnershipTransferred(_owner, proposedOwner);\n\n        _owner = proposedOwner;\n        proposedOwner = address(0);\n    }\n\n    function _stop() internal\n    {\n        emit Stopped();\n        stopped = true;\n    }\n\n    function _start() internal\n    {\n        emit Started();\n        stopped = false;\n    }\n}"},"SafeMath.sol":{"content":"pragma solidity ^0.5.8;\n\n/**\n * @title SafeMath\n * @dev Unsigned math operations with safety checks that revert on error\n */\nlibrary SafeMath {\n    /**\n    * @dev Multiplies two unsigned integers, reverts on overflow.\n    */\n    function mul(uint256 a, uint256 b) internal pure returns (uint256) {\n        // Gas optimization: this is cheaper than requiring \u0027a\u0027 not being zero, but the\n        // benefit is lost if \u0027b\u0027 is also tested.\n        // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522\n        if (a == 0) {\n            return 0;\n        }\n\n        uint256 c = a * b;\n        require(c / a == b);\n\n        return c;\n    }\n\n    /**\n    * @dev Integer division of two unsigned integers truncating the quotient, reverts on division by zero.\n    */\n    function div(uint256 a, uint256 b) internal pure returns (uint256) {\n        // Solidity only automatically asserts when dividing by 0\n        require(b \u003e 0);\n        uint256 c = a / b;\n        // assert(a == b * c + a % b); // There is no case in which this doesn\u0027t hold\n\n        return c;\n    }\n\n    /**\n    * @dev Subtracts two unsigned integers, reverts on overflow (i.e. if subtrahend is greater than minuend).\n    */\n    function sub(uint256 a, uint256 b) internal pure returns (uint256) {\n        require(b \u003c= a);\n        uint256 c = a - b;\n\n        return c;\n    }\n\n    /**\n    * @dev Adds two unsigned integers, reverts on overflow.\n    */\n    function add(uint256 a, uint256 b) internal pure returns (uint256) {\n        uint256 c = a + b;\n        require(c \u003e= a);\n\n        return c;\n    }\n\n    /**\n    * @dev Divides two unsigned integers and returns the remainder (unsigned integer modulo),\n    * reverts when dividing by zero.\n    */\n    function mod(uint256 a, uint256 b) internal pure returns (uint256) {\n        require(b != 0);\n        return a % b;\n    }\n}"}}