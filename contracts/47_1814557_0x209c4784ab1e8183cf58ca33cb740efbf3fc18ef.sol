# Palkeoramix decompiler. 

def storage:
  stor0 is uint8 at storage 0 offset 160
  stor0 is addr at storage 0

def update(): # not payable
  require ext_code.size(0x2bd2326c993dfaef84f696526064ff22eba5b362)
  call 0x2bd2326c993dfaef84f696526064ff22eba5b362.forked() with:
       gas gas_remaining - 50 wei
  require ext_call.success
  if uint8(stor0.field_160):
      if not ext_call.return_data[0]:
          addr(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
      else:
          addr(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
  else:
      if block.number < 2463000:
          if not ext_call.return_data[0]:
              addr(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
          else:
              addr(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
      else:
          uint8(stor0.field_160) = 1
          if not ext_call.return_data[0]:
              addr(stor0.field_0) = 0x29a6b91931c768a3762ac9b2f0b25212d13d37a
          else:
              addr(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88

def _fallback() payable: # default function
  if not uint8(stor0.field_160):
      require ext_code.size(0x2bd2326c993dfaef84f696526064ff22eba5b362)
      call 0x2bd2326c993dfaef84f696526064ff22eba5b362.forked() with:
           gas gas_remaining - 50 wei
      require ext_call.success
      if uint8(stor0.field_160):
          if not ext_call.return_data[0]:
              addr(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
          else:
              addr(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
      else:
          if block.number < 2463000:
              if not ext_call.return_data[0]:
                  addr(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
              else:
                  addr(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
          else:
              uint8(stor0.field_160) = 1
              if not ext_call.return_data[0]:
                  addr(stor0.field_0) = 0x29a6b91931c768a3762ac9b2f0b25212d13d37a
              else:
                  addr(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
  call addr(stor0.field_0) with:
     value call.value wei
       gas 2300 * is_zero(value) wei
  require ext_call.success
  log e(address a=addr(stor0.field_0))


