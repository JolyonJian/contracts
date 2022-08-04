# Palkeoramix decompiler. 
#
#  I failed with these: 
#  - getWinRecord(address _addr)
#  All the rest is below.
#

const name = 'PFeast'
const symbol = 'PFET'

def storage:
  owner is addr at storage 0
  stor1 is uint256 at storage 1
  stor2 is uint256 at storage 2
  stor3 is uint256 at storage 3
  stor4 is uint256 at storage 4
  stor5 is uint256 at storage 5
  recomB_ is array of uint256 at storage 6
  fixRetW1_ is array of uint256 at storage 8
  fixRetW2_ is array of uint256 at storage 9
  stor10 is array of uint256 at storage 10
  stor12 is uint256 at storage 12
  node_ is mapping of struct at storage 13
  stor14 is array of addr at storage 14
  gMin_ is uint256 at storage 18
  stor19 is uint256 at storage 19
  rndInit_ is uint256 at storage 20
  rndInc_ is uint256 at storage 21
  stor22 is uint256 at storage 22
  coutier_Address is addr at storage 23
  stor24 is addr at storage 24
  recommander is mapping of addr at storage 25
  recomCount is mapping of uint256 at storage 26
  stor27 is mapping of uint8 at storage 27
  decimal_ is uint256 at storage 28
  rID_ is uint256 at storage 29
  tdestroy_ is uint256 at storage 30
  stor31 is uint128 at storage 31 offset 160
  stor31 is addr at storage 31
  stor31 is uint256 at storage 31
  plyrRnds_ is mapping of struct at storage 32
  stor33 is mapping of uint256 at storage 33
  round_ is mapping of struct at storage 34
  stor35 is mapping of struct at storage 35
  r24ID_ is uint256 at storage 36
  stor37 is mapping of struct at storage 37
  stor38 is uint8 at storage 38
  stor20A3 is uint256 at storage 0x20a3e2dd35f58e582c5288344c035e137cace924bb9daf3762b8ef5a58327e26
  stor20A3 is uint256 at storage 0x20a3e2dd35f58e582c5288344c035e137cace924bb9daf3762b8ef5a58327e27
  storE39B is uint256 at storage 0xe39b43e4224876d80510ac9d8f190663bcce357e28a4aec26f3bf2e600bb40ec
  storE39B is uint256 at storage 0xe39b43e4224876d80510ac9d8f190663bcce357e28a4aec26f3bf2e600bb40ed

def fixRetW2_(uint256 _param1): # not payable
  require _param1 < fixRetW2_.length
  return fixRetW2_[_param1]

def getRecommander(): # not payable
  return recommander[caller]

def rndInc_(): # not payable
  return rndInc_

def tdestroy_(): # not payable
  return tdestroy_

def round_(uint256 _param1): # not payable
  return round_[_param1].field_0, 
         round_[_param1].field_256,
         round_[_param1].field_512,
         round_[_param1].field_768,
         round_[_param1].field_1024,
         bool(round_[_param1].field_1184)

def _recommandLinkM(address _param1): # not payable
  return recommander[_param1]

def decimal_(): # not payable
  return decimal_

def _regM(address _param1): # not payable
  return bool(stor27[_param1])

def rndInit_(): # not payable
  return rndInit_

def plyrRnds_(address _param1, uint256 _param2): # not payable
  return plyrRnds_[_param1][_param2].field_0, plyrRnds_[_param1][_param2].field_256

def getRecommander(address _address): # not payable
  return recommander[addr(_address_)]

def getRecomCount(): # not payable
  return recomCount[caller]

def recomB_(uint256 _param1): # not payable
  require _param1 < recomB_.length
  return recomB_[_param1].field_0

def rID_(): # not payable
  return rID_

def getRecommanderByAddress(address _addr): # not payable
  return recommander[addr(_addr)]

def node_(address _param1): # not payable
  return node_[_param1].field_0, node_[_param1].field_256, node_[_param1].field_512

def coutier_(): # not payable
  return coutier_Address

def getRecomCountByAddress(address _addr): # not payable
  return recomCount[addr(_addr)]

def gMin_(): # not payable
  return gMin_

def owner(): # not payable
  return owner

def fixRetW1_(uint256 _param1): # not payable
  require _param1 < fixRetW1_.length
  return fixRetW1_[_param1]

def r24ID_(): # not payable
  return r24ID_

#
#  Regular functions
#

def getExtData(): # not payable
  return gMin_, stor22, tdestroy_

def getGper(): # not payable
  return stor1, stor2, stor3, stor5

def setMin(uint256 _newMin): # not payable
  require caller == owner
  gMin_ = _newMin

def getCurrentRoundInfo424(): # not payable
  return r24ID_, stor37[stor36].field_512

def setCoutier(address _addr): # not payable
  require caller == owner
  coutier_Address = _addr

def setBurnTokenTimes(uint256 _times): # not payable
  require caller == owner
  stor22 = _times

def setBpoolBlock4Min(uint256 _min): # not payable
  require caller == owner
  stor19 = 60 * _min

def setStcPerior4Min(uint256 _perior): # not payable
  require caller == owner
  stor4 = 60 * _perior

def isCanReg(address _address): # not payable
  return not bool(stor27[addr(_address_)])

def getHisRoundInfo(): # not payable
  if rID_ > 1:
      return rID_ - 1, round_[stor29 - 1].field_512, 0
  else:
      return 0

def getCurrentRoundInfo(): # not payable
  return rID_, round_[stor29].field_512, round_[stor29].field_768

def updateRecommander(address _address0, address _address1): # not payable
  require caller == owner
  recommander[addr(_address0_)] = _address1_

def infoSosAll(address _a0): # not payable
  require caller == owner
  call _a0 with:
     value eth.balance(this.address) wei
       gas 2300 * is_zero(value) wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def getNodeData(address _addr): # not payable
  return node_[addr(_addr)].field_0, node_[addr(_addr)].field_256, 0, node_[addr(_addr)].field_512

def getLeftTime24(): # not payable
  if block.timestamp > stor37[stor36].field_256:
      return 0
  if block.timestamp > stor37[stor36].field_256:
      revert with 0, 'SafeMath sub failed'
  return (stor37[stor36].field_256 - block.timestamp)

def activate(): # not payable
  require caller == owner
  if stor38:
      revert with 0, 'e9 already activated'
  stor38 = 1
  rID_ = 1
  storE39B = block.timestamp - stor19
  storE39B = block.timestamp + rndInit_
  r24ID_ = 1
  stor20A3 = block.timestamp
  stor20A3 = stor12 + block.timestamp

def outTeamgen(address _addr, uint256 _teamgen): # not payable
  if coutier_Address != caller:
      require caller == owner
  if _teamgen + stor35[addr(_addr)].field_2816 < stor35[addr(_addr)].field_2816:
      revert with 0, 'SafeMath add failed'
  stor35[addr(_addr)].field_2816 += _teamgen

def outAnglegen(address _addr, uint256 _anglegen): # not payable
  if coutier_Address != caller:
      require caller == owner
  if _anglegen + stor35[addr(_addr)].field_3072 < stor35[addr(_addr)].field_3072:
      revert with 0, 'SafeMath add failed'
  stor35[addr(_addr)].field_3072 += _anglegen

def take4Parter(): # not payable
  if bool(stor38) != 1:
      revert with 0, 'its not ready yet.  check ?'
  if ext_code.size(caller):
      revert with 0, 'sorry humans only'
  if node_[caller].field_512 > 0:
      node_[caller].field_512 = 0
      call caller with:
         value node_[caller].field_512 wei
           gas 2300 * is_zero(value) wei
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]

def take4Team(): # not payable
  if bool(stor38) != 1:
      revert with 0, 'its not ready yet.  check ?'
  if ext_code.size(caller):
      revert with 0, 'sorry humans only'
  if stor35[caller].field_2816 > 0:
      stor35[caller].field_2816 = 0
      call caller with:
         value stor35[caller].field_2816 wei
           gas 2300 * is_zero(value) wei
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]

def take4Angle(): # not payable
  if bool(stor38) != 1:
      revert with 0, 'its not ready yet.  check ?'
  if ext_code.size(caller):
      revert with 0, 'sorry humans only'
  if stor35[caller].field_3072 > 0:
      stor35[caller].field_3072 = 0
      call caller with:
         value stor35[caller].field_3072 wei
           gas 2300 * is_zero(value) wei
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]

def setBpool4Min(uint256 _min): # not payable
  require caller == owner
  rndInit_ = 60 * _min
  if block.timestamp <= round_[stor29].field_0:
      if rndInit_ + round_[stor29].field_256 < round_[stor29].field_256:
          revert with 0, 'SafeMath add failed'
      round_[stor29].field_0 = rndInit_ + round_[stor29].field_256

def setSpoolOpenTime4Min(uint256 _spoolOpenTime): # not payable
  require caller == owner
  stor12 = 60 * _spoolOpenTime
  if block.timestamp <= stor37[stor36].field_256:
      if stor12 + stor37[stor36].field_0 < stor37[stor36].field_0:
          revert with 0, 'SafeMath add failed'
      stor37[stor36].field_256 = stor12 + stor37[stor36].field_0

def receiveApproval(address _sender, uint256 _value, bytes _extraData): # not payable
  require stor24
  require caller == stor24
  require ext_code.size(stor24)
  call stor24.burnFrom(address from, uint256 value) with:
       gas gas_remaining wei
      args addr(_sender), _value
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >= 32
  log onReceiveApproval(
        address sender=addr(_sender),
        uint256 value=_value,
        bytes data=Array(len=_extraData.length, data=_extraData[all]))

def set3FloorRate(uint256 _oneB, uint256 _twoB, uint256 _threeB): # not payable
  require caller == owner
  if _twoB + _oneB < _oneB:
      revert with 0, 'SafeMath add failed'
  if _threeB < 0:
      revert with 0, 'SafeMath add failed'
  if _threeB + _twoB + _oneB != 100:
      revert with 0, 'data error, != 100%'
  require 0 < recomB_.length
  uint256(recomB_.field_0) = _oneB
  require 1 < recomB_.length
  uint256(recomB_.field_256) = _twoB
  require 2 < recomB_.length
  uint256(recomB_.field_512) = _threeB

def isOverFixResCount(address _pAddress, uint256 _now): # not payable
  if stor35[addr(_pAddress)].field_1024:
      if stor35[addr(_pAddress)].field_1536 + stor35[addr(_pAddress)].field_2304 < stor35[addr(_pAddress)].field_2304:
          revert with 0, 'SafeMath add failed'
      if stor35[addr(_pAddress)].field_1536 + stor35[addr(_pAddress)].field_2304 < stor35[addr(_pAddress)].field_2560:
          return 0
  return 1

def addOrSetNode(address _addr, uint256 _rateW): # not payable
  require caller == owner
  if node_[addr(_addr)].field_0:
      node_[addr(_addr)].field_0 = _addr
      node_[addr(_addr)].field_256 = _rateW
  else:
      stor14.length++
      stor14[stor14.length] = _addr
      node_[addr(_addr)].field_0 = _addr
      node_[addr(_addr)].field_256 = _rateW
      node_[addr(_addr)].field_512 = 0

def setFixRetBet(uint256[] _fixRetWs): # not payable
  mem[128 len 32 * _fixRetWs.length] = call.data[_fixRetWs + 36 len 32 * _fixRetWs.length]
  require caller == owner
  stor10.length = _fixRetWs.length
  if not _fixRetWs.length:
      idx = 0
      while stor10.length > idx:
          stor10[idx] = 0
          idx = idx + 1
          continue 
  else:
      s = 0
      idx = 128
      while (32 * _fixRetWs.length) + 128 > idx:
          stor10[s] = mem[idx]
          s = s + 1
          idx = idx + 32
          continue 
      idx = Mask(251, 0, (32 * _fixRetWs.length) + 31) >> 5
      while stor10.length > idx:
          stor10[idx] = 0
          idx = idx + 1
          continue 

def setFixRet2(uint256[] _fixRetWs): # not payable
  mem[128 len 32 * _fixRetWs.length] = call.data[_fixRetWs + 36 len 32 * _fixRetWs.length]
  require caller == owner
  fixRetW2_.length = _fixRetWs.length
  if not _fixRetWs.length:
      idx = 0
      while fixRetW2_.length > idx:
          fixRetW2_[idx] = 0
          idx = idx + 1
          continue 
  else:
      s = 0
      idx = 128
      while (32 * _fixRetWs.length) + 128 > idx:
          fixRetW2_[s] = mem[idx]
          s = s + 1
          idx = idx + 32
          continue 
      idx = Mask(251, 0, (32 * _fixRetWs.length) + 31) >> 5
      while fixRetW2_.length > idx:
          fixRetW2_[idx] = 0
          idx = idx + 1
          continue 

