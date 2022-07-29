# Palkeoramix decompiler. 

def storage:
  forked is uint8 at storage 0

def forked() payable: 
  return bool(forked)

#
#  Regular functions
#

def _fallback() payable: # default function
  revert 

def split() payable: 
  require call.value
  if not forked:
      call 0xb68884048cdd9f3d67a94c9586068c024d8679ca with:
         value call.value wei
           gas 0 wei
      require ext_call.success
      log 0x56b13879: call.value, caller, 0xb68884048cdd9f3d67a94c9586068c024d8679ca
  else:
      call 0x267be1c1d684f78cb4f6a176c4911b741e4ffdc0 with:
         value call.value wei
           gas 0 wei
      if ext_call.success:
          log 0x56b13879: call.value, caller, 0x267be1c1d684f78cb4f6a176c4911b741e4ffdc0
      else:
          require not forked
          call 0xb68884048cdd9f3d67a94c9586068c024d8679ca with:
             value call.value wei
               gas 0 wei
          require ext_call.success
          log 0x56b13879: call.value, caller, 0xb68884048cdd9f3d67a94c9586068c024d8679ca


