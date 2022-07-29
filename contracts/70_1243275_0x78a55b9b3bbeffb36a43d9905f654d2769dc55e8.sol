# Palkeoramix decompiler. 

def storage:
  stor0 is mapping of uint256 at storage 0
  stor1 is mapping of uint256 at storage 1

def _fallback(): # not payable, default function
  stop

def unknownd35563b4(): # not payable
  require 0x8df7df6e7b141fa45f56920c066035733361281c == caller
  call 0x8df7df6e7b141fa45f56920c066035733361281c with:
     value eth.balance(this.address) wei
       gas 2300 * is_zero(value) wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def unknown15a8b92a(uint256 _param1): # not payable
  require calldata.size - 4 >= 32
  require 0x8df7df6e7b141fa45f56920c066035733361281c == caller
  call 0x8df7df6e7b141fa45f56920c066035733361281c with:
     value _param1 wei
       gas 2300 * is_zero(value) wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def unknownde679c7b(addr _param1): # not payable
  require calldata.size - 4 >= 32
  require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
  static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
          gas gas_remaining wei
         args _param1
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >= 32
  return bool(ext_call.return_data[0])

def unknown0ee0a2d1(addr _param1, addr _param2, uint256 _param3): # not payable
  require calldata.size - 4 >= 96
  require 0x8df7df6e7b141fa45f56920c066035733361281c == caller
  require ext_code.size(_param1)
  call _param1.transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args addr(_param2), _param3
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >= 32

def unknown7dbe0940(): # not payable
  require calldata.size - 4 == 3 * calldata.size - 4 / 3
  s = 0
  idx = 0
  while idx < calldata.size - 4 / 3:
      mem[0] = cd[((3 * idx) + 4)] % 16777216 >> 232
      mem[32] = 1
      stor1[Mask(256, -232, cd[((3 * idx) + 4)]) << 232] = 1
      s = cd[((3 * idx) + 4)] % 16777216 >> 232
      idx = idx + 1
      continue 

def unknown682a139e(uint256 _param1): # not payable
  if caller != 0x8df7df6e7b141fa45f56920c066035733361281c:
      if caller:
          require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
          static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                  gas gas_remaining wei
                 args caller
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
          require return_data.size >= 32
          require ext_call.return_data[0]
  delegate (addr(_param1) >> 96).0xcbbce2e7 with:
       gas gas_remaining - 50000 wei
      args call.data[24 len calldata.size - 24]
  require delegate.return_code

def unknownd1235862(addr _param1): # not payable
  require calldata.size - 4 >= 32
  require 0x8df7df6e7b141fa45f56920c066035733361281c == caller
  require ext_code.size(_param1)
  static call _param1.balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >= 32
  require ext_code.size(_param1)
  call _param1.transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args 0x8df7df6e7b141fa45f56920c066035733361281c, ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >= 32

def unknown19c7fe8f(uint256 _param1, addr _param2): # not payable
  require calldata.size - 4 >= 64
  if caller != 0x8df7df6e7b141fa45f56920c066035733361281c:
      require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
      static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
              gas gas_remaining wei
             args caller
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >= 32
      require ext_call.return_data[0]
  require eth.balance(this.address) > _param1
  call _param2 with:
     value eth.balance(this.address) - _param1 wei
       gas 2300 * is_zero(value) wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]

def unknown851e5b90(uint256 _param1, uint256 _param2): # not payable
  require calldata.size - 4 >= 64
  require _param2 <= 18446744073709551615
  if _param2:
      mem[128 len 32 * _param2] = call.data[calldata.size len 32 * _param2]
  idx = 0
  while idx < _param2:
      mem[0] = idx + _param1
      mem[32] = 1
      require idx < _param2
      mem[(32 * idx) + 128] = stor1[idx + _param1]
      idx = idx + 1
      continue 
  mem[(32 * _param2) + 192 len floor32(_param2)] = mem[128 len floor32(_param2)]
  return Array(len=_param2, data=mem[128 len floor32(_param2)], mem[(32 * _param2) + floor32(_param2) + 192 len (32 * _param2) - floor32(_param2)]), 

def unknown22bb9740(): # not payable
  if caller != 0x8df7df6e7b141fa45f56920c066035733361281c:
      require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
      static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
              gas gas_remaining wei
             args caller
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >= 32
      require ext_call.return_data[0]
  s = 0
  idx = 0
  while idx < calldata.size - 36 / 20:
      if eth.balance(Mask(64, 96, cd[((20 * idx) + 36)]) >> 96) < 90 * cd / 100:
          call Mask(64, 96, cd[((20 * idx) + 36)]) >> 96 with:
             value cd * idx) + 36)]) >> 96) wei
               gas 2300 * is_zero(value) wei
          if not ext_call.success:
              revert with ext_call.return_data[0 len return_data.size]
      s = eth.balance(Mask(64, 96, cd[((20 * idx) + 36)]) >> 96)
      idx = idx + 1
      continue 

