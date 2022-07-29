# Palkeoramix decompiler. 

const name = 'Easy Club'

def storage:
  referrer is mapping of addr at storage 0
  referrerQuantity is mapping of uint256 at storage 1
  stor2 is mapping of uint8 at storage 2
  stor3 is uint256 at storage 3
  stcPerior is uint256 at storage 4
  poltime is uint256 at storage 5
  zeroPerior is uint256 at storage 6
  stor8 is uint256 at storage 8
  dyFloor is uint256 at storage 9
  poitProfit is uint256 at storage 10
  stor11 is mapping of uint256 at storage 11
  stor12 is mapping of uint256 at storage 12
  playerRnds is mapping of uint256 at storage 13
  round is mapping of struct at storage 14
  player is mapping of struct at storage 15
  rID is uint256 at storage 16
  started is uint8 at storage 17
  storA7C5 is uint256 at storage 0xa7c5ba7114a813b50159add3a36832908dc83db71d0b9a24c2ad0f83be958208

def isExitsReferrer(address _address): # not payable
  return bool(referrer[addr(_address_)])

def started(): # not payable
  return bool(started)

def dyFloor(): # not payable
  return dyFloor

def referrer(address _param1): # not payable
  return referrer[addr(_param1)]

def round(uint256 _param1): # not payable
  return round[_param1].field_0, 
         round[_param1].field_256,
         round[_param1].field_512,
         bool(round[_param1].field_768),
         round[_param1].field_1024,
         round[_param1].field_1280

def referrerQuantity(address _address): # not payable
  return referrerQuantity[addr(_address_)]

def player(address _param1): # not payable
  return player[_param1].field_0, 
         player[_param1].field_256,
         player[_param1].field_512,
         player[_param1].field_768,
         player[_param1].field_1024,
         player[_param1].field_1280,
         player[_param1].field_1536,
         player[_param1].field_1792,
         player[_param1].field_2048,
         player[_param1].field_2304,
         player[_param1].field_2560

def poitProfit(): # not payable
  return poitProfit

def poltime(): # not payable
  return poltime

def stcPerior(): # not payable
  return stcPerior

def rID(): # not payable
  return rID

def playerRnds(address _param1, uint256 _param2): # not payable
  return playerRnds[_param1][_param2]

def zeroPerior(): # not payable
  return zeroPerior

#
#  Regular functions
#

def donate() payable: 
  stop

def isCanRegist(address _address): # not payable
  return not bool(stor2[addr(_address_)])

def getCurrentRoundInfo(): # not payable
  return rID, round[stor16].field_512, round[stor16].field_1024, round[stor16].field_1280

def bootstrap(): # not payable
  require not started
  started = 1
  rID = 1
  storA7C5 = block.timestamp
  if poltime + block.timestamp < block.timestamp:
      revert with 0, 'SafeMath add failed'
  round[1].field_0 = poltime + block.timestamp

def getHisRoundInfo(uint256 _round): # not payable
  if _round_:
      return _round_, round[_round_].field_512, round[_round_].field_1024, round[_round_].field_1280
  if 1 < rID:
      return rID - 1, round[stor16 - 1].field_512, round[stor16 - 1].field_1024, round[stor16 - 1].field_1280
  else:
      return 0

def remainTime(): # not payable
  if block.timestamp >= round[stor16].field_0:
      return 0
  if block.timestamp <= round[stor16].field_256:
      if block.timestamp > round[stor16].field_256:
          revert with 0, 'SafeMath sub failed'
      return (round[stor16].field_256 - block.timestamp)
  if block.timestamp > round[stor16].field_0:
      revert with 0, 'SafeMath sub failed'
  return (round[stor16].field_0 - block.timestamp)

def isIcmFnd(address _pAddress): # not payable
  if player[addr(_pAddress_)].field_1024:
      if player[addr(_pAddress_)].field_1536 + player[addr(_pAddress_)].field_2048 < player[addr(_pAddress_)].field_2048:
          revert with 0, 'SafeMath add failed'
      if player[addr(_pAddress_)].field_1536 + player[addr(_pAddress_)].field_2048 < 2:
          if player[addr(_pAddress_)].field_1536 + player[addr(_pAddress_)].field_2048 < player[addr(_pAddress_)].field_2304:
              return 0
      else:
          if 2 > player[addr(_pAddress_)].field_1536 + player[addr(_pAddress_)].field_2048:
              revert with 0, 'SafeMath sub failed'
          if player[addr(_pAddress_)].field_1536 + player[addr(_pAddress_)].field_2048 - 2 < player[addr(_pAddress_)].field_2304:
              return 0
  return 1

def publicReferral(address _referrer): # not payable
  require not ext_code.size(_referrer_)
  require _referrer_
  require _referrer_ != caller
  require not referrer[caller]
  require player[addr(_referrer_)].field_1024 > 0
  require not stor2[caller]
  require player[addr(_referrer_)].field_1024
  if player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 < player[addr(_referrer_)].field_2048:
      revert with 0, 'SafeMath add failed'
  if player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 < 2:
      require player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 < player[addr(_referrer_)].field_2304
  else:
      if 2 > player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048:
          revert with 0, 'SafeMath sub failed'
      require player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 - 2 < player[addr(_referrer_)].field_2304
  if not stor2[addr(_referrer_)]:
      stor2[addr(_referrer_)] = 1
  referrer[caller] = _referrer_

def getRefLimit(address _pAddress, address _referrer): # not payable
  if player[addr(_referrer_)].field_1024:
      if player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 < player[addr(_referrer_)].field_2048:
          revert with 0, 'SafeMath add failed'
      if player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 < 2:
          if player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 < player[addr(_referrer_)].field_2304:
              return bool(referrer[addr(_pAddress_)]), not bool(player[addr(_referrer_)].field_1024), bool(stor2[addr(_pAddress_)]), 0
      else:
          if 2 > player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048:
              revert with 0, 'SafeMath sub failed'
          if player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 - 2 < player[addr(_referrer_)].field_2304:
              return bool(referrer[addr(_pAddress_)]), not bool(player[addr(_referrer_)].field_1024), bool(stor2[addr(_pAddress_)]), 0
  return bool(referrer[addr(_pAddress_)]), not bool(player[addr(_referrer_)].field_1024), bool(stor2[addr(_pAddress_)]), 1

def roundOpen(): # not payable
  if block.timestamp > round[stor16].field_0:
      if not round[stor16].field_768:
          round[stor16].field_768 = 1
          if round[stor16].field_512 <= 0:
              rID++
              round[stor16 + 1].field_256 = block.timestamp
              if poltime + block.timestamp < block.timestamp:
                  revert with 0, 'SafeMath add failed'
              round[stor16 + 1].field_0 = poltime + block.timestamp
              if 0 > round[stor16].field_512:
                  revert with 0, 'SafeMath sub failed'
              round[stor16 + 1].field_512 = round[stor16].field_512
          else:
              if not round[stor16].field_1280:
                  rID++
                  round[stor16 + 1].field_256 = block.timestamp
                  if poltime + block.timestamp < block.timestamp:
                      revert with 0, 'SafeMath add failed'
                  round[stor16 + 1].field_0 = poltime + block.timestamp
                  if 0 > round[stor16].field_512:
                      revert with 0, 'SafeMath sub failed'
                  round[stor16 + 1].field_512 = round[stor16].field_512
              else:
                  if not round[stor16].field_512:
                      rID++
                      round[stor16 + 1].field_256 = block.timestamp
                      if poltime + block.timestamp < block.timestamp:
                          revert with 0, 'SafeMath add failed'
                      round[stor16 + 1].field_0 = poltime + block.timestamp
                      if 0 > round[stor16].field_512:
                          revert with 0, 'SafeMath sub failed'
                      round[stor16 + 1].field_512 = round[stor16].field_512
                  else:
                      if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                          revert with 0, 'SafeMath mul failed'
                      if 10 * round[stor16].field_512 / 100 > 0:
                          if player[stor14[stor16].field_1280].field_256 + (10 * round[stor16].field_512 / 100) < 10 * round[stor16].field_512 / 100:
                              revert with 0, 'SafeMath add failed'
                          player[stor14[stor16].field_1280].field_256 += 10 * round[stor16].field_512 / 100
                      rID++
                      round[stor16 + 1].field_256 = block.timestamp
                      if poltime + block.timestamp < block.timestamp:
                          revert with 0, 'SafeMath add failed'
                      round[stor16 + 1].field_0 = poltime + block.timestamp
                      if 10 * round[stor16].field_512 / 100 > round[stor16].field_512:
                          revert with 0, 'SafeMath sub failed'
                      round[stor16 + 1].field_512 = round[stor16].field_512 - (10 * round[stor16].field_512 / 100)

def receive(): # not payable
  require not ext_code.size(caller)
  if poitProfit <= 0:
      if block.timestamp > round[stor16].field_0:
          if not round[stor16].field_768:
              round[stor16].field_768 = 1
              if round[stor16].field_512 <= 0:
                  rID++
                  round[stor16 + 1].field_256 = block.timestamp
                  if poltime + block.timestamp < block.timestamp:
                      revert with 0, 'SafeMath add failed'
                  round[stor16 + 1].field_0 = poltime + block.timestamp
                  if 0 > round[stor16].field_512:
                      revert with 0, 'SafeMath sub failed'
                  round[stor16 + 1].field_512 = round[stor16].field_512
              else:
                  if not round[stor16].field_1280:
                      rID++
                      round[stor16 + 1].field_256 = block.timestamp
                      if poltime + block.timestamp < block.timestamp:
                          revert with 0, 'SafeMath add failed'
                      round[stor16 + 1].field_0 = poltime + block.timestamp
                      if 0 > round[stor16].field_512:
                          revert with 0, 'SafeMath sub failed'
                      round[stor16 + 1].field_512 = round[stor16].field_512
                  else:
                      if not round[stor16].field_512:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512
                      else:
                          if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                              revert with 0, 'SafeMath mul failed'
                          if 10 * round[stor16].field_512 / 100 > 0:
                              if player[stor14[stor16].field_1280].field_256 + (10 * round[stor16].field_512 / 100) < 10 * round[stor16].field_512 / 100:
                                  revert with 0, 'SafeMath add failed'
                              player[stor14[stor16].field_1280].field_256 += 10 * round[stor16].field_512 / 100
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 10 * round[stor16].field_512 / 100 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512 - (10 * round[stor16].field_512 / 100)
      if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
          revert with 0, 'SafeMath add failed'
      if player[caller].field_768 < 0:
          revert with 0, 'SafeMath add failed'
      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
          player[caller].field_256 = 0
          player[caller].field_512 = 1
          player[caller].field_768 = 1
          if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
              revert with 0, 'SafeMath sub failed'
          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
              revert with 0, 'SafeMath add failed'
          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 > 0:
              call caller with:
                 value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 wei
                   gas 2300 * is_zero(value) wei
              if not ext_call.success:
                  revert with ext_call.return_data[0 len return_data.size]
  else:
      if stor11[caller] <= 0:
          if block.timestamp > round[stor16].field_0:
              if not round[stor16].field_768:
                  round[stor16].field_768 = 1
                  if round[stor16].field_512 <= 0:
                      rID++
                      round[stor16 + 1].field_256 = block.timestamp
                      if poltime + block.timestamp < block.timestamp:
                          revert with 0, 'SafeMath add failed'
                      round[stor16 + 1].field_0 = poltime + block.timestamp
                      if 0 > round[stor16].field_512:
                          revert with 0, 'SafeMath sub failed'
                      round[stor16 + 1].field_512 = round[stor16].field_512
                  else:
                      if not round[stor16].field_1280:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512
                      else:
                          if not round[stor16].field_512:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                          else:
                              if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                  revert with 0, 'SafeMath mul failed'
                              if 10 * round[stor16].field_512 / 100 > 0:
                                  if player[stor14[stor16].field_1280].field_256 + (10 * round[stor16].field_512 / 100) < 10 * round[stor16].field_512 / 100:
                                      revert with 0, 'SafeMath add failed'
                                  player[stor14[stor16].field_1280].field_256 += 10 * round[stor16].field_512 / 100
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 10 * round[stor16].field_512 / 100 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512 - (10 * round[stor16].field_512 / 100)
          if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
              revert with 0, 'SafeMath add failed'
          if player[caller].field_768 < 0:
              revert with 0, 'SafeMath add failed'
          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
              player[caller].field_256 = 0
              player[caller].field_512 = 1
              player[caller].field_768 = 1
              if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                  revert with 0, 'SafeMath sub failed'
              if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 > 0:
                  call caller with:
                     value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 wei
                       gas 2300 * is_zero(value) wei
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
      else:
          if 1 == stor12[stor11[caller]]:
              stor12[stor11[caller]] = poitProfit
              if block.timestamp > round[stor16].field_0:
                  if not round[stor16].field_768:
                      round[stor16].field_768 = 1
                      if round[stor16].field_512 <= 0:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512
                      else:
                          if not round[stor16].field_1280:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                          else:
                              if not round[stor16].field_512:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                                  round[stor16 + 1].field_512 = round[stor16].field_512
                              else:
                                  if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                      revert with 0, 'SafeMath mul failed'
                                  if 10 * round[stor16].field_512 / 100 > 0:
                                      if player[stor14[stor16].field_1280].field_256 + (10 * round[stor16].field_512 / 100) < 10 * round[stor16].field_512 / 100:
                                          revert with 0, 'SafeMath add failed'
                                      player[stor14[stor16].field_1280].field_256 += 10 * round[stor16].field_512 / 100
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 10 * round[stor16].field_512 / 100 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                                  round[stor16 + 1].field_512 = round[stor16].field_512 - (10 * round[stor16].field_512 / 100)
              if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 < 0:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                  if poitProfit < poitProfit:
                      revert with 0, 'SafeMath add failed'
                  if poitProfit > 0:
                      call caller with:
                         value poitProfit wei
                           gas 2300 * is_zero(value) wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
              else:
                  player[caller].field_256 = 0
                  player[caller].field_512 = 1
                  player[caller].field_768 = 1
                  if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                      revert with 0, 'SafeMath sub failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 < poitProfit:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 > 0:
                      call caller with:
                         value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 wei
                           gas 2300 * is_zero(value) wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
          else:
              if stor12[stor11[caller]] > poitProfit:
                  revert with 0, 'SafeMath sub failed'
              stor12[stor11[caller]] = poitProfit
              if block.timestamp > round[stor16].field_0:
                  if not round[stor16].field_768:
                      round[stor16].field_768 = 1
                      if round[stor16].field_512 <= 0:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512
                      else:
                          if not round[stor16].field_1280:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                          else:
                              if not round[stor16].field_512:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                                  round[stor16 + 1].field_512 = round[stor16].field_512
                              else:
                                  if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                      revert with 0, 'SafeMath mul failed'
                                  if 10 * round[stor16].field_512 / 100 > 0:
                                      if player[stor14[stor16].field_1280].field_256 + (10 * round[stor16].field_512 / 100) < 10 * round[stor16].field_512 / 100:
                                          revert with 0, 'SafeMath add failed'
                                      player[stor14[stor16].field_1280].field_256 += 10 * round[stor16].field_512 / 100
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 10 * round[stor16].field_512 / 100 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                                  round[stor16 + 1].field_512 = round[stor16].field_512 - (10 * round[stor16].field_512 / 100)
              if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 < 0:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                  if poitProfit - stor12[stor11[caller]] > 0:
                      call caller with:
                         value poitProfit - stor12[stor11[caller]] wei
                           gas 2300 * is_zero(value) wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
              else:
                  player[caller].field_256 = 0
                  player[caller].field_512 = 1
                  player[caller].field_768 = 1
                  if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                      revert with 0, 'SafeMath sub failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit + -stor12[stor11[caller]] - 2 > 0:
                      call caller with:
                         value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit + -stor12[stor11[caller]] - 2 wei
                           gas 2300 * is_zero(value) wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]

