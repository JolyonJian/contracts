# Palkeoramix decompiler. 

def storage:
  stor3608 is uint128 at storage 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc offset 160
  stor3608 is addr at storage 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc
  stor3608 is uint256 at storage 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc
  storB531 is uint128 at storage 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103 offset 160
  storB531 is addr at storage 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103

def admin(): # not payable
  if caller == addr(storB531.field_0):
      return addr(storB531.field_0)
  delegate uint256(stor3608.field_0) with:
     funct call.data[0 len 4]
       gas gas_remaining wei
      args call.data[4 len calldata.size - 4]
  if not delegate.return_code:
      revert with ext_call.return_data[0 len return_data.size]
  return ext_call.return_data[0 len return_data.size]

def implementation(): # not payable
  if caller == addr(storB531.field_0):
      return addr(stor3608.field_0)
  delegate uint256(stor3608.field_0) with:
     funct call.data[0 len 4]
       gas gas_remaining wei
      args call.data[4 len calldata.size - 4]
  if not delegate.return_code:
      revert with ext_call.return_data[0 len return_data.size]
  return ext_call.return_data[0 len return_data.size]

def _fallback() payable: # default function
  if caller == addr(storB531.field_0):
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                  32,
                  50,
                  0xfe43616e6e6f742063616c6c2066616c6c6261636b2066756e6374696f6e2066726f6d207468652070726f78792061646d69,
                  mem[214 len 14]
  delegate uint256(stor3608.field_0) with:
     funct call.data[0 len 4]
       gas gas_remaining wei
      args call.data[4 len calldata.size - 4]
  if not delegate.return_code:
      revert with ext_call.return_data[0 len return_data.size]
  return ext_call.return_data[0 len return_data.size]

def upgradeTo(address _implementation): # not payable
  require calldata.size - 4 >= 32
  if addr(storB531.field_0) != caller:
      delegate uint256(stor3608.field_0) with:
         funct call.data[0 len 4]
           gas gas_remaining wei
          args call.data[4 len calldata.size - 4]
      if not delegate.return_code:
          revert with ext_call.return_data[0 len return_data.size]
      return ext_call.return_data[0 len return_data.size]
  if not ext_code.size(_implementation):
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                  32,
                  59,
                  0x7343616e6e6f742073657420612070726f787920696d706c656d656e746174696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                  mem[223 len 5]
  addr(stor3608.field_0) = _implementation
  Mask(96, 0, stor3608.field_160) = 0
  log Upgraded(address nextVersion=_implementation)

def changeAdmin(address _admin): # not payable
  require calldata.size - 4 >= 32
  if addr(storB531.field_0) != caller:
      delegate uint256(stor3608.field_0) with:
         funct call.data[0 len 4]
           gas gas_remaining wei
          args call.data[4 len calldata.size - 4]
      if not delegate.return_code:
          revert with ext_call.return_data[0 len return_data.size]
      return ext_call.return_data[0 len return_data.size]
  if not _admin_:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                  32,
                  54,
                  0x6e43616e6e6f74206368616e6765207468652061646d696e206f6620612070726f787920746f20746865207a65726f20616464726573,
                  mem[218 len 10]
  log AdminChanged(
        address from=addr(storB531.field_0),
        address to=_admin_)
  addr(storB531.field_0) = _admin_
  Mask(96, 0, storB531.field_160) = 0

def upgradeToAndCall(address _implementation, bytes _data) payable: 
  require calldata.size - 4 >= 64
  require _data <= 4294967296
  require _data + 36 <= calldata.size
  require _data.length <= 4294967296 and _data + _data.length + 36 <= calldata.size
  if addr(storB531.field_0) != caller:
      delegate uint256(stor3608.field_0) with:
         funct call.data[0 len 4]
           gas gas_remaining wei
          args call.data[4 len calldata.size - 4]
      if not delegate.return_code:
          revert with ext_call.return_data[0 len return_data.size]
      return ext_call.return_data[0 len return_data.size]
  if not ext_code.size(_implementation):
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                  32,
                  59,
                  0x7343616e6e6f742073657420612070726f787920696d706c656d656e746174696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                  mem[223 len 5]
  addr(stor3608.field_0) = _implementation
  Mask(96, 0, stor3608.field_160) = 0
  log Upgraded(address nextVersion=_implementation)
  delegate _implementation with:
       gas gas_remaining wei
      args _data[all]
  if not delegate.return_code:
      revert with 0, 'upgrade failed'


