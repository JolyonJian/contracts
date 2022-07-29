# Palkeoramix decompiler. 

def storage:
  lockRequestCount is uint256 at storage 0
  custodianAddress is addr at storage 1
  custodianChangeReqs is mapping of addr at storage 2
  stor3 is mapping of uint8 at storage 3
  unknown14ae3c09 is mapping of addr at storage 4
  unknownefcab173 is mapping of addr at storage 5

def unknown14ae3c09(uint256 _param1): # not payable
  require calldata.size - 4 >= 32
  return unknown14ae3c09[_param1]

def custodian(): # not payable
  return custodianAddress

def unknown801ead1d(addr _param1): # not payable
  require calldata.size - 4 >= 32
  return bool(stor3[_param1])

def lockRequestCount(): # not payable
  return lockRequestCount

def custodianChangeReqs(bytes32 _param1): # not payable
  require calldata.size - 4 >= 32
  return custodianChangeReqs[_param1]

def unknownefcab173(uint256 _param1): # not payable
  require calldata.size - 4 >= 32
  return unknownefcab173[_param1]

#
#  Regular functions
#

def _fallback() payable: # default function
  log ReceivedEther(
        address sender=caller,
        uint256 amount=call.value)

def unknown2ca40a33(uint256 _param1): # not payable
  require calldata.size - 4 >= 32
  if custodianAddress != caller:
      revert with 0, 'unauthorized'
  if not unknownefcab173[_param1]:
      revert with 0, 'no such lockId'
  stor3[stor5[_param1]] = 0
  unknownefcab173[_param1] = 0
  log 0x18d5ef56: _param1, unknownefcab173[_param1]

def unknown6b2a8f65(uint256 _param1): # not payable
  require calldata.size - 4 >= 32
  if custodianAddress != caller:
      revert with 0, 'unauthorized'
  if not unknown14ae3c09[_param1]:
      revert with 0, 'no such lockId'
  stor3[stor4[_param1]] = 1
  unknown14ae3c09[_param1] = 0
  log 0xd201726f: _param1, unknown14ae3c09[_param1]

def confirmCustodianChange(bytes32 _lockId): # not payable
  require calldata.size - 4 >= 32
  if custodianAddress != caller:
      revert with 0, 'unauthorized'
  if not custodianChangeReqs[_lockId]:
      revert with 0, 'no such lockId'
  custodianAddress = custodianChangeReqs[_lockId]
  custodianChangeReqs[_lockId] = 0
  log CustodianChangeConfirmed(
        bytes32 lockId=_lockId,
        address newCustodian=custodianAddress)

def unknown233ecf78(addr _param1): # not payable
  require calldata.size - 4 >= 32
  if not _param1:
      revert with 0, 'zero address'
  lockRequestCount++
  unknownefcab173[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1] = _param1
  log 0x80484ea1: sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1), caller, _param1
  return sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1)

def unknown3f53c36c(addr _param1): # not payable
  require calldata.size - 4 >= 32
  if not _param1:
      revert with 0, 'zero address'
  lockRequestCount++
  unknown14ae3c09[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1] = _param1
  log 0x86347f0d: sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1), caller, _param1
  return sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1)

def requestCustodianChange(address _proposedCustodian): # not payable
  require calldata.size - 4 >= 32
  if not _proposedCustodian:
      revert with 0, 'zero address'
  lockRequestCount++
  custodianChangeReqs[block.hash(block.number - 1)][Mask(160, 96, this.address) >> 96][stor0 + 1] = _proposedCustodian
  log CustodianChangeRequested(
        bytes32 lockId=sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1),
        address msgSender=caller,
        address proposedCustodian=_proposedCustodian)
  return sha3(block.hash(block.number - 1), Mask(160, 96, this.address) >> 96, lockRequestCount + 1)

