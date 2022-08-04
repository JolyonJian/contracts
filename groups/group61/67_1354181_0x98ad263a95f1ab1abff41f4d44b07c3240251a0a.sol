contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length < 0x04) {
        label_0169:
        
            if (msg.value) {
                var var0 = 0x0187;
                var var1 = 0x00;
                play(var1);
                stop();
            } else {
                var0 = 0x0178;
                receive();
                stop();
            }
        } else {
            var0 = msg.data[0x00:0x20] / 0x0100000000000000000000000000000000000000000000000000000000 & 0xffffffff;
        
            if (var0 == 0x012ccc83) {
                // Dispatch table entry for 0x012ccc83 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x01aa;
                var var2 = msg.data[0x04:0x24] & 0x02 ** 0xa0 - 0x01;
                var1 = func_0988(var2);
            
            label_01AA:
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = !!var1;
                var temp1 = memory[0x40:0x60];
                return memory[temp1:temp1 + temp0 - temp1 + 0x20];
            } else if (var0 == 0x06fdde03) {
                // Dispatch table entry for name()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x01d3;
                var2 = name();
                var temp2 = memory[0x40:0x60];
                memory[temp2:temp2 + 0x20] = 0x20;
                var temp3 = var2;
                memory[temp2 + 0x20:temp2 + 0x20 + 0x20] = memory[temp3:temp3 + 0x20];
                var var3 = temp2;
                var var4 = var3;
                var var5 = var4 + 0x40;
                var var6 = temp3 + 0x20;
                var var7 = memory[temp3:temp3 + 0x20];
                var var8 = var7;
                var var9 = var5;
                var var10 = var6;
                var var11 = 0x00;
            
                if (var11 >= var8) {
                label_020D:
                    var temp4 = var7;
                    var5 = temp4 + var5;
                    var6 = temp4 & 0x1f;
                
                    if (!var6) {
                        var temp5 = memory[0x40:0x60];
                        return memory[temp5:temp5 + var5 - temp5];
                    } else {
                        var temp6 = var6;
                        var temp7 = var5 - temp6;
                        memory[temp7:temp7 + 0x20] = ~(0x0100 ** (0x20 - temp6) - 0x01) & memory[temp7:temp7 + 0x20];
                        var temp8 = memory[0x40:0x60];
                        return memory[temp8:temp8 + (temp7 + 0x20) - temp8];
                    }
                } else {
                label_01FE:
                    var temp9 = var11;
                    memory[temp9 + var9:temp9 + var9 + 0x20] = memory[temp9 + var10:temp9 + var10 + 0x20];
                    var11 = temp9 + 0x20;
                
                    if (var11 >= var8) { goto label_020D; }
                    else { goto label_01FE; }
                }
            } else if (var0 == 0x17139ae7) {
                // Dispatch table entry for 0x17139ae7 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x026f;
                var temp10 = 0x02 ** 0xa0 - 0x01;
                var2 = temp10 & msg.data[0x04:0x24];
                var3 = msg.data[0x24:0x44] & temp10;
                var1, var2, var3, var4 = func_09DF(var2, var3);
                var temp11 = memory[0x40:0x60];
                memory[temp11:temp11 + 0x20] = !!var1;
                memory[temp11 + 0x20:temp11 + 0x20 + 0x20] = !!var2;
                memory[temp11 + 0x40:temp11 + 0x40 + 0x20] = !!var3;
                memory[temp11 + 0x60:temp11 + 0x60 + 0x20] = !!var4;
                var temp12 = memory[0x40:0x60];
                return memory[temp12:temp12 + temp11 - temp12 + 0x80];
            } else if (var0 == 0x1f2698ab) {
                // Dispatch table entry for started()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x01aa;
                var2 = started();
                goto label_01AA;
            } else if (var0 == 0x2032677f) {
                // Dispatch table entry for roundOpen()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0187;
                roundOpen();
                stop();
            } else if (var0 == 0x2423c7bc) {
                // Dispatch table entry for 0x2423c7bc (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02d8;
                var2 = func_0A98();
            
            label_02D8:
                var temp13 = memory[0x40:0x60];
                memory[temp13:temp13 + 0x20] = var2;
                var temp14 = memory[0x40:0x60];
                return memory[temp14:temp14 + temp13 - temp14 + 0x20];
            } else if (var0 == 0x2cf003c2) {
                // Dispatch table entry for referrer(address)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x030b;
                var2 = msg.data[0x04:0x24] & 0x02 ** 0xa0 - 0x01;
                var1 = referrer(var2);
                var temp15 = memory[0x40:0x60];
                memory[temp15:temp15 + 0x20] = var1 & 0x02 ** 0xa0 - 0x01;
                var temp16 = memory[0x40:0x60];
                return memory[temp16:temp16 + temp15 - temp16 + 0x20];
            } else if (var0 == 0x34d5f37b) {
                // Dispatch table entry for round(uint256)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x033f;
                var2 = msg.data[0x04:0x24];
                var2, var3, var4, var5, var6, var7 = round(var2);
                var temp17 = memory[0x40:0x60];
                memory[temp17:temp17 + 0x20] = var2;
                memory[temp17 + 0x20:temp17 + 0x20 + 0x20] = var3;
                memory[temp17 + 0x40:temp17 + 0x40 + 0x20] = var4;
                memory[temp17 + 0x60:temp17 + 0x60 + 0x20] = !!var5;
                memory[temp17 + 0x80:temp17 + 0x80 + 0x20] = var6;
                memory[temp17 + 0xa0:temp17 + 0xa0 + 0x20] = var7 & 0x02 ** 0xa0 - 0x01;
                var temp18 = memory[0x40:0x60];
                return memory[temp18:temp18 + temp17 - temp18 + 0xc0];
            } else if (var0 == 0x3c856d8c) {
                // Dispatch table entry for 0x3c856d8c (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02d8;
                var2 = msg.data[0x04:0x24] & 0x02 ** 0xa0 - 0x01;
                var1 = func_0AFE(var2);
                goto label_02D8;
            } else if (var0 == 0x4a7e130e) {
                // Dispatch table entry for remainTime()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02d8;
                var1 = remainTime();
                goto label_02D8;
            } else if (var0 == 0x4c54e1b5) {
                // Dispatch table entry for player(address)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x03d2;
                var2 = msg.data[0x04:0x24] & 0x02 ** 0xa0 - 0x01;
                var var12;
                var2, var3, var4, var5, var6, var7, var8, var9, var10, var11, var12 = player(var2);
                var temp19 = memory[0x40:0x60];
                memory[temp19:temp19 + 0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                memory[temp19 + 0x20:temp19 + 0x20 + 0x20] = var3;
                memory[temp19 + 0x40:temp19 + 0x40 + 0x20] = var4;
                memory[temp19 + 0x60:temp19 + 0x60 + 0x20] = var5;
                memory[temp19 + 0x80:temp19 + 0x80 + 0x20] = var6;
                memory[temp19 + 0xa0:temp19 + 0xa0 + 0x20] = var7;
                memory[temp19 + 0xc0:temp19 + 0xc0 + 0x20] = var8;
                memory[temp19 + 0xe0:temp19 + 0xe0 + 0x20] = var9;
                memory[temp19 + 0x0100:temp19 + 0x0100 + 0x20] = var10;
                memory[temp19 + 0x0120:temp19 + 0x0120 + 0x20] = var11;
                memory[temp19 + 0x0140:temp19 + 0x0140 + 0x20] = var12;
                var temp20 = memory[0x40:0x60];
                return memory[temp20:temp20 + temp19 - temp20 + 0x0160];
            } else if (var0 == 0x59328401) {
                // Dispatch table entry for getPlayerInfo(address)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0453;
                var2 = msg.data[0x04:0x24] & 0x02 ** 0xa0 - 0x01;
                var3 = 0x60;
                var4 = 0x00;
                var5 = var3;
                var6 = var4;
            
                if (var2 & 0x02 ** 0xa0 - 0x01) {
                    var temp21 = memory[0x40:0x60];
                    memory[temp21:temp21 + 0x20] = 0x0c;
                    memory[0x40:0x60] = temp21 + 0x01a0;
                    var4 = block.timestamp;
                    memory[temp21 + 0x20:temp21 + 0x20 + 0x0180] = code[code.length:code.length + 0x0180];
                    var5 = temp21;
                    var7 = storage[0x0a] > 0x00;
                
                    if (!var7) {
                    label_0C6D:
                    
                        if (!var7) {
                        label_0CE4:
                            memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                            memory[0x20:0x40] = 0x0f;
                            var9 = 0x00;
                            var7 = storage[keccak256(memory[var9:var9 + 0x40]) + 0x02];
                            var8 = var5;
                        
                            if (var9 >= memory[var8:var8 + 0x20]) { assert(); }
                        
                            memory[var8 + var9 * 0x20 + 0x20:var8 + var9 * 0x20 + 0x20 + 0x20] = var7;
                            memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                            memory[0x20:0x40] = 0x0f;
                            var7 = 0x0d49;
                            var8 = var6;
                            var9 = storage[keccak256(memory[0x00:0x40]) + 0x03];
                            var7 = func_15F7(var8, var9);
                            var8 = var5;
                            var9 = 0x01;
                        
                            if (var9 >= memory[var8:var8 + 0x20]) { assert(); }
                        
                            memory[var8 + var9 * 0x20 + 0x20:var8 + var9 * 0x20 + 0x20 + 0x20] = var7;
                            memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                            memory[0x20:0x40] = 0x0f;
                            var7 = storage[keccak256(memory[0x00:0x40]) + 0x01];
                            var8 = var5;
                            var9 = 0x02;
                        
                            if (var9 >= memory[var8:var8 + 0x20]) { assert(); }
                        
                            memory[var8 + var9 * 0x20 + 0x20:var8 + var9 * 0x20 + 0x20 + 0x20] = var7;
                            memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                            memory[0x20:0x40] = 0x0f;
                            var7 = storage[keccak256(memory[0x00:0x40]) + 0x08];
                            var8 = var5;
                            var9 = 0x03;
                        
                            if (var9 >= memory[var8:var8 + 0x20]) { assert(); }
                        
                            memory[var8 + var9 * 0x20 + 0x20:var8 + var9 * 0x20 + 0x20 + 0x20] = var7;
                            memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                            memory[0x20:0x40] = 0x0f;
                            var7 = storage[keccak256(memory[0x00:0x40]) + 0x06];
                            var8 = var5;
                            var9 = 0x04;
                        
                            if (var9 >= memory[var8:var8 + 0x20]) { assert(); }
                        
                            memory[var8 + var9 * 0x20 + 0x20:var8 + var9 * 0x20 + 0x20 + 0x20] = var7;
                            memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                            memory[0x20:0x40] = 0x0f;
                            var7 = storage[keccak256(memory[0x00:0x40]) + 0x04];
                            var8 = var5;
                            var9 = 0x05;
                        
                            if (var9 >= memory[var8:var8 + 0x20]) { assert(); }
                        
                            memory[var8 + var9 * 0x20 + 0x20:var8 + var9 * 0x20 + 0x20 + 0x20] = var7;
                            memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                            memory[0x20:0x40] = 0x0f;
                            var7 = storage[keccak256(memory[0x00:0x40]) + 0x0a];
                            var8 = var5;
                            var9 = 0x06;
                        
                            if (var9 >= memory[var8:var8 + 0x20]) { assert(); }
                        
                            memory[var8 + var9 * 0x20 + 0x20:var8 + var9 * 0x20 + 0x20 + 0x20] = var7;
                            memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                            memory[0x20:0x40] = 0x0d;
                            var temp22 = keccak256(memory[0x00:0x40]);
                            memory[0x00:0x20] = storage[0x10];
                            memory[0x20:0x40] = temp22;
                            var7 = storage[keccak256(memory[0x00:0x40])];
                            var8 = var5;
                            var9 = 0x07;
                        
                            if (var9 >= memory[var8:var8 + 0x20]) { assert(); }
                        
                            memory[var8 + var9 * 0x20 + 0x20:var8 + var9 * 0x20 + 0x20 + 0x20] = var7;
                            var7 = 0x0ec8;
                            var8 = var2;
                            var9 = var4;
                            var7 = func_1737(var8, var9);
                            var8 = var5;
                            var9 = 0x08;
                        
                            if (var9 >= memory[var8:var8 + 0x20]) { assert(); }
                        
                            memory[var8 + var9 * 0x20 + 0x20:var8 + var9 * 0x20 + 0x20 + 0x20] = var7;
                            var7 = 0x0eea;
                            var8 = var2;
                            var7 = func_17BA(var8);
                        
                        label_0EEA:
                            var8 = var5;
                            var9 = 0x09;
                        
                            if (var9 >= memory[var8:var8 + 0x20]) { assert(); }
                        
                            memory[var8 + var9 * 0x20 + 0x20:var8 + var9 * 0x20 + 0x20 + 0x20] = var7;
                            var7 = 0x0f0c;
                            var8 = var2;
                            var7 = func_1848(var8);
                            var8 = var5;
                            var9 = 0x0a;
                        
                            if (var9 >= memory[var8:var8 + 0x20]) { assert(); }
                        
                            memory[var8 + var9 * 0x20 + 0x20:var8 + var9 * 0x20 + 0x20 + 0x20] = var7;
                            var7 = 0x0f2f;
                            var8 = var2;
                            var9 = var4;
                            var7 = func_1894(var8, var9);
                            var8 = var5;
                            var9 = 0x0b;
                        
                            if (var9 >= memory[var8:var8 + 0x20]) { assert(); }
                        
                            memory[var8 + var9 * 0x20 + 0x20:var8 + var9 * 0x20 + 0x20 + 0x20] = var7;
                            var3 = var5;
                            var6 = var6;
                            var5 = var3;
                            var1 = var3;
                            // Error: Could not resolve jump destination!
                        } else {
                        label_0C73:
                            memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                            memory[0x20:0x40] = 0x0b;
                            memory[0x00:0x20] = storage[keccak256(memory[0x00:0x40])];
                            memory[0x20:0x40] = 0x0c;
                        
                            if (storage[keccak256(memory[0x00:0x40])] != 0x01) {
                                memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                                memory[0x20:0x40] = 0x0b;
                                memory[0x00:0x20] = storage[keccak256(memory[0x00:0x40])];
                                memory[0x20:0x40] = 0x0c;
                                var8 = storage[0x0a];
                                var9 = storage[keccak256(memory[0x00:0x40])];
                                var7 = 0x0ce1;
                                var7 = func_13D0(var8, var9);
                                var6 = var7;
                                goto label_0CE4;
                            } else {
                                var6 = storage[0x0a];
                                goto label_0CE4;
                            }
                        }
                    } else {
                    label_0C52:
                        memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                        memory[0x20:0x40] = 0x0b;
                    
                        if (storage[keccak256(memory[0x00:0x40])] <= 0x00) { goto label_0CE4; }
                        else { goto label_0C73; }
                    }
                } else {
                    var2 = msg.sender;
                    var temp23 = memory[0x40:0x60];
                    memory[temp23:temp23 + 0x20] = 0x0c;
                    memory[0x40:0x60] = temp23 + 0x01a0;
                    var4 = block.timestamp;
                    memory[temp23 + 0x20:temp23 + 0x20 + 0x0180] = code[code.length:code.length + 0x0180];
                    var5 = temp23;
                    var7 = storage[0x0a] > 0x00;
                
                    if (!var7) { goto label_0C6D; }
                    else { goto label_0C52; }
                }
            } else if (var0 == 0x62ee0100) {
                // Dispatch table entry for 0x62ee0100 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02d8;
                var2 = func_0F56();
                goto label_02D8;
            } else if (var0 == 0x747dff42) {
                // Dispatch table entry for getCurrentRoundInfo()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x04cd;
                var1, var2, var3, var4 = getCurrentRoundInfo();
            
            label_04CD:
                var temp24 = memory[0x40:0x60];
                memory[temp24:temp24 + 0x20] = var1;
                memory[temp24 + 0x20:temp24 + 0x20 + 0x20] = var2;
                memory[temp24 + 0x40:temp24 + 0x40 + 0x20] = var3;
                memory[temp24 + 0x60:temp24 + 0x60 + 0x20] = var4 & 0x02 ** 0xa0 - 0x01;
                var temp25 = memory[0x40:0x60];
                return memory[temp25:temp25 + temp24 - temp25 + 0x80];
            } else if (var0 == 0x7ca437e4) {
                // Dispatch table entry for 0x7ca437e4 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x01aa;
                var2 = msg.data[0x04:0x24] & 0x02 ** 0xa0 - 0x01;
                var1 = func_0F8D(var2);
                goto label_01AA;
            } else if (var0 == 0x8da9d47f) {
                // Dispatch table entry for 0x8da9d47f (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02d8;
                var2 = func_0FFA();
                goto label_02D8;
            } else if (var0 == 0x8e09971c) {
                // Dispatch table entry for 0x8e09971c (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02d8;
                var2 = func_1000();
                goto label_02D8;
            } else if (var0 == 0x8f5be13d) {
                // Dispatch table entry for 0x8f5be13d (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0187;
                var2 = msg.data[0x04:0x24] & 0x02 ** 0xa0 - 0x01;
                func_1006(var2);
                stop();
            } else if (var0 == 0x946b817c) {
                // Dispatch table entry for setted()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0187;
                setted();
                stop();
            } else if (var0 == 0x9b6ed777) {
                // Dispatch table entry for rID()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02d8;
                var2 = rID();
                goto label_02D8;
            } else if (var0 == 0xa0797e29) {
                // Dispatch table entry for 0xa0797e29 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x01aa;
                var2 = msg.data[0x04:0x24] & 0x02 ** 0xa0 - 0x01;
                var1 = func_1286(var2);
                goto label_01AA;
            } else if (var0 == 0xa3e76c0f) {
                // Dispatch table entry for receive()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0187;
                receive();
                stop();
            } else if (var0 == 0xc5fee6a4) {
                // Dispatch table entry for 0xc5fee6a4 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02d8;
                var2 = msg.data[0x04:0x24] & 0x02 ** 0xa0 - 0x01;
                var3 = msg.data[0x24:0x44];
                var2 = func_12A5(var2, var3);
                goto label_02D8;
            } else if (var0 == 0xc73deed6) {
                // Dispatch table entry for 0xc73deed6 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x04cd;
                var2 = msg.data[0x04:0x24];
                var1, var2, var3, var4 = func_12C2(var2);
                goto label_04CD;
            } else if (var0 == 0xe492814f) {
                // Dispatch table entry for play(address)
                var1 = 0x0187;
                var2 = msg.data[0x04:0x24] & 0x02 ** 0xa0 - 0x01;
                play(var2);
                stop();
            } else if (var0 == 0xed88c68e) {
                // Dispatch table entry for donate()
                var1 = 0x0187;
                donate();
                stop();
            } else if (var0 == 0xeeec3895) {
                // Dispatch table entry for 0xeeec3895 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02d8;
                var2 = func_1337();
                goto label_02D8;
            } else if (var0 == 0xfb969b0a) {
                // Dispatch table entry for bootstrap()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0187;
                bootstrap();
                stop();
            } else { goto label_0169; }
        }
    }
    
    function receive() {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = var1;
        var var3 = var2;
        var var4 = msg.sender;
        var var5 = address(var4).code.length;
    
        if (var5) { revert(memory[0x00:0x00]); }
    
        var0 = storage[0x10];
        var1 = block.timestamp;
        var2 = msg.sender;
        var var6 = storage[0x0a] > 0x00;
    
        if (var6) {
            memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
            memory[0x20:0x40] = 0x0b;
        
            if (storage[keccak256(memory[0x00:0x40])] <= 0x00) { goto label_0732; }
            else { goto label_0696; }
        } else if (!var6) {
        label_0732:
            memory[0x00:0x20] = var0;
            memory[0x20:0x40] = 0x0e;
            var6 = var1 > storage[keccak256(memory[0x00:0x40])];
        
            if (var6) {
                memory[0x00:0x20] = var0;
                memory[0x20:0x40] = 0x0e;
            
                if (storage[keccak256(memory[0x00:0x40]) + 0x03] & 0xff) { goto label_078A; }
                else { goto label_0767; }
            } else if (!var6) {
            label_078A:
                var6 = 0x07a3;
                var var7 = 0x0796;
                var var8 = var2;
                var7 = func_1551(var8);
                var6 = func_0796(var3, var7);
                var3 = var6;
            
                if (var3 <= 0x00) {
                label_07E6:
                    return;
                } else {
                    var temp0 = memory[0x40:0x60];
                    var temp1 = var3;
                    var temp2;
                    temp2, memory[temp0:temp0 + 0x00] = address(var2 & 0x02 ** 0xa0 - 0x01).call.gas(!temp1 * 0x08fc).value(temp1)(memory[temp0:temp0 + 0x00]);
                    var6 = !temp2;
                
                    if (!var6) { goto label_07E6; }
                
                    var temp3 = returndata.length;
                    memory[0x00:0x00 + temp3] = returndata[0x00:0x00 + temp3];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
            label_0767:
                memory[0x00:0x20] = var0;
                memory[0x20:0x40] = 0x0e;
                var temp4 = keccak256(memory[0x00:0x40]) + 0x03;
                storage[temp4] = (storage[temp4] & ~0xff) | 0x01;
                var6 = 0x078a;
                func_1435();
                goto label_078A;
            }
        } else {
        label_0696:
            memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
            memory[0x20:0x40] = 0x0b;
            memory[0x00:0x20] = storage[keccak256(memory[0x00:0x40])];
            memory[0x20:0x40] = 0x0c;
        
            if (storage[keccak256(memory[0x00:0x40])] != 0x01) {
                memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                memory[0x20:0x40] = 0x0b;
                memory[0x00:0x20] = storage[keccak256(memory[0x00:0x40])];
                memory[0x20:0x40] = 0x0c;
                var7 = storage[0x0a];
                var6 = 0x0705;
                var8 = storage[keccak256(memory[0x00:0x40])];
                var6 = func_13D0(var7, var8);
                var3 = var6;
            
            label_0708:
                memory[0x00:0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                memory[0x20:0x40] = 0x0b;
                memory[0x00:0x20] = storage[keccak256(memory[0x00:0x40])];
                memory[0x20:0x40] = 0x0c;
                storage[keccak256(memory[0x00:0x40])] = storage[0x0a];
                goto label_0732;
            } else {
                var3 = storage[0x0a];
                goto label_0708;
            }
        }
    }
    
    function func_0796(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        arg1 = arg0;
        var var0 = temp0;
        r0 = func_15F7(arg1, var0);
        // Error: Could not resolve method call return address!
    }
    
    function play(var arg0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = var1;
        var var3 = var2;
        var var4 = var3;
    
        if (!!(storage[0x11] & 0xff) != 0x01) { revert(memory[0x00:0x00]); }
    
        var var5 = msg.sender;
        var var6 = address(var5).code.length;
    
        if (var6) { revert(memory[0x00:0x00]); }
    
        var0 = msg.value;
        var var7 = var0 == 0x0de0b6b3a7640000;
    
        if (!var7) {
            var7 = var0 == 0x1bc16d674ec80000;
        
            if (var7) { goto label_084D; }
            else { goto label_0841; }
        } else if (var7) {
        label_084D:
        
            if (var7) {
            label_08A3:
                memory[0x00:0x20] = msg.sender;
                memory[0x20:0x40] = 0x0f;
                var1 = block.timestamp;
                var2 = msg.sender;
                var3 = storage[keccak256(memory[0x00:0x40]) + 0x0a];
            
                if (var3 > 0x02) {
                    var4 = 0x29a2241af62c0000;
                
                    if (var0 <= var4) {
                    label_093D:
                        var7 = 0x0946;
                        var var8 = var2;
                        var7 = func_0F8D(var8);
                    
                        if (!var7) { revert(memory[0x00:0x00]); }
                    
                        var7 = 0x097e;
                        var8 = var2;
                    
                        if (arg0 & 0x02 ** 0xa0 - 0x01 == var8 & 0x02 ** 0xa0 - 0x01) {
                            var var9 = 0x00;
                            var var10 = var1;
                            var var11 = var0;
                            var var12 = 0x00;
                            var var13 = 0x165e;
                            var var14 = var8;
                            var var15 = var9;
                            func_1B9B(var14, var15);
                            var12 = storage[0x10];
                            var13 = 0x166b;
                            var14 = var10;
                            var13 = func_1C2D(var14);
                        
                            if (!var13) {
                                memory[0x00:0x20] = var12;
                                memory[0x20:0x40] = 0x0e;
                                var13 = var10 > storage[keccak256(memory[0x00:0x40])];
                            
                                if (var13) {
                                    memory[0x00:0x20] = var12;
                                    memory[0x20:0x40] = 0x0e;
                                
                                    if (storage[keccak256(memory[0x00:0x40]) + 0x03] & 0xff) { goto label_16E7; }
                                    else { goto label_16B6; }
                                } else if (!var13) {
                                label_16E7:
                                    memory[0x00:0x20] = var8 & 0x02 ** 0xa0 - 0x01;
                                    memory[0x20:0x40] = 0x0f;
                                    var14 = storage[keccak256(memory[0x00:0x40]) + 0x02];
                                    var13 = 0x1713;
                                    var15 = var11;
                                    var13 = func_15F7(var14, var15);
                                    memory[0x00:0x20] = var8 & 0x02 ** 0xa0 - 0x01;
                                    memory[0x20:0x40] = 0x0f;
                                    storage[keccak256(memory[0x00:0x40]) + 0x02] = var13;
                                    // Error: Could not resolve jump destination!
                                } else {
                                label_16B6:
                                    memory[0x00:0x20] = var12;
                                    memory[0x20:0x40] = 0x0e;
                                    var temp0 = keccak256(memory[0x00:0x40]) + 0x03;
                                    storage[temp0] = (storage[temp0] & ~0xff) | 0x01;
                                    var13 = 0x16d9;
                                    func_1435();
                                    var13 = 0x167c;
                                    var14 = storage[0x10];
                                    var15 = var8;
                                    var var16 = var11;
                                    var var17 = var10;
                                    func_1C67(var14, var15, var16, var17);
                                
                                label_167C:
                                    // Error: Could not resolve jump destination!
                                }
                            } else {
                                var13 = 0x167c;
                                var14 = var12;
                                var15 = var8;
                                var16 = var11;
                                var17 = var10;
                                func_1C67(var14, var15, var16, var17);
                                goto label_167C;
                            }
                        } else {
                            func_096F(arg0, var0, var1, var8);
                        
                        label_097E:
                            return;
                        }
                    } else {
                    label_08EE:
                        var temp1 = memory[0x40:0x60];
                        memory[temp1:temp1 + 0x20] = 0x461bcd * 0x02 ** 0xe5;
                        memory[temp1 + 0x04:temp1 + 0x04 + 0x20] = 0x20;
                        memory[temp1 + 0x24:temp1 + 0x24 + 0x20] = 0x09;
                        memory[temp1 + 0x44:temp1 + 0x44 + 0x20] = 0x6d61786c696d6974210000000000000000000000000000000000000000000000;
                        var temp2 = memory[0x40:0x60];
                        revert(memory[temp2:temp2 + temp1 - temp2 + 0x64]);
                    }
                } else {
                    var7 = (var3 + 0x01) * 0x0de0b6b3a7640000;
                    var4 = var7;
                
                    if (var0 <= var4) { goto label_093D; }
                    else { goto label_08EE; }
                }
            } else {
            label_0854:
                var temp3 = memory[0x40:0x60];
                memory[temp3:temp3 + 0x20] = 0x461bcd * 0x02 ** 0xe5;
                memory[temp3 + 0x04:temp3 + 0x04 + 0x20] = 0x20;
                memory[temp3 + 0x24:temp3 + 0x24 + 0x20] = 0x11;
                memory[temp3 + 0x44:temp3 + 0x44 + 0x20] = 0x696e76206d75737420626520312c322c33000000000000000000000000000000;
                var temp4 = memory[0x40:0x60];
                revert(memory[temp4:temp4 + temp3 - temp4 + 0x64]);
            }
        } else {
        label_0841:
        
            if (var0 == 0x29a2241af62c0000) { goto label_08A3; }
            else { goto label_0854; }
        }
    }
    
    function func_096F(var arg0, var arg1, var arg2, var arg3) {
        var var0 = arg0;
        var var1 = arg2;
        var var2 = arg1;
        var var3 = 0x00;
        var var4 = 0x165e;
        var var5 = arg3;
        var var6 = var0;
        func_1B9B(var5, var6);
        var3 = storage[0x10];
        var4 = 0x166b;
        var5 = var1;
        var4 = func_1C2D(var5);
    
        if (!var4) {
            memory[0x00:0x20] = var3;
            memory[0x20:0x40] = 0x0e;
            var4 = var1 > storage[keccak256(memory[0x00:0x40])];
        
            if (var4) {
                memory[0x00:0x20] = var3;
                memory[0x20:0x40] = 0x0e;
            
                if (storage[keccak256(memory[0x00:0x40]) + 0x03] & 0xff) { goto label_16E7; }
                else { goto label_16B6; }
            } else if (!var4) {
            label_16E7:
                memory[0x00:0x20] = arg3 & 0x02 ** 0xa0 - 0x01;
                memory[0x20:0x40] = 0x0f;
                var5 = storage[keccak256(memory[0x00:0x40]) + 0x02];
                var4 = 0x1713;
                var6 = var2;
                var4 = func_15F7(var5, var6);
                memory[0x00:0x20] = arg3 & 0x02 ** 0xa0 - 0x01;
                memory[0x20:0x40] = 0x0f;
                storage[keccak256(memory[0x00:0x40]) + 0x02] = var4;
                return;
            } else {
            label_16B6:
                memory[0x00:0x20] = var3;
                memory[0x20:0x40] = 0x0e;
                var temp0 = keccak256(memory[0x00:0x40]) + 0x03;
                storage[temp0] = (storage[temp0] & ~0xff) | 0x01;
                var4 = 0x16d9;
                func_1435();
                var4 = 0x167c;
                var5 = storage[0x10];
                var6 = arg3;
                var var7 = var2;
                var var8 = var1;
                func_1C67(var5, var6, var7, var8);
            
            label_167C:
                return;
            }
        } else {
            var4 = 0x167c;
            var5 = var3;
            var6 = arg3;
            var7 = var2;
            var8 = var1;
            func_1C67(var5, var6, var7, var8);
            goto label_167C;
        }
    }
    
    function func_0988(var arg0) returns (var r0) {
        var temp0 = 0x02 ** 0xa0 - 0x01;
        memory[0x00:0x20] = temp0 & arg0;
        memory[0x20:0x40] = 0x00;
        return !!(storage[keccak256(memory[0x00:0x40])] & temp0);
    }
    
    function name() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        r0 = temp0;
        memory[0x40:0x60] = r0 + 0x40;
        memory[r0:r0 + 0x20] = 0x09;
        memory[r0 + 0x20:r0 + 0x20 + 0x20] = 0x4561737920436c75620000000000000000000000000000000000000000000000;
        return r0;
    }
    
    function func_09DF(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3) {
        r3 = 0x00;
        var var1 = r3;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = 0x09ee;
        var var5 = arg0;
        var4 = func_0988(var5);
        memory[0x00:0x20] = arg1 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x0f;
        var5 = !storage[keccak256(memory[0x00:0x40]) + 0x04];
        var var6 = 0x0a14;
        var var7 = arg0;
        var6 = func_1286(var7);
        var6 = !var6;
        var7 = 0x0a1e;
        var var8 = arg1;
        var7 = func_0F8D(var8);
        r0 = var4;
        arg0 = var5;
        arg1 = var6;
        r3 = var7;
        return r0, arg0, arg1, r3;
    }
    
    function started() returns (var r0) { return storage[0x11] & 0xff; }
    
    function roundOpen() {
        var var0 = storage[0x10];
        memory[0x00:0x20] = var0;
        memory[0x20:0x40] = 0x0e;
        var var1 = block.timestamp;
        var var2 = var1 > storage[keccak256(memory[0x00:0x40])];
    
        if (var2) {
            memory[0x00:0x20] = var0;
            memory[0x20:0x40] = 0x0e;
        
            if (storage[keccak256(memory[0x00:0x40]) + 0x03] & 0xff) { goto label_0A94; }
            else { goto label_0A71; }
        } else if (!var2) {
        label_0A94:
            return;
        } else {
        label_0A71:
            memory[0x00:0x20] = var0;
            memory[0x20:0x40] = 0x0e;
            var temp0 = keccak256(memory[0x00:0x40]) + 0x03;
            storage[temp0] = (storage[temp0] & ~0xff) | 0x01;
            var2 = 0x0a94;
            func_1435();
            goto label_0A94;
        }
    }
    
    function func_0A98() returns (var r0) { return storage[0x09]; }
    
    function referrer(var arg0) returns (var r0) {
        var temp0 = 0x02 ** 0xa0 - 0x01;
        memory[0x00:0x20] = temp0 & arg0;
        memory[0x20:0x40] = 0x00;
        return storage[keccak256(memory[0x00:0x40])] & temp0;
    }
    
    function round(var arg0) returns (var arg0, var r1, var r2, var r3, var r4, var r5) {
        memory[0x20:0x40] = 0x0e;
        memory[0x00:0x20] = arg0;
        var temp0 = keccak256(memory[0x00:0x40]);
        arg0 = storage[temp0];
        r1 = storage[temp0 + 0x01];
        r2 = storage[temp0 + 0x02];
        r4 = storage[temp0 + 0x04];
        r3 = storage[temp0 + 0x03] & 0xff;
        r5 = storage[temp0 + 0x05] & 0x02 ** 0xa0 - 0x01;
        return arg0, r1, r2, r3, r4, r5;
    }
    
    function func_0AFE(var arg0) returns (var r0) {
        memory[0x00:0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x01;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function remainTime() returns (var r0) {
        memory[0x00:0x20] = storage[0x10];
        memory[0x20:0x40] = 0x0e;
        var var0 = 0x00;
        var var1 = storage[0x10];
        var var2 = block.timestamp;
    
        if (var2 >= storage[keccak256(memory[var0:var0 + 0x40])]) { return 0x00; }
    
        memory[0x00:0x20] = var1;
        memory[0x20:0x40] = 0x0e;
    
        if (var2 <= storage[keccak256(memory[0x00:0x40]) + 0x01]) {
            memory[0x00:0x20] = var1;
            memory[0x20:0x40] = 0x0e;
            var var4 = storage[keccak256(memory[0x00:0x40]) + 0x01];
            var var3 = 0x0b6f;
            var var5 = var2;
            var3 = func_13D0(var4, var5);
        
        label_0B6F:
            return var3;
        } else {
            memory[0x00:0x20] = var1;
            memory[0x20:0x40] = 0x0e;
            var4 = storage[keccak256(memory[0x00:0x40])];
            var3 = 0x0b6f;
            var5 = var2;
            var3 = func_13D0(var4, var5);
            goto label_0B6F;
        }
    }
    
    function player(var arg0) returns (var arg0, var r1, var r2, var r3, var r4, var r5, var r6, var r7, var r8, var r9, var r10) {
        memory[0x20:0x40] = 0x0f;
        memory[0x00:0x20] = arg0;
        var temp0 = keccak256(memory[0x00:0x40]);
        arg0 = storage[temp0] & 0x02 ** 0xa0 - 0x01;
        r1 = storage[temp0 + 0x01];
        r2 = storage[temp0 + 0x02];
        r3 = storage[temp0 + 0x03];
        r4 = storage[temp0 + 0x04];
        r5 = storage[temp0 + 0x05];
        r6 = storage[temp0 + 0x06];
        r7 = storage[temp0 + 0x07];
        r8 = storage[temp0 + 0x08];
        r10 = storage[temp0 + 0x0a];
        r9 = storage[temp0 + 0x09];
        return arg0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;
    }
    
    function func_0F56() returns (var r0) { return storage[0x0a]; }
    
    function getCurrentRoundInfo() returns (var r0, var r1, var r2, var r3) {
        memory[0x00:0x20] = storage[0x10];
        memory[0x20:0x40] = 0x0e;
        var temp0 = keccak256(memory[0x00:0x40]);
        r2 = storage[temp0 + 0x04];
        r0 = storage[0x10];
        r1 = storage[temp0 + 0x02];
        r3 = storage[temp0 + 0x05] & 0x02 ** 0xa0 - 0x01;
        return r0, r1, r2, r3;
    }
    
    function func_0F8D(var arg0) returns (var r0) {
        var var0 = 0x00;
        memory[var0:var0 + 0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x0f;
        var var1 = var0;
    
        if (storage[keccak256(memory[var1:var1 + 0x40]) + 0x04]) {
            memory[0x00:0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
            memory[0x20:0x40] = 0x0f;
            var1 = storage[keccak256(memory[0x00:0x40]) + 0x09];
            var var2 = var1;
            var var3 = 0x0fe1;
            var var4 = arg0;
            var3 = func_18EE(var4);
        
        label_0FE1:
        
            if (var3 < var2) {
                var0 = 0x00;
            
            label_0FF4:
                return var0;
            } else {
                var0 = 0x01;
                goto label_0FF4;
            }
        } else {
            var0 = 0x01;
            goto label_0FF4;
        }
    }
    
    function func_0FFA() returns (var r0) { return storage[0x05]; }
    
    function func_1000() returns (var r0) { return storage[0x04]; }
    
    function func_1006(var arg0) {
        var var0 = 0x00;
        var var1 = arg0;
        var var2 = address(var1).code.length;
    
        if (var2) { revert(memory[0x00:0x00]); }
    
        var0 = msg.sender;
        var var3 = !!(arg0 & 0x02 ** 0xa0 - 0x01);
    
        if (!(arg0 & 0x02 ** 0xa0 - 0x01)) {
            if (!var3) { revert(memory[0x00:0x00]); }
        
        label_104E:
            var3 = 0x1057;
            var var4 = var0;
            var3 = func_0988(var4);
        
            if (var3) { revert(memory[0x00:0x00]); }
        
            memory[0x00:0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
            memory[0x20:0x40] = 0x0f;
        
            if (storage[keccak256(memory[0x00:0x40]) + 0x04] <= 0x00) { revert(memory[0x00:0x00]); }
        
            var3 = 0x1090;
            var4 = var0;
            var3 = func_1286(var4);
        
            if (!var3) { revert(memory[0x00:0x00]); }
        
            var3 = 0x10a4;
            var4 = arg0;
            var3 = func_0F8D(var4);
        
            if (var3) { revert(memory[0x00:0x00]); }
        
            var3 = 0x10b8;
            var4 = var0;
            var var5 = arg0;
            func_193E(var4, var5);
            return;
        } else if (var0 & 0x02 ** 0xa0 - 0x01 != arg0 & 0x02 ** 0xa0 - 0x01) { goto label_104E; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function setted() {
        var var0 = msg.sender;
        var var1 = 0x00;
        memory[var1:var1 + 0x20] = var0;
        memory[0x20:0x40] = 0x0f;
        var var2 = var1;
        var var3 = var2;
        var var4 = var3;
        var var5 = var4;
    
        if (var5 >= storage[keccak256(memory[var5:var5 + 0x40]) + 0x07]) { goto label_07E6; }
    
        var1 = block.timestamp;
        var var6 = 0x10f1;
        var var7 = var0;
        var var8 = var1;
        var6 = func_1894(var7, var8);
        var2 = var6;
        var6 = 0x110a;
        var7 = storage[0x06];
        var8 = storage[0x04];
        var6 = func_19BF(var7, var8);
        var3 = var6;
    
        if (var2 > var3) {
            var2 = var3;
        
            if (var2 > 0x00) {
            label_112A:
                var6 = 0x1134;
                var7 = var0;
                var8 = var2;
                var6 = func_19D6(var7, var8);
                var4 = var6;
            
                if (var4 <= 0x00) {
                label_07E6:
                    return;
                } else {
                    memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
                    memory[0x20:0x40] = 0x0f;
                    var6 = 0x116c;
                    var7 = var4;
                    var8 = storage[keccak256(memory[0x00:0x40]) + 0x02];
                    var6 = func_15F7(var7, var8);
                    memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
                    memory[0x20:0x40] = 0x0f;
                    var temp0 = keccak256(memory[0x00:0x40]);
                    storage[temp0 + 0x02] = var6;
                    var6 = 0x11a1;
                    var8 = storage[temp0 + 0x08];
                    var7 = var4;
                    var6 = func_15F7(var7, var8);
                    memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
                    memory[0x20:0x40] = 0x0f;
                    storage[keccak256(memory[0x00:0x40]) + 0x08] = var6;
                
                    if (var3 != var2) {
                        var6 = storage[0x04];
                        memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
                        memory[0x20:0x40] = 0x0f;
                        var7 = 0x1218;
                        var var9 = storage[keccak256(memory[0x00:0x40]) + 0x07];
                        var8 = var1;
                        var7 = func_13D0(var8, var9);
                    
                        if (!var6) { assert(); }
                    
                        var temp1 = var7 % var6;
                        var5 = temp1;
                        var6 = 0x1234;
                        var7 = var1;
                        var8 = var5;
                        var6 = func_13D0(var7, var8);
                        memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
                        memory[0x20:0x40] = 0x0f;
                        storage[keccak256(memory[0x00:0x40]) + 0x07] = var6;
                    
                    label_1251:
                        var6 = 0x07e6;
                        var7 = var0;
                        var8 = 0x127b;
                        var9 = 0x64;
                        var var10 = 0x126f;
                        var var11 = var4;
                        var var12 = storage[0x03];
                        var10 = func_1A08(var11, var12);
                        var8 = func_126F(var9, var10);
                        func_127B(var7, var8);
                        goto label_07E6;
                    } else {
                        memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
                        memory[0x20:0x40] = 0x0f;
                        storage[keccak256(memory[0x00:0x40]) + 0x07] = var1;
                        goto label_1251;
                    }
                }
            } else {
            label_1126:
                goto label_07E6;
            }
        } else {
            var6 = var2;
            var2 = var6;
        
            if (var2 > 0x00) { goto label_112A; }
            else { goto label_1126; }
        }
    }
    
    function func_126F(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        arg0 = arg1;
        arg1 = temp0;
        r0 = func_19BF(arg0, arg1);
        // Error: Could not resolve method call return address!
    }
    
    function func_127B(var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
        var var3 = var2;
    
        if (arg1 <= 0x00) {
        label_07E6:
            return;
        } else {
            var0 = arg0;
            var1 = 0x01;
            var var4 = var1 <= storage[0x09];
        
            if (var4) { goto label_1AA3; }
        
        label_1ABD:
        
            if (!var4) { goto label_07E6; }
        
            var4 = 0x1acb;
            var var5 = var0;
            var4 = func_0F8D(var5);
        
            if (var4) {
            label_1B90:
                var3 = var3;
                var1 = var1 + 0x01;
                var4 = var1 <= storage[0x09];
            
                if (!var4) { goto label_1ABD; }
            
            label_1AA3:
                var4 = 0x00;
                var5 = 0x1aae;
                var var6 = var0;
                var5 = referrer(var6);
                var0 = var5;
                var4 = var0 & 0x02 ** 0xa0 - 0x01 != var4;
                goto label_1ABD;
            } else {
                var4 = 0x1ada;
                var5 = var0;
                var4 = func_0AFE(var5);
                var2 = var4;
            
                if (var2 < var1) { goto label_1B90; }
            
                var4 = 0x1aec;
                var5 = var0;
                var4 = func_1848(var5);
                var3 = var4;
            
                if (var3 <= 0x00) {
                    memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
                    memory[0x20:0x40] = 0x0f;
                    var3 = 0x00;
                    var4 = 0x1b3e;
                    var5 = var3;
                    var6 = storage[keccak256(memory[0x00:0x40]) + 0x03];
                    var4 = func_15F7(var5, var6);
                
                label_1B3E:
                    memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
                    memory[0x20:0x40] = 0x0f;
                    var temp0 = keccak256(memory[0x00:0x40]);
                    storage[temp0 + 0x03] = var4;
                    var4 = 0x1b73;
                    var5 = var3;
                    var6 = storage[temp0 + 0x06];
                    var4 = func_15F7(var5, var6);
                    memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
                    memory[0x20:0x40] = 0x0f;
                    storage[keccak256(memory[0x00:0x40]) + 0x06] = var4;
                    goto label_1B90;
                } else if (var3 < arg1) {
                    var4 = var3;
                
                label_1B0E:
                    memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
                    memory[0x20:0x40] = 0x0f;
                    var temp1 = var4;
                    var3 = temp1;
                    var4 = 0x1b3e;
                    var6 = storage[keccak256(memory[0x00:0x40]) + 0x03];
                    var5 = var3;
                    var4 = func_15F7(var5, var6);
                    goto label_1B3E;
                } else {
                    var4 = arg1;
                    goto label_1B0E;
                }
            }
        }
    }
    
    function rID() returns (var r0) { return storage[0x10]; }
    
    function func_1286(var arg0) returns (var r0) {
        memory[0x00:0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x02;
        return !(storage[keccak256(memory[0x00:0x40])] & 0xff);
    }
    
    function func_12A5(var arg0, var arg1) returns (var arg0) {
        memory[0x20:0x40] = 0x0d;
        memory[0x00:0x20] = arg0;
        memory[0x20:0x40] = keccak256(memory[0x00:0x40]);
        memory[0x00:0x20] = arg1;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function func_12C2(var arg0) returns (var r0, var arg0, var r2, var r3) {
        r2 = 0x00;
        r3 = r2;
        var var2 = r3;
        var var3 = var2;
        var var4 = var3;
    
        if (arg0) {
            var temp0 = arg0;
            memory[0x00:0x20] = temp0;
            memory[0x20:0x40] = 0x0e;
            var temp1 = keccak256(memory[0x00:0x40]);
            r3 = storage[temp1 + 0x05] & 0x02 ** 0xa0 - 0x01;
            arg0 = storage[temp1 + 0x02];
            r2 = storage[temp1 + 0x04];
            r0 = temp0;
            return r0, arg0, r2, r3;
        } else if (0x01 < storage[0x10]) {
            var4 = storage[0x10] + ~0x00;
            memory[0x00:0x20] = var4;
            memory[0x20:0x40] = 0x0e;
            var temp2 = keccak256(memory[0x00:0x40]);
            r2 = var4;
            r3 = storage[temp2 + 0x02];
            var2 = storage[temp2 + 0x04];
            var3 = storage[temp2 + 0x05] & 0x02 ** 0xa0 - 0x01;
            var4 = r2;
        
        label_132D:
            var temp3 = r3;
            r3 = var3;
            arg0 = temp3;
            var temp4 = r2;
            r2 = var2;
            r0 = temp4;
            return r0, arg0, r2, r3;
        } else {
            r2 = 0x00;
            r3 = r2;
            var2 = r3;
            var3 = var2;
            goto label_132D;
        }
    }
    
    function donate() {}
    
    function func_1337() returns (var r0) { return storage[0x06]; }
    
    function bootstrap() {
        if (storage[0x11] & 0xff) { revert(memory[0x00:0x00]); }
    
        storage[0x11] = (storage[0x11] & ~0xff) | 0x01;
        storage[0x10] = 0x01;
        memory[0x00:0x20] = 0x01;
        memory[0x20:0x40] = 0x0e;
        storage[0xa7c5ba7114a813b50159add3a36832908dc83db71d0b9a24c2ad0f83be958208] = block.timestamp;
        var var0 = 0x13a2;
        var var2 = storage[0x05];
        var var1 = block.timestamp;
        var0 = func_15F7(var1, var2);
        memory[0x00:0x20] = 0x01;
        memory[0x20:0x40] = 0x0e;
        storage[0xa7c5ba7114a813b50159add3a36832908dc83db71d0b9a24c2ad0f83be958207] = var0;
    }
    
    function func_13D0(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 <= arg0) { return arg0 - arg1; }
    
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x461bcd * 0x02 ** 0xe5;
        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = 0x20;
        memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = 0x13;
        memory[temp0 + 0x44:temp0 + 0x44 + 0x20] = 0x536166654d61746820737562206661696c656400000000000000000000000000;
        var temp1 = memory[0x40:0x60];
        revert(memory[temp1:temp1 + temp0 - temp1 + 0x64]);
    }
    
    function func_1435() {
        var var0 = storage[0x10];
        memory[0x00:0x20] = var0;
        memory[0x20:0x40] = 0x0e;
        var temp0 = keccak256(memory[0x00:0x40]);
        var var1 = storage[temp0 + 0x05] & 0x02 ** 0xa0 - 0x01;
        var var3 = storage[temp0 + 0x02];
        var var2 = 0x00;
    
        if (var3 <= var2) {
        label_14E0:
            storage[0x10] = storage[0x10] + 0x01;
            memory[0x00:0x20] = var0 + 0x01;
            memory[0x20:0x40] = 0x0e;
            storage[keccak256(memory[0x00:0x40]) + 0x01] = block.timestamp;
            var var5 = block.timestamp;
            var0 = var0 + 0x01;
            var var4 = 0x1517;
            var var6 = storage[0x05];
            var4 = func_15F7(var5, var6);
            memory[0x00:0x20] = var0;
            memory[0x20:0x40] = 0x0e;
            storage[keccak256(memory[0x00:0x40])] = var4;
            var4 = 0x1536;
            var5 = var3;
            var6 = var2;
            var4 = func_13D0(var5, var6);
            memory[0x00:0x20] = var0;
            memory[0x20:0x40] = 0x0e;
            storage[keccak256(memory[0x00:0x40]) + 0x02] = var4;
            return;
        } else if (!(var1 & 0x02 ** 0xa0 - 0x01)) { goto label_14E0; }
        else {
            var4 = 0x148b;
            var5 = 0x64;
            var6 = 0x126f;
            var var7 = var3;
            var var8 = 0x0a;
            var6 = func_1A08(var7, var8);
            var4 = func_126F(var5, var6);
            var2 = var4;
        
            if (var2 <= 0x00) { goto label_14E0; }
        
            memory[0x00:0x20] = var1 & 0x02 ** 0xa0 - 0x01;
            memory[0x20:0x40] = 0x0f;
            var4 = 0x14c3;
            var6 = storage[keccak256(memory[0x00:0x40]) + 0x01];
            var5 = var2;
            var4 = func_15F7(var5, var6);
            memory[0x00:0x20] = var1 & 0x02 ** 0xa0 - 0x01;
            memory[0x20:0x40] = 0x0f;
            storage[keccak256(memory[0x00:0x40]) + 0x01] = var4;
            goto label_14E0;
        }
    }
    
    function func_1551(var arg0) returns (var r0) {
        var var0 = 0x00;
        memory[var0:var0 + 0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x0f;
        var temp0 = keccak256(memory[var0:var0 + 0x40]);
        var var1 = var0;
        var var2 = var1;
        var var3 = 0x159f;
        var var4 = storage[temp0 + 0x03];
        var var5 = 0x1593;
        var var7 = storage[temp0 + 0x02];
        var var6 = storage[temp0 + 0x01];
        var5 = func_15F7(var6, var7);
        var3 = func_1593(var4, var5);
        var1 = var3;
    
        if (var1 <= 0x02) {
        label_15F0:
            return var2;
        } else {
            memory[0x00:0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
            memory[0x20:0x40] = 0x0f;
            var temp1 = keccak256(memory[0x00:0x40]);
            storage[temp1 + 0x01] = 0x00;
            storage[temp1 + 0x02] = 0x01;
            storage[temp1 + 0x03] = 0x01;
            var3 = 0x15ed;
            var5 = 0x02;
            var4 = var1;
            var3 = func_13D0(var4, var5);
            var2 = var3;
            goto label_15F0;
        }
    }
    
    function func_1593(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        arg0 = arg1;
        arg1 = temp0;
        r0 = func_15F7(arg0, arg1);
        // Error: Could not resolve method call return address!
    }
    
    function func_15F7(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        var var0 = arg1 + temp0;
    
        if (var0 >= temp0) { return var0; }
    
        var temp1 = memory[0x40:0x60];
        memory[temp1:temp1 + 0x20] = 0x461bcd * 0x02 ** 0xe5;
        memory[temp1 + 0x04:temp1 + 0x04 + 0x20] = 0x20;
        memory[temp1 + 0x24:temp1 + 0x24 + 0x20] = 0x13;
        memory[temp1 + 0x44:temp1 + 0x44 + 0x20] = 0x536166654d61746820616464206661696c656400000000000000000000000000;
        var temp2 = memory[0x40:0x60];
        revert(memory[temp2:temp2 + temp1 - temp2 + 0x64]);
    }
    
    function func_1737(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        memory[var0:var0 + 0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x0f;
        var var1 = var0;
        var var2 = var1;
    
        if (var2 >= storage[keccak256(memory[var2:var2 + 0x40]) + 0x07]) {
        label_17B2:
            return var1;
        } else {
            var var3 = storage[0x04];
            memory[0x00:0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
            memory[0x20:0x40] = 0x0f;
            var var4 = 0x178e;
            var var6 = storage[keccak256(memory[0x00:0x40]) + 0x07];
            var var5 = arg1;
            var4 = func_13D0(var5, var6);
        
            if (!var3) { assert(); }
        
            var temp0 = var4 % var3;
            var2 = temp0;
            var3 = 0x17af;
            var4 = storage[0x04];
            var5 = var2;
            var3 = func_13D0(var4, var5);
            var1 = var3;
            goto label_17B2;
        }
    }
    
    function func_17BA(var arg0) returns (var r0) {
        var var0 = 0x00;
        memory[var0:var0 + 0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x0f;
        var var1 = var0;
        var var2 = var1;
        var var3 = var2;
    
        if (var3 < storage[keccak256(memory[var3:var3 + 0x40]) + 0x07]) {
            var1 = block.timestamp;
            var var4 = 0x17f8;
            var var5 = arg0;
            var var6 = var1;
            var4 = func_1894(var5, var6);
            var2 = var4;
            var4 = 0x1811;
            var5 = storage[0x06];
            var6 = storage[0x04];
            var4 = func_19BF(var5, var6);
            var3 = var4;
        
            if (var2 > var3) {
                var2 = var3;
            
                if (var2 > 0x00) {
                label_1835:
                    var4 = 0x183f;
                    var5 = arg0;
                    var6 = var2;
                    return func_19D6(var5, var6);
                } else {
                label_182D:
                    var0 = 0x00;
                
                label_0F4E:
                    return var0;
                }
            } else {
                var4 = var2;
                var2 = var4;
            
                if (var2 > 0x00) { goto label_1835; }
                else { goto label_182D; }
            }
        } else {
            var0 = 0x00;
            goto label_0F4E;
        }
    }
    
    function func_1848(var arg0) returns (var r0) {
        var var0 = 0x00;
        memory[var0:var0 + 0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x0f;
        var var1 = storage[keccak256(memory[var0:var0 + 0x40]) + 0x09];
        var var2 = var0;
        var var3 = var2;
        var var4 = 0x186f;
        var var5 = arg0;
        var4 = func_18EE(var5);
        var2 = var4;
    
        if (var1 <= var2) {
        label_188C:
            return var3;
        } else {
            var4 = 0x1889;
            var5 = var1;
            var var6 = var2;
            var4 = func_13D0(var5, var6);
            var3 = var4;
            goto label_188C;
        }
    }
    
    function func_1894(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        memory[var0:var0 + 0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x0f;
        var var1 = var0;
    
        if (var1 >= storage[keccak256(memory[var1:var1 + 0x40]) + 0x07]) {
        label_15F0:
            return var1;
        } else {
            memory[0x00:0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
            memory[0x20:0x40] = 0x0f;
            var var2 = 0x15ed;
            var var3 = storage[0x04];
            var var4 = 0x126f;
            var var5 = arg1;
            var var6 = storage[keccak256(memory[0x00:0x40]) + 0x07];
            var4 = func_13D0(var5, var6);
            var2 = func_126F(var3, var4);
            var1 = var2;
            goto label_15F0;
        }
    }
    
    function func_18EE(var arg0) returns (var r0) {
        var var0 = 0x00;
        memory[var0:var0 + 0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x0f;
        var temp0 = keccak256(memory[var0:var0 + 0x40]);
        var var1 = var0;
        var var2 = 0x1923;
        var var4 = storage[temp0 + 0x06];
        var var3 = storage[temp0 + 0x08];
        var2 = func_15F7(var3, var4);
        var1 = var2;
    
        if (var1 < 0x02) { return var1; }
    
        var2 = 0x15f0;
        var3 = var1;
        var4 = 0x02;
        return func_13D0(var3, var4);
    }
    
    function func_193E(var arg0, var arg1) {
        memory[0x00:0x20] = arg1 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x02;
    
        if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
            var temp0 = 0x02 ** 0xa0 - 0x01;
            memory[0x00:0x20] = temp0 & arg0;
            memory[0x20:0x40] = 0x00;
            var temp1 = keccak256(memory[0x00:0x40]);
            storage[temp1] = (temp0 & arg1) | (storage[temp1] & ~0xffffffffffffffffffffffffffffffffffffffff);
            return;
        } else {
            var temp2 = arg1;
            memory[0x00:0x20] = temp2 & 0x02 ** 0xa0 - 0x01;
            memory[0x20:0x40] = 0x02;
            var temp3 = keccak256(memory[0x00:0x40]);
            storage[temp3] = (storage[temp3] & ~0xff) | 0x01;
            var temp4 = 0x02 ** 0xa0 - 0x01;
            memory[0x00:0x20] = temp4 & arg0;
            memory[0x20:0x40] = 0x00;
            var temp5 = keccak256(memory[0x00:0x40]);
            storage[temp5] = (temp4 & temp2) | (storage[temp5] & ~0xffffffffffffffffffffffffffffffffffffffff);
            return;
        }
    }
    
    function func_19BF(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = arg1;
        var var3 = arg0;
    
        if (var2) { return var3 / var2; }
        else { assert(); }
    }
    
    function func_19D6(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
        var var3 = 0x19e4;
        var var4 = arg0;
        var3 = func_1848(var4);
        var2 = var3;
        var temp0 = var2 > 0x00;
        var3 = temp0;
    
        if (!var3) {
            if (!var3) {
            label_17B2:
                return var1;
            } else {
            label_19FC:
                var3 = 0x17af;
                var4 = arg0;
                var var5 = var2;
                var var6 = arg1;
                var var7 = 0x64;
                var3 = func_1F69(var4, var5, var6, var7);
                var1 = var3;
                goto label_17B2;
            }
        } else if (arg1 <= 0x00) { goto label_17B2; }
        else { goto label_19FC; }
    }
    
    function func_1A08(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0) {
            var temp0 = arg0;
            var0 = arg1 * temp0;
            var var1 = arg1;
            var var2 = temp0;
            var var3 = var0;
        
            if (!var2) { assert(); }
        
            if (var3 / var2 == var1) {
            label_142F:
                return var0;
            } else {
                var temp1 = memory[0x40:0x60];
                memory[temp1:temp1 + 0x20] = 0x461bcd * 0x02 ** 0xe5;
                memory[temp1 + 0x04:temp1 + 0x04 + 0x20] = 0x20;
                memory[temp1 + 0x24:temp1 + 0x24 + 0x20] = 0x13;
                memory[temp1 + 0x44:temp1 + 0x44 + 0x20] = 0x536166654d617468206d756c206661696c656400000000000000000000000000;
                var temp2 = memory[0x40:0x60];
                revert(memory[temp2:temp2 + temp1 - temp2 + 0x64]);
            }
        } else {
            var0 = 0x00;
            goto label_142F;
        }
    }
    
    function func_1B9B(var arg0, var arg1) {
        var var0 = !!(arg1 & 0x02 ** 0xa0 - 0x01);
    
        if (arg1 & 0x02 ** 0xa0 - 0x01) {
            var0 = arg0 & 0x02 ** 0xa0 - 0x01 != arg1 & 0x02 ** 0xa0 - 0x01;
        
            if (!var0) { goto label_1BD7; }
            else { goto label_1BCC; }
        } else if (!var0) {
        label_1BD7:
        
            if (var0) {
                memory[0x00:0x20] = arg1 & 0x02 ** 0xa0 - 0x01;
                memory[0x20:0x40] = 0x0f;
                var0 = storage[keccak256(memory[0x00:0x40]) + 0x04] > 0x00;
            
                if (!var0) { goto label_1C0C; }
                else { goto label_1C03; }
            } else if (!var0) {
            label_1C0C:
            
                if (!var0) {
                label_1C1E:
                
                    if (!var0) {
                    label_0A94:
                        return;
                    } else {
                        var0 = 0x0a94;
                        var var1 = arg0;
                        var var2 = arg1;
                        func_193E(var1, var2);
                        goto label_0A94;
                    }
                } else {
                    var0 = 0x1c1c;
                    var1 = arg1;
                    var0 = func_0F8D(var1);
                    var0 = !var0;
                    goto label_1C1E;
                }
            } else {
            label_1C03:
                var0 = 0x1c0c;
                var1 = arg0;
                var0 = func_1286(var1);
                goto label_1C0C;
            }
        } else {
        label_1BCC:
            var0 = 0x1bd5;
            var1 = arg0;
            var0 = func_0988(var1);
            var0 = !var0;
            goto label_1BD7;
        }
    }
    
    function func_1C2D(var arg0) returns (var r0) {
        memory[0x00:0x20] = storage[0x10];
        memory[0x20:0x40] = 0x0e;
        var var0 = 0x00;
        var var1 = storage[0x10];
        var var2 = arg0 >= storage[keccak256(memory[var0:var0 + 0x40]) + 0x01];
    
        if (arg0 >= storage[keccak256(memory[var0:var0 + 0x40]) + 0x01]) { return var2; }
    
        memory[0x00:0x20] = var1;
        memory[0x20:0x40] = 0x0e;
        return arg0 <= storage[keccak256(memory[0x00:0x40])];
    }
    
    function func_1C67(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x00;
        memory[var0:var0 + 0x20] = arg1 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x0f;
        storage[keccak256(memory[var0:var0 + 0x40]) + 0x07] = arg3;
        var var1 = var0;
        var var2 = var1;
        var var3 = 0x1c90;
        var var4 = arg1;
        var3 = referrer(var4);
        memory[0x00:0x20] = arg1 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x0f;
        var0 = var3;
        var3 = !storage[keccak256(memory[0x00:0x40]) + 0x04];
    
        if (!var3) {
            if (!var3) {
            label_1D53:
                memory[0x00:0x20] = arg1 & 0x02 ** 0xa0 - 0x01;
                memory[0x20:0x40] = 0x0f;
            
                if (storage[keccak256(memory[0x00:0x40]) + 0x02]) {
                    memory[0x00:0x20] = arg1 & 0x02 ** 0xa0 - 0x01;
                    memory[0x20:0x40] = 0x0f;
                
                    if (storage[keccak256(memory[0x00:0x40]) + 0x03]) {
                    label_1DD9:
                        memory[0x00:0x20] = arg1 & 0x02 ** 0xa0 - 0x01;
                        memory[0x20:0x40] = 0x0f;
                    
                        if (storage[keccak256(memory[0x00:0x40]) + 0x06]) {
                        label_1E1C:
                            memory[0x00:0x20] = arg1 & 0x02 ** 0xa0 - 0x01;
                            memory[0x20:0x40] = 0x0f;
                        
                            if (storage[keccak256(memory[0x00:0x40]) + 0x08]) {
                            label_1E5F:
                                memory[0x00:0x20] = arg1 & 0x02 ** 0xa0 - 0x01;
                                memory[0x20:0x40] = 0x0f;
                                var3 = 0x1e8c;
                                var var5 = storage[keccak256(memory[0x00:0x40]) + 0x04];
                                var4 = arg2;
                                var3 = func_15F7(var4, var5);
                            
                            label_1E8C:
                                memory[0x00:0x20] = arg1 & 0x02 ** 0xa0 - 0x01;
                                memory[0x20:0x40] = 0x0f;
                                var temp0 = keccak256(memory[0x00:0x40]);
                                storage[temp0 + 0x04] = var3;
                                storage[temp0 + 0x05] = arg2;
                                var3 = 0x1ebc;
                                var4 = arg1;
                                var5 = arg2;
                                func_1FEF(var4, var5);
                                var3 = 0x1ed6;
                                var4 = 0x64;
                                var5 = 0x126f;
                                var var6 = arg2;
                                var var7 = storage[0x07];
                                var5 = func_1A08(var6, var7);
                                var3 = func_126F(var4, var5);
                                memory[0x00:0x20] = arg0;
                                memory[0x20:0x40] = 0x0e;
                                var temp1 = var3;
                                var2 = temp1;
                                var3 = 0x1efc;
                                var5 = storage[keccak256(memory[0x00:0x40]) + 0x02];
                                var4 = var2;
                                var3 = func_15F7(var4, var5);
                                memory[0x00:0x20] = arg0;
                                memory[0x20:0x40] = 0x0e;
                                storage[keccak256(memory[0x00:0x40]) + 0x02] = var3;
                                memory[0x00:0x20] = arg1 & 0x02 ** 0xa0 - 0x01;
                                memory[0x20:0x40] = 0x0f;
                                var temp2 = keccak256(memory[0x00:0x40]) + 0x0a;
                                storage[temp2] = storage[temp2] + 0x01;
                                var3 = 0x1f5d;
                                var4 = 0x1f4e;
                                var5 = 0x64;
                                var6 = 0x126f;
                                var7 = arg2;
                                var var8 = 0x01;
                                var6 = func_1A08(var7, var8);
                                var4 = func_126F(var5, var6);
                                var3 = func_1F4E(var4);
                                storage[0x0a] = var3;
                                return;
                            } else {
                            label_1E3F:
                                var temp3 = arg1;
                                memory[0x00:0x20] = temp3 & 0x02 ** 0xa0 - 0x01;
                                memory[0x20:0x40] = 0x0f;
                                storage[keccak256(memory[0x00:0x40]) + 0x08] = 0x01;
                                memory[0x00:0x20] = temp3 & 0x02 ** 0xa0 - 0x01;
                                memory[0x20:0x40] = 0x0f;
                                var3 = 0x1e8c;
                                var5 = storage[keccak256(memory[0x00:0x40]) + 0x04];
                                var4 = arg2;
                                var3 = func_15F7(var4, var5);
                                goto label_1E8C;
                            }
                        } else {
                        label_1DFC:
                            var temp4 = arg1;
                            memory[0x00:0x20] = temp4 & 0x02 ** 0xa0 - 0x01;
                            memory[0x20:0x40] = 0x0f;
                            storage[keccak256(memory[0x00:0x40]) + 0x06] = 0x01;
                            memory[0x00:0x20] = temp4 & 0x02 ** 0xa0 - 0x01;
                            memory[0x20:0x40] = 0x0f;
                        
                            if (storage[keccak256(memory[0x00:0x40]) + 0x08]) { goto label_1E5F; }
                            else { goto label_1E3F; }
                        }
                    } else {
                    label_1DB9:
                        var temp5 = arg1;
                        memory[0x00:0x20] = temp5 & 0x02 ** 0xa0 - 0x01;
                        memory[0x20:0x40] = 0x0f;
                        storage[keccak256(memory[0x00:0x40]) + 0x03] = 0x01;
                        memory[0x00:0x20] = temp5 & 0x02 ** 0xa0 - 0x01;
                        memory[0x20:0x40] = 0x0f;
                    
                        if (storage[keccak256(memory[0x00:0x40]) + 0x06]) { goto label_1E1C; }
                        else { goto label_1DFC; }
                    }
                } else {
                    var temp6 = arg1;
                    memory[0x00:0x20] = temp6 & 0x02 ** 0xa0 - 0x01;
                    memory[0x20:0x40] = 0x0f;
                    storage[keccak256(memory[0x00:0x40]) + 0x02] = 0x01;
                    memory[0x00:0x20] = temp6 & 0x02 ** 0xa0 - 0x01;
                    memory[0x20:0x40] = 0x0f;
                
                    if (storage[keccak256(memory[0x00:0x40]) + 0x03]) { goto label_1DD9; }
                    else { goto label_1DB9; }
                }
            } else {
            label_1CCA:
                var3 = 0x1cd2;
                var4 = var0;
                func_1FCC(var4);
                memory[0x00:0x20] = var0 & 0x02 ** 0xa0 - 0x01;
                memory[0x20:0x40] = 0x0d;
                var temp7 = keccak256(memory[0x00:0x40]);
                memory[0x00:0x20] = arg0;
                memory[0x20:0x40] = temp7;
                var temp8 = keccak256(memory[0x00:0x40]);
                var temp9 = storage[temp8] + 0x01;
                storage[temp8] = temp9;
                memory[0x20:0x40] = 0x0e;
                var1 = temp9;
            
                if (var1 <= storage[keccak256(memory[0x00:0x40]) + 0x04]) { goto label_1D53; }
            
                memory[0x00:0x20] = arg0;
                memory[0x20:0x40] = 0x0e;
                var temp10 = keccak256(memory[0x00:0x40]);
                storage[temp10 + 0x04] = var1;
                var temp11 = temp10 + 0x05;
                storage[temp11] = (var0 & 0x02 ** 0xa0 - 0x01) | (storage[temp11] & ~0xffffffffffffffffffffffffffffffffffffffff);
                goto label_1D53;
            }
        } else if (!(var0 & 0x02 ** 0xa0 - 0x01)) { goto label_1D53; }
        else { goto label_1CCA; }
    }
    
    function func_1F4E(var arg0) returns (var r0) {
        var temp0 = arg0;
        arg0 = storage[0x0a];
        var var0 = temp0;
        r0 = func_15F7(arg0, var0);
        // Error: Could not resolve method call return address!
    }
    
    function func_1F69(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var var0 = 0x00;
        memory[var0:var0 + 0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x0f;
        var var1 = storage[keccak256(memory[var0:var0 + 0x40]) + 0x05];
        var var2 = var0;
        var var3 = var2;
        var var4 = 0x1fad;
        var var5 = 0x2710;
        var var6 = 0x126f;
        var var7 = arg2;
        var var8 = 0x1fa1;
        var var9 = var1;
        var var10 = arg3;
        var8 = func_1A08(var9, var10);
        var6 = func_1FA1(var7, var8);
        var4 = func_126F(var5, var6);
        var2 = var4;
    
        if (arg1 >= var2) { return var2; }
        else { return arg1; }
    }
    
    function func_1FA1(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        arg0 = arg1;
        arg1 = temp0;
        r0 = func_1A08(arg0, arg1);
        // Error: Could not resolve method call return address!
    }
    
    function func_1FCC(var arg0) {
        memory[0x00:0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x01;
        var temp0 = keccak256(memory[0x00:0x40]);
        storage[temp0] = storage[temp0] + 0x01;
    }
    
    function func_1FEF(var arg0, var arg1) {
        memory[0x00:0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x0f;
        var var0 = 0x202b;
        var var1 = storage[keccak256(memory[0x00:0x40]) + 0x09];
        var var2 = 0x1593;
        var var3 = 0x0a;
        var var4 = 0x126f;
        var var6 = storage[0x08];
        var var5 = arg1;
        var4 = func_1A08(var5, var6);
        var2 = func_126F(var3, var4);
        var0 = func_1593(var1, var2);
        memory[0x00:0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x0f;
        storage[keccak256(memory[0x00:0x40]) + 0x09] = var0;
    }
}