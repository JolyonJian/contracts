contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length >= 0x04) {
            var var0 = msg.data[0x00:0x20] >> 0xe0;
        
            if (var0 == 0x2b68b9c6) {
                // Dispatch table entry for destruct()
                var var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0077;
            
                if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) { selfdestruct(msg.sender); }
            
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                var temp1 = temp0 + 0x04;
                var temp2 = temp1 + 0x20;
                memory[temp1:temp1 + 0x20] = temp2 - temp1;
                memory[temp2:temp2 + 0x20] = 0x09;
                var temp3 = temp2 + 0x20;
                memory[temp3:temp3 + 0x20] = 0x6e6f74206f776e65720000000000000000000000000000000000000000000000;
                var temp4 = memory[0x40:0x60];
                revert(memory[temp4:temp4 + (temp3 + 0x20) - temp4]);
            } else if (var0 == 0x377e11e0) {
                // Dispatch table entry for removeAdmins(address[])
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00fd;
                var var2 = 0x04;
                var var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                removeAdmins(var2, var3);
                stop();
            } else if (var0 == 0x42841531) {
                // Dispatch table entry for withdrawMulti(address[],uint256[])
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x01d8;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x40) { revert(memory[0x00:0x00]); }
            
                withdrawMulti(var2, var3);
                stop();
            } else if (var0 == 0x9c54df64) {
                // Dispatch table entry for addAdmins(address[])
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x025e;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                addAdmins(var2, var3);
                stop();
            } else if (var0 == 0xc89e4361) {
                // Dispatch table entry for delegate()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0275;
                var2 = msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
            
                if (!var2) {
                    memory[0x00:0x20] = msg.sender;
                    memory[0x20:0x40] = 0x01;
                
                    if (storage[keccak256(memory[0x00:0x40])] & 0xff) { goto label_08FD; }
                    else { goto label_0890; }
                } else if (var2) {
                label_08FD:
                    var2 = msg.data[0x04:0x24] / 0x01000000000000000000000000;
                    var temp5 = msg.data.length - 0x18;
                    var3 = temp5;
                    memory[0x00:0x00 + var3] = msg.data[0x18:0x18 + var3];
                    var temp6;
                    temp6, memory[0x00:0x00] = address(var2).delegatecall.gas(msg.gas)(memory[0x00:0x00 + var3]);
                
                    if (temp6) { return memory[0x00:0x00]; }
                    else { revert(memory[0x00:0x00]); }
                } else {
                label_0890:
                    var temp7 = memory[0x40:0x60];
                    memory[temp7:temp7 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var temp8 = temp7 + 0x04;
                    var temp9 = temp8 + 0x20;
                    memory[temp8:temp8 + 0x20] = temp9 - temp8;
                    memory[temp9:temp9 + 0x20] = 0x09;
                    var temp10 = temp9 + 0x20;
                    memory[temp10:temp10 + 0x20] = 0x6e6f742061646d696e0000000000000000000000000000000000000000000000;
                    var temp11 = memory[0x40:0x60];
                    revert(memory[temp11:temp11 + (temp10 + 0x20) - temp11]);
                }
            } else if (var0 == 0xf3fef3a3) {
                // Dispatch table entry for withdraw(address,uint256)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02d0;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x40) { revert(memory[0x00:0x00]); }
            
                withdraw(var2, var3);
                stop();
            } else { stop(); }
        } else if (msg.data.length) { stop(); }
        else { stop(); }
    }
    
    function removeAdmins(var arg0, var arg1) {
        var temp0 = arg0;
        var temp1 = temp0 + arg1;
        arg1 = temp0;
        arg0 = temp1;
        var var1 = msg.data[arg1:arg1 + 0x20];
        var var0 = arg1 + 0x20;
    
        if (var1 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp2 = arg1 + var1;
        var1 = temp2;
    
        if (var1 + 0x20 > arg0) { revert(memory[0x00:0x00]); }
    
        var temp3 = var1;
        var temp4 = msg.data[temp3:temp3 + 0x20];
        var1 = temp4;
        var temp5 = var0;
        var0 = temp3 + 0x20;
        var var2 = temp5;
    
        if ((var1 > 0x0100000000) | (var0 + var1 * 0x20 > arg0)) { revert(memory[0x00:0x00]); }
    
        arg1 = var1;
        arg0 = var0;
    
        if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var0 = 0x00;
        
            if (var0 >= arg1) {
            label_0504:
                return;
            } else {
            label_0481:
                var1 = 0x01;
                var2 = 0x00;
                var var3 = arg0;
                var var4 = arg1;
                var var5 = var0;
            
                if (var5 >= var4) { assert(); }
            
                var temp6 = var2;
                memory[temp6:temp6 + 0x20] = msg.data[var5 * 0x20 + var3:var5 * 0x20 + var3 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                var temp7 = temp6 + 0x20;
                memory[temp7:temp7 + 0x20] = var1;
                var temp8 = keccak256(memory[0x00:0x00 + temp7 + 0x20]);
                storage[temp8] = storage[temp8] & ~0xff;
                var0 = var0 + 0x01;
            
                if (var0 >= arg1) { goto label_0504; }
                else { goto label_0481; }
            }
        } else {
            var temp9 = memory[0x40:0x60];
            memory[temp9:temp9 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp10 = temp9 + 0x04;
            var temp11 = temp10 + 0x20;
            memory[temp10:temp10 + 0x20] = temp11 - temp10;
            memory[temp11:temp11 + 0x20] = 0x09;
            var temp12 = temp11 + 0x20;
            memory[temp12:temp12 + 0x20] = 0x6e6f74206f776e65720000000000000000000000000000000000000000000000;
            var temp13 = memory[0x40:0x60];
            revert(memory[temp13:temp13 + (temp12 + 0x20) - temp13]);
        }
    }
    
    function withdrawMulti(var arg0, var arg1) {
        var temp0 = arg0;
        var temp1 = temp0 + arg1;
        arg1 = temp0;
        arg0 = temp1;
        var var0 = arg1 + 0x20;
        var var1 = msg.data[arg1:arg1 + 0x20];
    
        if (var1 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp2 = arg1 + var1;
        var1 = temp2;
    
        if (var1 + 0x20 > arg0) { revert(memory[0x00:0x00]); }
    
        var temp3 = var1;
        var temp4 = msg.data[temp3:temp3 + 0x20];
        var1 = temp4;
        var var2 = var0;
        var0 = temp3 + 0x20;
    
        if ((var1 > 0x0100000000) | (var0 + var1 * 0x20 > arg0)) { revert(memory[0x00:0x00]); }
    
        var temp5 = var2;
        var temp6 = var0;
        var temp7 = arg1;
        var0 = arg0;
        arg1 = var1;
        arg0 = temp6;
        var1 = temp7;
        var2 = temp5 + 0x20;
        var var3 = msg.data[temp5:temp5 + 0x20];
    
        if (var3 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp8 = var1 + var3;
        var3 = temp8;
    
        if (var3 + 0x20 > var0) { revert(memory[0x00:0x00]); }
    
        var temp9 = var3;
        var temp10 = msg.data[temp9:temp9 + 0x20];
        var3 = temp10;
        var var4 = var2;
        var2 = temp9 + 0x20;
    
        if ((var3 > 0x0100000000) | (var2 + var3 * 0x20 > var0)) { revert(memory[0x00:0x00]); }
    
        var1 = var3;
        var0 = var2;
    
        if (msg.sender != storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var temp15 = memory[0x40:0x60];
            memory[temp15:temp15 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp16 = temp15 + 0x04;
            var temp17 = temp16 + 0x20;
            memory[temp16:temp16 + 0x20] = temp17 - temp16;
            memory[temp17:temp17 + 0x20] = 0x09;
            var temp18 = temp17 + 0x20;
            memory[temp18:temp18 + 0x20] = 0x6e6f74206f776e65720000000000000000000000000000000000000000000000;
            var temp19 = memory[0x40:0x60];
            revert(memory[temp19:temp19 + (temp18 + 0x20) - temp19]);
        } else if (arg1 == var1) {
            var2 = 0x00;
        
            if (var2 >= arg1) {
            label_067C:
                return;
            } else {
            label_05EF:
                var3 = arg0;
                var4 = arg1;
                var var5 = var2;
            
                if (var5 >= var4) { assert(); }
            
                var3 = msg.data[var5 * 0x20 + var3:var5 * 0x20 + var3 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                var4 = 0x08fc;
                var5 = var0;
                var var6 = var1;
                var var7 = var2;
            
                if (var7 >= var6) { assert(); }
            
                var temp11 = msg.data[var7 * 0x20 + var5:var7 * 0x20 + var5 + 0x20];
                var temp12 = memory[0x40:0x60];
                var temp13;
                temp13, memory[temp12:temp12 + 0x00] = address(var3).call.gas(!temp11 * var4).value(temp11)(memory[temp12:temp12 + memory[0x40:0x60] - temp12]);
                var3 = !temp13;
            
                if (!var3) {
                    var2 = var2 + 0x01;
                
                    if (var2 >= arg1) { goto label_067C; }
                    else { goto label_05EF; }
                } else {
                    var temp14 = returndata.length;
                    memory[0x00:0x00 + temp14] = returndata[0x00:0x00 + temp14];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            }
        } else { revert(memory[0x00:0x00]); }
    }
    
    function addAdmins(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = temp0 + arg1;
        arg1 = temp0;
        var var1 = msg.data[arg1:arg1 + 0x20];
        var var0 = arg1 + 0x20;
    
        if (var1 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp1 = arg1 + var1;
        var1 = temp1;
    
        if (var1 + 0x20 > arg0) { revert(memory[0x00:0x00]); }
    
        var temp2 = var1;
        var temp3 = msg.data[temp2:temp2 + 0x20];
        var1 = temp3;
        var var2 = var0;
        var0 = temp2 + 0x20;
    
        if ((var1 > 0x0100000000) | (var0 + var1 * 0x20 > arg0)) { revert(memory[0x00:0x00]); }
    
        arg1 = var1;
        arg0 = var0;
    
        if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var0 = 0x00;
        
            if (var0 >= arg1) {
            label_07E2:
                return;
            } else {
            label_0757:
                var1 = 0x01;
                var2 = var1;
                var var3 = 0x00;
                var var4 = arg0;
                var var5 = arg1;
                var var6 = var0;
            
                if (var6 >= var5) { assert(); }
            
                var temp4 = var3;
                memory[temp4:temp4 + 0x20] = msg.data[var6 * 0x20 + var4:var6 * 0x20 + var4 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                var temp5 = temp4 + 0x20;
                memory[temp5:temp5 + 0x20] = var2;
                var temp6 = keccak256(memory[0x00:0x00 + temp5 + 0x20]);
                storage[temp6] = !!var1 | (storage[temp6] & ~0xff);
                var0 = var0 + 0x01;
            
                if (var0 >= arg1) { goto label_07E2; }
                else { goto label_0757; }
            }
        } else {
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp8 = temp7 + 0x04;
            var temp9 = temp8 + 0x20;
            memory[temp8:temp8 + 0x20] = temp9 - temp8;
            memory[temp9:temp9 + 0x20] = 0x09;
            var temp10 = temp9 + 0x20;
            memory[temp10:temp10 + 0x20] = 0x6e6f74206f776e65720000000000000000000000000000000000000000000000;
            var temp11 = memory[0x40:0x60];
            revert(memory[temp11:temp11 + (temp10 + 0x20) - temp11]);
        }
    }
    
    function withdraw(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
    
        if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var temp1 = arg1;
            var temp2 = memory[0x40:0x60];
            var temp3;
            temp3, memory[temp2:temp2 + 0x00] = address(arg0 & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(!temp1 * 0x08fc).value(temp1)(memory[temp2:temp2 + memory[0x40:0x60] - temp2]);
            var var0 = !temp3;
        
            if (!var0) { return; }
        
            var temp4 = returndata.length;
            memory[0x00:0x00 + temp4] = returndata[0x00:0x00 + temp4];
            revert(memory[0x00:0x00 + returndata.length]);
        } else {
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp6 = temp5 + 0x04;
            var temp7 = temp6 + 0x20;
            memory[temp6:temp6 + 0x20] = temp7 - temp6;
            memory[temp7:temp7 + 0x20] = 0x09;
            var temp8 = temp7 + 0x20;
            memory[temp8:temp8 + 0x20] = 0x6e6f74206f776e65720000000000000000000000000000000000000000000000;
            var temp9 = memory[0x40:0x60];
            revert(memory[temp9:temp9 + (temp8 + 0x20) - temp9]);
        }
    }
}

