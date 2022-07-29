# Palkeoramix decompiler. 
#
#  I failed with these: 
#  - getSummary()
#  All the rest is below.
#

def unknown0ab852e0(): # not payable
  return ('storage', 256, 0, 78003331675261510590211864598088005628646265635593721529705080064074854014)

def unknownbb0dc0d3(uint256 _param1): # not payable
  return ('storage', 256, 0, ('sha3', ('data', ('param', '_param1'), 51)))

def unknownca5dbdb8(uint256 _param1): # not payable
  return ('storage', 256, 0, ('sha3', ('data', ('param', '_param1'), 50)))

#
#  Regular functions
#

def unknown96ca14b1(): # not payable
  return ('storage', 256, 0, 49), ('storage', 64, 0, 4), ('storage', 24, 64, 4)

def unknownf8704355(): # not payable
  return ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 50))) >= 10^17

def unknown1aea6257(): # not payable
  if caller == ('storage', 160, 0, 0):
      return True
  return bool(('storage', 8, 0, ('sha3', ('data', ('sha3', 'caller'), 1))))

def transferOwnership(address _newOwner): # not payable
  require caller == ('storage', 160, 0, 0)
  addr(stor[0].field_0) = _newOwner

def unknown083e2eae(): # not payable
  require 0x573aaaa81154cd24e96f0cb97fd86110b8f6767f == caller
  uint256(stor[0x2c25f86051423b05d08cda5c25afdf8cf72a2c6bd527070caeb617b4a82e7e].field_0) = 0
  return ('storage', 256, 0, 78003331675261510590211864598088005628646265635593721529705080064074854014)

def setAdministrator(bytes32 _identifier, bool _status): # not payable
  if ('storage', 160, 0, 0) != caller:
      require ('storage', 8, 0, ('sha3', ('data', ('sha3', 'caller'), 1)))
  uint8(stor[sha3(_identifier, 1)].field_0) = uint8(_status)

def unknowncacfdb88(): # not payable
  if ('storage', 160, 0, 0) != caller:
      require ('storage', 8, 0, ('sha3', ('data', ('sha3', 'caller'), 1)))
  idx = 480
  s = 32
  while 864 > idx + 32:
      mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1)))
      idx = idx + 32
      s = s + 1
      continue 
  return ('storage', 256, 0, 32), mem[512 len 352]

def unknownd2c68ff1(): # not payable
  if ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 50))) >= 10^17:
      return 0
  require ext_code.size(0x4f5f88bbafbf1244f5d23cfec5e0b0f7601f2d01)
  call 0x4f5f88bbafbf1244f5d23cfec5e0b0f7601f2d01.0xca5dbdb8 with:
       gas gas_remaining wei
      args sha3(caller)
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >= 32
  if ext_call.return_data < 10^17:
      return 0
  return 1

def _fallback() payable: # default function
  require not ext_code.size(caller)
  require block.gasprice <= 3 * 10^10
  if call.value > 0:
      require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
      call 0x03cb0021808442ad5efb61197966aef72a1def96.deposit(address accountAddress) with:
         value call.value wei
           gas gas_remaining wei
          args caller
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
  if call.value >= 10^16:
      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknown29675f29(uint256 _param1, uint256 _param2) payable: 
  require not ext_code.size(caller)
  require _param2 < 12
  require block.gasprice <= 3 * 10^10
  if call.value > 0:
      require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
      call 0x03cb0021808442ad5efb61197966aef72a1def96.deposit(address accountAddress) with:
         value call.value wei
           gas gas_remaining wei
          args caller
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
  if _param1 + call.value >= 10^16:
      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def unknownbb8239dd(): # not payable
  if ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 50))) < 10^17:
      require ext_code.size(0x4f5f88bbafbf1244f5d23cfec5e0b0f7601f2d01)
      call 0x4f5f88bbafbf1244f5d23cfec5e0b0f7601f2d01.0xca5dbdb8 with:
           gas gas_remaining wei
          args sha3(caller)
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >= 32
      if ext_call.return_data >= 10^17:
          if ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 50))) + ext_call.return_data / 10^17 > ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 50))) / 10^17:
              if ('storage', 256, 0, 49) > 0:
                  require ext_code.size(0x573aaaa81154cd24e96f0cb97fd86110b8f6767f)
                  call 0x573aaaa81154cd24e96f0cb97fd86110b8f6767f.distribute(address payee, uint256 amt) with:
                       gas gas_remaining wei
                      args caller, (('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 50))) + ext_call.return_data / 10^17 * ('storage', 256, 0, 49)) - (('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 50))) / 10^17 * ('storage', 256, 0, 49))
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
              if not ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 50))) / 10^17:
                  require ext_code.size(0x573aaaa81154cd24e96f0cb97fd86110b8f6767f)
                  call 0x573aaaa81154cd24e96f0cb97fd86110b8f6767f.0xb9431a2a with:
                       gas gas_remaining wei
                      args caller
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
          uint256(stor[sha3(sha3(caller), 50)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 50))) + ext_call.return_data[0]

