contract Contract {
    function main() {
        memory[0x40:0x60] = 0x60;
    
        if (msg.data.length) { goto label_000B; }
    
    label_002A:
        var var0 = 0x0050;
    
    label_0002:
        memory[0x40:0x60] = var0;
    
        if (!msg.data.length) { goto label_002A; }
    
    label_000B:
        var0 = msg.data[0x00:0x20] / 0x02 ** 0xe0;
    
        if (var0 == 0x16c72721) {
            // Dispatch table entry for forked()
            var var1 = 0x00f0;
            var var2 = storage[0x00] & 0xff;
            memory[0x60:0x80] = !!var2;
            return memory[0x60:0x80];
        } else if (var0 == 0xf7654176) {
            // Dispatch table entry for split()
            var1 = 0x0050;
        
            if (msg.value == 0x00) { goto label_0002; }
        
            split();
            stop();
        } else { goto label_002A; }
    }
    
    function split() {
        var var0 = storage[0x00] & 0xff;
    
        if (var0) {
            var temp6;
            temp6, memory[0x60:0x60] = address(0x267be1c1d684f78cb4f6a176c4911b741e4ffdc0).call.gas(0x00).value(msg.value)(memory[0x60:0x60]);
        
            if (!temp6) { goto label_00FC; }
            else { goto label_008D; }
        } else if (!var0) {
        label_00FC:
            var0 = !(storage[0x00] & 0xff);
        
            if (var0) {
                var temp2 = memory[0x40:0x60];
                var temp3;
                temp3, memory[temp2:temp2 + 0x00] = address(0xb68884048cdd9f3d67a94c9586068c024d8679ca).call.gas(0x00).value(msg.value)(memory[temp2:temp2 + 0x00]);
            
                if (!temp3) { goto label_002E; }
                else { goto label_013C; }
            } else if (!var0) {
            label_002E:
            
            label_0002:
                memory[0x40:0x60] = returnAddress0;
            
                if (!msg.data.length) {
                label_002A:
                    returnAddress0 = 0x0050;
                    goto label_0002;
                } else {
                    returnAddress0 = msg.data[0x00:0x20] / 0x02 ** 0xe0;
                
                    if (returnAddress0 == 0x16c72721) {
                        var0 = 0x00f0;
                        var var1 = storage[0x00] & 0xff;
                        memory[0x60:0x80] = !!var1;
                        return memory[0x60:0x80];
                    } else if (returnAddress0 == 0xf7654176) {
                        var0 = 0x0050;
                    
                        if (msg.value == 0x00) { goto label_0002; }
                    
                        split();
                        stop();
                    } else { goto label_002A; }
                }
            } else {
            label_013C:
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = msg.value;
                var temp1 = memory[0x40:0x60];
                log(memory[temp1:temp1 + temp0 - temp1 + 0x20], [0x56b138798bd325f6cc79f626c4644aa2fd6703ecb0ab0fb168f883caed75bf32, msg.sender, 0xb68884048cdd9f3d67a94c9586068c024d8679ca]);
                return;
            }
        } else {
        label_008D:
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = msg.value;
            var temp5 = memory[0x40:0x60];
            log(memory[temp5:temp5 + temp4 - temp5 + 0x20], [0x56b138798bd325f6cc79f626c4644aa2fd6703ecb0ab0fb168f883caed75bf32, msg.sender, 0x267be1c1d684f78cb4f6a176c4911b741e4ffdc0]);
            return;
        }
    }
}

D