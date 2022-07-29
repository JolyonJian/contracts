# Palkeoramix decompiler. 

def storage:
  owner is addr at storage 0

def owner(): # not payable
  return owner

#
#  Regular functions
#

def _fallback() payable: # default function
  stop

def transfer(address _addr) payable: 
  call _addr with:
     value call.value wei
       gas 2300 * is_zero(value) wei
  require ext_call.success

def withdrawEther(): # not payable
  require caller == owner
  call owner with:
     value eth.balance(this.address) wei
       gas 2300 * is_zero(value) wei
  require ext_call.success