def unknown1c902304(uint256 _param1): # not payable
  if ('storage', 160, 0, 0) != caller:
      require ('storage', 8, 0, ('sha3', ('data', ('sha3', 'caller'), 1)))
  if _param1:
      if _param1 > 0:
          require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
          call 0x03cb0021808442ad5efb61197966aef72a1def96.deduct(address param1, uint256 param2) with:
               gas gas_remaining wei
              args 0x4f5f88bbafbf1244f5d23cfec5e0b0f7601f2d01, _param1
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >= 32
          if ext_call.return_data[0]:
              uint256(stor[0x2c25f86051423b05d08cda5c25afdf8cf72a2c6bd527070caeb617b4a82e7e].field_0) = _param1 + ('storage', 256, 0, 78003331675261510590211864598088005628646265635593721529705080064074854014)
  else:
      require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
      call 0x03cb0021808442ad5efb61197966aef72a1def96.balanceOf(address tokenOwner) with:
           gas gas_remaining wei
          args 0x4f5f88bbafbf1244f5d23cfec5e0b0f7601f2d01
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >= 32
      if ext_call.return_data > 0:
          require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
          call 0x03cb0021808442ad5efb61197966aef72a1def96.deduct(address param1, uint256 param2) with:
               gas gas_remaining wei
              args 0x4f5f88bbafbf1244f5d23cfec5e0b0f7601f2d01, ext_call.return_data[0]
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >= 32
          if ext_call.return_data[0]:
              uint256(stor[0x2c25f86051423b05d08cda5c25afdf8cf72a2c6bd527070caeb617b4a82e7e].field_0) = ext_call.return_data[0] + ('storage', 256, 0, 78003331675261510590211864598088005628646265635593721529705080064074854014)

def startGame(uint256 _number): # not payable
  if ('storage', 160, 0, 0) != caller:
      require ('storage', 8, 0, ('sha3', ('data', ('sha3', 'caller'), 1)))
  mem[1216] = ('storage', 8, 0, 5)
  idx = 1216
  s = 0
  while 1600 > idx + 32:
      mem[idx + 32] = ('storage', 8, ('mask_shl', 253, 0, 3, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))), 5)
      idx = idx + 32
      s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
      continue 
  uint64(stor[4].field_0) = uint64(_number)
  stor[4].field_64 % 16777216 = ('storage', 24, 0, 4)
  uint32(stor[4].field_88) = ('storage', 32, 0, 4)
  s = 0
  idx = 1216
  while 1600 > idx:
      uint256(stor[5].field_0) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and ('storage', 256, 0, 5)
      s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
      idx = idx + 32
      continue 
  idx = 12
  s = 5
  while idx:
      uint256(stor[s].field_0) = !(255 * 256^idx) and ('storage', 256, 0, ('var', 1))
      idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
      s = (idx + 1 / 32) + s
      continue 
  idx = (-10 * None + 3 / 32) + (None * None + 3 / 32) + 5
  while 6 > idx:
      uint8(stor[idx].field_0) = 0
      idx = idx + 1
      continue 