def outPool242Win(address _addr, uint256 _win): # not payable
  if coutier_Address != caller:
      require caller == owner
  if block.timestamp <= stor37[stor36].field_256:
      revert with 0, '!end and execute ended!'
  if stor37[stor36].field_768:
      revert with 0, '!end and execute ended!'
  require _win <= stor37[stor36].field_512
  if _win + stor35[addr(_addr)].field_256 < stor35[addr(_addr)].field_256:
      revert with 0, 'SafeMath add failed'
  stor35[addr(_addr)].field_256 += _win
  if _win > stor37[stor36].field_512:
      revert with 0, 'SafeMath sub failed'
  stor37[stor36].field_512 -= _win
  stor33[addr(_addr)][stor36] = _win

def take(): # not payable
  if bool(stor38) != 1:
      revert with 0, 'its not ready yet.  check ?'
  if ext_code.size(caller):
      revert with 0, 'sorry humans only'
  if sha3(caller, Mask(96, 0, stor31.field_160) >> 512, addr(stor31.field_0)) % 100 >= 50:
      uint256(stor31.field_0) += 5
  else:
      uint256(stor31.field_0) += 3
  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
      revert with 0, 'SafeMath add failed'
  if stor35[caller].field_768 < 0:
      revert with 0, 'SafeMath add failed'
  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
      stor35[caller].field_256 = 0
      stor35[caller].field_512 = 0
      stor35[caller].field_768 = 0
      call caller with:
         value stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 wei
           gas 2300 * is_zero(value) wei
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]

def finishStc(): # not payable
  if 0 < stor35[caller].field_2048:
      if stor35[caller].field_2048 > block.timestamp:
          revert with 0, 'SafeMath sub failed'
      require stor4
      if block.timestamp - stor35[caller].field_2048 / stor4 > 0:
          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
              revert with 0, 'SafeMath add failed'
          if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
              if stor35[caller].field_1536 + stor35[caller].field_2304 > stor35[caller].field_2560:
                  revert with 0, 'SafeMath sub failed'
              if stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304 > 0:
                  if block.timestamp - stor35[caller].field_2048 / stor4 > 0:
                      if sha3(caller, Mask(96, 0, stor31.field_160) >> 512, addr(stor31.field_0)) % 100 >= 10:
                          require fixRetW1_.length
                          require sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length < fixRetW1_.length
                          if not stor35[caller].field_1280:
                              if stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304 < 0:
                                  if stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304 > 0:
                                      if stor35[caller].field_512 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      stor35[caller].field_512 = stor35[caller].field_512 + stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304
                                      if stor35[caller].field_2304 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      stor35[caller].field_2304 = stor35[caller].field_2560 - stor35[caller].field_1536
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 % stor4 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_2048 = block.timestamp - (block.timestamp - stor35[caller].field_2048 % stor4)
                          else:
                              if fixRetW1_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length] * stor35[caller].field_1280 / stor35[caller].field_1280 != fixRetW1_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length]:
                                  revert with 0, 'SafeMath mul failed'
                              if not fixRetW1_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length] * stor35[caller].field_1280:
                                  if stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304 < 0:
                                      if stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304 > 0:
                                          if stor35[caller].field_512 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          stor35[caller].field_512 = stor35[caller].field_512 + stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304
                                          if stor35[caller].field_2304 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          stor35[caller].field_2304 = stor35[caller].field_2560 - stor35[caller].field_1536
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 % stor4 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_2048 = block.timestamp - (block.timestamp - stor35[caller].field_2048 % stor4)
                              else:
                                  if block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW1_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length] * stor35[caller].field_1280 / fixRetW1_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length] * stor35[caller].field_1280 != block.timestamp - stor35[caller].field_2048 / stor4:
                                      revert with 0, 'SafeMath mul failed'
                                  if stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304 >= block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW1_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length] * stor35[caller].field_1280 / 10000:
                                      if block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW1_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length] * stor35[caller].field_1280 / 10000 > 0:
                                          if stor35[caller].field_512 + (block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW1_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length] * stor35[caller].field_1280 / 10000) < block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW1_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length] * stor35[caller].field_1280 / 10000:
                                              revert with 0, 'SafeMath add failed'
                                          stor35[caller].field_512 += block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW1_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length] * stor35[caller].field_1280 / 10000
                                          if stor35[caller].field_2304 + (block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW1_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length] * stor35[caller].field_1280 / 10000) < block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW1_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length] * stor35[caller].field_1280 / 10000:
                                              revert with 0, 'SafeMath add failed'
                                          stor35[caller].field_2304 += block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW1_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW1_.length] * stor35[caller].field_1280 / 10000
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 % stor4 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_2048 = block.timestamp - (block.timestamp - stor35[caller].field_2048 % stor4)
                                  else:
                                      if stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304 > 0:
                                          if stor35[caller].field_512 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          stor35[caller].field_512 = stor35[caller].field_512 + stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304
                                          if stor35[caller].field_2304 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          stor35[caller].field_2304 = stor35[caller].field_2560 - stor35[caller].field_1536
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 % stor4 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_2048 = block.timestamp - (block.timestamp - stor35[caller].field_2048 % stor4)
                      else:
                          require fixRetW2_.length
                          require sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length < fixRetW2_.length
                          if not stor35[caller].field_1280:
                              if stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304 < 0:
                                  if stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304 > 0:
                                      if stor35[caller].field_512 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      stor35[caller].field_512 = stor35[caller].field_512 + stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304
                                      if stor35[caller].field_2304 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      stor35[caller].field_2304 = stor35[caller].field_2560 - stor35[caller].field_1536
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 % stor4 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_2048 = block.timestamp - (block.timestamp - stor35[caller].field_2048 % stor4)
                          else:
                              if fixRetW2_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length] * stor35[caller].field_1280 / stor35[caller].field_1280 != fixRetW2_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length]:
                                  revert with 0, 'SafeMath mul failed'
                              if not fixRetW2_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length] * stor35[caller].field_1280:
                                  if stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304 < 0:
                                      if stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304 > 0:
                                          if stor35[caller].field_512 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          stor35[caller].field_512 = stor35[caller].field_512 + stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304
                                          if stor35[caller].field_2304 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          stor35[caller].field_2304 = stor35[caller].field_2560 - stor35[caller].field_1536
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 % stor4 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_2048 = block.timestamp - (block.timestamp - stor35[caller].field_2048 % stor4)
                              else:
                                  if block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW2_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length] * stor35[caller].field_1280 / fixRetW2_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length] * stor35[caller].field_1280 != block.timestamp - stor35[caller].field_2048 / stor4:
                                      revert with 0, 'SafeMath mul failed'
                                  if stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304 >= block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW2_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length] * stor35[caller].field_1280 / 10000:
                                      if block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW2_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length] * stor35[caller].field_1280 / 10000 > 0:
                                          if stor35[caller].field_512 + (block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW2_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length] * stor35[caller].field_1280 / 10000) < block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW2_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length] * stor35[caller].field_1280 / 10000:
                                              revert with 0, 'SafeMath add failed'
                                          stor35[caller].field_512 += block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW2_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length] * stor35[caller].field_1280 / 10000
                                          if stor35[caller].field_2304 + (block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW2_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length] * stor35[caller].field_1280 / 10000) < block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW2_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length] * stor35[caller].field_1280 / 10000:
                                              revert with 0, 'SafeMath add failed'
                                          stor35[caller].field_2304 += block.timestamp - stor35[caller].field_2048 / stor4 * fixRetW2_[sha3(block.difficulty, block.timestamp, caller, Mask(96, 0, stor31.field_160), addr(stor31.field_0)) % fixRetW2_.length] * stor35[caller].field_1280 / 10000
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 % stor4 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_2048 = block.timestamp - (block.timestamp - stor35[caller].field_2048 % stor4)
                                  else:
                                      if stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304 > 0:
                                          if stor35[caller].field_512 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          stor35[caller].field_512 = stor35[caller].field_512 + stor35[caller].field_2560 - stor35[caller].field_1536 - stor35[caller].field_2304
                                          if stor35[caller].field_2304 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          stor35[caller].field_2304 = stor35[caller].field_2560 - stor35[caller].field_1536
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 % stor4 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_2048 = block.timestamp - (block.timestamp - stor35[caller].field_2048 % stor4)

