# Palkeoramix decompiler. 

const unknown6a5b266d = 0x4946c0e9f43f4dee607b0ef1fa1c

def storage:
  stor0 is uint256 at storage 0
  stor1 is mapping of uint8 at storage 1
  stor2 is mapping of uint8 at storage 2
  stor3 is mapping of uint8 at storage 3
  stor4 is mapping of uint8 at storage 4
  stor5 is mapping of uint8 at storage 5
  stor6 is uint256 at storage 6

def unknowna6dd0c50(uint256 _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require _param1 == addr(_param1)
  return bool(stor1[_param1])

#
#  Regular functions
#

def _fallback() payable: # default function
  stop

def drainETH(): # not payable
  if not stor3[caller]:
      revert with 0, '2'
  call 0x0000f079e68bbcc79ab9600ace786b0a4db1c83c with:
     value eth.balance(this.address) wei
       gas gas_remaining wei

def unknowncdcab4a3(uint256 _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  if not stor3[caller]:
      revert with 0, '2'
  call 0x0000f079e68bbcc79ab9600ace786b0a4db1c83c with:
     value _param1 wei
       gas gas_remaining wei

def unknown55a61f40(uint256 _param1): # not payable
  require calldata.size - 4 >=ΓÇ▓ 32
  require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
  call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.mint(uint256 amount) with:
       gas gas_remaining wei
      args _param1
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def unknown178979ae(uint256 _param1, uint256 _param2, array _param3): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require _param1 == addr(_param1)
  require _param3 <= 18446744073709551615
  require _param3 + 35 <ΓÇ▓ calldata.size
  require _param3.length <= 18446744073709551615
  require ceil32(_param3.length) + 128 >= 96 and ceil32(_param3.length) + 128 <= 18446744073709551615
  require _param3 + _param3.length + 36 <= calldata.size
  mem[128 len _param3.length] = _param3[all]
  mem[_param3.length + 128] = 0
  if not stor2[caller]:
      revert with 0, '2'
  if not stor1[addr(_param1)]:
      revert with 0, '2'
  if stor0 == 2:
      revert with 0, '8'
  stor0 = 2
  if _param2 > eth.balance(this.address):
      revert with 0, '3'
  mem[ceil32(_param3.length) + 128 len ceil32(_param3.length)] = _param3[all], mem[_param3.length + 128 len ceil32(_param3.length) - _param3.length]
  if ceil32(_param3.length) > _param3.length:
      mem[_param3.length + ceil32(_param3.length) + 128] = 0
  call addr(_param1) with:
     funct Mask(32, -(8 * ceil32(_param3.length) + -_param3.length + 4) + 256, 0) >> -(8 * ceil32(_param3.length) + -_param3.length + 4) + 256
     value _param2 wei
       gas gas_remaining wei
      args mem[ceil32(_param3.length) + 132 len _param3.length - 4]
  if return_data.size:
      mem[ceil32(_param3.length) + 128] = return_data.size
      if not ext_call.success:
          log 0x335a31c9: Array(len=_param3.length, data=Mask(8 * ceil32(_param3.length), -(8 * ceil32(_param3.length)) + 256, _param3[all], mem[_param3.length + 128 len ceil32(_param3.length) - _param3.length]) << (8 * ceil32(_param3.length)) - 256, return_data.size, ext_call.return_data3.length) + 96, addr(_param1), _param2
  else:
      if not ext_call.success:
          mem[ceil32(_param3.length) + 128] = 64
          mem[ceil32(_param3.length) + 192] = _param3.length
          mem[ceil32(_param3.length) + 224 len ceil32(_param3.length)] = _param3[all], mem[_param3.length + 128 len ceil32(_param3.length) - _param3.length]
          if ceil32(_param3.length) > _param3.length:
              mem[_param3.length + ceil32(_param3.length) + 224] = 0
          mem[ceil32(_param3.length) + 160] = ceil32(_param3.length) + 96
          mem[(2 * ceil32(_param3.length)) + 224] = _param3.length
          log 0x335a31c9: Mask(8 * -ceil32(_param3.length) + _param3.length + 32, 0, 0), mem[_param3.length + 160 len (4 * ceil32(_param3.length)) + -_param3.length + 96], addr(_param1), _param2
  stor0 = 1

def isValidSignature(bytes32 _param1, bytes _param2): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require _param2 <= 18446744073709551615
  require _param2 + 35 <ΓÇ▓ calldata.size
  require _param2.length <= 18446744073709551615
  require ceil32(_param2.length) + 128 >= 96 and ceil32(_param2.length) + 128 <= 18446744073709551615
  require _param2 + _param2.length + 36 <= calldata.size
  mem[128 len _param2.length] = _param2[all]
  mem[_param2.length + 128] = 0
  require 0 < _param2.length
  if 87 == _param2.length:
      _6 = mem[129]
      _7 = mem[161]
      _8 = mem[181]
      if uint16(mem[213]) >> 240 >= 10000:
          revert with 0, 'FEE_FACTOR_MORE_THEN_10000'
      mem[ceil32(_param2.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a353400000000
      mem[ceil32(_param2.length) + 188] = _param1
      mem[ceil32(_param2.length) + 220] = addr(_8)
      mem[ceil32(_param2.length) + 240] = 0
      mem[ceil32(_param2.length) + 128] = 82
      signer = erecover(sha3(mem[ceil32(_param2.length) + 160 len Mask(8 * -ceil32(_param2.length) + _param2.length + 32, 0, 0), mem[_param2.length + 160 len -_param2.length + ceil32(_param2.length)]]), 0, _6, _7) # precompiled
  else:
      if _param2.length != 88:
          _15 = mem[129]
          _16 = mem[161]
          mem[ceil32(_param2.length) + 160] = 'x19Ethereum Signed Message:
32'
          mem[ceil32(_param2.length) + 188] = _param1
          mem[ceil32(_param2.length) + 128] = 60
          signer = erecover(sha3(mem[ceil32(_param2.length) + 160 len Mask(8 * -ceil32(_param2.length) + _param2.length + 32, 0, 0), mem[_param2.length + 160 len -_param2.length + ceil32(_param2.length)]]), 0, _15, _16) # precompiled
      else:
          _19 = mem[129]
          _20 = mem[161]
          _21 = mem[181]
          if uint16(mem[213]) >> 240 >= 10000:
              revert with 0, 'FEE_FACTOR_MORE_THEN_10000'
          mem[ceil32(_param2.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a353400000000
          mem[ceil32(_param2.length) + 188] = _param1
          mem[ceil32(_param2.length) + 220] = addr(_21)
          mem[ceil32(_param2.length) + 240] = 0
          mem[ceil32(_param2.length) + 128] = 82
          signer = erecover(sha3(mem[ceil32(_param2.length) + 160 len Mask(8 * -ceil32(_param2.length) + _param2.length + 32, 0, 0), mem[_param2.length + 160 len -_param2.length + ceil32(_param2.length)]]), 0, _19, _20) # precompiled
  if not erecover.result:
      revert with ext_call.return_data[0 len return_data.size]
  if not stor5[addr(signer)]:
      revert with 0, '2'
  return 0xb067138131d606f18b51e6ee32605a2acac5aad86d6a80011ed9cb2bab20c1c7

def unknown847a771a(uint256 _param1, uint256 _param2, array _param3): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require _param1 == addr(_param1)
  require _param3 <= 18446744073709551615
  require _param3 + 35 <ΓÇ▓ calldata.size
  require _param3.length <= 18446744073709551615
  require ceil32(_param3.length) + 128 >= 96 and ceil32(_param3.length) + 128 <= 18446744073709551615
  require _param3 + _param3.length + 36 <= calldata.size
  mem[128 len _param3.length] = _param3[all]
  mem[_param3.length + 128] = 0
  if not stor2[caller]:
      revert with 0, '2'
  if not stor1[addr(_param1)]:
      revert with 0, '2'
  if stor0 == 2:
      revert with 0, '8'
  stor0 = 2
  if _param2 > eth.balance(this.address):
      revert with 0, '3'
  mem[ceil32(_param3.length) + 128 len ceil32(_param3.length)] = _param3[all], mem[_param3.length + 128 len ceil32(_param3.length) - _param3.length]
  if ceil32(_param3.length) > _param3.length:
      mem[_param3.length + ceil32(_param3.length) + 128] = 0
  call addr(_param1) with:
     funct Mask(32, -(8 * ceil32(_param3.length) + -_param3.length + 4) + 256, 0) >> -(8 * ceil32(_param3.length) + -_param3.length + 4) + 256
     value _param2 wei
       gas gas_remaining wei
      args mem[ceil32(_param3.length) + 132 len _param3.length - 4]
  if return_data.size:
      mem[ceil32(_param3.length) + 128] = return_data.size
      if not ext_call.success:
          log 0x335a31c9: Array(len=_param3.length, data=Mask(8 * ceil32(_param3.length), -(8 * ceil32(_param3.length)) + 256, _param3[all], mem[_param3.length + 128 len ceil32(_param3.length) - _param3.length]) << (8 * ceil32(_param3.length)) - 256, return_data.size, ext_call.return_data3.length) + 96, addr(_param1), _param2
  else:
      if not ext_call.success:
          mem[ceil32(_param3.length) + 128] = 64
          mem[ceil32(_param3.length) + 192] = _param3.length
          mem[ceil32(_param3.length) + 224 len ceil32(_param3.length)] = _param3[all], mem[_param3.length + 128 len ceil32(_param3.length) - _param3.length]
          if ceil32(_param3.length) > _param3.length:
              mem[_param3.length + ceil32(_param3.length) + 224] = 0
          mem[ceil32(_param3.length) + 160] = ceil32(_param3.length) + 96
          mem[(2 * ceil32(_param3.length)) + 224] = _param3.length
          log 0x335a31c9: Mask(8 * -ceil32(_param3.length) + _param3.length + 32, 0, 0), mem[_param3.length + 160 len (4 * ceil32(_param3.length)) + -_param3.length + 96], addr(_param1), _param2
  stor0 = 1
  require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
  call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 value) with:
       gas gas_remaining wei
      args ((16 * calldata.size) + 35154 / 41947)
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32

def unknownc36f210b(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= 18446744073709551615
  mem[96] = ('cd', 4).length
  require calldata.size >= cd * ('cd', 4).length) + 36
  idx = 0
  s = cd[4] + 36
  t = 128
  while idx < ('cd', 4).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= 18446744073709551615
  mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
  require calldata.size >= cd * ('cd', 36).length) + 36
  idx = 0
  s = cd[36] + 36
  t = (32 * ('cd', 4).length) + 160
  while idx < ('cd', 36).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 68).length <= 18446744073709551615
  require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= 18446744073709551615
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
  require calldata.size >= cd * ('cd', 68).length) + 36
  idx = 0
  s = cd[68] + 36
  t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
  while idx < ('cd', 68).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  if ('cd', 4).length != ('cd', 36).length:
      revert with 0, '1'
  if ('cd', 36).length != ('cd', 68).length:
      revert with 0, '1'
  idx = 0
  while idx < ('cd', 4).length:
      require idx < ('cd', 4).length
      if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[(32 * idx) + 140 len 20]):
          revert with 0, '7'
      if not ext_code.hash(mem[(32 * idx) + 140 len 20]):
          revert with 0, '7'
      idx = idx + 1
      continue 
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = stor6
  idx = 0
  s = 128
  t = mem[64] + 64
  while idx < ('cd', 4).length:
      mem[t] = mem[s + 12 len 20]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  _135 = mem[(32 * ('cd', 4).length) + 128]
  idx = 0
  s = (32 * ('cd', 4).length) + 160
  t = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256
  while idx < mem[(32 * ('cd', 4).length) + 128]:
      mem[t] = mem[s + 12 len 20]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  _145 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _135) + 256 len 32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]]
  _153 = mem[64]
  mem[mem[64]] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _135) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]) + -mem[64] + 224
  mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _135) + (32 * _145) + 256
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _135) + (32 * _145) + 256] = sha3(mem[_153 + 32 len mem[_153]])
  return memory
    from (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _135) + (32 * _145) + 256
     len 32

