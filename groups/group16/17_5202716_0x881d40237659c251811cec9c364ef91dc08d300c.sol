contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length < 0x04) { revert(memory[0x00:0x00]); }
    
        var var0 = msg.data[0x00:0x20] >> 0xe0;
    
        if (0x8da5cb5b > var0) {
            if (0x5c975abb > var0) {
                if (var0 == 0x3ef11fd7) {
                    // Dispatch table entry for 0x3ef11fd7 (unknown)
                    var var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x015f;
                    var var2 = 0x04;
                    var var3 = msg.data.length - var2;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    func_0105(var2, var3);
                    stop();
                } else if (var0 == 0x459a39fb) {
                    // Dispatch table entry for 0x459a39fb (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x015f;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x80) { revert(memory[0x00:0x00]); }
                
                    var temp0 = var2;
                    var temp1 = temp0 + var3;
                    var3 = temp0;
                    var2 = temp1;
                    var var4 = var3 + 0x20;
                    var var5 = msg.data[var3:var3 + 0x20];
                
                    if (var5 > 0x0100000000) { revert(memory[0x00:0x00]); }
                
                    var temp2 = var3 + var5;
                    var5 = temp2;
                
                    if (var5 + 0x20 > var2) { revert(memory[0x00:0x00]); }
                
                    var temp3 = var5;
                    var temp4 = msg.data[temp3:temp3 + 0x20];
                    var5 = temp4;
                    var temp5 = var4;
                    var4 = temp3 + 0x20;
                    var var6 = temp5;
                
                    if ((var5 > 0x0100000000) | (var4 + var5 > var2)) { revert(memory[0x00:0x00]); }
                
                    var temp6 = var6;
                    var temp7 = var2;
                    var2 = var4;
                    var temp8 = var3;
                    var3 = var5;
                    var4 = msg.data[temp6:temp6 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                    var5 = msg.data[temp6 + 0x20:temp6 + 0x20 + 0x20] & 0xffffffff00000000000000000000000000000000000000000000000000000000;
                    var6 = temp7;
                    var var7 = temp8;
                    var var8 = temp6 + 0x60;
                    var var9 = msg.data[temp6 + 0x40:temp6 + 0x40 + 0x20];
                
                    if (var9 > 0x0100000000) { revert(memory[0x00:0x00]); }
                
                    var temp9 = var7 + var9;
                    var9 = temp9;
                
                    if (var9 + 0x20 > var6) { revert(memory[0x00:0x00]); }
                
                    var temp10 = var9;
                    var temp11 = msg.data[temp10:temp10 + 0x20];
                    var9 = temp11;
                    var var10 = var8;
                    var8 = temp10 + 0x20;
                
                    if ((var9 > 0x0100000000) | (var8 + var9 > var6)) { revert(memory[0x00:0x00]); }
                
                    var6 = var8;
                    var7 = var9;
                    var8 = 0x09c7;
                    var8 = func_1614();
                
                    if (var8 & 0xffffffffffffffffffffffffffffffffffffffff == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
                        var8 = 0x0a6f;
                        var9 = var4 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var8 = func_1618(var9);
                    
                        if (var8) {
                            var temp12 = var3;
                            var temp13 = memory[0x40:0x60];
                            memory[temp13:temp13 + temp12] = msg.data[var2:var2 + temp12];
                            var temp14 = temp12 + temp13;
                            memory[temp14:temp14 + 0x20] = 0x03;
                            var temp15 = memory[0x40:0x60];
                        
                            if (!(storage[keccak256(memory[temp15:temp15 + temp14 - temp15 + 0x20])] & 0xff)) {
                                var temp16 = var3;
                                var temp17 = memory[0x40:0x60];
                                memory[temp17:temp17 + temp16] = msg.data[var2:var2 + temp16];
                                var temp18 = temp16 + temp17;
                                memory[temp18:temp18 + 0x20] = 0x02;
                                var temp19 = memory[0x40:0x60];
                                var8 = keccak256(memory[temp19:temp19 + temp18 - temp19 + 0x20]);
                            
                                if (!(storage[var8] & 0xffffffffffffffffffffffffffffffffffffffff)) {
                                    var temp20 = var8;
                                    storage[temp20] = (var5 >> 0xe0) * 0x010000000000000000000000000000000000000000 | (((var4 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[temp20] & 0xffffffffffffffffffffffff0000000000000000000000000000000000000000)) & 0xffffffffffffffff00000000ffffffffffffffffffffffffffffffffffffffff);
                                    var9 = 0x0cae;
                                    var10 = temp20 + 0x01;
                                    var var11 = var6;
                                    var var12 = var7;
                                    var temp21 = var10;
                                    var temp22 = storage[temp21];
                                    memory[0x00:0x20] = temp21;
                                    var var13 = keccak256(memory[0x00:0x20]);
                                    var var14 = var11;
                                    var11 = var13 + ((!(temp22 & 0x01) * 0x0100 - 0x01 & temp22) / 0x02 + 0x1f) / 0x20;
                                
                                    if (0x1f < var12) {
                                        var temp23 = var12;
                                        storage[var10] = temp23 + temp23 + 0x01;
                                    
                                        if (!temp23) {
                                        label_1FD5:
                                            var temp24 = var11;
                                            var11 = 0x1fe1;
                                            var12 = temp24;
                                            var11 = func_1FE5(var12, var13);
                                            var9 = var10;
                                            // Error: Could not resolve jump destination!
                                        } else {
                                            var temp25 = var12;
                                            var temp26 = var14;
                                            var12 = temp26;
                                            var14 = var12 + temp25;
                                        
                                            if (var14 <= var12) { goto label_1FD5; }
                                        
                                        label_1FC3:
                                            var temp27 = var12;
                                            var temp28 = var13;
                                            storage[temp28] = msg.data[temp27:temp27 + 0x20];
                                            var12 = temp27 + 0x20;
                                            var13 = temp28 + 0x01;
                                            var14 = var14;
                                        
                                            if (var14 <= var12) { goto label_1FD5; }
                                            else { goto label_1FC3; }
                                        }
                                    } else {
                                        var temp29 = var12;
                                        storage[var10] = (msg.data[var14:var14 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00) | temp29 + temp29;
                                        goto label_1FD5;
                                    }
                                } else {
                                    var temp30 = memory[0x40:0x60];
                                    memory[temp30:temp30 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                    memory[temp30 + 0x04:temp30 + 0x04 + 0x20] = 0x20;
                                    memory[temp30 + 0x24:temp30 + 0x24 + 0x20] = 0x0e;
                                    memory[temp30 + 0x44:temp30 + 0x44 + 0x20] = 0x414441505445525f455849535453000000000000000000000000000000000000;
                                    var temp31 = memory[0x40:0x60];
                                    revert(memory[temp31:temp31 + temp30 - temp31 + 0x64]);
                                }
                            } else {
                                var temp32 = memory[0x40:0x60];
                                memory[temp32:temp32 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                memory[temp32 + 0x04:temp32 + 0x04 + 0x20] = 0x20;
                                memory[temp32 + 0x24:temp32 + 0x24 + 0x20] = 0x0f;
                                memory[temp32 + 0x44:temp32 + 0x44 + 0x20] = 0x414441505445525f52454d4f5645440000000000000000000000000000000000;
                                var temp33 = memory[0x40:0x60];
                                revert(memory[temp33:temp33 + temp32 - temp33 + 0x64]);
                            }
                        } else {
                            var temp34 = memory[0x40:0x60];
                            memory[temp34:temp34 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                            memory[temp34 + 0x04:temp34 + 0x04 + 0x20] = 0x20;
                            memory[temp34 + 0x24:temp34 + 0x24 + 0x20] = 0x19;
                            memory[temp34 + 0x44:temp34 + 0x44 + 0x20] = 0x414441505445525f49535f4e4f545f415f434f4e545241435400000000000000;
                            var temp35 = memory[0x40:0x60];
                            revert(memory[temp35:temp35 + temp34 - temp35 + 0x64]);
                        }
                    } else {
                        var temp36 = memory[0x40:0x60];
                        memory[temp36:temp36 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                        memory[temp36 + 0x04:temp36 + 0x04 + 0x20] = 0x20;
                        memory[temp36 + 0x24:temp36 + 0x24 + 0x20] = 0x20;
                        memory[temp36 + 0x44:temp36 + 0x44 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
                        var temp37 = memory[0x40:0x60];
                        revert(memory[temp37:temp37 + temp36 - temp37 + 0x64]);
                    }
                } else if (var0 == 0x558b7dd1) {
                    // Dispatch table entry for pauseSwaps()
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x015f;
                    pauseSwaps();
                    stop();
                } else { revert(memory[0x00:0x00]); }
            } else if (var0 == 0x5c975abb) {
                // Dispatch table entry for paused()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x029e;
                var1 = paused();
            
            label_029E:
                var temp38 = memory[0x40:0x60];
                memory[temp38:temp38 + 0x20] = !!var1;
                var temp39 = memory[0x40:0x60];
                return memory[temp39:temp39 + temp38 - temp39 + 0x20];
            } else if (var0 == 0x5f575529) {
                // Dispatch table entry for swap(string,address,uint256,bytes)
                var1 = 0x015f;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x80) { revert(memory[0x00:0x00]); }
            
                swap(var2, var3);
                stop();
            } else if (var0 == 0x6b68764c) {
                // Dispatch table entry for 0x6b68764c (unknown)
                var1 = 0x015f;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x80) { revert(memory[0x00:0x00]); }
            
                func_03AC(var2, var3);
                stop();
            } else if (var0 == 0x715018a6) {
                // Dispatch table entry for renounceOwnership()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x015f;
                renounceOwnership();
                stop();
            } else { revert(memory[0x00:0x00]); }
        } else if (0xb84f5d1e > var0) {
            if (var0 == 0x8da5cb5b) {
                // Dispatch table entry for owner()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x04a4;
                var1 = owner();
            
            label_04A4:
                var temp40 = memory[0x40:0x60];
                memory[temp40:temp40 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                var temp41 = memory[0x40:0x60];
                return memory[temp41:temp41 + temp40 - temp41 + 0x20];
            } else if (var0 == 0x9804a380) {
                // Dispatch table entry for 0x9804a380 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x015f;
                func_1282();
                stop();
            } else if (var0 == 0xb5268389) {
                // Dispatch table entry for 0xb5268389 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x029e;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                var2 = func_0505(var2, var3);
                goto label_029E;
            } else { revert(memory[0x00:0x00]); }
        } else if (var0 == 0xb84f5d1e) {
            // Dispatch table entry for 0xb84f5d1e (unknown)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x0648;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x20) { revert(memory[0x00:0x00]); }
        
            var2, var3, var4 = func_05B8(var2, var3);
            var temp42 = memory[0x40:0x60];
            var5 = temp42;
            memory[var5:var5 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp43 = var5 + 0x20;
            memory[temp43:temp43 + 0x20] = var3 & ~0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
            var temp44 = temp43 + 0x20;
            var6 = temp44;
            var temp45 = var6 + 0x20;
            memory[var6:var6 + 0x20] = temp45 - var5;
            var temp46 = var4;
            memory[temp45:temp45 + 0x20] = memory[temp46:temp46 + 0x20];
            var7 = temp45 + 0x20;
            var9 = memory[temp46:temp46 + 0x20];
            var8 = temp46 + 0x20;
            var10 = var9;
            var11 = var7;
            var12 = var8;
            var13 = 0x00;
        
            if (var13 >= var10) {
            label_06C6:
                var temp47 = var9;
                var7 = temp47 + var7;
                var8 = temp47 & 0x1f;
            
                if (!var8) {
                    var temp48 = memory[0x40:0x60];
                    return memory[temp48:temp48 + var7 - temp48];
                } else {
                    var temp49 = var8;
                    var temp50 = var7 - temp49;
                    memory[temp50:temp50 + 0x20] = ~(0x0100 ** (0x20 - temp49) - 0x01) & memory[temp50:temp50 + 0x20];
                    var temp51 = memory[0x40:0x60];
                    return memory[temp51:temp51 + (temp50 + 0x20) - temp51];
                }
            } else {
            label_06B7:
                var temp52 = var13;
                memory[temp52 + var11:temp52 + var11 + 0x20] = memory[temp52 + var12:temp52 + var12 + 0x20];
                var13 = temp52 + 0x20;
            
                if (var13 >= var10) { goto label_06C6; }
                else { goto label_06B7; }
            }
        } else if (var0 == 0xc92aecc4) {
            // Dispatch table entry for chi()
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x04a4;
            var2 = chi();
            goto label_04A4;
        } else if (var0 == 0xe8edc816) {
            // Dispatch table entry for spender()
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x04a4;
            var2 = spender();
            goto label_04A4;
        } else if (var0 == 0xf2fde38b) {
            // Dispatch table entry for transferOwnership(address)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x015f;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x20) { revert(memory[0x00:0x00]); }
        
            transferOwnership(var2, var3);
            stop();
        } else { revert(memory[0x00:0x00]); }
    }
    
    function func_0105(var arg0, var arg1) {
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
        var temp5 = var0;
        var0 = temp3 + 0x20;
        var var2 = temp5;
    
        if ((var1 > 0x0100000000) | (var0 + var1 > arg0)) { revert(memory[0x00:0x00]); }
    
        arg0 = var0;
        arg1 = var1;
        var0 = 0x0775;
        var0 = func_1614();
    
        if (var0 & 0xffffffffffffffffffffffffffffffffffffffff == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var temp6 = arg1;
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + temp6] = msg.data[arg0:arg0 + temp6];
            var temp8 = temp6 + temp7;
            memory[temp8:temp8 + 0x20] = 0x02;
            var temp9 = memory[0x40:0x60];
        
            if (storage[keccak256(memory[temp9:temp9 + temp8 - temp9 + 0x20])] & 0xffffffffffffffffffffffffffffffffffffffff != 0xffffffffffffffffffffffffffffffffffffffff & 0x00) {
                var temp10 = arg1;
                var temp11 = memory[0x40:0x60];
                memory[temp11:temp11 + temp10] = msg.data[arg0:arg0 + temp10];
                var temp12 = temp10 + temp11;
                memory[temp12:temp12 + 0x20] = 0x02;
                var temp13 = memory[0x40:0x60];
                var temp14 = keccak256(memory[temp13:temp13 + temp12 - temp13 + 0x20]);
                storage[temp14] = storage[temp14] & 0xffffffffffffffff000000000000000000000000000000000000000000000000;
                var0 = temp14;
                var1 = 0x00;
                var2 = 0x0922;
                var var3 = var0 + 0x01;
                var var4 = var1;
                func_1F02(var3, var4);
                var temp15 = arg0;
                var temp16 = arg1;
                var temp17 = memory[0x40:0x60];
                memory[temp17:temp17 + temp16] = msg.data[temp15:temp15 + temp16];
                var temp18 = temp16 + temp17;
                memory[temp18:temp18 + 0x20] = 0x03;
                var temp19 = memory[0x40:0x60];
                var temp20 = keccak256(memory[temp19:temp19 + temp18 - temp19 + 0x20]);
                storage[temp20] = (storage[temp20] & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00) | !!0x01;
                memory[temp19:temp19 + temp16] = msg.data[temp15:temp15 + temp16];
                var temp21 = memory[0x40:0x60];
                log(memory[temp21:temp21 + 0x00], [0xb00061f7cc154fc23eb34671ab724fc7eb7b806abae871abae8f1eafce972135, keccak256(memory[memory[0x40:0x60]:memory[0x40:0x60] + (memory[0x40:0x60] + stack[-3]) - memory[0x40:0x60]])]);
                return;
            } else {
                var temp22 = memory[0x40:0x60];
                memory[temp22:temp22 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                memory[temp22 + 0x04:temp22 + 0x04 + 0x20] = 0x20;
                memory[temp22 + 0x24:temp22 + 0x24 + 0x20] = 0x16;
                memory[temp22 + 0x44:temp22 + 0x44 + 0x20] = 0x414441505445525f444f45535f4e4f545f455849535400000000000000000000;
                var temp23 = memory[0x40:0x60];
                revert(memory[temp23:temp23 + temp22 - temp23 + 0x64]);
            }
        } else {
            var temp24 = memory[0x40:0x60];
            memory[temp24:temp24 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            memory[temp24 + 0x04:temp24 + 0x04 + 0x20] = 0x20;
            memory[temp24 + 0x24:temp24 + 0x24 + 0x20] = 0x20;
            memory[temp24 + 0x44:temp24 + 0x44 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
            var temp25 = memory[0x40:0x60];
            revert(memory[temp25:temp25 + temp24 - temp25 + 0x64]);
        }
    }
    
    function swap(var arg0, var arg1) {
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
    
        if ((var1 > 0x0100000000) | (var0 + var1 > arg0)) { revert(memory[0x00:0x00]); }
    
        var temp5 = var2;
        var temp6 = arg0;
        arg0 = var0;
        var temp7 = arg1;
        arg1 = var1;
        var0 = msg.data[temp5:temp5 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        var1 = msg.data[temp5 + 0x20:temp5 + 0x20 + 0x20];
        var2 = temp6;
        var var3 = temp7;
        var var4 = temp5 + 0x60;
        var var5 = msg.data[temp5 + 0x40:temp5 + 0x40 + 0x20];
    
        if (var5 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp8 = var3 + var5;
        var5 = temp8;
    
        if (var5 + 0x20 > var2) { revert(memory[0x00:0x00]); }
    
        var temp9 = var5;
        var temp10 = msg.data[temp9:temp9 + 0x20];
        var5 = temp10;
        var temp11 = var4;
        var4 = temp9 + 0x20;
        var var6 = temp11;
    
        if ((var5 > 0x0100000000) | (var4 + var5 > var2)) { revert(memory[0x00:0x00]); }
    
        var2 = var4;
        var3 = var5;
    
        if (storage[0x00] / 0x010000000000000000000000000000000000000000 & 0xff) {
            var temp14 = memory[0x40:0x60];
            memory[temp14:temp14 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            memory[temp14 + 0x04:temp14 + 0x04 + 0x20] = 0x20;
            memory[temp14 + 0x24:temp14 + 0x24 + 0x20] = 0x10;
            memory[temp14 + 0x44:temp14 + 0x44 + 0x20] = 0x5061757361626c653a2070617573656400000000000000000000000000000000;
            var temp15 = memory[0x40:0x60];
            revert(memory[temp15:temp15 + temp14 - temp15 + 0x64]);
        } else if (storage[0x01] != 0x02) {
            storage[0x01] = 0x02;
            var4 = 0x0f5c;
            var5 = arg0;
            var6 = arg1;
            var var7 = var0;
            var var8 = var1;
            var var9 = var2;
            var var10 = var3;
            func_173A(var5, var6, var7, var8, var9, var10);
            storage[0x01] = 0x01;
            return;
        } else {
            var temp12 = memory[0x40:0x60];
            memory[temp12:temp12 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            memory[temp12 + 0x04:temp12 + 0x04 + 0x20] = 0x20;
            memory[temp12 + 0x24:temp12 + 0x24 + 0x20] = 0x1f;
            memory[temp12 + 0x44:temp12 + 0x44 + 0x20] = 0x5265656e7472616e637947756172643a207265656e7472616e742063616c6c00;
            var temp13 = memory[0x40:0x60];
            revert(memory[temp13:temp13 + temp12 - temp13 + 0x64]);
        }
    }
    
    function func_03AC(var arg0, var arg1) {
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
    
        if ((var1 > 0x0100000000) | (var0 + var1 > arg0)) { revert(memory[0x00:0x00]); }
    
        var temp5 = var2;
        var temp6 = arg0;
        arg0 = var0;
        var temp7 = arg1;
        arg1 = var1;
        var0 = msg.data[temp5:temp5 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        var1 = msg.data[temp5 + 0x20:temp5 + 0x20 + 0x20];
        var2 = temp6;
        var var3 = temp7;
        var var4 = temp5 + 0x60;
        var var5 = msg.data[temp5 + 0x40:temp5 + 0x40 + 0x20];
    
        if (var5 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp8 = var3 + var5;
        var5 = temp8;
    
        if (var5 + 0x20 > var2) { revert(memory[0x00:0x00]); }
    
        var temp9 = var5;
        var temp10 = msg.data[temp9:temp9 + 0x20];
        var5 = temp10;
        var var6 = var4;
        var4 = temp9 + 0x20;
    
        if ((var5 > 0x0100000000) | (var4 + var5 > var2)) { revert(memory[0x00:0x00]); }
    
        var2 = var4;
        var3 = var5;
    
        if (storage[0x00] / 0x010000000000000000000000000000000000000000 & 0xff) {
            var temp18 = memory[0x40:0x60];
            memory[temp18:temp18 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            memory[temp18 + 0x04:temp18 + 0x04 + 0x20] = 0x20;
            memory[temp18 + 0x24:temp18 + 0x24 + 0x20] = 0x10;
            memory[temp18 + 0x44:temp18 + 0x44 + 0x20] = 0x5061757361626c653a2070617573656400000000000000000000000000000000;
            var temp19 = memory[0x40:0x60];
            revert(memory[temp19:temp19 + temp18 - temp19 + 0x64]);
        } else if (storage[0x01] != 0x02) {
            storage[0x01] = 0x02;
            var4 = msg.gas;
            var5 = 0x107c;
            var6 = arg0;
            var var7 = arg1;
            var var8 = var0;
            var var9 = var1;
            var var10 = var2;
            var var11 = var3;
            func_173A(var6, var7, var8, var9, var10, var11);
            var5 = (var4 + 0x5208) - msg.gas + msg.data.length * 0x10;
            var6 = 0xffffffffffffffffffffffffffffffffffffffff & 0x0000000000000000000000000000000000004946c0e9f43f4dee607b0ef1fa1c;
            var7 = 0x079d229f;
            var8 = msg.sender;
            var9 = 0xa3db;
            var10 = var5 + 0x374a;
        
            if (!var9) { assert(); }
        
            var temp11 = memory[0x40:0x60];
            memory[temp11:temp11 + 0x20] = (var7 & 0xffffffff) << 0xe0;
            var temp12 = temp11 + 0x04;
            memory[temp12:temp12 + 0x20] = var8 & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp13 = temp12 + 0x20;
            memory[temp13:temp13 + 0x20] = var10 / var9;
            var8 = temp13 + 0x20;
            var9 = 0x20;
            var10 = memory[0x40:0x60];
            var11 = var8 - var10;
            var var12 = var10;
            var var13 = 0x00;
            var var14 = var6;
            var var15 = !address(var14).code.length;
        
            if (var15) { revert(memory[0x00:0x00]); }
        
            var temp14;
            temp14, memory[var10:var10 + var9] = address(var14).call.gas(msg.gas).value(var13)(memory[var12:var12 + var11]);
            var9 = !temp14;
        
            if (!var9) {
                var6 = memory[0x40:0x60];
                var7 = returndata.length;
            
                if (var7 < 0x20) { revert(memory[0x00:0x00]); }
            
                storage[0x01] = 0x01;
                return;
            } else {
                var temp15 = returndata.length;
                memory[0x00:0x00 + temp15] = returndata[0x00:0x00 + temp15];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp16 = memory[0x40:0x60];
            memory[temp16:temp16 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            memory[temp16 + 0x04:temp16 + 0x04 + 0x20] = 0x20;
            memory[temp16 + 0x24:temp16 + 0x24 + 0x20] = 0x1f;
            memory[temp16 + 0x44:temp16 + 0x44 + 0x20] = 0x5265656e7472616e637947756172643a207265656e7472616e742063616c6c00;
            var temp17 = memory[0x40:0x60];
            revert(memory[temp17:temp17 + temp16 - temp17 + 0x64]);
        }
    }
    
    function func_0505(var arg0, var arg1) returns (var arg0) {
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
    
        if ((var1 > 0x0100000000) | (var0 + var1 > arg0)) { revert(memory[0x00:0x00]); }
    
        var temp5 = var1;
        var temp6 = memory[0x40:0x60];
        memory[0x40:0x60] = temp6 + (temp5 + 0x1f) / 0x20 * 0x20 + 0x20;
        memory[temp6:temp6 + 0x20] = temp5;
        var temp7 = temp6 + 0x20;
        memory[temp7:temp7 + temp5] = msg.data[var0:var0 + temp5];
        memory[temp7 + temp5:temp7 + temp5 + 0x20] = 0x00;
        arg0 = temp6;
        var temp8 = arg0;
        var temp9 = memory[temp8:temp8 + 0x20];
        var temp10 = temp8 + temp9 + 0x20;
        var temp11 = memory[temp10:temp10 + 0x20];
        memory[temp10:temp10 + 0x20] = 0x03;
        var temp12 = keccak256(memory[temp8 + 0x20:temp8 + 0x20 + temp9 + 0x20]);
        memory[temp10:temp10 + 0x20] = temp11;
        return storage[temp12] & 0xff;
    }
    
    function func_05B8(var arg0, var arg1) returns (var arg0, var arg1, var r2) {
        var temp0 = arg0;
        var temp1 = temp0 + arg1;
        arg1 = temp0;
        arg0 = temp1;
        r2 = arg1 + 0x20;
        var var1 = msg.data[arg1:arg1 + 0x20];
    
        if (var1 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp2 = arg1 + var1;
        var1 = temp2;
    
        if (var1 + 0x20 > arg0) { revert(memory[0x00:0x00]); }
    
        var temp3 = var1;
        var temp4 = msg.data[temp3:temp3 + 0x20];
        var1 = temp4;
        var var2 = r2;
        r2 = temp3 + 0x20;
    
        if ((var1 > 0x0100000000) | (r2 + var1 > arg0)) { revert(memory[0x00:0x00]); }
    
        var temp5 = var1;
        var temp6 = memory[0x40:0x60];
        memory[0x40:0x60] = temp6 + (temp5 + 0x1f) / 0x20 * 0x20 + 0x20;
        memory[temp6:temp6 + 0x20] = temp5;
        var temp7 = temp6 + 0x20;
        memory[temp7:temp7 + temp5] = msg.data[r2:r2 + temp5];
        memory[temp7 + temp5:temp7 + temp5 + 0x20] = 0x00;
        arg0 = temp6;
        var temp8 = arg0;
        var temp9 = memory[temp8:temp8 + 0x20];
        var temp10 = temp8 + temp9 + 0x20;
        var temp11 = memory[temp10:temp10 + 0x20];
        memory[temp10:temp10 + 0x20] = 0x02;
        var temp12 = keccak256(memory[temp8 + 0x20:temp8 + 0x20 + temp9 + 0x20]);
        memory[temp10:temp10 + 0x20] = temp11;
        var temp13 = storage[temp12];
        var temp14 = storage[temp12 + 0x01];
        var temp15 = memory[0x40:0x60];
        var temp16 = (temp14 & !(temp14 & 0x01) * 0x0100 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) / 0x02;
        memory[0x40:0x60] = temp15 + (temp16 + 0x1f) / 0x20 * 0x20 + 0x20;
        memory[temp15:temp15 + 0x20] = temp16;
        arg0 = temp13 & 0xffffffffffffffffffffffffffffffffffffffff;
        arg1 = temp13 / 0x010000000000000000000000000000000000000000 << 0xe0;
        r2 = temp12;
        var1 = temp15;
        var var3 = temp16;
        var2 = temp12 + 0x01;
        var var4 = var1 + 0x20;
        var var5 = var2;
        var var6 = var3;
    
        if (!var6) {
        label_1438:
            r2 = var1;
            return arg0, arg1, r2;
        } else if (0x1f < var6) {
            var temp17 = var4;
            var temp18 = temp17 + var6;
            var4 = temp18;
            memory[0x00:0x20] = var5;
            var temp19 = keccak256(memory[0x00:0x20]);
            memory[temp17:temp17 + 0x20] = storage[temp19];
            var5 = temp19 + 0x01;
            var6 = temp17 + 0x20;
        
            if (var4 <= var6) { goto label_142F; }
        
        label_141B:
            var temp20 = var5;
            var temp21 = var6;
            memory[temp21:temp21 + 0x20] = storage[temp20];
            var5 = temp20 + 0x01;
            var6 = temp21 + 0x20;
        
            if (var4 > var6) { goto label_141B; }
        
        label_142F:
            var temp22 = var4;
            var temp23 = temp22 + (var6 - temp22 & 0x1f);
            var6 = temp22;
            var4 = temp23;
            goto label_1438;
        } else {
            var temp24 = var4;
            memory[temp24:temp24 + 0x20] = storage[var5] / 0x0100 * 0x0100;
            var4 = temp24 + 0x20;
            var6 = var6;
            goto label_1438;
        }
    }
    
    function transferOwnership(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        arg1 = 0x1492;
        arg1 = func_1614();
    
        if (arg1 & 0xffffffffffffffffffffffffffffffffffffffff != storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var temp6 = memory[0x40:0x60];
            memory[temp6:temp6 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            memory[temp6 + 0x04:temp6 + 0x04 + 0x20] = 0x20;
            memory[temp6 + 0x24:temp6 + 0x24 + 0x20] = 0x20;
            memory[temp6 + 0x44:temp6 + 0x44 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
            var temp7 = memory[0x40:0x60];
            revert(memory[temp7:temp7 + temp6 - temp7 + 0x64]);
        } else if (arg0 & 0xffffffffffffffffffffffffffffffffffffffff) {
            var temp0 = arg0;
            log(memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x00], [0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0, storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff, stack[-1] & 0xffffffffffffffffffffffffffffffffffffffff]);
            storage[0x00] = (temp0 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[0x00] & 0xffffffffffffffffffffffff0000000000000000000000000000000000000000);
            return;
        } else {
            var temp1 = memory[0x40:0x60];
            memory[temp1:temp1 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp2 = temp1 + 0x04;
            var temp3 = temp2 + 0x20;
            memory[temp2:temp2 + 0x20] = temp3 - temp2;
            memory[temp3:temp3 + 0x20] = 0x26;
            var temp4 = temp3 + 0x20;
            memory[temp4:temp4 + 0x26] = code[0x1ffb:0x2021];
            var temp5 = memory[0x40:0x60];
            revert(memory[temp5:temp5 + (temp4 + 0x40) - temp5]);
        }
    }
    
    function pauseSwaps() {
        var var0 = 0x0d99;
        var0 = func_1614();
    
        if (var0 & 0xffffffffffffffffffffffffffffffffffffffff == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var0 = 0x0e2a;
            func_161E();
            return;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = 0x20;
            memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = 0x20;
            memory[temp0 + 0x44:temp0 + 0x44 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
            var temp1 = memory[0x40:0x60];
            revert(memory[temp1:temp1 + temp0 - temp1 + 0x64]);
        }
    }
    
    function paused() returns (var r0) { return storage[0x00] / 0x010000000000000000000000000000000000000000 & 0xff; }
    
    function renounceOwnership() {
        var var0 = 0x116e;
        var0 = func_1614();
    
        if (var0 & 0xffffffffffffffffffffffffffffffffffffffff == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            log(memory[memory[0x40:0x60]:memory[0x40:0x60] + 0x00], [0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0, storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff, 0x00]);
            storage[0x00] = storage[0x00] & 0xffffffffffffffffffffffff0000000000000000000000000000000000000000;
            return;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = 0x20;
            memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = 0x20;
            memory[temp0 + 0x44:temp0 + 0x44 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
            var temp1 = memory[0x40:0x60];
            revert(memory[temp1:temp1 + temp0 - temp1 + 0x64]);
        }
    }
    
    function owner() returns (var r0) { return storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff; }
    
    function func_1282() {
        var var0 = 0x128a;
        var0 = func_1614();
    
        if (var0 & 0xffffffffffffffffffffffffffffffffffffffff == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var0 = 0x0e2a;
            func_1A8F();
            return;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = 0x20;
            memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = 0x20;
            memory[temp0 + 0x44:temp0 + 0x44 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
            var temp1 = memory[0x40:0x60];
            revert(memory[temp1:temp1 + temp0 - temp1 + 0x64]);
        }
    }
    
    function chi() returns (var r0) { return 0x0000000000000000000000000000000000004946c0e9f43f4dee607b0ef1fa1c; }
    
    function spender() returns (var r0) { return 0x00000000000000000000000074de5d4fcbf63e00296fd95d33236b9794016631; }
    
    function func_1614() returns (var r0) { return msg.sender; }
    
    function func_1618(var arg0) returns (var r0) { return !!address(arg0).code.length; }
    
    function func_161E() {
        if (!(storage[0x00] / 0x010000000000000000000000000000000000000000 & 0xff)) {
            storage[0x00] = (storage[0x00] & 0xffffffffffffffffffffff00ffffffffffffffffffffffffffffffffffffffff) | 0x010000000000000000000000000000000000000000;
            var var0 = 0x62e78cea01bee320cd4e420270b5ea74000d11b0c9f74754ebdbfc544b05a258;
            var var1 = 0x1710;
            var1 = func_1614();
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp1 = memory[0x40:0x60];
            log(memory[temp1:temp1 + temp0 - temp1 + 0x20], [stack[-2]]);
            return;
        } else {
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            memory[temp2 + 0x04:temp2 + 0x04 + 0x20] = 0x20;
            memory[temp2 + 0x24:temp2 + 0x24 + 0x20] = 0x10;
            memory[temp2 + 0x44:temp2 + 0x44 + 0x20] = 0x5061757361626c653a2070617573656400000000000000000000000000000000;
            var temp3 = memory[0x40:0x60];
            revert(memory[temp3:temp3 + temp2 - temp3 + 0x64]);
        }
    }
    
    function func_173A(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5) {
        var temp0 = arg1;
        var temp1 = memory[0x40:0x60];
        memory[temp1:temp1 + temp0] = msg.data[arg0:arg0 + temp0];
        var temp2 = temp0 + temp1;
        memory[temp2:temp2 + 0x20] = 0x02;
        var temp3 = memory[0x40:0x60];
        var var0 = keccak256(memory[temp3:temp3 + temp2 - temp3 + 0x20]);
    
        if (!(arg2 & 0xffffffffffffffffffffffffffffffffffffffff)) {
            var temp4 = var0;
            var temp5 = storage[temp4];
            var temp6 = memory[0x40:0x60];
            memory[temp6 + 0x20:temp6 + 0x20 + 0x20] = msg.sender;
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = temp6 - temp7 + 0x20;
            memory[0x40:0x60] = temp6 + 0x40;
            var var5 = temp5 / 0x010000000000000000000000000000000000000000 << 0xe0;
            memory[temp6 + 0x60:temp6 + 0x60 + 0x20] = var5 & 0xffffffff00000000000000000000000000000000000000000000000000000000;
            var var1 = 0xffffffffffffffffffffffffffffffffffffffff & 0x00000000000000000000000074de5d4fcbf63e00296fd95d33236b9794016631;
            var var2 = 0xe3547335;
            var var3 = msg.value;
            var var4 = temp5 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var6 = temp7;
            var var10 = temp6 + 0x60;
            var var7 = temp4 + 0x01;
            var var8 = arg4;
            var var9 = arg5;
            var var11 = temp6 + 0x64;
            var var13 = memory[var6:var6 + 0x20];
            var var12 = var6 + 0x20;
            var var14 = var13;
            var var15 = var11;
            var var16 = var12;
        
            if (var14 < 0x20) {
            label_18C3:
                var temp8 = 0x0100 ** (0x20 - var14) - 0x01;
                var temp9 = var15;
                memory[temp9:temp9 + 0x20] = (memory[var16:var16 + 0x20] & ~temp8) | (memory[temp9:temp9 + 0x20] & temp8);
                var11 = var13 + var11;
                var12 = var7;
                var temp10 = storage[var12];
                var13 = (!(temp10 & 0x01) * 0x0100 - 0x01 & temp10) / 0x02;
            
                if (!var13) {
                label_193C:
                    var temp11 = var9;
                    var temp12 = var11;
                    memory[temp12:temp12 + temp11] = msg.data[var8:var8 + temp11];
                    var temp13 = temp12 + temp11;
                    var temp14 = memory[0x40:0x60];
                    memory[temp14:temp14 + 0x20] = temp13 - temp14 - 0x20;
                    var5 = temp14;
                    memory[0x40:0x60] = temp13;
                    var temp15 = memory[0x40:0x60];
                    memory[temp15:temp15 + 0x20] = (var2 & 0xffffffff) << 0xe0;
                    var temp16 = temp15 + 0x04;
                    var6 = temp16;
                    memory[var6:var6 + 0x20] = var4 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var temp17 = var6 + 0x20;
                    var7 = temp17;
                    var temp18 = var7 + 0x20;
                    memory[var7:var7 + 0x20] = temp18 - var6;
                    memory[temp18:temp18 + 0x20] = memory[var5:var5 + 0x20];
                    var8 = temp18 + 0x20;
                    var9 = var5 + 0x20;
                    var10 = memory[var5:var5 + 0x20];
                    var11 = var10;
                    var12 = var8;
                    var13 = var9;
                    var14 = 0x00;
                
                    if (var14 >= var11) {
                    label_19C9:
                        var temp19 = var10;
                        var8 = temp19 + var8;
                        var9 = temp19 & 0x1f;
                    
                        if (!var9) {
                            var4 = var8;
                            var5 = 0x00;
                            var6 = memory[0x40:0x60];
                            var7 = var4 - var6;
                            var8 = var6;
                            var9 = var3;
                            var10 = var1;
                            var11 = !address(var10).code.length;
                        
                            if (var11) { revert(memory[0x00:0x00]); }
                        
                        label_1A15:
                            var temp20;
                            temp20, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
                            var5 = !temp20;
                        
                            if (!var5) {
                                var temp21 = arg1;
                                var temp22 = memory[0x40:0x60];
                                memory[temp22:temp22 + temp21] = msg.data[arg0:arg0 + temp21];
                                var temp23 = memory[0x40:0x60];
                                log(memory[temp23:temp23 + 0x00], [0xbeee1e6e7fe307ddcf84b0a16137a4430ad5e2480fc4f4a8e250ab56ccd7630d, keccak256(memory[memory[0x40:0x60]:memory[0x40:0x60] + (memory[0x40:0x60] + stack[-11]) - memory[0x40:0x60]]), msg.sender]);
                                return;
                            } else {
                                var temp24 = returndata.length;
                                memory[0x00:0x00 + temp24] = returndata[0x00:0x00 + temp24];
                                revert(memory[0x00:0x00 + returndata.length]);
                            }
                        } else {
                            var temp25 = var9;
                            var temp26 = var8 - temp25;
                            memory[temp26:temp26 + 0x20] = ~(0x0100 ** (0x20 - temp25) - 0x01) & memory[temp26:temp26 + 0x20];
                            var4 = temp26 + 0x20;
                            var5 = 0x00;
                            var6 = memory[0x40:0x60];
                            var7 = var4 - var6;
                            var8 = var6;
                            var9 = var3;
                            var10 = var1;
                            var11 = !address(var10).code.length;
                        
                            if (!var11) { goto label_1A15; }
                            else { revert(memory[0x00:0x00]); }
                        }
                    } else {
                    label_19BA:
                        var temp27 = var14;
                        memory[temp27 + var12:temp27 + var12 + 0x20] = memory[temp27 + var13:temp27 + var13 + 0x20];
                        var14 = temp27 + 0x20;
                    
                        if (var14 >= var11) { goto label_19C9; }
                        else { goto label_19BA; }
                    }
                } else if (0x1f < var13) {
                    var temp28 = var11;
                    var temp29 = temp28 + var13;
                    var11 = temp29;
                    memory[0x00:0x20] = var12;
                    var temp30 = keccak256(memory[0x00:0x20]);
                    memory[temp28:temp28 + 0x20] = storage[temp30];
                    var12 = temp30 + 0x01;
                    var13 = temp28 + 0x20;
                
                    if (var11 <= var13) { goto label_193C; }
                
                label_1928:
                    var temp31 = var12;
                    var temp32 = var13;
                    memory[temp32:temp32 + 0x20] = storage[temp31];
                    var12 = temp31 + 0x01;
                    var13 = temp32 + 0x20;
                
                    if (var11 > var13) { goto label_1928; }
                    else { goto label_193C; }
                } else {
                    var temp33 = var11;
                    memory[temp33:temp33 + 0x20] = storage[var12] / 0x0100 * 0x0100;
                    var temp34 = var13 + temp33;
                    var13 = var13;
                    var11 = temp34;
                    goto label_193C;
                }
            } else {
            label_188F:
                var temp35 = var16;
                var temp36 = var15;
                memory[temp36:temp36 + 0x20] = memory[temp35:temp35 + 0x20];
                var14 = var14 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0;
                var15 = temp36 + 0x20;
                var16 = temp35 + 0x20;
            
                if (var14 < 0x20) { goto label_18C3; }
                else { goto label_188F; }
            }
        } else {
            var1 = 0x17c2;
            var2 = arg2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var3 = msg.sender;
            var4 = 0x00000000000000000000000074de5d4fcbf63e00296fd95d33236b9794016631;
            var5 = arg3;
            var temp37 = memory[0x40:0x60];
            memory[temp37 + 0x24:temp37 + 0x24 + 0x20] = var3 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[temp37 + 0x44:temp37 + 0x44 + 0x20] = var4 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[temp37 + 0x64:temp37 + 0x64 + 0x20] = var5;
            var temp38 = memory[0x40:0x60];
            memory[temp38:temp38 + 0x20] = temp37 - temp38 + 0x64;
            memory[0x40:0x60] = temp37 + 0x84;
            var temp39 = temp38 + 0x20;
            memory[temp39:temp39 + 0x20] = (memory[temp39:temp39 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) | 0x23b872dd00000000000000000000000000000000000000000000000000000000;
            var6 = 0x1bfe;
            var7 = var2;
            var8 = temp38;
            var9 = 0x60;
            var10 = 0x1c66;
            var temp40 = memory[0x40:0x60];
            memory[0x40:0x60] = temp40 + 0x40;
            memory[temp40:temp40 + 0x20] = 0x20;
            memory[temp40 + 0x20:temp40 + 0x20 + 0x20] = 0x5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c6564;
            var11 = var7 & 0xffffffffffffffffffffffffffffffffffffffff;
            var12 = var8;
            var13 = temp40;
            var14 = 0x60;
            var15 = 0x1cf0;
            var16 = var11;
            var var17 = var12;
            var var18 = 0x00;
            var var19 = var13;
            var15 = func_1CF8(var16, var17, var18, var19);
            var10 = var15;
            // Error: Could not resolve jump destination!
        }
    }
    
    function func_1A8F() {
        if (storage[0x00] / 0x010000000000000000000000000000000000000000 & 0xff) {
            storage[0x00] = storage[0x00] & 0xffffffffffffffffffffff00ffffffffffffffffffffffffffffffffffffffff;
            var var0 = 0x5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa;
            var var1 = 0x1710;
            var1 = func_1614();
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp1 = memory[0x40:0x60];
            log(memory[temp1:temp1 + temp0 - temp1 + 0x20], [stack[-2]]);
            return;
        } else {
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            memory[temp2 + 0x04:temp2 + 0x04 + 0x20] = 0x20;
            memory[temp2 + 0x24:temp2 + 0x24 + 0x20] = 0x14;
            memory[temp2 + 0x44:temp2 + 0x44 + 0x20] = 0x5061757361626c653a206e6f7420706175736564000000000000000000000000;
            var temp3 = memory[0x40:0x60];
            revert(memory[temp3:temp3 + temp2 - temp3 + 0x64]);
        }
    }
    
    function func_1CF8(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var var0 = 0x60;
        var var1 = 0x1d03;
        var var2 = arg0;
        var1 = func_1618(var2);
    
        if (var1) {
            var1 = 0x00;
            var2 = 0x60;
            var var3 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var4 = arg2;
            var temp0 = arg1;
            var var5 = temp0;
            var var6 = memory[0x40:0x60];
            var var7 = var6;
            var var9 = memory[var5:var5 + 0x20];
            var var8 = var5 + 0x20;
            var var10 = var9;
            var var11 = var7;
            var var12 = var8;
        
            if (var10 < 0x20) {
            label_1DD8:
                var temp1 = 0x0100 ** (0x20 - var10) - 0x01;
                var temp2 = var11;
                memory[temp2:temp2 + 0x20] = (memory[var12:var12 + 0x20] & ~temp1) | (memory[temp2:temp2 + 0x20] & temp1);
                var temp3 = memory[0x40:0x60];
                var temp4;
                temp4, memory[temp3:temp3 + 0x00] = address(var3).call.gas(msg.gas).value(var4)(memory[temp3:temp3 + (var9 + var7) - temp3]);
                var4 = returndata.length;
                var5 = var4;
            
                if (var5 == 0x00) {
                    var2 = 0x60;
                    var1 = var3;
                
                    if (!var1) {
                    label_1E53:
                    
                        if (!memory[var2:var2 + 0x20]) {
                            var temp5 = arg3;
                            var3 = temp5;
                            var temp6 = memory[0x40:0x60];
                            memory[temp6:temp6 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                            var temp7 = temp6 + 0x04;
                            var4 = temp7;
                            var5 = var4;
                            var temp8 = var5 + 0x20;
                            memory[var5:var5 + 0x20] = temp8 - var5;
                            memory[temp8:temp8 + 0x20] = memory[var3:var3 + 0x20];
                            var6 = temp8 + 0x20;
                            var8 = memory[var3:var3 + 0x20];
                            var7 = var3 + 0x20;
                            var9 = var8;
                            var10 = var6;
                            var11 = var7;
                            var12 = 0x00;
                        
                            if (var12 >= var9) {
                            label_1EC7:
                                var temp9 = var8;
                                var6 = temp9 + var6;
                                var7 = temp9 & 0x1f;
                            
                                if (!var7) {
                                    var temp10 = memory[0x40:0x60];
                                    revert(memory[temp10:temp10 + var6 - temp10]);
                                } else {
                                    var temp11 = var7;
                                    var temp12 = var6 - temp11;
                                    memory[temp12:temp12 + 0x20] = ~(0x0100 ** (0x20 - temp11) - 0x01) & memory[temp12:temp12 + 0x20];
                                    var temp13 = memory[0x40:0x60];
                                    revert(memory[temp13:temp13 + (temp12 + 0x20) - temp13]);
                                }
                            } else {
                            label_1EB8:
                                var temp14 = var12;
                                memory[temp14 + var10:temp14 + var10 + 0x20] = memory[temp14 + var11:temp14 + var11 + 0x20];
                                var12 = temp14 + 0x20;
                            
                                if (var12 >= var9) { goto label_1EC7; }
                                else { goto label_1EB8; }
                            }
                        } else {
                            var temp15 = var2;
                            var3 = memory[temp15:temp15 + 0x20];
                            revert(memory[temp15 + 0x20:temp15 + 0x20 + var3]);
                        }
                    } else {
                    label_1E4B:
                        return var2;
                    }
                } else {
                    var temp16 = memory[0x40:0x60];
                    var4 = temp16;
                    memory[0x40:0x60] = var4 + (returndata.length + 0x3f & ~0x1f);
                    memory[var4:var4 + 0x20] = returndata.length;
                    var temp17 = returndata.length;
                    memory[var4 + 0x20:var4 + 0x20 + temp17] = returndata[0x00:0x00 + temp17];
                    var2 = var4;
                    var1 = var3;
                
                    if (!var1) { goto label_1E53; }
                    else { goto label_1E4B; }
                }
            } else {
            label_1DA4:
                var temp18 = var12;
                var temp19 = var11;
                memory[temp19:temp19 + 0x20] = memory[temp18:temp18 + 0x20];
                var10 = var10 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0;
                var11 = temp19 + 0x20;
                var12 = temp18 + 0x20;
            
                if (var10 < 0x20) { goto label_1DD8; }
                else { goto label_1DA4; }
            }
        } else {
            var temp20 = memory[0x40:0x60];
            memory[temp20:temp20 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            memory[temp20 + 0x04:temp20 + 0x04 + 0x20] = 0x20;
            memory[temp20 + 0x24:temp20 + 0x24 + 0x20] = 0x1d;
            memory[temp20 + 0x44:temp20 + 0x44 + 0x20] = 0x416464726573733a2063616c6c20746f206e6f6e2d636f6e7472616374000000;
            var temp21 = memory[0x40:0x60];
            revert(memory[temp21:temp21 + temp20 - temp21 + 0x64]);
        }
    }
    
    function func_1F02(var arg0, var arg1) {
        var temp0 = arg0;
        var temp1 = storage[temp0];
        arg1 = (!(temp1 & 0x01) * 0x0100 - 0x01 & temp1) / 0x02;
        storage[temp0] = 0x00;
    
        if (0x1f >= arg1) { goto label_1F46; }
    
        memory[0x00:0x20] = arg0;
        arg0 = 0x1f46;
        arg1 = keccak256(memory[0x00:0x20]) + (arg1 + 0x1f) / 0x20;
        var var0 = keccak256(memory[0x00:0x20]);
        arg0 = func_1FE5(arg1, var0);
    
    label_1F46:
    }
    
    function func_1FE5(var arg0, var arg1) returns (var r0) {
        if (arg0 <= arg1) {
        label_1FE1:
            return arg0;
        } else {
        label_1FEF:
            var temp0 = arg1;
            storage[temp0] = 0x00;
            arg1 = temp0 + 0x01;
        
            if (arg0 <= arg1) { goto label_1FE1; }
            else { goto label_1FEF; }
        }
    }
}