def unknown304f964a(uint256 _param1, uint32 _param2, uint256 _param3): # not payable
  if ('storage', 160, 0, 0) != caller:
      require ('storage', 8, 0, ('sha3', ('data', ('sha3', 'caller'), 1)))
  uint256(stor[49].field_0) = _param1
  mem[1216] = ('storage', 8, 0, 5)
  idx = 1216
  s = 0
  while 1600 > idx + 32:
      mem[idx + 32] = ('storage', 8, ('mask_shl', 253, 0, 3, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1)))), 5)
      idx = idx + 32
      s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
      continue 
  uint64(stor[4].field_0) = ('storage', 64, 0, 4)
  stor[4].field_64 % 16777216 = _param2 % 16777216
  uint32(stor[4].field_88) = ('storage', 32, 0, 4)
  s = 0
  idx = 1216
  while 1600 > idx:
      uint256(stor[5].field_0) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and ('storage', 256, 0, 5)
      s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
      idx = idx + 32
      continue 
  idx = 12
  s = 5
  while idx:
      uint256(stor[s].field_0) = !(255 * 256^idx) and ('storage', 256, 0, ('var', 1))
      idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
      s = (idx + 1 / 32) + s
      continue 
  idx = (-10 * None + 3 / 32) + (None * None + 3 / 32) + 5
  while 6 > idx:
      uint8(stor[idx].field_0) = 0
      idx = idx + 1
      continue 
  if _param3:
      uint256(stor[2].field_0) = _param3

def getGames(): # not payable
  mem[96 len 416] = code.data[16080 len 416]
  mem[512] = 0
  mem[544] = 0
  mem[576] = 0
  mem[608] = 0
  mem[64] = 832
  mem[736 len 96] = code.data[16080 len 96]
  mem[640] = 736
  s = 512
  s = 0
  idx = 0
  while idx < 12:
      _12 = mem[64]
      mem[64] = mem[64] + 160
      mem[_12] = ('storage', 32, 0, ('add', 8, ('mask_shl', 255, 0, 1, ('var', 0))))
      mem[_12 + 32] = ('storage', 16, 32, ('add', 8, ('mask_shl', 255, 0, 1, ('var', 0))))
      mem[_12 + 64] = ('storage', 48, 48, ('add', 8, ('mask_shl', 255, 0, 1, ('var', 0))))
      mem[_12 + 96] = ('storage', 16, 96, ('add', 8, ('mask_shl', 255, 0, 1, ('var', 0))))
      _13 = mem[64]
      mem[64] = mem[64] + 96
      mem[_13] = ('storage', 16, 0, ('add', 9, ('mask_shl', 255, 0, 1, ('var', 0))))
      s = _13
      t = 0
      while _13 + 96 > s + 32:
          mem[s + 32] = ('storage', 16, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 255, 0, 1, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 2))), 32), ('var', 2)))), ('add', 9, ('mask_shl', 255, 0, 1, ('var', 0))))
          s = s + 32
          t = (2 * -(t + 3 / 32) + 1) + t - (t + 3 / 32 * t)
          continue 
      mem[_12 + 128] = _13
      _21 = mem[_12]
      _22 = mem[_12 + 32]
      _23 = mem[_12 + 64]
      require idx < 13
      mem[(32 * idx) + 96] = (65536 * ((uint32(mem[_12]) << 16) + mem[_12 + 62 len 2] << 48) + mem[_12 + 90 len 6]) + mem[_12 + 126 len 2]
      s = _12
      s = 65536 * ((uint32(_21) << 16) + uint16(_22) << 48) + (_23 % 281474976710656)
      idx = idx + 1
      continue 
  mem[480] = (('storage', 32, 88, 4) << 48) + block.number
  mem[mem[64]] = mem[96]
  mem[mem[64] + 32 len 384] = mem[128 len 352], (('storage', 32, 88, 4) << 48) + block.number
  return memory
    from mem[64]
     len 416

def withdraw(address _recipient): # not payable
  require not ext_code.size(caller)
  if ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 51))) > 0:
      uint256(stor[sha3(sha3(caller), 51)].field_0) = 0
  if ('storage', 32, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'caller'), 7))) <= 0:
      if ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 51))) > 0:
          require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
          if _recipient:
              call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                   gas gas_remaining wei
                  args addr(_recipient), ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 51)))
          else:
              call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                   gas gas_remaining wei
                  args caller, ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 51)))
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
      else:
          if sha3(caller) == ('storage', 256, 0, 2):
              if ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 3), 51))):
                  uint256(stor[sha3(('storage', 256, 0, 3), 51)].field_0) = 0
                  require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
                  if _recipient:
                      call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                           gas gas_remaining wei
                          args addr(_recipient), ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 3), 51)))
                  else:
                      call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                           gas gas_remaining wei
                          args caller, ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 3), 51)))
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
  else:
      uint256(stor[sha3(caller, 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'caller'), 7))) - ('storage', 32, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'caller'), 7)))
      if (2 * 10^17 * ('storage', 32, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'caller'), 7)))) + ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 51))) > 0:
          require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
          if _recipient:
              call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                   gas gas_remaining wei
                  args addr(_recipient), (2 * 10^17 * ('storage', 32, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'caller'), 7)))) + ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 51)))
          else:
              call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                   gas gas_remaining wei
                  args caller, (2 * 10^17 * ('storage', 32, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'caller'), 7)))) + ('storage', 256, 0, ('sha3', ('data', ('sha3', 'caller'), 51)))
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
      else:
          if sha3(caller) == ('storage', 256, 0, 2):
              if ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 3), 51))):
                  uint256(stor[sha3(('storage', 256, 0, 3), 51)].field_0) = 0
                  require ext_code.size(0x3cb0021808442ad5efb61197966aef72a1def96)
                  if _recipient:
                      call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                           gas gas_remaining wei
                          args addr(_recipient), ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 3), 51)))
                  else:
                      call 0x03cb0021808442ad5efb61197966aef72a1def96.0xb43c4cf5 with:
                           gas gas_remaining wei
                          args caller, ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, 3), 51)))
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]