def _fallback() payable: # default function
  if calldata.size < 4:
      if bool(stor38) != 1:
          revert with 0, 'its not ready yet.  check ?'
      if ext_code.size(caller):
          revert with 0, 'sorry humans only'
      if tx.origin != caller:
          revert with 0, 'sorry humans only'
      if not call.value:
          if bool(stor38) != 1:
              revert with 0, 'its not ready yet.  check ?'
          if ext_code.size(caller):
              revert with 0, 'sorry humans only'
          if node_[caller].field_512 > 0:
              node_[caller].field_512 = 0
              call caller with:
                 value node_[caller].field_512 wei
                   gas 2300 * is_zero(value) wei
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
          if bool(stor38) != 1:
              revert with 0, 'its not ready yet.  check ?'
          if ext_code.size(caller):
              revert with 0, 'sorry humans only'
      else:
          if call.value < gMin_:
              revert with 0, 'min limit!'
          if block.timestamp > 0:
              if stor35[caller].field_1024:
                  if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                      revert with 0, 'SafeMath add failed'
                  require stor35[caller].field_1536 + stor35[caller].field_2304 >= stor35[caller].field_2560
                  require block.timestamp > stor19 + round_[stor29].field_256
                  if block.timestamp <= round_[stor29].field_0:
                      if not stor22:
                          if not stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if call.value / 10^18:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value > 10^9:
                                      else:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                          else:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                      else:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                      else:
                                          if block.timestamp > 0:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if call.value / 10^18:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if not call.value / 10^18:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                      else:
                          if call.value * stor22 / stor22 != call.value:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                      else:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                      else:
                                          if block.timestamp > 0:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if call.value / 10^18:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if not call.value / 10^18:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                          else:
                              if call.value * stor22 <= 0:
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value <= 10^9:
                                              stop
                                          if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                              stor35[caller].field_2048 = block.timestamp
                                          else:
                                              if block.timestamp > 0:
                                                  if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_1024:
                                              if not call.value / 10^18:
                                                  if round_[stor29].field_0 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                      revert with 0, 'SafeMath add failed'
                                          else:
                                              if not call.value / 10^18:
                                                  if block.timestamp < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if (call.value * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += call.value * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, call.value * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value > 10^9:
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                      else:
                  else:
                      require block.timestamp > round_[stor29].field_0
                      require not round_[stor29].field_1024
                      if not stor22:
                          if not stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp > round_[stor29].field_0:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                      else:
                                          if block.timestamp > 0:
                                              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if not call.value / 10^18:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                          else:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp > round_[stor29].field_0:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                      else:
                                          if block.timestamp > 0:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if not call.value / 10^18:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                      else:
                          if call.value * stor22 / stor22 != call.value:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp > round_[stor29].field_0:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                      else:
                                          if block.timestamp > 0:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if not call.value / 10^18:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                          else:
                              if call.value * stor22 <= 0:
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value <= 10^9:
                                              stop
                                          if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 / stor4 > 0:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if not round_[stor29].field_1024:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                          else:
                              else:
                                  if (call.value * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += call.value * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, call.value * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp > round_[stor29].field_0:
              else:
                  require block.timestamp > stor19 + round_[stor29].field_256
                  if block.timestamp <= round_[stor29].field_0:
                      if not stor22:
                          if stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_1024:
                                              if not call.value / 10^18:
                                                  if round_[stor29].field_0 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                          else:
                                              if not call.value / 10^18:
                                                  if block.timestamp < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value <= 10^9:
                                              stop
                                          if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                                              if stor35[caller].field_1536 + stor35[caller].field_2304 > stor35[caller].field_2560:
                                                  revert with 0, 'SafeMath sub failed'
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                          if round_[stor29].field_0 >= block.timestamp + rndInit_:
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < block.timestamp + rndInit_:
                                              round_[stor29].field_0 += rndInc_ * call.value / 10^18
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp < block.timestamp + rndInit_:
                                                  round_[stor29].field_0 = block.timestamp
                          else:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_1024:
                                              if not call.value / 10^18:
                                                  if round_[stor29].field_0 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                      revert with 0, 'SafeMath add failed'
                                          else:
                                              if not call.value / 10^18:
                                                  if block.timestamp < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                      revert with 0, 'SafeMath add failed'
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value <= 10^9:
                                              stop
                                          if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                                              if stor35[caller].field_1536 + stor35[caller].field_2304 > stor35[caller].field_2560:
                                                  revert with 0, 'SafeMath sub failed'
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                          if round_[stor29].field_0 >= block.timestamp + rndInit_:
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < block.timestamp + rndInit_:
                                              round_[stor29].field_0 += rndInc_ * call.value / 10^18
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                              if round_[stor29].field_0 >= block.timestamp + rndInit_:
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < block.timestamp + rndInit_:
                                                  round_[stor29].field_0 += rndInc_ * call.value / 10^18
                                      else:
                                          if not call.value / 10^18:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp < block.timestamp + rndInit_:
                                                  round_[stor29].field_0 = block.timestamp
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                              if rndInc_ * call.value / 10^18 < rndInit_:
                                                  round_[stor29].field_0 = block.timestamp + (rndInc_ * call.value / 10^18)
                      else:
                          if call.value * stor22 / stor22 != call.value:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_1024:
                                              if not call.value / 10^18:
                                                  if round_[stor29].field_0 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                          else:
                                              if not call.value / 10^18:
                                                  if block.timestamp < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value <= 10^9:
                                              stop
                                          if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                                              if stor35[caller].field_1536 + stor35[caller].field_2304 > stor35[caller].field_2560:
                                                  revert with 0, 'SafeMath sub failed'
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                          if round_[stor29].field_0 >= block.timestamp + rndInit_:
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < block.timestamp + rndInit_:
                                              round_[stor29].field_0 += rndInc_ * call.value / 10^18
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp < block.timestamp + rndInit_:
                                                  round_[stor29].field_0 = block.timestamp
                          else:
                              if call.value * stor22 <= 0:
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value <= 10^9:
                                              stop
                                          if block.timestamp <= round_[stor29].field_0:
                                              if not call.value / 10^18:
                                                  if round_[stor29].field_0 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                          else:
                                              if not round_[stor29].field_1024:
                                              if call.value / 10^18:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                              else:
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                              stor35[caller].field_2048 = block.timestamp
                                              if call.value > 10^9:
                                                  if block.timestamp > round_[stor29].field_0:
                                          else:
                                              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp > 0:
                                                  if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                                                      if stor35[caller].field_1536 + stor35[caller].field_2304 > stor35[caller].field_2560:
                                                          revert with 0, 'SafeMath sub failed'
                                              else:
                                                  if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_1024:
                                              if call.value / 10^18:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if round_[stor29].field_0 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                          else:
                                              if call.value / 10^18:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if block.timestamp < 0:
                                                      revert with 0, 'SafeMath add failed'
                                      if block.timestamp + rndInit_ < rndInit_:
                                          revert with 0, 'SafeMath add failed'
                              else:
                                  if (call.value * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += call.value * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, call.value * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value <= 10^9:
                                              stop
                                          if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                              stor35[caller].field_2048 = block.timestamp
                                          else:
                                              if block.timestamp > 0:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_1024:
                                              if not call.value / 10^18:
                                                  if round_[stor29].field_0 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                          else:
                                              if not call.value / 10^18:
                                                  if block.timestamp < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                  else:
                      require block.timestamp > round_[stor29].field_0
                      require not round_[stor29].field_1024
                      if not stor22:
                          if not stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if not round_[stor29].field_1024:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                          else:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value > 10^9:
                                              if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp > 0:
                                              if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                                                  if stor35[caller].field_1536 + stor35[caller].field_2304 > stor35[caller].field_2560:
                                                      revert with 0, 'SafeMath sub failed'
                                          else:
                                              if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                  if block.timestamp + rndInit_ < rndInit_:
                                      revert with 0, 'SafeMath add failed'
                          else:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                          else:
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value > 10^9:
                                      else:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp <= 0:
                                          else:
                                              if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if call.value / 10^18:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      if block.timestamp + rndInit_ < rndInit_:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if not call.value / 10^18:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                      else:
                          if call.value * stor22 / stor22 != call.value:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                          else:
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value > 10^9:
                                      else:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp <= 0:
                                          else:
                                              if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if call.value / 10^18:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      if block.timestamp + rndInit_ < rndInit_:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if not call.value / 10^18:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                          else:
                              if call.value * stor22 <= 0:
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value <= 10^9:
                                              stop
                                          if block.timestamp <= round_[stor29].field_0:
                                              if call.value / 10^18:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                          else:
                                              if call.value / 10^18:
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                              stor35[caller].field_2048 = block.timestamp
                                              if call.value > 10^9:
                                          else:
                                              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                                  revert with 0, 'SafeMath add failed'
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_1024:
                                              if call.value / 10^18:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if round_[stor29].field_0 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                          else:
                                              if call.value / 10^18:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if block.timestamp < 0:
                                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if (call.value * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += call.value * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, call.value * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value > 10^9:
                                              if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 / stor4 > 0:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                          else:
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
          else:
              if stor35[caller].field_1024:
                  if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                      revert with 0, 'SafeMath add failed'
                  require stor35[caller].field_1536 + stor35[caller].field_2304 >= stor35[caller].field_2560
                  require block.timestamp > stor19 + round_[stor29].field_256
                  if block.timestamp <= round_[stor29].field_0:
                      if not stor22:
                          if not stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                      else:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                      else:
                                          if block.timestamp > 0:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if call.value / 10^18:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if not call.value / 10^18:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                          else:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp > round_[stor29].field_0:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                      else:
                                          if block.timestamp > 0:
                                              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if not call.value / 10^18:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                      else:
                          if call.value * stor22 / stor22 != call.value:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp > round_[stor29].field_0:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                      else:
                                          if block.timestamp > 0:
                                              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if not call.value / 10^18:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                          else:
                              if call.value * stor22 <= 0:
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value <= 10^9:
                                              stop
                                          if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                              stor35[caller].field_2048 = block.timestamp
                                          else:
                                              if block.timestamp > 0:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_1024:
                                              if not call.value / 10^18:
                                                  if round_[stor29].field_0 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                          else:
                                              if not call.value / 10^18:
                                                  if block.timestamp < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                              else:
                                  if (call.value * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += call.value * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, call.value * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp > round_[stor29].field_0:
                  else:
                      require block.timestamp > round_[stor29].field_0
                      require not round_[stor29].field_1024
                      if not stor22:
                          if stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp > round_[stor29].field_0:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 > 0:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                  else:
                                      if not round_[stor29].field_1024:
                                      if call.value / 10^18:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                      else:
                          else:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp > round_[stor29].field_0:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                      else:
                                          if block.timestamp > 0:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if not call.value / 10^18:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                      else:
                          if call.value * stor22 / stor22 != call.value:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp > round_[stor29].field_0:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 > 0:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                  else:
                                      if not round_[stor29].field_1024:
                                      if call.value / 10^18:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                      else:
                          else:
                              if call.value * stor22 <= 0:
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value > 10^9:
                                              if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 / stor4 > 0:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                          else:
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                              else:
                                  if (call.value * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += call.value * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, call.value * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp > round_[stor29].field_0:
              else:
                  require block.timestamp > stor19 + round_[stor29].field_256
                  if block.timestamp <= round_[stor29].field_0:
                      if not stor22:
                          if stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if not round_[stor29].field_1024:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                          else:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value > 10^9:
                                              if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp > 0:
                                              if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                                                  if stor35[caller].field_1536 + stor35[caller].field_2304 > stor35[caller].field_2560:
                                                      revert with 0, 'SafeMath sub failed'
                                          else:
                                              if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                  if block.timestamp + rndInit_ < rndInit_:
                                      revert with 0, 'SafeMath add failed'
                          else:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_1024:
                                              if not call.value / 10^18:
                                                  if round_[stor29].field_0 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                          else:
                                              if not call.value / 10^18:
                                                  if block.timestamp < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value <= 10^9:
                                              stop
                                          if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                                              if stor35[caller].field_1536 + stor35[caller].field_2304 > stor35[caller].field_2560:
                                                  revert with 0, 'SafeMath sub failed'
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                          if round_[stor29].field_0 >= block.timestamp + rndInit_:
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < block.timestamp + rndInit_:
                                              round_[stor29].field_0 += rndInc_ * call.value / 10^18
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp < block.timestamp + rndInit_:
                                                  round_[stor29].field_0 = block.timestamp
                      else:
                          if call.value * stor22 / stor22 != call.value:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if not round_[stor29].field_1024:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                          else:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value > 10^9:
                                              if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp > 0:
                                              if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                                                  if stor35[caller].field_1536 + stor35[caller].field_2304 > stor35[caller].field_2560:
                                                      revert with 0, 'SafeMath sub failed'
                                          else:
                                              if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                  if block.timestamp + rndInit_ < rndInit_:
                                      revert with 0, 'SafeMath add failed'
                          else:
                              if call.value * stor22 <= 0:
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value <= 10^9:
                                              stop
                                          if block.timestamp <= round_[stor29].field_0:
                                              if call.value / 10^18:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                              else:
                                          else:
                                              if call.value / 10^18:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                              stor35[caller].field_2048 = block.timestamp
                                              if call.value > 10^9:
                                          else:
                                              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp <= 0:
                                              else:
                                                  if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_1024:
                                              if not call.value / 10^18:
                                                  if round_[stor29].field_0 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                                  if block.timestamp + rndInit_ < rndInit_:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                      revert with 0, 'SafeMath add failed'
                                          else:
                                              if not call.value / 10^18:
                                                  if block.timestamp < 0:
                                                      revert with 0, 'SafeMath add failed'
                                                  if block.timestamp + rndInit_ < rndInit_:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if (call.value * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += call.value * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, call.value * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value <= 10^9:
                                              stop
                                          if block.timestamp > round_[stor29].field_0:
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 / stor4 > 0:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if not round_[stor29].field_1024:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                          else:
                  else:
                      require block.timestamp > round_[stor29].field_0
                      require not round_[stor29].field_1024
                      if not stor22:
                          if stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if call.value / 10^18:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value > 10^9:
                                      else:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                          else:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                          else:
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value > 10^9:
                                      else:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp <= 0:
                                          else:
                                              if stor35[caller].field_2560 > stor35[caller].field_1536 + stor35[caller].field_2304:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if call.value / 10^18:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      if block.timestamp + rndInit_ < rndInit_:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if not call.value / 10^18:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if not call.value / 10^18:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if block.timestamp + rndInit_ < rndInit_:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                      else:
                          if call.value * stor22 / stor22 != call.value:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if 0 < stor35[caller].field_2048:
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if call.value / 10^18:
                                  else:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value > 10^9:
                                      else:
                                          if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                              revert with 0, 'SafeMath add failed'
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if call.value <= 10^9:
                                      stop
                                  if block.timestamp <= round_[stor29].field_0:
                                      if not call.value / 10^18:
                                          if round_[stor29].field_0 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if block.timestamp + rndInit_ < rndInit_:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                              revert with 0, 'SafeMath mul failed'
                                          if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                              revert with 0, 'SafeMath add failed'
                                  else:
                                      if round_[stor29].field_1024:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if block.timestamp < 0:
                                                  revert with 0, 'SafeMath add failed'
                          else:
                              if call.value * stor22 <= 0:
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value <= 10^9:
                                              stop
                                          if block.timestamp <= round_[stor29].field_0:
                                              if call.value / 10^18:
                                          else:
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                          if block.timestamp - stor35[caller].field_2048 / stor4 <= 0:
                                              stor35[caller].field_2048 = block.timestamp
                                          else:
                                              if block.timestamp > 0:
                                              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                                  revert with 0, 'SafeMath add failed'
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                              if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if round_[stor29].field_0 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                      else:
                                          if round_[stor29].field_1024:
                                              if not call.value / 10^18:
                                                  if round_[stor29].field_0 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if round_[stor29].field_0 + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                      revert with 0, 'SafeMath add failed'
                                          else:
                                              if not call.value / 10^18:
                                                  if block.timestamp < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if block.timestamp + (rndInc_ * call.value / 10^18) < rndInc_ * call.value / 10^18:
                                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if (call.value * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += call.value * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, call.value * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if call.value > 10^9:
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stor4
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if call.value <= 10^9:
                                          stop
                                      if block.timestamp <= round_[stor29].field_0:
                                          if call.value / 10^18:
                                              if rndInc_ * call.value / 10^18 / call.value / 10^18 != rndInc_:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if call.value / 10^18:
  else:
      if uint32(call.func_hash) == fixRetW2_(uint256 param1):
          require not call.value
          require _param1 < fixRetW2_.length
          return fixRetW2_[_param1]
      if getRecommander() == uint32(call.func_hash):
          require not call.value
          return recommander[caller]
      if rndInc_() == uint32(call.func_hash):
          require not call.value
          return rndInc_
      if getExtData() == uint32(call.func_hash):
          require not call.value
          return gMin_, stor22, tdestroy_
      if name() == uint32(call.func_hash):
          require not call.value
      else:
          if setCoutier(address addr) == uint32(call.func_hash):
              require not call.value
              require caller == owner
              coutier_Address = addr(_param1)
              stop
          if activate() == uint32(call.func_hash):
              require not call.value
              require caller == owner
              if stor38:
                  revert with 0, 'e9 already activated'
              stor38 = 1
              rID_ = 1
              storE39B = block.timestamp - stor19
              storE39B = block.timestamp + rndInit_
              r24ID_ = 1
              stor20A3 = block.timestamp
              stor20A3 = stor12 + block.timestamp
              stop
          if take4Team() == uint32(call.func_hash):
              require not call.value
              if bool(stor38) != 1:
                  revert with 0, 'its not ready yet.  check ?'
              if ext_code.size(caller):
                  revert with 0, 'sorry humans only'
              if stor35[caller].field_2816 > 0:
                  stor35[caller].field_2816 = 0
                  call caller with:
                     value stor35[caller].field_2816 wei
                       gas 2300 * is_zero(value) wei
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
              stop
          if take() == uint32(call.func_hash):
              require not call.value
              if bool(stor38) != 1:
                  revert with 0, 'its not ready yet.  check ?'
              if ext_code.size(caller):
                  revert with 0, 'sorry humans only'
          else:
              if tdestroy_() == uint32(call.func_hash):
                  require not call.value
                  return tdestroy_
              if round_(uint256 param1) == uint32(call.func_hash):
                  require not call.value
                  return round_[_param1].field_0, 
                         round_[_param1].field_256,
                         round_[_param1].field_512,
                         round_[_param1].field_768,
                         round_[_param1].field_1024,
                         bool(round_[_param1].field_1184)
              if reLoad(address recommander, uint256 eth) == uint32(call.func_hash):
                  require not call.value
                  if bool(stor38) != 1:
                      revert with 0, 'its not ready yet.  check ?'
                  if ext_code.size(caller):
                      revert with 0, 'sorry humans only'
                  if _param2 < 10^9:
                      revert with 0, 'broken!!!'
                  if _param2 > 100000 * 10^18:
                      revert with 0, 'rich!!!'
                  if _param2 < gMin_:
                      revert with 0, 'min limit!'
                  if tx.origin != caller:
                      revert with 0, 'sorry humans only'
                  if caller == addr(_param1):
                      if block.timestamp <= 0:
                          if stor35[caller].field_1024:
                              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                  revert with 0, 'SafeMath add failed'
                              require stor35[caller].field_1536 + stor35[caller].field_2304 >= stor35[caller].field_2560
                              require block.timestamp > stor19 + round_[stor29].field_256
                              if block.timestamp <= round_[stor29].field_0:
                                  if stor22:
                                      if _param2 * stor22 / stor22 != _param2:
                                          revert with 0, 'SafeMath mul failed'
                                      if stor24:
                              else:
                                  require block.timestamp > round_[stor29].field_0
                                  require not round_[stor29].field_1024
                                  if stor22:
                                      if _param2 * stor22 / stor22 != _param2:
                                          revert with 0, 'SafeMath mul failed'
                          else:
                              require block.timestamp > stor19 + round_[stor29].field_256
                              if block.timestamp <= round_[stor29].field_0:
                                  if not stor22:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if _param2 * stor22 / stor22 != _param2:
                                          revert with 0, 'SafeMath mul failed'
                                      if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if _param2 * stor22 > 0:
                                              if (_param2 * stor22) + tdestroy_ < tdestroy_:
                                                  revert with 0, 'SafeMath add failed'
                                              tdestroy_ += _param2 * stor22
                              else:
                                  require block.timestamp > round_[stor29].field_0
                                  require not round_[stor29].field_1024
                                  if not stor22:
                                      if not stor24:
                                  else:
                                      if _param2 * stor22 / stor22 != _param2:
                                          revert with 0, 'SafeMath mul failed'
                                      if stor24:
                                          if _param2 * stor22 > 0:
                      else:
                          if stor35[caller].field_1024:
                              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                  revert with 0, 'SafeMath add failed'
                              require stor35[caller].field_1536 + stor35[caller].field_2304 >= stor35[caller].field_2560
                              require block.timestamp > stor19 + round_[stor29].field_256
                              if block.timestamp <= round_[stor29].field_0:
                                  if stor22:
                                      if _param2 * stor22 / stor22 != _param2:
                                          revert with 0, 'SafeMath mul failed'
                                      if stor24:
                              else:
                                  require block.timestamp > round_[stor29].field_0
                                  require not round_[stor29].field_1024
                                  if stor22:
                                      if _param2 * stor22 / stor22 != _param2:
                                          revert with 0, 'SafeMath mul failed'
                          else:
                              require block.timestamp > stor19 + round_[stor29].field_256
                              if block.timestamp > round_[stor29].field_0:
                                  require block.timestamp > round_[stor29].field_0
                                  require not round_[stor29].field_1024
                                  if not stor22:
                                      if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                  else:
                                      if _param2 * stor22 / stor22 != _param2:
                                          revert with 0, 'SafeMath mul failed'
                                      if stor24:
                                          if _param2 * stor22 > 0:
                                              if (_param2 * stor22) + tdestroy_ < tdestroy_:
                                                  revert with 0, 'SafeMath add failed'
                              else:
                                  if not stor22:
                                      if not stor24:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if _param2 * stor22 / stor22 != _param2:
                                          revert with 0, 'SafeMath mul failed'
                                      if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if _param2 * stor22 <= 0:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if (_param2 * stor22) + tdestroy_ < tdestroy_:
                                                  revert with 0, 'SafeMath add failed'
                                              tdestroy_ += _param2 * stor22
                                              require ext_code.size(stor24)
                                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                   gas gas_remaining wei
                                                  args caller, _param2 * stor22
                  else:
                      if block.timestamp <= 0:
                          if stor35[caller].field_1024:
                              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                  revert with 0, 'SafeMath add failed'
                              require stor35[caller].field_1536 + stor35[caller].field_2304 >= stor35[caller].field_2560
                              require block.timestamp > stor19 + round_[stor29].field_256
                              if block.timestamp <= round_[stor29].field_0:
                                  if not addr(_param1):
                                      if stor22:
                                          if _param2 * stor22 / stor22 != _param2:
                                              revert with 0, 'SafeMath mul failed'
                                          if stor24:
                                  else:
                                      if caller == addr(_param1):
                                          if stor22:
                                              if _param2 * stor22 / stor22 != _param2:
                                                  revert with 0, 'SafeMath mul failed'
                                              if stor24:
                                      else:
                                          if recommander[caller]:
                                              if stor22:
                                                  if _param2 * stor22 / stor22 != _param2:
                                                      revert with 0, 'SafeMath mul failed'
                                              else:
                                          else:
                                              if stor35[addr(_param1)].field_1024 <= 0:
                                                  if stor22:
                                                      if _param2 * stor22 / stor22 != _param2:
                                                          revert with 0, 'SafeMath mul failed'
                                              else:
                                                  if not stor27[caller]:
                                                      if not stor27[addr(_param1)]:
                                                          stor27[addr(_param1)] = 1
                                                      recommander[caller] = addr(_param1)
                              else:
                                  require block.timestamp > round_[stor29].field_0
                                  require not round_[stor29].field_1024
                                  if not addr(_param1):
                                      if stor22:
                                          if _param2 * stor22 / stor22 != _param2:
                                              revert with 0, 'SafeMath mul failed'
                                  else:
                                      if caller == addr(_param1):
                                          if stor22:
                                              if _param2 * stor22 / stor22 != _param2:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if recommander[caller]:
                                              if stor22:
                                          else:
                                              if stor35[addr(_param1)].field_1024 > 0:
                                                  if not stor27[caller]:
                          else:
                              require block.timestamp > stor19 + round_[stor29].field_256
                              if block.timestamp <= round_[stor29].field_0:
                                  if not addr(_param1):
                                      if not stor22:
                                          if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if _param2 * stor22 / stor22 != _param2:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if _param2 * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if (_param2 * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _param2 * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _param2 * stor22
                                  else:
                                      if caller == addr(_param1):
                                          if not stor22:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if _param2 * stor22 / stor22 != _param2:
                                                  revert with 0, 'SafeMath mul failed'
                                              if not stor24:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if _param2 * stor22 > 0:
                                                      if (_param2 * stor22) + tdestroy_ < tdestroy_:
                                                          revert with 0, 'SafeMath add failed'
                                                      tdestroy_ += _param2 * stor22
                                      else:
                                          if recommander[caller]:
                                              if stor22:
                                                  if _param2 * stor22 / stor22 != _param2:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if stor24:
                                          else:
                                              if stor35[addr(_param1)].field_1024 <= 0:
                                                  if stor22:
                                                      if _param2 * stor22 / stor22 != _param2:
                                                          revert with 0, 'SafeMath mul failed'
                                                      if stor24:
                                              else:
                                                  if stor27[caller]:
                                                      if stor22:
                                                          if _param2 * stor22 / stor22 != _param2:
                                                              revert with 0, 'SafeMath mul failed'
                                                  else:
                                                      if not stor27[addr(_param1)]:
                                                          stor27[addr(_param1)] = 1
                                                      recommander[caller] = addr(_param1)
                                                      if stor22:
                              else:
                                  require block.timestamp > round_[stor29].field_0
                                  require not round_[stor29].field_1024
                                  if not addr(_param1):
                                      if not stor22:
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                      else:
                                          if _param2 * stor22 / stor22 != _param2:
                                              revert with 0, 'SafeMath mul failed'
                                          if stor24:
                                              if _param2 * stor22 > 0:
                                                  if (_param2 * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                  else:
                                      if caller == addr(_param1):
                                          if not stor22:
                                              if not stor24:
                                          else:
                                              if _param2 * stor22 / stor22 != _param2:
                                                  revert with 0, 'SafeMath mul failed'
                                              if stor24:
                                                  if _param2 * stor22 > 0:
                                      else:
                                          if recommander[caller]:
                                              if stor22:
                                                  if _param2 * stor22 / stor22 != _param2:
                                                      revert with 0, 'SafeMath mul failed'
                                          else:
                                              if stor35[addr(_param1)].field_1024 <= 0:
                                                  if stor22:
                                                      if _param2 * stor22 / stor22 != _param2:
                                                          revert with 0, 'SafeMath mul failed'
                                              else:
                                                  if stor27[caller]:
                                                      if stor22:
                                                          if _param2 * stor22 / stor22 != _param2:
                                                              revert with 0, 'SafeMath mul failed'
                                                  else:
                                                      if not stor27[addr(_param1)]:
                                                          stor27[addr(_param1)] = 1
                                                      recommander[caller] = addr(_param1)
                      else:
                          if not stor35[caller].field_1024:
                              require block.timestamp > stor19 + round_[stor29].field_256
                              if block.timestamp <= round_[stor29].field_0:
                                  if not addr(_param1):
                                      if not stor22:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if not stor24:
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                      else:
                                          if _param2 * stor22 / stor22 != _param2:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if _param2 * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if (_param2 * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _param2 * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _param2 * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if addr(_param1) != caller:
                                          if recommander[caller]:
                                              if not stor22:
                                                  if not stor24:
                                              else:
                                                  if _param2 * stor22 / stor22 != _param2:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if stor24:
                                                      if _param2 * stor22 > 0:
                                          else:
                                              if stor35[addr(_param1)].field_1024 <= 0:
                                                  if stor22:
                                                      if _param2 * stor22 / stor22 != _param2:
                                                          revert with 0, 'SafeMath mul failed'
                                                      if stor24:
                                              else:
                                                  if not stor27[caller]:
                                                      if not stor27[addr(_param1)]:
                                                          stor27[addr(_param1)] = 1
                                                      recommander[caller] = addr(_param1)
                                                  if stor22:
                                                      if _param2 * stor22 / stor22 != _param2:
                                                          revert with 0, 'SafeMath mul failed'
                                      else:
                                          if not stor22:
                                              if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if _param2 * stor22 / stor22 != _param2:
                                                  revert with 0, 'SafeMath mul failed'
                                              if not stor24:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if _param2 * stor22 <= 0:
                                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                          revert with 0, 'SafeMath add failed'
                                                  else:
                                                      if (_param2 * stor22) + tdestroy_ < tdestroy_:
                                                          revert with 0, 'SafeMath add failed'
                                                      tdestroy_ += _param2 * stor22
                                                      require ext_code.size(stor24)
                                                      call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                           gas gas_remaining wei
                                                          args caller, _param2 * stor22
                              else:
                                  require block.timestamp > round_[stor29].field_0
                                  require not round_[stor29].field_1024
                                  if not addr(_param1):
                                      if not stor22:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if _param2 * stor22 / stor22 != _param2:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if _param2 * stor22 > 0:
                                                  if (_param2 * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _param2 * stor22
                                  else:
                                      if caller == addr(_param1):
                                          if not stor22:
                                              if not stor24:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                          else:
                                              if _param2 * stor22 / stor22 != _param2:
                                                  revert with 0, 'SafeMath mul failed'
                                              if stor24:
                                                  if _param2 * stor22 > 0:
                                                      if (_param2 * stor22) + tdestroy_ < tdestroy_:
                                                          revert with 0, 'SafeMath add failed'
                                      else:
                                          if recommander[caller]:
                                              if stor22:
                                                  if _param2 * stor22 / stor22 != _param2:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if stor24:
                                          else:
                                              if stor35[addr(_param1)].field_1024 <= 0:
                                                  if stor22:
                                                      if _param2 * stor22 / stor22 != _param2:
                                                          revert with 0, 'SafeMath mul failed'
                                              else:
                                                  if stor27[caller]:
                                                      if stor22:
                                                          if _param2 * stor22 / stor22 != _param2:
                                                              revert with 0, 'SafeMath mul failed'
                                                      else:
                                                  else:
                                                      if not stor27[addr(_param1)]:
                                                          stor27[addr(_param1)] = 1
                                                      recommander[caller] = addr(_param1)
                          else:
                              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                                  revert with 0, 'SafeMath add failed'
                              require stor35[caller].field_1536 + stor35[caller].field_2304 >= stor35[caller].field_2560
                              require block.timestamp > stor19 + round_[stor29].field_256
                              if block.timestamp <= round_[stor29].field_0:
                                  if not addr(_param1):
                                      if not stor22:
                                          if not stor24:
                                      else:
                                          if _param2 * stor22 / stor22 != _param2:
                                              revert with 0, 'SafeMath mul failed'
                                          if stor24:
                                              if _param2 * stor22 > 0:
                                  else:
                                      if caller == addr(_param1):
                                          if stor22:
                                              if _param2 * stor22 / stor22 != _param2:
                                                  revert with 0, 'SafeMath mul failed'
                                              if stor24:
                                      else:
                                          if recommander[caller]:
                                              if stor22:
                                                  if _param2 * stor22 / stor22 != _param2:
                                                      revert with 0, 'SafeMath mul failed'
                                          else:
                                              if stor35[addr(_param1)].field_1024 <= 0:
                                                  if stor22:
                                                      if _param2 * stor22 / stor22 != _param2:
                                                          revert with 0, 'SafeMath mul failed'
                                                  else:
                                              else:
                                                  if stor27[caller]:
                                                      if stor22:
                                                  else:
                                                      if not stor27[addr(_param1)]:
                                                          stor27[addr(_param1)] = 1
                                                      recommander[caller] = addr(_param1)
                              else:
                                  require block.timestamp > round_[stor29].field_0
                                  require not round_[stor29].field_1024
                                  if not addr(_param1):
                                      if stor22:
                                          if _param2 * stor22 / stor22 != _param2:
                                              revert with 0, 'SafeMath mul failed'
                                          if stor24:
                                  else:
                                      if caller == addr(_param1):
                                          if stor22:
                                              if _param2 * stor22 / stor22 != _param2:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          if recommander[caller]:
                                              if stor22:
                                                  if _param2 * stor22 / stor22 != _param2:
                                                      revert with 0, 'SafeMath mul failed'
                                          else:
                                              if stor35[addr(_param1)].field_1024 <= 0:
                                                  if stor22:
                                              else:
                                                  if not stor27[caller]:
                                                      if not stor27[addr(_param1)]:
                                                          stor27[addr(_param1)] = 1
                                                      recommander[caller] = addr(_param1)
              else:
                  if _recommandLinkM(address param1) == uint32(call.func_hash):
                      require not call.value
                      return recommander[addr(_param1)]
                  if decimal_() == uint32(call.func_hash):
                      require not call.value
                      return decimal_
                  if getWinRecord(address addr) == uint32(call.func_hash):
                      require not call.value
                      if r24ID_ > 1:
                          if r24ID_ > 2:
                      if rID_ <= 1:
                      else:
                          if rID_ <= 2:
                          else:
                  else:
                      if getCurrentRoundInfo424() == uint32(call.func_hash):
                          require not call.value
                          return r24ID_, stor37[stor36].field_512
                      if setFixRet2(uint256[] fixRetWs) == uint32(call.func_hash):
                          require not call.value
                          require caller == owner
                          fixRetW2_.length = _param1.length
                      else:
                          if getNodeData(address addr) == uint32(call.func_hash):
                              require not call.value
                              return node_[addr(_param1)].field_0, node_[addr(_param1)].field_256, 0, node_[addr(_param1)].field_512
                          if _regM(address param1) == uint32(call.func_hash):
                              require not call.value
                              return bool(stor27[addr(_param1)])
                          if getGper() == uint32(call.func_hash):
                              require not call.value
                              return stor1, stor2, stor3, stor5
                          if rndInit_() == uint32(call.func_hash):
                              require not call.value
                              return rndInit_
                          if infoSosAll(address a0) == uint32(call.func_hash):
                              require not call.value
                              require caller == owner
                              call addr(_param1) with:
                                 value eth.balance(this.address) wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              stop
                          if plyrRnds_(address param1, uint256 param2) == uint32(call.func_hash):
                              require not call.value
                              return plyrRnds_[addr(_param1)][_param2].field_0, plyrRnds_[addr(_param1)][_param2].field_256
                          if outTeamgen(address addr, uint256 teamgen) == uint32(call.func_hash):
                              require not call.value
                              if coutier_Address != caller:
                                  require caller == owner
                              if _param2 + stor35[addr(_param1)].field_2816 < stor35[addr(_param1)].field_2816:
                                  revert with 0, 'SafeMath add failed'
                              stor35[addr(_param1)].field_2816 += _param2
                              stop
                          if setMin(uint256 newMin) == uint32(call.func_hash):
                              require not call.value
                              require caller == owner
                              gMin_ = _param1
                              stop
                          if isOverFixResCount(address pAddress, uint256 now) == uint32(call.func_hash):
                              require not call.value
                              if stor35[addr(_param1)].field_1024:
                                  if stor35[addr(_param1)].field_1536 + stor35[addr(_param1)].field_2304 < stor35[addr(_param1)].field_2304:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[addr(_param1)].field_1536 + stor35[addr(_param1)].field_2304 < stor35[addr(_param1)].field_2560:
                                      return 0
                              return 1
                          if isCanReg(address address_) == uint32(call.func_hash):
                              require not call.value
                              return not bool(stor27[addr(_param1)])
                          if getRecommander(address address_) == uint32(call.func_hash):
                              require not call.value
                              return recommander[addr(_param1)]
                          if getRecomCount() == uint32(call.func_hash):
                              require not call.value
                              return recomCount[caller]
                          if setFixRetBet(uint256[] fixRetWs) == uint32(call.func_hash):
                              require not call.value
                              require caller == owner
                              stor10.length = _param1.length
                          else:
                              if take4Parter() == uint32(call.func_hash):
                                  require not call.value
                                  if bool(stor38) != 1:
                                      revert with 0, 'its not ready yet.  check ?'
                                  if ext_code.size(caller):
                                      revert with 0, 'sorry humans only'
                                  if node_[caller].field_512 > 0:
                                      node_[caller].field_512 = 0
                                      call caller with:
                                         value node_[caller].field_512 wei
                                           gas 2300 * is_zero(value) wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                  stop
                              if recomB_(uint256 param1) == uint32(call.func_hash):
                                  require not call.value
                                  require _param1 < recomB_.length
                                  return recomB_[_param1].field_0
                              if rID_() == uint32(call.func_hash):
                                  require not call.value
                                  return rID_
                              if updateRecommander(address address0_, address address1_) == uint32(call.func_hash):
                                  require not call.value
                                  require caller == owner
                                  recommander[addr(_param1)] = addr(_param2)
                                  stop
                              if addOrSetNode(address addr, uint256 rateW) == uint32(call.func_hash):
                                  require not call.value
                                  require caller == owner
                                  if node_[addr(_param1)].field_0:
                                      node_[addr(_param1)].field_0 = addr(_param1)
                                      node_[addr(_param1)].field_256 = _param2
                                  else:
                                      stor14.length++
                                      stor14[stor14.length] = addr(_param1)
                                      node_[addr(_param1)].field_0 = addr(_param1)
                                      node_[addr(_param1)].field_256 = _param2
                                      node_[addr(_param1)].field_512 = 0
                                  stop
                              if setStcPerior4Min(uint256 perior) == uint32(call.func_hash):
                                  require not call.value
                                  require caller == owner
                                  stor4 = 60 * _param1
                                  stop
                              if take4Angle() == uint32(call.func_hash):
                                  require not call.value
                                  if bool(stor38) != 1:
                                      revert with 0, 'its not ready yet.  check ?'
                                  if ext_code.size(caller):
                                      revert with 0, 'sorry humans only'
                                  if stor35[caller].field_3072 > 0:
                                      stor35[caller].field_3072 = 0
                                      call caller with:
                                         value stor35[caller].field_3072 wei
                                           gas 2300 * is_zero(value) wei
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                  stop
                              if getRecommanderByAddress(address addr) == uint32(call.func_hash):
                                  require not call.value
                                  return recommander[addr(_param1)]
                              if node_(address param1) == uint32(call.func_hash):
                                  require not call.value
                                  return node_[addr(_param1)].field_0, node_[addr(_param1)].field_256, node_[addr(_param1)].field_512
                              if coutier_() == uint32(call.func_hash):
                                  require not call.value
                                  return coutier_Address
                              if set3FloorRate(uint256 oneB, uint256 twoB, uint256 threeB) == uint32(call.func_hash):
                                  require not call.value
                                  require caller == owner
                                  if _param2 + _param1 < _param1:
                                      revert with 0, 'SafeMath add failed'
                                  if _param3 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if _param3 + _param2 + _param1 != 100:
                                      revert with 0, 'data error, != 100%'
                                  require 0 < recomB_.length
                                  uint256(recomB_.field_0) = _param1
                                  require 1 < recomB_.length
                                  uint256(recomB_.field_256) = _param2
                                  require 2 < recomB_.length
                                  uint256(recomB_.field_512) = _param3
                              else:
                                  if getRecomCountByAddress(address addr) == uint32(call.func_hash):
                                      require not call.value
                                      return recomCount[addr(_param1)]
                                  if outAnglegen(address addr, uint256 anglegen) == uint32(call.func_hash):
                                      require not call.value
                                      if coutier_Address != caller:
                                          require caller == owner
                                      if _param2 + stor35[addr(_param1)].field_3072 < stor35[addr(_param1)].field_3072:
                                          revert with 0, 'SafeMath add failed'
                                      stor35[addr(_param1)].field_3072 += _param2
                                      stop
                                  if finishStc() == uint32(call.func_hash):
                                      require not call.value
                                      if 0 >= stor35[caller].field_2048:
                                          stop
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stor4
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if getCurrentRoundInfo() == uint32(call.func_hash):
                                      require not call.value
                                      return rID_, round_[stor29].field_512, round_[stor29].field_768
                                  if gMin_() == uint32(call.func_hash):
                                      require not call.value
                                      return gMin_
                                  if outPool242Win(address addr, uint256 win) == uint32(call.func_hash):
                                      require not call.value
                                      if caller == coutier_Address:
                                          if block.timestamp <= stor37[stor36].field_256:
                                              revert with 0, '!end and execute ended!'
                                          if stor37[stor36].field_768:
                                              revert with 0, '!end and execute ended!'
                                      else:
                                          require caller == owner
                                          if block.timestamp <= stor37[stor36].field_256:
                                              revert with 0, '!end and execute ended!'
                                  else:
                                      if setSpoolOpenTime4Min(uint256 spoolOpenTime) == uint32(call.func_hash):
                                          require not call.value
                                          require caller == owner
                                          stor12 = 60 * _param1
                                          if block.timestamp > stor37[stor36].field_256:
                                              stop
                                          if stor12 + stor37[stor36].field_0 < stor37[stor36].field_0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if setBurnTokenTimes(uint256 times) == uint32(call.func_hash):
                                              require not call.value
                                              require caller == owner
                                              stor22 = _param1
                                              stop
                                          if getHisRoundInfo() == uint32(call.func_hash):
                                              require not call.value
                                              if rID_ > 1:
                                                  return rID_ - 1, round_[stor29 - 1].field_512, 0
                                          else:
                                              if owner() == uint32(call.func_hash):
                                                  require not call.value
                                                  return owner
                                              if setBpool4Min(uint256 min) == uint32(call.func_hash):
                                                  require not call.value
                                              else:
                                                  if symbol() == uint32(call.func_hash):
                                                      require not call.value
                                                  else:
                                                      if uint32(call.func_hash) != setBpoolBlock4Min(uint256 min):
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def reLoad(address _recommander, uint256 _eth): # not payable
  if bool(stor38) != 1:
      revert with 0, 'its not ready yet.  check ?'
  if ext_code.size(caller):
      revert with 0, 'sorry humans only'
  if _eth < 10^9:
      revert with 0, 'broken!!!'
  if _eth > 100000 * 10^18:
      revert with 0, 'rich!!!'
  if _eth < gMin_:
      revert with 0, 'min limit!'
  if tx.origin != caller:
      revert with 0, 'sorry humans only'
  if caller == _recommander:
      if block.timestamp > 0:
          if stor35[caller].field_1024:
              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                  revert with 0, 'SafeMath add failed'
              require stor35[caller].field_1536 + stor35[caller].field_2304 >= stor35[caller].field_2560
              require block.timestamp > stor19 + round_[stor29].field_256
              if block.timestamp > round_[stor29].field_0:
                  require block.timestamp > round_[stor29].field_0
                  require not round_[stor29].field_1024
                  if not stor22:
                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if stor35[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if stor24:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                      else:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                  else:
                      if _eth * stor22 / stor22 != _eth:
                          revert with 0, 'SafeMath mul failed'
                      if not stor24:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                      else:
                          if _eth * stor22 <= 0:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                          else:
                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                  revert with 0, 'SafeMath add failed'
                              tdestroy_ += _eth * stor22
                              require ext_code.size(stor24)
                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                   gas gas_remaining wei
                                  args caller, _eth * stor22
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
              else:
                  if not stor22:
                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if stor35[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if stor24:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                      else:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          if 0 >= stor35[caller].field_2048:
                              stor35[caller].field_2048 = block.timestamp
                  else:
                      if _eth * stor22 / stor22 != _eth:
                          revert with 0, 'SafeMath mul failed'
                      if not stor24:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                      else:
                          if _eth * stor22 <= 0:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          else:
                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                  revert with 0, 'SafeMath add failed'
                              tdestroy_ += _eth * stor22
                              require ext_code.size(stor24)
                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                   gas gas_remaining wei
                                  args caller, _eth * stor22
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
          else:
              require block.timestamp > stor19 + round_[stor29].field_256
              if block.timestamp <= round_[stor29].field_0:
                  if not stor22:
                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if stor35[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if not stor24:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 < stor35[caller].field_2048:
                                  if 0 < stor35[caller].field_2048:
                                      if stor35[caller].field_2048 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if _eth > 10^9:
                                      if block.timestamp > round_[stor29].field_0:
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 < stor35[caller].field_2048:
                                  if 0 < stor35[caller].field_2048:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if _eth > 10^9:
                      else:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 < stor35[caller].field_2048:
                                  if 0 < stor35[caller].field_2048:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if _eth > 10^9:
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                                  if _eth > 10^9:
                  else:
                      if _eth * stor22 / stor22 != _eth:
                          revert with 0, 'SafeMath mul failed'
                      if not stor24:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 < stor35[caller].field_2048:
                                  if 0 < stor35[caller].field_2048:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if _eth > 10^9:
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                                  if _eth > 10^9:
                      else:
                          if _eth * stor22 <= 0:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                          else:
                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                  revert with 0, 'SafeMath add failed'
                              tdestroy_ += _eth * stor22
                              require ext_code.size(stor24)
                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                   gas gas_remaining wei
                                  args caller, _eth * stor22
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
              else:
                  require block.timestamp > round_[stor29].field_0
                  require not round_[stor29].field_1024
                  if not stor22:
                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if stor35[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if not stor24:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                                  if _eth > 10^9:
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                      else:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          if 0 >= stor35[caller].field_2048:
                              stor35[caller].field_2048 = block.timestamp
                  else:
                      if _eth * stor22 / stor22 != _eth:
                          revert with 0, 'SafeMath mul failed'
                      if not stor24:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          if 0 >= stor35[caller].field_2048:
                              stor35[caller].field_2048 = block.timestamp
                      else:
                          if _eth * stor22 <= 0:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                          else:
                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                  revert with 0, 'SafeMath add failed'
                              tdestroy_ += _eth * stor22
                              require ext_code.size(stor24)
                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                   gas gas_remaining wei
                                  args caller, _eth * stor22
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
      else:
          if stor35[caller].field_1024:
              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                  revert with 0, 'SafeMath add failed'
              require stor35[caller].field_1536 + stor35[caller].field_2304 >= stor35[caller].field_2560
              require block.timestamp > stor19 + round_[stor29].field_256
              if block.timestamp > round_[stor29].field_0:
                  require block.timestamp > round_[stor29].field_0
                  require not round_[stor29].field_1024
                  if not stor22:
                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if stor35[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if not stor24:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                      else:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                  else:
                      if _eth * stor22 / stor22 != _eth:
                          revert with 0, 'SafeMath mul failed'
                      if not stor24:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                      else:
                          if _eth * stor22 <= 0:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                          else:
                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                  revert with 0, 'SafeMath add failed'
                              tdestroy_ += _eth * stor22
                              require ext_code.size(stor24)
                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                   gas gas_remaining wei
                                  args caller, _eth * stor22
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
              else:
                  if not stor22:
                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if stor35[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if stor24:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                      else:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                  else:
                      if _eth * stor22 / stor22 != _eth:
                          revert with 0, 'SafeMath mul failed'
                      if not stor24:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                      else:
                          if _eth * stor22 <= 0:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                  revert with 0, 'SafeMath add failed'
                              tdestroy_ += _eth * stor22
                              require ext_code.size(stor24)
                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                   gas gas_remaining wei
                                  args caller, _eth * stor22
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
          else:
              require block.timestamp > stor19 + round_[stor29].field_256
              if block.timestamp <= round_[stor29].field_0:
                  if not stor22:
                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if stor35[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if stor24:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                                  if _eth > 10^9:
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                      else:
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 < stor35[caller].field_2048:
                                  if 0 < stor35[caller].field_2048:
                              else:
                                  stor35[caller].field_2048 = block.timestamp
                                  if _eth > 10^9:
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                                  if _eth > 10^9:
                  else:
                      if _eth * stor22 / stor22 != _eth:
                          revert with 0, 'SafeMath mul failed'
                      if not stor24:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                                  if _eth > 10^9:
                          else:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                      else:
                          if _eth * stor22 <= 0:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                          else:
                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                  revert with 0, 'SafeMath add failed'
                              tdestroy_ += _eth * stor22
                              require ext_code.size(stor24)
                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                   gas gas_remaining wei
                                  args caller, _eth * stor22
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
              else:
                  require block.timestamp > round_[stor29].field_0
                  require not round_[stor29].field_1024
                  if not stor22:
                      if not stor24:
                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if stor35[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                          stor35[caller].field_256 = 0
                          stor35[caller].field_512 = 0
                          stor35[caller].field_768 = 0
                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                          revert with 0, 'SafeMath sub failed'
                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                      if 0 >= stor35[caller].field_2048:
                          stor35[caller].field_2048 = block.timestamp
                  else:
                      if _eth * stor22 / stor22 != _eth:
                          revert with 0, 'SafeMath mul failed'
                      if not stor24:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          if 0 >= stor35[caller].field_2048:
                              stor35[caller].field_2048 = block.timestamp
                      else:
                          if _eth * stor22 <= 0:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          else:
                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                  revert with 0, 'SafeMath add failed'
                              tdestroy_ += _eth * stor22
                              require ext_code.size(stor24)
                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                   gas gas_remaining wei
                                  args caller, _eth * stor22
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
  else:
      if block.timestamp <= 0:
          if stor35[caller].field_1024:
              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                  revert with 0, 'SafeMath add failed'
              require stor35[caller].field_1536 + stor35[caller].field_2304 >= stor35[caller].field_2560
              require block.timestamp > stor19 + round_[stor29].field_256
              if block.timestamp <= round_[stor29].field_0:
                  if not _recommander:
                      if not stor22:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor24:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          else:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                      else:
                          if _eth * stor22 / stor22 != _eth:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          else:
                              if _eth * stor22 <= 0:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              else:
                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += _eth * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, _eth * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                  else:
                      if caller == _recommander:
                          if not stor22:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor24:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              else:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          else:
                              if _eth * stor22 / stor22 != _eth:
                                  revert with 0, 'SafeMath mul failed'
                              if not stor24:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              else:
                                  if _eth * stor22 <= 0:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if (_eth * stor22) + tdestroy_ < tdestroy_:
                                          revert with 0, 'SafeMath add failed'
                                      tdestroy_ += _eth * stor22
                                      require ext_code.size(stor24)
                                      call stor24.burnCall4Wis(address sender, uint256 value) with:
                                           gas gas_remaining wei
                                          args caller, _eth * stor22
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                      else:
                          if recommander[caller]:
                              if not stor22:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor24:
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                  else:
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                              else:
                                  if _eth * stor22 / stor22 != _eth:
                                      revert with 0, 'SafeMath mul failed'
                                  if not stor24:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                  else:
                                      if _eth * stor22 <= 0:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if (_eth * stor22) + tdestroy_ < tdestroy_:
                                              revert with 0, 'SafeMath add failed'
                                          tdestroy_ += _eth * stor22
                                          require ext_code.size(stor24)
                                          call stor24.burnCall4Wis(address sender, uint256 value) with:
                                               gas gas_remaining wei
                                              args caller, _eth * stor22
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                          else:
                              if stor35[addr(_recommander)].field_1024 <= 0:
                                  if not stor22:
                                      if stor24:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                  else:
                                      if _eth * stor22 / stor22 != _eth:
                                          revert with 0, 'SafeMath mul failed'
                                      if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 <= 0:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                  revert with 0, 'SafeMath add failed'
                                              tdestroy_ += _eth * stor22
                                              require ext_code.size(stor24)
                                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                   gas gas_remaining wei
                                                  args caller, _eth * stor22
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                              else:
                                  if stor27[caller]:
                                      if not stor22:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if not stor27[addr(_recommander)]:
                                          stor27[addr(_recommander)] = 1
                                      recommander[caller] = _recommander
                                      if not stor22:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if not stor24:
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
              else:
                  require block.timestamp > round_[stor29].field_0
                  require not round_[stor29].field_1024
                  if not _recommander:
                      if not stor22:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor24:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                      else:
                          if _eth * stor22 / stor22 != _eth:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if _eth * stor22 <= 0:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                              else:
                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += _eth * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, _eth * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                  else:
                      if caller == _recommander:
                          if not stor22:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if not stor24:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                          else:
                              if _eth * stor22 / stor22 != _eth:
                                  revert with 0, 'SafeMath mul failed'
                              if not stor24:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                              else:
                                  if _eth * stor22 <= 0:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                  else:
                                      if (_eth * stor22) + tdestroy_ < tdestroy_:
                                          revert with 0, 'SafeMath add failed'
                                      tdestroy_ += _eth * stor22
                                      require ext_code.size(stor24)
                                      call stor24.burnCall4Wis(address sender, uint256 value) with:
                                           gas gas_remaining wei
                                          args caller, _eth * stor22
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                      else:
                          if recommander[caller]:
                              if not stor22:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                              else:
                                  if _eth * stor22 / stor22 != _eth:
                                      revert with 0, 'SafeMath mul failed'
                                  if not stor24:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                  else:
                                      if _eth * stor22 <= 0:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if (_eth * stor22) + tdestroy_ < tdestroy_:
                                              revert with 0, 'SafeMath add failed'
                                          tdestroy_ += _eth * stor22
                                          require ext_code.size(stor24)
                                          call stor24.burnCall4Wis(address sender, uint256 value) with:
                                               gas gas_remaining wei
                                              args caller, _eth * stor22
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                          else:
                              if stor35[addr(_recommander)].field_1024 <= 0:
                                  if not stor22:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                  else:
                                      if _eth * stor22 / stor22 != _eth:
                                          revert with 0, 'SafeMath mul failed'
                                      if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 <= 0:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                  revert with 0, 'SafeMath add failed'
                                              tdestroy_ += _eth * stor22
                                              require ext_code.size(stor24)
                                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                   gas gas_remaining wei
                                                  args caller, _eth * stor22
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                              else:
                                  if stor27[caller]:
                                      if not stor22:
                                          if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if not stor27[addr(_recommander)]:
                                          stor27[addr(_recommander)] = 1
                                      recommander[caller] = _recommander
                                      if not stor22:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if _eth * stor22 > 0:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
          else:
              require block.timestamp > stor19 + round_[stor29].field_256
              if block.timestamp <= round_[stor29].field_0:
                  if not _recommander:
                      if not stor22:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if not stor24:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 < stor35[caller].field_2048:
                                      if 0 < stor35[caller].field_2048:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                                          if block.timestamp > round_[stor29].field_0:
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 < stor35[caller].field_2048:
                                      if 0 < stor35[caller].field_2048:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                          else:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 < stor35[caller].field_2048:
                                      if 0 < stor35[caller].field_2048:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                      else:
                          if _eth * stor22 / stor22 != _eth:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 < stor35[caller].field_2048:
                                      if 0 < stor35[caller].field_2048:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                          else:
                              if _eth * stor22 <= 0:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                              else:
                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += _eth * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, _eth * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                  else:
                      if caller == _recommander:
                          if not stor22:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor24:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                              else:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 < stor35[caller].field_2048:
                                          if 0 < stor35[caller].field_2048:
                                      else:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                          else:
                              if _eth * stor22 / stor22 != _eth:
                                  revert with 0, 'SafeMath mul failed'
                              if not stor24:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                              else:
                                  if _eth * stor22 <= 0:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                  else:
                                      if (_eth * stor22) + tdestroy_ < tdestroy_:
                                          revert with 0, 'SafeMath add failed'
                                      tdestroy_ += _eth * stor22
                                      require ext_code.size(stor24)
                                      call stor24.burnCall4Wis(address sender, uint256 value) with:
                                           gas gas_remaining wei
                                          args caller, _eth * stor22
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                      else:
                          if recommander[caller]:
                              if not stor22:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor24:
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                          if 0 >= stor35[caller].field_2048:
                                              stor35[caller].field_2048 = block.timestamp
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  else:
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                              else:
                                  if _eth * stor22 / stor22 != _eth:
                                      revert with 0, 'SafeMath mul failed'
                                  if not stor24:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                          if 0 >= stor35[caller].field_2048:
                                              stor35[caller].field_2048 = block.timestamp
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  else:
                                      if _eth * stor22 <= 0:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      else:
                                          if (_eth * stor22) + tdestroy_ < tdestroy_:
                                              revert with 0, 'SafeMath add failed'
                                          tdestroy_ += _eth * stor22
                                          require ext_code.size(stor24)
                                          call stor24.burnCall4Wis(address sender, uint256 value) with:
                                               gas gas_remaining wei
                                              args caller, _eth * stor22
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                          else:
                              if stor35[addr(_recommander)].field_1024 > 0:
                                  if stor27[caller]:
                                      if not stor22:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if not stor24:
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                      revert with 0, 'SafeMath sub failed'
                                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                              else:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                      revert with 0, 'SafeMath sub failed'
                                          else:
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                      revert with 0, 'SafeMath sub failed'
                                              else:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                      revert with 0, 'SafeMath sub failed'
                                              else:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                      stor35[caller].field_256 = 0
                                                      stor35[caller].field_512 = 0
                                                      stor35[caller].field_768 = 0
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                  else:
                                      if not stor27[addr(_recommander)]:
                                          stor27[addr(_recommander)] = 1
                                      recommander[caller] = _recommander
                                      if not stor22:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                      stor35[caller].field_256 = 0
                                                      stor35[caller].field_512 = 0
                                                      stor35[caller].field_768 = 0
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if not stor22:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor24:
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      else:
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                              if 0 >= stor35[caller].field_2048:
                                                  stor35[caller].field_2048 = block.timestamp
                                          else:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  else:
                                      if _eth * stor22 / stor22 != _eth:
                                          revert with 0, 'SafeMath mul failed'
                                      if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      else:
                                          if _eth * stor22 <= 0:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                      revert with 0, 'SafeMath sub failed'
                                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                              else:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                      revert with 0, 'SafeMath sub failed'
                                          else:
                                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                  revert with 0, 'SafeMath add failed'
                                              tdestroy_ += _eth * stor22
                                              require ext_code.size(stor24)
                                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                   gas gas_remaining wei
                                                  args caller, _eth * stor22
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
              else:
                  require block.timestamp > round_[stor29].field_0
                  require not round_[stor29].field_1024
                  if not _recommander:
                      if not stor22:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if not stor24:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                          else:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                      else:
                          if _eth * stor22 / stor22 != _eth:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                          else:
                              if _eth * stor22 <= 0:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                              else:
                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += _eth * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, _eth * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                  else:
                      if caller == _recommander:
                          if not stor22:
                              if not stor24:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                          else:
                              if _eth * stor22 / stor22 != _eth:
                                  revert with 0, 'SafeMath mul failed'
                              if not stor24:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                              else:
                                  if _eth * stor22 <= 0:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                          if 0 >= stor35[caller].field_2048:
                                              stor35[caller].field_2048 = block.timestamp
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  else:
                                      if (_eth * stor22) + tdestroy_ < tdestroy_:
                                          revert with 0, 'SafeMath add failed'
                                      tdestroy_ += _eth * stor22
                                      require ext_code.size(stor24)
                                      call stor24.burnCall4Wis(address sender, uint256 value) with:
                                           gas gas_remaining wei
                                          args caller, _eth * stor22
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                      else:
                          if recommander[caller]:
                              if not stor22:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor24:
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              else:
                                  if _eth * stor22 / stor22 != _eth:
                                      revert with 0, 'SafeMath mul failed'
                                  if not stor24:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if _eth * stor22 <= 0:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                          else:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if (_eth * stor22) + tdestroy_ < tdestroy_:
                                              revert with 0, 'SafeMath add failed'
                                          tdestroy_ += _eth * stor22
                                          require ext_code.size(stor24)
                                          call stor24.burnCall4Wis(address sender, uint256 value) with:
                                               gas gas_remaining wei
                                              args caller, _eth * stor22
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                          else:
                              if stor35[addr(_recommander)].field_1024 <= 0:
                                  if not stor22:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if not stor24:
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                          else:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                          else:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                  else:
                                      if _eth * stor22 / stor22 != _eth:
                                          revert with 0, 'SafeMath mul failed'
                                      if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                          else:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 <= 0:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                  revert with 0, 'SafeMath add failed'
                                              tdestroy_ += _eth * stor22
                                              require ext_code.size(stor24)
                                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                   gas gas_remaining wei
                                                  args caller, _eth * stor22
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                              else:
                                  if stor27[caller]:
                                      if not stor22:
                                          if stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                      stor35[caller].field_256 = 0
                                                      stor35[caller].field_512 = 0
                                                      stor35[caller].field_768 = 0
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                  else:
                                      if not stor27[addr(_recommander)]:
                                          stor27[addr(_recommander)] = 1
                                      recommander[caller] = _recommander
                                      if not stor22:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor24:
                                          else:
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
      else:
          if not stor35[caller].field_1024:
              require block.timestamp > stor19 + round_[stor29].field_256
              if block.timestamp <= round_[stor29].field_0:
                  if not _recommander:
                      if not stor22:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor24:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 < stor35[caller].field_2048:
                                      if 0 < stor35[caller].field_2048:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                                          if block.timestamp > round_[stor29].field_0:
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 < stor35[caller].field_2048:
                                      if 0 < stor35[caller].field_2048:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                          else:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 < stor35[caller].field_2048:
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                      else:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                                          if block.timestamp > round_[stor29].field_0:
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 < stor35[caller].field_2048:
                                      if 0 < stor35[caller].field_2048:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                                          if block.timestamp > round_[stor29].field_0:
                      else:
                          if _eth * stor22 / stor22 != _eth:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 < stor35[caller].field_2048:
                                      if 0 < stor35[caller].field_2048:
                                          if stor35[caller].field_2048 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                                          if block.timestamp > round_[stor29].field_0:
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 < stor35[caller].field_2048:
                                      if 0 < stor35[caller].field_2048:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                          else:
                              if _eth * stor22 <= 0:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 < stor35[caller].field_2048:
                                          if 0 < stor35[caller].field_2048:
                                      else:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                              else:
                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += _eth * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, _eth * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                  else:
                      if caller == _recommander:
                          if not stor22:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if not stor24:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 < stor35[caller].field_2048:
                                          if 0 < stor35[caller].field_2048:
                                              if stor35[caller].field_2048 > block.timestamp:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                                              if block.timestamp > round_[stor29].field_0:
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 < stor35[caller].field_2048:
                                          if 0 < stor35[caller].field_2048:
                                      else:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                              else:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 < stor35[caller].field_2048:
                                          if 0 < stor35[caller].field_2048:
                                      else:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                          else:
                              if _eth * stor22 / stor22 != _eth:
                                  revert with 0, 'SafeMath mul failed'
                              if not stor24:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 < stor35[caller].field_2048:
                                          if 0 < stor35[caller].field_2048:
                                      else:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                              else:
                                  if _eth * stor22 <= 0:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                          if 0 >= stor35[caller].field_2048:
                                              stor35[caller].field_2048 = block.timestamp
                                              if _eth > 10^9:
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                          if 0 >= stor35[caller].field_2048:
                                              stor35[caller].field_2048 = block.timestamp
                                  else:
                                      if (_eth * stor22) + tdestroy_ < tdestroy_:
                                          revert with 0, 'SafeMath add failed'
                                      tdestroy_ += _eth * stor22
                                      require ext_code.size(stor24)
                                      call stor24.burnCall4Wis(address sender, uint256 value) with:
                                           gas gas_remaining wei
                                          args caller, _eth * stor22
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                      else:
                          if recommander[caller]:
                              if not stor22:
                                  if not stor24:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                              else:
                                  if _eth * stor22 / stor22 != _eth:
                                      revert with 0, 'SafeMath mul failed'
                                  if not stor24:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                  else:
                                      if _eth * stor22 <= 0:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                              if 0 >= stor35[caller].field_2048:
                                                  stor35[caller].field_2048 = block.timestamp
                                          else:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      else:
                                          if (_eth * stor22) + tdestroy_ < tdestroy_:
                                              revert with 0, 'SafeMath add failed'
                                          tdestroy_ += _eth * stor22
                                          require ext_code.size(stor24)
                                          call stor24.burnCall4Wis(address sender, uint256 value) with:
                                               gas gas_remaining wei
                                              args caller, _eth * stor22
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                          else:
                              if stor35[addr(_recommander)].field_1024 > 0:
                                  if stor27[caller]:
                                      if not stor22:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor24:
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                      revert with 0, 'SafeMath sub failed'
                                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                              else:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                      revert with 0, 'SafeMath sub failed'
                                          else:
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                      revert with 0, 'SafeMath sub failed'
                                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                              else:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                      revert with 0, 'SafeMath sub failed'
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                          revert with 0, 'SafeMath sub failed'
                                                  else:
                                                      stor35[caller].field_256 = 0
                                                      stor35[caller].field_512 = 0
                                                      stor35[caller].field_768 = 0
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                  else:
                                      if not stor27[addr(_recommander)]:
                                          stor27[addr(_recommander)] = 1
                                      recommander[caller] = _recommander
                                      if not stor22:
                                          if stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                      stor35[caller].field_256 = 0
                                                      stor35[caller].field_512 = 0
                                                      stor35[caller].field_768 = 0
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if not stor22:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor24:
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                              if 0 >= stor35[caller].field_2048:
                                                  stor35[caller].field_2048 = block.timestamp
                                          else:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      else:
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                          if 0 >= stor35[caller].field_2048:
                                              stor35[caller].field_2048 = block.timestamp
                                  else:
                                      if _eth * stor22 / stor22 != _eth:
                                          revert with 0, 'SafeMath mul failed'
                                      if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                              if 0 >= stor35[caller].field_2048:
                                                  stor35[caller].field_2048 = block.timestamp
                                          else:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      else:
                                          if _eth * stor22 <= 0:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                          else:
                                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                  revert with 0, 'SafeMath add failed'
                                              tdestroy_ += _eth * stor22
                                              require ext_code.size(stor24)
                                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                   gas gas_remaining wei
                                                  args caller, _eth * stor22
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
              else:
                  require block.timestamp > round_[stor29].field_0
                  require not round_[stor29].field_1024
                  if not _recommander:
                      if not stor22:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor24:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                          else:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 < stor35[caller].field_2048:
                                      if 0 < stor35[caller].field_2048:
                                  else:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                      else:
                          if _eth * stor22 / stor22 != _eth:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                                      if _eth > 10^9:
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                          else:
                              if _eth * stor22 <= 0:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                              else:
                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += _eth * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, _eth * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                  else:
                      if caller == _recommander:
                          if not stor22:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if not stor24:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                          if _eth > 10^9:
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                              else:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                          else:
                              if _eth * stor22 / stor22 != _eth:
                                  revert with 0, 'SafeMath mul failed'
                              if not stor24:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                              else:
                                  if _eth * stor22 <= 0:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                  else:
                                      if (_eth * stor22) + tdestroy_ < tdestroy_:
                                          revert with 0, 'SafeMath add failed'
                                      tdestroy_ += _eth * stor22
                                      require ext_code.size(stor24)
                                      call stor24.burnCall4Wis(address sender, uint256 value) with:
                                           gas gas_remaining wei
                                          args caller, _eth * stor22
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                      else:
                          if recommander[caller]:
                              if not stor22:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor24:
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  else:
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                          if 0 >= stor35[caller].field_2048:
                                              stor35[caller].field_2048 = block.timestamp
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              else:
                                  if _eth * stor22 / stor22 != _eth:
                                      revert with 0, 'SafeMath mul failed'
                                  if not stor24:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  else:
                                      if _eth * stor22 <= 0:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                          else:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          if (_eth * stor22) + tdestroy_ < tdestroy_:
                                              revert with 0, 'SafeMath add failed'
                                          tdestroy_ += _eth * stor22
                                          require ext_code.size(stor24)
                                          call stor24.burnCall4Wis(address sender, uint256 value) with:
                                               gas gas_remaining wei
                                              args caller, _eth * stor22
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                          else:
                              if stor35[addr(_recommander)].field_1024 <= 0:
                                  if not stor22:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor24:
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                          else:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  else:
                                      if _eth * stor22 / stor22 != _eth:
                                          revert with 0, 'SafeMath mul failed'
                                      if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                          else:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          if _eth * stor22 <= 0:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                      revert with 0, 'SafeMath sub failed'
                                              else:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                  revert with 0, 'SafeMath add failed'
                                              tdestroy_ += _eth * stor22
                                              require ext_code.size(stor24)
                                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                   gas gas_remaining wei
                                                  args caller, _eth * stor22
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                              else:
                                  if stor27[caller]:
                                      if not stor22:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor24:
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                      revert with 0, 'SafeMath sub failed'
                                              else:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                      stor35[caller].field_256 = 0
                                                      stor35[caller].field_512 = 0
                                                      stor35[caller].field_768 = 0
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                  else:
                                      if not stor27[addr(_recommander)]:
                                          stor27[addr(_recommander)] = 1
                                      recommander[caller] = _recommander
                                      if not stor22:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
          else:
              if stor35[caller].field_1536 + stor35[caller].field_2304 < stor35[caller].field_2304:
                  revert with 0, 'SafeMath add failed'
              require stor35[caller].field_1536 + stor35[caller].field_2304 >= stor35[caller].field_2560
              require block.timestamp > stor19 + round_[stor29].field_256
              if block.timestamp <= round_[stor29].field_0:
                  if not _recommander:
                      if not stor22:
                          if not stor24:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                              stor35[caller].field_256 = 0
                              stor35[caller].field_512 = 0
                              stor35[caller].field_768 = 0
                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          if 0 >= stor35[caller].field_2048:
                              stor35[caller].field_2048 = block.timestamp
                      else:
                          if _eth * stor22 / stor22 != _eth:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              if 0 >= stor35[caller].field_2048:
                                  stor35[caller].field_2048 = block.timestamp
                          else:
                              if _eth * stor22 <= 0:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              else:
                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += _eth * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, _eth * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                  else:
                      if caller == _recommander:
                          if not stor22:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor24:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              else:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                          else:
                              if _eth * stor22 / stor22 != _eth:
                                  revert with 0, 'SafeMath mul failed'
                              if not stor24:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      if 0 >= stor35[caller].field_2048:
                                          stor35[caller].field_2048 = block.timestamp
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                              else:
                                  if _eth * stor22 <= 0:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  else:
                                      if (_eth * stor22) + tdestroy_ < tdestroy_:
                                          revert with 0, 'SafeMath add failed'
                                      tdestroy_ += _eth * stor22
                                      require ext_code.size(stor24)
                                      call stor24.burnCall4Wis(address sender, uint256 value) with:
                                           gas gas_remaining wei
                                          args caller, _eth * stor22
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                      else:
                          if recommander[caller]:
                              if not stor22:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if not stor24:
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                          stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                              else:
                                  if _eth * stor22 / stor22 != _eth:
                                      revert with 0, 'SafeMath mul failed'
                                  if not stor24:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                  else:
                                      if _eth * stor22 <= 0:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if (_eth * stor22) + tdestroy_ < tdestroy_:
                                              revert with 0, 'SafeMath add failed'
                                          tdestroy_ += _eth * stor22
                                          require ext_code.size(stor24)
                                          call stor24.burnCall4Wis(address sender, uint256 value) with:
                                               gas gas_remaining wei
                                              args caller, _eth * stor22
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                          else:
                              if stor35[addr(_recommander)].field_1024 <= 0:
                                  if not stor22:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor24:
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                                  revert with 0, 'SafeMath sub failed'
                                          else:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                  else:
                                      if _eth * stor22 / stor22 != _eth:
                                          revert with 0, 'SafeMath mul failed'
                                      if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 <= 0:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                  revert with 0, 'SafeMath add failed'
                                              tdestroy_ += _eth * stor22
                                              require ext_code.size(stor24)
                                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                   gas gas_remaining wei
                                                  args caller, _eth * stor22
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                              else:
                                  if stor27[caller]:
                                      if not stor22:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                      stor35[caller].field_256 = 0
                                                      stor35[caller].field_512 = 0
                                                      stor35[caller].field_768 = 0
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                  else:
                                      if not stor27[addr(_recommander)]:
                                          stor27[addr(_recommander)] = 1
                                      recommander[caller] = _recommander
                                      if not stor22:
                                          if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
              else:
                  require block.timestamp > round_[stor29].field_0
                  require not round_[stor29].field_1024
                  if not _recommander:
                      if not stor22:
                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if stor35[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if stor24:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          else:
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  if 0 >= stor35[caller].field_2048:
                                      stor35[caller].field_2048 = block.timestamp
                              else:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                      else:
                          if _eth * stor22 / stor22 != _eth:
                              revert with 0, 'SafeMath mul failed'
                          if not stor24:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                  stor35[caller].field_256 = 0
                                  stor35[caller].field_512 = 0
                                  stor35[caller].field_768 = 0
                              if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                              stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          else:
                              if _eth * stor22 <= 0:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                      revert with 0, 'SafeMath add failed'
                                  tdestroy_ += _eth * stor22
                                  require ext_code.size(stor24)
                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                       gas gas_remaining wei
                                      args caller, _eth * stor22
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                  else:
                      if caller == _recommander:
                          if not stor22:
                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if stor35[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if stor24:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                  if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                                  stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                          else:
                              if _eth * stor22 / stor22 != _eth:
                                  revert with 0, 'SafeMath mul failed'
                              if not stor24:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                                      stor35[caller].field_512 = stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 - _eth
                                  else:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                                      if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if _eth * stor22 <= 0:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 <= 0:
                                          if _eth > stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                  else:
                                      if (_eth * stor22) + tdestroy_ < tdestroy_:
                                          revert with 0, 'SafeMath add failed'
                                      tdestroy_ += _eth * stor22
                                      require ext_code.size(stor24)
                                      call stor24.burnCall4Wis(address sender, uint256 value) with:
                                           gas gas_remaining wei
                                          args caller, _eth * stor22
                                      if not ext_call.success:
                                          revert with ext_call.return_data[0 len return_data.size]
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                      else:
                          if recommander[caller]:
                              if not stor22:
                                  if stor24:
                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                      stor35[caller].field_256 = 0
                                      stor35[caller].field_512 = 0
                                      stor35[caller].field_768 = 0
                              else:
                                  if _eth * stor22 / stor22 != _eth:
                                      revert with 0, 'SafeMath mul failed'
                                  if not stor24:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                  else:
                                      if _eth * stor22 <= 0:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if (_eth * stor22) + tdestroy_ < tdestroy_:
                                              revert with 0, 'SafeMath add failed'
                                          tdestroy_ += _eth * stor22
                                          require ext_code.size(stor24)
                                          call stor24.burnCall4Wis(address sender, uint256 value) with:
                                               gas gas_remaining wei
                                              args caller, _eth * stor22
                                          if not ext_call.success:
                                              revert with ext_call.return_data[0 len return_data.size]
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                          else:
                              if stor35[addr(_recommander)].field_1024 <= 0:
                                  if not stor22:
                                      if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 < 0:
                                          revert with 0, 'SafeMath add failed'
                                      if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                          stor35[caller].field_256 = 0
                                          stor35[caller].field_512 = 0
                                          stor35[caller].field_768 = 0
                                  else:
                                      if _eth * stor22 / stor22 != _eth:
                                          revert with 0, 'SafeMath mul failed'
                                      if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                              stor35[caller].field_256 = 0
                                              stor35[caller].field_512 = 0
                                              stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 <= 0:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                          else:
                                              if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                  revert with 0, 'SafeMath add failed'
                                              tdestroy_ += _eth * stor22
                                              require ext_code.size(stor24)
                                              call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                   gas gas_remaining wei
                                                  args caller, _eth * stor22
                                              if not ext_call.success:
                                                  revert with ext_call.return_data[0 len return_data.size]
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                              else:
                                  if stor27[caller]:
                                      if not stor22:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                          if stor35[caller].field_768 < 0:
                                              revert with 0, 'SafeMath add failed'
                                          if stor24:
                                          else:
                                              if stor35[caller].field_768 + stor35[caller].field_512 + stor35[caller].field_256 > 0:
                                                  stor35[caller].field_256 = 0
                                                  stor35[caller].field_512 = 0
                                                  stor35[caller].field_768 = 0
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                              if stor35[caller].field_768 < 0:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                                  if stor35[caller].field_768 < 0:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
                                                  if not ext_call.success:
                                                      revert with ext_call.return_data[0 len return_data.size]
                                  else:
                                      if not stor27[addr(_recommander)]:
                                          stor27[addr(_recommander)] = 1
                                      recommander[caller] = _recommander
                                      if not stor22:
                                          if not stor24:
                                          if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if _eth * stor22 / stor22 != _eth:
                                              revert with 0, 'SafeMath mul failed'
                                          if not stor24:
                                              if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if _eth * stor22 <= 0:
                                                  if stor35[caller].field_512 + stor35[caller].field_256 < stor35[caller].field_256:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if (_eth * stor22) + tdestroy_ < tdestroy_:
                                                      revert with 0, 'SafeMath add failed'
                                                  tdestroy_ += _eth * stor22
                                                  require ext_code.size(stor24)
                                                  call stor24.burnCall4Wis(address sender, uint256 value) with:
                                                       gas gas_remaining wei
                                                      args caller, _eth * stor22
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)