contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length < 0x04) {
        label_0103:
            var var0 = 0x010c;
            var var1 = msg.sender;
            var0 = func_0412(var1);
        
            if (!var0) { revert(memory[0x00:0x00]); }
        
            var0 = 0x0126;
            var1 = 0x00;
            var var2 = var1;
            var var3 = 0x01;
            var var4 = 0x0c;
            func_0417(var1, var2, var3, var4);
            stop();
        } else {
            var0 = msg.data[0x00:0x20] / 0x02 ** 0xe0 & 0xffffffff;
        
            if (var0 == 0x083e2eae) {
                // Dispatch table entry for 0x083e2eae (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x013d;
                var1 = func_04AE();
            
            label_013D:
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = var1;
                var temp1 = memory[0x40:0x60];
                return memory[temp1:temp1 + temp0 - temp1 + 0x20];
            } else if (var0 == 0x0ab852e0) {
                // Dispatch table entry for 0x0ab852e0 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x013d;
                var1 = func_0506();
                goto label_013D;
            } else if (var0 == 0x1aea6257) {
                // Dispatch table entry for isAdministrator()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0179;
                var1 = isAdministrator();
            
            label_0179:
                var temp2 = memory[0x40:0x60];
                memory[temp2:temp2 + 0x20] = !!var1;
                var temp3 = memory[0x40:0x60];
                return memory[temp3:temp3 + temp2 - temp3 + 0x20];
            } else if (var0 == 0x1c902304) {
                // Dispatch table entry for 0x1c902304 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0126;
                var2 = msg.data[0x04:0x24];
                func_0570(var2);
                stop();
            } else if (var0 == 0x29675f29) {
                // Dispatch table entry for buy(uint256,uint256,bool,uint256)
                var1 = 0x0126;
                var2 = msg.data[0x04:0x24];
                var3 = msg.data[0x24:0x44];
                var4 = !!msg.data[0x44:0x64];
                var var5 = msg.data[0x64:0x84];
                buy(var2, var3, var4, var5);
                stop();
            } else if (var0 == 0x304f964a) {
                // Dispatch table entry for 0x304f964a (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0126;
                var2 = msg.data[0x04:0x24];
                var3 = msg.data[0x24:0x44];
                var4 = msg.data[0x44:0x64];
                func_0791(var2, var3, var4);
                stop();
            } else if (var0 == 0x4051ddac) {
                // Dispatch table entry for getSummary()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x01ee;
                var var6;
                var1, var2, var3, var4, var5, var6 = getSummary();
                var temp4 = memory[0x40:0x60];
                memory[temp4:temp4 + 0x20] = var1;
                memory[temp4 + 0x20:temp4 + 0x20 + 0x20] = var2;
                memory[temp4 + 0x40:temp4 + 0x40 + 0x20] = var3;
                memory[temp4 + 0x60:temp4 + 0x60 + 0x20] = var4;
                memory[temp4 + 0x80:temp4 + 0x80 + 0x20] = var5;
                memory[temp4 + 0xa0:temp4 + 0xa0 + 0x20] = var6;
                var temp5 = memory[0x40:0x60];
                return memory[temp5:temp5 + temp4 - temp5 + 0xc0];
            } else if (var0 == 0x51cff8d9) {
                // Dispatch table entry for withdraw(address)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0126;
                var2 = msg.data[0x04:0x24] & 0x02 ** 0xa0 - 0x01;
                withdraw(var2);
                stop();
            } else if (var0 == 0x5a12580d) {
                // Dispatch table entry for 0x5a12580d (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0260;
                var2 = msg.data[0x04:0x24];
                var3 = msg.data[0x24:0x44];
                var4 = msg.data[0x44:0x64];
                var5 = 0x0c85;
                var5 = func_3B18();
                var6 = 0x0c8d;
                var6 = func_3B38();
                var var7 = 0x0c95;
                var temp6 = memory[0x40:0x60];
                var var8 = temp6;
                memory[0x40:0x60] = var8 + 0x0120;
                var var9 = var8;
                var var10 = 0x3b82;
                var10 = func_3DF5();
                var temp7 = var9;
                memory[temp7:temp7 + 0x20] = var10;
                var9 = temp7 + 0x20;
                var10 = 0x3b8f;
                var10 = func_3DF5();
                var temp8 = var9;
                memory[temp8:temp8 + 0x20] = var10;
                var9 = temp8 + 0x20;
                var10 = 0x3b68;
                var10 = func_3DF5();
                memory[var9:var9 + 0x20] = var10;
                var7 = var8;
                // Error: Could not resolve jump destination!
            } else if (var0 == 0x89135ae9) {
                // Dispatch table entry for setAdministrator(bytes32,bool)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0126;
                var2 = msg.data[0x04:0x24];
                var3 = !!msg.data[0x24:0x44];
                setAdministrator(var2, var3);
                stop();
            } else if (var0 == 0x96ca14b1) {
                // Dispatch table entry for 0x96ca14b1 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02cb;
                var1, var2, var3 = func_1017();
                var temp9 = memory[0x40:0x60];
                memory[temp9:temp9 + 0x20] = var1;
                memory[temp9 + 0x20:temp9 + 0x20 + 0x20] = var2;
                memory[temp9 + 0x40:temp9 + 0x40 + 0x20] = var3;
                var temp10 = memory[0x40:0x60];
                return memory[temp10:temp10 + temp9 - temp10 + 0x60];
            } else if (var0 == 0x9933e215) {
                // Dispatch table entry for 0x9933e215 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02fe;
                var1 = func_103F();
                var temp11 = memory[0x40:0x60];
                var2 = temp11;
                memory[var2:var2 + 0x20] = memory[var1:var1 + 0x20];
                var3 = var2;
                var4 = var1;
                var5 = 0x0300;
                var6 = var5;
                var7 = var3;
                var8 = var4;
                var9 = 0x20;
            
            label_026E:
            
                if (var9 >= var6) {
                    var temp12 = memory[0x40:0x60];
                    return memory[temp12:temp12 + (var5 + var3) - temp12];
                } else {
                    var temp13 = var9;
                    memory[temp13 + var7:temp13 + var7 + 0x20] = memory[temp13 + var8:temp13 + var8 + 0x20];
                    var9 = temp13 + 0x20;
                    goto label_026E;
                }
            } else if (var0 == 0xbb0dc0d3) {
                // Dispatch table entry for 0xbb0dc0d3 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x013d;
                var2 = msg.data[0x04:0x24];
                var2 = func_12CF(var2);
                goto label_013D;
            } else if (var0 == 0xbb8239dd) {
                // Dispatch table entry for 0xbb8239dd (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0126;
                func_12E1();
                stop();
            } else if (var0 == 0xc04c5947) {
                // Dispatch table entry for getGames()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0356;
                var1 = getGames();
                var temp14 = memory[0x40:0x60];
                var2 = temp14;
                memory[var2:var2 + 0x20] = memory[var1:var1 + 0x20];
                var3 = var2;
                var4 = var1;
                var5 = 0x01a0;
                var6 = var5;
                var7 = var3;
                var8 = var4;
                var9 = 0x20;
                goto label_026E;
            } else if (var0 == 0xca5dbdb8) {
                // Dispatch table entry for 0xca5dbdb8 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x013d;
                var2 = msg.data[0x04:0x24];
                var1 = func_1549(var2);
                goto label_013D;
            } else if (var0 == 0xcacfdb88) {
                // Dispatch table entry for getFinished()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0399;
                var1 = getFinished();
                var temp15 = memory[0x40:0x60];
                var2 = temp15;
                memory[var2:var2 + 0x20] = memory[var1:var1 + 0x20];
                var3 = var2;
                var4 = var1;
                var5 = 0x0180;
                var6 = var5;
                var7 = var3;
                var8 = var4;
                var9 = 0x20;
                goto label_026E;
            } else if (var0 == 0xd2c68ff1) {
                // Dispatch table entry for 0xd2c68ff1 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0179;
                var1 = func_15DB();
                goto label_0179;
            } else if (var0 == 0xe5ed1d59) {
                // Dispatch table entry for startGame(uint256)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0126;
                var2 = msg.data[0x04:0x24];
                startGame(var2);
                stop();
            } else if (var0 == 0xf2fde38b) {
                // Dispatch table entry for transferOwnership(address)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0126;
                var2 = msg.data[0x04:0x24] & 0x02 ** 0xa0 - 0x01;
                transferOwnership(var2);
                stop();
            } else if (var0 == 0xf8704355) {
                // Dispatch table entry for 0xf8704355 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0179;
                var1 = func_18DF();
                goto label_0179;
            } else { goto label_0103; }
        }
    }
    
    function func_0412(var arg0) returns (var r0) { return !address(arg0).code.length; }
    
    function func_0417(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x041f;
        var0 = func_3A4B();
    
        if (tx.gasprice > 0x06fc23ac00) { revert(memory[0x00:0x00]); }
    
        var var1 = 0x0439;
        var1 = func_190F();
        var temp0 = arg0 + var1;
        arg0 = temp0;
    
        if (arg0 < 0x2386f26fc10000) { goto label_04A7; }
    
        var1 = 0x045b;
        var var2 = arg1;
        var var3 = arg2;
        var1 = func_19A7(var2, var3);
        var temp1 = var1;
        var0 = temp1;
        var1 = 0x0467;
        var2 = arg0;
        var3 = var0;
        var1 = func_1BC5(var2, var3);
        arg0 = var1;
    
        if (arg0 <= 0x00) {
        label_04A7:
            return;
        } else {
            var1 = 0x047b;
            var2 = arg0;
            func_24F7(var2);
            var1 = arg3 < 0x0c;
        
            if (!var1) {
                if (!var1) { goto label_04A7; }
            
            label_0494:
                var1 = 0x04a7;
                var2 = arg3;
                var3 = memory[var0 + 0x40:var0 + 0x40 + 0x20] & 0xffffffff;
                func_25B0(var2, var3);
                goto label_04A7;
            } else if (msg.gas < 0x0f4240) { goto label_04A7; }
            else { goto label_0494; }
        }
    }
    
    function func_04AE() returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (msg.sender != 0x573aaaa81154cd24e96f0cb97fd86110b8f6767f) { revert(memory[0x00:0x00]); }
    
        var temp0 = memory[0x00:0x20];
        memory[0x00:0x20] = code[0x3e85:0x3ea5];
        var temp1 = memory[0x00:0x20];
        memory[0x00:0x20] = temp0;
        memory[0x00:0x20] = temp1;
        memory[0x20:0x40] = 0x33;
        var temp2 = memory[0x00:0x20];
        memory[0x00:0x20] = code[0x3e65:0x3e85];
        var temp3 = memory[0x00:0x20];
        memory[0x00:0x20] = temp2;
        var temp4 = storage[temp3];
        storage[temp3] = 0x00;
        return temp4;
    }
    
    function func_0502(var arg0, var arg1) returns (var r0) { return arg0; }
    
    function func_0506() returns (var r0) {
        var temp0 = memory[0x00:0x20];
        memory[0x00:0x20] = code[0x3e85:0x3ea5];
        var temp1 = memory[0x00:0x20];
        memory[0x00:0x20] = temp0;
        memory[0x00:0x20] = temp1;
        memory[0x20:0x40] = 0x33;
        var temp2 = memory[0x00:0x20];
        memory[0x00:0x20] = code[0x3e65:0x3e85];
        var temp3 = memory[0x00:0x20];
        memory[0x00:0x20] = temp2;
        return storage[temp3];
    }
    
    function isAdministrator() returns (var r0) {
        var var0 = 0x00;
        var var1 = msg.sender;
        var var2 = var1 == storage[var0] & 0x02 ** 0xa0 - 0x01;
    
        if (var2) {
        label_056A:
            return var2;
        } else {
            var2 = 0x01;
            var var3 = 0x00;
            var var4 = 0x0555;
            var var5 = var1;
            var4 = func_2992(var5);
            var temp0 = var3;
            memory[temp0:temp0 + 0x20] = var4;
            memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = var2;
            var2 = storage[keccak256(memory[0x00:0x00 + temp0 + 0x40])] & 0xff;
            goto label_056A;
        }
    }
    
    function func_0570(var arg0) {
        var var0 = msg.sender;
        var var1 = var0 == storage[0x00] & 0x02 ** 0xa0 - 0x01;
    
        if (var1) {
        label_05A8:
        
            if (!var1) { revert(memory[0x00:0x00]); }
        
            if (arg0) {
            label_0669:
                var1 = arg0 > 0x00;
            
                if (!var1) {
                label_0728:
                
                    if (!var1) { return; }
                
                    var temp0 = memory[0x00:0x20];
                    memory[0x00:0x20] = code[0x3e85:0x3ea5];
                    var temp1 = memory[0x00:0x20];
                    memory[0x00:0x20] = temp0;
                    memory[0x00:0x20] = temp1;
                    memory[0x20:0x40] = 0x33;
                    var temp2 = memory[0x00:0x20];
                    memory[0x00:0x20] = code[0x3e65:0x3e85];
                    var temp3 = memory[0x00:0x20];
                    memory[0x00:0x20] = temp2;
                    storage[temp3] = arg0 + storage[temp3];
                    return;
                } else {
                    var temp4 = memory[0x40:0x60];
                    memory[temp4:temp4 + 0x20] = 0x4705532100000000000000000000000000000000000000000000000000000000;
                    memory[temp4 + 0x04:temp4 + 0x04 + 0x20] = 0x4f5f88bbafbf1244f5d23cfec5e0b0f7601f2d01;
                    memory[temp4 + 0x24:temp4 + 0x24 + 0x20] = arg0;
                    var1 = 0x03cb0021808442ad5efb61197966aef72a1def96;
                    var var2 = 0x47055321;
                    var var3 = temp4 + 0x44;
                    var var4 = 0x20;
                    var var5 = memory[0x40:0x60];
                    var var6 = temp4 - var5 + 0x44;
                    var var7 = var5;
                    var var8 = 0x00;
                    var var9 = var1;
                    var var10 = !address(var9).code.length;
                
                    if (var10) { revert(memory[0x00:0x00]); }
                
                    var temp5;
                    temp5, memory[var5:var5 + var4] = address(var9).call.gas(msg.gas).value(var8)(memory[var7:var7 + var6]);
                    var4 = !temp5;
                
                    if (!var4) {
                        var1 = memory[0x40:0x60];
                        var2 = returndata.length;
                    
                        if (var2 < 0x20) { revert(memory[0x00:0x00]); }
                    
                        var1 = memory[var1:var1 + 0x20];
                        goto label_0728;
                    } else {
                        var temp6 = returndata.length;
                        memory[0x00:0x00 + temp6] = returndata[0x00:0x00 + temp6];
                        revert(memory[0x00:0x00 + returndata.length]);
                    }
                }
            } else {
                var temp7 = memory[0x40:0x60];
                memory[temp7:temp7 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = 0x4f5f88bbafbf1244f5d23cfec5e0b0f7601f2d01;
                var1 = 0x03cb0021808442ad5efb61197966aef72a1def96;
                var2 = 0x70a08231;
                var3 = temp7 + 0x24;
                var4 = 0x20;
                var5 = memory[0x40:0x60];
                var6 = temp7 - var5 + 0x24;
                var7 = var5;
                var8 = 0x00;
                var9 = var1;
                var10 = !address(var9).code.length;
            
                if (var10) { revert(memory[0x00:0x00]); }
            
                var temp8;
                temp8, memory[var5:var5 + var4] = address(var9).call.gas(msg.gas).value(var8)(memory[var7:var7 + var6]);
                var4 = !temp8;
            
                if (!var4) {
                    var1 = memory[0x40:0x60];
                    var2 = returndata.length;
                
                    if (var2 < 0x20) { revert(memory[0x00:0x00]); }
                
                    arg0 = memory[var1:var1 + 0x20];
                    goto label_0669;
                } else {
                    var temp9 = returndata.length;
                    memory[0x00:0x00 + temp9] = returndata[0x00:0x00 + temp9];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            }
        } else {
            var1 = 0x01;
            var2 = 0x00;
            var3 = 0x0593;
            var4 = var0;
            var3 = func_2992(var4);
            var temp10 = var2;
            memory[temp10:temp10 + 0x20] = var3;
            memory[temp10 + 0x20:temp10 + 0x20 + 0x20] = var1;
            var1 = storage[keccak256(memory[0x00:0x00 + temp10 + 0x40])] & 0xff;
            goto label_05A8;
        }
    }
    
    function buy(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x0767;
        var var1 = msg.sender;
        var0 = func_0412(var1);
    
        if (!var0) { revert(memory[0x00:0x00]); }
    
        if (arg1 >= 0x0c) { revert(memory[0x00:0x00]); }
    
        var0 = 0x078b;
        var1 = arg0;
        var var2 = arg1;
        var var3 = arg2;
        var var4 = arg3;
        func_0417(var1, var2, var3, var4);
    }
    
    function func_0791(var arg0, var arg1, var arg2) {
        var var0 = 0x0799;
        var0 = func_3A4B();
        var var1 = msg.sender;
        var var2 = var1 == storage[0x00] & 0x02 ** 0xa0 - 0x01;
    
        if (var2) {
        label_07D1:
        
            if (!var2) { revert(memory[0x00:0x00]); }
        
            storage[0x31] = arg0;
            var temp0 = memory[0x40:0x60];
            memory[0x40:0x60] = temp0 + 0xc0;
            var temp1 = storage[0x04];
            memory[temp0:temp0 + 0x20] = temp1 & 0xffffffffffffffff;
            memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = temp1 / 0x010000000000000000 & 0xffffff;
            memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = temp1 / 0x02 ** 0x58 & 0xffffffff;
            var temp2 = memory[0x40:0x60];
            var temp3 = temp2 + 0x0180;
            memory[0x40:0x60] = temp3;
            var2 = temp0;
            var var5 = temp2;
            var var3 = 0x04;
            var var4 = var2 + 0x60;
            var var6 = 0x05;
            var var8 = temp3;
            var var7 = 0x0c;
            memory[var5:var5 + 0x20] = storage[var6] & 0xff;
            var var9 = var6;
            var var10 = 0x01;
            var var11 = var5 + 0x20;
        
            if (var8 <= var11) { goto label_086F; }
        
        label_0842:
            var temp4 = var9;
            var temp5 = var10;
            var temp6 = var11;
            memory[temp6:temp6 + 0x20] = storage[temp4] / 0x0100 ** temp5 & 0xff;
            var temp7 = temp5 + 0x01;
            var temp8 = temp7 / 0x20;
            var9 = temp8 + temp4;
            var10 = temp7 * (0x01 - temp8);
            var11 = temp6 + 0x20;
        
            if (var8 > var11) { goto label_0842; }
        
        label_086F:
            var temp9 = var4;
            memory[temp9:temp9 + 0x20] = var5;
            var temp10 = storage[var3 + 0x02];
            memory[temp9 + 0x20:temp9 + 0x20 + 0x20] = temp10 & 0xff;
            memory[temp9 + 0x40:temp9 + 0x40 + 0x20] = temp10 / 0x0100 & 0xff;
            var temp11 = arg1 & 0xffffff;
            var temp12 = var2;
            memory[temp12 + 0x20:temp12 + 0x20 + 0x20] = temp11;
            var3 = 0x04;
            storage[var3] = (((((storage[var3] & ~0xffffffffffffffff) | (memory[temp12:temp12 + 0x20] & 0xffffffffffffffff)) & ~0xffffff0000000000000000) | temp11 * 0x010000000000000000) & ~0xffffffff0000000000000000000000) | (memory[temp12 + 0x40:temp12 + 0x40 + 0x20] & 0xffffffff) * 0x02 ** 0x58;
            var0 = temp12;
            var2 = var0;
            var4 = 0x092b;
            var5 = 0x05;
            var6 = memory[var2 + 0x60:var2 + 0x60 + 0x20];
            var7 = 0x0c;
            var4 = func_3A89(var5, var6, var7);
            var temp13 = var2;
            var temp14 = var3 + 0x02;
            storage[temp14] = (((storage[temp14] & ~0xff) | (memory[temp13 + 0x80:temp13 + 0x80 + 0x20] & 0xff)) & ~0xff00) | (memory[temp13 + 0xa0:temp13 + 0xa0 + 0x20] & 0xff) * 0x0100;
            var2 = 0x04a7;
            var3 = arg2;
            func_29B8(var3);
            return;
        } else {
            var2 = 0x01;
            var3 = 0x00;
            var4 = 0x07bc;
            var5 = var1;
            var4 = func_2992(var5);
            var temp15 = var3;
            memory[temp15:temp15 + 0x20] = var4;
            memory[temp15 + 0x20:temp15 + 0x20 + 0x20] = var2;
            var2 = storage[keccak256(memory[0x00:0x00 + temp15 + 0x40])] & 0xff;
            goto label_07D1;
        }
    }
    
    function getSummary() returns (var r0, var r1, var r2, var r3, var r4, var r5) {
        var temp0 = storage[0x04];
        r1 = 0x00;
        r2 = r1;
        r3 = r2;
        r4 = r3;
        r5 = r4;
        var var5 = r5;
        var var6 = temp0 & 0xffffffffffffffff;
        var var7 = temp0 / 0x02 ** 0x58 & 0xffffffff;
    
        if (block.timestamp <= var6) {
        label_09BC:
            var var8 = block.number;
            var var9 = var7;
            var var10 = (storage[0x04] / 0x010000000000000000 & 0xffffff) + var6 * 0x010000000000000000;
            var var11 = 0x33;
            var var12 = 0x00;
            var var13 = 0x09e7;
            var var14 = msg.sender;
            var13 = func_2992(var14);
            var temp1 = var12;
            memory[temp1:temp1 + 0x20] = var13;
            memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = var11;
            var temp2 = storage[keccak256(memory[0x00:0x00 + temp1 + 0x40])];
            var temp3 = msg.sender;
            memory[0x00:0x20] = temp3;
            memory[0x20:0x40] = 0x07;
            var temp4 = storage[keccak256(memory[0x00:0x40])];
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            memory[temp5 + 0x04:temp5 + 0x04 + 0x20] = temp3;
            var12 = temp4;
            var11 = temp2;
            var var16 = 0x20;
            var13 = 0x03cb0021808442ad5efb61197966aef72a1def96;
            var14 = 0x70a08231;
            var var15 = temp5 + 0x24;
            var var17 = memory[0x40:0x60];
            var var18 = temp5 - var17 + 0x24;
            var var19 = var17;
            var var20 = 0x00;
            var var21 = var13;
            var var22 = !address(var21).code.length;
        
            if (var22) { revert(memory[0x00:0x00]); }
        
            var temp6;
            temp6, memory[var17:var17 + var16] = address(var21).call.gas(msg.gas).value(var20)(memory[var19:var19 + var18]);
            var16 = !temp6;
        
            if (!var16) {
                var13 = memory[0x40:0x60];
                var14 = returndata.length;
            
                if (var14 < 0x20) { revert(memory[0x00:0x00]); }
            
                r0 = var8;
                r1 = var9;
                r2 = var10;
                r3 = var11;
                r4 = var12;
                r5 = memory[var13:var13 + 0x20];
                return r0, r1, r2, r3, r4, r5;
            } else {
                var temp7 = returndata.length;
                memory[0x00:0x00 + temp7] = returndata[0x00:0x00 + temp7];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
        label_099C:
            var6 = (storage[0x04] / 0x010000000000000000 & 0xffffff) + var6;
            var7 = var7 + 0x01;
        
            if (block.timestamp <= var6) { goto label_09BC; }
            else { goto label_099C; }
        }
    }
    
    function withdraw(var arg0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = 0x00;
        var var5 = 0x0ac7;
        var var6 = msg.sender;
        var5 = func_0412(var6);
    
        if (!var5) { revert(memory[0x00:0x00]); }
    
        var0 = msg.sender;
        var5 = 0x0ade;
        var6 = var0;
        var5 = func_2992(var6);
        memory[0x00:0x20] = var5;
        memory[0x20:0x40] = 0x33;
        var1 = var5;
        var2 = storage[keccak256(memory[0x00:0x40])];
    
        if (var2 <= 0x00) {
            memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
            memory[0x20:0x40] = 0x07;
            var3 = storage[keccak256(memory[0x00:0x40])];
            var4 = var3 & 0xffffffff;
        
            if (var4 <= 0x00) {
            label_0B63:
            
                if (var2 <= 0x00) {
                label_0B85:
                    var5 = 0x0b8d;
                    var5 = func_29C7();
                
                    if (!var5) {
                    label_0C75:
                        return;
                    } else {
                        memory[0x00:0x20] = storage[0x03];
                        memory[0x20:0x40] = 0x33;
                        var1 = storage[0x03];
                        var2 = storage[keccak256(memory[0x00:0x40])];
                    
                        if (!var2) { goto label_0C75; }
                    
                        memory[0x00:0x20] = var1;
                        memory[0x20:0x40] = 0x33;
                        storage[keccak256(memory[0x00:0x40])] = 0x00;
                    
                        if (arg0 & 0x02 ** 0xa0 - 0x01) {
                        label_0B80:
                        
                        label_0BE1:
                            var temp0 = memory[0x40:0x60];
                            memory[temp0:temp0 + 0x20] = 0xb43c4cf500000000000000000000000000000000000000000000000000000000;
                            memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
                            memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = var2;
                            var5 = 0x03cb0021808442ad5efb61197966aef72a1def96;
                            var6 = 0xb43c4cf5;
                            var var7 = temp0 + 0x44;
                            var var8 = 0x00;
                            var var9 = memory[0x40:0x60];
                            var var10 = temp0 - var9 + 0x44;
                            var var11 = var9;
                            var var12 = var8;
                            var var13 = var5;
                            var var14 = !address(var13).code.length;
                        
                            if (var14) { revert(memory[0x00:0x00]); }
                        
                            var temp1;
                            temp1, memory[var9:var9 + var8] = address(var13).call.gas(msg.gas).value(var12)(memory[var11:var11 + var10]);
                            var8 = !temp1;
                        
                            if (!var8) { return; }
                        
                            var temp2 = returndata.length;
                            memory[0x00:0x00 + temp2] = returndata[0x00:0x00 + temp2];
                            revert(memory[0x00:0x00 + returndata.length]);
                        } else {
                            arg0 = var0;
                            goto label_0BE1;
                        }
                    }
                } else {
                label_0B6D:
                
                    if (arg0 & 0x02 ** 0xa0 - 0x01) { goto label_0B80; }
                
                    arg0 = var0;
                    goto label_0BE1;
                }
            } else {
            label_0B36:
                memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
                memory[0x20:0x40] = 0x07;
                var temp3 = var4;
                storage[keccak256(memory[0x00:0x40])] = var3 - temp3;
                var temp4 = temp3 * 0x02c68af0bb140000 + var2;
                var2 = temp4;
                var4 = temp3;
            
                if (var2 <= 0x00) { goto label_0B85; }
                else { goto label_0B6D; }
            }
        } else {
            memory[0x00:0x20] = var1;
            memory[0x20:0x40] = 0x33;
            storage[keccak256(memory[0x00:0x40])] = 0x00;
            memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
            memory[0x20:0x40] = 0x07;
            var3 = storage[keccak256(memory[0x00:0x40])];
            var4 = var3 & 0xffffffff;
        
            if (var4 <= 0x00) { goto label_0B63; }
            else { goto label_0B36; }
        }
    }
    
    function setAdministrator(var arg0, var arg1) {
        var var0 = msg.sender;
        var var1 = var0 == storage[0x00] & 0x02 ** 0xa0 - 0x01;
    
        if (var1) {
        label_0FEB:
        
            if (!var1) { revert(memory[0x00:0x00]); }
        
            memory[0x00:0x20] = arg0;
            memory[0x20:0x40] = 0x01;
            var temp0 = keccak256(memory[0x00:0x40]);
            storage[temp0] = !!arg1 | (storage[temp0] & ~0xff);
            return;
        } else {
            var1 = 0x01;
            var var2 = 0x00;
            var var3 = 0x0fd6;
            var var4 = var0;
            var3 = func_2992(var4);
            var temp1 = var2;
            memory[temp1:temp1 + 0x20] = var3;
            memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = var1;
            var1 = storage[keccak256(memory[0x00:0x00 + temp1 + 0x40])] & 0xff;
            goto label_0FEB;
        }
    }
    
    function func_1017() returns (var r0, var r1, var r2) {
        var temp0 = storage[0x04];
        r0 = storage[0x31];
        r1 = temp0 & 0xffffffffffffffff;
        r2 = temp0 / 0x010000000000000000 & 0xffffff;
        return r0, r1, r2;
    }
    
    function func_103F() returns (var r0) {
        var var0 = 0x1047;
        var0 = func_3B9C();
        var var1 = 0x00;
        var var2 = var1;
        var var3 = 0x00;
        var var4 = 0x1054;
        var4 = func_3BBC();
        var2 = 0x00;
        var3 = msg.sender * 0x20;
    
        if (var2 >= 0x18) {
        label_12C8:
            return var0;
        } else {
        label_1069:
            memory[0x00:0x20] = var2 + var3;
            memory[0x20:0x40] = 0x2f;
            var temp0 = keccak256(memory[0x00:0x40]);
            var temp1 = memory[0x40:0x60];
            memory[0x40:0x60] = temp1 + 0x0180;
            var temp2 = storage[temp0];
            var temp3 = temp2 & 0xffffffff;
            memory[temp1:temp1 + 0x20] = temp3;
            memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = temp2 / 0x0100000000 & 0xffffffffffffffff;
            memory[temp1 + 0x40:temp1 + 0x40 + 0x20] = temp2 / 0x02 ** 0x60 & 0xff;
            memory[temp1 + 0x60:temp1 + 0x60 + 0x20] = temp2 / 0x0100000000000000000000000000 & 0xff;
            memory[temp1 + 0x80:temp1 + 0x80 + 0x20] = temp2 / 0x010000000000000000000000000000 & 0xffff;
            memory[temp1 + 0xa0:temp1 + 0xa0 + 0x20] = temp2 / 0x0100000000000000000000000000000000 & 0xff;
            memory[temp1 + 0xc0:temp1 + 0xc0 + 0x20] = temp2 / 0x010000000000000000000000000000000000 & 0xffffffffffffffff;
            memory[temp1 + 0xe0:temp1 + 0xe0 + 0x20] = temp2 / 0x0100000000000000000000000000000000000000000000000000 & 0xff;
            memory[temp1 + 0x0100:temp1 + 0x0100 + 0x20] = temp2 / 0x02 ** 0xd0 & 0xff;
            memory[temp1 + 0x0120:temp1 + 0x0120 + 0x20] = temp2 / 0x01000000000000000000000000000000000000000000000000000000 & 0xffff;
            memory[temp1 + 0x0140:temp1 + 0x0140 + 0x20] = temp2 / 0x02 ** 0xe8 & 0xff;
            var4 = temp1;
            memory[var4 + 0x0160:var4 + 0x0160 + 0x20] = temp2 / 0x02 ** 0xf0 & 0xff;
            var1 = temp3;
        
            if (var1) {
                var temp4 = var4;
                var temp5 = (((((((((var1 * 0x02 ** 0x40 + (memory[temp4 + 0x20:temp4 + 0x20 + 0x20] & 0xffffffffffffffff)) * 0x02 ** 0x08 + (memory[temp4 + 0x40:temp4 + 0x40 + 0x20] & 0xff)) * 0x02 ** 0x08 + (memory[temp4 + 0x60:temp4 + 0x60 + 0x20] & 0xff)) * 0x02 ** 0x10 + (memory[temp4 + 0x80:temp4 + 0x80 + 0x20] & 0xffff)) * 0x02 ** 0x08 + (memory[temp4 + 0xa0:temp4 + 0xa0 + 0x20] & 0xff)) * 0x02 ** 0x40 + (memory[temp4 + 0xc0:temp4 + 0xc0 + 0x20] & 0xffffffffffffffff)) * 0x02 ** 0x08 + (memory[temp4 + 0xe0:temp4 + 0xe0 + 0x20] & 0xff)) * 0x02 ** 0x08 + (memory[temp4 + 0x0100:temp4 + 0x0100 + 0x20] & 0xff)) * 0x02 ** 0x10 + (memory[temp4 + 0x0120:temp4 + 0x0120 + 0x20] & 0xffff)) * 0x02 ** 0x08 + (memory[temp4 + 0x0140:temp4 + 0x0140 + 0x20] & 0xff);
                var1 = temp5;
                var var5 = var1 * 0x02 ** 0x08 + (memory[temp4 + 0x0160:temp4 + 0x0160 + 0x20] & 0xff);
                var var6 = var0;
                var var7 = var2;
            
                if (var7 >= 0x18) { assert(); }
            
                memory[var7 * 0x20 + var6:var7 * 0x20 + var6 + 0x20] = var5;
                var2 = var2 + 0x01;
            
            label_105F:
            
                if (var2 >= 0x18) { goto label_12C8; }
                else { goto label_1069; }
            } else {
                var5 = 0x00;
                var6 = var0;
                var7 = var2;
            
                if (var7 >= 0x18) { assert(); }
            
                memory[var7 * 0x20 + var6:var7 * 0x20 + var6 + 0x20] = var5;
                var2 = var2 + 0x01;
                goto label_105F;
            }
        }
    }
    
    function func_12CF(var arg0) returns (var arg0) {
        memory[0x20:0x40] = 0x33;
        memory[0x00:0x20] = arg0;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function func_12E1() {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
        var var3 = 0x12ef;
        var var4 = msg.sender;
        var3 = func_2992(var4);
        memory[0x00:0x20] = var3;
        memory[0x20:0x40] = 0x32;
        var0 = var3;
        var1 = storage[keccak256(memory[0x00:0x40])];
    
        if (var1 >= 0x016345785d8a0000) {
        label_13CA:
            return;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0xca5dbdb800000000000000000000000000000000000000000000000000000000;
            memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = var0;
            var3 = 0x4f5f88bbafbf1244f5d23cfec5e0b0f7601f2d01;
            var4 = 0xca5dbdb8;
            var var5 = temp0 + 0x24;
            var var6 = 0x20;
            var var7 = memory[0x40:0x60];
            var var8 = temp0 - var7 + 0x24;
            var var9 = var7;
            var var10 = 0x00;
            var var11 = var3;
            var var12 = !address(var11).code.length;
        
            if (var12) { revert(memory[0x00:0x00]); }
        
            var temp1;
            temp1, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
            var6 = !temp1;
        
            if (!var6) {
                var3 = memory[0x40:0x60];
                var4 = returndata.length;
            
                if (var4 < 0x20) { revert(memory[0x00:0x00]); }
            
                var2 = memory[var3:var3 + 0x20];
            
                if (var2 + var1 < 0x016345785d8a0000) { goto label_13CA; }
            
                var3 = 0x13ca;
                var4 = msg.sender;
                var5 = var0;
                var6 = var2;
                func_29DC(var4, var5, var6);
                goto label_13CA;
            } else {
                var temp2 = returndata.length;
                memory[0x00:0x00 + temp2] = returndata[0x00:0x00 + temp2];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        }
    }
    
    function getGames() returns (var r0) {
        var var0 = 0x13d7;
        var0 = func_3C20();
        var var1 = 0x00;
        var var2 = var1;
        var var3 = 0x13e2;
        var3 = func_3B38();
        var1 = 0x00;
    
        if (var1 >= 0x0c) {
        label_151B:
            memory[var0 + 0x20 * 0x0c:var0 + 0x20 * 0x0c + 0x20] = (storage[0x04] / 0x02 ** 0x58 & 0xffffffff) * 0x01000000000000 + block.number;
            return var0;
        } else {
        label_13F1:
            var var4 = 0x08;
            var var5 = var1;
        
            if (var5 >= 0x0c) { assert(); }
        
            var temp0 = memory[0x40:0x60];
            memory[0x40:0x60] = temp0 + 0xa0;
            var temp1 = var5 * 0x02 + var4;
            var temp2 = storage[temp1];
            memory[temp0:temp0 + 0x20] = temp2 & 0xffffffff;
            memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = temp2 / 0x0100000000 & 0xffff;
            memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = temp2 / 0x01000000000000 & 0xffffffffffff;
            memory[temp0 + 0x60:temp0 + 0x60 + 0x20] = temp2 / 0x02 ** 0x60 & 0xffff;
            var temp3 = memory[0x40:0x60];
            var temp4 = temp3 + 0x60;
            memory[0x40:0x60] = temp4;
            var4 = temp0;
            var var7 = temp3;
            var5 = temp1;
            var var6 = var4 + 0x80;
            var temp5 = var5 + 0x01;
            var var8 = temp5;
            var var9 = 0x03;
            var var10 = temp4;
            memory[var7:var7 + 0x20] = storage[var8] & 0xffff;
            var var13 = var7 + 0x20;
            var var11 = var8;
            var var12 = 0x02;
        
            if (var10 <= var13) { goto label_14AC; }
        
        label_1475:
            var temp6 = var11;
            var temp7 = var12;
            var temp8 = var13;
            memory[temp8:temp8 + 0x20] = storage[temp6] / 0x0100 ** temp7 & 0xffff;
            var temp9 = temp7 + 0x02;
            var13 = temp8 + 0x20;
            var temp10 = (temp9 + 0x01) / 0x20;
            var11 = temp10 + temp6;
            var12 = temp9 * (0x01 - temp10);
        
            if (var10 > var13) { goto label_1475; }
        
        label_14AC:
            memory[var6:var6 + 0x20] = var7;
            var temp11 = var4;
            var2 = (((memory[temp11:temp11 + 0x20] & 0xffffffff) * 0x010000 + (memory[temp11 + 0x20:temp11 + 0x20 + 0x20] & 0xffff)) * 0x01000000000000 + (memory[temp11 + 0x40:temp11 + 0x40 + 0x20] & 0xffffffffffff)) * 0x010000;
            var3 = temp11;
            var4 = var2 + (memory[var3 + 0x60:var3 + 0x60 + 0x20] & 0xffff);
            var5 = var0;
            var6 = var1;
        
            if (var6 >= 0x0d) { assert(); }
        
            memory[var6 * 0x20 + var5:var6 * 0x20 + var5 + 0x20] = var4;
            var3 = var3;
            var1 = var1 + 0x01;
        
            if (var1 >= 0x0c) { goto label_151B; }
            else { goto label_13F1; }
        }
    }
    
    function func_1549(var arg0) returns (var r0) {
        memory[0x00:0x20] = arg0;
        memory[0x20:0x40] = 0x32;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function getFinished() returns (var r0) {
        var var0 = 0x1563;
        var0 = func_3C40();
        var var1 = msg.sender;
        var var2 = var1 == storage[0x00] & 0x02 ** 0xa0 - 0x01;
    
        if (var2) {
        label_159B:
        
            if (!var2) { revert(memory[0x00:0x00]); }
        
            var temp0 = memory[0x40:0x60];
            var temp1 = temp0 + 0x0180;
            memory[0x40:0x60] = temp1;
            var2 = temp0;
            var var3 = 0x20;
            var var5 = temp1;
            var var4 = 0x0c;
            memory[var2:var2 + 0x20] = storage[var3];
            var var7 = var2 + 0x20;
            var var6 = var3 + 0x01;
        
            if (var5 <= var7) { goto label_15D1; }
        
        label_15BD:
            var temp2 = var6;
            var temp3 = var7;
            memory[temp3:temp3 + 0x20] = storage[temp2];
            var7 = temp3 + 0x20;
            var6 = temp2 + 0x01;
        
            if (var5 > var7) { goto label_15BD; }
        
        label_15D1:
            return var2;
        } else {
            var2 = 0x01;
            var3 = 0x00;
            var4 = 0x1586;
            var5 = var1;
            var4 = func_2992(var5);
            var temp4 = var3;
            memory[temp4:temp4 + 0x20] = var4;
            memory[temp4 + 0x20:temp4 + 0x20 + 0x20] = var2;
            var2 = storage[keccak256(memory[0x00:0x00 + temp4 + 0x40])] & 0xff;
            goto label_159B;
        }
    }
    
    function func_15DB() returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = 0x15ea;
        var var5 = msg.sender;
        var4 = func_2992(var5);
        memory[0x00:0x20] = var4;
        memory[0x20:0x40] = 0x32;
        var1 = var4;
        var2 = storage[keccak256(memory[0x00:0x40])];
    
        if (var2 >= 0x016345785d8a0000) {
        label_16C3:
            return 0x00;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0xca5dbdb800000000000000000000000000000000000000000000000000000000;
            memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = var1;
            var4 = 0x4f5f88bbafbf1244f5d23cfec5e0b0f7601f2d01;
            var5 = 0xca5dbdb8;
            var var6 = temp0 + 0x24;
            var var7 = 0x20;
            var var8 = memory[0x40:0x60];
            var var9 = temp0 - var8 + 0x24;
            var var10 = var8;
            var var11 = 0x00;
            var var12 = var4;
            var var13 = !address(var12).code.length;
        
            if (var13) { revert(memory[0x00:0x00]); }
        
            var temp1;
            temp1, memory[var8:var8 + var7] = address(var12).call.gas(msg.gas).value(var11)(memory[var10:var10 + var9]);
            var7 = !temp1;
        
            if (!var7) {
                var4 = memory[0x40:0x60];
                var5 = returndata.length;
            
                if (var5 < 0x20) { revert(memory[0x00:0x00]); }
            
                var3 = memory[var4:var4 + 0x20];
            
                if (var3 + var2 < 0x016345785d8a0000) { goto label_16C3; }
                else { return 0x01; }
            } else {
                var temp2 = returndata.length;
                memory[0x00:0x00 + temp2] = returndata[0x00:0x00 + temp2];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        }
    }
    
    function startGame(var arg0) {
        var var0 = 0x16d6;
        var0 = func_3A4B();
        var var1 = msg.sender;
        var var2 = var1 == storage[0x00] & 0x02 ** 0xa0 - 0x01;
    
        if (var2) {
        label_170E:
        
            if (!var2) { revert(memory[0x00:0x00]); }
        
            var temp0 = memory[0x40:0x60];
            memory[0x40:0x60] = temp0 + 0xc0;
            var temp1 = storage[0x04];
            memory[temp0:temp0 + 0x20] = temp1 & 0xffffffffffffffff;
            memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = temp1 / 0x010000000000000000 & 0xffffff;
            memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = temp1 / 0x02 ** 0x58 & 0xffffffff;
            var temp2 = memory[0x40:0x60];
            var temp3 = temp2 + 0x0180;
            memory[0x40:0x60] = temp3;
            var2 = temp0;
            var var3 = 0x04;
            var var5 = temp2;
            var var4 = var2 + 0x60;
            var var6 = 0x05;
            var var8 = temp3;
            var var7 = 0x0c;
            memory[var5:var5 + 0x20] = storage[var6] & 0xff;
            var var9 = var6;
            var var10 = 0x01;
            var var11 = var5 + 0x20;
        
            if (var8 <= var11) { goto label_17A7; }
        
        label_177A:
            var temp4 = var9;
            var temp5 = var10;
            var temp6 = var11;
            memory[temp6:temp6 + 0x20] = storage[temp4] / 0x0100 ** temp5 & 0xff;
            var temp7 = temp5 + 0x01;
            var temp8 = temp7 / 0x20;
            var9 = temp8 + temp4;
            var10 = temp7 * (0x01 - temp8);
            var11 = temp6 + 0x20;
        
            if (var8 > var11) { goto label_177A; }
        
        label_17A7:
            var temp9 = var4;
            memory[temp9:temp9 + 0x20] = var5;
            var temp10 = storage[var3 + 0x02];
            memory[temp9 + 0x20:temp9 + 0x20 + 0x20] = temp10 & 0xff;
            memory[temp9 + 0x40:temp9 + 0x40 + 0x20] = temp10 / 0x0100 & 0xff;
            var temp11 = arg0 & 0xffffffffffffffff;
            var temp12 = var2;
            memory[temp12:temp12 + 0x20] = temp11;
            var3 = 0x04;
            storage[var3] = ((((temp11 | (storage[var3] & ~0xffffffffffffffff)) & ~0xffffff0000000000000000) | (memory[temp12 + 0x20:temp12 + 0x20 + 0x20] & 0xffffff) * 0x010000000000000000) & ~0xffffffff0000000000000000000000) | (memory[temp12 + 0x40:temp12 + 0x40 + 0x20] & 0xffffffff) * 0x02 ** 0x58;
            var0 = temp12;
            var2 = var0;
            var4 = 0x185f;
            var5 = 0x05;
            var6 = memory[var2 + 0x60:var2 + 0x60 + 0x20];
            var7 = 0x0c;
            var4 = func_3A89(var5, var6, var7);
            var temp13 = var2;
            var temp14 = var3 + 0x02;
            storage[temp14] = (((storage[temp14] & ~0xff) | (memory[temp13 + 0x80:temp13 + 0x80 + 0x20] & 0xff)) & ~0xff00) | (memory[temp13 + 0xa0:temp13 + 0xa0 + 0x20] & 0xff) * 0x0100;
            return;
        } else {
            var2 = 0x01;
            var3 = 0x00;
            var4 = 0x16f9;
            var5 = var1;
            var4 = func_2992(var5);
            var temp15 = var3;
            memory[temp15:temp15 + 0x20] = var4;
            memory[temp15 + 0x20:temp15 + 0x20 + 0x20] = var2;
            var2 = storage[keccak256(memory[0x00:0x00 + temp15 + 0x40])] & 0xff;
            goto label_170E;
        }
    }
    
    function transferOwnership(var arg0) {
        if (msg.sender != storage[0x00] & 0x02 ** 0xa0 - 0x01) { revert(memory[0x00:0x00]); }
    
        storage[0x00] = (arg0 & 0x02 ** 0xa0 - 0x01) | (storage[0x00] & ~0xffffffffffffffffffffffffffffffffffffffff);
    }
    
    function func_18DF() returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x016345785d8a0000;
        var var2 = 0x32;
        var var3 = 0x00;
        var var4 = 0x18f7;
        var var5 = msg.sender;
        var4 = func_2992(var5);
        var temp0 = var3;
        memory[temp0:temp0 + 0x20] = var4;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = var2;
        return storage[keccak256(memory[0x00:0x00 + temp0 + 0x40])] >= var1;
    }
    
    function func_190F() returns (var r0) {
        var var0 = 0x00;
        var var1 = msg.value;
    
        if (var1 <= var0) {
        label_19A2:
            return var1;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0xf340fa0100000000000000000000000000000000000000000000000000000000;
            memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = msg.sender;
            var var2 = 0x03cb0021808442ad5efb61197966aef72a1def96;
            var var3 = 0xf340fa01;
            var var4 = var1;
            var var5 = temp0 + 0x24;
            var var6 = 0x00;
            var var7 = memory[0x40:0x60];
            var var8 = temp0 - var7 + 0x24;
            var var9 = var7;
            var var10 = var4;
            var var11 = var2;
            var var12 = !address(var11).code.length;
        
            if (var12) { revert(memory[0x00:0x00]); }
        
            var temp1;
            temp1, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
            var6 = !temp1;
        
            if (!var6) { goto label_19A2; }
        
            var temp2 = returndata.length;
            memory[0x00:0x00 + temp2] = returndata[0x00:0x00 + temp2];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_19A7(var arg0, var arg1) returns (var r0) {
        var var0 = 0x19af;
        var0 = func_3A4B();
        var var1 = 0x19b7;
        var1 = func_3A4B();
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0xc0;
        var temp1 = storage[0x04];
        memory[temp0:temp0 + 0x20] = temp1 & 0xffffffffffffffff;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = temp1 / 0x010000000000000000 & 0xffffff;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = temp1 / 0x02 ** 0x58 & 0xffffffff;
        var temp2 = memory[0x40:0x60];
        var temp3 = temp2 + 0x0180;
        memory[0x40:0x60] = temp3;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = temp0;
        var var5 = 0x04;
        var var7 = temp2;
        var var6 = var4 + 0x60;
        var var8 = 0x05;
        var var10 = temp3;
        var var9 = 0x0c;
        memory[var7:var7 + 0x20] = storage[var8] / 0x0100 ** var3 & 0xff;
        var var11 = (var3 + 0x01) / 0x20 + var8;
        var var12 = (var3 + 0x01) * (0x01 - (var3 + 0x01) / 0x20);
        var var13 = var7 + 0x20;
    
        if (var10 <= var13) { goto label_1A47; }
    
    label_1A1A:
        var temp4 = var11;
        var temp5 = var12;
        var temp6 = var13;
        memory[temp6:temp6 + 0x20] = storage[temp4] / 0x0100 ** temp5 & 0xff;
        var temp7 = temp5 + 0x01;
        var temp8 = temp7 / 0x20;
        var11 = temp8 + temp4;
        var12 = temp7 * (0x01 - temp8);
        var13 = temp6 + 0x20;
    
        if (var10 > var13) { goto label_1A1A; }
    
    label_1A47:
        var temp9 = var6;
        memory[temp9:temp9 + 0x20] = var7;
        var temp10 = storage[var5 + 0x02];
        memory[temp9 + 0x20:temp9 + 0x20 + 0x20] = temp10 & 0xff;
        memory[temp9 + 0x40:temp9 + 0x40 + 0x20] = temp10 / 0x0100 & 0xff;
        memory[var4 + 0x80:var4 + 0x80 + 0x20] = arg0 & 0xff;
        var1 = var4;
    
        if (arg1) {
            var temp11 = var1;
            memory[temp11 + 0xa0:temp11 + 0xa0 + 0x20] = 0xff & 0x01;
            var2 = memory[temp11:temp11 + 0x20] & 0xffffffffffffffff;
            var3 = block.timestamp;
        
            if (var3 >= var2) {
            label_1AC3:
                var temp12 = var1;
                var temp13 = temp12 + 0x40;
                memory[temp13:temp13 + 0x20] = memory[temp13:temp13 + 0x20] + 0x01 & 0xffffffff;
                var temp14 = var3;
                var temp15 = (memory[temp12 + 0x20:temp12 + 0x20 + 0x20] & 0xffffff) + var2;
                var2 = temp15;
                var3 = temp14;
            
                if (var2 <= var3) { goto label_1AC3; }
            
                var temp16 = var2 & 0xffffffffffffffff;
                var temp17 = var1;
                memory[temp17:temp17 + 0x20] = temp16;
                storage[0x04] = ((((temp16 | (storage[0x04] & ~0xffffffffffffffff)) & ~0xffffff0000000000000000) | (memory[temp17 + 0x20:temp17 + 0x20 + 0x20] & 0xffffff) * 0x010000000000000000) & ~0xffffffff0000000000000000000000) | (memory[temp17 + 0x40:temp17 + 0x40 + 0x20] & 0xffffffff) * 0x02 ** 0x58;
                var4 = temp17;
                var5 = 0x04;
                var6 = 0x1b85;
                var8 = memory[var4 + 0x60:var4 + 0x60 + 0x20];
                var7 = 0x05;
                var9 = 0x0c;
                var6 = func_3A89(var7, var8, var9);
                var temp18 = var4;
                var temp19 = var5 + 0x02;
                storage[temp19] = (((storage[temp19] & ~0xff) | (memory[temp18 + 0x80:temp18 + 0x80 + 0x20] & 0xff)) & ~0xff00) | (memory[temp18 + 0xa0:temp18 + 0xa0 + 0x20] & 0xff) * 0x0100;
            
            label_1BBB:
                return var1;
            } else {
            label_1AA9:
            
                if (memory[var1 + 0x40:var1 + 0x40 + 0x20] & 0xffffffff) { goto label_1BBB; }
                else { revert(memory[0x00:0x00]); }
            }
        } else {
            var4 = 0x00;
            var temp20 = var1;
            memory[temp20 + 0xa0:temp20 + 0xa0 + 0x20] = var4 & 0xff;
            var2 = memory[temp20:temp20 + 0x20] & 0xffffffffffffffff;
            var3 = block.timestamp;
        
            if (var3 >= var2) { goto label_1AC3; }
            else { goto label_1AA9; }
        }
    }
    
    function func_1BC5(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = 0x00;
        var var5 = 0x1bd5;
        var5 = func_3B38();
        var var6 = 0x00;
        var var7 = var6;
        var var8 = 0x1be0;
        var8 = func_3C60();
        var temp0 = arg1;
        var1 = memory[temp0 + 0x40:temp0 + 0x40 + 0x20] & 0xffffffff;
        var2 = memory[temp0 + 0x80:temp0 + 0x80 + 0x20] & 0xff;
        var var9 = 0x1c00;
        var var10 = var2;
        var9 = func_2B59(var10);
        var3 = var9;
        var4 = memory[arg1 + 0xa0:arg1 + 0xa0 + 0x20] & 0xff;
        var9 = 0x08;
        var10 = var2;
    
        if (var10 >= 0x0c) { assert(); }
    
        var temp1 = memory[0x40:0x60];
        memory[0x40:0x60] = temp1 + 0xa0;
        var temp2 = var10 * 0x02 + var9;
        var temp3 = storage[temp2];
        memory[temp1:temp1 + 0x20] = temp3 & 0xffffffff;
        memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = temp3 / 0x0100000000 & 0xffff;
        memory[temp1 + 0x40:temp1 + 0x40 + 0x20] = temp3 / 0x01000000000000 & 0xffffffffffff;
        memory[temp1 + 0x60:temp1 + 0x60 + 0x20] = temp3 / 0x02 ** 0x60 & 0xffff;
        var temp4 = memory[0x40:0x60];
        var temp5 = temp4 + 0x60;
        memory[0x40:0x60] = temp5;
        var9 = temp1;
        var var12 = temp4;
        var10 = temp2;
        var var11 = var9 + 0x80;
        var temp6 = var10 + 0x01;
        var var13 = temp6;
        var var14 = 0x03;
        var var15 = temp5;
        memory[var12:var12 + 0x20] = storage[var13] & 0xffff;
        var var18 = var12 + 0x20;
        var var16 = var13;
        var var17 = 0x02;
    
        if (var15 <= var18) { goto label_1CC9; }
    
    label_1C92:
        var temp7 = var16;
        var temp8 = var17;
        var temp9 = var18;
        memory[temp9:temp9 + 0x20] = storage[temp7] / 0x0100 ** temp8 & 0xffff;
        var temp10 = temp8 + 0x02;
        var18 = temp9 + 0x20;
        var temp11 = (temp10 + 0x01) / 0x20;
        var16 = temp11 + temp7;
        var17 = temp10 * (0x01 - temp11);
    
        if (var15 > var18) { goto label_1C92; }
    
    label_1CC9:
        memory[var11:var11 + 0x20] = var12;
        var5 = var9;
        var6 = memory[var5 + 0x20:var5 + 0x20 + 0x20] & 0xffff;
        var7 = 0x0c;
    
        if (var6 < var3) {
            if (var6) {
            label_1DA9:
                memory[0x00:0x20] = msg.sender;
                memory[0x20:0x40] = 0x30;
                var temp12 = keccak256(memory[0x00:0x40]);
                var temp13 = memory[0x40:0x60];
                memory[0x40:0x60] = temp13 + 0x80;
                var temp14 = storage[temp12];
                var temp15 = temp14 & 0xffffffff;
                memory[temp13:temp13 + 0x20] = temp15;
                memory[temp13 + 0x20:temp13 + 0x20 + 0x20] = temp14 / 0x0100000000 & 0xff;
                memory[temp13 + 0x40:temp13 + 0x40 + 0x20] = temp14 / 0x010000000000 & 0xff;
                memory[temp13 + 0x60:temp13 + 0x60 + 0x20] = temp14 / 0x01000000000000 & 0xff;
                var8 = temp13;
            
                if (var1 != temp15) {
                    var temp16 = var8;
                    memory[temp16:temp16 + 0x20] = var1 & 0xffffffff;
                    memory[temp16 + 0x20:temp16 + 0x20 + 0x20] = var2 & 0xff;
                    memory[temp16 + 0x40:temp16 + 0x40 + 0x20] = 0x0c;
                
                    if (memory[temp16 + 0x60:temp16 + 0x60 + 0x20] & 0xff < 0x17) {
                        var temp17 = var8 + 0x60;
                        memory[temp17:temp17 + 0x20] = memory[temp17:temp17 + 0x20] + 0x01 & 0xff;
                    
                        if (var2 == memory[arg1 + 0x80:arg1 + 0x80 + 0x20] & 0xff) {
                        label_2074:
                            var6 = arg0 / 0x2386f26fc10000;
                        
                            if (var6 < 0x64) {
                                var temp18 = memory[0x40:0x60];
                                memory[temp18:temp18 + 0x20] = 0x4705532100000000000000000000000000000000000000000000000000000000;
                                memory[temp18 + 0x04:temp18 + 0x04 + 0x20] = msg.sender;
                                memory[temp18 + 0x24:temp18 + 0x24 + 0x20] = var6 * 0x2386f26fc10000;
                                arg0 = var6 * 0x2386f26fc10000;
                                var9 = 0x03cb0021808442ad5efb61197966aef72a1def96;
                                var10 = 0x47055321;
                                var11 = temp18 + 0x44;
                                var12 = 0x20;
                                var13 = memory[0x40:0x60];
                                var14 = temp18 - var13 + 0x44;
                                var15 = var13;
                                var16 = 0x00;
                                var17 = var9;
                                var18 = !address(var17).code.length;
                            
                                if (var18) { revert(memory[0x00:0x00]); }
                            
                            label_210E:
                                var temp19;
                                temp19, memory[var13:var13 + var12] = address(var17).call.gas(msg.gas).value(var16)(memory[var15:var15 + var14]);
                                var12 = !temp19;
                            
                                if (!var12) {
                                    var9 = memory[0x40:0x60];
                                    var10 = returndata.length;
                                
                                    if (var10 < 0x20) { revert(memory[0x00:0x00]); }
                                
                                    if (!memory[var9:var9 + 0x20]) {
                                        arg0 = 0x00;
                                        var9 = var5;
                                        var10 = 0x08;
                                        var11 = var2;
                                    
                                        if (var11 >= 0x0c) { assert(); }
                                    
                                    label_2375:
                                        var temp20 = var9;
                                        var temp21 = var11 * 0x02 + var10;
                                        var10 = temp21;
                                        storage[var10] = (((((((storage[var10] & ~0xffffffff) | (memory[temp20:temp20 + 0x20] & 0xffffffff)) & ~0xffff00000000) | (memory[temp20 + 0x20:temp20 + 0x20 + 0x20] & 0xffff) * 0x0100000000) & ~0xffffffffffff000000000000) | (memory[temp20 + 0x40:temp20 + 0x40 + 0x20] & 0xffffffffffff) * 0x01000000000000) & ~0xffff000000000000000000000000) | (memory[temp20 + 0x60:temp20 + 0x60 + 0x20] & 0xffff) * 0x02 ** 0x60;
                                        var11 = 0x2420;
                                        var13 = memory[temp20 + 0x80:temp20 + 0x80 + 0x20];
                                        var12 = var10 + 0x01;
                                        var14 = 0x03;
                                    
                                    label_3C87:
                                        var temp22 = var13;
                                        var13 = var12 + 0x01;
                                        var15 = var12;
                                        var16 = temp22;
                                    
                                        if (!var14) {
                                        label_3D0D:
                                            var temp23 = var13;
                                            var13 = 0x0502;
                                            var14 = temp23;
                                            var temp24 = var14;
                                            var14 = 0x052e;
                                            var temp25 = var15;
                                            var16 = temp25;
                                            var15 = temp24;
                                        
                                            if (var15 <= var16) {
                                                var14 = func_0502(var15, var16);
                                                var13 = var14;
                                                // Error: Could not resolve jump destination!
                                            } else {
                                            label_3E23:
                                                var temp26 = var16;
                                                storage[temp26] = storage[temp26] & ~0xffff;
                                                var16 = temp26 + 0x01;
                                            
                                                if (var15 > var16) { goto label_3E23; }
                                            
                                                var14 = func_0502(var15, var16);
                                                // Error: Could not resolve method call return address!
                                            }
                                        } else {
                                            var temp27 = var16;
                                            var temp28 = var14;
                                            var14 = temp27;
                                            var16 = var14 + temp28 * 0x20;
                                            var17 = 0x00;
                                        
                                            if (var16 <= var14) {
                                            label_3CDD:
                                            
                                                if (!var17) { goto label_3D0D; }
                                            
                                                var temp29 = var15;
                                                var temp30 = var17;
                                                storage[temp29] = ~(0x0100 ** temp30 * 0xffff) & storage[temp29];
                                                var temp31 = temp30 + 0x02;
                                                var temp32 = (temp31 + 0x01) / 0x20;
                                                var15 = temp32 + temp29;
                                                var17 = 0x01 - temp32 * temp31;
                                                goto label_3CDD;
                                            } else {
                                            label_3CA6:
                                                var temp33 = var14;
                                                var temp34 = var15;
                                                var temp35 = var17;
                                                var temp36 = 0x0100 ** temp35;
                                                storage[temp34] = (memory[temp33:temp33 + 0x20] & 0xffff) * temp36 | (~(temp36 * 0xffff) & storage[temp34]);
                                                var14 = temp33 + 0x20;
                                                var temp37 = temp35 + 0x02;
                                                var temp38 = (temp37 + 0x01) / 0x20;
                                                var15 = temp38 + temp34;
                                                var17 = 0x01 - temp38 * temp37;
                                            
                                                if (var16 <= var14) { goto label_3CDD; }
                                                else { goto label_3CA6; }
                                            }
                                        }
                                    } else {
                                        var9 = 0x216a;
                                        var10 = var8;
                                        var11 = arg1;
                                        var temp39 = var5;
                                        var12 = memory[temp39 + 0x20:temp39 + 0x20 + 0x20] & 0xffff;
                                        var13 = var6;
                                        var14 = 0x18;
                                        var15 = memory[temp39:temp39 + 0x20] & 0xffffffff;
                                    
                                        if (!var14) { assert(); }
                                    
                                        func_2164(var10, var11, var12, var13, var14, var15);
                                        var temp40 = var6;
                                        var temp41 = var5;
                                        var temp42 = (memory[temp41 + 0x20:temp41 + 0x20 + 0x20] & 0xffff) + temp40;
                                        var7 = temp42;
                                        var temp43 = memory[0x40:0x60];
                                        var9 = temp43;
                                        memory[0x40:0x60] = var9 + 0xa0;
                                        memory[var9:var9 + 0x20] = msg.sender;
                                        var temp44 = var9 + 0x20;
                                        memory[temp44:temp44 + 0x20] = var1 & 0xffffffff;
                                        var temp45 = temp44 + 0x20;
                                        memory[temp45:temp45 + 0x20] = memory[temp41 + 0x20:temp41 + 0x20 + 0x20] & 0xffff;
                                        var temp46 = temp45 + 0x20;
                                        memory[temp46:temp46 + 0x20] = var7 & 0xffff;
                                        memory[temp46 + 0x20:temp46 + 0x20 + 0x20] = temp40 & 0xff;
                                        var10 = 0x2c;
                                        var11 = 0x00;
                                        var12 = 0x21d3;
                                        var13 = var2;
                                        var14 = memory[temp41 + 0x60:temp41 + 0x60 + 0x20] & 0xffff;
                                        var12 = func_304D(var13, var14);
                                        var temp47 = var11;
                                        memory[temp47:temp47 + 0x20] = var12;
                                        memory[temp47 + 0x20:temp47 + 0x20 + 0x20] = var10;
                                        var temp48 = keccak256(memory[0x00:0x00 + temp47 + 0x40]);
                                        var temp49 = var9;
                                        storage[temp48] = (((((((((storage[temp48] & ~0xffffffffffffffffffffffffffffffffffffffff) | (memory[temp49:temp49 + 0x20] & 0x02 ** 0xa0 - 0x01)) & ~0xffffffff0000000000000000000000000000000000000000) | (memory[temp49 + 0x20:temp49 + 0x20 + 0x20] & 0xffffffff) * 0x010000000000000000000000000000000000000000) & ~0xffff000000000000000000000000000000000000000000000000) | (memory[temp49 + 0x40:temp49 + 0x40 + 0x20] & 0xffff) * 0x01000000000000000000000000000000000000000000000000) & 0xffffffff0000ffffffffffffffffffffffffffffffffffffffffffffffffffff) | (memory[temp49 + 0x60:temp49 + 0x60 + 0x20] & 0xffff) * 0x02 ** 0xd0) & 0xffffff00ffffffffffffffffffffffffffffffffffffffffffffffffffffffff) | (memory[temp49 + 0x80:temp49 + 0x80 + 0x20] & 0xff) * 0x02 ** 0xe0;
                                        var temp50 = var7;
                                        var temp51 = var5;
                                        memory[temp51 + 0x20:temp51 + 0x20 + 0x20] = temp50 & 0xffff;
                                        var temp52 = temp51 + 0x60;
                                        memory[temp52:temp52 + 0x20] = memory[temp52:temp52 + 0x20] + 0x01 & 0xffff;
                                    
                                        if (temp50 < var3) {
                                        label_235D:
                                            var9 = var5;
                                            var10 = 0x08;
                                            var11 = var2;
                                        
                                            if (var11 < 0x0c) { goto label_2375; }
                                            else { assert(); }
                                        } else {
                                            var9 = 0x01;
                                            memory[var5 + 0x40:var5 + 0x40 + 0x20] = var9 + block.number & 0xffffffffffff;
                                            var10 = memory[arg1 + 0x60:arg1 + 0x60 + 0x20];
                                            var11 = var2;
                                        
                                            if (var11 >= 0x0c) { assert(); }
                                        
                                            memory[var11 * 0x20 + var10:var11 * 0x20 + var10 + 0x20] = var9 & 0xff;
                                            goto label_235D;
                                        }
                                    }
                                } else {
                                    var temp53 = returndata.length;
                                    memory[0x00:0x00 + temp53] = returndata[0x00:0x00 + temp53];
                                    revert(memory[0x00:0x00 + returndata.length]);
                                }
                            } else {
                                var6 = 0x64;
                                var temp54 = memory[0x40:0x60];
                                memory[temp54:temp54 + 0x20] = 0x4705532100000000000000000000000000000000000000000000000000000000;
                                memory[temp54 + 0x04:temp54 + 0x04 + 0x20] = msg.sender;
                                memory[temp54 + 0x24:temp54 + 0x24 + 0x20] = var6 * 0x2386f26fc10000;
                                arg0 = var6 * 0x2386f26fc10000;
                                var9 = 0x03cb0021808442ad5efb61197966aef72a1def96;
                                var10 = 0x47055321;
                                var11 = temp54 + 0x44;
                                var12 = 0x20;
                                var13 = memory[0x40:0x60];
                                var14 = temp54 - var13 + 0x44;
                                var15 = var13;
                                var16 = 0x00;
                                var17 = var9;
                                var18 = !address(var17).code.length;
                            
                                if (!var18) { goto label_210E; }
                                else { revert(memory[0x00:0x00]); }
                            }
                        } else {
                        label_1EC5:
                        
                            if (var7 == 0x0c) {
                                var9 = 0x08;
                                var10 = var2;
                            
                                if (var10 >= 0x0c) { assert(); }
                            
                                var temp55 = memory[0x40:0x60];
                                memory[0x40:0x60] = temp55 + 0xa0;
                                var temp56 = var10 * 0x02 + var9;
                                var temp57 = storage[temp56];
                                memory[temp55:temp55 + 0x20] = temp57 & 0xffffffff;
                                memory[temp55 + 0x20:temp55 + 0x20 + 0x20] = temp57 / 0x0100000000 & 0xffff;
                                memory[temp55 + 0x40:temp55 + 0x40 + 0x20] = temp57 / 0x01000000000000 & 0xffffffffffff;
                                memory[temp55 + 0x60:temp55 + 0x60 + 0x20] = temp57 / 0x02 ** 0x60 & 0xffff;
                                var temp58 = memory[0x40:0x60];
                                var temp59 = temp58 + 0x60;
                                memory[0x40:0x60] = temp59;
                                var9 = temp55;
                                var12 = temp58;
                                var10 = temp56;
                                var11 = var9 + 0x80;
                                var temp60 = var10 + 0x01;
                                var13 = temp60;
                                var15 = temp59;
                                var14 = 0x03;
                                memory[var12:var12 + 0x20] = storage[var13] & 0xffff;
                                var18 = var12 + 0x20;
                                var16 = var13;
                                var17 = 0x02;
                            
                                if (var15 <= var18) { goto label_2045; }
                            
                            label_200E:
                                var temp61 = var16;
                                var temp62 = var17;
                                var temp63 = var18;
                                memory[temp63:temp63 + 0x20] = storage[temp61] / 0x0100 ** temp62 & 0xffff;
                                var temp64 = temp62 + 0x02;
                                var18 = temp63 + 0x20;
                                var temp65 = (temp64 + 0x01) / 0x20;
                                var16 = temp65 + temp61;
                                var17 = temp64 * (0x01 - temp65);
                            
                                if (var15 > var18) { goto label_200E; }
                            
                            label_2045:
                                memory[var11:var11 + 0x20] = var12;
                                var5 = var9;
                            
                                if (memory[var5:var5 + 0x20] & 0xffffffff) {
                                    memory[arg1 + 0x80:arg1 + 0x80 + 0x20] = var2 & 0xff;
                                    goto label_2074;
                                } else {
                                    memory[var5:var5 + 0x20] = var1 & 0xffffffff;
                                    memory[arg1 + 0x80:arg1 + 0x80 + 0x20] = var2 & 0xff;
                                    goto label_2074;
                                }
                            } else {
                                var9 = var5;
                                var10 = 0x08;
                                var11 = var7;
                            
                                if (var11 >= 0x0c) { assert(); }
                            
                                var temp66 = var9;
                                var temp67 = var11 * 0x02 + var10;
                                var10 = temp67;
                                storage[var10] = (((((((storage[var10] & ~0xffffffff) | (memory[temp66:temp66 + 0x20] & 0xffffffff)) & ~0xffff00000000) | (memory[temp66 + 0x20:temp66 + 0x20 + 0x20] & 0xffff) * 0x0100000000) & ~0xffffffffffff000000000000) | (memory[temp66 + 0x40:temp66 + 0x40 + 0x20] & 0xffffffffffff) * 0x01000000000000) & ~0xffff000000000000000000000000) | (memory[temp66 + 0x60:temp66 + 0x60 + 0x20] & 0xffff) * 0x02 ** 0x60;
                                var11 = 0x1f85;
                                var13 = memory[temp66 + 0x80:temp66 + 0x80 + 0x20];
                                var12 = var10 + 0x01;
                                var14 = 0x03;
                                goto label_3C87;
                            }
                        }
                    } else {
                        memory[var8 + 0x60:var8 + 0x60 + 0x20] = 0x00;
                    
                    label_1EB6:
                    
                        if (var2 == memory[arg1 + 0x80:arg1 + 0x80 + 0x20] & 0xff) { goto label_2074; }
                        else { goto label_1EC5; }
                    }
                } else if (memory[var8 + 0x40:var8 + 0x40 + 0x20] & 0xff != 0x0c) {
                    var0 = 0x00;
                    goto label_24E9;
                } else if (var2 != memory[var8 + 0x20:var8 + 0x20 + 0x20] & 0xff) {
                label_1E65:
                    memory[var8 + 0x40:var8 + 0x40 + 0x20] = var2 & 0xff;
                    goto label_1EB6;
                } else if (var4) {
                    var9 = 0x1e51;
                    var10 = arg1;
                    var11 = var2;
                    var9 = func_2B75(var10, var11);
                    var2 = var9;
                
                    if (var2 != 0x0c) { goto label_1E65; }
                
                    var0 = 0x00;
                
                label_24E9:
                    return var0;
                } else {
                    var0 = 0x00;
                    goto label_24E9;
                }
            } else if (memory[var5 + 0x40:var5 + 0x40 + 0x20] & 0xffffffffffff <= 0x00) {
                if (memory[var5:var5 + 0x20] & 0xffffffff) { goto label_1DA9; }
            
                memory[var5:var5 + 0x20] = var1 & 0xffffffff;
                goto label_1DA9;
            } else if (var1 > memory[var5:var5 + 0x20] & 0xffffffff) {
                var temp68 = var5;
                memory[temp68:temp68 + 0x20] = var1 & 0xffffffff;
                var9 = 0x00;
                memory[temp68 + 0x40:temp68 + 0x40 + 0x20] = var9;
                var10 = memory[arg1 + 0x60:arg1 + 0x60 + 0x20];
                var7 = var2;
                var11 = var7;
            
                if (var11 >= 0x0c) { assert(); }
            
                memory[var11 * 0x20 + var10:var11 * 0x20 + var10 + 0x20] = var9 & 0xff;
                goto label_1D1A;
            } else if (var4) {
            label_1CFC:
                var9 = 0x1d06;
                var10 = arg1;
                var11 = var2;
                var9 = func_2B75(var10, var11);
                var2 = var9;
            
                if (var2 != 0x0c) {
                label_1D1A:
                    goto label_1DA9;
                } else {
                    var0 = 0x00;
                    goto label_24E9;
                }
            } else {
                var0 = 0x00;
                goto label_24E9;
            }
        } else if (var4) { goto label_1CFC; }
        else {
            var0 = 0x00;
            goto label_24E9;
        }
    }
    
    function func_2164(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5) {
        arg4 = arg5 % arg4;
        arg5 = 0x00;
        var var0 = arg5;
        var var1 = 0x2c49;
        var1 = func_3BBC();
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x30;
        var temp0 = keccak256(memory[0x00:0x40]);
        var temp1 = arg0;
        storage[temp0] = (memory[temp1 + 0x60:temp1 + 0x60 + 0x20] & 0xff) * 0x01000000000000 | (((memory[temp1 + 0x40:temp1 + 0x40 + 0x20] & 0xff) * 0x010000000000 | (((memory[temp1 + 0x20:temp1 + 0x20 + 0x20] & 0xff) * 0x0100000000 | (((memory[temp1:temp1 + 0x20] & 0xffffffff) | (storage[temp0] & ~0xffffffff)) & ~0xff00000000)) & ~0xff0000000000)) & ~0xff000000000000);
        arg5 = msg.sender;
        var var2 = 0x2cdc;
        var var3 = arg5;
        var var4 = memory[temp1 + 0x60:temp1 + 0x60 + 0x20] & 0xff;
        var2 = func_345F(var3, var4);
        var0 = var2;
    
        if (memory[arg0 + 0x40:arg0 + 0x40 + 0x20] & 0xff == 0x0c) {
            var temp2 = arg1;
            var temp3 = var1;
            memory[temp3:temp3 + 0x20] = memory[temp2 + 0x40:temp2 + 0x40 + 0x20] & 0xffffffff;
            memory[temp3 + 0x20:temp3 + 0x20 + 0x20] = block.timestamp & 0xffffffffffffffff;
            memory[temp3 + 0x40:temp3 + 0x40 + 0x20] = arg4 & 0xff;
            memory[temp3 + 0x60:temp3 + 0x60 + 0x20] = memory[temp2 + 0x80:temp2 + 0x80 + 0x20] & 0xff;
            memory[temp3 + 0x80:temp3 + 0x80 + 0x20] = arg2 & 0xffff;
            memory[temp3 + 0xa0:temp3 + 0xa0 + 0x20] = arg3 & 0xff;
            memory[temp3 + 0xc0:temp3 + 0xc0 + 0x20] = 0x00;
            memory[temp3 + 0x0140:temp3 + 0x0140 + 0x20] = 0x00;
            memory[temp3 + 0x0160:temp3 + 0x0160 + 0x20] = 0x00;
            memory[0x00:0x20] = var0;
            memory[0x20:0x40] = 0x2f;
            var temp4 = keccak256(memory[0x00:0x40]);
            var temp5 = temp4;
            storage[temp5] = (memory[temp3:temp3 + 0x20] & 0xffffffff) | (storage[temp5] & ~0xffffffff);
            var temp6 = temp4;
            storage[temp6] = (memory[temp3 + 0x20:temp3 + 0x20 + 0x20] & 0xffffffffffffffff) * 0x0100 ** 0x04 | (storage[temp6] & ~(0xffffffffffffffff * 0x0100 ** 0x04));
            var temp7 = temp4;
            storage[temp7] = (memory[temp3 + 0x40:temp3 + 0x40 + 0x20] & 0xff) * 0x0100 ** 0x0c | (storage[temp7] & ~(0xff * 0x0100 ** 0x0c));
            var temp8 = temp4;
            storage[temp8] = (memory[temp3 + 0x60:temp3 + 0x60 + 0x20] & 0xff) * 0x0100 ** 0x0d | (storage[temp8] & ~(0xff * 0x0100 ** 0x0d));
            var temp9 = temp4;
            storage[temp9] = (memory[temp3 + 0x80:temp3 + 0x80 + 0x20] & 0xffff) * 0x0100 ** 0x0e | (storage[temp9] & ~(0xffff * 0x0100 ** 0x0e));
            var temp10 = temp4;
            storage[temp10] = (memory[temp3 + 0xa0:temp3 + 0xa0 + 0x20] & 0xff) * 0x0100 ** 0x10 | (storage[temp10] & ~(0xff * 0x0100 ** 0x10));
            var temp11 = temp4;
            storage[temp11] = (memory[temp3 + 0xc0:temp3 + 0xc0 + 0x20] & 0xffffffffffffffff) * 0x0100 ** 0x11 | (storage[temp11] & ~(0xffffffffffffffff * 0x0100 ** 0x11));
            var temp12 = temp4;
            storage[temp12] = (memory[temp3 + 0xe0:temp3 + 0xe0 + 0x20] & 0xff) * 0x0100 ** 0x19 | (storage[temp12] & ~(0xff * 0x0100 ** 0x19));
            var temp13 = temp4;
            storage[temp13] = (memory[temp3 + 0x0100:temp3 + 0x0100 + 0x20] & 0xff) * 0x0100 ** 0x1a | (storage[temp13] & ~(0xff * 0x0100 ** 0x1a));
            var temp14 = temp4;
            storage[temp14] = (memory[temp3 + 0x0120:temp3 + 0x0120 + 0x20] & 0xffff) * 0x0100 ** 0x1b | (storage[temp14] & ~(0xffff * 0x0100 ** 0x1b));
            var temp15 = temp4;
            storage[temp15] = (memory[temp3 + 0x0140:temp3 + 0x0140 + 0x20] & 0xff) * 0x0100 ** 0x1d | (storage[temp15] & ~(0xff * 0x0100 ** 0x1d));
            var temp16 = temp4;
            storage[temp16] = (memory[temp3 + 0x0160:temp3 + 0x0160 + 0x20] & 0xff) * 0x0100 ** 0x1e | (storage[temp16] & ~(0xff * 0x0100 ** 0x1e));
            return;
        } else {
            memory[0x00:0x20] = var0;
            memory[0x20:0x40] = 0x2f;
            var temp17 = keccak256(memory[0x00:0x40]);
            var temp18 = memory[0x40:0x60];
            memory[0x40:0x60] = temp18 + 0x0180;
            var temp19 = storage[temp17];
            memory[temp18:temp18 + 0x20] = temp19 & 0xffffffff;
            memory[temp18 + 0x20:temp18 + 0x20 + 0x20] = temp19 / 0x0100000000 & 0xffffffffffffffff;
            memory[temp18 + 0x40:temp18 + 0x40 + 0x20] = temp19 / 0x02 ** 0x60 & 0xff;
            memory[temp18 + 0x60:temp18 + 0x60 + 0x20] = temp19 / 0x0100000000000000000000000000 & 0xff;
            memory[temp18 + 0x80:temp18 + 0x80 + 0x20] = temp19 / 0x010000000000000000000000000000 & 0xffff;
            memory[temp18 + 0xa0:temp18 + 0xa0 + 0x20] = temp19 / 0x0100000000000000000000000000000000 & 0xff;
            var temp20 = temp18 + 0x0100;
            memory[temp20:temp20 + 0x20] = temp19 / 0x02 ** 0xd0 & 0xff;
            var temp21 = temp18 + 0x0120;
            memory[temp21:temp21 + 0x20] = temp19 / 0x01000000000000000000000000000000000000000000000000000000 & 0xffff;
            var temp22 = temp18 + 0x0140;
            memory[temp22:temp22 + 0x20] = temp19 / 0x02 ** 0xe8 & 0xff;
            memory[temp18 + 0x0160:temp18 + 0x0160 + 0x20] = temp19 / 0x02 ** 0xf0 & 0xff;
            memory[temp18 + 0xc0:temp18 + 0xc0 + 0x20] = block.timestamp & 0xffffffffffffffff;
            memory[temp18 + 0xe0:temp18 + 0xe0 + 0x20] = arg4 & 0xff;
            memory[temp20:temp20 + 0x20] = memory[arg1 + 0x80:arg1 + 0x80 + 0x20] & 0xff;
            memory[temp21:temp21 + 0x20] = arg2 & 0xffff;
            var1 = temp18;
            memory[temp22:temp22 + 0x20] = arg3 & 0xff;
            var temp23 = var1;
            memory[0x00:0x20] = var0;
            memory[0x20:0x40] = 0x2f;
            var temp24 = keccak256(memory[0x00:0x40]);
            var temp25 = temp24;
            storage[temp25] = (memory[temp23:temp23 + 0x20] & 0xffffffff) | (storage[temp25] & ~0xffffffff);
            var temp26 = temp24;
            storage[temp26] = (memory[temp23 + 0x20:temp23 + 0x20 + 0x20] & 0xffffffffffffffff) * 0x0100 ** 0x04 | (storage[temp26] & ~(0xffffffffffffffff * 0x0100 ** 0x04));
            var temp27 = temp24;
            storage[temp27] = (memory[temp23 + 0x40:temp23 + 0x40 + 0x20] & 0xff) * 0x0100 ** 0x0c | (storage[temp27] & ~(0xff * 0x0100 ** 0x0c));
            var temp28 = temp24;
            storage[temp28] = (memory[temp23 + 0x60:temp23 + 0x60 + 0x20] & 0xff) * 0x0100 ** 0x0d | (storage[temp28] & ~(0xff * 0x0100 ** 0x0d));
            var temp29 = temp24;
            storage[temp29] = (memory[temp23 + 0x80:temp23 + 0x80 + 0x20] & 0xffff) * 0x0100 ** 0x0e | (storage[temp29] & ~(0xffff * 0x0100 ** 0x0e));
            var temp30 = temp24;
            storage[temp30] = (memory[temp23 + 0xa0:temp23 + 0xa0 + 0x20] & 0xff) * 0x0100 ** 0x10 | (storage[temp30] & ~(0xff * 0x0100 ** 0x10));
            var temp31 = temp24;
            storage[temp31] = (memory[temp23 + 0xc0:temp23 + 0xc0 + 0x20] & 0xffffffffffffffff) * 0x0100 ** 0x11 | (storage[temp31] & ~(0xffffffffffffffff * 0x0100 ** 0x11));
            var temp32 = temp24;
            storage[temp32] = (memory[temp23 + 0xe0:temp23 + 0xe0 + 0x20] & 0xff) * 0x0100 ** 0x19 | (storage[temp32] & ~(0xff * 0x0100 ** 0x19));
            var temp33 = temp24;
            storage[temp33] = (memory[temp23 + 0x0100:temp23 + 0x0100 + 0x20] & 0xff) * 0x0100 ** 0x1a | (storage[temp33] & ~(0xff * 0x0100 ** 0x1a));
            var temp34 = temp24;
            storage[temp34] = (memory[temp23 + 0x0120:temp23 + 0x0120 + 0x20] & 0xffff) * 0x0100 ** 0x1b | (storage[temp34] & ~(0xffff * 0x0100 ** 0x1b));
            var temp35 = temp24;
            storage[temp35] = (memory[temp23 + 0x0140:temp23 + 0x0140 + 0x20] & 0xff) * 0x0100 ** 0x1d | (storage[temp35] & ~(0xff * 0x0100 ** 0x1d));
            var temp36 = temp24;
            storage[temp36] = (memory[temp23 + 0x0160:temp23 + 0x0160 + 0x20] & 0xff) * 0x0100 ** 0x1e | (storage[temp36] & ~(0xff * 0x0100 ** 0x1e));
            return;
        }
    }
    
    function func_24F7(var arg0) {
        var var0 = msg.sender;
        var var1 = 0x00;
        var var2 = 0x2503;
        var var3 = var0;
        var2 = func_2992(var3);
        var temp0 = var2;
        var1 = temp0;
        var2 = 0x2510;
        var3 = var0;
        var var4 = var1;
        var var5 = arg0;
        func_29DC(var3, var4, var5);
        var temp1 = memory[0x40:0x60];
        memory[temp1:temp1 + 0x20] = 0x7f2dc9b500000000000000000000000000000000000000000000000000000000;
        memory[temp1 + 0x04:temp1 + 0x04 + 0x20] = var1;
        var temp2 = arg0 / 0x64;
        memory[temp1 + 0x24:temp1 + 0x24 + 0x20] = temp2 * 0x06;
        memory[temp1 + 0x44:temp1 + 0x44 + 0x20] = temp2 * 0x03;
        arg0 = temp2;
        var2 = 0x62a364f7cba3be8fc9dcfdde12cabec8244af381;
        var3 = 0x7f2dc9b5;
        var4 = temp1 + 0x64;
        var5 = 0x00;
        var var6 = memory[0x40:0x60];
        var var7 = temp1 - var6 + 0x64;
        var var8 = var6;
        var var9 = var5;
        var var10 = var2;
        var var11 = !address(var10).code.length;
    
        if (var11) { revert(memory[0x00:0x00]); }
    
        var temp3;
        temp3, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
        var5 = !temp3;
    
        if (!var5) { return; }
    
        var temp4 = returndata.length;
        memory[0x00:0x00 + temp4] = returndata[0x00:0x00 + temp4];
        revert(memory[0x00:0x00 + returndata.length]);
    }
    
    function func_25B0(var arg0, var arg1) {
        var var0 = 0x25b8;
        var0 = func_3B38();
        var var1 = 0x00;
        var var2 = var1;
        var var3 = 0x00;
        var var4 = var3;
        var var5 = 0x25c7;
        var var6 = arg0;
        var5 = func_3059(var6);
    
        if (!var5) {
            var1 = 0x02;
            var3 = 0x0de0b6b3a7640000;
            var4 = 0x07d0;
            var5 = 0x08;
            var6 = arg0;
        
            if (var6 >= 0x0c) { assert(); }
        
        label_2605:
            var temp0 = memory[0x40:0x60];
            memory[0x40:0x60] = temp0 + 0xa0;
            var temp1 = var6 * 0x02 + var5;
            var temp2 = storage[temp1];
            memory[temp0:temp0 + 0x20] = temp2 & 0xffffffff;
            memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = temp2 / 0x0100000000 & 0xffff;
            memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = temp2 / 0x01000000000000 & 0xffffffffffff;
            memory[temp0 + 0x60:temp0 + 0x60 + 0x20] = temp2 / 0x02 ** 0x60 & 0xffff;
            var temp3 = memory[0x40:0x60];
            var temp4 = temp3 + 0x60;
            memory[0x40:0x60] = temp4;
            var5 = temp0;
            var6 = temp1;
            var var8 = temp3;
            var var7 = var5 + 0x80;
            var temp5 = var6 + 0x01;
            var var9 = temp5;
            var var10 = 0x03;
            var var11 = temp4;
            memory[var8:var8 + 0x20] = storage[var9] & 0xffff;
            var var14 = var8 + 0x20;
            var var12 = var9;
            var var13 = 0x02;
        
            if (var11 <= var14) { goto label_26B4; }
        
        label_267D:
            var temp6 = var12;
            var temp7 = var13;
            var temp8 = var14;
            memory[temp8:temp8 + 0x20] = storage[temp6] / 0x0100 ** temp7 & 0xffff;
            var temp9 = temp7 + 0x02;
            var14 = temp8 + 0x20;
            var temp10 = (temp9 + 0x01) / 0x20;
            var12 = temp10 + temp6;
            var13 = temp9 * (0x01 - temp10);
        
            if (var11 > var14) { goto label_267D; }
        
        label_26B4:
            memory[var7:var7 + 0x20] = var8;
            var0 = var5;
        
            if (memory[var0 + 0x20:var0 + 0x20 + 0x20] & 0xffff < var4) { goto label_25A7; }
        
            var2 = memory[var0 + 0x40:var0 + 0x40 + 0x20] & 0xffffffffffff;
        
            if (block.number <= var2 + var1) {
            label_25A7:
                return;
            } else if (block.number <= var2 + 0xfa) {
                var temp11 = memory[0x00:0x20];
                memory[0x00:0x20] = code[0x3e85:0x3ea5];
                var temp12 = memory[0x00:0x20];
                memory[0x00:0x20] = temp11;
                memory[0x00:0x20] = temp12;
                memory[0x20:0x40] = 0x33;
                var temp13 = memory[0x00:0x20];
                memory[0x00:0x20] = code[0x3e65:0x3e85];
                var temp14 = memory[0x00:0x20];
                memory[0x00:0x20] = temp13;
                storage[temp14] = var3 + storage[temp14];
            
                if (arg1 < memory[var0:var0 + 0x20] + 0x18 & 0xffffffff) {
                    var2 = 0x01;
                
                    if (var2 > var1) {
                    label_279D:
                        var5 = 0x27af;
                        var6 = memory[var0:var0 + 0x20] & 0xffffffff;
                        var7 = arg0;
                        var5 = func_3452(var6, var7);
                        memory[0x00:0x20] = var5;
                        memory[0x20:0x40] = 0x2d;
                        var temp15 = keccak256(memory[0x00:0x40]);
                        var temp16 = var0;
                        var6 = temp15;
                        storage[var6] = (memory[temp16 + 0x60:temp16 + 0x60 + 0x20] & 0xffff) * 0x02 ** 0x60 | (((memory[temp16 + 0x40:temp16 + 0x40 + 0x20] & 0xffffffffffff) * 0x01000000000000 | (((memory[temp16 + 0x20:temp16 + 0x20 + 0x20] & 0xffff) * 0x0100000000 | (((memory[temp16:temp16 + 0x20] & 0xffffffff) | (storage[var6] & ~0xffffffff)) & ~0xffff00000000)) & ~0xffffffffffff000000000000)) & ~0xffff000000000000000000000000);
                        var4 = var5;
                        var5 = temp16;
                        var7 = 0x285f;
                        var9 = memory[var5 + 0x80:var5 + 0x80 + 0x20];
                        var8 = var6 + 0x01;
                        var10 = 0x03;
                    
                    label_3C87:
                        var temp17 = var9;
                        var9 = var8 + 0x01;
                        var11 = var8;
                        var12 = temp17;
                    
                        if (!var10) {
                        label_3D0D:
                            var temp18 = var9;
                            var9 = 0x0502;
                            var10 = temp18;
                            var temp19 = var10;
                            var10 = 0x052e;
                            var temp20 = var11;
                            var12 = temp20;
                            var11 = temp19;
                        
                            if (var11 <= var12) {
                                var10 = func_0502(var11, var12);
                                var9 = var10;
                                // Error: Could not resolve jump destination!
                            } else {
                            label_3E23:
                                var temp21 = var12;
                                storage[temp21] = storage[temp21] & ~0xffff;
                                var12 = temp21 + 0x01;
                            
                                if (var11 > var12) { goto label_3E23; }
                            
                                var10 = func_0502(var11, var12);
                                // Error: Could not resolve method call return address!
                            }
                        } else {
                            var temp22 = var12;
                            var temp23 = var10;
                            var10 = temp22;
                            var12 = var10 + temp23 * 0x20;
                            var13 = 0x00;
                        
                            if (var12 <= var10) {
                            label_3CDD:
                            
                                if (!var13) { goto label_3D0D; }
                            
                                var temp24 = var11;
                                var temp25 = var13;
                                storage[temp24] = ~(0x0100 ** temp25 * 0xffff) & storage[temp24];
                                var temp26 = temp25 + 0x02;
                                var temp27 = (temp26 + 0x01) / 0x20;
                                var11 = temp27 + temp24;
                                var13 = 0x01 - temp27 * temp26;
                                goto label_3CDD;
                            } else {
                            label_3CA6:
                                var temp28 = var10;
                                var temp29 = var11;
                                var temp30 = var13;
                                var temp31 = 0x0100 ** temp30;
                                storage[temp29] = (memory[temp28:temp28 + 0x20] & 0xffff) * temp31 | (~(temp31 * 0xffff) & storage[temp29]);
                                var10 = temp28 + 0x20;
                                var temp32 = temp30 + 0x02;
                                var temp33 = (temp32 + 0x01) / 0x20;
                                var11 = temp33 + temp29;
                                var13 = 0x01 - temp33 * temp32;
                            
                                if (var12 <= var10) { goto label_3CDD; }
                                else { goto label_3CA6; }
                            }
                        }
                    } else {
                    label_2786:
                        var5 = 0x2792;
                        var6 = var0;
                        var7 = arg0;
                        var8 = var2;
                        var9 = 0x01;
                        func_305F(var6, var7, var8, var9);
                        var2 = var2 + 0x01;
                    
                        if (var2 > var1) { goto label_279D; }
                        else { goto label_2786; }
                    }
                } else {
                    var2 = 0x01;
                
                    if (var2 > var1) {
                    label_2774:
                        memory[0x00:0x20] = storage[0x03];
                        memory[0x20:0x40] = 0x33;
                        var temp34 = keccak256(memory[0x00:0x40]);
                        storage[temp34] = storage[temp34] + 0x06f05b59d3b20000;
                        memory[0x00:0x20] = msg.sender;
                        memory[0x20:0x40] = 0x07;
                        var temp35 = keccak256(memory[0x00:0x40]);
                        storage[temp35] = storage[temp35] + 0x0100000001;
                        var6 = 0x20;
                        var5 = 0x01;
                        var7 = arg0;
                    
                        if (var7 >= 0x0c) { assert(); }
                    
                        var temp36 = var7 + var6;
                        storage[temp36] = storage[temp36] + var5;
                        var temp37 = var0;
                        memory[temp37 + 0x20:temp37 + 0x20 + 0x20] = 0x00;
                        memory[temp37 + 0x60:temp37 + 0x60 + 0x20] = 0x00;
                        var temp38 = temp37 + 0x80;
                        memory[memory[temp38:temp38 + 0x20]:memory[temp38:temp38 + 0x20] + 0x20] = 0x00;
                        memory[memory[temp38:temp38 + 0x20] + 0x20:memory[temp38:temp38 + 0x20] + 0x20 + 0x20] = 0x00;
                        memory[memory[temp38:temp38 + 0x20] + 0x40:memory[temp38:temp38 + 0x20] + 0x40 + 0x20] = 0x00;
                    
                    label_28D9:
                        var5 = var0;
                        var6 = 0x08;
                        var7 = arg0;
                    
                        if (var7 >= 0x0c) { assert(); }
                    
                        var temp39 = var5;
                        var temp40 = var7 * 0x02 + var6;
                        var6 = temp40;
                        storage[var6] = (((((((storage[var6] & ~0xffffffff) | (memory[temp39:temp39 + 0x20] & 0xffffffff)) & ~0xffff00000000) | (memory[temp39 + 0x20:temp39 + 0x20 + 0x20] & 0xffff) * 0x0100000000) & ~0xffffffffffff000000000000) | (memory[temp39 + 0x40:temp39 + 0x40 + 0x20] & 0xffffffffffff) * 0x01000000000000) & ~0xffff000000000000000000000000) | (memory[temp39 + 0x60:temp39 + 0x60 + 0x20] & 0xffff) * 0x02 ** 0x60;
                        var7 = 0x0c70;
                        var8 = var6 + 0x01;
                        var9 = memory[temp39 + 0x80:temp39 + 0x80 + 0x20];
                        var10 = 0x03;
                        goto label_3C87;
                    } else {
                    label_275D:
                        var5 = 0x2769;
                        var6 = var0;
                        var7 = arg0;
                        var8 = var2;
                        var9 = 0x00;
                        func_305F(var6, var7, var8, var9);
                        var2 = var2 + 0x01;
                    
                        if (var2 > var1) { goto label_2774; }
                        else { goto label_275D; }
                    }
                }
            } else {
                memory[var0 + 0x40:var0 + 0x40 + 0x20] = block.number + 0x01 & 0xffffffffffff;
                goto label_28D9;
            }
        } else {
            var1 = 0x03;
            var3 = 0x22b1c8c1227a0000;
            var4 = 0x1388;
            var5 = 0x08;
            var6 = arg0;
        
            if (var6 < 0x0c) { goto label_2605; }
            else { assert(); }
        }
    }
    
    function func_2992(var arg0) returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (arg0 & 0x02 ** 0xa0 - 0x01) * 0x02 ** 0x60;
        var temp1 = memory[0x40:0x60];
        return keccak256(memory[temp1:temp1 + temp0 - temp1 + 0x14]);
    }
    
    function func_29B8(var arg0) {
        if (!arg0) { return; }
    
        storage[0x02] = arg0;
    }
    
    function func_29C7() returns (var r0) {
        var var0 = 0x00;
        var var1 = storage[0x02];
        var var2 = 0x29d6;
        var var3 = msg.sender;
        var2 = func_2992(var3);
        return var2 == var1;
    }
    
    function func_29DC(var arg0, var arg1, var arg2) {
        memory[0x00:0x20] = arg1;
        memory[0x20:0x40] = 0x32;
        var temp0 = storage[keccak256(memory[0x00:0x40])];
        var var0 = temp0 + arg2;
        var var1 = temp0 / 0x016345785d8a0000;
        var var2 = var0 / 0x016345785d8a0000;
    
        if (var2 <= var1) {
        label_2B40:
            memory[0x00:0x20] = arg1;
            memory[0x20:0x40] = 0x32;
            storage[keccak256(memory[0x00:0x40])] = var0;
            return;
        } else if (storage[0x31] <= 0x00) {
        label_2AAC:
        
            if (var1) { goto label_2B40; }
        
            var temp1 = memory[0x40:0x60];
            memory[temp1:temp1 + 0x20] = 0xb9431a2a00000000000000000000000000000000000000000000000000000000;
            memory[temp1 + 0x04:temp1 + 0x04 + 0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
            var var3 = 0x573aaaa81154cd24e96f0cb97fd86110b8f6767f;
            var var4 = 0xb9431a2a;
            var var5 = temp1 + 0x24;
            var var6 = 0x00;
            var var7 = memory[0x40:0x60];
            var var8 = temp1 - var7 + 0x24;
            var var9 = var7;
            var var10 = var6;
            var var11 = var3;
            var var12 = !address(var11).code.length;
        
            if (var12) { revert(memory[0x00:0x00]); }
        
            var temp2;
            temp2, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
            var6 = !temp2;
        
            if (!var6) { goto label_2B40; }
        
            var temp3 = returndata.length;
            memory[0x00:0x00 + temp3] = returndata[0x00:0x00 + temp3];
            revert(memory[0x00:0x00 + returndata.length]);
        } else {
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = 0xfb93210800000000000000000000000000000000000000000000000000000000;
            memory[temp4 + 0x04:temp4 + 0x04 + 0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
            memory[temp4 + 0x24:temp4 + 0x24 + 0x20] = storage[0x31] * (var2 - var1);
            var3 = 0x573aaaa81154cd24e96f0cb97fd86110b8f6767f;
            var4 = 0xfb932108;
            var5 = temp4 + 0x44;
            var6 = 0x00;
            var7 = memory[0x40:0x60];
            var8 = temp4 - var7 + 0x44;
            var9 = var7;
            var10 = var6;
            var11 = var3;
            var12 = !address(var11).code.length;
        
            if (var12) { revert(memory[0x00:0x00]); }
        
            var temp5;
            temp5, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
            var6 = !temp5;
        
            if (!var6) { goto label_2AAC; }
        
            var temp6 = returndata.length;
            memory[0x00:0x00 + temp6] = returndata[0x00:0x00 + temp6];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_2B59(var arg0) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 < 0x06) { return 0x1388; }
    
        var var1 = 0x07d0;
        return var1;
    }
    
    function func_2B75(var arg0, var arg1) returns (var r0) {
        var var0 = arg1 + 0x01;
        var var1 = 0x2b82;
        var var2 = arg1;
        var1 = func_3059(var2);
    
        if (!var1) {
            var0 = arg1 + 0x01;
        
            if (var0 >= 0x0c) {
            label_2BFE:
                var0 = 0x06;
            
            label_2C02:
            
                if (var0 >= arg1) { return 0x0c; }
            
                var1 = memory[arg0 + 0x60:arg0 + 0x60 + 0x20];
                var2 = var0;
            
                if (var2 >= 0x0c) { assert(); }
            
                if (memory[var2 * 0x20 + var1:var2 * 0x20 + var1 + 0x20] & 0xff) {
                    var0 = var0 + 0x01;
                    goto label_2C02;
                } else {
                label_2B6F:
                    return var0;
                }
            } else {
            label_2BD4:
                var1 = memory[arg0 + 0x60:arg0 + 0x60 + 0x20];
                var2 = var0;
            
                if (var2 >= 0x0c) { assert(); }
            
                if (!(memory[var2 * 0x20 + var1:var2 * 0x20 + var1 + 0x20] & 0xff)) { goto label_2B6F; }
            
                var0 = var0 + 0x01;
            
                if (var0 >= 0x0c) { goto label_2BFE; }
                else { goto label_2BD4; }
            }
        } else {
        label_2B88:
        
            if (var0 >= 0x06) {
                var0 = 0x00;
                goto label_2C02;
            } else {
                var1 = memory[arg0 + 0x60:arg0 + 0x60 + 0x20];
                var2 = var0;
            
                if (var2 >= 0x0c) { assert(); }
            
                if (!(memory[var2 * 0x20 + var1:var2 * 0x20 + var1 + 0x20] & 0xff)) { goto label_2B6F; }
            
                var0 = var0 + 0x01;
                goto label_2B88;
            }
        }
    }
    
    function func_304D(var arg0, var arg1) returns (var r0) { return arg0 * 0x010000 + arg1; }
    
    function func_3059(var arg0) returns (var r0) { return 0x06 > arg0; }
    
    function func_305F(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x00;
        var var1 = 0x3069;
        var1 = func_3D19();
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = block.blockHash(arg2 + (memory[arg0 + 0x40:arg0 + 0x40 + 0x20] & 0xffffffffffff));
        var temp1 = memory[0x40:0x60];
        var0 = keccak256(memory[temp1:temp1 + temp0 - temp1 + 0x20]);
        var var2 = 0x00;
        var var3 = var2;
        var var4 = var3;
        var var5 = var4;
        var var6 = 0x309d;
        var var7 = arg0;
        var var8 = arg1;
        var var9 = var0;
        var6 = func_3472(var7, var8, var9);
        memory[var1:var1 + 0x20] = var6;
        var temp2 = memory[0x40:0x60];
        memory[temp2:temp2 + 0x20] = var0;
        var temp3 = memory[0x40:0x60];
        var5 = var5;
        var0 = keccak256(memory[temp3:temp3 + temp2 - temp3 + 0x20]);
        var6 = 0x30be;
        var7 = arg0;
        var8 = arg1;
        var9 = var0;
        var6 = func_3472(var7, var8, var9);
    
    label_30BE:
        var temp4 = var1;
        var temp5 = var6;
        memory[temp4 + 0x20:temp4 + 0x20 + 0x20] = temp5;
        var temp6 = 0x02 ** 0xa0 - 0x01;
    
        if (memory[memory[temp4:temp4 + 0x20]:memory[temp4:temp4 + 0x20] + 0x20] & temp6 == temp6 & memory[temp5:temp5 + 0x20]) {
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = var0;
            var temp8 = memory[0x40:0x60];
            var5 = var5;
            var0 = keccak256(memory[temp8:temp8 + temp7 - temp8 + 0x20]);
            var6 = 0x30be;
            var7 = arg0;
            var8 = arg1;
            var9 = var0;
            var6 = func_3472(var7, var8, var9);
            goto label_30BE;
        } else {
        label_30E6:
            var temp9 = memory[0x40:0x60];
            memory[temp9:temp9 + 0x20] = var0;
            var temp10 = memory[0x40:0x60];
            var5 = var5;
            var0 = keccak256(memory[temp10:temp10 + temp9 - temp10 + 0x20]);
            var6 = 0x3104;
            var7 = arg0;
            var8 = arg1;
            var9 = var0;
            var6 = func_3472(var7, var8, var9);
            var temp11 = var1;
            var temp12 = var6;
            memory[temp11 + 0x40:temp11 + 0x40 + 0x20] = temp12;
            var temp13 = 0x02 ** 0xa0 - 0x01;
            var6 = memory[memory[temp11:temp11 + 0x20]:memory[temp11:temp11 + 0x20] + 0x20] & temp13 == temp13 & memory[temp12:temp12 + 0x20];
        
            if (memory[memory[temp11:temp11 + 0x20]:memory[temp11:temp11 + 0x20] + 0x20] & temp13 == temp13 & memory[temp12:temp12 + 0x20]) {
                var temp34 = var1;
                var temp35 = 0x02 ** 0xa0 - 0x01;
            
                if (memory[memory[temp34 + 0x20:temp34 + 0x20 + 0x20]:memory[temp34 + 0x20:temp34 + 0x20 + 0x20] + 0x20] & temp35 == temp35 & memory[memory[temp34 + 0x40:temp34 + 0x40 + 0x20]:memory[temp34 + 0x40:temp34 + 0x40 + 0x20] + 0x20]) { goto label_314C; }
                else { goto label_3148; }
            } else if (!var6) {
            label_314C:
                goto label_30E6;
            } else {
            label_3148:
                var temp14 = var1;
                var2 = (memory[memory[temp14:temp14 + 0x20] + 0x80:memory[temp14:temp14 + 0x20] + 0x80 + 0x20] & 0xff) + (memory[memory[temp14 + 0x20:temp14 + 0x20 + 0x20] + 0x80:memory[temp14 + 0x20:temp14 + 0x20 + 0x20] + 0x80 + 0x20] & 0xff) + (memory[memory[temp14 + 0x20 * 0x02:temp14 + 0x20 * 0x02 + 0x20] + 0x80:memory[temp14 + 0x20 * 0x02:temp14 + 0x20 * 0x02 + 0x20] + 0x80 + 0x20] & 0xff);
            
                if (arg3 <= 0x00) {
                label_31B0:
                    var6 = var2 * 0x0a;
                    var7 = 0x31bd;
                    var8 = arg1;
                    var7 = func_365B(var8);
                    var7 = (memory[arg0 + 0x20:arg0 + 0x20 + 0x20] & 0xffff) * 0x205466db74c000 - var7 + ~0x09b6e64a8ec5ffff;
                
                    if (!var6) { assert(); }
                
                    var3 = var7 / var6;
                    var2 = arg2;
                    var6 = 0x31f3;
                    var7 = arg1;
                    var6 = func_3059(var7);
                
                    if (!var6) {
                        if (arg2 != 0x01) {
                            var3 = var3 * 0x07;
                        
                        label_3246:
                        
                            if (arg3 <= 0x00) {
                                var5 = 0x00;
                            
                                if (var5 >= 0x03) {
                                label_0C70:
                                    return;
                                } else {
                                label_33F8:
                                    var6 = 0x3411;
                                    var7 = var1;
                                    var8 = var5;
                                
                                    if (var8 >= 0x03) { assert(); }
                                
                                    var6 = func_3406(var7, var8);
                                    var0 = var6;
                                    var6 = var1;
                                    var7 = var5;
                                
                                    if (var7 >= 0x03) { assert(); }
                                
                                    var temp15 = memory[memory[var7 * 0x20 + var6:var7 * 0x20 + var6 + 0x20] + 0x80:memory[var7 * 0x20 + var6:var7 * 0x20 + var6 + 0x20] + 0x80 + 0x20];
                                    memory[0x00:0x20] = var0;
                                    memory[0x20:0x40] = 0x33;
                                    var temp16 = keccak256(memory[0x00:0x40]);
                                    storage[temp16] = storage[temp16] + var3 * (temp15 & 0xff);
                                    var5 = var5 + 0x01;
                                
                                    if (var5 >= 0x03) { goto label_0C70; }
                                    else { goto label_33F8; }
                                }
                            } else {
                                var5 = 0x00;
                            
                                if (var5 >= 0x03) {
                                label_32E3:
                                    var6 = 0x32f6;
                                    var7 = memory[arg0:arg0 + 0x20] & 0xffffffff;
                                    var8 = arg1;
                                    var9 = arg2;
                                    var6 = func_3A33(var7, var8, var9);
                                    var temp17 = memory[0x40:0x60];
                                    memory[0x40:0x60] = temp17 + 0xc0;
                                    var temp18 = var1;
                                    var temp19 = 0x02 ** 0xa0 - 0x01;
                                    var temp20 = temp17 + 0x60;
                                    memory[temp20:temp20 + 0x20] = temp19 & memory[memory[temp18:temp18 + 0x20]:memory[temp18:temp18 + 0x20] + 0x20];
                                    var temp21 = temp18 + 0x20;
                                    memory[temp17 + 0x80:temp17 + 0x80 + 0x20] = temp19 & memory[memory[temp21:temp21 + 0x20]:memory[temp21:temp21 + 0x20] + 0x20];
                                    var temp22 = temp18 + 0x40;
                                    memory[temp17 + 0xa0:temp17 + 0xa0 + 0x20] = temp19 & memory[memory[temp22:temp22 + 0x20]:memory[temp22:temp22 + 0x20] + 0x20];
                                    memory[temp17:temp17 + 0x20] = temp20;
                                    var temp23 = memory[0x40:0x60];
                                    memory[0x40:0x60] = temp23 + 0x60;
                                    memory[temp23:temp23 + 0x20] = memory[memory[temp18:temp18 + 0x20] + 0x40:memory[temp18:temp18 + 0x20] + 0x40 + 0x20] & 0xffff;
                                    memory[temp23 + 0x20:temp23 + 0x20 + 0x20] = memory[memory[temp21:temp21 + 0x20] + 0x40:memory[temp21:temp21 + 0x20] + 0x40 + 0x20] & 0xffff;
                                    memory[temp23 + 0x40:temp23 + 0x40 + 0x20] = memory[memory[temp22:temp22 + 0x20] + 0x40:memory[temp22:temp22 + 0x20] + 0x40 + 0x20] & 0xffff;
                                    memory[temp17 + 0x20:temp17 + 0x20 + 0x20] = temp23;
                                    var temp24 = memory[0x40:0x60];
                                    memory[0x40:0x60] = temp24 + 0x60;
                                    memory[temp24:temp24 + 0x20] = memory[memory[temp18:temp18 + 0x20] + 0x60:memory[temp18:temp18 + 0x20] + 0x60 + 0x20] & 0xffff;
                                    memory[temp24 + 0x20:temp24 + 0x20 + 0x20] = memory[memory[temp21:temp21 + 0x20] + 0x60:memory[temp21:temp21 + 0x20] + 0x60 + 0x20] & 0xffff;
                                    memory[temp24 + 0x40:temp24 + 0x40 + 0x20] = memory[memory[temp22:temp22 + 0x20] + 0x60:memory[temp22:temp22 + 0x20] + 0x60 + 0x20] & 0xffff;
                                    memory[temp17 + 0x40:temp17 + 0x40 + 0x20] = temp24;
                                    memory[0x00:0x20] = var6;
                                    memory[0x20:0x40] = 0x2e;
                                    var2 = var6;
                                    var7 = keccak256(memory[0x00:0x40]);
                                    var6 = temp17;
                                    var8 = 0x33b5;
                                    var var10 = memory[var6:var6 + 0x20];
                                    var9 = var7;
                                    var var11 = 0x03;
                                    var var12 = var9;
                                    var var13 = var10;
                                    var10 = var12 + 0x03;
                                
                                    if (!var11) {
                                    label_3D9D:
                                        var temp25 = var10;
                                        var10 = 0x0502;
                                        var11 = temp25;
                                        var temp26 = var11;
                                        var11 = 0x052e;
                                        var temp27 = var12;
                                        var13 = temp27;
                                        var12 = temp26;
                                    
                                        if (var12 <= var13) {
                                            var11 = func_0502(var12, var13);
                                        
                                        label_052E:
                                            var10 = var11;
                                            // Error: Could not resolve jump destination!
                                        } else {
                                            var11 = func_3E42(var12, var13);
                                            goto label_052E;
                                        }
                                    } else {
                                        var temp28 = var11;
                                        var temp29 = var13;
                                        var11 = temp29;
                                        var13 = var11 + temp28 * 0x20;
                                    
                                        if (var13 <= var11) { goto label_3D9D; }
                                    
                                    label_3D64:
                                        var temp30 = var11;
                                        var temp31 = var12;
                                        storage[temp31] = (memory[temp30:temp30 + 0x20] & 0x02 ** 0xa0 - 0x01) | (storage[temp31] & ~0xffffffffffffffffffffffffffffffffffffffff);
                                        var11 = temp30 + 0x20;
                                        var13 = var13;
                                        var12 = temp31 + 0x01;
                                    
                                        if (var13 <= var11) { goto label_3D9D; }
                                        else { goto label_3D64; }
                                    }
                                } else {
                                label_325D:
                                    var6 = var1;
                                    var7 = var5;
                                
                                    if (var7 >= 0x03) { assert(); }
                                
                                    var4 = memory[memory[var7 * 0x20 + var6:var7 * 0x20 + var6 + 0x20]:memory[var7 * 0x20 + var6:var7 * 0x20 + var6 + 0x20] + 0x20];
                                    var6 = var1;
                                    var7 = var5;
                                
                                    if (var7 >= 0x03) { assert(); }
                                
                                    arg3 = memory[memory[var7 * 0x20 + var6:var7 * 0x20 + var6 + 0x20] + 0x20:memory[var7 * 0x20 + var6:var7 * 0x20 + var6 + 0x20] + 0x20 + 0x20] & 0xffffffff;
                                    var6 = 0x3296;
                                    var7 = var4;
                                    var6 = func_2992(var7);
                                    var0 = var6;
                                    var6 = var1;
                                    var7 = var5;
                                
                                    if (var7 >= 0x03) { assert(); }
                                
                                    var temp32 = memory[memory[var7 * 0x20 + var6:var7 * 0x20 + var6 + 0x20] + 0x80:memory[var7 * 0x20 + var6:var7 * 0x20 + var6 + 0x20] + 0x80 + 0x20];
                                    memory[0x00:0x20] = var0;
                                    memory[0x20:0x40] = 0x33;
                                    var temp33 = keccak256(memory[0x00:0x40]);
                                    storage[temp33] = storage[temp33] + var3 * (temp32 & 0xff);
                                    var6 = 0x32db;
                                    var7 = arg1;
                                    var8 = var4;
                                    var9 = arg3;
                                    var10 = var2;
                                    func_3682(var7, var8, var9, var10);
                                    var5 = var5 + 0x01;
                                
                                    if (var5 >= 0x03) { goto label_32E3; }
                                    else { goto label_325D; }
                                }
                            }
                        } else {
                            var3 = var3 * 0x03;
                            goto label_3246;
                        }
                    } else if (arg2 >= 0x03) {
                        var3 = var3 * 0x06;
                        var2 = 0x04;
                        goto label_3246;
                    } else if (arg2 != 0x01) {
                        var3 = var3 * 0x03;
                    
                    label_3226:
                        goto label_3246;
                    } else { goto label_3226; }
                } else {
                    var6 = var2;
                    var7 = memory[arg0 + 0x80:arg0 + 0x80 + 0x20];
                    var8 = arg2 + ~0x00;
                
                    if (var8 >= 0x03) { assert(); }
                
                    memory[var8 * 0x20 + var7:var8 * 0x20 + var7 + 0x20] = var6 & 0xffff;
                    goto label_31B0;
                }
            }
        }
    }
    
    function func_3406(var arg0, var arg1) returns (var r0) {
        arg0 = memory[memory[arg1 * 0x20 + arg0:arg1 * 0x20 + arg0 + 0x20]:memory[arg1 * 0x20 + arg0:arg1 * 0x20 + arg0 + 0x20] + 0x20];
        r0 = func_2992(arg0);
        // Error: Could not resolve method call return address!
    }
    
    function func_3452(var arg0, var arg1) returns (var r0) { return arg0 % 0x18 * 0x0100 + arg1; }
    
    function func_345F(var arg0, var arg1) returns (var r0) { return (arg0 & 0x02 ** 0xa0 - 0x01) * 0x20 + arg1; }
    
    function func_3472(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = 0x347a;
        var0 = func_3DA9();
        var var1 = 0x00;
        var var2 = var1;
        var var3 = 0x00;
        var var4 = var3;
        var var5 = 0x00;
        var var6 = memory[arg0 + 0x20:arg0 + 0x20 + 0x20] & 0xffff;
        var var7 = arg2;
    
        if (!var6) { assert(); }
    
        var1 = var7 % var6;
        var2 = 0x00;
        var3 = memory[arg0 + 0x60:arg0 + 0x60 + 0x20] & 0xffff;
        var4 = var3 / 0x02;
        var6 = 0x34be;
        var7 = arg1;
        var var8 = 0x00;
        var6 = func_304D(var7, var8);
        var5 = var6;
        memory[0x00:0x20] = var5 + var4;
        memory[0x20:0x40] = 0x2c;
        var temp0 = keccak256(memory[0x00:0x40]);
        var temp1 = memory[0x40:0x60];
        memory[0x40:0x60] = temp1 + 0xa0;
        var temp2 = storage[temp0];
        memory[temp1:temp1 + 0x20] = temp2 & 0x02 ** 0xa0 - 0x01;
        memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = temp2 / 0x010000000000000000000000000000000000000000 & 0xffffffff;
        var temp3 = temp2 / 0x01000000000000000000000000000000000000000000000000 & 0xffff;
        memory[temp1 + 0x40:temp1 + 0x40 + 0x20] = temp3;
        memory[temp1 + 0x60:temp1 + 0x60 + 0x20] = temp2 / 0x02 ** 0xd0 & 0xffff;
        memory[temp1 + 0x80:temp1 + 0x80 + 0x20] = temp2 / 0x02 ** 0xe0 & 0xff;
        var0 = temp1;
    
        if (var1 < temp3) { goto label_3560; }
    
    label_357B:
    
        if (var1 > memory[var0 + 0x60:var0 + 0x60 + 0x20] & 0xffff) {
            var2 = var4 + 0x01;
            var6 = 0x02;
            var7 = var2 + var3;
        
            if (!var6) { assert(); }
        
        label_3573:
            var4 = var7 / var6;
            memory[0x00:0x20] = var5 + var4;
            memory[0x20:0x40] = 0x2c;
            var temp8 = keccak256(memory[0x00:0x40]);
            var temp9 = memory[0x40:0x60];
            memory[0x40:0x60] = temp9 + 0xa0;
            var temp10 = storage[temp8];
            memory[temp9:temp9 + 0x20] = temp10 & 0x02 ** 0xa0 - 0x01;
            memory[temp9 + 0x20:temp9 + 0x20 + 0x20] = temp10 / 0x010000000000000000000000000000000000000000 & 0xffffffff;
            var temp11 = temp10 / 0x01000000000000000000000000000000000000000000000000 & 0xffff;
            memory[temp9 + 0x40:temp9 + 0x40 + 0x20] = temp11;
            memory[temp9 + 0x60:temp9 + 0x60 + 0x20] = temp10 / 0x02 ** 0xd0 & 0xffff;
            memory[temp9 + 0x80:temp9 + 0x80 + 0x20] = temp10 / 0x02 ** 0xe0 & 0xff;
            var0 = temp9;
        
            if (var1 >= temp11) { goto label_357B; }
        
        label_3560:
            var3 = var4 - 0x01;
            var6 = 0x02;
            var7 = var2 + var3;
        
            if (var6) { goto label_3573; }
            else { assert(); }
        } else if (var1 != memory[var0 + 0x60:var0 + 0x60 + 0x20] & 0xffff) {
        label_0FA7:
            return var0;
        } else {
            var temp4 = var4;
            memory[0x00:0x20] = var5 + temp4 + 0x01;
            memory[0x20:0x40] = 0x2c;
            var temp5 = keccak256(memory[0x00:0x40]);
            var temp6 = memory[0x40:0x60];
            memory[0x40:0x60] = temp6 + 0xa0;
            var temp7 = storage[temp5];
            memory[temp6:temp6 + 0x20] = temp7 & 0x02 ** 0xa0 - 0x01;
            memory[temp6 + 0x20:temp6 + 0x20 + 0x20] = temp7 / 0x010000000000000000000000000000000000000000 & 0xffffffff;
            memory[temp6 + 0x40:temp6 + 0x40 + 0x20] = temp7 / 0x01000000000000000000000000000000000000000000000000 & 0xffff;
            memory[temp6 + 0x60:temp6 + 0x60 + 0x20] = temp7 / 0x02 ** 0xd0 & 0xffff;
            memory[temp6 + 0x80:temp6 + 0x80 + 0x20] = temp7 / 0x02 ** 0xe0 & 0xff;
            var0 = temp6;
            var5 = var5;
            var4 = temp4 + 0x01;
            goto label_0FA7;
        }
    }
    
    function func_365B(var arg0) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 < 0x06) { return 0x22b1c8c1227a0000; }
    
        var var1 = 0x0de0b6b3a7640000;
        return var1;
    }
    
    function func_3682(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x368d;
        var2 = func_3BBC();
        memory[0x00:0x20] = arg1 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x30;
        var0 = storage[keccak256(memory[0x00:0x40])] / 0x01000000000000 & 0xff;
        var var3 = 0x36bf;
        var var4 = arg1;
        var var5 = var0;
        var3 = func_345F(var4, var5);
        var1 = var3;
        memory[0x00:0x20] = var1;
        memory[0x20:0x40] = 0x2f;
        var temp0 = keccak256(memory[0x00:0x40]);
        var temp1 = memory[0x40:0x60];
        memory[0x40:0x60] = temp1 + 0x0180;
        var temp2 = storage[temp0];
        var temp3 = temp2 & 0xffffffff;
        memory[temp1:temp1 + 0x20] = temp3;
        memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = temp2 / 0x0100000000 & 0xffffffffffffffff;
        memory[temp1 + 0x40:temp1 + 0x40 + 0x20] = temp2 / 0x02 ** 0x60 & 0xff;
        memory[temp1 + 0x60:temp1 + 0x60 + 0x20] = temp2 / 0x0100000000000000000000000000 & 0xff;
        memory[temp1 + 0x80:temp1 + 0x80 + 0x20] = temp2 / 0x010000000000000000000000000000 & 0xffff;
        memory[temp1 + 0xa0:temp1 + 0xa0 + 0x20] = temp2 / 0x0100000000000000000000000000000000 & 0xff;
        memory[temp1 + 0xc0:temp1 + 0xc0 + 0x20] = temp2 / 0x010000000000000000000000000000000000 & 0xffffffffffffffff;
        memory[temp1 + 0xe0:temp1 + 0xe0 + 0x20] = temp2 / 0x0100000000000000000000000000000000000000000000000000 & 0xff;
        memory[temp1 + 0x0100:temp1 + 0x0100 + 0x20] = temp2 / 0x02 ** 0xd0 & 0xff;
        memory[temp1 + 0x0120:temp1 + 0x0120 + 0x20] = temp2 / 0x01000000000000000000000000000000000000000000000000000000 & 0xffff;
        memory[temp1 + 0x0140:temp1 + 0x0140 + 0x20] = temp2 / 0x02 ** 0xe8 & 0xff;
        var2 = temp1;
        memory[var2 + 0x0160:var2 + 0x0160 + 0x20] = temp2 / 0x02 ** 0xf0 & 0xff;
    
        if (arg2 == temp3) { goto label_3804; }
    
    label_3808:
    
        if (var0) {
            var0 = var0 - 0x01;
            var1 = var1 - 0x01;
        
        label_36C2:
            memory[0x00:0x20] = var1;
            memory[0x20:0x40] = 0x2f;
            var temp4 = keccak256(memory[0x00:0x40]);
            var temp5 = memory[0x40:0x60];
            memory[0x40:0x60] = temp5 + 0x0180;
            var temp6 = storage[temp4];
            var temp7 = temp6 & 0xffffffff;
            memory[temp5:temp5 + 0x20] = temp7;
            memory[temp5 + 0x20:temp5 + 0x20 + 0x20] = temp6 / 0x0100000000 & 0xffffffffffffffff;
            memory[temp5 + 0x40:temp5 + 0x40 + 0x20] = temp6 / 0x02 ** 0x60 & 0xff;
            memory[temp5 + 0x60:temp5 + 0x60 + 0x20] = temp6 / 0x0100000000000000000000000000 & 0xff;
            memory[temp5 + 0x80:temp5 + 0x80 + 0x20] = temp6 / 0x010000000000000000000000000000 & 0xffff;
            memory[temp5 + 0xa0:temp5 + 0xa0 + 0x20] = temp6 / 0x0100000000000000000000000000000000 & 0xff;
            memory[temp5 + 0xc0:temp5 + 0xc0 + 0x20] = temp6 / 0x010000000000000000000000000000000000 & 0xffffffffffffffff;
            memory[temp5 + 0xe0:temp5 + 0xe0 + 0x20] = temp6 / 0x0100000000000000000000000000000000000000000000000000 & 0xff;
            memory[temp5 + 0x0100:temp5 + 0x0100 + 0x20] = temp6 / 0x02 ** 0xd0 & 0xff;
            memory[temp5 + 0x0120:temp5 + 0x0120 + 0x20] = temp6 / 0x01000000000000000000000000000000000000000000000000000000 & 0xffff;
            memory[temp5 + 0x0140:temp5 + 0x0140 + 0x20] = temp6 / 0x02 ** 0xe8 & 0xff;
            var2 = temp5;
            memory[var2 + 0x0160:var2 + 0x0160 + 0x20] = temp6 / 0x02 ** 0xf0 & 0xff;
        
            if (arg2 != temp7) { goto label_3808; }
        
        label_3804:
        
            if (arg0 != memory[var2 + 0x60:var2 + 0x60 + 0x20] & 0xff) {
                var temp8 = var2;
                var temp9 = temp8 + 0x0160;
                memory[temp9:temp9 + 0x20] = (memory[temp9:temp9 + 0x20] | arg3) & 0xff;
                memory[0x00:0x20] = var1;
                memory[0x20:0x40] = 0x2f;
                var temp10 = keccak256(memory[0x00:0x40]);
                var temp11 = temp10;
                storage[temp11] = (memory[temp8:temp8 + 0x20] & 0xffffffff) | (storage[temp11] & ~0xffffffff);
                var temp12 = temp10;
                storage[temp12] = (memory[temp8 + 0x20:temp8 + 0x20 + 0x20] & 0xffffffffffffffff) * 0x0100 ** 0x04 | (storage[temp12] & ~(0xffffffffffffffff * 0x0100 ** 0x04));
                var temp13 = temp10;
                storage[temp13] = (memory[temp8 + 0x40:temp8 + 0x40 + 0x20] & 0xff) * 0x0100 ** 0x0c | (storage[temp13] & ~(0xff * 0x0100 ** 0x0c));
                var temp14 = temp10;
                storage[temp14] = (memory[temp8 + 0x60:temp8 + 0x60 + 0x20] & 0xff) * 0x0100 ** 0x0d | (storage[temp14] & ~(0xff * 0x0100 ** 0x0d));
                var temp15 = temp10;
                storage[temp15] = (memory[temp8 + 0x80:temp8 + 0x80 + 0x20] & 0xffff) * 0x0100 ** 0x0e | (storage[temp15] & ~(0xffff * 0x0100 ** 0x0e));
                var temp16 = temp10;
                storage[temp16] = (memory[temp8 + 0xa0:temp8 + 0xa0 + 0x20] & 0xff) * 0x0100 ** 0x10 | (storage[temp16] & ~(0xff * 0x0100 ** 0x10));
                var temp17 = temp10;
                storage[temp17] = (memory[temp8 + 0xc0:temp8 + 0xc0 + 0x20] & 0xffffffffffffffff) * 0x0100 ** 0x11 | (storage[temp17] & ~(0xffffffffffffffff * 0x0100 ** 0x11));
                var temp18 = temp10;
                storage[temp18] = (memory[temp8 + 0xe0:temp8 + 0xe0 + 0x20] & 0xff) * 0x0100 ** 0x19 | (storage[temp18] & ~(0xff * 0x0100 ** 0x19));
                var temp19 = temp10;
                storage[temp19] = (memory[temp8 + 0x0100:temp8 + 0x0100 + 0x20] & 0xff) * 0x0100 ** 0x1a | (storage[temp19] & ~(0xff * 0x0100 ** 0x1a));
                var temp20 = temp10;
                storage[temp20] = (memory[temp8 + 0x0120:temp8 + 0x0120 + 0x20] & 0xffff) * 0x0100 ** 0x1b | (storage[temp20] & ~(0xffff * 0x0100 ** 0x1b));
                var temp21 = temp10;
                storage[temp21] = (memory[temp8 + 0x0140:temp8 + 0x0140 + 0x20] & 0xff) * 0x0100 ** 0x1d | (storage[temp21] & ~(0xff * 0x0100 ** 0x1d));
                var temp22 = temp10;
                storage[temp22] = (memory[temp8 + 0x0160:temp8 + 0x0160 + 0x20] & 0xff) * 0x0100 ** 0x1e | (storage[temp22] & ~(0xff * 0x0100 ** 0x1e));
                return;
            } else {
                var temp23 = var2;
                var temp24 = temp23 + 0x0160;
                memory[temp24:temp24 + 0x20] = (memory[temp24:temp24 + 0x20] | arg3 * 0x10) & 0xff;
                memory[0x00:0x20] = var1;
                memory[0x20:0x40] = 0x2f;
                var temp25 = keccak256(memory[0x00:0x40]);
                var temp26 = temp25;
                storage[temp26] = (memory[temp23:temp23 + 0x20] & 0xffffffff) | (storage[temp26] & ~0xffffffff);
                var temp27 = temp25;
                storage[temp27] = (memory[temp23 + 0x20:temp23 + 0x20 + 0x20] & 0xffffffffffffffff) * 0x0100 ** 0x04 | (storage[temp27] & ~(0xffffffffffffffff * 0x0100 ** 0x04));
                var temp28 = temp25;
                storage[temp28] = (memory[temp23 + 0x40:temp23 + 0x40 + 0x20] & 0xff) * 0x0100 ** 0x0c | (storage[temp28] & ~(0xff * 0x0100 ** 0x0c));
                var temp29 = temp25;
                storage[temp29] = (memory[temp23 + 0x60:temp23 + 0x60 + 0x20] & 0xff) * 0x0100 ** 0x0d | (storage[temp29] & ~(0xff * 0x0100 ** 0x0d));
                var temp30 = temp25;
                storage[temp30] = (memory[temp23 + 0x80:temp23 + 0x80 + 0x20] & 0xffff) * 0x0100 ** 0x0e | (storage[temp30] & ~(0xffff * 0x0100 ** 0x0e));
                var temp31 = temp25;
                storage[temp31] = (memory[temp23 + 0xa0:temp23 + 0xa0 + 0x20] & 0xff) * 0x0100 ** 0x10 | (storage[temp31] & ~(0xff * 0x0100 ** 0x10));
                var temp32 = temp25;
                storage[temp32] = (memory[temp23 + 0xc0:temp23 + 0xc0 + 0x20] & 0xffffffffffffffff) * 0x0100 ** 0x11 | (storage[temp32] & ~(0xffffffffffffffff * 0x0100 ** 0x11));
                var temp33 = temp25;
                storage[temp33] = (memory[temp23 + 0xe0:temp23 + 0xe0 + 0x20] & 0xff) * 0x0100 ** 0x19 | (storage[temp33] & ~(0xff * 0x0100 ** 0x19));
                var temp34 = temp25;
                storage[temp34] = (memory[temp23 + 0x0100:temp23 + 0x0100 + 0x20] & 0xff) * 0x0100 ** 0x1a | (storage[temp34] & ~(0xff * 0x0100 ** 0x1a));
                var temp35 = temp25;
                storage[temp35] = (memory[temp23 + 0x0120:temp23 + 0x0120 + 0x20] & 0xffff) * 0x0100 ** 0x1b | (storage[temp35] & ~(0xffff * 0x0100 ** 0x1b));
                var temp36 = temp25;
                storage[temp36] = (memory[temp23 + 0x0140:temp23 + 0x0140 + 0x20] & 0xff) * 0x0100 ** 0x1d | (storage[temp36] & ~(0xff * 0x0100 ** 0x1d));
                var temp37 = temp25;
                storage[temp37] = (memory[temp23 + 0x0160:temp23 + 0x0160 + 0x20] & 0xff) * 0x0100 ** 0x1e | (storage[temp37] & ~(0xff * 0x0100 ** 0x1e));
                return;
            }
        } else {
            var0 = 0x17;
            var2 = var2;
            var1 = var0 + var1;
            goto label_36C2;
        }
    }
    
    function func_3A33(var arg0, var arg1, var arg2) returns (var r0) { return (arg0 % 0x18 * 0x0100 + arg1) * 0x04 + arg2 + ~0x00; }
    
    function func_3A4B() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0x0220;
        memory[temp0:temp0 + 0x20] = 0x00;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x00;
        var var0 = temp0;
        memory[var0 + 0x40:var0 + 0x40 + 0x20] = 0x00;
        var var1 = var0 + 0x60;
        var var2 = 0x3a75;
        var2 = func_3C40();
        var temp1 = var1;
        memory[temp1:temp1 + 0x20] = var2;
        memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = 0x00;
        memory[temp1 + 0x40:temp1 + 0x40 + 0x20] = 0x00;
        return var0;
    }
    
    function func_3A89(var arg0, var arg1, var arg2) returns (var r0) {
        var temp0 = arg1;
        arg1 = arg0 + 0x01;
        var var0 = arg0;
        var var1 = temp0;
    
        if (!arg2) {
        label_3B0C:
            var temp1 = arg1;
            arg1 = 0x0502;
            arg2 = temp1;
            arg1 = func_3DD7(arg2, var0);
            r0 = func_0502(arg0, arg1);
            // Error: Could not resolve method call return address!
        } else {
            var temp2 = var1;
            var temp3 = arg2;
            arg2 = temp2;
            var1 = arg2 + temp3 * 0x20;
            var var2 = 0x00;
        
            if (var1 <= arg2) {
            label_3ADD:
            
                if (!var2) { goto label_3B0C; }
            
                var temp4 = var0;
                var temp5 = var2;
                storage[temp4] = ~(0x0100 ** temp5 * 0xff) & storage[temp4];
                var temp6 = temp5 + 0x01;
                var temp7 = temp6 / 0x20;
                var0 = temp7 + temp4;
                var2 = 0x01 - temp7 * temp6;
                goto label_3ADD;
            } else {
            label_3AA8:
                var temp8 = arg2;
                var temp9 = var0;
                var temp10 = var2;
                var temp11 = 0x0100 ** temp10;
                storage[temp9] = (memory[temp8:temp8 + 0x20] & 0xff) * temp11 | (~(temp11 * 0xff) & storage[temp9]);
                arg2 = temp8 + 0x20;
                var temp12 = temp10 + 0x01;
                var temp13 = temp12 / 0x20;
                var0 = temp13 + temp9;
                var2 = 0x01 - temp13 * temp12;
            
                if (var1 <= arg2) { goto label_3ADD; }
                else { goto label_3AA8; }
            }
        }
    }
    
    function func_3B18() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0x0140;
        memory[temp0:temp0 + 0x0a * 0x20] = code[code.length:code.length + 0x0a * 0x20];
        return temp0;
    }
    
    function func_3B38() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0xe0;
        memory[temp0:temp0 + 0x20] = 0x00;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x00;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x00;
        var var0 = temp0;
        memory[var0 + 0x60:var0 + 0x60 + 0x20] = 0x00;
        var var1 = var0 + 0x80;
        var var2 = 0x3b68;
        var2 = func_3DF5();
        memory[var1:var1 + 0x20] = var2;
        return var0;
    }
    
    function func_3B9C() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0x0300;
        memory[temp0:temp0 + 0x18 * 0x20] = code[code.length:code.length + 0x18 * 0x20];
        return temp0;
    }
    
    function func_3BBC() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0x0180;
        memory[temp0:temp0 + 0x20] = 0x00;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x00;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x00;
        memory[temp0 + 0x60:temp0 + 0x60 + 0x20] = 0x00;
        memory[temp0 + 0x80:temp0 + 0x80 + 0x20] = 0x00;
        memory[temp0 + 0xa0:temp0 + 0xa0 + 0x20] = 0x00;
        memory[temp0 + 0xc0:temp0 + 0xc0 + 0x20] = 0x00;
        memory[temp0 + 0xe0:temp0 + 0xe0 + 0x20] = 0x00;
        memory[temp0 + 0x0100:temp0 + 0x0100 + 0x20] = 0x00;
        memory[temp0 + 0x0120:temp0 + 0x0120 + 0x20] = 0x00;
        memory[temp0 + 0x0140:temp0 + 0x0140 + 0x20] = 0x00;
        memory[temp0 + 0x0160:temp0 + 0x0160 + 0x20] = 0x00;
        return temp0;
    }
    
    function func_3C20() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0x01a0;
        memory[temp0:temp0 + 0x0d * 0x20] = code[code.length:code.length + 0x0d * 0x20];
        return temp0;
    }
    
    function func_3C40() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0x0180;
        memory[temp0:temp0 + 0x0c * 0x20] = code[code.length:code.length + 0x0c * 0x20];
        return temp0;
    }
    
    function func_3C60() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0x80;
        memory[temp0:temp0 + 0x20] = 0x00;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x00;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x00;
        memory[temp0 + 0x60:temp0 + 0x60 + 0x20] = 0x00;
        return temp0;
    }
    
    function func_3D19() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        var var0 = temp0;
        memory[0x40:0x60] = var0 + 0x01e0;
        var var1 = 0x03;
        var var2 = var0;
        var var3 = 0x3d32;
        var3 = func_3DA9();
    
    label_3D32:
        var temp1 = var2;
        memory[temp1:temp1 + 0x20] = var3;
        var2 = temp1 + 0x20;
        var1 = var1 - 0x01;
    
        if (!var1) { return var0; }
    
        var3 = 0x3d32;
        var3 = func_3DA9();
        goto label_3D32;
    }
    
    function func_3DA9() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0xa0;
        memory[temp0:temp0 + 0x20] = 0x00;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x00;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x00;
        memory[temp0 + 0x60:temp0 + 0x60 + 0x20] = 0x00;
        memory[temp0 + 0x80:temp0 + 0x80 + 0x20] = 0x00;
        return temp0;
    }
    
    function func_3DD7(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        arg0 = 0x052e;
        var temp1 = arg1;
        arg1 = temp0;
        var var0 = temp1;
    
        if (arg1 <= var0) {
            arg0 = func_0502(arg1, var0);
        
        label_052E:
            return arg0;
        } else {
            arg0 = func_3DE6(arg1, var0);
            goto label_052E;
        }
    }
    
    function func_3DE6(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        storage[temp0] = storage[temp0] & ~0xff;
        arg1 = temp0 + 0x01;
    
        if (arg0 <= arg1) {
            r0 = func_0502(arg0, arg1);
            // Error: Could not resolve method call return address!
        } else {
            r0 = func_3DE6(arg0, arg1);
            // Error: Could not resolve method call return address!
        }
    }
    
    function func_3DF5() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0x60;
        memory[temp0:temp0 + 0x03 * 0x20] = code[code.length:code.length + 0x03 * 0x20];
        return temp0;
    }
    
    function func_3E42(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        storage[temp0] = storage[temp0] & ~0xffffffffffffffffffffffffffffffffffffffff;
        arg1 = temp0 + 0x01;
    
        if (arg0 <= arg1) {
            r0 = func_0502(arg0, arg1);
            // Error: Could not resolve method call return address!
        } else {
            r0 = func_3E42(arg0, arg1);
            // Error: Could not resolve method call return address!
        }
    }
}