contract Contract {
    function main() {
        memory[0x40:0x60] = 0x60;
    
        if (!msg.data.length) {
        label_003D:
            var var0 = 0x013b;
        
            if (storage[0x00] / 0x0100 ** 0x14 & 0xff) {
                func_0060();
                stop();
            } else {
                var var1 = 0x005f;
                func_0151();
                func_0060();
                // Error: Could not resolve method call return address!
            }
        } else {
        label_000B:
            var0 = msg.data[0x00:0x20] / 0x0100000000000000000000000000000000000000000000000000000000;
        
            if (var0 != 0xa2e62045) { goto label_003D; }
        
            if (msg.value) {
            label_0002:
                memory[0x40:0x60] = var0;
            
                if (!msg.data.length) { goto label_003D; }
                else { goto label_000B; }
            } else {
                var1 = 0x014f;
                func_0151();
                stop();
            }
        }
    }
    
    function func_0060() {
        var temp0 = msg.value;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x00] = address(storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(!temp0 * 0x08fc).value(temp0)(memory[temp1:temp1 + memory[0x40:0x60] - temp1]);
    
        if (!temp2) {
        label_0002:
            memory[0x40:0x60] = returnAddress0;
        
            if (!msg.data.length) {
            label_003D:
                returnAddress0 = 0x013b;
            
                if (storage[0x00] / 0x0100 ** 0x14 & 0xff) {
                    func_0060();
                    stop();
                } else {
                    var var0 = 0x005f;
                    func_0151();
                    func_0060();
                    // Error: Could not resolve method call return address!
                }
            } else {
                returnAddress0 = msg.data[0x00:0x20] / 0x0100000000000000000000000000000000000000000000000000000000;
            
                if (returnAddress0 != 0xa2e62045) { goto label_003D; }
            
                if (msg.value) { goto label_0002; }
            
                var0 = 0x014f;
                func_0151();
                stop();
            }
        } else {
            var temp3 = memory[0x40:0x60];
            memory[temp3:temp3 + 0x20] = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp4 = memory[0x40:0x60];
            log(memory[temp4:temp4 + (temp3 + 0x20) - temp4], [0x23919512b2162ddc59b67a65e3b03c419d4105366f7d4a632f5d3c3bee9b1cff]);
            return;
        }
    }
    
    function func_0151() {
        var var0 = 0x00;
        var var1 = 0x00;
        var var2 = 0x00;
        var var3 = 0x00;
        var var4 = 0xffffffffffffffffffffffffffffffffffffffff & 0x2bd2326c993dfaef84f696526064ff22eba5b362;
        var var5 = 0x16c72721;
        memory[memory[0x40:0x60] + 0x20:memory[0x40:0x60] + 0x20 + 0x20] = 0x00;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = var5 * 0x0100000000000000000000000000000000000000000000000000000000;
        var var6 = temp0 + 0x04;
        var var7 = 0x20;
        var var8 = memory[0x40:0x60];
        var var9 = var6 - var8;
        var var10 = var8;
        var var11 = 0x00;
        var var12 = var4;
    
        if (!address(var12).code.length) {
        label_0002:
            memory[0x40:0x60] = var12;
        
            if (!msg.data.length) {
            label_003D:
                var12 = 0x013b;
            
                if (storage[0x00] / 0x0100 ** 0x14 & 0xff) {
                    func_0060();
                    stop();
                } else {
                    var var13 = 0x005f;
                    func_0151();
                    func_0060();
                    // Error: Could not resolve method call return address!
                }
            } else {
                var12 = msg.data[0x00:0x20] / 0x0100000000000000000000000000000000000000000000000000000000;
            
                if (var12 != 0xa2e62045) { goto label_003D; }
            
                if (msg.value) { goto label_0002; }
            
                var13 = 0x014f;
                func_0151();
                stop();
            }
        } else {
            var temp1;
            temp1, memory[var8:var8 + var7] = address(var12).call.gas(msg.gas - 0x32).value(var11)(memory[var10:var10 + var9]);
        
            if (!temp1) { goto label_0002; }
        
            var0 = memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x20];
            var1 = var0;
            var4 = !(storage[0x00] / 0x0100 ** 0x14 & 0xff);
        
            if (!var4) {
                if (!var4) {
                label_0245:
                
                    if (!var0) {
                    label_02DA:
                    
                        if (!var1) {
                            storage[0x00] = (storage[0x00] & ~0xffffffffffffffffffffffffffffffffffffffff) | 0xc0d332838f14ef42fcde1cf2518c427ddb676729;
                        
                        label_0365:
                            return;
                        } else {
                            storage[0x00] = (storage[0x00] & ~0xffffffffffffffffffffffffffffffffffffffff) | 0x029a6b91931c768a3762ac9b2f0b25212d13d37a;
                            goto label_0365;
                        }
                    } else {
                    label_024C:
                    
                        if (!var1) {
                            storage[0x00] = (storage[0x00] & ~0xffffffffffffffffffffffffffffffffffffffff) | 0x3b5c1ad02d408d7752ec589be440582c79c4a527;
                            goto label_0365;
                        } else {
                            storage[0x00] = (storage[0x00] & ~0xffffffffffffffffffffffffffffffffffffffff) | 0x32be343b94f860124dc4fee278fdcbd38c102d88;
                            goto label_0365;
                        }
                    }
                } else {
                label_0212:
                    var2 = msg.gas;
                    var3 = msg.gas;
                    var1 = var2 - var3 != 0x1b;
                    storage[0x00] = (storage[0x00] & ~(0xff * 0x0100 ** 0x14)) | 0x0100 ** 0x14;
                
                    if (!var0) { goto label_02DA; }
                    else { goto label_024C; }
                }
            } else if (block.number < 0x259518) { goto label_0245; }
            else { goto label_0212; }
        }
    }
}