def unknown9933e215(): # not payable
  mem[96 len 768] = code.data[16080 len 768]
  mem[64] = 1248
  mem[864] = 0
  mem[896] = 0
  mem[928] = 0
  mem[960] = 0
  mem[992] = 0
  mem[1024] = 0
  mem[1056] = 0
  mem[1088] = 0
  mem[1120] = 0
  mem[1152] = 0
  mem[1184] = 0
  mem[1216] = 0
  s = 864
  idx = 0
  s = 0
  while idx < 24:
      mem[0] = idx + (32 * caller)
      mem[32] = 47
      _17 = mem[64]
      mem[64] = mem[64] + 384
      mem[_17] = ('storage', 32, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
      mem[_17 + 32] = ('storage', 64, 32, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
      mem[_17 + 64] = ('storage', 8, 96, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
      mem[_17 + 96] = ('storage', 8, 104, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
      mem[_17 + 128] = ('storage', 16, 112, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
      mem[_17 + 160] = ('storage', 8, 128, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
      mem[_17 + 192] = ('storage', 64, 136, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
      mem[_17 + 224] = ('storage', 8, 200, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
      mem[_17 + 256] = ('storage', 8, 208, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
      mem[_17 + 288] = ('storage', 16, 216, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
      mem[_17 + 320] = ('storage', 8, 232, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
      mem[_17 + 352] = ('storage', 8, 240, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
      require idx < 24
      if ('storage', 32, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47))):
          mem[(32 * idx) + 96] = (256 * (256 * (65536 * (256 * (256 * ((256 * (65536 * (256 * (256 * (('storage', 32, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47))) << 64) + ('storage', 64, 32, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 8, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 8, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 16, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 8, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47))) << 64) + ('storage', 64, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 8, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 8, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 16, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 8, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 8, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
          s = _17
          idx = idx + 1
          s = (256 * (65536 * (256 * (256 * ((256 * (65536 * (256 * (256 * (('storage', 32, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47))) << 64) + ('storage', 64, 32, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 8, 96, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 8, 104, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 16, 112, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 8, 128, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47))) << 64) + ('storage', 64, 136, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 8, 200, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 8, 208, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 16, 216, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))) + ('storage', 8, 232, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
          continue 
      mem[(32 * idx) + 96] = 0
      s = _17
      idx = idx + 1
      s = ('storage', 32, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 251, 0, 5, 'caller')), 47)))
      continue 
  mem[mem[64]] = mem[96]
  mem[mem[64] + 32 len 736] = mem[128 len 736]
  return memory
    from mem[64]
     len 768

def unknown5a12580d(uint256 _param1, uint256 _param2, uint256 _param3): # not payable
  mem[96 len 320] = code.data[16080 len 320]
  mem[416] = 0
  mem[448] = 0
  mem[480] = 0
  mem[512] = 0
  mem[640 len 96] = code.data[16080 len 96]
  mem[544] = 640
  mem[1024 len 96] = code.data[16080 len 96]
  mem[736] = 1024
  mem[1120 len 96] = code.data[16080 len 96]
  mem[768] = 1120
  mem[1216 len 96] = code.data[16080 len 96]
  mem[800] = 1216
  if _param1 <= 0:
      return code.data[16080 len 288], 0
  if _param1 > ('storage', 32, 88, 4):
      return code.data[16080 len 288], 0
  mem[0] = (256 * _param2) + _param3
  mem[32] = 45
  mem[1312] = ('storage', 32, 0, ('sha3', ('data', ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')), 45)))
  mem[1344] = ('storage', 16, 32, ('sha3', ('data', ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')), 45)))
  mem[1376] = ('storage', 48, 48, ('sha3', ('data', ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')), 45)))
  mem[1408] = ('storage', 16, 96, ('sha3', ('data', ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')), 45)))
  mem[64] = 1568
  mem[1472] = ('storage', 16, 0, ('add', 1, ('sha3', ('data', ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')), 45))))
  idx = 1472
  s = 0
  while 1568 > idx + 32:
      mem[idx + 32] = ('storage', 16, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 255, 0, 1, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 1))), 32), ('var', 1)))), ('add', 1, ('sha3', ('data', ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')), 45))))
      idx = idx + 32
      s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
      continue 
  mem[1440] = 1472
  if _param1 < ('storage', 32, 0, ('sha3', ('data', ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')), 45))):
      return code.data[16080 len 288], 0
  mem[384] = (65536 * (uint16(('storage', 16, 32, ('sha3', ('data', ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')), 45)))) << 48) + ('storage', 48, 0, ('sha3', ('data', ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')), 45)))) + ('storage', 16, 0, ('sha3', ('data', ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')), 45)))
  s = 0
  t = 0
  idx = 0
  t = 736
  t = _param1
  while idx < 3:
      mem[0] = idx + (4 * (256 * _param2) + _param3)
      mem[32] = 46
      _81 = mem[64]
      mem[64] = mem[64] + 192
      mem[_81 + 96] = ('storage', 160, 0, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 254, 0, 2, ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')))), 46)))
      u = _81 + 96
      v = sha3(idx + (4 * (256 * _param2) + _param3), 46)
      while _81 + 192 > u + 32:
          mem[u + 32] = ('storage', 160, 0, ('add', 1, ('var', 4)))
          u = u + 32
          v = v + 1
          continue 
      mem[_81] = _81 + 96
      _94 = mem[64]
      mem[64] = mem[64] + 96
      mem[_94] = ('storage', 16, 0, ('add', 3, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 254, 0, 2, ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')))), 46))))
      u = _94
      v = 0
      while _94 + 96 > u + 32:
          mem[u + 32] = ('storage', 16, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 255, 0, 1, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 4))), 32)))), ('var', 4), ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 4))), 32), ('var', 4)))), ('add', 3, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 254, 0, 2, ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')))), 46))))
          u = u + 32
          v = (2 * -(v + 3 / 32) + 1) + v - (v + 3 / 32 * v)
          continue 
      mem[_81 + 32] = _94
      _102 = mem[64]
      mem[64] = mem[64] + 96
      mem[_102] = ('storage', 16, 0, ('add', 4, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 254, 0, 2, ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')))), 46))))
      u = _102
      v = 0
      while _102 + 96 > u + 32:
          mem[u + 32] = ('storage', 16, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 255, 0, 1, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 4))), 32)))), ('var', 4), ('mul', -1, ('div', ('mask', 256, 0, ('add', 3, ('var', 4))), 32), ('var', 4)))), ('add', 4, ('sha3', ('data', ('add', ('var', 0), ('mask_shl', 254, 0, 2, ('add', ('mask_shl', 248, 0, 8, ('param', '_param2')), ('param', '_param3')))), 46))))
          u = u + 32
          v = (2 * -(v + 3 / 32) + 1) + v - (v + 3 / 32 * v)
          continue 
      mem[_81 + 64] = _102
      v = s
      u = 0
      w = t
      while u < 3:
          _116 = mem[(32 * u) + mem[_81]]
          _118 = mem[(32 * u) + mem[_81 + 32]]
          require v < 10
          mem[(32 * v) + 96] = (65536 * (addr(mem[(32 * u) + mem[_81]]) << 16) + mem[(32 * u) + mem[_81 + 32] + 30 len 2]) + mem[(32 * u) + mem[_81 + 64] + 30 len 2]
          v = v + 1
          u = u + 1
          w = (addr(_116) << 16) + uint16(_118)
          continue 
      s = s + 3
      t = 3
      idx = idx + 1
      t = _81
      t = t + (3 * addr(_116) << 16)
      continue 
  mem[mem[64] len 320] = mem[96 len 320]
  return memory
    from mem[64]
     len 320


