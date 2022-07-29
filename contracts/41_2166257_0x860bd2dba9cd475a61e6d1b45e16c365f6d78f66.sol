# Palkeoramix decompiler. 

def storage:
  stor0 is addr at storage 0
  stor1 is mapping of uint8 at storage 1

def destruct(): # not payable
  if stor0 != caller:
      revert with 0, 'not owner'
  selfdestruct(caller)

def _fallback() payable: # default function
  stop

def withdraw(address _player, uint256 _withdraw_v): # not payable
  require calldata.size - 4 >= 64
  if stor0 != caller:
      revert with 0, 'not owner'
  call _player with:
     value _withdraw_v wei
       gas 2300 * is_zero(value) wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def unknown377e11e0(): # not payable
  require calldata.size - 4 >= 32
  require cd <= 4294967296
  require cd <= calldata.size
  require ('cd', 4).length <= 4294967296 and cd * ('cd', 4).length) + 36 <= calldata.size
  if stor0 != caller:
      revert with 0, 'not owner'
  idx = 0
  while idx < ('cd', 4).length:
      mem[0] = addr(cd[((32 * idx) + cd)
      mem[32] = 1
      stor1[addr(cd[((32 * idx) + cd)] = 0
      idx = idx + 1
      continue 

def delegate() payable: 
  mem[64] = 96
  require not call.value
  if caller == stor0:
      delegate (Mask(160, 96, _param1) >> 96) with:
           gas gas_remaining wei
          args call.data[24 len calldata.size - 24]
  else:
      mem[0] = caller
      mem[32] = 1
      if not stor1[caller]:
          revert with 0, 'not admin'
      mem[0 len calldata.size - 24] = call.data[24 len calldata.size - 24]
      delegate (Mask(160, 96, _param1) >> 96) with:
         funct (Mask(32, 128, caller) >> 128)
           gas gas_remaining wei
          args mem[4 len calldata.size - 28]
  require delegate.return_code
  return 0

def addAdmins(address[] _param1): # not payable
  require calldata.size - 4 >= 32
  require _param1 <= 4294967296
  require _param1 + 36 <= calldata.size
  require _param1.length <= 4294967296 and _param1 + (32 * _param1.length) + 36 <= calldata.size
  if stor0 != caller:
      revert with 0, 'not owner'
  idx = 0
  while idx < _param1.length:
      mem[0] = addr(cd[((32 * idx) + _param1 + 36)])
      mem[32] = 1
      stor1[addr(cd[((32 * idx) + _param1 + 36)])] = 1
      idx = idx + 1
      continue 

def unknown42841531(): # not payable
  require calldata.size - 4 >= 64
  require cd <= 4294967296
  require cd <= calldata.size
  require ('cd', 4).length <= 4294967296 and cd * ('cd', 4).length) + 36 <= calldata.size
  require cd <= 4294967296
  require cd <= calldata.size
  require ('cd', 36).length <= 4294967296 and cd * ('cd', 36).length) + 36 <= calldata.size
  if stor0 != caller:
      revert with 0, 'not owner'
  require ('cd', 4).length == ('cd', 36).length
  idx = 0
  while idx < ('cd', 4).length:
      require idx < ('cd', 36).length
      call addr(cd[((32 * idx) + cd) with:
         value cd[((32 * idx) + cdwei
           gas 2300 * is_zero(value) wei
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      continue 