def setted(): # not payable
  if 0 >= player[caller].field_1792:
      stop
  if 0 >= player[caller].field_1792:
      require stcPerior
      if 0 <= zeroPerior / stcPerior:
          stop
      if zeroPerior / stcPerior <= 0:
          stop
      if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
          revert with 0, 'SafeMath add failed'
      if player[caller].field_1536 + player[caller].field_2048 < 2:
          if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
              stop
          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
              revert with 0, 'SafeMath sub failed'
          if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
              stop
          if zeroPerior / stcPerior <= 0:
              stop
          if not player[caller].field_1280:
              if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 >= 0:
                  stop
              if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                  stop
              if player[caller].field_512 < 0:
                  revert with 0, 'SafeMath add failed'
              player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048
              if player[caller].field_2048 < 0:
                  revert with 0, 'SafeMath add failed'
              player[caller].field_2048 = player[caller].field_2304 - player[caller].field_1536
              if zeroPerior / stcPerior == zeroPerior / stcPerior:
                  player[caller].field_1792 = block.timestamp
              else:
                  if player[caller].field_1792 > block.timestamp:
                      revert with 0, 'SafeMath sub failed'
                  require stcPerior
                  if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                      revert with 0, 'SafeMath sub failed'
                  player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
              if not player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048:
                  stop
              if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 != stor3:
                  revert with 0, 'SafeMath mul failed'
              if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                  stop
          else:
              if 100 * player[caller].field_1280 / player[caller].field_1280 != 100:
                  revert with 0, 'SafeMath mul failed'
              if not 100 * player[caller].field_1280:
                  if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 >= 0:
                      stop
                  if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                      stop
                  if player[caller].field_512 < 0:
                      revert with 0, 'SafeMath add failed'
                  player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048
                  if player[caller].field_2048 < 0:
                      revert with 0, 'SafeMath add failed'
                  player[caller].field_2048 = player[caller].field_2304 - player[caller].field_1536
                  if zeroPerior / stcPerior == zeroPerior / stcPerior:
                      player[caller].field_1792 = block.timestamp
                  else:
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                  if not player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048:
                      stop
                  if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 != stor3:
                      revert with 0, 'SafeMath mul failed'
                  if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                      stop
              else:
                  if 100 * zeroPerior / stcPerior * player[caller].field_1280 / 100 * player[caller].field_1280 != zeroPerior / stcPerior:
                      revert with 0, 'SafeMath mul failed'
                  if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 >= 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                      if 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 <= 0:
                          stop
                      if player[caller].field_512 + (100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000) < 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_512 += 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000
                      if player[caller].field_2048 + (100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000) < 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_2048 += 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000
                      if zeroPerior / stcPerior == zeroPerior / stcPerior:
                          player[caller].field_1792 = block.timestamp
                      else:
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                      if not 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                          stop
                      if stor3 * 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 / 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 != stor3:
                          revert with 0, 'SafeMath mul failed'
                      if stor3 * 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 / 100 <= 0:
                          stop
                  else:
                      if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                          stop
                      if player[caller].field_512 < 0:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048
                      if player[caller].field_2048 < 0:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_2048 = player[caller].field_2304 - player[caller].field_1536
                      if zeroPerior / stcPerior == zeroPerior / stcPerior:
                          player[caller].field_1792 = block.timestamp
                      else:
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                      if not player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048:
                          stop
                      if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 != stor3:
                          revert with 0, 'SafeMath mul failed'
                      if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                          stop
      else:
          if 2 > player[caller].field_1536 + player[caller].field_2048:
              revert with 0, 'SafeMath sub failed'
          if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
              stop
          if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
              revert with 0, 'SafeMath sub failed'
          if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 <= 0:
              stop
          if zeroPerior / stcPerior <= 0:
              stop
          if not player[caller].field_1280:
              if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 >= 0:
                  stop
              if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 <= 0:
                  stop
              if player[caller].field_512 < 0:
                  revert with 0, 'SafeMath add failed'
              player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2
              if player[caller].field_2048 < 0:
                  revert with 0, 'SafeMath add failed'
              player[caller].field_2048 = player[caller].field_2304 + -player[caller].field_1536 + 2
              if zeroPerior / stcPerior == zeroPerior / stcPerior:
                  player[caller].field_1792 = block.timestamp
              else:
                  if player[caller].field_1792 > block.timestamp:
                      revert with 0, 'SafeMath sub failed'
                  require stcPerior
                  if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                      revert with 0, 'SafeMath sub failed'
                  player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
              if not player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2:
                  stop
              if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 != stor3:
                  revert with 0, 'SafeMath mul failed'
              if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                  stop
          else:
              if 100 * player[caller].field_1280 / player[caller].field_1280 != 100:
                  revert with 0, 'SafeMath mul failed'
              if not 100 * player[caller].field_1280:
                  if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 >= 0:
                      stop
                  if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 <= 0:
                      stop
                  if player[caller].field_512 < 0:
                      revert with 0, 'SafeMath add failed'
                  player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2
                  if player[caller].field_2048 < 0:
                      revert with 0, 'SafeMath add failed'
                  player[caller].field_2048 = player[caller].field_2304 + -player[caller].field_1536 + 2
                  if zeroPerior / stcPerior == zeroPerior / stcPerior:
                      player[caller].field_1792 = block.timestamp
                  else:
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                  if not player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2:
                      stop
                  if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 != stor3:
                      revert with 0, 'SafeMath mul failed'
                  if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                      stop
              else:
                  if 100 * zeroPerior / stcPerior * player[caller].field_1280 / 100 * player[caller].field_1280 != zeroPerior / stcPerior:
                      revert with 0, 'SafeMath mul failed'
                  if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 >= 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                      if 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 <= 0:
                          stop
                      if player[caller].field_512 + (100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000) < 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_512 += 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000
                      if player[caller].field_2048 + (100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000) < 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_2048 += 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000
                      if zeroPerior / stcPerior == zeroPerior / stcPerior:
                          player[caller].field_1792 = block.timestamp
                      else:
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                      if not 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                          stop
                      if stor3 * 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 / 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 != stor3:
                          revert with 0, 'SafeMath mul failed'
                      if stor3 * 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 / 100 <= 0:
                          stop
                  else:
                      if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 <= 0:
                          stop
                      if player[caller].field_512 < 0:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2
                      if player[caller].field_2048 < 0:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_2048 = player[caller].field_2304 + -player[caller].field_1536 + 2
                      if zeroPerior / stcPerior == zeroPerior / stcPerior:
                          player[caller].field_1792 = block.timestamp
                      else:
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                      if not player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2:
                          stop
                      if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 != stor3:
                          revert with 0, 'SafeMath mul failed'
                      if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                          stop
  else:
      if player[caller].field_1792 > block.timestamp:
          revert with 0, 'SafeMath sub failed'
      require stcPerior
      if block.timestamp - player[caller].field_1792 / stcPerior > zeroPerior / stcPerior:
          if zeroPerior / stcPerior <= 0:
              stop
          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
              revert with 0, 'SafeMath add failed'
          if player[caller].field_1536 + player[caller].field_2048 < 2:
              if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                  stop
              if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                  revert with 0, 'SafeMath sub failed'
              if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                  stop
              if zeroPerior / stcPerior <= 0:
                  stop
              if not player[caller].field_1280:
                  if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 >= 0:
                      stop
                  if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                      stop
                  if player[caller].field_512 < 0:
                      revert with 0, 'SafeMath add failed'
                  player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048
                  if player[caller].field_2048 < 0:
                      revert with 0, 'SafeMath add failed'
                  player[caller].field_2048 = player[caller].field_2304 - player[caller].field_1536
                  if zeroPerior / stcPerior == zeroPerior / stcPerior:
                      player[caller].field_1792 = block.timestamp
                  else:
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                  if not player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048:
                      stop
                  if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 != stor3:
                      revert with 0, 'SafeMath mul failed'
                  if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                      stop
              else:
                  if 100 * player[caller].field_1280 / player[caller].field_1280 != 100:
                      revert with 0, 'SafeMath mul failed'
                  if not 100 * player[caller].field_1280:
                      if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 >= 0:
                          stop
                      if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                          stop
                      if player[caller].field_512 < 0:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048
                      if player[caller].field_2048 < 0:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_2048 = player[caller].field_2304 - player[caller].field_1536
                      if zeroPerior / stcPerior == zeroPerior / stcPerior:
                          player[caller].field_1792 = block.timestamp
                      else:
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                      if not player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048:
                          stop
                      if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 != stor3:
                          revert with 0, 'SafeMath mul failed'
                      if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                          stop
                  else:
                      if 100 * zeroPerior / stcPerior * player[caller].field_1280 / 100 * player[caller].field_1280 != zeroPerior / stcPerior:
                          revert with 0, 'SafeMath mul failed'
                      if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 >= 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                          if 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 <= 0:
                              stop
                          if player[caller].field_512 + (100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000) < 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000
                          if player[caller].field_2048 + (100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000) < 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_2048 += 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000
                          if zeroPerior / stcPerior == zeroPerior / stcPerior:
                              player[caller].field_1792 = block.timestamp
                          else:
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                          if not 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                              stop
                          if stor3 * 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 / 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 != stor3:
                              revert with 0, 'SafeMath mul failed'
                          if stor3 * 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 / 100 <= 0:
                              stop
                      else:
                          if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                              stop
                          if player[caller].field_512 < 0:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048
                          if player[caller].field_2048 < 0:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_2048 = player[caller].field_2304 - player[caller].field_1536
                          if zeroPerior / stcPerior == zeroPerior / stcPerior:
                              player[caller].field_1792 = block.timestamp
                          else:
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                          if not player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048:
                              stop
                          if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 != stor3:
                              revert with 0, 'SafeMath mul failed'
                          if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                              stop
          else:
              if 2 > player[caller].field_1536 + player[caller].field_2048:
                  revert with 0, 'SafeMath sub failed'
              if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
                  stop
              if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                  revert with 0, 'SafeMath sub failed'
              if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 <= 0:
                  stop
              if zeroPerior / stcPerior <= 0:
                  stop
              if not player[caller].field_1280:
                  if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 >= 0:
                      stop
                  if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 <= 0:
                      stop
                  if player[caller].field_512 < 0:
                      revert with 0, 'SafeMath add failed'
                  player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2
                  if player[caller].field_2048 < 0:
                      revert with 0, 'SafeMath add failed'
                  player[caller].field_2048 = player[caller].field_2304 + -player[caller].field_1536 + 2
                  if zeroPerior / stcPerior == zeroPerior / stcPerior:
                      player[caller].field_1792 = block.timestamp
                  else:
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                  if not player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2:
                      stop
                  if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 != stor3:
                      revert with 0, 'SafeMath mul failed'
                  if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                      stop
              else:
                  if 100 * player[caller].field_1280 / player[caller].field_1280 != 100:
                      revert with 0, 'SafeMath mul failed'
                  if not 100 * player[caller].field_1280:
                      if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 >= 0:
                          stop
                      if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 <= 0:
                          stop
                      if player[caller].field_512 < 0:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2
                      if player[caller].field_2048 < 0:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_2048 = player[caller].field_2304 + -player[caller].field_1536 + 2
                      if zeroPerior / stcPerior == zeroPerior / stcPerior:
                          player[caller].field_1792 = block.timestamp
                      else:
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                      if not player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2:
                          stop
                      if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 != stor3:
                          revert with 0, 'SafeMath mul failed'
                      if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                          stop
                  else:
                      if 100 * zeroPerior / stcPerior * player[caller].field_1280 / 100 * player[caller].field_1280 != zeroPerior / stcPerior:
                          revert with 0, 'SafeMath mul failed'
                      if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 >= 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                          if 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 <= 0:
                              stop
                          if player[caller].field_512 + (100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000) < 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000
                          if player[caller].field_2048 + (100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000) < 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_2048 += 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000
                          if zeroPerior / stcPerior == zeroPerior / stcPerior:
                              player[caller].field_1792 = block.timestamp
                          else:
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                          if not 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000:
                              stop
                          if stor3 * 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 / 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 != stor3:
                              revert with 0, 'SafeMath mul failed'
                          if stor3 * 100 * zeroPerior / stcPerior * player[caller].field_1280 / 10000 / 100 <= 0:
                              stop
                      else:
                          if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 <= 0:
                              stop
                          if player[caller].field_512 < 0:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2
                          if player[caller].field_2048 < 0:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_2048 = player[caller].field_2304 + -player[caller].field_1536 + 2
                          if zeroPerior / stcPerior == zeroPerior / stcPerior:
                              player[caller].field_1792 = block.timestamp
                          else:
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                          if not player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2:
                              stop
                          if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 != stor3:
                              revert with 0, 'SafeMath mul failed'
                          if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                              stop
      else:
          if block.timestamp - player[caller].field_1792 / stcPerior <= 0:
              stop
          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
              revert with 0, 'SafeMath add failed'
          if player[caller].field_1536 + player[caller].field_2048 < 2:
              if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                  stop
              if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                  revert with 0, 'SafeMath sub failed'
              if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                  stop
              if block.timestamp - player[caller].field_1792 / stcPerior <= 0:
                  stop
              if not player[caller].field_1280:
                  if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 >= 0:
                      stop
                  if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                      stop
                  if player[caller].field_512 < 0:
                      revert with 0, 'SafeMath add failed'
                  player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048
                  if player[caller].field_2048 < 0:
                      revert with 0, 'SafeMath add failed'
                  player[caller].field_2048 = player[caller].field_2304 - player[caller].field_1536
                  if zeroPerior / stcPerior == block.timestamp - player[caller].field_1792 / stcPerior:
                      player[caller].field_1792 = block.timestamp
                  else:
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                  if not player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048:
                      stop
                  if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 != stor3:
                      revert with 0, 'SafeMath mul failed'
                  if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                      stop
              else:
                  if 100 * player[caller].field_1280 / player[caller].field_1280 != 100:
                      revert with 0, 'SafeMath mul failed'
                  if not 100 * player[caller].field_1280:
                      if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 >= 0:
                          stop
                      if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                          stop
                      if player[caller].field_512 < 0:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048
                      if player[caller].field_2048 < 0:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_2048 = player[caller].field_2304 - player[caller].field_1536
                      if zeroPerior / stcPerior == block.timestamp - player[caller].field_1792 / stcPerior:
                          player[caller].field_1792 = block.timestamp
                      else:
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                      if not player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048:
                          stop
                      if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 != stor3:
                          revert with 0, 'SafeMath mul failed'
                      if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                          stop
                  else:
                      if 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 100 * player[caller].field_1280 != block.timestamp - player[caller].field_1792 / stcPerior:
                          revert with 0, 'SafeMath mul failed'
                      if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 >= 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000:
                          if 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000 <= 0:
                              stop
                          if player[caller].field_512 + (100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000) < 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000
                          if player[caller].field_2048 + (100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000) < 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_2048 += 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000
                          if zeroPerior / stcPerior == block.timestamp - player[caller].field_1792 / stcPerior:
                              player[caller].field_1792 = block.timestamp
                          else:
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                          if not 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000:
                              stop
                          if stor3 * 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000 / 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000 != stor3:
                              revert with 0, 'SafeMath mul failed'
                          if stor3 * 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000 / 100 <= 0:
                              stop
                      else:
                          if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                              stop
                          if player[caller].field_512 < 0:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048
                          if player[caller].field_2048 < 0:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_2048 = player[caller].field_2304 - player[caller].field_1536
                          if zeroPerior / stcPerior == block.timestamp - player[caller].field_1792 / stcPerior:
                              player[caller].field_1792 = block.timestamp
                          else:
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                          if not player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048:
                              stop
                          if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 != stor3:
                              revert with 0, 'SafeMath mul failed'
                          if (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                              stop
          else:
              if 2 > player[caller].field_1536 + player[caller].field_2048:
                  revert with 0, 'SafeMath sub failed'
              if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
                  stop
              if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                  revert with 0, 'SafeMath sub failed'
              if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 <= 0:
                  stop
              if block.timestamp - player[caller].field_1792 / stcPerior <= 0:
                  stop
              if not player[caller].field_1280:
                  if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 >= 0:
                      stop
                  if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 <= 0:
                      stop
                  if player[caller].field_512 < 0:
                      revert with 0, 'SafeMath add failed'
                  player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2
                  if player[caller].field_2048 < 0:
                      revert with 0, 'SafeMath add failed'
                  player[caller].field_2048 = player[caller].field_2304 + -player[caller].field_1536 + 2
                  if zeroPerior / stcPerior == block.timestamp - player[caller].field_1792 / stcPerior:
                      player[caller].field_1792 = block.timestamp
                  else:
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                  if not player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2:
                      stop
                  if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 != stor3:
                      revert with 0, 'SafeMath mul failed'
                  if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                      stop
              else:
                  if 100 * player[caller].field_1280 / player[caller].field_1280 != 100:
                      revert with 0, 'SafeMath mul failed'
                  if not 100 * player[caller].field_1280:
                      if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 >= 0:
                          stop
                      if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 <= 0:
                          stop
                      if player[caller].field_512 < 0:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2
                      if player[caller].field_2048 < 0:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_2048 = player[caller].field_2304 + -player[caller].field_1536 + 2
                      if zeroPerior / stcPerior == block.timestamp - player[caller].field_1792 / stcPerior:
                          player[caller].field_1792 = block.timestamp
                      else:
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                      if not player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2:
                          stop
                      if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 != stor3:
                          revert with 0, 'SafeMath mul failed'
                      if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                          stop
                  else:
                      if 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 100 * player[caller].field_1280 != block.timestamp - player[caller].field_1792 / stcPerior:
                          revert with 0, 'SafeMath mul failed'
                      if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 >= 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000:
                          if 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000 <= 0:
                              stop
                          if player[caller].field_512 + (100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000) < 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000
                          if player[caller].field_2048 + (100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000) < 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_2048 += 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000
                          if zeroPerior / stcPerior == block.timestamp - player[caller].field_1792 / stcPerior:
                              player[caller].field_1792 = block.timestamp
                          else:
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                          if not 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000:
                              stop
                          if stor3 * 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000 / 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000 != stor3:
                              revert with 0, 'SafeMath mul failed'
                          if stor3 * 100 * block.timestamp - player[caller].field_1792 / stcPerior * player[caller].field_1280 / 10000 / 100 <= 0:
                              stop
                      else:
                          if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 <= 0:
                              stop
                          if player[caller].field_512 < 0:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 = player[caller].field_512 + player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2
                          if player[caller].field_2048 < 0:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_2048 = player[caller].field_2304 + -player[caller].field_1536 + 2
                          if zeroPerior / stcPerior == block.timestamp - player[caller].field_1792 / stcPerior:
                              player[caller].field_1792 = block.timestamp
                          else:
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              if block.timestamp - player[caller].field_1792 % stcPerior > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              player[caller].field_1792 = block.timestamp - (block.timestamp - player[caller].field_1792 % stcPerior)
                          if not player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2:
                              stop
                          if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 != stor3:
                              revert with 0, 'SafeMath mul failed'
                          if (2 * stor3) + (player[caller].field_2304 * stor3) - (player[caller].field_1536 * stor3) - (player[caller].field_2048 * stor3) / 100 <= 0:
                              stop
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def _fallback() payable: # default function
  if call.value:
      require 1 == bool(started)
      require not ext_code.size(caller)
      if 10^18 == call.value:
          if player[caller].field_2560 > 2:
              if call.value > 3 * 10^18:
                  revert with 0, 'maxlimit!'
          else:
              if call.value > (10^18 * player[caller].field_2560) + 10^18:
                  revert with 0, 'maxlimit!'
          if player[caller].field_1024:
              if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_1536 + player[caller].field_2048 >= 2:
                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                      revert with 0, 'SafeMath sub failed'
                  require player[caller].field_1536 + player[caller].field_2048 - 2 >= player[caller].field_2304
                  if block.timestamp < round[stor16].field_256:
                      if block.timestamp <= round[stor16].field_0:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                      else:
                          if round[stor16].field_768:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                          else:
                              round[stor16].field_768 = 1
                              if round[stor16].field_512 <= 0:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                  else:
                      if block.timestamp <= round[stor16].field_0:
                          player[caller].field_1792 = block.timestamp
                          if not player[caller].field_1024:
                      else:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                          else:
                              if round[stor16].field_768:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                              else:
                                  round[stor16].field_768 = 1
                                  if round[stor16].field_512 <= 0:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
              else:
                  require player[caller].field_1536 + player[caller].field_2048 >= player[caller].field_2304
                  if block.timestamp < round[stor16].field_256:
                      if block.timestamp <= round[stor16].field_0:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      if round[stor16].field_768:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      round[stor16].field_768 = 1
                      if round[stor16].field_512 <= 0:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                      else:
                          if round[stor16].field_1280:
                              if round[stor16].field_512:
                          else:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                  else:
                      if block.timestamp <= round[stor16].field_0:
                          player[caller].field_1792 = block.timestamp
                          if player[caller].field_1024:
                              if player[caller].field_512:
                                  if player[caller].field_768:
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_1536 = 1
                                  else:
                                      player[caller].field_768 = 1
                                      if not player[caller].field_1536:
                                          player[caller].field_1536 = 1
                              else:
                                  player[caller].field_512 = 1
                                  if player[caller].field_768:
                                      if not player[caller].field_1536:
                                          player[caller].field_1536 = 1
                                  else:
                                      player[caller].field_768 = 1
                          else:
                              if not referrer[caller]:
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if not player[caller].field_1536:
                                              player[caller].field_1536 = 1
                                      else:
                                          player[caller].field_768 = 1
                                  else:
                                      player[caller].field_512 = 1
                                      if not player[caller].field_768:
                                          player[caller].field_768 = 1
                              else:
                                  referrerQuantity[stor0[caller]]++
                                  playerRnds[stor0[caller]][stor16]++
                                  if playerRnds[stor0[caller]][stor16] + 1 > round[stor16].field_1024:
                                      round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                      round[stor16].field_1280 = referrer[caller]
                      else:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          if round[stor16].field_768:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          round[stor16].field_768 = 1
                          if round[stor16].field_512 <= 0:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                          else:
                              if round[stor16].field_1280:
                                  if round[stor16].field_512:
                              else:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
          else:
              if block.timestamp < round[stor16].field_256:
                  if block.timestamp <= round[stor16].field_0:
                      if call.value + player[caller].field_512 < player[caller].field_512:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_512 += call.value
                      stop
                  if round[stor16].field_768:
                      if call.value + player[caller].field_512 < player[caller].field_512:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_512 += call.value
                      stop
                  round[stor16].field_768 = 1
                  if round[stor16].field_512 <= 0:
                      rID++
                      round[stor16 + 1].field_256 = block.timestamp
                      if poltime + block.timestamp < block.timestamp:
                          revert with 0, 'SafeMath add failed'
                      round[stor16 + 1].field_0 = poltime + block.timestamp
                      if 0 > round[stor16].field_512:
                          revert with 0, 'SafeMath sub failed'
                      round[stor16 + 1].field_512 = round[stor16].field_512
                      player[caller].field_1792 = block.timestamp
                  else:
                      if round[stor16].field_1280:
                          if not round[stor16].field_512:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                          else:
                              if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                  revert with 0, 'SafeMath mul failed'
                              if 10 * round[stor16].field_512 / 100 <= 0:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                      else:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512
                          player[caller].field_1792 = block.timestamp
              else:
                  if block.timestamp > round[stor16].field_0:
                      if block.timestamp <= round[stor16].field_0:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      if round[stor16].field_768:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      round[stor16].field_768 = 1
                      if round[stor16].field_512 <= 0:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512
                          player[caller].field_1792 = block.timestamp
                      else:
                          if round[stor16].field_1280:
                              if not round[stor16].field_512:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                      revert with 0, 'SafeMath mul failed'
                                  if 10 * round[stor16].field_512 / 100 <= 0:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                          else:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                              player[caller].field_1792 = block.timestamp
                  else:
                      player[caller].field_1792 = block.timestamp
                      if player[caller].field_1024:
                          if player[caller].field_512:
                              if player[caller].field_768:
                                  if player[caller].field_1536:
                                      if player[caller].field_2048:
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_1024 += call.value
                                          player[caller].field_1280 = call.value
                                          if call.value:
                                      else:
                                          player[caller].field_2048 = 1
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_1024 += call.value
                                          player[caller].field_1280 = call.value
                                  else:
                                      player[caller].field_1536 = 1
                                      if not player[caller].field_2048:
                                          player[caller].field_2048 = 1
                                      if player[caller].field_1024 + call.value < call.value:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_1024 += call.value
                                      player[caller].field_1280 = call.value
                              else:
                                  player[caller].field_768 = 1
                                  if not player[caller].field_1536:
                                      player[caller].field_1536 = 1
                                  if not player[caller].field_2048:
                                      player[caller].field_2048 = 1
                                  if player[caller].field_1024 + call.value < call.value:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_1024 += call.value
                                  player[caller].field_1280 = call.value
                          else:
                              player[caller].field_512 = 1
                              if not player[caller].field_768:
                                  player[caller].field_768 = 1
                              if not player[caller].field_1536:
                                  player[caller].field_1536 = 1
                              if not player[caller].field_2048:
                                  player[caller].field_2048 = 1
                              if player[caller].field_1024 + call.value < call.value:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_1024 += call.value
                              player[caller].field_1280 = call.value
                      else:
                          if not referrer[caller]:
                              if player[caller].field_512:
                                  if not player[caller].field_768:
                                      player[caller].field_768 = 1
                                  if not player[caller].field_1536:
                                      player[caller].field_1536 = 1
                                  if not player[caller].field_2048:
                                      player[caller].field_2048 = 1
                                  if player[caller].field_1024 + call.value < call.value:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_1024 += call.value
                                  player[caller].field_1280 = call.value
                              else:
                                  player[caller].field_512 = 1
                                  if player[caller].field_768:
                                      if not player[caller].field_1536:
                                          player[caller].field_1536 = 1
                                      if not player[caller].field_2048:
                                          player[caller].field_2048 = 1
                                      if player[caller].field_1024 + call.value < call.value:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_1024 += call.value
                                      player[caller].field_1280 = call.value
                                  else:
                                      player[caller].field_768 = 1
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_1024 += call.value
                                          player[caller].field_1280 = call.value
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_1024 += call.value
                                              player[caller].field_1280 = call.value
                          else:
                              referrerQuantity[stor0[caller]]++
                              playerRnds[stor0[caller]][stor16]++
                              if playerRnds[stor0[caller]][stor16] + 1 <= round[stor16].field_1024:
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_1024 += call.value
                                                  player[caller].field_1280 = call.value
                                          else:
                                              player[caller].field_1536 = 1
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_512 = 1
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                              else:
                                  round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                  round[stor16].field_1280 = referrer[caller]
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_512 = 1
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
      else:
          if 2 * 10^18 == call.value:
              if player[caller].field_2560 > 2:
                  if call.value > 3 * 10^18:
                      revert with 0, 'maxlimit!'
              else:
                  if call.value > (10^18 * player[caller].field_2560) + 10^18:
                      revert with 0, 'maxlimit!'
              if player[caller].field_1024:
                  if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_1536 + player[caller].field_2048 >= 2:
                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                          revert with 0, 'SafeMath sub failed'
                      require player[caller].field_1536 + player[caller].field_2048 - 2 >= player[caller].field_2304
                      if block.timestamp < round[stor16].field_256:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                          else:
                              if not round[stor16].field_768:
                                  round[stor16].field_768 = 1
                      else:
                          if block.timestamp <= round[stor16].field_0:
                              player[caller].field_1792 = block.timestamp
                          else:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if not round[stor16].field_768:
                                      round[stor16].field_768 = 1
                  else:
                      require player[caller].field_1536 + player[caller].field_2048 >= player[caller].field_2304
                      if block.timestamp < round[stor16].field_256:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          if round[stor16].field_768:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                          else:
                              round[stor16].field_768 = 1
                              if round[stor16].field_512 <= 0:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                              else:
                                  if not round[stor16].field_1280:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                      if poltime + block.timestamp < block.timestamp:
                                          revert with 0, 'SafeMath add failed'
                      else:
                          if block.timestamp <= round[stor16].field_0:
                              player[caller].field_1792 = block.timestamp
                              if player[caller].field_1024:
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if not player[caller].field_1536:
                                              player[caller].field_1536 = 1
                                      else:
                                          player[caller].field_768 = 1
                                  else:
                                      player[caller].field_512 = 1
                                      if not player[caller].field_768:
                                          player[caller].field_768 = 1
                              else:
                                  if not referrer[caller]:
                                      if player[caller].field_512:
                                          if not player[caller].field_768:
                                              player[caller].field_768 = 1
                                      else:
                                          player[caller].field_512 = 1
                                  else:
                                      referrerQuantity[stor0[caller]]++
                                      playerRnds[stor0[caller]][stor16]++
                          else:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                                  stop
                              if round[stor16].field_768:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                              else:
                                  round[stor16].field_768 = 1
                                  if round[stor16].field_512 <= 0:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                      if poltime + block.timestamp < block.timestamp:
                                          revert with 0, 'SafeMath add failed'
                                      round[stor16 + 1].field_0 = poltime + block.timestamp
                                  else:
                                      if not round[stor16].field_1280:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                                          if poltime + block.timestamp < block.timestamp:
                                              revert with 0, 'SafeMath add failed'
              else:
                  if block.timestamp < round[stor16].field_256:
                      if block.timestamp <= round[stor16].field_0:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      if round[stor16].field_768:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      round[stor16].field_768 = 1
                      if round[stor16].field_512 <= 0:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512
                          player[caller].field_1792 = block.timestamp
                      else:
                          if round[stor16].field_1280:
                              if not round[stor16].field_512:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                              else:
                                  if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                      revert with 0, 'SafeMath mul failed'
                                  if 10 * round[stor16].field_512 / 100 <= 0:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                          else:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                              player[caller].field_1792 = block.timestamp
                  else:
                      if block.timestamp > round[stor16].field_0:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          if round[stor16].field_768:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          round[stor16].field_768 = 1
                          if round[stor16].field_512 <= 0:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                              player[caller].field_1792 = block.timestamp
                          else:
                              if round[stor16].field_1280:
                                  if not round[stor16].field_512:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                  else:
                                      if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                          revert with 0, 'SafeMath mul failed'
                                      if 10 * round[stor16].field_512 / 100 <= 0:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                              else:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                                  round[stor16 + 1].field_512 = round[stor16].field_512
                                  player[caller].field_1792 = block.timestamp
                      else:
                          player[caller].field_1792 = block.timestamp
                          if player[caller].field_1024:
                              if player[caller].field_512:
                                  if not player[caller].field_768:
                                      player[caller].field_768 = 1
                                  if not player[caller].field_1536:
                                      player[caller].field_1536 = 1
                                  if not player[caller].field_2048:
                                      player[caller].field_2048 = 1
                                  if player[caller].field_1024 + call.value < call.value:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_1024 += call.value
                                  player[caller].field_1280 = call.value
                              else:
                                  player[caller].field_512 = 1
                                  if player[caller].field_768:
                                      if not player[caller].field_1536:
                                          player[caller].field_1536 = 1
                                      if not player[caller].field_2048:
                                          player[caller].field_2048 = 1
                                      if player[caller].field_1024 + call.value < call.value:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_1024 += call.value
                                      player[caller].field_1280 = call.value
                                  else:
                                      player[caller].field_768 = 1
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_1024 += call.value
                                          player[caller].field_1280 = call.value
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_1024 += call.value
                                              player[caller].field_1280 = call.value
                          else:
                              if not referrer[caller]:
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if not player[caller].field_1536:
                                              player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_1024 += call.value
                                          player[caller].field_1280 = call.value
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_1024 += call.value
                                              player[caller].field_1280 = call.value
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_1024 += call.value
                                                  player[caller].field_1280 = call.value
                                  else:
                                      player[caller].field_512 = 1
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_1024 += call.value
                                              player[caller].field_1280 = call.value
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_1024 += call.value
                                                  player[caller].field_1280 = call.value
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_1024 += call.value
                                                  player[caller].field_1280 = call.value
                                          else:
                                              player[caller].field_1536 = 1
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                              else:
                                  referrerQuantity[stor0[caller]]++
                                  playerRnds[stor0[caller]][stor16]++
                                  if playerRnds[stor0[caller]][stor16] + 1 <= round[stor16].field_1024:
                                      if player[caller].field_512:
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if player[caller].field_2048:
                                                      if player[caller].field_1024 + call.value < call.value:
                                                          revert with 0, 'SafeMath add failed'
                                                  else:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_512 = 1
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                  else:
                                      round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                      round[stor16].field_1280 = referrer[caller]
                                      if player[caller].field_512:
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                      else:
                                          player[caller].field_512 = 1
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if not player[caller].field_1536:
                                                  player[caller].field_1536 = 1
          else:
              if call.value != 3 * 10^18:
                  revert with 0, 'inv must be 1,2,3'
              if player[caller].field_2560 > 2:
                  if call.value > 3 * 10^18:
                      revert with 0, 'maxlimit!'
              else:
                  if call.value > (10^18 * player[caller].field_2560) + 10^18:
                      revert with 0, 'maxlimit!'
              if player[caller].field_1024:
                  if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_1536 + player[caller].field_2048 >= 2:
                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                          revert with 0, 'SafeMath sub failed'
                      require player[caller].field_1536 + player[caller].field_2048 - 2 >= player[caller].field_2304
                      if block.timestamp < round[stor16].field_256:
                          if block.timestamp > round[stor16].field_0:
                              if not round[stor16].field_768:
                                  round[stor16].field_768 = 1
                      else:
                          if block.timestamp <= round[stor16].field_0:
                              player[caller].field_1792 = block.timestamp
                          else:
                              if block.timestamp > round[stor16].field_0:
                                  if not round[stor16].field_768:
                                      round[stor16].field_768 = 1
                  else:
                      require player[caller].field_1536 + player[caller].field_2048 >= player[caller].field_2304
                      if block.timestamp < round[stor16].field_256:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                          else:
                              if round[stor16].field_768:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                              else:
                                  round[stor16].field_768 = 1
                                  if round[stor16].field_512 <= 0:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                      if poltime + block.timestamp < block.timestamp:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if not round[stor16].field_1280:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                      else:
                          if block.timestamp <= round[stor16].field_0:
                              player[caller].field_1792 = block.timestamp
                              if player[caller].field_1024:
                                  if player[caller].field_512:
                                      if not player[caller].field_768:
                                          player[caller].field_768 = 1
                                  else:
                                      player[caller].field_512 = 1
                              else:
                                  if referrer[caller]:
                                      referrerQuantity[stor0[caller]]++
                                  else:
                                      if not player[caller].field_512:
                                          player[caller].field_512 = 1
                          else:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                              else:
                                  if round[stor16].field_768:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                  else:
                                      round[stor16].field_768 = 1
                                      if round[stor16].field_512 <= 0:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                                          if poltime + block.timestamp < block.timestamp:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if not round[stor16].field_1280:
                                              rID++
                                              round[stor16 + 1].field_256 = block.timestamp
              else:
                  if block.timestamp < round[stor16].field_256:
                      if block.timestamp <= round[stor16].field_0:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      if round[stor16].field_768:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      round[stor16].field_768 = 1
                      if round[stor16].field_512 <= 0:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512
                          player[caller].field_1792 = block.timestamp
                      else:
                          if round[stor16].field_1280:
                              if round[stor16].field_512:
                                  if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                      revert with 0, 'SafeMath mul failed'
                              else:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                          else:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                  else:
                      if block.timestamp > round[stor16].field_0:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          if round[stor16].field_768:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          round[stor16].field_768 = 1
                          if round[stor16].field_512 <= 0:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                              player[caller].field_1792 = block.timestamp
                          else:
                              if round[stor16].field_1280:
                                  if round[stor16].field_512:
                                      if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                          revert with 0, 'SafeMath mul failed'
                                  else:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                              else:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                                  round[stor16 + 1].field_512 = round[stor16].field_512
                      else:
                          player[caller].field_1792 = block.timestamp
                          if player[caller].field_1024:
                              if player[caller].field_512:
                                  if player[caller].field_768:
                                      if not player[caller].field_1536:
                                          player[caller].field_1536 = 1
                                      if not player[caller].field_2048:
                                          player[caller].field_2048 = 1
                                      if player[caller].field_1024 + call.value < call.value:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_1024 += call.value
                                      player[caller].field_1280 = call.value
                                  else:
                                      player[caller].field_768 = 1
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_1024 += call.value
                                          player[caller].field_1280 = call.value
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_1024 += call.value
                                              player[caller].field_1280 = call.value
                              else:
                                  player[caller].field_512 = 1
                                  if player[caller].field_768:
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_1024 += call.value
                                          player[caller].field_1280 = call.value
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_1024 += call.value
                                              player[caller].field_1280 = call.value
                                  else:
                                      player[caller].field_768 = 1
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_1024 += call.value
                                              player[caller].field_1280 = call.value
                                      else:
                                          player[caller].field_1536 = 1
                                          if player[caller].field_2048:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              player[caller].field_2048 = 1
                          else:
                              if not referrer[caller]:
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_1024 += call.value
                                              player[caller].field_1280 = call.value
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_1024 += call.value
                                                  player[caller].field_1280 = call.value
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_1024 += call.value
                                                  player[caller].field_1280 = call.value
                                          else:
                                              player[caller].field_1536 = 1
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_512 = 1
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_1024 += call.value
                                                  player[caller].field_1280 = call.value
                                          else:
                                              player[caller].field_1536 = 1
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                              else:
                                  referrerQuantity[stor0[caller]]++
                                  playerRnds[stor0[caller]][stor16]++
                                  if playerRnds[stor0[caller]][stor16] + 1 <= round[stor16].field_1024:
                                      if player[caller].field_512:
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                      else:
                                          player[caller].field_512 = 1
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if not player[caller].field_1536:
                                                  player[caller].field_1536 = 1
                                  else:
                                      round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                      round[stor16].field_1280 = referrer[caller]
                                      if player[caller].field_512:
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if not player[caller].field_1536:
                                                  player[caller].field_1536 = 1
                                      else:
                                          player[caller].field_512 = 1
                                          if player[caller].field_768:
                                              if not player[caller].field_1536:
                                                  player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_768 = 1
  else:
      require not ext_code.size(caller)
      if poitProfit <= 0:
          if block.timestamp <= round[stor16].field_0:
              if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 < 0:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
                  player[caller].field_256 = 0
                  player[caller].field_512 = 1
                  player[caller].field_768 = 1
                  if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                      revert with 0, 'SafeMath sub failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 > 0:
                      call caller with:
                         value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 wei
                           gas 2300 * is_zero(value) wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
              stop
          if round[stor16].field_768:
              if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 < 0:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
                  player[caller].field_256 = 0
                  player[caller].field_512 = 1
                  player[caller].field_768 = 1
                  if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                      revert with 0, 'SafeMath sub failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 > 0:
                      call caller with:
                         value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 wei
                           gas 2300 * is_zero(value) wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
              stop
          round[stor16].field_768 = 1
          if round[stor16].field_512 <= 0:
              rID++
              round[stor16 + 1].field_256 = block.timestamp
              if poltime + block.timestamp < block.timestamp:
                  revert with 0, 'SafeMath add failed'
              round[stor16 + 1].field_0 = poltime + block.timestamp
              if 0 > round[stor16].field_512:
                  revert with 0, 'SafeMath sub failed'
              round[stor16 + 1].field_512 = round[stor16].field_512
              if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 < 0:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
                  player[caller].field_256 = 0
                  player[caller].field_512 = 1
                  player[caller].field_768 = 1
                  if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                      revert with 0, 'SafeMath sub failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 > 0:
                      call caller with:
                         value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 wei
                           gas 2300 * is_zero(value) wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
              stop
          if not round[stor16].field_1280:
              rID++
              round[stor16 + 1].field_256 = block.timestamp
              if poltime + block.timestamp < block.timestamp:
                  revert with 0, 'SafeMath add failed'
              round[stor16 + 1].field_0 = poltime + block.timestamp
              if 0 > round[stor16].field_512:
                  revert with 0, 'SafeMath sub failed'
              round[stor16 + 1].field_512 = round[stor16].field_512
              if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 < 0:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
                  player[caller].field_256 = 0
                  player[caller].field_512 = 1
                  player[caller].field_768 = 1
                  if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                      revert with 0, 'SafeMath sub failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 > 0:
                      call caller with:
                         value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 wei
                           gas 2300 * is_zero(value) wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
              stop
          if not round[stor16].field_512:
              rID++
              round[stor16 + 1].field_256 = block.timestamp
              if poltime + block.timestamp < block.timestamp:
                  revert with 0, 'SafeMath add failed'
              round[stor16 + 1].field_0 = poltime + block.timestamp
              if 0 > round[stor16].field_512:
                  revert with 0, 'SafeMath sub failed'
              round[stor16 + 1].field_512 = round[stor16].field_512
              if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 < 0:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                  stop
              player[caller].field_256 = 0
              player[caller].field_512 = 1
              player[caller].field_768 = 1
              if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                  revert with 0, 'SafeMath sub failed'
              if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 > 0:
                  call caller with:
                     value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 wei
                       gas 2300 * is_zero(value) wei
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
          else:
              if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                  revert with 0, 'SafeMath mul failed'
              if 10 * round[stor16].field_512 / 100 > 0:
                  if player[stor14[stor16].field_1280].field_256 + (10 * round[stor16].field_512 / 100) < 10 * round[stor16].field_512 / 100:
                      revert with 0, 'SafeMath add failed'
                  player[stor14[stor16].field_1280].field_256 += 10 * round[stor16].field_512 / 100
                  rID++
                  round[stor16 + 1].field_256 = block.timestamp
                  if poltime + block.timestamp < block.timestamp:
                      revert with 0, 'SafeMath add failed'
                  round[stor16 + 1].field_0 = poltime + block.timestamp
                  if 10 * round[stor16].field_512 / 100 > round[stor16].field_512:
                      revert with 0, 'SafeMath sub failed'
                  round[stor16 + 1].field_512 = round[stor16].field_512 - (10 * round[stor16].field_512 / 100)
                  if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
                      player[caller].field_256 = 0
                      player[caller].field_512 = 1
                      player[caller].field_768 = 1
                      if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                          revert with 0, 'SafeMath sub failed'
              else:
                  rID++
                  round[stor16 + 1].field_256 = block.timestamp
                  if poltime + block.timestamp < block.timestamp:
                      revert with 0, 'SafeMath add failed'
                  round[stor16 + 1].field_0 = poltime + block.timestamp
                  if 10 * round[stor16].field_512 / 100 > round[stor16].field_512:
                      revert with 0, 'SafeMath sub failed'
                  round[stor16 + 1].field_512 = round[stor16].field_512 - (10 * round[stor16].field_512 / 100)
                  if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                      stop
                  player[caller].field_256 = 0
                  player[caller].field_512 = 1
                  player[caller].field_768 = 1
                  if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                      revert with 0, 'SafeMath sub failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 > 0:
                      call caller with:
                         value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 wei
                           gas 2300 * is_zero(value) wei
      else:
          if stor11[caller] <= 0:
              if block.timestamp <= round[stor16].field_0:
                  if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
                      player[caller].field_256 = 0
                      player[caller].field_512 = 1
                      player[caller].field_768 = 1
                      if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                          revert with 0, 'SafeMath sub failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 > 0:
                          call caller with:
                             value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 wei
                               gas 2300 * is_zero(value) wei
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                  stop
              if round[stor16].field_768:
                  if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
                      player[caller].field_256 = 0
                      player[caller].field_512 = 1
                      player[caller].field_768 = 1
                      if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                          revert with 0, 'SafeMath sub failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 > 0:
                          call caller with:
                             value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 wei
                               gas 2300 * is_zero(value) wei
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                  stop
              round[stor16].field_768 = 1
              if round[stor16].field_512 <= 0:
                  rID++
                  round[stor16 + 1].field_256 = block.timestamp
                  if poltime + block.timestamp < block.timestamp:
                      revert with 0, 'SafeMath add failed'
                  round[stor16 + 1].field_0 = poltime + block.timestamp
                  if 0 > round[stor16].field_512:
                      revert with 0, 'SafeMath sub failed'
                  round[stor16 + 1].field_512 = round[stor16].field_512
                  if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
                      player[caller].field_256 = 0
                      player[caller].field_512 = 1
                      player[caller].field_768 = 1
                      if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                          revert with 0, 'SafeMath sub failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 > 0:
                          call caller with:
                             value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 wei
                               gas 2300 * is_zero(value) wei
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                  stop
              if not round[stor16].field_1280:
                  rID++
                  round[stor16 + 1].field_256 = block.timestamp
                  if poltime + block.timestamp < block.timestamp:
                      revert with 0, 'SafeMath add failed'
                  round[stor16 + 1].field_0 = poltime + block.timestamp
                  if 0 > round[stor16].field_512:
                      revert with 0, 'SafeMath sub failed'
                  round[stor16 + 1].field_512 = round[stor16].field_512
                  if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
                      player[caller].field_256 = 0
                      player[caller].field_512 = 1
                      player[caller].field_768 = 1
                      if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                          revert with 0, 'SafeMath sub failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 > 0:
                          call caller with:
                             value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 wei
                               gas 2300 * is_zero(value) wei
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                  stop
              if round[stor16].field_512:
                  if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                      revert with 0, 'SafeMath mul failed'
                  if 10 * round[stor16].field_512 / 100 <= 0:
                      rID++
                      round[stor16 + 1].field_256 = block.timestamp
                      if poltime + block.timestamp < block.timestamp:
                          revert with 0, 'SafeMath add failed'
                      round[stor16 + 1].field_0 = poltime + block.timestamp
                      if 10 * round[stor16].field_512 / 100 > round[stor16].field_512:
                          revert with 0, 'SafeMath sub failed'
                      round[stor16 + 1].field_512 = round[stor16].field_512 - (10 * round[stor16].field_512 / 100)
                      if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                          stop
                      player[caller].field_256 = 0
                      player[caller].field_512 = 1
                      player[caller].field_768 = 1
                      if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                          revert with 0, 'SafeMath sub failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                          revert with 0, 'SafeMath add failed'
                  else:
                      if player[stor14[stor16].field_1280].field_256 + (10 * round[stor16].field_512 / 100) < 10 * round[stor16].field_512 / 100:
                          revert with 0, 'SafeMath add failed'
                      player[stor14[stor16].field_1280].field_256 += 10 * round[stor16].field_512 / 100
                      rID++
                      round[stor16 + 1].field_256 = block.timestamp
                      if poltime + block.timestamp < block.timestamp:
                          revert with 0, 'SafeMath add failed'
                      round[stor16 + 1].field_0 = poltime + block.timestamp
                      if 10 * round[stor16].field_512 / 100 > round[stor16].field_512:
                          revert with 0, 'SafeMath sub failed'
                      round[stor16 + 1].field_512 = round[stor16].field_512 - (10 * round[stor16].field_512 / 100)
                      if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
                          player[caller].field_256 = 0
                          player[caller].field_512 = 1
                          player[caller].field_768 = 1
                          if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
              else:
                  rID++
                  round[stor16 + 1].field_256 = block.timestamp
                  if poltime + block.timestamp < block.timestamp:
                      revert with 0, 'SafeMath add failed'
                  round[stor16 + 1].field_0 = poltime + block.timestamp
                  if 0 > round[stor16].field_512:
                      revert with 0, 'SafeMath sub failed'
                  round[stor16 + 1].field_512 = round[stor16].field_512
                  if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                      stop
                  player[caller].field_256 = 0
                  player[caller].field_512 = 1
                  player[caller].field_768 = 1
                  if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                      revert with 0, 'SafeMath sub failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 > 0:
                      call caller with:
                         value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 wei
                           gas 2300 * is_zero(value) wei
          else:
              if stor12[stor11[caller]] != 1:
                  if stor12[stor11[caller]] > poitProfit:
                      revert with 0, 'SafeMath sub failed'
                  stor12[stor11[caller]] = poitProfit
                  if block.timestamp <= round[stor16].field_0:
                      if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                          if poitProfit - stor12[stor11[caller]] > 0:
                              call caller with:
                                 value poitProfit - stor12[stor11[caller]] wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      else:
                          player[caller].field_256 = 0
                          player[caller].field_512 = 1
                          player[caller].field_768 = 1
                          if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit + -stor12[stor11[caller]] - 2 > 0:
                              call caller with:
                                 value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit + -stor12[stor11[caller]] - 2 wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      stop
                  if round[stor16].field_768:
                      if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                          if poitProfit - stor12[stor11[caller]] > 0:
                              call caller with:
                                 value poitProfit - stor12[stor11[caller]] wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      else:
                          player[caller].field_256 = 0
                          player[caller].field_512 = 1
                          player[caller].field_768 = 1
                          if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit + -stor12[stor11[caller]] - 2 > 0:
                              call caller with:
                                 value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit + -stor12[stor11[caller]] - 2 wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      stop
                  round[stor16].field_768 = 1
                  if round[stor16].field_512 <= 0:
                      rID++
                      round[stor16 + 1].field_256 = block.timestamp
                      if poltime + block.timestamp < block.timestamp:
                          revert with 0, 'SafeMath add failed'
                      round[stor16 + 1].field_0 = poltime + block.timestamp
                      if 0 > round[stor16].field_512:
                          revert with 0, 'SafeMath sub failed'
                      round[stor16 + 1].field_512 = round[stor16].field_512
                      if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                          if poitProfit - stor12[stor11[caller]] > 0:
                              call caller with:
                                 value poitProfit - stor12[stor11[caller]] wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                          stop
                      player[caller].field_256 = 0
                      player[caller].field_512 = 1
                      player[caller].field_768 = 1
                      if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                          revert with 0, 'SafeMath sub failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit + -stor12[stor11[caller]] - 2 <= 0:
                          stop
                      call caller with:
                         value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit + -stor12[stor11[caller]] - 2 wei
                           gas 2300 * is_zero(value) wei
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                  else:
                      if round[stor16].field_1280:
                          if not round[stor16].field_512:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                              if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                                  revert with 0, 'SafeMath add failed'
                              if player[caller].field_768 < 0:
                                  revert with 0, 'SafeMath add failed'
                              if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
                                  player[caller].field_256 = 0
                                  player[caller].field_512 = 1
                                  player[caller].field_768 = 1
                                  if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                  revert with 0, 'SafeMath mul failed'
                              if 10 * round[stor16].field_512 / 100 > 0:
                                  if player[stor14[stor16].field_1280].field_256 + (10 * round[stor16].field_512 / 100) < 10 * round[stor16].field_512 / 100:
                                      revert with 0, 'SafeMath add failed'
                                  player[stor14[stor16].field_1280].field_256 += 10 * round[stor16].field_512 / 100
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 10 * round[stor16].field_512 / 100 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                                  round[stor16 + 1].field_512 = round[stor16].field_512 - (10 * round[stor16].field_512 / 100)
                                  if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if player[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                              else:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 10 * round[stor16].field_512 / 100 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                                  round[stor16 + 1].field_512 = round[stor16].field_512 - (10 * round[stor16].field_512 / 100)
                                  if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                                      revert with 0, 'SafeMath add failed'
                                  if player[caller].field_768 < 0:
                                      revert with 0, 'SafeMath add failed'
                                  if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
                                      player[caller].field_256 = 0
                                      player[caller].field_512 = 1
                                      player[caller].field_768 = 1
                                      if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                                          revert with 0, 'SafeMath sub failed'
                      else:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512
                          if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                              if poitProfit - stor12[stor11[caller]] > 0:
                                  call caller with:
                                     value poitProfit - stor12[stor11[caller]] wei
                                       gas 2300 * is_zero(value) wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                              stop
                          player[caller].field_256 = 0
                          player[caller].field_512 = 1
                          player[caller].field_768 = 1
                          if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 - 2 < 0:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit + -stor12[stor11[caller]] - 2 > 0:
                              call caller with:
                                 value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit + -stor12[stor11[caller]] - 2 wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
              else:
                  stor12[stor11[caller]] = poitProfit
                  if block.timestamp <= round[stor16].field_0:
                      if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                          if poitProfit < poitProfit:
                              revert with 0, 'SafeMath add failed'
                          if poitProfit > 0:
                              call caller with:
                                 value poitProfit wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      else:
                          player[caller].field_256 = 0
                          player[caller].field_512 = 1
                          player[caller].field_768 = 1
                          if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 < poitProfit:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 > 0:
                              call caller with:
                                 value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      stop
                  if round[stor16].field_768:
                      if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                          if poitProfit < poitProfit:
                              revert with 0, 'SafeMath add failed'
                          if poitProfit > 0:
                              call caller with:
                                 value poitProfit wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      else:
                          player[caller].field_256 = 0
                          player[caller].field_512 = 1
                          player[caller].field_768 = 1
                          if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 < poitProfit:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 > 0:
                              call caller with:
                                 value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      stop
                  round[stor16].field_768 = 1
                  if round[stor16].field_512 <= 0:
                      rID++
                      round[stor16 + 1].field_256 = block.timestamp
                      if poltime + block.timestamp < block.timestamp:
                          revert with 0, 'SafeMath add failed'
                      round[stor16 + 1].field_0 = poltime + block.timestamp
                      if 0 > round[stor16].field_512:
                          revert with 0, 'SafeMath sub failed'
                      round[stor16 + 1].field_512 = round[stor16].field_512
                      if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                          if poitProfit < poitProfit:
                              revert with 0, 'SafeMath add failed'
                          if poitProfit > 0:
                              call caller with:
                                 value poitProfit wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      else:
                          player[caller].field_256 = 0
                          player[caller].field_512 = 1
                          player[caller].field_768 = 1
                          if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 < poitProfit:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 > 0:
                              call caller with:
                                 value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      stop
                  if not round[stor16].field_1280:
                      rID++
                      round[stor16 + 1].field_256 = block.timestamp
                      if poltime + block.timestamp < block.timestamp:
                          revert with 0, 'SafeMath add failed'
                      round[stor16 + 1].field_0 = poltime + block.timestamp
                      if 0 > round[stor16].field_512:
                          revert with 0, 'SafeMath sub failed'
                      round[stor16 + 1].field_512 = round[stor16].field_512
                      if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                          if poitProfit < poitProfit:
                              revert with 0, 'SafeMath add failed'
                          if poitProfit > 0:
                              call caller with:
                                 value poitProfit wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      else:
                          player[caller].field_256 = 0
                          player[caller].field_512 = 1
                          player[caller].field_768 = 1
                          if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 < poitProfit:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 > 0:
                              call caller with:
                                 value player[caller].field_768 + player[caller].field_512 + player[caller].field_256 + poitProfit - 2 wei
                                   gas 2300 * is_zero(value) wei
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                      stop
                  if not round[stor16].field_512:
                      rID++
                      round[stor16 + 1].field_256 = block.timestamp
                      if poltime + block.timestamp < block.timestamp:
                          revert with 0, 'SafeMath add failed'
                      round[stor16 + 1].field_0 = poltime + block.timestamp
                      if 0 > round[stor16].field_512:
                          revert with 0, 'SafeMath sub failed'
                      round[stor16 + 1].field_512 = round[stor16].field_512
                      if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 < 0:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                          if poitProfit < poitProfit:
                              revert with 0, 'SafeMath add failed'
                          if poitProfit <= 0:
                              stop
                          call caller with:
                             value poitProfit wei
                               gas 2300 * is_zero(value) wei
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                      else:
                          player[caller].field_256 = 0
                          player[caller].field_512 = 1
                          player[caller].field_768 = 1
                          if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                              revert with 0, 'SafeMath sub failed'
                  else:
                      if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                          revert with 0, 'SafeMath mul failed'
                      if 10 * round[stor16].field_512 / 100 <= 0:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 10 * round[stor16].field_512 / 100 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512 - (10 * round[stor16].field_512 / 100)
                          if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 <= 2:
                              if poitProfit < poitProfit:
                                  revert with 0, 'SafeMath add failed'
                              if poitProfit > 0:
                                  call caller with:
                                     value poitProfit wei
                                       gas 2300 * is_zero(value) wei
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                          else:
                              player[caller].field_256 = 0
                              player[caller].field_512 = 1
                              player[caller].field_768 = 1
                              if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
                      else:
                          if player[stor14[stor16].field_1280].field_256 + (10 * round[stor16].field_512 / 100) < 10 * round[stor16].field_512 / 100:
                              revert with 0, 'SafeMath add failed'
                          player[stor14[stor16].field_1280].field_256 += 10 * round[stor16].field_512 / 100
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 10 * round[stor16].field_512 / 100 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512 - (10 * round[stor16].field_512 / 100)
                          if player[caller].field_512 + player[caller].field_256 < player[caller].field_256:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_768 < 0:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_768 + player[caller].field_512 + player[caller].field_256 > 2:
                              player[caller].field_256 = 0
                              player[caller].field_512 = 1
                              player[caller].field_768 = 1
                              if 2 > player[caller].field_768 + player[caller].field_512 + player[caller].field_256:
                                  revert with 0, 'SafeMath sub failed'
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def play(address _referrer) payable: 
  require 1 == bool(started)
  require not ext_code.size(caller)
  if 10^18 == call.value:
      if player[caller].field_2560 > 2:
          if call.value > 3 * 10^18:
              revert with 0, 'maxlimit!'
      else:
          if call.value > (10^18 * player[caller].field_2560) + 10^18:
              revert with 0, 'maxlimit!'
      if player[caller].field_1024:
          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
              revert with 0, 'SafeMath add failed'
          if player[caller].field_1536 + player[caller].field_2048 >= 2:
              if 2 > player[caller].field_1536 + player[caller].field_2048:
                  revert with 0, 'SafeMath sub failed'
              require player[caller].field_1536 + player[caller].field_2048 - 2 >= player[caller].field_2304
              if _referrer_ == caller:
                  if block.timestamp < round[stor16].field_256:
                      if block.timestamp > round[stor16].field_0:
                  else:
                      if block.timestamp <= round[stor16].field_0:
                          player[caller].field_1792 = block.timestamp
                      else:
                          if block.timestamp > round[stor16].field_0:
              else:
                  if not _referrer_:
                      if block.timestamp < round[stor16].field_256:
                          if block.timestamp > round[stor16].field_0:
                      else:
                          if block.timestamp <= round[stor16].field_0:
                              player[caller].field_1792 = block.timestamp
                          else:
                              if block.timestamp > round[stor16].field_0:
                  else:
                      if caller == _referrer_:
                          if block.timestamp >= round[stor16].field_256:
                              if block.timestamp <= round[stor16].field_0:
                                  player[caller].field_1792 = block.timestamp
                      else:
                          if not referrer[caller]:
                              if player[addr(_referrer_)].field_1024 > 0:
                                  if not stor2[caller]:
          else:
              require player[caller].field_1536 + player[caller].field_2048 >= player[caller].field_2304
              if _referrer_ == caller:
                  if block.timestamp < round[stor16].field_256:
                      if block.timestamp <= round[stor16].field_0:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                      else:
                          if round[stor16].field_768:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                          else:
                              round[stor16].field_768 = 1
                              if round[stor16].field_512 <= 0:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                              else:
                                  if not round[stor16].field_1280:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                  else:
                      if block.timestamp <= round[stor16].field_0:
                          player[caller].field_1792 = block.timestamp
                          if player[caller].field_1024:
                              if not player[caller].field_512:
                                  player[caller].field_512 = 1
                          else:
                              if not referrer[caller]:
                      else:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                          else:
                              if round[stor16].field_768:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                              else:
                                  round[stor16].field_768 = 1
                                  if round[stor16].field_512 <= 0:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                  else:
                                      if not round[stor16].field_1280:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
              else:
                  if not _referrer_:
                      if block.timestamp < round[stor16].field_256:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                          else:
                              if round[stor16].field_768:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                              else:
                                  round[stor16].field_768 = 1
                                  if round[stor16].field_512 <= 0:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                  else:
                                      if not round[stor16].field_1280:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                      else:
                          if block.timestamp <= round[stor16].field_0:
                              player[caller].field_1792 = block.timestamp
                              if player[caller].field_1024:
                                  if not player[caller].field_512:
                                      player[caller].field_512 = 1
                              else:
                                  if not referrer[caller]:
                          else:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                              else:
                                  if round[stor16].field_768:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                  else:
                                      round[stor16].field_768 = 1
                                      if round[stor16].field_512 <= 0:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                                      else:
                                          if not round[stor16].field_1280:
                                              rID++
                                              round[stor16 + 1].field_256 = block.timestamp
                  else:
                      if _referrer_ != caller:
                          if referrer[caller]:
                              if block.timestamp < round[stor16].field_256:
                                  if block.timestamp > round[stor16].field_0:
                              else:
                                  if block.timestamp <= round[stor16].field_0:
                                      player[caller].field_1792 = block.timestamp
                                  else:
                                      if block.timestamp > round[stor16].field_0:
                          else:
                              if player[addr(_referrer_)].field_1024 <= 0:
                                  if block.timestamp >= round[stor16].field_256:
                                      if block.timestamp <= round[stor16].field_0:
                                          player[caller].field_1792 = block.timestamp
                              else:
                                  if stor2[caller]:
                                      if block.timestamp >= round[stor16].field_256:
                                  else:
                                      if player[addr(_referrer_)].field_1024:
                                          if player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 < player[addr(_referrer_)].field_2048:
                                              revert with 0, 'SafeMath add failed'
                      else:
                          if block.timestamp < round[stor16].field_256:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                              else:
                                  if round[stor16].field_768:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      round[stor16].field_768 = 1
                                      if round[stor16].field_512 <= 0:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                          else:
                              if block.timestamp <= round[stor16].field_0:
                                  player[caller].field_1792 = block.timestamp
                                  if not player[caller].field_1024:
                              else:
                                  if block.timestamp <= round[stor16].field_0:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                  else:
                                      if round[stor16].field_768:
                                          if call.value + player[caller].field_512 < player[caller].field_512:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          round[stor16].field_768 = 1
                                          if round[stor16].field_512 <= 0:
                                              rID++
                                              round[stor16 + 1].field_256 = block.timestamp
      else:
          if _referrer_ == caller:
              if block.timestamp < round[stor16].field_256:
                  if block.timestamp <= round[stor16].field_0:
                      if call.value + player[caller].field_512 < player[caller].field_512:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_512 += call.value
                      stop
                  if round[stor16].field_768:
                      if call.value + player[caller].field_512 < player[caller].field_512:
                          revert with 0, 'SafeMath add failed'
                      player[caller].field_512 += call.value
                      stop
                  round[stor16].field_768 = 1
                  if round[stor16].field_512 <= 0:
                      rID++
                      round[stor16 + 1].field_256 = block.timestamp
                      if poltime + block.timestamp < block.timestamp:
                          revert with 0, 'SafeMath add failed'
                      round[stor16 + 1].field_0 = poltime + block.timestamp
                      if 0 > round[stor16].field_512:
                          revert with 0, 'SafeMath sub failed'
                      round[stor16 + 1].field_512 = round[stor16].field_512
                  else:
                      if round[stor16].field_1280:
                          if round[stor16].field_512:
                              if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                  revert with 0, 'SafeMath mul failed'
                      else:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512
              else:
                  if block.timestamp > round[stor16].field_0:
                      if block.timestamp <= round[stor16].field_0:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      if round[stor16].field_768:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      round[stor16].field_768 = 1
                      if round[stor16].field_512 <= 0:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512
                      else:
                          if round[stor16].field_1280:
                              if round[stor16].field_512:
                                  if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                      revert with 0, 'SafeMath mul failed'
                          else:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                  else:
                      player[caller].field_1792 = block.timestamp
                      if player[caller].field_1024:
                          if player[caller].field_512:
                              if player[caller].field_768:
                                  if player[caller].field_1536:
                                      if not player[caller].field_2048:
                                          player[caller].field_2048 = 1
                                      if player[caller].field_1024 + call.value < call.value:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_1024 += call.value
                                      player[caller].field_1280 = call.value
                                  else:
                                      player[caller].field_1536 = 1
                                      if not player[caller].field_2048:
                                          player[caller].field_2048 = 1
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_1024 += call.value
                                          player[caller].field_1280 = call.value
                              else:
                                  player[caller].field_768 = 1
                                  if player[caller].field_1536:
                                      if not player[caller].field_2048:
                                          player[caller].field_2048 = 1
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_1024 += call.value
                                          player[caller].field_1280 = call.value
                                  else:
                                      player[caller].field_1536 = 1
                                      if player[caller].field_2048:
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          player[caller].field_2048 = 1
                          else:
                              player[caller].field_512 = 1
                              if player[caller].field_768:
                                  if player[caller].field_1536:
                                      if not player[caller].field_2048:
                                          player[caller].field_2048 = 1
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_1024 += call.value
                                          player[caller].field_1280 = call.value
                                  else:
                                      player[caller].field_1536 = 1
                                      if player[caller].field_2048:
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          player[caller].field_2048 = 1
                              else:
                                  player[caller].field_768 = 1
                                  if player[caller].field_1536:
                                      if player[caller].field_2048:
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_1536 = 1
                                      if not player[caller].field_2048:
                                          player[caller].field_2048 = 1
                      else:
                          if not referrer[caller]:
                              if player[caller].field_512:
                                  if player[caller].field_768:
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_1024 += call.value
                                              player[caller].field_1280 = call.value
                                      else:
                                          player[caller].field_1536 = 1
                                          if player[caller].field_2048:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_768 = 1
                                      if player[caller].field_1536:
                                          if player[caller].field_2048:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                              else:
                                  player[caller].field_512 = 1
                                  if player[caller].field_768:
                                      if player[caller].field_1536:
                                          if player[caller].field_2048:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_768 = 1
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                          else:
                              referrerQuantity[stor0[caller]]++
                              playerRnds[stor0[caller]][stor16]++
                              if playerRnds[stor0[caller]][stor16] + 1 <= round[stor16].field_1024:
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if not player[caller].field_1536:
                                              player[caller].field_1536 = 1
                                  else:
                                      player[caller].field_512 = 1
                                      if player[caller].field_768:
                                          if not player[caller].field_1536:
                                              player[caller].field_1536 = 1
                                      else:
                                          player[caller].field_768 = 1
                              else:
                                  round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                  round[stor16].field_1280 = referrer[caller]
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if not player[caller].field_1536:
                                              player[caller].field_1536 = 1
                                      else:
                                          player[caller].field_768 = 1
                                  else:
                                      player[caller].field_512 = 1
                                      if not player[caller].field_768:
                                          player[caller].field_768 = 1
          else:
              if not _referrer_:
                  if block.timestamp < round[stor16].field_256:
                      if block.timestamp <= round[stor16].field_0:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      if round[stor16].field_768:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      round[stor16].field_768 = 1
                      if round[stor16].field_512 <= 0:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512
                      else:
                          if round[stor16].field_1280:
                              if round[stor16].field_512:
                                  if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                      revert with 0, 'SafeMath mul failed'
                          else:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                  else:
                      if block.timestamp > round[stor16].field_0:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          if round[stor16].field_768:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          round[stor16].field_768 = 1
                          if round[stor16].field_512 <= 0:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                          else:
                              if round[stor16].field_1280:
                                  if round[stor16].field_512:
                                      if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                          revert with 0, 'SafeMath mul failed'
                              else:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                                  round[stor16 + 1].field_512 = round[stor16].field_512
                      else:
                          player[caller].field_1792 = block.timestamp
                          if player[caller].field_1024:
                              if player[caller].field_512:
                                  if player[caller].field_768:
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                          if player[caller].field_1024 + call.value < call.value:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_1024 += call.value
                                          player[caller].field_1280 = call.value
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_1024 += call.value
                                              player[caller].field_1280 = call.value
                                  else:
                                      player[caller].field_768 = 1
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_1024 += call.value
                                              player[caller].field_1280 = call.value
                                      else:
                                          player[caller].field_1536 = 1
                                          if player[caller].field_2048:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              player[caller].field_2048 = 1
                              else:
                                  player[caller].field_512 = 1
                                  if player[caller].field_768:
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_1024 += call.value
                                              player[caller].field_1280 = call.value
                                      else:
                                          player[caller].field_1536 = 1
                                          if player[caller].field_2048:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_768 = 1
                                      if player[caller].field_1536:
                                          if player[caller].field_2048:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                          else:
                              if not referrer[caller]:
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_1024 += call.value
                                                  player[caller].field_1280 = call.value
                                          else:
                                              player[caller].field_1536 = 1
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_512 = 1
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                              else:
                                  referrerQuantity[stor0[caller]]++
                                  playerRnds[stor0[caller]][stor16]++
                                  if playerRnds[stor0[caller]][stor16] + 1 <= round[stor16].field_1024:
                                      if player[caller].field_512:
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if not player[caller].field_1536:
                                                  player[caller].field_1536 = 1
                                      else:
                                          player[caller].field_512 = 1
                                          if player[caller].field_768:
                                              if not player[caller].field_1536:
                                                  player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_768 = 1
                                  else:
                                      round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                      round[stor16].field_1280 = referrer[caller]
                                      if player[caller].field_512:
                                          if player[caller].field_768:
                                              if not player[caller].field_1536:
                                                  player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_768 = 1
                                      else:
                                          player[caller].field_512 = 1
                                          if not player[caller].field_768:
                                              player[caller].field_768 = 1
              else:
                  if _referrer_ != caller:
                      if referrer[caller]:
                          if block.timestamp < round[stor16].field_256:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                                  stop
                              if round[stor16].field_768:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                                  stop
                              round[stor16].field_768 = 1
                              if round[stor16].field_512 <= 0:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                              else:
                                  if round[stor16].field_1280:
                                      if round[stor16].field_512:
                                  else:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                      if poltime + block.timestamp < block.timestamp:
                                          revert with 0, 'SafeMath add failed'
                                      round[stor16 + 1].field_0 = poltime + block.timestamp
                          else:
                              if block.timestamp <= round[stor16].field_0:
                                  player[caller].field_1792 = block.timestamp
                                  if player[caller].field_1024:
                                      if player[caller].field_512:
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if not player[caller].field_1536:
                                                  player[caller].field_1536 = 1
                                      else:
                                          player[caller].field_512 = 1
                                          if player[caller].field_768:
                                              if not player[caller].field_1536:
                                                  player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_768 = 1
                                  else:
                                      if not referrer[caller]:
                                          if player[caller].field_512:
                                              if player[caller].field_768:
                                                  if not player[caller].field_1536:
                                                      player[caller].field_1536 = 1
                                              else:
                                                  player[caller].field_768 = 1
                                          else:
                                              player[caller].field_512 = 1
                                              if not player[caller].field_768:
                                                  player[caller].field_768 = 1
                                      else:
                                          referrerQuantity[stor0[caller]]++
                                          playerRnds[stor0[caller]][stor16]++
                                          if playerRnds[stor0[caller]][stor16] + 1 > round[stor16].field_1024:
                                              round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                              round[stor16].field_1280 = referrer[caller]
                              else:
                                  if block.timestamp <= round[stor16].field_0:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                      stop
                                  if round[stor16].field_768:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                      stop
                                  round[stor16].field_768 = 1
                                  if round[stor16].field_512 <= 0:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                      if poltime + block.timestamp < block.timestamp:
                                          revert with 0, 'SafeMath add failed'
                                      round[stor16 + 1].field_0 = poltime + block.timestamp
                                  else:
                                      if round[stor16].field_1280:
                                          if round[stor16].field_512:
                                      else:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                                          if poltime + block.timestamp < block.timestamp:
                                              revert with 0, 'SafeMath add failed'
                                          round[stor16 + 1].field_0 = poltime + block.timestamp
                      else:
                          if player[addr(_referrer_)].field_1024 <= 0:
                              if block.timestamp < round[stor16].field_256:
                                  if block.timestamp <= round[stor16].field_0:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                      stop
                                  if round[stor16].field_768:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                  else:
                                      round[stor16].field_768 = 1
                                      if round[stor16].field_512 <= 0:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                                          if poltime + block.timestamp < block.timestamp:
                                              revert with 0, 'SafeMath add failed'
                                          round[stor16 + 1].field_0 = poltime + block.timestamp
                                      else:
                                          if not round[stor16].field_1280:
                                              rID++
                                              round[stor16 + 1].field_256 = block.timestamp
                                              if poltime + block.timestamp < block.timestamp:
                                                  revert with 0, 'SafeMath add failed'
                              else:
                                  if block.timestamp <= round[stor16].field_0:
                                      player[caller].field_1792 = block.timestamp
                                      if player[caller].field_1024:
                                          if player[caller].field_512:
                                              if player[caller].field_768:
                                                  if not player[caller].field_1536:
                                                      player[caller].field_1536 = 1
                                              else:
                                                  player[caller].field_768 = 1
                                          else:
                                              player[caller].field_512 = 1
                                              if not player[caller].field_768:
                                                  player[caller].field_768 = 1
                                      else:
                                          if not referrer[caller]:
                                              if player[caller].field_512:
                                                  if not player[caller].field_768:
                                                      player[caller].field_768 = 1
                                              else:
                                                  player[caller].field_512 = 1
                                          else:
                                              referrerQuantity[stor0[caller]]++
                                              playerRnds[stor0[caller]][stor16]++
                                  else:
                                      if block.timestamp <= round[stor16].field_0:
                                          if call.value + player[caller].field_512 < player[caller].field_512:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_512 += call.value
                                          stop
                                      if round[stor16].field_768:
                                          if call.value + player[caller].field_512 < player[caller].field_512:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_512 += call.value
                                      else:
                                          round[stor16].field_768 = 1
                                          if round[stor16].field_512 <= 0:
                                              rID++
                                              round[stor16 + 1].field_256 = block.timestamp
                                              if poltime + block.timestamp < block.timestamp:
                                                  revert with 0, 'SafeMath add failed'
                                              round[stor16 + 1].field_0 = poltime + block.timestamp
                                          else:
                                              if not round[stor16].field_1280:
                                                  rID++
                                                  round[stor16 + 1].field_256 = block.timestamp
                                                  if poltime + block.timestamp < block.timestamp:
                                                      revert with 0, 'SafeMath add failed'
                          else:
                              if not stor2[caller]:
                                  if not player[addr(_referrer_)].field_1024:
                                      if block.timestamp >= round[stor16].field_256:
                                          if block.timestamp <= round[stor16].field_0:
                                              player[caller].field_1792 = block.timestamp
                                  else:
                                      if player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 < player[addr(_referrer_)].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                      if player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 >= 2:
                                          if 2 > player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if block.timestamp < round[stor16].field_256:
                                      if block.timestamp <= round[stor16].field_0:
                                          if call.value + player[caller].field_512 < player[caller].field_512:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_512 += call.value
                                      else:
                                          if round[stor16].field_768:
                                              if call.value + player[caller].field_512 < player[caller].field_512:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_512 += call.value
                                          else:
                                              round[stor16].field_768 = 1
                                              if round[stor16].field_512 <= 0:
                                                  rID++
                                                  round[stor16 + 1].field_256 = block.timestamp
                                              else:
                                                  if not round[stor16].field_1280:
                                                      rID++
                                                      round[stor16 + 1].field_256 = block.timestamp
                                  else:
                                      if block.timestamp <= round[stor16].field_0:
                                          player[caller].field_1792 = block.timestamp
                                          if player[caller].field_1024:
                                              if not player[caller].field_512:
                                                  player[caller].field_512 = 1
                                          else:
                                              if not referrer[caller]:
                                      else:
                                          if block.timestamp <= round[stor16].field_0:
                                              if call.value + player[caller].field_512 < player[caller].field_512:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_512 += call.value
                                          else:
                                              if round[stor16].field_768:
                                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_512 += call.value
                                              else:
                                                  round[stor16].field_768 = 1
                                                  if round[stor16].field_512 <= 0:
                                                      rID++
                                                      round[stor16 + 1].field_256 = block.timestamp
                                                  else:
                                                      if not round[stor16].field_1280:
                                                          rID++
                                                          round[stor16 + 1].field_256 = block.timestamp
                  else:
                      if block.timestamp < round[stor16].field_256:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          if round[stor16].field_768:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          round[stor16].field_768 = 1
                          if round[stor16].field_512 <= 0:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                          else:
                              if round[stor16].field_1280:
                                  if round[stor16].field_512:
                                      if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                          revert with 0, 'SafeMath mul failed'
                              else:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                      else:
                          if block.timestamp > round[stor16].field_0:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                                  stop
                              if round[stor16].field_768:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                                  stop
                              round[stor16].field_768 = 1
                              if round[stor16].field_512 <= 0:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                                  round[stor16 + 1].field_512 = round[stor16].field_512
                              else:
                                  if round[stor16].field_1280:
                                      if round[stor16].field_512:
                                          if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                              revert with 0, 'SafeMath mul failed'
                                  else:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                      if poltime + block.timestamp < block.timestamp:
                                          revert with 0, 'SafeMath add failed'
                                      round[stor16 + 1].field_0 = poltime + block.timestamp
                                      if 0 > round[stor16].field_512:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              player[caller].field_1792 = block.timestamp
                              if player[caller].field_1024:
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_1024 += call.value
                                                  player[caller].field_1280 = call.value
                                          else:
                                              player[caller].field_1536 = 1
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_512 = 1
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                              else:
                                  if not referrer[caller]:
                                      if player[caller].field_512:
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if player[caller].field_2048:
                                                      if player[caller].field_1024 + call.value < call.value:
                                                          revert with 0, 'SafeMath add failed'
                                                  else:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_512 = 1
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                  else:
                                      referrerQuantity[stor0[caller]]++
                                      playerRnds[stor0[caller]][stor16]++
                                      if playerRnds[stor0[caller]][stor16] + 1 <= round[stor16].field_1024:
                                          if player[caller].field_512:
                                              if player[caller].field_768:
                                                  if not player[caller].field_1536:
                                                      player[caller].field_1536 = 1
                                              else:
                                                  player[caller].field_768 = 1
                                          else:
                                              player[caller].field_512 = 1
                                              if not player[caller].field_768:
                                                  player[caller].field_768 = 1
                                      else:
                                          round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                          round[stor16].field_1280 = referrer[caller]
                                          if player[caller].field_512:
                                              if not player[caller].field_768:
                                                  player[caller].field_768 = 1
                                          else:
                                              player[caller].field_512 = 1
  else:
      if 2 * 10^18 == call.value:
          if player[caller].field_2560 > 2:
              if call.value > 3 * 10^18:
                  revert with 0, 'maxlimit!'
          else:
              if call.value > (10^18 * player[caller].field_2560) + 10^18:
                  revert with 0, 'maxlimit!'
          if player[caller].field_1024:
              if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_1536 + player[caller].field_2048 >= 2:
                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                      revert with 0, 'SafeMath sub failed'
                  require player[caller].field_1536 + player[caller].field_2048 - 2 >= player[caller].field_2304
                  if _referrer_ == caller:
                      if block.timestamp >= round[stor16].field_256:
                          if block.timestamp <= round[stor16].field_0:
                              player[caller].field_1792 = block.timestamp
                  else:
                      if not _referrer_:
                          if block.timestamp >= round[stor16].field_256:
                              if block.timestamp <= round[stor16].field_0:
                                  player[caller].field_1792 = block.timestamp
                      else:
                          if caller == _referrer_:
                              if block.timestamp >= round[stor16].field_256:
                                  if block.timestamp > round[stor16].field_0:
                          else:
                              if not referrer[caller]:
                                  if player[addr(_referrer_)].field_1024 > 0:
              else:
                  require player[caller].field_1536 + player[caller].field_2048 >= player[caller].field_2304
                  if _referrer_ == caller:
                      if block.timestamp < round[stor16].field_256:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                          else:
                              if round[stor16].field_768:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                              else:
                                  round[stor16].field_768 = 1
                                  if round[stor16].field_512 <= 0:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                      else:
                          if block.timestamp <= round[stor16].field_0:
                              player[caller].field_1792 = block.timestamp
                              if not player[caller].field_1024:
                          else:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                              else:
                                  if round[stor16].field_768:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      round[stor16].field_768 = 1
                                      if round[stor16].field_512 <= 0:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                  else:
                      if _referrer_:
                          if _referrer_ != caller:
                              if referrer[caller]:
                                  if block.timestamp >= round[stor16].field_256:
                                      if block.timestamp <= round[stor16].field_0:
                                          player[caller].field_1792 = block.timestamp
                              else:
                                  if player[addr(_referrer_)].field_1024 <= 0:
                                      if block.timestamp >= round[stor16].field_256:
                                          if block.timestamp > round[stor16].field_0:
                                  else:
                                      if not stor2[caller]:
                                          if player[addr(_referrer_)].field_1024:
                          else:
                              if block.timestamp < round[stor16].field_256:
                                  if block.timestamp <= round[stor16].field_0:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if not round[stor16].field_768:
                                          round[stor16].field_768 = 1
                              else:
                                  if block.timestamp <= round[stor16].field_0:
                                      player[caller].field_1792 = block.timestamp
                                  else:
                                      if block.timestamp <= round[stor16].field_0:
                                          if call.value + player[caller].field_512 < player[caller].field_512:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if not round[stor16].field_768:
                                              round[stor16].field_768 = 1
                      else:
                          if block.timestamp < round[stor16].field_256:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                              else:
                                  if round[stor16].field_768:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      round[stor16].field_768 = 1
                                      if round[stor16].field_512 <= 0:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                          else:
                              if block.timestamp <= round[stor16].field_0:
                                  player[caller].field_1792 = block.timestamp
                                  if not player[caller].field_1024:
                              else:
                                  if block.timestamp <= round[stor16].field_0:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                  else:
                                      if round[stor16].field_768:
                                          if call.value + player[caller].field_512 < player[caller].field_512:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          round[stor16].field_768 = 1
                                          if round[stor16].field_512 <= 0:
                                              rID++
                                              round[stor16 + 1].field_256 = block.timestamp
          else:
              if _referrer_ == caller:
                  if block.timestamp < round[stor16].field_256:
                      if block.timestamp <= round[stor16].field_0:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      if round[stor16].field_768:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      round[stor16].field_768 = 1
                      if round[stor16].field_512 <= 0:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                          round[stor16 + 1].field_512 = round[stor16].field_512
                      else:
                          if round[stor16].field_1280:
                              if round[stor16].field_512:
                                  if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                      revert with 0, 'SafeMath mul failed'
                          else:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                  else:
                      if block.timestamp > round[stor16].field_0:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          if round[stor16].field_768:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          round[stor16].field_768 = 1
                          if round[stor16].field_512 <= 0:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                          else:
                              if round[stor16].field_1280:
                                  if round[stor16].field_512:
                                      if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                          revert with 0, 'SafeMath mul failed'
                              else:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                      else:
                          player[caller].field_1792 = block.timestamp
                          if player[caller].field_1024:
                              if player[caller].field_512:
                                  if player[caller].field_768:
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_1024 += call.value
                                              player[caller].field_1280 = call.value
                                      else:
                                          player[caller].field_1536 = 1
                                          if player[caller].field_2048:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_768 = 1
                                      if player[caller].field_1536:
                                          if player[caller].field_2048:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                              else:
                                  player[caller].field_512 = 1
                                  if player[caller].field_768:
                                      if player[caller].field_1536:
                                          if player[caller].field_2048:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_768 = 1
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                          else:
                              if not referrer[caller]:
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_512 = 1
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                              else:
                                  referrerQuantity[stor0[caller]]++
                                  playerRnds[stor0[caller]][stor16]++
                                  if playerRnds[stor0[caller]][stor16] + 1 <= round[stor16].field_1024:
                                      if player[caller].field_512:
                                          if player[caller].field_768:
                                              if not player[caller].field_1536:
                                                  player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_768 = 1
                                      else:
                                          player[caller].field_512 = 1
                                          if not player[caller].field_768:
                                              player[caller].field_768 = 1
                                  else:
                                      round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                      round[stor16].field_1280 = referrer[caller]
                                      if player[caller].field_512:
                                          if not player[caller].field_768:
                                              player[caller].field_768 = 1
                                      else:
                                          player[caller].field_512 = 1
              else:
                  if not _referrer_:
                      if block.timestamp < round[stor16].field_256:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          if round[stor16].field_768:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          round[stor16].field_768 = 1
                          if round[stor16].field_512 <= 0:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                              round[stor16 + 1].field_512 = round[stor16].field_512
                          else:
                              if round[stor16].field_1280:
                                  if round[stor16].field_512:
                                      if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                          revert with 0, 'SafeMath mul failed'
                              else:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                      else:
                          if block.timestamp > round[stor16].field_0:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                                  stop
                              if round[stor16].field_768:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                                  stop
                              round[stor16].field_768 = 1
                              if round[stor16].field_512 <= 0:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                                  round[stor16 + 1].field_512 = round[stor16].field_512
                              else:
                                  if round[stor16].field_1280:
                                      if round[stor16].field_512:
                                          if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                              revert with 0, 'SafeMath mul failed'
                                  else:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                      if poltime + block.timestamp < block.timestamp:
                                          revert with 0, 'SafeMath add failed'
                                      round[stor16 + 1].field_0 = poltime + block.timestamp
                                      if 0 > round[stor16].field_512:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              player[caller].field_1792 = block.timestamp
                              if player[caller].field_1024:
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_1024 += call.value
                                                  player[caller].field_1280 = call.value
                                          else:
                                              player[caller].field_1536 = 1
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_512 = 1
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                              else:
                                  if not referrer[caller]:
                                      if player[caller].field_512:
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if player[caller].field_2048:
                                                      if player[caller].field_1024 + call.value < call.value:
                                                          revert with 0, 'SafeMath add failed'
                                                  else:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_512 = 1
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                  else:
                                      referrerQuantity[stor0[caller]]++
                                      playerRnds[stor0[caller]][stor16]++
                                      if playerRnds[stor0[caller]][stor16] + 1 <= round[stor16].field_1024:
                                          if player[caller].field_512:
                                              if player[caller].field_768:
                                                  if not player[caller].field_1536:
                                                      player[caller].field_1536 = 1
                                              else:
                                                  player[caller].field_768 = 1
                                          else:
                                              player[caller].field_512 = 1
                                              if not player[caller].field_768:
                                                  player[caller].field_768 = 1
                                      else:
                                          round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                          round[stor16].field_1280 = referrer[caller]
                                          if player[caller].field_512:
                                              if not player[caller].field_768:
                                                  player[caller].field_768 = 1
                                          else:
                                              player[caller].field_512 = 1
                  else:
                      if caller == _referrer_:
                          if block.timestamp < round[stor16].field_256:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                                  stop
                              if round[stor16].field_768:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                                  stop
                              round[stor16].field_768 = 1
                              if round[stor16].field_512 <= 0:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if round[stor16].field_1280:
                                      if round[stor16].field_512:
                                          if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                              revert with 0, 'SafeMath mul failed'
                                  else:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                      if poltime + block.timestamp < block.timestamp:
                                          revert with 0, 'SafeMath add failed'
                                      round[stor16 + 1].field_0 = poltime + block.timestamp
                                      if 0 > round[stor16].field_512:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              if block.timestamp > round[stor16].field_0:
                                  if block.timestamp <= round[stor16].field_0:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                      stop
                                  if round[stor16].field_768:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                      stop
                                  round[stor16].field_768 = 1
                                  if round[stor16].field_512 <= 0:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                      if poltime + block.timestamp < block.timestamp:
                                          revert with 0, 'SafeMath add failed'
                                      round[stor16 + 1].field_0 = poltime + block.timestamp
                                      if 0 > round[stor16].field_512:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if round[stor16].field_1280:
                                          if round[stor16].field_512:
                                              if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                                          if poltime + block.timestamp < block.timestamp:
                                              revert with 0, 'SafeMath add failed'
                                          round[stor16 + 1].field_0 = poltime + block.timestamp
                                          if 0 > round[stor16].field_512:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  player[caller].field_1792 = block.timestamp
                                  if player[caller].field_1024:
                                      if player[caller].field_512:
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if player[caller].field_2048:
                                                      if player[caller].field_1024 + call.value < call.value:
                                                          revert with 0, 'SafeMath add failed'
                                                  else:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_512 = 1
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                  else:
                                      if not referrer[caller]:
                                          if player[caller].field_512:
                                              if player[caller].field_768:
                                                  if player[caller].field_1536:
                                                      if not player[caller].field_2048:
                                                          player[caller].field_2048 = 1
                                                  else:
                                                      player[caller].field_1536 = 1
                                                      if not player[caller].field_2048:
                                                          player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_768 = 1
                                                  if player[caller].field_1536:
                                                      if not player[caller].field_2048:
                                                          player[caller].field_2048 = 1
                                                  else:
                                                      player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_512 = 1
                                              if player[caller].field_768:
                                                  if player[caller].field_1536:
                                                      if not player[caller].field_2048:
                                                          player[caller].field_2048 = 1
                                                  else:
                                                      player[caller].field_1536 = 1
                                              else:
                                                  player[caller].field_768 = 1
                                                  if not player[caller].field_1536:
                                                      player[caller].field_1536 = 1
                                      else:
                                          referrerQuantity[stor0[caller]]++
                                          playerRnds[stor0[caller]][stor16]++
                                          if playerRnds[stor0[caller]][stor16] + 1 <= round[stor16].field_1024:
                                              if player[caller].field_512:
                                                  if not player[caller].field_768:
                                                      player[caller].field_768 = 1
                                              else:
                                                  player[caller].field_512 = 1
                                          else:
                                              round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                              round[stor16].field_1280 = referrer[caller]
                                              if not player[caller].field_512:
                                                  player[caller].field_512 = 1
                      else:
                          if referrer[caller]:
                              if block.timestamp < round[stor16].field_256:
                                  if block.timestamp <= round[stor16].field_0:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                      stop
                                  if round[stor16].field_768:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                  else:
                                      round[stor16].field_768 = 1
                                      if round[stor16].field_512 <= 0:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                                          if poltime + block.timestamp < block.timestamp:
                                              revert with 0, 'SafeMath add failed'
                                          round[stor16 + 1].field_0 = poltime + block.timestamp
                                      else:
                                          if not round[stor16].field_1280:
                                              rID++
                                              round[stor16 + 1].field_256 = block.timestamp
                                              if poltime + block.timestamp < block.timestamp:
                                                  revert with 0, 'SafeMath add failed'
                              else:
                                  if block.timestamp <= round[stor16].field_0:
                                      player[caller].field_1792 = block.timestamp
                                      if player[caller].field_1024:
                                          if player[caller].field_512:
                                              if player[caller].field_768:
                                                  if not player[caller].field_1536:
                                                      player[caller].field_1536 = 1
                                              else:
                                                  player[caller].field_768 = 1
                                          else:
                                              player[caller].field_512 = 1
                                              if not player[caller].field_768:
                                                  player[caller].field_768 = 1
                                      else:
                                          if not referrer[caller]:
                                              if player[caller].field_512:
                                                  if not player[caller].field_768:
                                                      player[caller].field_768 = 1
                                              else:
                                                  player[caller].field_512 = 1
                                          else:
                                              referrerQuantity[stor0[caller]]++
                                              playerRnds[stor0[caller]][stor16]++
                                  else:
                                      if block.timestamp <= round[stor16].field_0:
                                          if call.value + player[caller].field_512 < player[caller].field_512:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_512 += call.value
                                          stop
                                      if round[stor16].field_768:
                                          if call.value + player[caller].field_512 < player[caller].field_512:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_512 += call.value
                                      else:
                                          round[stor16].field_768 = 1
                                          if round[stor16].field_512 <= 0:
                                              rID++
                                              round[stor16 + 1].field_256 = block.timestamp
                                              if poltime + block.timestamp < block.timestamp:
                                                  revert with 0, 'SafeMath add failed'
                                              round[stor16 + 1].field_0 = poltime + block.timestamp
                                          else:
                                              if not round[stor16].field_1280:
                                                  rID++
                                                  round[stor16 + 1].field_256 = block.timestamp
                                                  if poltime + block.timestamp < block.timestamp:
                                                      revert with 0, 'SafeMath add failed'
                          else:
                              if player[addr(_referrer_)].field_1024 > 0:
                                  if not stor2[caller]:
                                      if player[addr(_referrer_)].field_1024:
                                          if player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 < player[addr(_referrer_)].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                          if player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 >= 2:
                                              if 2 > player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          if block.timestamp >= round[stor16].field_256:
                                              if block.timestamp > round[stor16].field_0:
                                  else:
                                      if block.timestamp < round[stor16].field_256:
                                          if block.timestamp <= round[stor16].field_0:
                                              if call.value + player[caller].field_512 < player[caller].field_512:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_512 += call.value
                                          else:
                                              if round[stor16].field_768:
                                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  round[stor16].field_768 = 1
                                                  if round[stor16].field_512 <= 0:
                                                      rID++
                                                      round[stor16 + 1].field_256 = block.timestamp
                                      else:
                                          if block.timestamp <= round[stor16].field_0:
                                              player[caller].field_1792 = block.timestamp
                                              if not player[caller].field_1024:
                                          else:
                                              if block.timestamp <= round[stor16].field_0:
                                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_512 += call.value
                                              else:
                                                  if round[stor16].field_768:
                                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                                          revert with 0, 'SafeMath add failed'
                                                  else:
                                                      round[stor16].field_768 = 1
                                                      if round[stor16].field_512 <= 0:
                                                          rID++
                                                          round[stor16 + 1].field_256 = block.timestamp
                              else:
                                  if block.timestamp < round[stor16].field_256:
                                      if block.timestamp <= round[stor16].field_0:
                                          if call.value + player[caller].field_512 < player[caller].field_512:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_512 += call.value
                                      else:
                                          if round[stor16].field_768:
                                              if call.value + player[caller].field_512 < player[caller].field_512:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_512 += call.value
                                          else:
                                              round[stor16].field_768 = 1
                                              if round[stor16].field_512 <= 0:
                                                  rID++
                                                  round[stor16 + 1].field_256 = block.timestamp
                                                  if poltime + block.timestamp < block.timestamp:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if not round[stor16].field_1280:
                                                      rID++
                                                      round[stor16 + 1].field_256 = block.timestamp
                                  else:
                                      if block.timestamp <= round[stor16].field_0:
                                          player[caller].field_1792 = block.timestamp
                                          if player[caller].field_1024:
                                              if player[caller].field_512:
                                                  if not player[caller].field_768:
                                                      player[caller].field_768 = 1
                                              else:
                                                  player[caller].field_512 = 1
                                          else:
                                              if referrer[caller]:
                                                  referrerQuantity[stor0[caller]]++
                                              else:
                                                  if not player[caller].field_512:
                                                      player[caller].field_512 = 1
                                      else:
                                          if block.timestamp <= round[stor16].field_0:
                                              if call.value + player[caller].field_512 < player[caller].field_512:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_512 += call.value
                                          else:
                                              if round[stor16].field_768:
                                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_512 += call.value
                                              else:
                                                  round[stor16].field_768 = 1
                                                  if round[stor16].field_512 <= 0:
                                                      rID++
                                                      round[stor16 + 1].field_256 = block.timestamp
                                                      if poltime + block.timestamp < block.timestamp:
                                                          revert with 0, 'SafeMath add failed'
                                                  else:
                                                      if not round[stor16].field_1280:
                                                          rID++
                                                          round[stor16 + 1].field_256 = block.timestamp
      else:
          if call.value != 3 * 10^18:
              revert with 0, 'inv must be 1,2,3'
          if player[caller].field_2560 > 2:
              if call.value > 3 * 10^18:
                  revert with 0, 'maxlimit!'
          else:
              if call.value > (10^18 * player[caller].field_2560) + 10^18:
                  revert with 0, 'maxlimit!'
          if player[caller].field_1024:
              if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                  revert with 0, 'SafeMath add failed'
              if player[caller].field_1536 + player[caller].field_2048 >= 2:
                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                      revert with 0, 'SafeMath sub failed'
                  require player[caller].field_1536 + player[caller].field_2048 - 2 >= player[caller].field_2304
                  if _referrer_ == caller:
                      if block.timestamp >= round[stor16].field_256:
                          if block.timestamp > round[stor16].field_0:
                  else:
                      if not _referrer_:
                          if block.timestamp >= round[stor16].field_256:
                              if block.timestamp > round[stor16].field_0:
                      else:
                          if caller == _referrer_:
                              if block.timestamp >= round[stor16].field_256:
                          else:
                              if not referrer[caller]:
                                  if player[addr(_referrer_)].field_1024 > 0:
              else:
                  require player[caller].field_1536 + player[caller].field_2048 >= player[caller].field_2304
                  if _referrer_ == caller:
                      if block.timestamp < round[stor16].field_256:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                          else:
                              if not round[stor16].field_768:
                                  round[stor16].field_768 = 1
                      else:
                          if block.timestamp <= round[stor16].field_0:
                              player[caller].field_1792 = block.timestamp
                          else:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if not round[stor16].field_768:
                                      round[stor16].field_768 = 1
                  else:
                      if not _referrer_:
                          if block.timestamp < round[stor16].field_256:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if not round[stor16].field_768:
                                      round[stor16].field_768 = 1
                          else:
                              if block.timestamp <= round[stor16].field_0:
                                  player[caller].field_1792 = block.timestamp
                              else:
                                  if block.timestamp <= round[stor16].field_0:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if not round[stor16].field_768:
                                          round[stor16].field_768 = 1
                      else:
                          if _referrer_ != caller:
                              if referrer[caller]:
                                  if block.timestamp >= round[stor16].field_256:
                                      if block.timestamp > round[stor16].field_0:
                              else:
                                  if player[addr(_referrer_)].field_1024 <= 0:
                                      if block.timestamp >= round[stor16].field_256:
                                  else:
                                      if not stor2[caller]:
                          else:
                              if block.timestamp < round[stor16].field_256:
                                  if block.timestamp > round[stor16].field_0:
                                      if not round[stor16].field_768:
                                          round[stor16].field_768 = 1
                              else:
                                  if block.timestamp <= round[stor16].field_0:
                                      player[caller].field_1792 = block.timestamp
                                  else:
                                      if block.timestamp > round[stor16].field_0:
                                          if not round[stor16].field_768:
                                              round[stor16].field_768 = 1
          else:
              if _referrer_ == caller:
                  if block.timestamp < round[stor16].field_256:
                      if block.timestamp <= round[stor16].field_0:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      if round[stor16].field_768:
                          if call.value + player[caller].field_512 < player[caller].field_512:
                              revert with 0, 'SafeMath add failed'
                          player[caller].field_512 += call.value
                          stop
                      round[stor16].field_768 = 1
                      if round[stor16].field_512 <= 0:
                          rID++
                          round[stor16 + 1].field_256 = block.timestamp
                          if poltime + block.timestamp < block.timestamp:
                              revert with 0, 'SafeMath add failed'
                          round[stor16 + 1].field_0 = poltime + block.timestamp
                          if 0 > round[stor16].field_512:
                              revert with 0, 'SafeMath sub failed'
                      else:
                          if round[stor16].field_1280:
                              if round[stor16].field_512:
                                  if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                      revert with 0, 'SafeMath mul failed'
                          else:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                  else:
                      if block.timestamp > round[stor16].field_0:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          if round[stor16].field_768:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          round[stor16].field_768 = 1
                          if round[stor16].field_512 <= 0:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                          else:
                              if round[stor16].field_1280:
                                  if round[stor16].field_512:
                                      if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                          revert with 0, 'SafeMath mul failed'
                              else:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                      else:
                          player[caller].field_1792 = block.timestamp
                          if player[caller].field_1024:
                              if player[caller].field_512:
                                  if player[caller].field_768:
                                      if player[caller].field_1536:
                                          if player[caller].field_2048:
                                              if player[caller].field_1024 + call.value < call.value:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_768 = 1
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                              else:
                                  player[caller].field_512 = 1
                                  if player[caller].field_768:
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_1536 = 1
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_768 = 1
                                      if player[caller].field_1536:
                                          if not player[caller].field_2048:
                                              player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_1536 = 1
                          else:
                              if not referrer[caller]:
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                  else:
                                      player[caller].field_512 = 1
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if not player[caller].field_1536:
                                              player[caller].field_1536 = 1
                              else:
                                  referrerQuantity[stor0[caller]]++
                                  playerRnds[stor0[caller]][stor16]++
                                  if playerRnds[stor0[caller]][stor16] + 1 <= round[stor16].field_1024:
                                      if player[caller].field_512:
                                          if not player[caller].field_768:
                                              player[caller].field_768 = 1
                                      else:
                                          player[caller].field_512 = 1
                                  else:
                                      round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                      round[stor16].field_1280 = referrer[caller]
                                      if not player[caller].field_512:
                                          player[caller].field_512 = 1
              else:
                  if not _referrer_:
                      if block.timestamp < round[stor16].field_256:
                          if block.timestamp <= round[stor16].field_0:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          if round[stor16].field_768:
                              if call.value + player[caller].field_512 < player[caller].field_512:
                                  revert with 0, 'SafeMath add failed'
                              player[caller].field_512 += call.value
                              stop
                          round[stor16].field_768 = 1
                          if round[stor16].field_512 <= 0:
                              rID++
                              round[stor16 + 1].field_256 = block.timestamp
                              if poltime + block.timestamp < block.timestamp:
                                  revert with 0, 'SafeMath add failed'
                              round[stor16 + 1].field_0 = poltime + block.timestamp
                              if 0 > round[stor16].field_512:
                                  revert with 0, 'SafeMath sub failed'
                          else:
                              if round[stor16].field_1280:
                                  if round[stor16].field_512:
                                      if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                          revert with 0, 'SafeMath mul failed'
                              else:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                      else:
                          if block.timestamp > round[stor16].field_0:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                                  stop
                              if round[stor16].field_768:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                                  stop
                              round[stor16].field_768 = 1
                              if round[stor16].field_512 <= 0:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if round[stor16].field_1280:
                                      if round[stor16].field_512:
                                          if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                              revert with 0, 'SafeMath mul failed'
                                  else:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                      if poltime + block.timestamp < block.timestamp:
                                          revert with 0, 'SafeMath add failed'
                                      round[stor16 + 1].field_0 = poltime + block.timestamp
                                      if 0 > round[stor16].field_512:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              player[caller].field_1792 = block.timestamp
                              if player[caller].field_1024:
                                  if player[caller].field_512:
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if player[caller].field_2048:
                                                  if player[caller].field_1024 + call.value < call.value:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                  else:
                                      player[caller].field_512 = 1
                                      if player[caller].field_768:
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                      else:
                                          player[caller].field_768 = 1
                                          if player[caller].field_1536:
                                              if not player[caller].field_2048:
                                                  player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_1536 = 1
                              else:
                                  if not referrer[caller]:
                                      if player[caller].field_512:
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                      else:
                                          player[caller].field_512 = 1
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if not player[caller].field_1536:
                                                  player[caller].field_1536 = 1
                                  else:
                                      referrerQuantity[stor0[caller]]++
                                      playerRnds[stor0[caller]][stor16]++
                                      if playerRnds[stor0[caller]][stor16] + 1 <= round[stor16].field_1024:
                                          if player[caller].field_512:
                                              if not player[caller].field_768:
                                                  player[caller].field_768 = 1
                                          else:
                                              player[caller].field_512 = 1
                                      else:
                                          round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                          round[stor16].field_1280 = referrer[caller]
                                          if not player[caller].field_512:
                                              player[caller].field_512 = 1
                  else:
                      if _referrer_ != caller:
                          if referrer[caller]:
                              if block.timestamp < round[stor16].field_256:
                                  if block.timestamp <= round[stor16].field_0:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                  else:
                                      if round[stor16].field_768:
                                          if call.value + player[caller].field_512 < player[caller].field_512:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_512 += call.value
                                      else:
                                          round[stor16].field_768 = 1
                                          if round[stor16].field_512 <= 0:
                                              rID++
                                              round[stor16 + 1].field_256 = block.timestamp
                                              if poltime + block.timestamp < block.timestamp:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if not round[stor16].field_1280:
                                                  rID++
                                                  round[stor16 + 1].field_256 = block.timestamp
                              else:
                                  if block.timestamp <= round[stor16].field_0:
                                      player[caller].field_1792 = block.timestamp
                                      if player[caller].field_1024:
                                          if player[caller].field_512:
                                              if not player[caller].field_768:
                                                  player[caller].field_768 = 1
                                          else:
                                              player[caller].field_512 = 1
                                      else:
                                          if referrer[caller]:
                                              referrerQuantity[stor0[caller]]++
                                          else:
                                              if not player[caller].field_512:
                                                  player[caller].field_512 = 1
                                  else:
                                      if block.timestamp <= round[stor16].field_0:
                                          if call.value + player[caller].field_512 < player[caller].field_512:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_512 += call.value
                                      else:
                                          if round[stor16].field_768:
                                              if call.value + player[caller].field_512 < player[caller].field_512:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_512 += call.value
                                          else:
                                              round[stor16].field_768 = 1
                                              if round[stor16].field_512 <= 0:
                                                  rID++
                                                  round[stor16 + 1].field_256 = block.timestamp
                                                  if poltime + block.timestamp < block.timestamp:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if not round[stor16].field_1280:
                                                      rID++
                                                      round[stor16 + 1].field_256 = block.timestamp
                          else:
                              if player[addr(_referrer_)].field_1024 > 0:
                                  if not stor2[caller]:
                                      if not player[addr(_referrer_)].field_1024:
                                          if block.timestamp >= round[stor16].field_256:
                                      else:
                                          if player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 < player[addr(_referrer_)].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                          if player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048 >= 2:
                                              if 2 > player[addr(_referrer_)].field_1536 + player[addr(_referrer_)].field_2048:
                                                  revert with 0, 'SafeMath sub failed'
                                  else:
                                      if block.timestamp < round[stor16].field_256:
                                          if block.timestamp <= round[stor16].field_0:
                                              if call.value + player[caller].field_512 < player[caller].field_512:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if not round[stor16].field_768:
                                                  round[stor16].field_768 = 1
                                      else:
                                          if block.timestamp <= round[stor16].field_0:
                                              player[caller].field_1792 = block.timestamp
                                          else:
                                              if block.timestamp <= round[stor16].field_0:
                                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if not round[stor16].field_768:
                                                      round[stor16].field_768 = 1
                              else:
                                  if block.timestamp < round[stor16].field_256:
                                      if block.timestamp <= round[stor16].field_0:
                                          if call.value + player[caller].field_512 < player[caller].field_512:
                                              revert with 0, 'SafeMath add failed'
                                          player[caller].field_512 += call.value
                                      else:
                                          if round[stor16].field_768:
                                              if call.value + player[caller].field_512 < player[caller].field_512:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_512 += call.value
                                          else:
                                              round[stor16].field_768 = 1
                                              if round[stor16].field_512 <= 0:
                                                  rID++
                                                  round[stor16 + 1].field_256 = block.timestamp
                                              else:
                                                  if not round[stor16].field_1280:
                                                      rID++
                                                      round[stor16 + 1].field_256 = block.timestamp
                                  else:
                                      if block.timestamp <= round[stor16].field_0:
                                          player[caller].field_1792 = block.timestamp
                                          if player[caller].field_1024:
                                              if not player[caller].field_512:
                                                  player[caller].field_512 = 1
                                          else:
                                              if not referrer[caller]:
                                      else:
                                          if block.timestamp <= round[stor16].field_0:
                                              if call.value + player[caller].field_512 < player[caller].field_512:
                                                  revert with 0, 'SafeMath add failed'
                                              player[caller].field_512 += call.value
                                          else:
                                              if round[stor16].field_768:
                                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                                      revert with 0, 'SafeMath add failed'
                                                  player[caller].field_512 += call.value
                                              else:
                                                  round[stor16].field_768 = 1
                                                  if round[stor16].field_512 <= 0:
                                                      rID++
                                                      round[stor16 + 1].field_256 = block.timestamp
                                                  else:
                                                      if not round[stor16].field_1280:
                                                          rID++
                                                          round[stor16 + 1].field_256 = block.timestamp
                      else:
                          if block.timestamp < round[stor16].field_256:
                              if block.timestamp <= round[stor16].field_0:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                                  stop
                              if round[stor16].field_768:
                                  if call.value + player[caller].field_512 < player[caller].field_512:
                                      revert with 0, 'SafeMath add failed'
                                  player[caller].field_512 += call.value
                                  stop
                              round[stor16].field_768 = 1
                              if round[stor16].field_512 <= 0:
                                  rID++
                                  round[stor16 + 1].field_256 = block.timestamp
                                  if poltime + block.timestamp < block.timestamp:
                                      revert with 0, 'SafeMath add failed'
                                  round[stor16 + 1].field_0 = poltime + block.timestamp
                                  if 0 > round[stor16].field_512:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if round[stor16].field_1280:
                                      if round[stor16].field_512:
                                          if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                              revert with 0, 'SafeMath mul failed'
                                  else:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                      if poltime + block.timestamp < block.timestamp:
                                          revert with 0, 'SafeMath add failed'
                                      round[stor16 + 1].field_0 = poltime + block.timestamp
                          else:
                              if block.timestamp <= round[stor16].field_0:
                                  player[caller].field_1792 = block.timestamp
                                  if player[caller].field_1024:
                                      if player[caller].field_512:
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                      else:
                                          player[caller].field_512 = 1
                                          if player[caller].field_768:
                                              if player[caller].field_1536:
                                                  if not player[caller].field_2048:
                                                      player[caller].field_2048 = 1
                                              else:
                                                  player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_768 = 1
                                              if not player[caller].field_1536:
                                                  player[caller].field_1536 = 1
                                  else:
                                      if not referrer[caller]:
                                          if player[caller].field_512:
                                              if player[caller].field_768:
                                                  if player[caller].field_1536:
                                                      if not player[caller].field_2048:
                                                          player[caller].field_2048 = 1
                                                  else:
                                                      player[caller].field_1536 = 1
                                              else:
                                                  player[caller].field_768 = 1
                                                  if not player[caller].field_1536:
                                                      player[caller].field_1536 = 1
                                          else:
                                              player[caller].field_512 = 1
                                              if player[caller].field_768:
                                                  if not player[caller].field_1536:
                                                      player[caller].field_1536 = 1
                                              else:
                                                  player[caller].field_768 = 1
                                      else:
                                          referrerQuantity[stor0[caller]]++
                                          playerRnds[stor0[caller]][stor16]++
                                          if playerRnds[stor0[caller]][stor16] + 1 <= round[stor16].field_1024:
                                              if not player[caller].field_512:
                                                  player[caller].field_512 = 1
                                          else:
                                              round[stor16].field_1024 = playerRnds[stor0[caller]][stor16] + 1
                                              round[stor16].field_1280 = referrer[caller]
                              else:
                                  if block.timestamp <= round[stor16].field_0:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                      stop
                                  if round[stor16].field_768:
                                      if call.value + player[caller].field_512 < player[caller].field_512:
                                          revert with 0, 'SafeMath add failed'
                                      player[caller].field_512 += call.value
                                      stop
                                  round[stor16].field_768 = 1
                                  if round[stor16].field_512 <= 0:
                                      rID++
                                      round[stor16 + 1].field_256 = block.timestamp
                                      if poltime + block.timestamp < block.timestamp:
                                          revert with 0, 'SafeMath add failed'
                                      round[stor16 + 1].field_0 = poltime + block.timestamp
                                      if 0 > round[stor16].field_512:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if round[stor16].field_1280:
                                          if round[stor16].field_512:
                                              if 10 * round[stor16].field_512 / round[stor16].field_512 != 10:
                                                  revert with 0, 'SafeMath mul failed'
                                      else:
                                          rID++
                                          round[stor16 + 1].field_256 = block.timestamp
                                          if poltime + block.timestamp < block.timestamp:
                                              revert with 0, 'SafeMath add failed'
                                          round[stor16 + 1].field_0 = poltime + block.timestamp
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)

def getPlayerInfo(address _addr): # not payable
  if _addr:
      if poitProfit <= 0:
          if player[addr(_addr)].field_768 < 0:
              revert with 0, 'SafeMath add failed'
          if 0 < player[addr(_addr)].field_1792:
              if player[addr(_addr)].field_1792 > block.timestamp:
                  revert with 0, 'SafeMath sub failed'
              require stcPerior
              if block.timestamp - player[addr(_addr)].field_1792 % stcPerior > stcPerior:
                  revert with 0, 'SafeMath sub failed'
              if 0 >= player[addr(_addr)].field_1792:
                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                      revert with 0, 'SafeMath add failed'
                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                              revert with 0, 'SafeMath sub failed'
                      if 0 >= player[addr(_addr)].field_1792:
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if player[addr(_addr)].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                      revert with 0, 'SafeMath sub failed'
                  if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                      if 0 >= player[addr(_addr)].field_1792:
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if player[addr(_addr)].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                      revert with 0, 'SafeMath sub failed'
                  if 0 < player[addr(_addr)].field_1792:
                      if player[addr(_addr)].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
              else:
                  if 0 < player[addr(_addr)].field_1792:
                      if player[addr(_addr)].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                          revert with 0, 'SafeMath add failed'
                      if block.timestamp - player[addr(_addr)].field_1792 / stcPerior > zeroPerior / stcPerior:
                          if zeroPerior / stcPerior <= 0:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                      else:
                          if block.timestamp - player[addr(_addr)].field_1792 / stcPerior <= 0:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                  else:
                      require stcPerior
                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                          revert with 0, 'SafeMath add failed'
                      if 0 <= zeroPerior / stcPerior:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                              if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  if 0 < player[addr(_addr)].field_1792:
                                      if player[addr(_addr)].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                      else:
                          if zeroPerior / stcPerior <= 0:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                  if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      if 0 < player[addr(_addr)].field_1792:
                                          if player[addr(_addr)].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                  if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 - player[addr(_addr)].field_1536 - player[addr(_addr)].field_2048 > 0:
                              else:
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
          else:
              if 0 >= player[addr(_addr)].field_1792:
                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                      revert with 0, 'SafeMath add failed'
                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                              revert with 0, 'SafeMath sub failed'
                  else:
                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                          revert with 0, 'SafeMath sub failed'
                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                              revert with 0, 'SafeMath sub failed'
                  if 0 >= player[addr(_addr)].field_1792:
                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                  if player[addr(_addr)].field_1792 > block.timestamp:
                      revert with 0, 'SafeMath sub failed'
                  require stcPerior
                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
              if 0 < player[addr(_addr)].field_1792:
                  if player[addr(_addr)].field_1792 > block.timestamp:
                      revert with 0, 'SafeMath sub failed'
                  require stcPerior
                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                      revert with 0, 'SafeMath add failed'
                  if block.timestamp - player[addr(_addr)].field_1792 / stcPerior > zeroPerior / stcPerior:
                      if zeroPerior / stcPerior <= 0:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                              if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  if 0 >= player[addr(_addr)].field_1792:
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[addr(_addr)].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                                  require stcPerior
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                              if 0 < player[addr(_addr)].field_1792:
                          else:
                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if 0 < player[addr(_addr)].field_1792:
                                      if player[addr(_addr)].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                      else:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                              if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 - player[addr(_addr)].field_1536 - player[addr(_addr)].field_2048 > 0:
                                      if zeroPerior / stcPerior > 0:
                          else:
                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 + -player[addr(_addr)].field_1536 + -player[addr(_addr)].field_2048 + 2 > 0:
                  else:
                      if block.timestamp - player[addr(_addr)].field_1792 / stcPerior <= 0:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                              if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  if 0 >= player[addr(_addr)].field_1792:
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[addr(_addr)].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                                  require stcPerior
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                              if 0 < player[addr(_addr)].field_1792:
                          else:
                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if 0 < player[addr(_addr)].field_1792:
                                      if player[addr(_addr)].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                      else:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                              if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 - player[addr(_addr)].field_1536 - player[addr(_addr)].field_2048 > 0:
                                      if block.timestamp - player[addr(_addr)].field_1792 / stcPerior > 0:
                          else:
                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 + -player[addr(_addr)].field_1536 + -player[addr(_addr)].field_2048 + 2 > 0:
              else:
                  require stcPerior
                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                      revert with 0, 'SafeMath add failed'
                  if 0 <= zeroPerior / stcPerior:
                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                          if 0 >= player[addr(_addr)].field_1792:
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[addr(_addr)].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                          revert with 0, 'SafeMath sub failed'
                      if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                          if 0 >= player[addr(_addr)].field_1792:
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[addr(_addr)].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                          revert with 0, 'SafeMath sub failed'
                      if 0 < player[addr(_addr)].field_1792:
                          if player[addr(_addr)].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                  else:
                      if zeroPerior / stcPerior <= 0:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                              if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              if 0 >= player[addr(_addr)].field_1792:
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[addr(_addr)].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                              revert with 0, 'SafeMath sub failed'
                          if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                              if 0 >= player[addr(_addr)].field_1792:
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[addr(_addr)].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                              revert with 0, 'SafeMath sub failed'
                          if 0 < player[addr(_addr)].field_1792:
                              if player[addr(_addr)].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                      else:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                              if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath add failed'
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 0 < player[addr(_addr)].field_1792:
                                              if player[addr(_addr)].field_1792 > block.timestamp:
                                                  revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 - player[addr(_addr)].field_1536 - player[addr(_addr)].field_2048 <= 0:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                          if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  else:
                                      if zeroPerior / stcPerior <= 0:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          if player[addr(_addr)].field_1280:
                                              if 100 * player[addr(_addr)].field_1280 / player[addr(_addr)].field_1280 != 100:
                                                  revert with 0, 'SafeMath mul failed'
                                              if 100 * player[addr(_addr)].field_1280:
                                                  if 100 * zeroPerior / stcPerior * player[addr(_addr)].field_1280 / 100 * player[addr(_addr)].field_1280 != zeroPerior / stcPerior:
                                                      revert with 0, 'SafeMath mul failed'
                          else:
                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath add failed'
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 + -player[addr(_addr)].field_1536 + -player[addr(_addr)].field_2048 + 2 <= 0:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if zeroPerior / stcPerior <= 0:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if player[addr(_addr)].field_1280:
                                              if 100 * player[addr(_addr)].field_1280 / player[addr(_addr)].field_1280 != 100:
                                                  revert with 0, 'SafeMath mul failed'
      else:
          if stor11[addr(_addr)] <= 0:
              if player[addr(_addr)].field_768 < 0:
                  revert with 0, 'SafeMath add failed'
              if 0 < player[addr(_addr)].field_1792:
                  if player[addr(_addr)].field_1792 > block.timestamp:
                      revert with 0, 'SafeMath sub failed'
                  require stcPerior
                  if block.timestamp - player[addr(_addr)].field_1792 % stcPerior > stcPerior:
                      revert with 0, 'SafeMath sub failed'
                  if 0 >= player[addr(_addr)].field_1792:
                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                          revert with 0, 'SafeMath add failed'
                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                          if 0 >= player[addr(_addr)].field_1792:
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[addr(_addr)].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                          revert with 0, 'SafeMath sub failed'
                      if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                          if 0 >= player[addr(_addr)].field_1792:
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[addr(_addr)].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                          revert with 0, 'SafeMath sub failed'
                      if 0 < player[addr(_addr)].field_1792:
                          if player[addr(_addr)].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                  else:
                      if 0 < player[addr(_addr)].field_1792:
                          if player[addr(_addr)].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if block.timestamp - player[addr(_addr)].field_1792 / stcPerior > zeroPerior / stcPerior:
                              if zeroPerior / stcPerior <= 0:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                          else:
                              if block.timestamp - player[addr(_addr)].field_1792 / stcPerior <= 0:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                      else:
                          require stcPerior
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if 0 <= zeroPerior / stcPerior:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 0 < player[addr(_addr)].field_1792:
                                          if player[addr(_addr)].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              if zeroPerior / stcPerior <= 0:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 0 < player[addr(_addr)].field_1792:
                                              if player[addr(_addr)].field_1792 > block.timestamp:
                                                  revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[addr(_addr)].field_2304 - player[addr(_addr)].field_1536 - player[addr(_addr)].field_2048 > 0:
              else:
                  if 0 >= player[addr(_addr)].field_1792:
                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                          revert with 0, 'SafeMath add failed'
                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                      else:
                          if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                              revert with 0, 'SafeMath sub failed'
                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                      if 0 >= player[addr(_addr)].field_1792:
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if player[addr(_addr)].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                  if 0 < player[addr(_addr)].field_1792:
                      if player[addr(_addr)].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                          revert with 0, 'SafeMath add failed'
                      if block.timestamp - player[addr(_addr)].field_1792 / stcPerior > zeroPerior / stcPerior:
                          if zeroPerior / stcPerior <= 0:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 0 < player[addr(_addr)].field_1792:
                                          if player[addr(_addr)].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 0 < player[addr(_addr)].field_1792:
                          else:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 - player[addr(_addr)].field_1536 - player[addr(_addr)].field_2048 > 0:
                                          if zeroPerior / stcPerior > 0:
                      else:
                          if block.timestamp - player[addr(_addr)].field_1792 / stcPerior <= 0:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 0 < player[addr(_addr)].field_1792:
                                          if player[addr(_addr)].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 0 < player[addr(_addr)].field_1792:
                          else:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 - player[addr(_addr)].field_1536 - player[addr(_addr)].field_2048 > 0:
                                          if block.timestamp - player[addr(_addr)].field_1792 / stcPerior > 0:
                  else:
                      require stcPerior
                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                          revert with 0, 'SafeMath add failed'
                      if 0 <= zeroPerior / stcPerior:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                              if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              if 0 >= player[addr(_addr)].field_1792:
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[addr(_addr)].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                              revert with 0, 'SafeMath sub failed'
                          if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                              if 0 >= player[addr(_addr)].field_1792:
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[addr(_addr)].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                              revert with 0, 'SafeMath sub failed'
                          if 0 < player[addr(_addr)].field_1792:
                              if player[addr(_addr)].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                      else:
                          if zeroPerior / stcPerior <= 0:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                  if 0 >= player[addr(_addr)].field_1792:
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[addr(_addr)].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                                  require stcPerior
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                  if 0 >= player[addr(_addr)].field_1792:
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[addr(_addr)].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                                  require stcPerior
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                              if 0 < player[addr(_addr)].field_1792:
                                  if player[addr(_addr)].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                          if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  else:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 + -player[addr(_addr)].field_1536 + -player[addr(_addr)].field_2048 + 2 <= 0:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if zeroPerior / stcPerior > 0:
                                              if player[addr(_addr)].field_1280:
                                                  if 100 * player[addr(_addr)].field_1280 / player[addr(_addr)].field_1280 != 100:
                                                      revert with 0, 'SafeMath mul failed'
                              else:
                                  if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                                  revert with 0, 'SafeMath sub failed'
                                          else:
                                              if 0 < player[addr(_addr)].field_1792:
                                      else:
                                          if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                  else:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 - player[addr(_addr)].field_1536 - player[addr(_addr)].field_2048 <= 0:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          if zeroPerior / stcPerior <= 0:
                                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                                  revert with 0, 'SafeMath add failed'
                                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                          else:
                                              if player[addr(_addr)].field_1280:
                                                  if 100 * player[addr(_addr)].field_1280 / player[addr(_addr)].field_1280 != 100:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if 100 * player[addr(_addr)].field_1280:
                                                      if 100 * zeroPerior / stcPerior * player[addr(_addr)].field_1280 / 100 * player[addr(_addr)].field_1280 != zeroPerior / stcPerior:
                                                          revert with 0, 'SafeMath mul failed'
          else:
              if stor12[stor11[addr(_addr)]] != 1:
                  if stor12[stor11[addr(_addr)]] > poitProfit:
                      revert with 0, 'SafeMath sub failed'
                  if player[addr(_addr)].field_768 < 0:
                      revert with 0, 'SafeMath add failed'
                  if 0 < player[addr(_addr)].field_1792:
                      if player[addr(_addr)].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if block.timestamp - player[addr(_addr)].field_1792 % stcPerior > stcPerior:
                          revert with 0, 'SafeMath sub failed'
                      if 0 >= player[addr(_addr)].field_1792:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                              if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  if 0 >= player[addr(_addr)].field_1792:
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[addr(_addr)].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                                  require stcPerior
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                              if 0 < player[addr(_addr)].field_1792:
                          else:
                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if 0 < player[addr(_addr)].field_1792:
                                      if player[addr(_addr)].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                      else:
                          if 0 < player[addr(_addr)].field_1792:
                              if player[addr(_addr)].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              if block.timestamp - player[addr(_addr)].field_1792 / stcPerior > zeroPerior / stcPerior:
                                  if zeroPerior / stcPerior > 0:
                              else:
                                  if block.timestamp - player[addr(_addr)].field_1792 / stcPerior > 0:
                          else:
                              require stcPerior
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath add failed'
                              if 0 <= zeroPerior / stcPerior:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                              else:
                                  if zeroPerior / stcPerior > 0:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                          if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                  else:
                      if 0 >= player[addr(_addr)].field_1792:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                              if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                          if 0 >= player[addr(_addr)].field_1792:
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[addr(_addr)].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if 0 < player[addr(_addr)].field_1792:
                          if player[addr(_addr)].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if block.timestamp - player[addr(_addr)].field_1792 / stcPerior > zeroPerior / stcPerior:
                              if zeroPerior / stcPerior <= 0:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                          else:
                              if block.timestamp - player[addr(_addr)].field_1792 / stcPerior <= 0:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                      else:
                          require stcPerior
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if 0 <= zeroPerior / stcPerior:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                  if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      if 0 >= player[addr(_addr)].field_1792:
                                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                      if player[addr(_addr)].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stcPerior
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if 0 < player[addr(_addr)].field_1792:
                                      if player[addr(_addr)].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 0 < player[addr(_addr)].field_1792:
                                          if player[addr(_addr)].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                          else:
                              if zeroPerior / stcPerior <= 0:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                      if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if 0 >= player[addr(_addr)].field_1792:
                                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                          if player[addr(_addr)].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stcPerior
                                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if 0 < player[addr(_addr)].field_1792:
                                          if player[addr(_addr)].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 0 < player[addr(_addr)].field_1792:
                                              if player[addr(_addr)].field_1792 > block.timestamp:
                                                  revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[addr(_addr)].field_2304 + -player[addr(_addr)].field_1536 + -player[addr(_addr)].field_2048 + 2 > 0:
                                  else:
                                      if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                      else:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[addr(_addr)].field_2304 - player[addr(_addr)].field_1536 - player[addr(_addr)].field_2048 > 0:
                                              if zeroPerior / stcPerior > 0:
                                                  if player[addr(_addr)].field_1280:
              else:
                  if player[addr(_addr)].field_768 + poitProfit < poitProfit:
                      revert with 0, 'SafeMath add failed'
                  if 0 < player[addr(_addr)].field_1792:
                      if player[addr(_addr)].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if block.timestamp - player[addr(_addr)].field_1792 % stcPerior > stcPerior:
                          revert with 0, 'SafeMath sub failed'
                      if 0 >= player[addr(_addr)].field_1792:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                              if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  if 0 >= player[addr(_addr)].field_1792:
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[addr(_addr)].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                                  require stcPerior
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                              if 0 < player[addr(_addr)].field_1792:
                                  if player[addr(_addr)].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                  if 0 >= player[addr(_addr)].field_1792:
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[addr(_addr)].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                                  require stcPerior
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                              if 0 < player[addr(_addr)].field_1792:
                      else:
                          if 0 < player[addr(_addr)].field_1792:
                              if player[addr(_addr)].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath add failed'
                              if block.timestamp - player[addr(_addr)].field_1792 / stcPerior > zeroPerior / stcPerior:
                                  if zeroPerior / stcPerior <= 0:
                                  else:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                              else:
                                  if block.timestamp - player[addr(_addr)].field_1792 / stcPerior <= 0:
                                  else:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                          else:
                              require stcPerior
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath add failed'
                              if 0 <= zeroPerior / stcPerior:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 0 < player[addr(_addr)].field_1792:
                                  else:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                              else:
                                  if zeroPerior / stcPerior > 0:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                                  revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                                  revert with 0, 'SafeMath sub failed'
                                          else:
                                              if 0 < player[addr(_addr)].field_1792:
                                      else:
                                          if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                  else:
                      if 0 >= player[addr(_addr)].field_1792:
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                              if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                          if 0 >= player[addr(_addr)].field_1792:
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[addr(_addr)].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if 0 < player[addr(_addr)].field_1792:
                          if player[addr(_addr)].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if block.timestamp - player[addr(_addr)].field_1792 / stcPerior > zeroPerior / stcPerior:
                              if zeroPerior / stcPerior <= 0:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 0 < player[addr(_addr)].field_1792:
                                              if player[addr(_addr)].field_1792 > block.timestamp:
                                                  revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[addr(_addr)].field_2304 - player[addr(_addr)].field_1536 - player[addr(_addr)].field_2048 > 0:
                          else:
                              if block.timestamp - player[addr(_addr)].field_1792 / stcPerior <= 0:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 0 < player[addr(_addr)].field_1792:
                                              if player[addr(_addr)].field_1792 > block.timestamp:
                                                  revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[addr(_addr)].field_2304 - player[addr(_addr)].field_1536 - player[addr(_addr)].field_2048 > 0:
                      else:
                          require stcPerior
                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if 0 <= zeroPerior / stcPerior:
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                  if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                  if 0 >= player[addr(_addr)].field_1792:
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[addr(_addr)].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                                  require stcPerior
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                  if 0 >= player[addr(_addr)].field_1792:
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[addr(_addr)].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                                  require stcPerior
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                              if 0 < player[addr(_addr)].field_1792:
                                  if player[addr(_addr)].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if zeroPerior / stcPerior <= 0:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                      if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                      if 0 >= player[addr(_addr)].field_1792:
                                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                      if player[addr(_addr)].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stcPerior
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                      if 0 >= player[addr(_addr)].field_1792:
                                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                      if player[addr(_addr)].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stcPerior
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if 0 < player[addr(_addr)].field_1792:
                                      if player[addr(_addr)].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                      if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < 2:
                                              if player[addr(_addr)].field_2304 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                                      revert with 0, 'SafeMath sub failed'
                                          else:
                                              if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[addr(_addr)].field_2304 - player[addr(_addr)].field_1536 - player[addr(_addr)].field_2048 <= 0:
                                              if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if zeroPerior / stcPerior <= 0:
                                                  if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if player[addr(_addr)].field_1280:
                                                      if 100 * player[addr(_addr)].field_1280 / player[addr(_addr)].field_1280 != 100:
                                                          revert with 0, 'SafeMath mul failed'
                                  else:
                                      if 2 > player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[addr(_addr)].field_2304 <= player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 < player[addr(_addr)].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 >= 2:
                                      else:
                                          if player[addr(_addr)].field_1536 + player[addr(_addr)].field_2048 - 2 > player[addr(_addr)].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[addr(_addr)].field_2304 + -player[addr(_addr)].field_1536 + -player[addr(_addr)].field_2048 + 2 > 0:
                                              if zeroPerior / stcPerior > 0:
                                                  if player[addr(_addr)].field_1280:
  else:
      if poitProfit <= 0:
          if player[caller].field_768 < 0:
              revert with 0, 'SafeMath add failed'
          if 0 < player[caller].field_1792:
              if player[caller].field_1792 > block.timestamp:
                  revert with 0, 'SafeMath sub failed'
              require stcPerior
              if block.timestamp - player[caller].field_1792 % stcPerior > stcPerior:
                  revert with 0, 'SafeMath sub failed'
              if 0 >= player[caller].field_1792:
                  if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_1536 + player[caller].field_2048 < 2:
                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                              revert with 0, 'SafeMath sub failed'
                      if 0 >= player[caller].field_1792:
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                      revert with 0, 'SafeMath sub failed'
                  if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
                      if 0 >= player[caller].field_1792:
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                  if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                      revert with 0, 'SafeMath sub failed'
                  if 0 < player[caller].field_1792:
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
              else:
                  if 0 < player[caller].field_1792:
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                          revert with 0, 'SafeMath add failed'
                      if block.timestamp - player[caller].field_1792 / stcPerior > zeroPerior / stcPerior:
                          if zeroPerior / stcPerior <= 0:
                              if player[caller].field_1536 + player[caller].field_2048 >= 2:
                          else:
                              if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                      else:
                          if block.timestamp - player[caller].field_1792 / stcPerior <= 0:
                              if player[caller].field_1536 + player[caller].field_2048 >= 2:
                          else:
                              if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                  else:
                      require stcPerior
                      if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                          revert with 0, 'SafeMath add failed'
                      if 0 <= zeroPerior / stcPerior:
                          if player[caller].field_1536 + player[caller].field_2048 < 2:
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if 0 < player[caller].field_1792:
                                      if player[caller].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              if 2 > player[caller].field_1536 + player[caller].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                  if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                      else:
                          if zeroPerior / stcPerior <= 0:
                              if player[caller].field_1536 + player[caller].field_2048 < 2:
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                      if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 0 < player[caller].field_1792:
                                          if player[caller].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                      if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                      if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                      if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 > 0:
          else:
              if 0 >= player[caller].field_1792:
                  if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                      revert with 0, 'SafeMath add failed'
                  if player[caller].field_1536 + player[caller].field_2048 < 2:
                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                              revert with 0, 'SafeMath sub failed'
                  else:
                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                          revert with 0, 'SafeMath sub failed'
                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                          if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                              revert with 0, 'SafeMath sub failed'
                  if 0 >= player[caller].field_1792:
                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                  if player[caller].field_1792 > block.timestamp:
                      revert with 0, 'SafeMath sub failed'
                  require stcPerior
                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
              if 0 < player[caller].field_1792:
                  if player[caller].field_1792 > block.timestamp:
                      revert with 0, 'SafeMath sub failed'
                  require stcPerior
                  if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                      revert with 0, 'SafeMath add failed'
                  if block.timestamp - player[caller].field_1792 / stcPerior > zeroPerior / stcPerior:
                      if zeroPerior / stcPerior <= 0:
                          if player[caller].field_1536 + player[caller].field_2048 < 2:
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if 0 < player[caller].field_1792:
                                      if player[caller].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              if 2 > player[caller].field_1536 + player[caller].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                  if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if 0 < player[caller].field_1792:
                      else:
                          if player[caller].field_1536 + player[caller].field_2048 >= 2:
                              if 2 > player[caller].field_1536 + player[caller].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                  if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                  if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 > 0:
                                      if zeroPerior / stcPerior > 0:
                  else:
                      if block.timestamp - player[caller].field_1792 / stcPerior <= 0:
                          if player[caller].field_1536 + player[caller].field_2048 < 2:
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if 0 < player[caller].field_1792:
                                      if player[caller].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              if 2 > player[caller].field_1536 + player[caller].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                  if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if 0 < player[caller].field_1792:
                      else:
                          if player[caller].field_1536 + player[caller].field_2048 >= 2:
                              if 2 > player[caller].field_1536 + player[caller].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                  if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                  if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                      revert with 0, 'SafeMath add failed'
                              else:
                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 > 0:
                                      if block.timestamp - player[caller].field_1792 / stcPerior > 0:
              else:
                  require stcPerior
                  if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                      revert with 0, 'SafeMath add failed'
                  if 0 <= zeroPerior / stcPerior:
                      if player[caller].field_1536 + player[caller].field_2048 < 2:
                          if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                              if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                          if 0 >= player[caller].field_1792:
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                          revert with 0, 'SafeMath sub failed'
                      if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
                          if 0 >= player[caller].field_1792:
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                          revert with 0, 'SafeMath sub failed'
                      if 0 < player[caller].field_1792:
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                  else:
                      if zeroPerior / stcPerior <= 0:
                          if player[caller].field_1536 + player[caller].field_2048 < 2:
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              if 0 >= player[caller].field_1792:
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if 2 > player[caller].field_1536 + player[caller].field_2048:
                              revert with 0, 'SafeMath sub failed'
                          if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
                              if 0 >= player[caller].field_1792:
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                              revert with 0, 'SafeMath sub failed'
                          if 0 < player[caller].field_1792:
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                      else:
                          if player[caller].field_1536 + player[caller].field_2048 >= 2:
                              if 2 > player[caller].field_1536 + player[caller].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
                                  if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                      revert with 0, 'SafeMath add failed'
                                  if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                              else:
                                  if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 <= 0:
                                      if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if zeroPerior / stcPerior > 0:
                                          if player[caller].field_1280:
                                              if 100 * player[caller].field_1280 / player[caller].field_1280 != 100:
                                                  revert with 0, 'SafeMath mul failed'
                          else:
                              if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                  if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                      revert with 0, 'SafeMath add failed'
                                  if player[caller].field_1536 + player[caller].field_2048 < 2:
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 0 < player[caller].field_1792:
                                  else:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                              else:
                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                                      if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                      if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                          if 2 > player[caller].field_1536 + player[caller].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if zeroPerior / stcPerior <= 0:
                                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                          if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                      else:
                                          if player[caller].field_1280:
                                              if 100 * player[caller].field_1280 / player[caller].field_1280 != 100:
                                                  revert with 0, 'SafeMath mul failed'
                                              if 100 * player[caller].field_1280:
                                                  if 100 * zeroPerior / stcPerior * player[caller].field_1280 / 100 * player[caller].field_1280 != zeroPerior / stcPerior:
                                                      revert with 0, 'SafeMath mul failed'
      else:
          if stor11[caller] <= 0:
              if player[caller].field_768 < 0:
                  revert with 0, 'SafeMath add failed'
              if 0 < player[caller].field_1792:
                  if player[caller].field_1792 > block.timestamp:
                      revert with 0, 'SafeMath sub failed'
                  require stcPerior
                  if block.timestamp - player[caller].field_1792 % stcPerior > stcPerior:
                      revert with 0, 'SafeMath sub failed'
                  if 0 >= player[caller].field_1792:
                      if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_1536 + player[caller].field_2048 < 2:
                          if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                              if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                          if 0 >= player[caller].field_1792:
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                          revert with 0, 'SafeMath sub failed'
                      if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
                          if 0 >= player[caller].field_1792:
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                          revert with 0, 'SafeMath sub failed'
                      if 0 < player[caller].field_1792:
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                  else:
                      if 0 < player[caller].field_1792:
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if block.timestamp - player[caller].field_1792 / stcPerior > zeroPerior / stcPerior:
                              if zeroPerior / stcPerior <= 0:
                              else:
                                  if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              if block.timestamp - player[caller].field_1792 / stcPerior <= 0:
                              else:
                                  if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                      else:
                          require stcPerior
                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if 0 <= zeroPerior / stcPerior:
                              if player[caller].field_1536 + player[caller].field_2048 < 2:
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                      if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 0 < player[caller].field_1792:
                                          if player[caller].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                      if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              if zeroPerior / stcPerior <= 0:
                                  if player[caller].field_1536 + player[caller].field_2048 < 2:
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 0 < player[caller].field_1792:
                                              if player[caller].field_1792 > block.timestamp:
                                                  revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                          if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                          if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 > 0:
              else:
                  if 0 >= player[caller].field_1792:
                      if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                          revert with 0, 'SafeMath add failed'
                      if player[caller].field_1536 + player[caller].field_2048 < 2:
                          if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                              if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                      else:
                          if 2 > player[caller].field_1536 + player[caller].field_2048:
                              revert with 0, 'SafeMath sub failed'
                          if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                              if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                      if 0 >= player[caller].field_1792:
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                  if 0 < player[caller].field_1792:
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                          revert with 0, 'SafeMath add failed'
                      if block.timestamp - player[caller].field_1792 / stcPerior > zeroPerior / stcPerior:
                          if zeroPerior / stcPerior <= 0:
                              if player[caller].field_1536 + player[caller].field_2048 < 2:
                                  if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                      if 0 < player[caller].field_1792:
                                          if player[caller].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                      if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              if player[caller].field_1536 + player[caller].field_2048 < 2:
                                  if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                      if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 > 0:
                              else:
                                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                      if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                      else:
                          if block.timestamp - player[caller].field_1792 / stcPerior <= 0:
                              if player[caller].field_1536 + player[caller].field_2048 < 2:
                                  if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                      if 0 < player[caller].field_1792:
                                          if player[caller].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                      if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              if player[caller].field_1536 + player[caller].field_2048 < 2:
                                  if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                      if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                  else:
                                      if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 > 0:
                              else:
                                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                      if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                  else:
                      require stcPerior
                      if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                          revert with 0, 'SafeMath add failed'
                      if 0 <= zeroPerior / stcPerior:
                          if player[caller].field_1536 + player[caller].field_2048 < 2:
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              if 0 >= player[caller].field_1792:
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if 2 > player[caller].field_1536 + player[caller].field_2048:
                              revert with 0, 'SafeMath sub failed'
                          if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
                              if 0 >= player[caller].field_1792:
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                              revert with 0, 'SafeMath sub failed'
                          if 0 < player[caller].field_1792:
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                      else:
                          if zeroPerior / stcPerior <= 0:
                              if player[caller].field_1536 + player[caller].field_2048 < 2:
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                      if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                  if 0 >= player[caller].field_1792:
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[caller].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                                  require stcPerior
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if 2 > player[caller].field_1536 + player[caller].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
                                  if 0 >= player[caller].field_1792:
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[caller].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                                  require stcPerior
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                              if 0 < player[caller].field_1792:
                                  if player[caller].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
                                      if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                      if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                          if 2 > player[caller].field_1536 + player[caller].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 > 0:
                                          if zeroPerior / stcPerior > 0:
                                              if player[caller].field_1280:
                                                  if 100 * player[caller].field_1280 / player[caller].field_1280 != 100:
                                                      revert with 0, 'SafeMath mul failed'
                              else:
                                  if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                      if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                          revert with 0, 'SafeMath add failed'
                                      if player[caller].field_1536 + player[caller].field_2048 < 2:
                                          if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                              if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 2 > player[caller].field_1536 + player[caller].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                          if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                      else:
                                          if zeroPerior / stcPerior <= 0:
                                              if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if player[caller].field_1280:
                                                  if 100 * player[caller].field_1280 / player[caller].field_1280 != 100:
                                                      revert with 0, 'SafeMath mul failed'
                                                  if 100 * player[caller].field_1280:
          else:
              if stor12[stor11[caller]] != 1:
                  if stor12[stor11[caller]] > poitProfit:
                      revert with 0, 'SafeMath sub failed'
                  if player[caller].field_768 < 0:
                      revert with 0, 'SafeMath add failed'
                  if 0 >= player[caller].field_1792:
                      if 0 >= player[caller].field_1792:
                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_1536 + player[caller].field_2048 < 2:
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if 2 > player[caller].field_1536 + player[caller].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                  if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                          if 0 >= player[caller].field_1792:
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if 0 < player[caller].field_1792:
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if block.timestamp - player[caller].field_1792 / stcPerior > zeroPerior / stcPerior:
                              if zeroPerior / stcPerior > 0:
                                  if player[caller].field_1536 + player[caller].field_2048 < 2:
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                          else:
                              if block.timestamp - player[caller].field_1792 / stcPerior > 0:
                                  if player[caller].field_1536 + player[caller].field_2048 < 2:
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                      else:
                          require stcPerior
                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if 0 <= zeroPerior / stcPerior:
                              if player[caller].field_1536 + player[caller].field_2048 < 2:
                                  if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                      if 0 >= player[caller].field_1792:
                                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                      if player[caller].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stcPerior
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if 0 < player[caller].field_1792:
                              else:
                                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                      if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 0 < player[caller].field_1792:
                                          if player[caller].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                          else:
                              if zeroPerior / stcPerior <= 0:
                                  if player[caller].field_1536 + player[caller].field_2048 < 2:
                                      if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                          if 0 >= player[caller].field_1792:
                                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                          if player[caller].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stcPerior
                                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                      if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if 0 < player[caller].field_1792:
                                  else:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                          if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 0 < player[caller].field_1792:
                                              if player[caller].field_1792 > block.timestamp:
                                                  revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[caller].field_1536 + player[caller].field_2048 < 2:
                                      if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 > 0:
                                              if zeroPerior / stcPerior > 0:
                                  else:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                          if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 > 0:
                  else:
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if block.timestamp - player[caller].field_1792 % stcPerior > stcPerior:
                          revert with 0, 'SafeMath sub failed'
                      if 0 >= player[caller].field_1792:
                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_1536 + player[caller].field_2048 < 2:
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if 0 < player[caller].field_1792:
                                      if player[caller].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                          else:
                              if 2 > player[caller].field_1536 + player[caller].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                  if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if 0 < player[caller].field_1792:
                      else:
                          if 0 < player[caller].field_1792:
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              if block.timestamp - player[caller].field_1792 / stcPerior <= zeroPerior / stcPerior:
                          else:
                              require stcPerior
                              if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                  revert with 0, 'SafeMath add failed'
                              if 0 <= zeroPerior / stcPerior:
                                  if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if zeroPerior / stcPerior <= 0:
                                      if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                          if 2 > player[caller].field_1536 + player[caller].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                          if 2 > player[caller].field_1536 + player[caller].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                              if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                                  revert with 0, 'SafeMath sub failed'
              else:
                  if player[caller].field_768 + poitProfit < poitProfit:
                      revert with 0, 'SafeMath add failed'
                  if 0 < player[caller].field_1792:
                      if player[caller].field_1792 > block.timestamp:
                          revert with 0, 'SafeMath sub failed'
                      require stcPerior
                      if block.timestamp - player[caller].field_1792 % stcPerior > stcPerior:
                          revert with 0, 'SafeMath sub failed'
                      if 0 >= player[caller].field_1792:
                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_1536 + player[caller].field_2048 < 2:
                              if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                  if 0 >= player[caller].field_1792:
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[caller].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                                  require stcPerior
                                  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                              if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                  revert with 0, 'SafeMath sub failed'
                              if 0 < player[caller].field_1792:
                                  if player[caller].field_1792 > block.timestamp:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if 2 > player[caller].field_1536 + player[caller].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                  if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                              else:
                                  if 0 < player[caller].field_1792:
                                      if player[caller].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                      else:
                          if 0 < player[caller].field_1792:
                              if player[caller].field_1792 > block.timestamp:
                                  revert with 0, 'SafeMath sub failed'
                              require stcPerior
                              if block.timestamp - player[caller].field_1792 / stcPerior > zeroPerior / stcPerior:
                                  if zeroPerior / stcPerior > 0:
                              else:
                                  if block.timestamp - player[caller].field_1792 / stcPerior > 0:
                              if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                  revert with 0, 'SafeMath add failed'
                          else:
                              require stcPerior
                              if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                  revert with 0, 'SafeMath add failed'
                              if 0 <= zeroPerior / stcPerior:
                                  if player[caller].field_1536 + player[caller].field_2048 < 2:
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if zeroPerior / stcPerior <= 0:
                                      if player[caller].field_1536 + player[caller].field_2048 < 2:
                                          if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                              if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 2 > player[caller].field_1536 + player[caller].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[caller].field_1536 + player[caller].field_2048 < 2:
                                          if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                              if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                                  revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 2 > player[caller].field_1536 + player[caller].field_2048:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                              if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                                  revert with 0, 'SafeMath sub failed'
                  else:
                      if 0 >= player[caller].field_1792:
                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if player[caller].field_1536 + player[caller].field_2048 < 2:
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                          else:
                              if 2 > player[caller].field_1536 + player[caller].field_2048:
                                  revert with 0, 'SafeMath sub failed'
                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                  if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                          if 0 >= player[caller].field_1792:
                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                      if 0 < player[caller].field_1792:
                          if player[caller].field_1792 > block.timestamp:
                              revert with 0, 'SafeMath sub failed'
                          require stcPerior
                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if block.timestamp - player[caller].field_1792 / stcPerior > zeroPerior / stcPerior:
                              if zeroPerior / stcPerior <= 0:
                                  if player[caller].field_1536 + player[caller].field_2048 < 2:
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 0 < player[caller].field_1792:
                                              if player[caller].field_1792 > block.timestamp:
                                                  revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                          if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                          if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 > 0:
                          else:
                              if block.timestamp - player[caller].field_1792 / stcPerior <= 0:
                                  if player[caller].field_1536 + player[caller].field_2048 < 2:
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                      else:
                                          if 0 < player[caller].field_1792:
                                              if player[caller].field_1792 > block.timestamp:
                                                  revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                          if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                              else:
                                  if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048 - 2:
                                          if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 > 0:
                      else:
                          require stcPerior
                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                              revert with 0, 'SafeMath add failed'
                          if 0 <= zeroPerior / stcPerior:
                              if player[caller].field_1536 + player[caller].field_2048 < 2:
                                  if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                      if 0 >= player[caller].field_1792:
                                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                      if player[caller].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stcPerior
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if 0 < player[caller].field_1792:
                                      if player[caller].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                              else:
                                  if 2 > player[caller].field_1536 + player[caller].field_2048:
                                      revert with 0, 'SafeMath sub failed'
                                  if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
                                      if 0 >= player[caller].field_1792:
                                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                      if player[caller].field_1792 > block.timestamp:
                                          revert with 0, 'SafeMath sub failed'
                                      require stcPerior
                                      ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                  if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                      revert with 0, 'SafeMath sub failed'
                                  if 0 < player[caller].field_1792:
                          else:
                              if zeroPerior / stcPerior <= 0:
                                  if player[caller].field_1536 + player[caller].field_2048 < 2:
                                      if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                          if 0 >= player[caller].field_1792:
                                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                          if player[caller].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stcPerior
                                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                      if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if 0 < player[caller].field_1792:
                                          if player[caller].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                  else:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
                                          if 0 >= player[caller].field_1792:
                                              ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                          if player[caller].field_1792 > block.timestamp:
                                              revert with 0, 'SafeMath sub failed'
                                          require stcPerior
                                          ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)
                                      if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                          revert with 0, 'SafeMath sub failed'
                                      if 0 < player[caller].field_1792:
                              else:
                                  if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                      if 2 > player[caller].field_1536 + player[caller].field_2048:
                                          revert with 0, 'SafeMath sub failed'
                                      if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048 - 2:
                                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                      else:
                                          if player[caller].field_1536 + player[caller].field_2048 - 2 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[caller].field_2304 + -player[caller].field_1536 + -player[caller].field_2048 + 2 > 0:
                                              if zeroPerior / stcPerior > 0:
                                  else:
                                      if player[caller].field_2304 <= player[caller].field_1536 + player[caller].field_2048:
                                          if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                              revert with 0, 'SafeMath add failed'
                                          if player[caller].field_1536 + player[caller].field_2048 >= 2:
                                              if 2 > player[caller].field_1536 + player[caller].field_2048:
                                                  revert with 0, 'SafeMath sub failed'
                                          else:
                                              if player[caller].field_2304 > player[caller].field_1536 + player[caller].field_2048:
                                                  if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                                      revert with 0, 'SafeMath sub failed'
                                      else:
                                          if player[caller].field_1536 + player[caller].field_2048 > player[caller].field_2304:
                                              revert with 0, 'SafeMath sub failed'
                                          if player[caller].field_2304 - player[caller].field_1536 - player[caller].field_2048 <= 0:
                                              if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                                  revert with 0, 'SafeMath add failed'
                                          else:
                                              if zeroPerior / stcPerior <= 0:
                                                  if player[caller].field_1536 + player[caller].field_2048 < player[caller].field_2048:
                                                      revert with 0, 'SafeMath add failed'
                                              else:
                                                  if player[caller].field_1280:
                                                      if 100 * player[caller].field_1280 / player[caller].field_1280 != 100:
                                                          revert with 0, 'SafeMath mul failed'
  ...  # Decompilation aborted, sorry: ("decompilation didn't finish",)