def delegate(): # not payable
  if not Mask(112, 72, cd >> 72:
      if not uint64(cd):
          if not Mask(256, -192, cd[44]):
              if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                  mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                  _84 = call.datauint8(cd) >> 248], mem[(uint8(cd) >> 248) + 96 len -(uint8(cd) >> 248) + 32]
                  if ceil32(uint8(cd) >> 248) + 96:
                      mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                      idx = 0
                      while idx < (uint8(_84) >> 248) + 31 / 32:
                          mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                          idx = idx + 1
                          continue 
                      delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                           gas gas_remaining - 22000 wei
                          args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(_84) >> 248]
                  else:
                      mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                      idx = 0
                      while idx < (uint8(_84) >> 248) + 31 / 32:
                          mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                          idx = idx + 1
                          continue 
                      delegate (addr(cd) >> 96).mem[96 len 4] with:
                           gas gas_remaining - 22000 wei
                          args mem[100 len uint8(_84) >> 248]
              else:
                  mem[100] = caller
                  require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                  static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                          gas gas_remaining wei
                         args caller
                  mem[96] = ext_call.return_data[0]
                  if not ext_call.success:
                      revert with ext_call.return_data[0 len return_data.size]
                  require return_data.size >= 32
                  require ext_call.return_data[0]
                  mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                  if ceil32(uint8(cd) >> 248) + 96:
                      mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                      idx = 0
                      while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                          mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                          idx = idx + 1
                          continue 
                      delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                           gas gas_remaining - 22000 wei
                          args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                  else:
                      mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                      idx = 0
                      while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                          mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                          idx = idx + 1
                          continue 
                      delegate (addr(cd) >> 96).mem[96 len 4] with:
                           gas gas_remaining - 22000 wei
                          args mem[100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
              if Mask(256, -192, cd[44]):
                  if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                      stor0[Mask(256, -192, cd << 192] = 1
                  else:
                      if 1 == uint8(cd) >> 248:
                          stor0[Mask(256, -192, cd << 192] = 1
          else:
              if stor0[Mask(256, -192, cd << 192]:
                  if Mask(256, -232, cd[60]):
                      stor1[Mask(256, -232, cd << 232] = 0
              else:
                  if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                      mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                      _93 = call.datauint8(cd) >> 248], mem[(uint8(cd) >> 248) + 96 len -(uint8(cd) >> 248) + 32]
                      if ceil32(uint8(cd) >> 248) + 96:
                          mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                          idx = 0
                          while idx < (uint8(_93) >> 248) + 31 / 32:
                              mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                              idx = idx + 1
                              continue 
                          delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                               gas gas_remaining - 22000 wei
                              args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(_93) >> 248]
                      else:
                          mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                          idx = 0
                          while idx < (uint8(_93) >> 248) + 31 / 32:
                              mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                              idx = idx + 1
                              continue 
                          delegate (addr(cd) >> 96).mem[96 len 4] with:
                               gas gas_remaining - 22000 wei
                              args mem[100 len uint8(_93) >> 248]
                  else:
                      mem[100] = caller
                      require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                      static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                              gas gas_remaining wei
                             args caller
                      mem[96] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      require return_data.size >= 32
                      require ext_call.return_data[0]
                      mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                      if ceil32(uint8(cd) >> 248) + 96:
                          mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                          idx = 0
                          while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                              mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                              idx = idx + 1
                              continue 
                          delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                               gas gas_remaining - 22000 wei
                              args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                      else:
                          mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                          idx = 0
                          while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                              mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                              idx = idx + 1
                              continue 
                          delegate (addr(cd) >> 96).mem[96 len 4] with:
                               gas gas_remaining - 22000 wei
                              args mem[100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                  if Mask(256, -192, cd[44]):
                      if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                          stor0[Mask(256, -192, cd << 192] = 1
                      else:
                          if 1 == uint8(cd) >> 248:
                              stor0[Mask(256, -192, cd << 192] = 1
      else:
          mem[96] = 0xb1d926ee00000000000000000000000000000000000000000000000000000000
          mem[100] = uint64(cd) >> 192
          require ext_code.size(uint64(cd))
          call uint64(cd).0xb1d926ee with:
               gas gas_remaining wei
              args (uint64(cd) >> 192)
          if not ext_call.success:
              if not Mask(256, -192, cd[44]):
                  if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                      if ceil32(uint8(cd) >> 248) + 96:
                          mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                          idx = 0
                          while idx < (Mask(8, -160, cd >> 88) + 31 / 32:
                              mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                              idx = idx + 1
                              continue 
                          delegate (addr(cd) >> 96) with:
                             funct Mask(8 * -ceil32(uint8(cd) >> 248) + 4, 224, 2983798510) >> 224, mem[100 len ceil32(uint8(cd) >> 248)]
                               gas gas_remaining - 22000 wei
                              args mem[ceil32(uint8(cd) >> 248) + 100 len Mask(8, -160, cd >> 88]
                      else:
                          mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                          idx = 0
                          while idx < (Mask(8, -160, cd >> 88) + 31 / 32:
                              mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                              idx = idx + 1
                              continue 
                          delegate (addr(cd) >> 96).mem[96 len 4] with:
                               gas gas_remaining - 22000 wei
                              args mem[100 len Mask(8, -160, cd >> 88]
                  else:
                      mem[100] = caller
                      require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                      static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                              gas gas_remaining wei
                             args caller
                      mem[96] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      require return_data.size >= 32
                      require ext_call.return_data[0]
                      mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                      if ceil32(uint8(cd) >> 248) + 96:
                          mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                          idx = 0
                          while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                              mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                              idx = idx + 1
                              continue 
                          delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                               gas gas_remaining - 22000 wei
                              args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                      else:
                          mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                          idx = 0
                          while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                              mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                              idx = idx + 1
                              continue 
                          delegate (addr(cd) >> 96).mem[96 len 4] with:
                               gas gas_remaining - 22000 wei
                              args mem[100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                  if Mask(256, -192, cd[44]):
                      if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                          stor0[Mask(256, -192, cd << 192] = 1
                      else:
                          if 1 == uint8(cd) >> 248:
                              stor0[Mask(256, -192, cd << 192] = 1
              else:
                  if stor0[Mask(256, -192, cd << 192]:
                      if Mask(256, -232, cd[60]):
                          stor1[Mask(256, -232, cd << 232] = 0
                  else:
                      if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                          if ceil32(uint8(cd) >> 248) + 96:
                              mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (Mask(8, -160, cd >> 88) + 31 / 32:
                                  mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96) with:
                                 funct Mask(8 * -ceil32(uint8(cd) >> 248) + 4, 224, 2983798510) >> 224, mem[100 len ceil32(uint8(cd) >> 248)]
                                   gas gas_remaining - 22000 wei
                                  args mem[ceil32(uint8(cd) >> 248) + 100 len Mask(8, -160, cd >> 88]
                          else:
                              mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (Mask(8, -160, cd >> 88) + 31 / 32:
                                  mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[96 len 4] with:
                                   gas gas_remaining - 22000 wei
                                  args mem[100 len Mask(8, -160, cd >> 88]
                      else:
                          mem[100] = caller
                          require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                          static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                                  gas gas_remaining wei
                                 args caller
                          mem[96] = ext_call.return_data[0]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          require return_data.size >= 32
                          require ext_call.return_data[0]
                          mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                          if ceil32(uint8(cd) >> 248) + 96:
                              mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                  mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                                   gas gas_remaining - 22000 wei
                                  args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                          else:
                              mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                  mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[96 len 4] with:
                                   gas gas_remaining - 22000 wei
                                  args mem[100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                      if Mask(256, -192, cd[44]):
                          if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                              stor0[Mask(256, -192, cd << 192] = 1
                          else:
                              if 1 == uint8(cd) >> 248:
                                  stor0[Mask(256, -192, cd << 192] = 1
          else:
              mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
              mem[64] = ceil32(return_data.size) + 96
              require return_data.size >= 64
              _11 = mem[96 len 4], Mask(224, -160, cd << 160
              _12 = Mask(32, -192, cd << 192, mem[132 len 28]
              require Mask(32, -192, cd << 192, mem[132 len 28] <= 4294967296
              require Mask(32, -192, cd << 192, mem[132 len 28] + 32 <= return_data.size
              require mem[Mask(32, -192, cd << 192, mem[132 len 28] + 96] <= 4294967296 and Mask(32, -192, cd << 192, mem[132 len 28] + (32 * mem[Mask(32, -192, cd << 192, mem[132 len 28] + 96]) + 32 <= return_data.size
              mem[ceil32(return_data.size) + 96] = mem[Mask(32, -192, cd << 192, mem[132 len 28] + 96]
              _19 = mem[_12 + 96]
              mem[ceil32(return_data.size) + 128 len floor32(mem[_12 + 96])] = mem[_12 + 128 len floor32(mem[_12 + 96])]
              if _11:
                  if not mem[ceil32(return_data.size) + 96]:
                      if Mask(256, -232, cd[60]):
                          stor1[Mask(256, -232, cd << 232] = 0
                  else:
                      if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                          _722 = mem[ceil32(return_data.size) + 128]
                          if (32 * _19) + ceil32(return_data.size) + 128:
                              mem[(32 * _19) + ceil32(return_data.size) + 128] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (uint8(_722) >> 248) + 31 / 32:
                                  mem[(32 * _19) + ceil32(return_data.size) + (32 * idx) + 132] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[(32 * _19) + ceil32(return_data.size) + 128 len 4] with:
                                   gas gas_remaining - 2000 wei
                                  args mem[(32 * _19) + ceil32(return_data.size) + 132 len uint8(_722) >> 248]
                          else:
                              mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (uint8(_722) >> 248) + 31 / 32:
                                  mem[(32 * idx) + 100] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[96 len 4] with:
                                   gas gas_remaining - 2000 wei
                                  args mem[100 len uint8(_722) >> 248]
                      else:
                          require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                          static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                                  gas gas_remaining wei
                                 args caller
                          mem[(32 * _19) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          require return_data.size >= 32
                          require ext_call.return_data[0]
                          _749 = mem[ceil32(return_data.size) + 128]
                          if (32 * _19) + ceil32(return_data.size) + 128:
                              mem[(32 * _19) + ceil32(return_data.size) + 128] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (uint8(_749) >> 248) + 31 / 32:
                                  mem[(32 * _19) + ceil32(return_data.size) + (32 * idx) + 132] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[(32 * _19) + ceil32(return_data.size) + 128 len 4] with:
                                   gas gas_remaining - 2000 wei
                                  args mem[(32 * _19) + ceil32(return_data.size) + 132 len uint8(_749) >> 248]
                          else:
                              mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (uint8(_749) >> 248) + 31 / 32:
                                  mem[(32 * idx) + 100] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[96 len 4] with:
                                   gas gas_remaining - 2000 wei
                                  args mem[100 len uint8(_749) >> 248]
              else:
                  if not Mask(256, -192, cd[44]):
                      if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                          if (32 * _19) + ceil32(return_data.size) + 128:
                              mem[(32 * _19) + ceil32(return_data.size) + 128 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                              _760 = call.datauint8(cd) >> 248], mem[(32 * _19) + ceil32(return_data.size) + (uint8(cd) >> 248) + 128 len -(uint8(cd) >> 248) + 32]
                              if (32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128:
                                  mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(_760) >> 248) + 31 / 32:
                                      mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + (32 * idx) + 132] = mem[(32 * idx) + (32 * _19) + ceil32(return_data.size) + 128]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128 len 4] with:
                                       gas gas_remaining - 22000 wei
                                      args mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 132 len uint8(_760) >> 248]
                              else:
                                  mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(_760) >> 248) + 31 / 32:
                                      mem[(32 * idx) + 100] = mem[(32 * idx) + (32 * _19) + ceil32(return_data.size) + 128]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[96 len 4] with:
                                       gas gas_remaining - 22000 wei
                                      args mem[100 len uint8(_760) >> 248]
                              if Mask(256, -192, cd[44]):
                                  if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                      stor0[Mask(256, -192, cd << 192] = 1
                                  else:
                                      if 1 == uint8(cd) >> 248:
                                          stor0[Mask(256, -192, cd << 192] = 1
                          else:
                              mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                              _766 = call.datauint8(cd) >> 248], mem[(uint8(cd) >> 248) + 96 len -(uint8(cd) >> 248) + 4], Mask(224, -160, cd << 160
                              if ceil32(uint8(cd) >> 248) + 96:
                                  mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(_766) >> 248) + 31 / 32:
                                      mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                                       gas gas_remaining - 22000 wei
                                      args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(_766) >> 248]
                              else:
                                  mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(_766) >> 248) + 31 / 32:
                                      mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[96 len 4] with:
                                       gas gas_remaining - 22000 wei
                                      args mem[100 len uint8(_766) >> 248]
                              if Mask(256, -192, cd[44]):
                                  if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                      stor0[Mask(256, -192, cd << 192] = 1
                                  else:
                                      if 1 == uint8(cd) >> 248:
                                          stor0[Mask(256, -192, cd << 192] = 1
                      else:
                          mem[(32 * _19) + ceil32(return_data.size) + 132] = caller
                          require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                          static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                                  gas gas_remaining wei
                                 args caller
                          mem[(32 * _19) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          require return_data.size >= 32
                          require ext_call.return_data[0]
                          if (32 * _19) + ceil32(return_data.size) + 128:
                              mem[(32 * _19) + ceil32(return_data.size) + 128 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                              if (32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128:
                                  mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                      mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + (32 * idx) + 132] = mem[(32 * idx) + (32 * _19) + ceil32(return_data.size) + 128]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128 len 4] with:
                                       gas gas_remaining - 22000 wei
                                      args mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 132 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                              else:
                                  mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                      mem[(32 * idx) + 100] = mem[(32 * idx) + (32 * _19) + ceil32(return_data.size) + 128]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[96 len 4] with:
                                       gas gas_remaining - 22000 wei
                                      args mem[100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                              if Mask(256, -192, cd[44]):
                                  if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                      stor0[Mask(256, -192, cd << 192] = 1
                                  else:
                                      if 1 == uint8(cd) >> 248:
                                          stor0[Mask(256, -192, cd << 192] = 1
                          else:
                              mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                              _788 = call.datauint8(cd) >> 248], mem[(uint8(cd) >> 248) + 96 len -(uint8(cd) >> 248) + 4], Mask(224, -160, cd << 160
                              if ceil32(uint8(cd) >> 248) + 96:
                                  mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(_788) >> 248) + 31 / 32:
                                      mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                                       gas gas_remaining - 22000 wei
                                      args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(_788) >> 248]
                              else:
                                  mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(_788) >> 248) + 31 / 32:
                                      mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[96 len 4] with:
                                       gas gas_remaining - 22000 wei
                                      args mem[100 len uint8(_788) >> 248]
                              if Mask(256, -192, cd[44]):
                                  if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                      stor0[Mask(256, -192, cd << 192] = 1
                                  else:
                                      if 1 == uint8(cd) >> 248:
                                          stor0[Mask(256, -192, cd << 192] = 1
                  else:
                      if stor0[Mask(256, -192, cd << 192]:
                          if Mask(256, -232, cd[60]):
                              stor1[Mask(256, -232, cd << 232] = 0
                      else:
                          if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                              if (32 * _19) + ceil32(return_data.size) + 128:
                                  mem[(32 * _19) + ceil32(return_data.size) + 128 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                                  _767 = call.datauint8(cd) >> 248], mem[(32 * _19) + ceil32(return_data.size) + (uint8(cd) >> 248) + 128 len -(uint8(cd) >> 248) + 32]
                                  if (32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128:
                                      mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(_767) >> 248) + 31 / 32:
                                          mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + (32 * idx) + 132] = mem[(32 * idx) + (32 * _19) + ceil32(return_data.size) + 128]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 132 len uint8(_767) >> 248]
                                  else:
                                      mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(_767) >> 248) + 31 / 32:
                                          mem[(32 * idx) + 100] = mem[(32 * idx) + (32 * _19) + ceil32(return_data.size) + 128]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[96 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[100 len uint8(_767) >> 248]
                                  if Mask(256, -192, cd[44]):
                                      if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                          stor0[Mask(256, -192, cd << 192] = 1
                                      else:
                                          if 1 == uint8(cd) >> 248:
                                              stor0[Mask(256, -192, cd << 192] = 1
                              else:
                                  mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                                  _774 = call.datauint8(cd) >> 248], mem[(uint8(cd) >> 248) + 96 len -(uint8(cd) >> 248) + 4], Mask(224, -160, cd << 160
                                  if ceil32(uint8(cd) >> 248) + 96:
                                      mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(_774) >> 248) + 31 / 32:
                                          mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(_774) >> 248]
                                  else:
                                      mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(_774) >> 248) + 31 / 32:
                                          mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[96 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[100 len uint8(_774) >> 248]
                                  if Mask(256, -192, cd[44]):
                                      if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                          stor0[Mask(256, -192, cd << 192] = 1
                                      else:
                                          if 1 == uint8(cd) >> 248:
                                              stor0[Mask(256, -192, cd << 192] = 1
                          else:
                              mem[(32 * _19) + ceil32(return_data.size) + 132] = caller
                              require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                              static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                                      gas gas_remaining wei
                                     args caller
                              mem[(32 * _19) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              require return_data.size >= 32
                              require ext_call.return_data[0]
                              if (32 * _19) + ceil32(return_data.size) + 128:
                                  mem[(32 * _19) + ceil32(return_data.size) + 128 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                                  if (32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128:
                                      mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                          mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + (32 * idx) + 132] = mem[(32 * idx) + (32 * _19) + ceil32(return_data.size) + 128]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[(32 * _19) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 132 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                                  else:
                                      mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                          mem[(32 * idx) + 100] = mem[(32 * idx) + (32 * _19) + ceil32(return_data.size) + 128]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[96 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                                  if Mask(256, -192, cd[44]):
                                      if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                          stor0[Mask(256, -192, cd << 192] = 1
                                      else:
                                          if 1 == uint8(cd) >> 248:
                                              stor0[Mask(256, -192, cd << 192] = 1
                              else:
                                  mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                                  _799 = call.datauint8(cd) >> 248], mem[(uint8(cd) >> 248) + 96 len -(uint8(cd) >> 248) + 4], Mask(224, -160, cd << 160
                                  if ceil32(uint8(cd) >> 248) + 96:
                                      mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(_799) >> 248) + 31 / 32:
                                          mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(_799) >> 248]
                                  else:
                                      mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(_799) >> 248) + 31 / 32:
                                          mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[96 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[100 len uint8(_799) >> 248]
                                  if Mask(256, -192, cd[44]):
                                      if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                          stor0[Mask(256, -192, cd << 192] = 1
                                      else:
                                          if 1 == uint8(cd) >> 248:
                                              stor0[Mask(256, -192, cd << 192] = 1
  else:
      if uint8(cd) == eth.balance(Mask(104, 80, cd >> 80) % 251:
          if Mask(256, -232, cd[60]):
              stor1[Mask(256, -232, cd << 232] = 0
      else:
          if not uint64(cd):
              if not Mask(256, -192, cd[44]):
                  if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                      mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                      _70 = call.datauint8(cd) >> 248], mem[(uint8(cd) >> 248) + 96 len -(uint8(cd) >> 248) + 32]
                      if ceil32(uint8(cd) >> 248) + 96:
                          mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                          idx = 0
                          while idx < (uint8(_70) >> 248) + 31 / 32:
                              mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                              idx = idx + 1
                              continue 
                          delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                               gas gas_remaining - 22000 wei
                              args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(_70) >> 248]
                      else:
                          mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                          idx = 0
                          while idx < (uint8(_70) >> 248) + 31 / 32:
                              mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                              idx = idx + 1
                              continue 
                          delegate (addr(cd) >> 96).mem[96 len 4] with:
                               gas gas_remaining - 22000 wei
                              args mem[100 len uint8(_70) >> 248]
                  else:
                      mem[100] = caller
                      require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                      static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                              gas gas_remaining wei
                             args caller
                      mem[96] = ext_call.return_data[0]
                      if not ext_call.success:
                          revert with ext_call.return_data[0 len return_data.size]
                      require return_data.size >= 32
                      require ext_call.return_data[0]
                      mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                      if ceil32(uint8(cd) >> 248) + 96:
                          mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                          idx = 0
                          while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                              mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                              idx = idx + 1
                              continue 
                          delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                               gas gas_remaining - 22000 wei
                              args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                      else:
                          mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                          idx = 0
                          while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                              mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                              idx = idx + 1
                              continue 
                          delegate (addr(cd) >> 96).mem[96 len 4] with:
                               gas gas_remaining - 22000 wei
                              args mem[100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                  if Mask(256, -192, cd[44]):
                      if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                          stor0[Mask(256, -192, cd << 192] = 1
                      else:
                          if 1 == uint8(cd) >> 248:
                              stor0[Mask(256, -192, cd << 192] = 1
              else:
                  if stor0[Mask(256, -192, cd << 192]:
                      if Mask(256, -232, cd[60]):
                          stor1[Mask(256, -232, cd << 232] = 0
                  else:
                      if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                          mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                          _80 = call.datauint8(cd) >> 248], mem[(uint8(cd) >> 248) + 96 len -(uint8(cd) >> 248) + 32]
                          if ceil32(uint8(cd) >> 248) + 96:
                              mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (uint8(_80) >> 248) + 31 / 32:
                                  mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                                   gas gas_remaining - 22000 wei
                                  args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(_80) >> 248]
                          else:
                              mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (uint8(_80) >> 248) + 31 / 32:
                                  mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[96 len 4] with:
                                   gas gas_remaining - 22000 wei
                                  args mem[100 len uint8(_80) >> 248]
                      else:
                          mem[100] = caller
                          require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                          static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                                  gas gas_remaining wei
                                 args caller
                          mem[96] = ext_call.return_data[0]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          require return_data.size >= 32
                          require ext_call.return_data[0]
                          mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                          if ceil32(uint8(cd) >> 248) + 96:
                              mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                  mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                                   gas gas_remaining - 22000 wei
                                  args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                          else:
                              mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                  mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[96 len 4] with:
                                   gas gas_remaining - 22000 wei
                                  args mem[100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                      if Mask(256, -192, cd[44]):
                          if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                              stor0[Mask(256, -192, cd << 192] = 1
                          else:
                              if 1 == uint8(cd) >> 248:
                                  stor0[Mask(256, -192, cd << 192] = 1
          else:
              mem[96] = 0xb1d926ee00000000000000000000000000000000000000000000000000000000
              mem[100] = uint64(cd) >> 192
              require ext_code.size(uint64(cd))
              call uint64(cd).0xb1d926ee with:
                   gas gas_remaining wei
                  args (uint64(cd) >> 192)
              if not ext_call.success:
                  if not Mask(256, -192, cd[44]):
                      if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                          if ceil32(uint8(cd) >> 248) + 96:
                              mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (Mask(8, -160, cd >> 88) + 31 / 32:
                                  mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96) with:
                                 funct Mask(8 * -ceil32(uint8(cd) >> 248) + 4, 224, 2983798510) >> 224, mem[100 len ceil32(uint8(cd) >> 248)]
                                   gas gas_remaining - 22000 wei
                                  args mem[ceil32(uint8(cd) >> 248) + 100 len Mask(8, -160, cd >> 88]
                          else:
                              mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (Mask(8, -160, cd >> 88) + 31 / 32:
                                  mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[96 len 4] with:
                                   gas gas_remaining - 22000 wei
                                  args mem[100 len Mask(8, -160, cd >> 88]
                      else:
                          mem[100] = caller
                          require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                          static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                                  gas gas_remaining wei
                                 args caller
                          mem[96] = ext_call.return_data[0]
                          if not ext_call.success:
                              revert with ext_call.return_data[0 len return_data.size]
                          require return_data.size >= 32
                          require ext_call.return_data[0]
                          mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                          if ceil32(uint8(cd) >> 248) + 96:
                              mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                  mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                                   gas gas_remaining - 22000 wei
                                  args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                          else:
                              mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                              idx = 0
                              while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                  mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                  idx = idx + 1
                                  continue 
                              delegate (addr(cd) >> 96).mem[96 len 4] with:
                                   gas gas_remaining - 22000 wei
                                  args mem[100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                      if Mask(256, -192, cd[44]):
                          if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                              stor0[Mask(256, -192, cd << 192] = 1
                          else:
                              if 1 == uint8(cd) >> 248:
                                  stor0[Mask(256, -192, cd << 192] = 1
                  else:
                      if stor0[Mask(256, -192, cd << 192]:
                          if Mask(256, -232, cd[60]):
                              stor1[Mask(256, -232, cd << 232] = 0
                      else:
                          if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                              if ceil32(uint8(cd) >> 248) + 96:
                                  mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (Mask(8, -160, cd >> 88) + 31 / 32:
                                      mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96) with:
                                     funct Mask(8 * -ceil32(uint8(cd) >> 248) + 4, 224, 2983798510) >> 224, mem[100 len ceil32(uint8(cd) >> 248)]
                                       gas gas_remaining - 22000 wei
                                      args mem[ceil32(uint8(cd) >> 248) + 100 len Mask(8, -160, cd >> 88]
                              else:
                                  mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (Mask(8, -160, cd >> 88) + 31 / 32:
                                      mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[96 len 4] with:
                                       gas gas_remaining - 22000 wei
                                      args mem[100 len Mask(8, -160, cd >> 88]
                          else:
                              mem[100] = caller
                              require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                              static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                                      gas gas_remaining wei
                                     args caller
                              mem[96] = ext_call.return_data[0]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              require return_data.size >= 32
                              require ext_call.return_data[0]
                              mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                              if ceil32(uint8(cd) >> 248) + 96:
                                  mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                      mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                                       gas gas_remaining - 22000 wei
                                      args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                              else:
                                  mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                      mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[96 len 4] with:
                                       gas gas_remaining - 22000 wei
                                      args mem[100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                          if Mask(256, -192, cd[44]):
                              if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                  stor0[Mask(256, -192, cd << 192] = 1
                              else:
                                  if 1 == uint8(cd) >> 248:
                                      stor0[Mask(256, -192, cd << 192] = 1
              else:
                  mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  mem[64] = ceil32(return_data.size) + 96
                  require return_data.size >= 64
                  _7 = mem[96 len 4], Mask(224, -160, cd << 160
                  _8 = Mask(32, -192, cd << 192, mem[132 len 28]
                  require Mask(32, -192, cd << 192, mem[132 len 28] <= 4294967296
                  require Mask(32, -192, cd << 192, mem[132 len 28] + 32 <= return_data.size
                  require mem[Mask(32, -192, cd << 192, mem[132 len 28] + 96] <= 4294967296 and Mask(32, -192, cd << 192, mem[132 len 28] + (32 * mem[Mask(32, -192, cd << 192, mem[132 len 28] + 96]) + 32 <= return_data.size
                  mem[ceil32(return_data.size) + 96] = mem[Mask(32, -192, cd << 192, mem[132 len 28] + 96]
                  _16 = mem[_8 + 96]
                  mem[ceil32(return_data.size) + 128 len floor32(mem[_8 + 96])] = mem[_8 + 128 len floor32(mem[_8 + 96])]
                  if _7:
                      if not mem[ceil32(return_data.size) + 96]:
                          if Mask(256, -232, cd[60]):
                              stor1[Mask(256, -232, cd << 232] = 0
                      else:
                          if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                              _720 = mem[ceil32(return_data.size) + 128]
                              if (32 * _16) + ceil32(return_data.size) + 128:
                                  mem[(32 * _16) + ceil32(return_data.size) + 128] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(_720) >> 248) + 31 / 32:
                                      mem[(32 * _16) + ceil32(return_data.size) + (32 * idx) + 132] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[(32 * _16) + ceil32(return_data.size) + 128 len 4] with:
                                       gas gas_remaining - 2000 wei
                                      args mem[(32 * _16) + ceil32(return_data.size) + 132 len uint8(_720) >> 248]
                              else:
                                  mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(_720) >> 248) + 31 / 32:
                                      mem[(32 * idx) + 100] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[96 len 4] with:
                                       gas gas_remaining - 2000 wei
                                      args mem[100 len uint8(_720) >> 248]
                          else:
                              require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                              static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                                      gas gas_remaining wei
                                     args caller
                              mem[(32 * _16) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              require return_data.size >= 32
                              require ext_call.return_data[0]
                              _746 = mem[ceil32(return_data.size) + 128]
                              if (32 * _16) + ceil32(return_data.size) + 128:
                                  mem[(32 * _16) + ceil32(return_data.size) + 128] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(_746) >> 248) + 31 / 32:
                                      mem[(32 * _16) + ceil32(return_data.size) + (32 * idx) + 132] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[(32 * _16) + ceil32(return_data.size) + 128 len 4] with:
                                       gas gas_remaining - 2000 wei
                                      args mem[(32 * _16) + ceil32(return_data.size) + 132 len uint8(_746) >> 248]
                              else:
                                  mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                  idx = 0
                                  while idx < (uint8(_746) >> 248) + 31 / 32:
                                      mem[(32 * idx) + 100] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                      idx = idx + 1
                                      continue 
                                  delegate (addr(cd) >> 96).mem[96 len 4] with:
                                       gas gas_remaining - 2000 wei
                                      args mem[100 len uint8(_746) >> 248]
                  else:
                      if not Mask(256, -192, cd[44]):
                          if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                              if (32 * _16) + ceil32(return_data.size) + 128:
                                  mem[(32 * _16) + ceil32(return_data.size) + 128 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                                  _758 = call.datauint8(cd) >> 248], mem[(32 * _16) + ceil32(return_data.size) + (uint8(cd) >> 248) + 128 len -(uint8(cd) >> 248) + 32]
                                  if (32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128:
                                      mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(_758) >> 248) + 31 / 32:
                                          mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + (32 * idx) + 132] = mem[(32 * idx) + (32 * _16) + ceil32(return_data.size) + 128]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 132 len uint8(_758) >> 248]
                                  else:
                                      mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(_758) >> 248) + 31 / 32:
                                          mem[(32 * idx) + 100] = mem[(32 * idx) + (32 * _16) + ceil32(return_data.size) + 128]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[96 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[100 len uint8(_758) >> 248]
                                  if Mask(256, -192, cd[44]):
                                      if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                          stor0[Mask(256, -192, cd << 192] = 1
                                      else:
                                          if 1 == uint8(cd) >> 248:
                                              stor0[Mask(256, -192, cd << 192] = 1
                              else:
                                  mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                                  _762 = call.datauint8(cd) >> 248], mem[(uint8(cd) >> 248) + 96 len -(uint8(cd) >> 248) + 4], Mask(224, -160, cd << 160
                                  if ceil32(uint8(cd) >> 248) + 96:
                                      mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(_762) >> 248) + 31 / 32:
                                          mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(_762) >> 248]
                                  else:
                                      mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(_762) >> 248) + 31 / 32:
                                          mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[96 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[100 len uint8(_762) >> 248]
                                  if Mask(256, -192, cd[44]):
                                      if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                          stor0[Mask(256, -192, cd << 192] = 1
                                      else:
                                          if 1 == uint8(cd) >> 248:
                                              stor0[Mask(256, -192, cd << 192] = 1
                          else:
                              mem[(32 * _16) + ceil32(return_data.size) + 132] = caller
                              require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                              static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                                      gas gas_remaining wei
                                     args caller
                              mem[(32 * _16) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                              if not ext_call.success:
                                  revert with ext_call.return_data[0 len return_data.size]
                              require return_data.size >= 32
                              require ext_call.return_data[0]
                              if (32 * _16) + ceil32(return_data.size) + 128:
                                  mem[(32 * _16) + ceil32(return_data.size) + 128 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                                  if (32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128:
                                      mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                          mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + (32 * idx) + 132] = mem[(32 * idx) + (32 * _16) + ceil32(return_data.size) + 128]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 132 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                                  else:
                                      mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                          mem[(32 * idx) + 100] = mem[(32 * idx) + (32 * _16) + ceil32(return_data.size) + 128]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[96 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                                  if Mask(256, -192, cd[44]):
                                      if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                          stor0[Mask(256, -192, cd << 192] = 1
                                      else:
                                          if 1 == uint8(cd) >> 248:
                                              stor0[Mask(256, -192, cd << 192] = 1
                              else:
                                  mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                                  _785 = call.datauint8(cd) >> 248], mem[(uint8(cd) >> 248) + 96 len -(uint8(cd) >> 248) + 4], Mask(224, -160, cd << 160
                                  if ceil32(uint8(cd) >> 248) + 96:
                                      mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(_785) >> 248) + 31 / 32:
                                          mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(_785) >> 248]
                                  else:
                                      mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                      idx = 0
                                      while idx < (uint8(_785) >> 248) + 31 / 32:
                                          mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                          idx = idx + 1
                                          continue 
                                      delegate (addr(cd) >> 96).mem[96 len 4] with:
                                           gas gas_remaining - 22000 wei
                                          args mem[100 len uint8(_785) >> 248]
                                  if Mask(256, -192, cd[44]):
                                      if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                          stor0[Mask(256, -192, cd << 192] = 1
                                      else:
                                          if 1 == uint8(cd) >> 248:
                                              stor0[Mask(256, -192, cd << 192] = 1
                      else:
                          if stor0[Mask(256, -192, cd << 192]:
                              if Mask(256, -232, cd[60]):
                                  stor1[Mask(256, -232, cd << 232] = 0
                          else:
                              if 0x8df7df6e7b141fa45f56920c066035733361281c == caller:
                                  if (32 * _16) + ceil32(return_data.size) + 128:
                                      mem[(32 * _16) + ceil32(return_data.size) + 128 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                                      _763 = call.datauint8(cd) >> 248], mem[(32 * _16) + ceil32(return_data.size) + (uint8(cd) >> 248) + 128 len -(uint8(cd) >> 248) + 32]
                                      if (32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128:
                                          mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                          idx = 0
                                          while idx < (uint8(_763) >> 248) + 31 / 32:
                                              mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + (32 * idx) + 132] = mem[(32 * idx) + (32 * _16) + ceil32(return_data.size) + 128]
                                              idx = idx + 1
                                              continue 
                                          delegate (addr(cd) >> 96).mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128 len 4] with:
                                               gas gas_remaining - 22000 wei
                                              args mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 132 len uint8(_763) >> 248]
                                      else:
                                          mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                          idx = 0
                                          while idx < (uint8(_763) >> 248) + 31 / 32:
                                              mem[(32 * idx) + 100] = mem[(32 * idx) + (32 * _16) + ceil32(return_data.size) + 128]
                                              idx = idx + 1
                                              continue 
                                          delegate (addr(cd) >> 96).mem[96 len 4] with:
                                               gas gas_remaining - 22000 wei
                                              args mem[100 len uint8(_763) >> 248]
                                      if Mask(256, -192, cd[44]):
                                          if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                              stor0[Mask(256, -192, cd << 192] = 1
                                          else:
                                              if 1 == uint8(cd) >> 248:
                                                  stor0[Mask(256, -192, cd << 192] = 1
                                  else:
                                      mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                                      _771 = call.datauint8(cd) >> 248], mem[(uint8(cd) >> 248) + 96 len -(uint8(cd) >> 248) + 4], Mask(224, -160, cd << 160
                                      if ceil32(uint8(cd) >> 248) + 96:
                                          mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                          idx = 0
                                          while idx < (uint8(_771) >> 248) + 31 / 32:
                                              mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                              idx = idx + 1
                                              continue 
                                          delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                                               gas gas_remaining - 22000 wei
                                              args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(_771) >> 248]
                                      else:
                                          mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                          idx = 0
                                          while idx < (uint8(_771) >> 248) + 31 / 32:
                                              mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                              idx = idx + 1
                                              continue 
                                          delegate (addr(cd) >> 96).mem[96 len 4] with:
                                               gas gas_remaining - 22000 wei
                                              args mem[100 len uint8(_771) >> 248]
                                      if Mask(256, -192, cd[44]):
                                          if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                              stor0[Mask(256, -192, cd << 192] = 1
                                          else:
                                              if 1 == uint8(cd) >> 248:
                                                  stor0[Mask(256, -192, cd << 192] = 1
                              else:
                                  mem[(32 * _16) + ceil32(return_data.size) + 132] = caller
                                  require ext_code.size(0x52a03d5d2bb8a30585dfc59904c799b27a03a56e)
                                  static call 0x52a03d5d2bb8a30585dfc59904c799b27a03a56e.0xde679c7b with:
                                          gas gas_remaining wei
                                         args caller
                                  mem[(32 * _16) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                  if not ext_call.success:
                                      revert with ext_call.return_data[0 len return_data.size]
                                  require return_data.size >= 32
                                  require ext_call.return_data[0]
                                  if (32 * _16) + ceil32(return_data.size) + 128:
                                      mem[(32 * _16) + ceil32(return_data.size) + 128 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                                      if (32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128:
                                          mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                          idx = 0
                                          while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                              mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + (32 * idx) + 132] = mem[(32 * idx) + (32 * _16) + ceil32(return_data.size) + 128]
                                              idx = idx + 1
                                              continue 
                                          delegate (addr(cd) >> 96).mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 128 len 4] with:
                                               gas gas_remaining - 22000 wei
                                              args mem[(32 * _16) + ceil32(return_data.size) + ceil32(uint8(cd) >> 248) + 132 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                                      else:
                                          mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                          idx = 0
                                          while idx < (uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248) + 31 / 32:
                                              mem[(32 * idx) + 100] = mem[(32 * idx) + (32 * _16) + ceil32(return_data.size) + 128]
                                              idx = idx + 1
                                              continue 
                                          delegate (addr(cd) >> 96).mem[96 len 4] with:
                                               gas gas_remaining - 22000 wei
                                              args mem[100 len uint8(ext_call.return_data[uint8(cd) >> 248 len -(uint8(cd) >> 248) + 32]) >> 248]
                                      if Mask(256, -192, cd[44]):
                                          if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                              stor0[Mask(256, -192, cd << 192] = 1
                                          else:
                                              if 1 == uint8(cd) >> 248:
                                                  stor0[Mask(256, -192, cd << 192] = 1
                                  else:
                                      mem[96 len uint8(cd) >> 248] = call.datauint8(cd) >> 248]
                                      _794 = call.datauint8(cd) >> 248], mem[(uint8(cd) >> 248) + 96 len -(uint8(cd) >> 248) + 4], Mask(224, -160, cd << 160
                                      if ceil32(uint8(cd) >> 248) + 96:
                                          mem[ceil32(uint8(cd) >> 248) + 96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                          idx = 0
                                          while idx < (uint8(_794) >> 248) + 31 / 32:
                                              mem[ceil32(uint8(cd) >> 248) + (32 * idx) + 100] = mem[(32 * idx) + 96]
                                              idx = idx + 1
                                              continue 
                                          delegate (addr(cd) >> 96).mem[ceil32(uint8(cd) >> 248) + 96 len 4] with:
                                               gas gas_remaining - 22000 wei
                                              args mem[ceil32(uint8(cd) >> 248) + 100 len uint8(_794) >> 248]
                                      else:
                                          mem[96] = 0x7c71238700000000000000000000000000000000000000000000000000000000
                                          idx = 0
                                          while idx < (uint8(_794) >> 248) + 31 / 32:
                                              mem[(32 * idx) + 100] = mem[(32 * idx) + 96]
                                              idx = idx + 1
                                              continue 
                                          delegate (addr(cd) >> 96).mem[96 len 4] with:
                                               gas gas_remaining - 22000 wei
                                              args mem[100 len uint8(_794) >> 248]
                                      if Mask(256, -192, cd[44]):
                                          if eth.balance(this.address) < eth.balance(this.address) + 3 * 10^17:
                                              stor0[Mask(256, -192, cd << 192] = 1
                                          else:
                                              if 1 == uint8(cd) >> 248:
                                                  stor0[Mask(256, -192, cd << 192] = 1