def unknown48d5c7e3(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 64
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= 18446744073709551615
  mem[96] = ('cd', 4).length
  require cd * ('cd', 4).length) + 36 <= calldata.size
  s = cd[4] + 36
  t = 128
  idx = 0
  while idx < ('cd', 4).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      s = s + 32
      t = t + 32
      idx = idx + 1
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= 18446744073709551615
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
  mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
  require calldata.size >= cd * ('cd', 36).length) + 36
  idx = 0
  s = cd[36] + 36
  t = (32 * ('cd', 4).length) + 160
  while idx < ('cd', 36).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  mem[0] = caller
  mem[32] = 3
  if not stor3[caller]:
      revert with 0, '2'
  if ('cd', 4).length != ('cd', 36).length:
      revert with 0, '1'
  idx = 0
  while idx < ('cd', 4).length:
      require idx < mem[(32 * ('cd', 4).length) + 128]
      _237 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
      require idx < mem[96]
      _239 = mem[(32 * idx) + 128]
      _240 = mem[64]
      mem[mem[64] + 36] = 0xf079e68bbcc79ab9600ace786b0a4db1c83c
      mem[mem[64] + 68] = _237
      _241 = mem[64]
      mem[mem[64]] = 68
      mem[64] = mem[64] + 100
      mem[_241 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_241 + 36 len 28]
      mem[64] = _240 + 164
      mem[_240 + 100] = 32
      mem[_240 + 132] = 'SafeERC20: low-level call failed'
      if eth.balance(this.address) < 0:
          revert with 0, 'Address: insufficient balance for call'
      if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(addr(_239)):
          revert with 0, 'Address: call to non-contract'
      if not ext_code.hash(addr(_239)):
          revert with 0, 'Address: call to non-contract'
      _250 = mem[_241]
      s = 0
      while s < _250:
          mem[s + _240 + 164] = mem[s + _241 + 32]
          s = s + 32
          continue 
      if ceil32(_250) > _250:
          mem[_250 + _240 + 164] = 0
      call addr(_239).mem[_240 + 164 len 4] with:
           gas gas_remaining wei
          args mem[_240 + 168 len _250 - 4]
      if not return_data.size:
          if not ext_call.success:
              if mem[96]:
                  revert with memory
                    from 128
                     len mem[96]
              mem[_240 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
              mem[_240 + 168] = 32
              idx = 0
              while idx < 32:
                  mem[idx + _240 + 232] = mem[idx + _240 + 132]
                  idx = idx + 32
                  continue 
              revert with 0, 32, 32, mem[_240 + 232]
          if mem[96]:
              require mem[96] >=ΓÇ▓ 32
              require mem[128] == bool(mem[128])
              if not mem[128]:
                  revert with 0, 'SafeERC20: ERC20 operation did not succeed'
      else:
          mem[64] = _240 + ceil32(return_data.size) + 165
          mem[_240 + 164] = return_data.size
          mem[_240 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
          if not ext_call.success:
              if return_data.size:
                  revert with ext_call.return_data[0 len return_data.size]
              mem[_240 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
              mem[_240 + ceil32(return_data.size) + 169] = 32
              idx = 0
              while idx < 32:
                  mem[idx + _240 + ceil32(return_data.size) + 233] = mem[idx + _240 + 132]
                  idx = idx + 32
                  continue 
              revert with 0, 32, 32, mem[_240 + ceil32(return_data.size) + 233]
          if return_data.size:
              require return_data.size >=ΓÇ▓ 32
              require mem[_240 + 196] == bool(mem[_240 + 196])
              if not mem[_240 + 196]:
                  revert with 0, 'SafeERC20: ERC20 operation did not succeed'
      idx = idx + 1
      continue 

def unknown29411510(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= 18446744073709551615
  mem[96] = ('cd', 4).length
  require calldata.size >= cd * ('cd', 4).length) + 36
  idx = 0
  s = cd[4] + 36
  t = 128
  while idx < ('cd', 4).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= 18446744073709551615
  mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
  require calldata.size >= cd * ('cd', 36).length) + 36
  idx = 0
  s = cd[36] + 36
  t = (32 * ('cd', 4).length) + 160
  while idx < ('cd', 36).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require calldata.size >ΓÇ▓ cd[68] + 35
  require ('cd', 68).length <= 18446744073709551615
  require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= 18446744073709551615
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
  idx = 0
  s = cd[68] + 36
  t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
  while idx < ('cd', 68).length:
      require cds] + 67 <ΓÇ▓ calldata.size
      require cd[(cds] + 36)] <= 18446744073709551615
      _250 = mem[64]
      require mem[64] + ceil32(cd[(cds] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cds] + 36)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cds] + 36)]) + 32
      mem[_250] = cd[(cds] + 36)]
      require cds] + cd[(cds] + 36)] + 68 <= calldata.size
      mem[_250 + 32 len cd[(cds] + 36)]] = call.data[cds] + 68 len cd[(cds] + 36)]]
      mem[_250 + cd[(cds] + 36)] + 32] = 0
      mem[t] = _250
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  mem[0] = caller
  mem[32] = 2
  if not stor2[caller]:
      revert with 0, '2'
  s = 0
  while ('cd', 68).length < mem[96]:
      require ('cd', 68).length < mem[96]
      mem[0] = mem[(32 * ('cd', 68).length) + 140 len 20]
      mem[32] = 1
      if not stor1[mem[(32 * ('cd', 68).length) + 140 len 20]]:
          revert with 0, '2'
      s = ('cd', 68).length + 1
      continue 
  if stor0 == 2:
      revert with 0, '8'
  stor0 = 2
  if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
      revert with 0, '1'
  if mem[(32 * ('cd', 4).length) + 128] != mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
      revert with 0, '1'
  _403 = mem[96]
  idx = 0
  while idx < _403:
      require idx < mem[96]
      _405 = mem[(32 * idx) + 128]
      require idx < mem[(32 * ('cd', 4).length) + 128]
      _407 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
      _409 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
      if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] > eth.balance(this.address):
          revert with 0, '3'
      _410 = mem[64]
      _412 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
      s = 0
      while s < _412:
          mem[s + _410] = mem[s + _409 + 32]
          _403 = mem[96]
          s = s + 32
          continue 
      if ceil32(_412) <= _412:
          call addr(_405).mem[mem[64] len 4] with:
             value _407 wei
               gas gas_remaining wei
              args mem[mem[64] + 4 len _412 + _410 + -mem[64] - 4]
          if not return_data.size:
              if not ext_call.success:
                  _468 = mem[64]
                  mem[mem[64]] = 64
                  _472 = mem[_409]
                  mem[mem[64] + 64] = mem[_409]
                  s = 0
                  while s < _472:
                      mem[s + mem[64] + 96] = mem[s + _409 + 32]
                      _403 = mem[96]
                      s = s + 32
                      continue 
                  if ceil32(_472) <= _472:
                      mem[_468 + 32] = ceil32(_472) + 96
                      _516 = mem[96]
                      mem[ceil32(_472) + _468 + 96] = mem[96]
                      s = 0
                      while s < _516:
                          mem[s + ceil32(_472) + _468 + 128] = mem[s + 128]
                          _403 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_516) > _516:
                          mem[_516 + ceil32(_472) + _468 + 128] = 0
                      log 0x335a31c9: mem[memem
                  else:
                      mem[_472 + _468 + 96] = 0
                      mem[_468 + 32] = ceil32(_472) + 96
                      _517 = mem[96]
                      mem[ceil32(_472) + _468 + 96] = mem[96]
                      s = 0
                      while s < _517:
                          mem[s + ceil32(_472) + _468 + 128] = mem[s + 128]
                          _403 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_517) > _517:
                          mem[_517 + ceil32(_472) + _468 + 128] = 0
                      log 0x335a31c9: mem[memem
          else:
              _466 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_466] = return_data.size
              mem[_466 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  _469 = mem[64]
                  mem[mem[64]] = 64
                  _473 = mem[_409]
                  mem[mem[64] + 64] = mem[_409]
                  s = 0
                  while s < _473:
                      mem[s + mem[64] + 96] = mem[s + _409 + 32]
                      _403 = mem[96]
                      s = s + 32
                      continue 
                  if ceil32(_473) <= _473:
                      mem[_469 + 32] = ceil32(_473) + 96
                      _518 = mem[_466]
                      mem[ceil32(_473) + _469 + 96] = mem[_466]
                      s = 0
                      while s < _518:
                          mem[s + ceil32(_473) + _469 + 128] = mem[s + _466 + 32]
                          _403 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_518) > _518:
                          mem[_518 + ceil32(_473) + _469 + 128] = 0
                      log 0x335a31c9: mem[memem
                  else:
                      mem[_473 + _469 + 96] = 0
                      mem[_469 + 32] = ceil32(_473) + 96
                      _519 = mem[_466]
                      mem[ceil32(_473) + _469 + 96] = mem[_466]
                      s = 0
                      while s < _519:
                          mem[s + ceil32(_473) + _469 + 128] = mem[s + _466 + 32]
                          _403 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_519) > _519:
                          mem[_519 + ceil32(_473) + _469 + 128] = 0
                      log 0x335a31c9: mem[memem
      else:
          mem[_412 + _410] = 0
          call addr(_405).mem[mem[64] len 4] with:
             value _407 wei
               gas gas_remaining wei
              args mem[mem[64] + 4 len _412 + _410 + -mem[64] - 4]
          if not return_data.size:
              if not ext_call.success:
                  _470 = mem[64]
                  mem[mem[64]] = 64
                  _474 = mem[_409]
                  mem[mem[64] + 64] = mem[_409]
                  s = 0
                  while s < _474:
                      mem[s + mem[64] + 96] = mem[s + _409 + 32]
                      _403 = mem[96]
                      s = s + 32
                      continue 
                  if ceil32(_474) <= _474:
                      mem[_470 + 32] = ceil32(_474) + 96
                      _520 = mem[96]
                      mem[ceil32(_474) + _470 + 96] = mem[96]
                      s = 0
                      while s < _520:
                          mem[s + ceil32(_474) + _470 + 128] = mem[s + 128]
                          _403 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_520) > _520:
                          mem[_520 + ceil32(_474) + _470 + 128] = 0
                      log 0x335a31c9: mem[memem
                  else:
                      mem[_474 + _470 + 96] = 0
                      mem[_470 + 32] = ceil32(_474) + 96
                      _521 = mem[96]
                      mem[ceil32(_474) + _470 + 96] = mem[96]
                      s = 0
                      while s < _521:
                          mem[s + ceil32(_474) + _470 + 128] = mem[s + 128]
                          _403 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_521) > _521:
                          mem[_521 + ceil32(_474) + _470 + 128] = 0
                      log 0x335a31c9: mem[memem
          else:
              _467 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_467] = return_data.size
              mem[_467 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  _471 = mem[64]
                  mem[mem[64]] = 64
                  _475 = mem[_409]
                  mem[mem[64] + 64] = mem[_409]
                  s = 0
                  while s < _475:
                      mem[s + mem[64] + 96] = mem[s + _409 + 32]
                      _403 = mem[96]
                      s = s + 32
                      continue 
                  if ceil32(_475) <= _475:
                      mem[_471 + 32] = ceil32(_475) + 96
                      _522 = mem[_467]
                      mem[ceil32(_475) + _471 + 96] = mem[_467]
                      s = 0
                      while s < _522:
                          mem[s + ceil32(_475) + _471 + 128] = mem[s + _467 + 32]
                          _403 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_522) > _522:
                          mem[_522 + ceil32(_475) + _471 + 128] = 0
                      log 0x335a31c9: mem[memem
                  else:
                      mem[_475 + _471 + 96] = 0
                      mem[_471 + 32] = ceil32(_475) + 96
                      _523 = mem[_467]
                      mem[ceil32(_475) + _471 + 96] = mem[_467]
                      s = 0
                      while s < _523:
                          mem[s + ceil32(_475) + _471 + 128] = mem[s + _467 + 32]
                          _403 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_523) > _523:
                          mem[_523 + ceil32(_475) + _471 + 128] = 0
                      log 0x335a31c9: mem[memem
      _403 = mem[96]
      idx = idx + 1
      continue 
  stor0 = 1

def unknown729df14c(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= 18446744073709551615
  mem[96] = ('cd', 4).length
  require calldata.size >= cd * ('cd', 4).length) + 36
  idx = 0
  s = cd[4] + 36
  t = 128
  while idx < ('cd', 4).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= 18446744073709551615
  mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
  require calldata.size >= cd * ('cd', 36).length) + 36
  idx = 0
  s = cd[36] + 36
  t = (32 * ('cd', 4).length) + 160
  while idx < ('cd', 36).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require calldata.size >ΓÇ▓ cd[68] + 35
  require ('cd', 68).length <= 18446744073709551615
  require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= 18446744073709551615
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
  idx = 0
  s = cd[68] + 36
  t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
  while idx < ('cd', 68).length:
      require cds] + 67 <ΓÇ▓ calldata.size
      require cd[(cds] + 36)] <= 18446744073709551615
      _346 = mem[64]
      require mem[64] + ceil32(cd[(cds] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cds] + 36)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cds] + 36)]) + 32
      mem[_346] = cd[(cds] + 36)]
      require cds] + cd[(cds] + 36)] + 68 <= calldata.size
      mem[_346 + 32 len cd[(cds] + 36)]] = call.data[cds] + 68 len cd[(cds] + 36)]]
      mem[_346 + cd[(cds] + 36)] + 32] = 0
      mem[t] = _346
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  mem[0] = caller
  mem[32] = 2
  if not stor2[caller]:
      revert with 0, '2'
  s = 0
  while ('cd', 68).length < mem[96]:
      require ('cd', 68).length < mem[96]
      mem[0] = mem[(32 * ('cd', 68).length) + 140 len 20]
      mem[32] = 1
      if not stor1[mem[(32 * ('cd', 68).length) + 140 len 20]]:
          revert with 0, '2'
      s = ('cd', 68).length + 1
      continue 
  if stor0 == 2:
      revert with 0, '8'
  stor0 = 2
  if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
      revert with 0, '1'
  if mem[(32 * ('cd', 4).length) + 128] != mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
      revert with 0, '1'
  _563 = mem[96]
  idx = 0
  while idx < _563:
      require idx < mem[96]
      _565 = mem[(32 * idx) + 128]
      require idx < mem[(32 * ('cd', 4).length) + 128]
      _567 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
      _569 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
      if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] > eth.balance(this.address):
          revert with 0, '3'
      _570 = mem[64]
      _572 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
      s = 0
      while s < _572:
          mem[s + _570] = mem[s + _569 + 32]
          _563 = mem[96]
          s = s + 32
          continue 
      if ceil32(_572) <= _572:
          call addr(_565).mem[mem[64] len 4] with:
             value _567 wei
               gas gas_remaining wei
              args mem[mem[64] + 4 len _572 + _570 + -mem[64] - 4]
          if not return_data.size:
              if ext_call.success:
                  _563 = mem[96]
                  idx = idx + 1
                  continue 
              _660 = mem[64]
              mem[mem[64]] = 64
              _664 = mem[_569]
              mem[mem[64] + 64] = mem[_569]
              idx = 0
              while idx < _664:
                  mem[idx + mem[64] + 96] = mem[idx + _569 + 32]
                  _563 = mem[96]
                  idx = idx + 32
                  continue 
              if ceil32(_664) <= _664:
                  mem[_660 + 32] = ceil32(_664) + 96
                  _740 = mem[96]
                  mem[ceil32(_664) + _660 + 96] = mem[96]
                  idx = 0
                  while idx < _740:
                      mem[idx + ceil32(_664) + _660 + 128] = mem[idx + 128]
                      _563 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_740) > _740:
                      mem[_740 + ceil32(_664) + _660 + 128] = 0
                  log 0x335a31c9: mem[memem
              else:
                  mem[_664 + _660 + 96] = 0
                  mem[_660 + 32] = ceil32(_664) + 96
                  _741 = mem[96]
                  mem[ceil32(_664) + _660 + 96] = mem[96]
                  idx = 0
                  while idx < _741:
                      mem[idx + ceil32(_664) + _660 + 128] = mem[idx + 128]
                      _563 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_741) > _741:
                      mem[_741 + ceil32(_664) + _660 + 128] = 0
                  log 0x335a31c9: mem[memem
          else:
              _658 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_658] = return_data.size
              mem[_658 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if ext_call.success:
                  _563 = mem[96]
                  idx = idx + 1
                  continue 
              _661 = mem[64]
              mem[mem[64]] = 64
              _665 = mem[_569]
              mem[mem[64] + 64] = mem[_569]
              idx = 0
              while idx < _665:
                  mem[idx + mem[64] + 96] = mem[idx + _569 + 32]
                  _563 = mem[96]
                  idx = idx + 32
                  continue 
              if ceil32(_665) <= _665:
                  mem[_661 + 32] = ceil32(_665) + 96
                  _742 = mem[_658]
                  mem[ceil32(_665) + _661 + 96] = mem[_658]
                  idx = 0
                  while idx < _742:
                      mem[idx + ceil32(_665) + _661 + 128] = mem[idx + _658 + 32]
                      _563 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_742) > _742:
                      mem[_742 + ceil32(_665) + _661 + 128] = 0
                  log 0x335a31c9: mem[memem
              else:
                  mem[_665 + _661 + 96] = 0
                  mem[_661 + 32] = ceil32(_665) + 96
                  _743 = mem[_658]
                  mem[ceil32(_665) + _661 + 96] = mem[_658]
                  idx = 0
                  while idx < _743:
                      mem[idx + ceil32(_665) + _661 + 128] = mem[idx + _658 + 32]
                      _563 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_743) > _743:
                      mem[_743 + ceil32(_665) + _661 + 128] = 0
                  log 0x335a31c9: mem[memem
      else:
          mem[_572 + _570] = 0
          call addr(_565).mem[mem[64] len 4] with:
             value _567 wei
               gas gas_remaining wei
              args mem[mem[64] + 4 len _572 + _570 + -mem[64] - 4]
          if not return_data.size:
              if ext_call.success:
                  _563 = mem[96]
                  idx = idx + 1
                  continue 
              _662 = mem[64]
              mem[mem[64]] = 64
              _666 = mem[_569]
              mem[mem[64] + 64] = mem[_569]
              idx = 0
              while idx < _666:
                  mem[idx + mem[64] + 96] = mem[idx + _569 + 32]
                  _563 = mem[96]
                  idx = idx + 32
                  continue 
              if ceil32(_666) <= _666:
                  mem[_662 + 32] = ceil32(_666) + 96
                  _744 = mem[96]
                  mem[ceil32(_666) + _662 + 96] = mem[96]
                  idx = 0
                  while idx < _744:
                      mem[idx + ceil32(_666) + _662 + 128] = mem[idx + 128]
                      _563 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_744) > _744:
                      mem[_744 + ceil32(_666) + _662 + 128] = 0
                  log 0x335a31c9: mem[memem
              else:
                  mem[_666 + _662 + 96] = 0
                  mem[_662 + 32] = ceil32(_666) + 96
                  _745 = mem[96]
                  mem[ceil32(_666) + _662 + 96] = mem[96]
                  idx = 0
                  while idx < _745:
                      mem[idx + ceil32(_666) + _662 + 128] = mem[idx + 128]
                      _563 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_745) > _745:
                      mem[_745 + ceil32(_666) + _662 + 128] = 0
                  log 0x335a31c9: mem[memem
          else:
              _659 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_659] = return_data.size
              mem[_659 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if ext_call.success:
                  _563 = mem[96]
                  idx = idx + 1
                  continue 
              _663 = mem[64]
              mem[mem[64]] = 64
              _667 = mem[_569]
              mem[mem[64] + 64] = mem[_569]
              idx = 0
              while idx < _667:
                  mem[idx + mem[64] + 96] = mem[idx + _569 + 32]
                  _563 = mem[96]
                  idx = idx + 32
                  continue 
              if ceil32(_667) <= _667:
                  mem[_663 + 32] = ceil32(_667) + 96
                  _746 = mem[_659]
                  mem[ceil32(_667) + _663 + 96] = mem[_659]
                  idx = 0
                  while idx < _746:
                      mem[idx + ceil32(_667) + _663 + 128] = mem[idx + _659 + 32]
                      _563 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_746) > _746:
                      mem[_746 + ceil32(_667) + _663 + 128] = 0
                  log 0x335a31c9: mem[memem
              else:
                  mem[_667 + _663 + 96] = 0
                  mem[_663 + 32] = ceil32(_667) + 96
                  _747 = mem[_659]
                  mem[ceil32(_667) + _663 + 96] = mem[_659]
                  idx = 0
                  while idx < _747:
                      mem[idx + ceil32(_667) + _663 + 128] = mem[idx + _659 + 32]
                      _563 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_747) > _747:
                      mem[_747 + ceil32(_667) + _663 + 128] = 0
                  log 0x335a31c9: mem[memem
      revert with 0, 'TRADE_FAILED'
  stor0 = 1

def unknowndff69b6c(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= 18446744073709551615
  mem[96] = ('cd', 4).length
  require calldata.size >= cd * ('cd', 4).length) + 36
  idx = 0
  s = cd[4] + 36
  t = 128
  while idx < ('cd', 4).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= 18446744073709551615
  mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
  require calldata.size >= cd * ('cd', 36).length) + 36
  idx = 0
  s = cd[36] + 36
  t = (32 * ('cd', 4).length) + 160
  while idx < ('cd', 36).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require calldata.size >ΓÇ▓ cd[68] + 35
  require ('cd', 68).length <= 18446744073709551615
  require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= 18446744073709551615
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
  idx = 0
  s = cd[68] + 36
  t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
  while idx < ('cd', 68).length:
      require cds] + 67 <ΓÇ▓ calldata.size
      require cd[(cds] + 36)] <= 18446744073709551615
      _261 = mem[64]
      require mem[64] + ceil32(cd[(cds] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cds] + 36)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cds] + 36)]) + 32
      mem[_261] = cd[(cds] + 36)]
      require cds] + cd[(cds] + 36)] + 68 <= calldata.size
      mem[_261 + 32 len cd[(cds] + 36)]] = call.data[cds] + 68 len cd[(cds] + 36)]]
      mem[_261 + cd[(cds] + 36)] + 32] = 0
      mem[t] = _261
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  mem[0] = caller
  mem[32] = 2
  if not stor2[caller]:
      revert with 0, '2'
  idx = 0
  while idx < mem[96]:
      require idx < mem[96]
      mem[0] = mem[(32 * idx) + 140 len 20]
      mem[32] = 1
      if not stor1[mem[(32 * idx) + 140 len 20]]:
          revert with 0, '2'
      idx = idx + 1
      continue 
  if stor0 == 2:
      revert with 0, '8'
  stor0 = 2
  if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
      revert with 0, '1'
  if mem[(32 * ('cd', 4).length) + 128] != mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
      revert with 0, '1'
  _423 = mem[96]
  idx = 0
  while idx < _423:
      require idx < mem[96]
      _425 = mem[(32 * idx) + 128]
      require idx < mem[(32 * ('cd', 4).length) + 128]
      _428 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
      _430 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
      if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] > eth.balance(this.address):
          revert with 0, '3'
      _432 = mem[64]
      _435 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
      s = 0
      while s < _435:
          mem[s + _432] = mem[s + _430 + 32]
          _423 = mem[96]
          s = s + 32
          continue 
      if ceil32(_435) <= _435:
          call addr(_425).mem[mem[64] len 4] with:
             value _428 wei
               gas gas_remaining wei
              args mem[mem[64] + 4 len _435 + _432 + -mem[64] - 4]
          if not return_data.size:
              if not ext_call.success:
                  _492 = mem[64]
                  mem[mem[64]] = 64
                  _496 = mem[_430]
                  mem[mem[64] + 64] = mem[_430]
                  s = 0
                  while s < _496:
                      mem[s + mem[64] + 96] = mem[s + _430 + 32]
                      _423 = mem[96]
                      s = s + 32
                      continue 
                  if ceil32(_496) <= _496:
                      mem[_492 + 32] = ceil32(_496) + 96
                      _540 = mem[96]
                      mem[ceil32(_496) + _492 + 96] = mem[96]
                      s = 0
                      while s < _540:
                          mem[s + ceil32(_496) + _492 + 128] = mem[s + 128]
                          _423 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_540) > _540:
                          mem[_540 + ceil32(_496) + _492 + 128] = 0
                      log 0x335a31c9: mem[memem
                  else:
                      mem[_496 + _492 + 96] = 0
                      mem[_492 + 32] = ceil32(_496) + 96
                      _541 = mem[96]
                      mem[ceil32(_496) + _492 + 96] = mem[96]
                      s = 0
                      while s < _541:
                          mem[s + ceil32(_496) + _492 + 128] = mem[s + 128]
                          _423 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_541) > _541:
                          mem[_541 + ceil32(_496) + _492 + 128] = 0
                      log 0x335a31c9: mem[memem
          else:
              _490 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_490] = return_data.size
              mem[_490 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  _493 = mem[64]
                  mem[mem[64]] = 64
                  _497 = mem[_430]
                  mem[mem[64] + 64] = mem[_430]
                  s = 0
                  while s < _497:
                      mem[s + mem[64] + 96] = mem[s + _430 + 32]
                      _423 = mem[96]
                      s = s + 32
                      continue 
                  if ceil32(_497) <= _497:
                      mem[_493 + 32] = ceil32(_497) + 96
                      _542 = mem[_490]
                      mem[ceil32(_497) + _493 + 96] = mem[_490]
                      s = 0
                      while s < _542:
                          mem[s + ceil32(_497) + _493 + 128] = mem[s + _490 + 32]
                          _423 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_542) > _542:
                          mem[_542 + ceil32(_497) + _493 + 128] = 0
                      log 0x335a31c9: mem[memem
                  else:
                      mem[_497 + _493 + 96] = 0
                      mem[_493 + 32] = ceil32(_497) + 96
                      _543 = mem[_490]
                      mem[ceil32(_497) + _493 + 96] = mem[_490]
                      s = 0
                      while s < _543:
                          mem[s + ceil32(_497) + _493 + 128] = mem[s + _490 + 32]
                          _423 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_543) > _543:
                          mem[_543 + ceil32(_497) + _493 + 128] = 0
                      log 0x335a31c9: mem[memem
      else:
          mem[_435 + _432] = 0
          call addr(_425).mem[mem[64] len 4] with:
             value _428 wei
               gas gas_remaining wei
              args mem[mem[64] + 4 len _435 + _432 + -mem[64] - 4]
          if not return_data.size:
              if not ext_call.success:
                  _494 = mem[64]
                  mem[mem[64]] = 64
                  _498 = mem[_430]
                  mem[mem[64] + 64] = mem[_430]
                  s = 0
                  while s < _498:
                      mem[s + mem[64] + 96] = mem[s + _430 + 32]
                      _423 = mem[96]
                      s = s + 32
                      continue 
                  if ceil32(_498) <= _498:
                      mem[_494 + 32] = ceil32(_498) + 96
                      _544 = mem[96]
                      mem[ceil32(_498) + _494 + 96] = mem[96]
                      s = 0
                      while s < _544:
                          mem[s + ceil32(_498) + _494 + 128] = mem[s + 128]
                          _423 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_544) > _544:
                          mem[_544 + ceil32(_498) + _494 + 128] = 0
                      log 0x335a31c9: mem[memem
                  else:
                      mem[_498 + _494 + 96] = 0
                      mem[_494 + 32] = ceil32(_498) + 96
                      _545 = mem[96]
                      mem[ceil32(_498) + _494 + 96] = mem[96]
                      s = 0
                      while s < _545:
                          mem[s + ceil32(_498) + _494 + 128] = mem[s + 128]
                          _423 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_545) > _545:
                          mem[_545 + ceil32(_498) + _494 + 128] = 0
                      log 0x335a31c9: mem[memem
          else:
              _491 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_491] = return_data.size
              mem[_491 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  _495 = mem[64]
                  mem[mem[64]] = 64
                  _499 = mem[_430]
                  mem[mem[64] + 64] = mem[_430]
                  s = 0
                  while s < _499:
                      mem[s + mem[64] + 96] = mem[s + _430 + 32]
                      _423 = mem[96]
                      s = s + 32
                      continue 
                  if ceil32(_499) <= _499:
                      mem[_495 + 32] = ceil32(_499) + 96
                      _546 = mem[_491]
                      mem[ceil32(_499) + _495 + 96] = mem[_491]
                      s = 0
                      while s < _546:
                          mem[s + ceil32(_499) + _495 + 128] = mem[s + _491 + 32]
                          _423 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_546) > _546:
                          mem[_546 + ceil32(_499) + _495 + 128] = 0
                      log 0x335a31c9: mem[memem
                  else:
                      mem[_499 + _495 + 96] = 0
                      mem[_495 + 32] = ceil32(_499) + 96
                      _547 = mem[_491]
                      mem[ceil32(_499) + _495 + 96] = mem[_491]
                      s = 0
                      while s < _547:
                          mem[s + ceil32(_499) + _495 + 128] = mem[s + _491 + 32]
                          _423 = mem[96]
                          s = s + 32
                          continue 
                      if ceil32(_547) > _547:
                          mem[_547 + ceil32(_499) + _495 + 128] = 0
                      log 0x335a31c9: mem[memem
      _423 = mem[96]
      idx = idx + 1
      continue 
  stor0 = 1
  require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
  call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 value) with:
       gas gas_remaining wei
      args ((16 * calldata.size) + 35154 / 41947)
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32

def unknownc217d070(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 96
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= 18446744073709551615
  mem[96] = ('cd', 4).length
  require calldata.size >= cd * ('cd', 4).length) + 36
  idx = 0
  s = cd[4] + 36
  t = 128
  while idx < ('cd', 4).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= 18446744073709551615
  mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
  require calldata.size >= cd * ('cd', 36).length) + 36
  idx = 0
  s = cd[36] + 36
  t = (32 * ('cd', 4).length) + 160
  while idx < ('cd', 36).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require calldata.size >ΓÇ▓ cd[68] + 35
  require ('cd', 68).length <= 18446744073709551615
  require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= 18446744073709551615
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
  idx = 0
  s = cd[68] + 36
  t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
  while idx < ('cd', 68).length:
      require cds] + 67 <ΓÇ▓ calldata.size
      require cd[(cds] + 36)] <= 18446744073709551615
      _357 = mem[64]
      require mem[64] + ceil32(cd[(cds] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cds] + 36)]) + 32 <= 18446744073709551615
      mem[64] = mem[64] + ceil32(cd[(cds] + 36)]) + 32
      mem[_357] = cd[(cds] + 36)]
      require cds] + cd[(cds] + 36)] + 68 <= calldata.size
      mem[_357 + 32 len cd[(cds] + 36)]] = call.data[cds] + 68 len cd[(cds] + 36)]]
      mem[_357 + cd[(cds] + 36)] + 32] = 0
      mem[t] = _357
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  mem[0] = caller
  mem[32] = 2
  if not stor2[caller]:
      revert with 0, '2'
  idx = 0
  while idx < mem[96]:
      require idx < mem[96]
      mem[0] = mem[(32 * idx) + 140 len 20]
      mem[32] = 1
      if not stor1[mem[(32 * idx) + 140 len 20]]:
          revert with 0, '2'
      idx = idx + 1
      continue 
  if stor0 == 2:
      revert with 0, '8'
  stor0 = 2
  if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
      revert with 0, '1'
  if mem[(32 * ('cd', 4).length) + 128] != mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
      revert with 0, '1'
  _583 = mem[96]
  idx = 0
  while idx < _583:
      require idx < mem[96]
      _585 = mem[(32 * idx) + 128]
      require idx < mem[(32 * ('cd', 4).length) + 128]
      _588 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
      _590 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
      if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] > eth.balance(this.address):
          revert with 0, '3'
      _592 = mem[64]
      _595 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
      s = 0
      while s < _595:
          mem[s + _592] = mem[s + _590 + 32]
          _583 = mem[96]
          s = s + 32
          continue 
      if ceil32(_595) <= _595:
          call addr(_585).mem[mem[64] len 4] with:
             value _588 wei
               gas gas_remaining wei
              args mem[mem[64] + 4 len _595 + _592 + -mem[64] - 4]
          if not return_data.size:
              if ext_call.success:
                  _583 = mem[96]
                  idx = idx + 1
                  continue 
              _684 = mem[64]
              mem[mem[64]] = 64
              _688 = mem[_590]
              mem[mem[64] + 64] = mem[_590]
              idx = 0
              while idx < _688:
                  mem[idx + mem[64] + 96] = mem[idx + _590 + 32]
                  _583 = mem[96]
                  idx = idx + 32
                  continue 
              if ceil32(_688) <= _688:
                  mem[_684 + 32] = ceil32(_688) + 96
                  _764 = mem[96]
                  mem[ceil32(_688) + _684 + 96] = mem[96]
                  idx = 0
                  while idx < _764:
                      mem[idx + ceil32(_688) + _684 + 128] = mem[idx + 128]
                      _583 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_764) > _764:
                      mem[_764 + ceil32(_688) + _684 + 128] = 0
                  log 0x335a31c9: mem[memem
              else:
                  mem[_688 + _684 + 96] = 0
                  mem[_684 + 32] = ceil32(_688) + 96
                  _765 = mem[96]
                  mem[ceil32(_688) + _684 + 96] = mem[96]
                  idx = 0
                  while idx < _765:
                      mem[idx + ceil32(_688) + _684 + 128] = mem[idx + 128]
                      _583 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_765) > _765:
                      mem[_765 + ceil32(_688) + _684 + 128] = 0
                  log 0x335a31c9: mem[memem
          else:
              _682 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_682] = return_data.size
              mem[_682 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if ext_call.success:
                  _583 = mem[96]
                  idx = idx + 1
                  continue 
              _685 = mem[64]
              mem[mem[64]] = 64
              _689 = mem[_590]
              mem[mem[64] + 64] = mem[_590]
              idx = 0
              while idx < _689:
                  mem[idx + mem[64] + 96] = mem[idx + _590 + 32]
                  _583 = mem[96]
                  idx = idx + 32
                  continue 
              if ceil32(_689) <= _689:
                  mem[_685 + 32] = ceil32(_689) + 96
                  _766 = mem[_682]
                  mem[ceil32(_689) + _685 + 96] = mem[_682]
                  idx = 0
                  while idx < _766:
                      mem[idx + ceil32(_689) + _685 + 128] = mem[idx + _682 + 32]
                      _583 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_766) > _766:
                      mem[_766 + ceil32(_689) + _685 + 128] = 0
                  log 0x335a31c9: mem[memem
              else:
                  mem[_689 + _685 + 96] = 0
                  mem[_685 + 32] = ceil32(_689) + 96
                  _767 = mem[_682]
                  mem[ceil32(_689) + _685 + 96] = mem[_682]
                  idx = 0
                  while idx < _767:
                      mem[idx + ceil32(_689) + _685 + 128] = mem[idx + _682 + 32]
                      _583 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_767) > _767:
                      mem[_767 + ceil32(_689) + _685 + 128] = 0
                  log 0x335a31c9: mem[memem
      else:
          mem[_595 + _592] = 0
          call addr(_585).mem[mem[64] len 4] with:
             value _588 wei
               gas gas_remaining wei
              args mem[mem[64] + 4 len _595 + _592 + -mem[64] - 4]
          if not return_data.size:
              if ext_call.success:
                  _583 = mem[96]
                  idx = idx + 1
                  continue 
              _686 = mem[64]
              mem[mem[64]] = 64
              _690 = mem[_590]
              mem[mem[64] + 64] = mem[_590]
              idx = 0
              while idx < _690:
                  mem[idx + mem[64] + 96] = mem[idx + _590 + 32]
                  _583 = mem[96]
                  idx = idx + 32
                  continue 
              if ceil32(_690) <= _690:
                  mem[_686 + 32] = ceil32(_690) + 96
                  _768 = mem[96]
                  mem[ceil32(_690) + _686 + 96] = mem[96]
                  idx = 0
                  while idx < _768:
                      mem[idx + ceil32(_690) + _686 + 128] = mem[idx + 128]
                      _583 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_768) > _768:
                      mem[_768 + ceil32(_690) + _686 + 128] = 0
                  log 0x335a31c9: mem[memem
              else:
                  mem[_690 + _686 + 96] = 0
                  mem[_686 + 32] = ceil32(_690) + 96
                  _769 = mem[96]
                  mem[ceil32(_690) + _686 + 96] = mem[96]
                  idx = 0
                  while idx < _769:
                      mem[idx + ceil32(_690) + _686 + 128] = mem[idx + 128]
                      _583 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_769) > _769:
                      mem[_769 + ceil32(_690) + _686 + 128] = 0
                  log 0x335a31c9: mem[memem
          else:
              _683 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_683] = return_data.size
              mem[_683 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if ext_call.success:
                  _583 = mem[96]
                  idx = idx + 1
                  continue 
              _687 = mem[64]
              mem[mem[64]] = 64
              _691 = mem[_590]
              mem[mem[64] + 64] = mem[_590]
              idx = 0
              while idx < _691:
                  mem[idx + mem[64] + 96] = mem[idx + _590 + 32]
                  _583 = mem[96]
                  idx = idx + 32
                  continue 
              if ceil32(_691) <= _691:
                  mem[_687 + 32] = ceil32(_691) + 96
                  _770 = mem[_683]
                  mem[ceil32(_691) + _687 + 96] = mem[_683]
                  idx = 0
                  while idx < _770:
                      mem[idx + ceil32(_691) + _687 + 128] = mem[idx + _683 + 32]
                      _583 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_770) > _770:
                      mem[_770 + ceil32(_691) + _687 + 128] = 0
                  log 0x335a31c9: mem[memem
              else:
                  mem[_691 + _687 + 96] = 0
                  mem[_687 + 32] = ceil32(_691) + 96
                  _771 = mem[_683]
                  mem[ceil32(_691) + _687 + 96] = mem[_683]
                  idx = 0
                  while idx < _771:
                      mem[idx + ceil32(_691) + _687 + 128] = mem[idx + _683 + 32]
                      _583 = mem[96]
                      idx = idx + 32
                      continue 
                  if ceil32(_771) > _771:
                      mem[_771 + ceil32(_691) + _687 + 128] = 0
                  log 0x335a31c9: mem[memem
      revert with 0, 'TRADE_FAILED'
  stor0 = 1
  require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
  call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 value) with:
       gas gas_remaining wei
      args ((16 * calldata.size) + 35154 / 41947)
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32

def unknownad0b5105(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 288
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= 18446744073709551615
  mem[96] = ('cd', 4).length
  require calldata.size >= cd * ('cd', 4).length) + 36
  idx = 0
  s = cd[4] + 36
  t = 128
  while idx < ('cd', 4).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= 18446744073709551615
  mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
  require calldata.size >= cd * ('cd', 36).length) + 36
  idx = 0
  s = cd[36] + 36
  t = (32 * ('cd', 4).length) + 160
  while idx < ('cd', 36).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 68).length <= 18446744073709551615
  require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= 18446744073709551615
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
  require calldata.size >= cd * ('cd', 68).length) + 36
  idx = 0
  s = cd[68] + 36
  t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
  while idx < ('cd', 68).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd == uint8(cd)
  require cd == uint8(cd)
  if ('cd', 4).length != ('cd', 36).length:
      revert with 0, '1'
  if ('cd', 36).length != ('cd', 68).length:
      revert with 0, '1'
  idx = 0
  while idx < ('cd', 4).length:
      require idx < ('cd', 4).length
      if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[(32 * idx) + 140 len 20]):
          revert with 0, '7'
      if not ext_code.hash(mem[(32 * idx) + 140 len 20]):
          revert with 0, '7'
      idx = idx + 1
      continue 
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = stor6
  idx = 0
  s = 128
  t = mem[64] + 64
  while idx < mem[96]:
      mem[t] = mem[s + 12 len 20]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  _1675 = mem[(32 * ('cd', 4).length) + 128]
  idx = 0
  s = (32 * ('cd', 4).length) + 160
  t = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256
  while idx < mem[(32 * ('cd', 4).length) + 128]:
      mem[t] = mem[s + 12 len 20]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  _1993 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + 256 len 32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]]
  _2309 = mem[64]
  mem[mem[64]] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]) + -mem[64] + 224
  mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * _1993) + 256
  _2311 = sha3(mem[_2309 + 32 len mem[_2309]])
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * _1993) + 288] = 0x1900000000000000000000000000000000000000000000000000000000000000
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * _1993) + 289] = 0
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * _1993) + 290] = addr(this.address)
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * _1993) + 310] = _2311
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * _1993) + 256] = 54
  signer = erecover(sha3(0, 0, this.address, _2311), cd << 248, cd# precompiled
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * _1993) + 342] = signer
  if not erecover.result:
      revert with ext_call.return_data[0 len return_data.size]
  mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * _1993) + 406
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * _1993) + 406] = sha3(0, 0, this.address, _2311)
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * _1993) + 438] = uint8(cd)
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * _1993) + 470] = cd[228]
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * _1993) + 502] = cd[260]
  signer = erecover(sha3(0, 0, this.address, _2311), cd << 248, cd# precompiled
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1675) + (32 * _1993) + 374] = signer
  if addr(signer) == addr(signer):
      revert with 0, '4'
  if not stor4[addr(signer)]:
      revert with 0, '5'
  mem[0] = addr(signer)
  mem[32] = 4
  if not stor4[addr(signer)]:
      revert with 0, '6'
  stor6++
  _2622 = mem[96]
  idx = 0
  while idx < _2622:
      require idx < mem[(32 * ('cd', 4).length) + 128]
      _2624 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
      require idx < mem[96]
      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
      _2628 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
      _2629 = mem[64]
      mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
      mem[mem[64] + 68] = _2628
      _2630 = mem[64]
      mem[mem[64]] = 68
      mem[64] = mem[64] + 100
      mem[_2630 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_2630 + 36 len 28]
      mem[64] = _2629 + 164
      mem[_2629 + 100] = 32
      mem[_2629 + 132] = 'SafeERC20: low-level call failed'
      if eth.balance(this.address) < 0:
          revert with 0, 'Address: insufficient balance for call'
      if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(addr(_2624)):
          revert with 0, 'Address: call to non-contract'
      if not ext_code.hash(addr(_2624)):
          revert with 0, 'Address: call to non-contract'
      _2639 = mem[_2630]
      s = 0
      while s < _2639:
          mem[s + _2629 + 164] = mem[s + _2630 + 32]
          _2622 = mem[96]
          s = s + 32
          continue 
      if ceil32(_2639) <= _2639:
          call addr(_2624).mem[_2629 + 164 len 4] with:
               gas gas_remaining wei
              args mem[_2629 + 168 len _2639 - 4]
          if not return_data.size:
              if not ext_call.success:
                  if mem[96]:
                      revert with memory
                        from 128
                         len mem[96]
                  mem[_2629 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                  mem[_2629 + 168] = 32
                  idx = 0
                  while idx < 32:
                      mem[idx + _2629 + 232] = mem[idx + _2629 + 132]
                      _2622 = mem[96]
                      idx = idx + 32
                      continue 
                  revert with 0, 32, 32, mem[_2629 + 232]
              if not mem[96]:
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _2951 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _2959 = mem[(32 * idx) + 128]
                  mem[_2629 + 168] = this.address
                  mem[_2629 + 200] = addr(_2959)
                  require ext_code.size(addr(_2624))
                  static call addr(_2624).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_2959)
                  mem[_2629 + 164] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2629 + ceil32(return_data.size) + 164
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _2951:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
              else:
                  require mem[96] >=ΓÇ▓ 32
                  require mem[128] == bool(mem[128])
                  if not mem[128]:
                      revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _2992 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _3003 = mem[(32 * idx) + 128]
                  mem[_2629 + 168] = this.address
                  mem[_2629 + 200] = addr(_3003)
                  require ext_code.size(addr(_2624))
                  static call addr(_2624).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_3003)
                  mem[_2629 + 164] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2629 + ceil32(return_data.size) + 164
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _2992:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
          else:
              mem[_2629 + 164] = return_data.size
              mem[_2629 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  if return_data.size:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[_2629 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                  mem[_2629 + ceil32(return_data.size) + 169] = 32
                  idx = 0
                  while idx < 32:
                      mem[idx + _2629 + ceil32(return_data.size) + 233] = mem[idx + _2629 + 132]
                      _2622 = mem[96]
                      idx = idx + 32
                      continue 
                  revert with 0, 32, 32, mem[_2629 + ceil32(return_data.size) + 233]
              if not return_data.size:
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _2953 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _2961 = mem[(32 * idx) + 128]
                  mem[_2629 + ceil32(return_data.size) + 169] = this.address
                  mem[_2629 + ceil32(return_data.size) + 201] = addr(_2961)
                  require ext_code.size(addr(_2624))
                  static call addr(_2624).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_2961)
                  mem[_2629 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2629 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _2953:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
              else:
                  require return_data.size >=ΓÇ▓ 32
                  require mem[_2629 + 196] == bool(mem[_2629 + 196])
                  if not mem[_2629 + 196]:
                      revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _2995 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _3005 = mem[(32 * idx) + 128]
                  mem[_2629 + ceil32(return_data.size) + 169] = this.address
                  mem[_2629 + ceil32(return_data.size) + 201] = addr(_3005)
                  require ext_code.size(addr(_2624))
                  static call addr(_2624).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_3005)
                  mem[_2629 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2629 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _2995:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
      else:
          mem[_2639 + _2629 + 164] = 0
          call addr(_2624).mem[_2629 + 164 len 4] with:
               gas gas_remaining wei
              args mem[_2629 + 168 len _2639 - 4]
          if not return_data.size:
              if not ext_call.success:
                  if mem[96]:
                      revert with memory
                        from 128
                         len mem[96]
                  mem[_2629 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                  mem[_2629 + 168] = 32
                  idx = 0
                  while idx < 32:
                      mem[idx + _2629 + 232] = mem[idx + _2629 + 132]
                      _2622 = mem[96]
                      idx = idx + 32
                      continue 
                  revert with 0, 32, 32, mem[_2629 + 232]
              if not mem[96]:
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _2955 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _2963 = mem[(32 * idx) + 128]
                  mem[_2629 + 168] = this.address
                  mem[_2629 + 200] = addr(_2963)
                  require ext_code.size(addr(_2624))
                  static call addr(_2624).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_2963)
                  mem[_2629 + 164] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2629 + ceil32(return_data.size) + 164
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _2955:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
              else:
                  require mem[96] >=ΓÇ▓ 32
                  require mem[128] == bool(mem[128])
                  if not mem[128]:
                      revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _2998 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _3007 = mem[(32 * idx) + 128]
                  mem[_2629 + 168] = this.address
                  mem[_2629 + 200] = addr(_3007)
                  require ext_code.size(addr(_2624))
                  static call addr(_2624).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_3007)
                  mem[_2629 + 164] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2629 + ceil32(return_data.size) + 164
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _2998:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
          else:
              mem[_2629 + 164] = return_data.size
              mem[_2629 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  if return_data.size:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[_2629 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                  mem[_2629 + ceil32(return_data.size) + 169] = 32
                  idx = 0
                  while idx < 32:
                      mem[idx + _2629 + ceil32(return_data.size) + 233] = mem[idx + _2629 + 132]
                      _2622 = mem[96]
                      idx = idx + 32
                      continue 
                  revert with 0, 32, 32, mem[_2629 + ceil32(return_data.size) + 233]
              if not return_data.size:
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _2957 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _2965 = mem[(32 * idx) + 128]
                  mem[_2629 + ceil32(return_data.size) + 169] = this.address
                  mem[_2629 + ceil32(return_data.size) + 201] = addr(_2965)
                  require ext_code.size(addr(_2624))
                  static call addr(_2624).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_2965)
                  mem[_2629 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2629 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _2957:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
              else:
                  require return_data.size >=ΓÇ▓ 32
                  require mem[_2629 + 196] == bool(mem[_2629 + 196])
                  if not mem[_2629 + 196]:
                      revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _3001 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _3009 = mem[(32 * idx) + 128]
                  mem[_2629 + ceil32(return_data.size) + 169] = this.address
                  mem[_2629 + ceil32(return_data.size) + 201] = addr(_3009)
                  require ext_code.size(addr(_2624))
                  static call addr(_2624).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_3009)
                  mem[_2629 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2629 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _3001:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
      _2622 = mem[96]
      idx = idx + 1
      continue 

def unknown3e004d44(): # not payable
  require calldata.size - 4 >=ΓÇ▓ 288
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= 18446744073709551615
  mem[96] = ('cd', 4).length
  require calldata.size >= cd * ('cd', 4).length) + 36
  idx = 0
  s = cd[4] + 36
  t = 128
  while idx < ('cd', 4).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 36).length <= 18446744073709551615
  require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= 18446744073709551615
  mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
  require calldata.size >= cd * ('cd', 36).length) + 36
  idx = 0
  s = cd[36] + 36
  t = (32 * ('cd', 4).length) + 160
  while idx < ('cd', 36).length:
      require cd[s] == addr(cd[s])
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 68).length <= 18446744073709551615
  require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= 18446744073709551615
  mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
  require calldata.size >= cd * ('cd', 68).length) + 36
  idx = 0
  s = cd[68] + 36
  t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
  while idx < ('cd', 68).length:
      mem[t] = cd[s]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  require cd == uint8(cd)
  require cd == uint8(cd)
  if ('cd', 4).length != ('cd', 36).length:
      revert with 0, '1'
  if ('cd', 36).length != ('cd', 68).length:
      revert with 0, '1'
  idx = 0
  while idx < ('cd', 4).length:
      require idx < ('cd', 4).length
      if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(mem[(32 * idx) + 140 len 20]):
          revert with 0, '7'
      if not ext_code.hash(mem[(32 * idx) + 140 len 20]):
          revert with 0, '7'
      idx = idx + 1
      continue 
  mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = stor6
  idx = 0
  s = 128
  t = mem[64] + 64
  while idx < ('cd', 4).length:
      mem[t] = mem[s + 12 len 20]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  _1695 = mem[(32 * ('cd', 4).length) + 128]
  idx = 0
  s = (32 * ('cd', 4).length) + 160
  t = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256
  while idx < mem[(32 * ('cd', 4).length) + 128]:
      mem[t] = mem[s + 12 len 20]
      idx = idx + 1
      s = s + 32
      t = t + 32
      continue 
  _2017 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + 256 len 32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]]
  _2337 = mem[64]
  mem[mem[64]] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]) + -mem[64] + 224
  mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * _2017) + 256
  _2339 = sha3(mem[_2337 + 32 len mem[_2337]])
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * _2017) + 288] = 0x1900000000000000000000000000000000000000000000000000000000000000
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * _2017) + 289] = 0
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * _2017) + 290] = addr(this.address)
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * _2017) + 310] = _2339
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * _2017) + 256] = 54
  signer = erecover(sha3(0, 0, this.address, _2339), cd << 248, cd# precompiled
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * _2017) + 342] = signer
  if not erecover.result:
      revert with ext_call.return_data[0 len return_data.size]
  mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * _2017) + 406
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * _2017) + 406] = sha3(0, 0, this.address, _2339)
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * _2017) + 438] = uint8(cd)
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * _2017) + 470] = cd[228]
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * _2017) + 502] = cd[260]
  signer = erecover(sha3(0, 0, this.address, _2339), cd << 248, cd# precompiled
  mem[(64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * _1695) + (32 * _2017) + 374] = signer
  if addr(signer) == addr(signer):
      revert with 0, '4'
  if not stor4[addr(signer)]:
      revert with 0, '5'
  mem[0] = addr(signer)
  mem[32] = 4
  if not stor4[addr(signer)]:
      revert with 0, '6'
  stor6++
  _2654 = mem[96]
  idx = 0
  while idx < _2654:
      require idx < mem[(32 * ('cd', 4).length) + 128]
      _2656 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
      require idx < mem[96]
      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
      _2661 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
      _2663 = mem[64]
      mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
      mem[mem[64] + 68] = _2661
      _2665 = mem[64]
      mem[mem[64]] = 68
      mem[64] = mem[64] + 100
      mem[_2665 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_2665 + 36 len 28]
      mem[64] = _2663 + 164
      mem[_2663 + 100] = 32
      mem[_2663 + 132] = 'SafeERC20: low-level call failed'
      if eth.balance(this.address) < 0:
          revert with 0, 'Address: insufficient balance for call'
      if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(addr(_2656)):
          revert with 0, 'Address: call to non-contract'
      if not ext_code.hash(addr(_2656)):
          revert with 0, 'Address: call to non-contract'
      _2675 = mem[_2665]
      s = 0
      while s < _2675:
          mem[s + _2663 + 164] = mem[s + _2665 + 32]
          _2654 = mem[96]
          s = s + 32
          continue 
      if ceil32(_2675) <= _2675:
          call addr(_2656).mem[_2663 + 164 len 4] with:
               gas gas_remaining wei
              args mem[_2663 + 168 len _2675 - 4]
          if not return_data.size:
              if not ext_call.success:
                  if mem[96]:
                      revert with memory
                        from 128
                         len mem[96]
                  mem[_2663 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                  mem[_2663 + 168] = 32
                  idx = 0
                  while idx < 32:
                      mem[idx + _2663 + 232] = mem[idx + _2663 + 132]
                      _2654 = mem[96]
                      idx = idx + 32
                      continue 
                  revert with 0, 32, 32, mem[_2663 + 232]
              if not mem[96]:
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _2987 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _2995 = mem[(32 * idx) + 128]
                  mem[_2663 + 168] = this.address
                  mem[_2663 + 200] = addr(_2995)
                  require ext_code.size(addr(_2656))
                  static call addr(_2656).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_2995)
                  mem[_2663 + 164] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2663 + ceil32(return_data.size) + 164
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _2987:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
              else:
                  require mem[96] >=ΓÇ▓ 32
                  require mem[128] == bool(mem[128])
                  if not mem[128]:
                      revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _3028 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _3039 = mem[(32 * idx) + 128]
                  mem[_2663 + 168] = this.address
                  mem[_2663 + 200] = addr(_3039)
                  require ext_code.size(addr(_2656))
                  static call addr(_2656).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_3039)
                  mem[_2663 + 164] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2663 + ceil32(return_data.size) + 164
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _3028:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
          else:
              mem[_2663 + 164] = return_data.size
              mem[_2663 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  if return_data.size:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[_2663 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                  mem[_2663 + ceil32(return_data.size) + 169] = 32
                  idx = 0
                  while idx < 32:
                      mem[idx + _2663 + ceil32(return_data.size) + 233] = mem[idx + _2663 + 132]
                      _2654 = mem[96]
                      idx = idx + 32
                      continue 
                  revert with 0, 32, 32, mem[_2663 + ceil32(return_data.size) + 233]
              if not return_data.size:
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _2989 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _2997 = mem[(32 * idx) + 128]
                  mem[_2663 + ceil32(return_data.size) + 169] = this.address
                  mem[_2663 + ceil32(return_data.size) + 201] = addr(_2997)
                  require ext_code.size(addr(_2656))
                  static call addr(_2656).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_2997)
                  mem[_2663 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2663 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _2989:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
              else:
                  require return_data.size >=ΓÇ▓ 32
                  require mem[_2663 + 196] == bool(mem[_2663 + 196])
                  if not mem[_2663 + 196]:
                      revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _3031 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _3041 = mem[(32 * idx) + 128]
                  mem[_2663 + ceil32(return_data.size) + 169] = this.address
                  mem[_2663 + ceil32(return_data.size) + 201] = addr(_3041)
                  require ext_code.size(addr(_2656))
                  static call addr(_2656).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_3041)
                  mem[_2663 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2663 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _3031:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
      else:
          mem[_2675 + _2663 + 164] = 0
          call addr(_2656).mem[_2663 + 164 len 4] with:
               gas gas_remaining wei
              args mem[_2663 + 168 len _2675 - 4]
          if not return_data.size:
              if not ext_call.success:
                  if mem[96]:
                      revert with memory
                        from 128
                         len mem[96]
                  mem[_2663 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                  mem[_2663 + 168] = 32
                  idx = 0
                  while idx < 32:
                      mem[idx + _2663 + 232] = mem[idx + _2663 + 132]
                      _2654 = mem[96]
                      idx = idx + 32
                      continue 
                  revert with 0, 32, 32, mem[_2663 + 232]
              if not mem[96]:
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _2991 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _2999 = mem[(32 * idx) + 128]
                  mem[_2663 + 168] = this.address
                  mem[_2663 + 200] = addr(_2999)
                  require ext_code.size(addr(_2656))
                  static call addr(_2656).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_2999)
                  mem[_2663 + 164] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2663 + ceil32(return_data.size) + 164
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _2991:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
              else:
                  require mem[96] >=ΓÇ▓ 32
                  require mem[128] == bool(mem[128])
                  if not mem[128]:
                      revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _3034 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _3043 = mem[(32 * idx) + 128]
                  mem[_2663 + 168] = this.address
                  mem[_2663 + 200] = addr(_3043)
                  require ext_code.size(addr(_2656))
                  static call addr(_2656).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_3043)
                  mem[_2663 + 164] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2663 + ceil32(return_data.size) + 164
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _3034:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
          else:
              mem[_2663 + 164] = return_data.size
              mem[_2663 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if not ext_call.success:
                  if return_data.size:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[_2663 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                  mem[_2663 + ceil32(return_data.size) + 169] = 32
                  idx = 0
                  while idx < 32:
                      mem[idx + _2663 + ceil32(return_data.size) + 233] = mem[idx + _2663 + 132]
                      _2654 = mem[96]
                      idx = idx + 32
                      continue 
                  revert with 0, 32, 32, mem[_2663 + ceil32(return_data.size) + 233]
              if not return_data.size:
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _2993 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _3001 = mem[(32 * idx) + 128]
                  mem[_2663 + ceil32(return_data.size) + 169] = this.address
                  mem[_2663 + ceil32(return_data.size) + 201] = addr(_3001)
                  require ext_code.size(addr(_2656))
                  static call addr(_2656).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_3001)
                  mem[_2663 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2663 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _2993:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
              else:
                  require return_data.size >=ΓÇ▓ 32
                  require mem[_2663 + 196] == bool(mem[_2663 + 196])
                  if not mem[_2663 + 196]:
                      revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                  require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                  _3037 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                  require idx < mem[96]
                  _3045 = mem[(32 * idx) + 128]
                  mem[_2663 + ceil32(return_data.size) + 169] = this.address
                  mem[_2663 + ceil32(return_data.size) + 201] = addr(_3045)
                  require ext_code.size(addr(_2656))
                  static call addr(_2656).allowance(address tokenOwner, address spender) with:
                          gas gas_remaining wei
                         args addr(this.address), addr(_3045)
                  mem[_2663 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  mem[64] = _2663 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                  require return_data.size >=ΓÇ▓ 32
                  if ext_call.return_data <= _3037:
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      if mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
                          stor1[mem[(32 * idx) + 140 len 20]] = 1
                      else:
                          stor1[mem[(32 * idx) + 140 len 20]] = 0
                  else:
                      require idx < mem[96]
                      mem[0] = mem[(32 * idx) + 140 len 20]
                      mem[32] = 1
                      stor1[mem[(32 * idx) + 140 len 20]] = 0
                      require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                      require idx < mem[(32 * ('cd', 4).length) + 128]
                      require idx < mem[96]
                      log 0x8d0bc26c: mem[(32 * idx) + 140 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20], mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
      _2654 = mem[96]
      idx = idx + 1
      continue 
  require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
  call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 value) with:
       gas gas_remaining wei
      args ((16 * calldata.size) + 35154 / 41947)
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32