def unknownfd404b4c(addr _param1, addr _param2, array _param3): # not payable
  require calldata.size - 4 >= 96
  require _param3 <= 4294967296
  require _param3 + 36 <= calldata.size
  require _param3.length <= 4294967296 and _param3 + _param3.length + 36 <= calldata.size
  if not stor3[caller]:
      revert with 0, 'unauthorized'
  require ext_code.size(_param1)
  call _param1.0xdfd1fb7a with:
       gas gas_remaining wei
      args addr(_param2), Array(len=_param3.length, data=_param3[all])
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def unknown96aa7368(): # not payable
  require calldata.size - 4 >= 32
  require cd <= 4294967296
  require cd <= calldata.size
  require ('cd', 4).length <= 4294967296 and cd * ('cd', 4).length) + 36 <= calldata.size
  if not stor3[caller]:
      revert with 0, 'unauthorized'
  idx = 0
  while idx < ('cd', 4).length:
      mem[96] = 0x90ec71bd00000000000000000000000000000000000000000000000000000000
      require ext_code.size(addr(cd[((32 * idx) + cd))
      call addr(cd[((32 * idx) + cd).0x90ec71bd with:
           gas gas_remaining wei
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      continue 

def unknown2e2d726c(): # not payable
  require calldata.size - 4 >= 64
  require cd <= 4294967296
  require cd <= calldata.size
  require ('cd', 36).length <= 4294967296 and cd * ('cd', 36).length) + 36 <= calldata.size
  if not stor3[caller]:
      revert with 0, 'unauthorized'
  idx = 0
  while idx < ('cd', 36).length:
      mem[96] = 0xe00af4a700000000000000000000000000000000000000000000000000000000
      mem[100] = addr(cd)
      require ext_code.size(addr(cd[((32 * idx) + cd))
      call addr(cd[((32 * idx) + cd).0xe00af4a7 with:
           gas gas_remaining wei
          args addr(cd)
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      idx = idx + 1
      continue 

def unknown98a89897(): # not payable
  require calldata.size - 4 >= 64
  require cd <= 4294967296
  require cd <= calldata.size
  require ('cd', 4).length <= 4294967296 and cd * ('cd', 4).length) + 36 <= calldata.size
  require cd <= 4294967296
  require cd <= calldata.size
  require ('cd', 36).length <= 4294967296 and cd * ('cd', 36).length) + 36 <= calldata.size
  if not stor3[caller]:
      revert with 0, 'unauthorized'
  if ('cd', 36).length != ('cd', 4).length:
      revert with 0, 'mismatched arrays'
  idx = 0
  while idx < ('cd', 4).length:
      require idx < ('cd', 36).length
      call addr(cd[((32 * idx) + cd) with:
         value cd[((32 * idx) + cdwei
           gas 2300 * is_zero(value) wei
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      mem[96] = addr(cd[((32 * idx) + cd)
      mem[128] = cd[((32 * idx) + cd[36] + 36)]
      log 0xf35d7b6a: addr(cd[((32 * idx) + cd
      idx = idx + 1
      continue 

def unknownfa558b71(): # not payable
  require calldata.size - 4 >= 96
  require cd <= 4294967296
  require cd <= calldata.size
  require ('cd', 36).length <= 4294967296 and cd * ('cd', 36).length) + 36 <= calldata.size
  require cd <= 4294967296
  require cd <= calldata.size
  require ('cd', 68).length <= 4294967296 and cd * ('cd', 68).length) + 36 <= calldata.size
  if not stor3[caller]:
      revert with 0, 'unauthorized'
  if ('cd', 68).length != ('cd', 36).length:
      revert with 0, 'mismatched arrays'
  idx = 0
  while idx < ('cd', 36).length:
      require idx < ('cd', 68).length
      mem[100] = addr(cd[((32 * idx) + cd)
      mem[132] = cd[((32 * idx) + cd[68] + 36)]
      require ext_code.size(addr(cd))
      call addr(cd).transfer(address to, uint256 tokens) with:
           gas gas_remaining wei
          args addr(cd[((32 * idx) + cd), cd[((32 * idx) + cd[68] + 36)]
      mem[96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >= 32
      if not ext_call.return_data[0]:
          revert with 0, 'transfer false'
      idx = idx + 1
      continue 

def unknown3cd18ca0(): # not payable
  require calldata.size - 4 >= 64
  require cd <= 4294967296
  require cd <= calldata.size
  require ('cd', 36).length <= 4294967296 and cd * ('cd', 36).length) + 36 <= calldata.size
  if not stor3[caller]:
      revert with 0, 'unauthorized'
  idx = 0
  while idx < ('cd', 36).length:
      require ext_code.size(addr(cd))
      static call addr(cd).balanceOf(address tokenOwner) with:
              gas gas_remaining wei
             args addr(cd[((32 * idx) + cd)
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >= 32
      mem[100] = addr(cd[((32 * idx) + cd)
      mem[132] = this.address
      mem[164] = ext_call.return_data[0]
      require ext_code.size(addr(cd))
      call addr(cd).transferFrom(address from, address to, uint256 tokens) with:
           gas gas_remaining wei
          args addr(cd[((32 * idx) + cd), this.address, ext_call.return_data[0]
      mem[96] = ext_call.return_data[0]
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >= 32
      if not ext_call.return_data[0]:
          revert with 0, 'transferFrom false'
      idx = idx + 1
      continue 

def unknowndfd1fb7a(addr _param1, array _param2): # not payable
  require calldata.size - 4 >= 64
  require _param2 <= 4294967296
  require _param2 + 36 <= calldata.size
  require _param2.length <= 4294967296 and _param2 + _param2.length + 36 <= calldata.size
  if not stor3[caller]:
      revert with 0, 'unauthorized'
  mem[96 len _param2.length] = _param2[all]
  call _param1 with:
       gas gas_remaining wei
      args _param2[all]
  if return_data.size:
      mem[ceil32(return_data.size) + ceil32(_param2.length) + 225] = return_data.size
      mem[ceil32(return_data.size) + ceil32(_param2.length) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], 0
      if not ext_call.success:
          if not return_data.size % 32:
              log 0xaba0bbd4: addr(_param1), 96, ceil32(_param2.length) + 128, _param2.length, _param2[all], 0, mem[ceil32(return_data.size) + _param2.length + 257 len return_data.size + ceil32(_param2.length) - _param2.length]
          else:
              mem[floor32(return_data.size) + ceil32(return_data.size) + ceil32(_param2.length) + 257] = mem[floor32(return_data.size) + ceil32(return_data.size) + ceil32(_param2.length) + -(return_data.size % 32) + 289 len return_data.size % 32]
              log 0xaba0bbd4: addr(_param1), 96, ceil32(_param2.length) + 128, _param2.length, _param2[all], 0, mem[ceil32(return_data.size) + _param2.length + 257 len floor32(return_data.size) + ceil32(_param2.length) + -_param2.length + 32]
      else:
          if not return_data.size % 32:
              log 0x18e614c0: addr(_param1), 96, ceil32(_param2.length) + 128, _param2.length, _param2[all], 0, mem[ceil32(return_data.size) + _param2.length + 257 len return_data.size + ceil32(_param2.length) - _param2.length]
          else:
              mem[floor32(return_data.size) + ceil32(return_data.size) + ceil32(_param2.length) + 257] = mem[floor32(return_data.size) + ceil32(return_data.size) + ceil32(_param2.length) + -(return_data.size % 32) + 289 len return_data.size % 32]
              log 0x18e614c0: addr(_param1), 96, ceil32(_param2.length) + 128, _param2.length, _param2[all], 0, mem[ceil32(return_data.size) + _param2.length + 257 len floor32(return_data.size) + ceil32(_param2.length) + -_param2.length + 32]
  else:
      mem[128] = 96
      mem[192] = _param2.length
      mem[224 len _param2.length] = _param2[all]
      mem[_param2.length + 224] = 0
      mem[160] = ceil32(_param2.length) + 128
      mem[ceil32(_param2.length) + 224] = _param1
      mem[ceil32(_param2.length) + 256 len ceil32(_param1)] = mem[128 len ceil32(_param1)]
      if not ext_call.success:
          if not _param1 % 32:
              log 0xaba0bbd4: addr(_param1), 96, ceil32(_param2.length) + 128, _param2.length, _param2[all], 0, mem[_param2.length + 256 len _param1 + ceil32(_param2.length) - _param2.length]
          else:
              mem[Mask(155, 5, _param1) + ceil32(_param2.length) + 256] = mem[Mask(155, 5, _param1) + ceil32(_param2.length) + -(_param1 % 32) + 288 len _param1 % 32]
              log 0xaba0bbd4: addr(_param1), 96, ceil32(_param2.length) + 128, _param2.length, _param2[all], 0, mem[_param2.length + 256 len Mask(155, 5, _param1) + ceil32(_param2.length) + -_param2.length + 32]
      else:
          if not _param1 % 32:
              log 0x18e614c0: addr(_param1), 96, ceil32(_param2.length) + 128, _param2.length, _param2[all], 0, mem[_param2.length + 256 len _param1 + ceil32(_param2.length) - _param2.length]
          else:
              mem[Mask(155, 5, _param1) + ceil32(_param2.length) + 256] = mem[Mask(155, 5, _param1) + ceil32(_param2.length) + -(_param1 % 32) + 288 len _param1 % 32]
              log 0x18e614c0: addr(_param1), 96, ceil32(_param2.length) + 128, _param2.length, _param2[all], 0, mem[_param2.length + 256 len Mask(155, 5, _param1) + ceil32(_param2.length) + -_param2.length + 32]


