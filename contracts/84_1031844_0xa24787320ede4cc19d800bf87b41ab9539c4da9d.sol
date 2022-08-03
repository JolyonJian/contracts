contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length < 0x04) {
        label_004A:
            var var0 = 0x0052;
        
        label_0180:
            var var1 = 0x0188;
            var var2 = 0x03e4;
            var2 = func_0485();
        
            if (msg.sender != var2 & (0x01 << 0xa0) - 0x01) {
                var2 = 0x0198;
                func_0198();
                func_0198();
                // Error: Could not resolve method call return address!
            } else {
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = 0x461bcd << 0xe5;
                var temp1 = temp0 + 0x04;
                var temp2 = temp1 + 0x20;
                memory[temp1:temp1 + 0x20] = temp2 - temp1;
                memory[temp2:temp2 + 0x20] = 0x32;
                var temp3 = temp2 + 0x20;
                memory[temp3:temp3 + 0x32] = code[0x057d:0x05af];
                var temp4 = memory[0x40:0x60];
                revert(memory[temp4:temp4 + (temp3 + 0x40) - temp4]);
            }
        } else {
            var0 = msg.data[0x00:0x20] >> 0xe0;
        
            if (var0 == 0x3659cfe6) {
                // Dispatch table entry for upgradeTo(address)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0052;
                var2 = 0x04;
                var var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                var2 = msg.data[var2:var2 + 0x20] & (0x01 << 0xa0) - 0x01;
                var3 = 0x01a2;
                var3 = func_0485();
            
                if (msg.sender != var3 & (0x01 << 0xa0) - 0x01) {
                    var3 = 0x01d1;
                    goto label_0180;
                } else {
                    var3 = 0x01c4;
                    var var4 = var2;
                    func_04AA(var4);
                    // Error: Could not resolve jump destination!
                }
            } else if (var0 == 0x4f1ef286) {
                // Dispatch table entry for upgradeToAndCall(address,bytes)
                var1 = 0x0052;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x40) { revert(memory[0x00:0x00]); }
            
                upgradeToAndCall(var2, var3);
                stop();
            } else if (var0 == 0x5c60da1b) {
                // Dispatch table entry for implementation()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x011c;
                var1 = implementation();
            
            label_011C:
                var temp5 = memory[0x40:0x60];
                memory[temp5:temp5 + 0x20] = var1 & (0x01 << 0xa0) - 0x01;
                var temp6 = memory[0x40:0x60];
                return memory[temp6:temp6 + temp5 - temp6 + 0x20];
            } else if (var0 == 0x8f283970) {
                // Dispatch table entry for changeAdmin(address)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0052;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                changeAdmin(var2, var3);
                stop();
            } else if (var0 == 0xf851a440) {
                // Dispatch table entry for admin()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x011c;
                var1 = admin();
                goto label_011C;
            } else { goto label_004A; }
        }
    }
    
    function upgradeToAndCall(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & (0x01 << 0xa0) - 0x01;
        var var0 = temp0;
        arg1 = var0 + arg1;
        var var1 = var0 + 0x40;
        var var2 = msg.data[var0 + 0x20:var0 + 0x20 + 0x20];
    
        if (var2 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp1 = var0 + var2;
        var2 = temp1;
    
        if (var2 + 0x20 > arg1) { revert(memory[0x00:0x00]); }
    
        var temp2 = var2;
        var temp3 = msg.data[temp2:temp2 + 0x20];
        var2 = temp3;
        var temp4 = var1;
        var1 = temp2 + 0x20;
        var var3 = temp4;
    
        if ((var2 > 0x0100000000) | (var1 + var2 > arg1)) { revert(memory[0x00:0x00]); }
    
        arg1 = var1;
        var0 = var2;
        var1 = 0x01dc;
        var1 = func_0485();
    
        if (msg.sender != var1 & (0x01 << 0xa0) - 0x01) {
            var1 = 0x02b5;
            var2 = 0x0188;
            var3 = 0x03e4;
            var3 = func_0485();
        
            if (msg.sender != var3 & (0x01 << 0xa0) - 0x01) {
                var3 = 0x0198;
                func_0198();
                func_0198();
                // Error: Could not resolve method call return address!
            } else {
                var temp5 = memory[0x40:0x60];
                memory[temp5:temp5 + 0x20] = 0x461bcd << 0xe5;
                var temp6 = temp5 + 0x04;
                var temp7 = temp6 + 0x20;
                memory[temp6:temp6 + 0x20] = temp7 - temp6;
                memory[temp7:temp7 + 0x20] = 0x32;
                var temp8 = temp7 + 0x20;
                memory[temp8:temp8 + 0x32] = code[0x057d:0x05af];
                var temp9 = memory[0x40:0x60];
                revert(memory[temp9:temp9 + (temp8 + 0x40) - temp9]);
            }
        } else {
            var1 = 0x01fe;
            var2 = arg0;
            func_04AA(var2);
            var1 = 0x00;
            var temp10 = var0;
            var temp11 = memory[0x40:0x60];
            memory[temp11:temp11 + temp10] = msg.data[arg1:arg1 + temp10];
            var temp12 = memory[0x40:0x60];
            var temp13;
            temp13, memory[temp12:temp12 + 0x00] = address(arg0 & (0x01 << 0xa0) - 0x01).delegatecall.gas(msg.gas)(memory[temp12:temp12 + (temp11 + temp10) - temp12]);
            var3 = returndata.length;
            var var4 = var3;
        
            if (var4 == 0x00) {
                var1 = var2;
            
                if (var1) {
                label_02A7:
                    return;
                } else {
                label_026A:
                    var temp14 = memory[0x40:0x60];
                    memory[temp14:temp14 + 0x20] = 0x461bcd << 0xe5;
                    memory[temp14 + 0x04:temp14 + 0x04 + 0x20] = 0x20;
                    memory[temp14 + 0x24:temp14 + 0x24 + 0x20] = 0x0e;
                    memory[temp14 + 0x44:temp14 + 0x44 + 0x20] = 0x1d5c19dc9859194819985a5b1959 << 0x92;
                    var temp15 = memory[0x40:0x60];
                    revert(memory[temp15:temp15 + temp14 - temp15 + 0x64]);
                }
            } else {
                var temp16 = memory[0x40:0x60];
                var3 = temp16;
                memory[0x40:0x60] = var3 + (returndata.length + 0x3f & ~0x1f);
                memory[var3:var3 + 0x20] = returndata.length;
                var temp17 = returndata.length;
                memory[var3 + 0x20:var3 + 0x20 + temp17] = returndata[0x00:0x00 + temp17];
                var1 = var2;
            
                if (var1) { goto label_02A7; }
                else { goto label_026A; }
            }
        }
    }
    
    function changeAdmin(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20] & (0x01 << 0xa0) - 0x01;
        arg1 = 0x02ff;
        arg1 = func_0485();
    
        if (msg.sender != arg1 & (0x01 << 0xa0) - 0x01) {
            arg1 = 0x01d1;
            var var0 = 0x0188;
            var var1 = 0x03e4;
            var1 = func_0485();
        
            if (msg.sender != var1 & (0x01 << 0xa0) - 0x01) {
                var1 = 0x0198;
                func_0198();
                func_0198();
                // Error: Could not resolve method call return address!
            } else {
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = 0x461bcd << 0xe5;
                var temp1 = temp0 + 0x04;
                var temp2 = temp1 + 0x20;
                memory[temp1:temp1 + 0x20] = temp2 - temp1;
                memory[temp2:temp2 + 0x20] = 0x32;
                var temp3 = temp2 + 0x20;
                memory[temp3:temp3 + 0x32] = code[0x057d:0x05af];
                var temp4 = memory[0x40:0x60];
                revert(memory[temp4:temp4 + (temp3 + 0x40) - temp4]);
            }
        } else if (arg0 & (0x01 << 0xa0) - 0x01) {
            arg1 = 0x7e644d79422f17c01e4894b5f4f588d331ebfa28653d42ae832dc59e38c9798f;
            var0 = 0x0386;
            var0 = func_0485();
            var temp5 = memory[0x40:0x60];
            var temp6 = (0x01 << 0xa0) - 0x01;
            memory[temp5:temp5 + 0x20] = temp6 & var0;
            memory[temp5 + 0x20:temp5 + 0x20 + 0x20] = arg0 & temp6;
            var temp7 = memory[0x40:0x60];
            log(memory[temp7:temp7 + temp5 - temp7 + 0x40], [stack[-2]]);
            arg1 = 0x01c4;
            var0 = arg0;
            func_04EA(var0);
            return;
        } else {
            var temp8 = memory[0x40:0x60];
            memory[temp8:temp8 + 0x20] = 0x461bcd << 0xe5;
            var temp9 = temp8 + 0x04;
            var temp10 = temp9 + 0x20;
            memory[temp9:temp9 + 0x20] = temp10 - temp9;
            memory[temp10:temp10 + 0x20] = 0x36;
            var temp11 = temp10 + 0x20;
            memory[temp11:temp11 + 0x36] = code[0x05af:0x05e5];
            var temp12 = memory[0x40:0x60];
            revert(memory[temp12:temp12 + (temp11 + 0x40) - temp12]);
        }
    }
    
    function func_0198() {}
    
    function implementation() returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x02c4;
        var1 = func_0485();
    
        if (msg.sender != var1 & (0x01 << 0xa0) - 0x01) {
            var1 = 0x02f4;
            var var2 = 0x0188;
            var var3 = 0x03e4;
            var3 = func_0485();
        
            if (msg.sender != var3 & (0x01 << 0xa0) - 0x01) {
                var3 = 0x0198;
                func_0198();
                func_0198();
                // Error: Could not resolve method call return address!
            } else {
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = 0x461bcd << 0xe5;
                var temp1 = temp0 + 0x04;
                var temp2 = temp1 + 0x20;
                memory[temp1:temp1 + 0x20] = temp2 - temp1;
                memory[temp2:temp2 + 0x20] = 0x32;
                var temp3 = temp2 + 0x20;
                memory[temp3:temp3 + 0x32] = code[0x057d:0x05af];
                var temp4 = memory[0x40:0x60];
                revert(memory[temp4:temp4 + (temp3 + 0x40) - temp4]);
            }
        } else {
            var1 = 0x02e5;
            return func_043C();
        }
    }
    
    function admin() returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x03bb;
        var1 = func_0485();
    
        if (msg.sender != var1 & (0x01 << 0xa0) - 0x01) {
            var1 = 0x02f4;
            var var2 = 0x0188;
            var var3 = 0x03e4;
            var3 = func_0485();
        
            if (msg.sender != var3 & (0x01 << 0xa0) - 0x01) {
                var3 = 0x0198;
                func_0198();
                func_0198();
                // Error: Could not resolve method call return address!
            } else {
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = 0x461bcd << 0xe5;
                var temp1 = temp0 + 0x04;
                var temp2 = temp1 + 0x20;
                memory[temp1:temp1 + 0x20] = temp2 - temp1;
                memory[temp2:temp2 + 0x20] = 0x32;
                var temp3 = temp2 + 0x20;
                memory[temp3:temp3 + 0x32] = code[0x057d:0x05af];
                var temp4 = memory[0x40:0x60];
                revert(memory[temp4:temp4 + (temp3 + 0x40) - temp4]);
            }
        } else {
            var1 = 0x02e5;
            return func_0485();
        }
    }
    
    function func_043C() returns (var r0) { return storage[0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc]; }
    
    function func_0485() returns (var r0) { return storage[0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103]; }
    
    function func_04AA(var arg0) {
        var var0 = 0x04b3;
        var var1 = arg0;
        func_050E(var1);
        log(memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x00], [0xbc7cd75a20ee27fd9adebab32041f755214dbc6bffa90cc0225b39da2e5c2d3b, stack[-1] & (0x01 << 0xa0) - 0x01]);
    }
    
    function func_04EA(var arg0) {
        storage[0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103] = arg0;
    }
    
    function func_050E(var arg0) {
        var var0 = 0x0517;
        var var1 = arg0;
        var0 = func_0576(var1);
    
        if (var0) {
            storage[0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc] = arg0;
            return;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0x461bcd << 0xe5;
            var temp1 = temp0 + 0x04;
            var temp2 = temp1 + 0x20;
            memory[temp1:temp1 + 0x20] = temp2 - temp1;
            memory[temp2:temp2 + 0x20] = 0x3b;
            var temp3 = temp2 + 0x20;
            memory[temp3:temp3 + 0x3b] = code[0x05e5:0x0620];
            var temp4 = memory[0x40:0x60];
            revert(memory[temp4:temp4 + (temp3 + 0x40) - temp4]);
        }
    }
    
    function func_0576(var arg0) returns (var r0) { return !!address(arg0).code.length; }
}