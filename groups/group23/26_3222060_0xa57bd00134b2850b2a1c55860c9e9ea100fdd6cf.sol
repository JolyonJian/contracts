contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length < 0x04) { stop(); }
    
        var var0 = msg.data[0x00:0x20] / 0x0100000000000000000000000000000000000000000000000000000000;
    
        if (0x78e111f6 > var0) {
            if (var0 == 0x1cff79cd) {
                // Dispatch table entry for execute(address,bytes)
                var var1 = 0x00a3;
                var var2 = 0x04;
                var var3 = msg.data.length - var2;
            
                if (var3 < 0x40) { revert(memory[0x00:0x00]); }
            
                execute(var2, var3);
                stop();
            } else if (var0 == 0x1f6a1eb9) {
                // Dispatch table entry for execute(bytes,bytes)
                var1 = 0x00a3;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x40) { revert(memory[0x00:0x00]); }
            
                execute(var2, var3);
                stop();
            } else if (var0 == 0x60c7d295) {
                // Dispatch table entry for cache()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x029d;
                var2 = cache();
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = var2 & 0x02 ** 0xa0 - 0x01;
                var temp1 = memory[0x40:0x60];
                return memory[temp1:temp1 + temp0 - temp1 + 0x20];
            } else if (var0 == 0x65fae35e) {
                // Dispatch table entry for rely(address)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00a3;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                rely(var2, var3);
                stop();
            } else { stop(); }
        } else if (var0 == 0x78e111f6) {
            // Dispatch table entry for 0x78e111f6 (unknown)
            var1 = 0x03a2;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x40) { revert(memory[0x00:0x00]); }
        
            var1 = func_0302(var2, var3);
        
        label_03A2:
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = 0x20;
            var temp3 = var1;
            memory[temp2 + 0x20:temp2 + 0x20 + 0x20] = memory[temp3:temp3 + 0x20];
            var2 = temp2;
            var3 = var2;
            var var4 = var3 + 0x40;
            var var6 = memory[temp3:temp3 + 0x20];
            var var5 = temp3 + 0x20;
            var var7 = var6;
            var var8 = var4;
            var var9 = var5;
            var var10 = 0x00;
        
            if (var10 >= var7) {
            label_03DC:
                var temp4 = var6;
                var4 = temp4 + var4;
                var5 = temp4 & 0x1f;
            
                if (!var5) {
                    var temp5 = memory[0x40:0x60];
                    return memory[temp5:temp5 + var4 - temp5];
                } else {
                    var temp6 = var5;
                    var temp7 = var4 - temp6;
                    memory[temp7:temp7 + 0x20] = ~(0x0100 ** (0x20 - temp6) - 0x01) & memory[temp7:temp7 + 0x20];
                    var temp8 = memory[0x40:0x60];
                    return memory[temp8:temp8 + (temp7 + 0x20) - temp8];
                }
            } else {
            label_03CD:
                var temp9 = var10;
                memory[temp9 + var8:temp9 + var8 + 0x20] = memory[temp9 + var9:temp9 + var9 + 0x20];
                var10 = temp9 + 0x20;
            
                if (var10 >= var7) { goto label_03DC; }
                else { goto label_03CD; }
            }
        } else if (var0 == 0x948f5076) {
            // Dispatch table entry for setCache(address)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x044a;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x20) { revert(memory[0x00:0x00]); }
        
            var1 = setCache(var2, var3);
            var temp10 = memory[0x40:0x60];
            memory[temp10:temp10 + 0x20] = !!var1;
            var temp11 = memory[0x40:0x60];
            return memory[temp11:temp11 + temp10 - temp11 + 0x20];
        } else if (var0 == 0x9c52a7f1) {
            // Dispatch table entry for deny(address)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x00a3;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x20) { revert(memory[0x00:0x00]); }
        
            deny(var2, var3);
            stop();
        } else if (var0 == 0xa90e8731) {
            // Dispatch table entry for 0xa90e8731 (unknown)
            var1 = 0x03a2;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x40) { revert(memory[0x00:0x00]); }
        
            var1 = func_04A7(var2, var3);
            goto label_03A2;
        } else if (var0 == 0xbf353dbb) {
            // Dispatch table entry for wards(address)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x05f1;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x20) { revert(memory[0x00:0x00]); }
        
            var2 = wards(var2, var3);
            var temp12 = memory[0x40:0x60];
            memory[temp12:temp12 + 0x20] = var2;
            var temp13 = memory[0x40:0x60];
            return memory[temp13:temp13 + temp12 - temp13 + 0x20];
        } else { stop(); }
    }
    
    function execute(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & 0x02 ** 0xa0 - 0x01;
        arg1 = temp0 + arg1;
        var var0 = temp0;
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
    
        var temp5 = var2;
        var temp6 = memory[0x40:0x60];
        memory[0x40:0x60] = temp6 + (temp5 + 0x1f) / 0x20 * 0x20 + 0x20;
        memory[temp6:temp6 + 0x20] = temp5;
        var temp7 = temp6 + 0x20;
        memory[temp7:temp7 + temp5] = msg.data[var1:var1 + temp5];
        memory[temp7 + temp5:temp7 + temp5 + 0x20] = 0x00;
        arg1 = temp6;
        func_0603(arg0, arg1);
        // Error: Could not resolve method call return address!
    }
    
    function execute(var arg0, var arg1) {
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
    
        var temp6 = var2;
        var temp7 = var1;
        var temp8 = memory[0x40:0x60];
        memory[0x40:0x60] = temp8 + (temp7 + 0x1f) / 0x20 * 0x20 + 0x20;
        memory[temp8:temp8 + 0x20] = temp7;
        var temp9 = temp8 + 0x20;
        memory[temp9:temp9 + temp7] = msg.data[var0:var0 + temp7];
        memory[temp9 + temp7:temp9 + temp7 + 0x20] = 0x00;
        var temp10 = arg0;
        arg0 = temp8;
        var temp11 = arg1;
        arg1 = temp10;
        var0 = temp11;
        var1 = temp6 + 0x20;
        var2 = msg.data[temp6:temp6 + 0x20];
    
        if (var2 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp12 = var0 + var2;
        var2 = temp12;
    
        if (var2 + 0x20 > arg1) { revert(memory[0x00:0x00]); }
    
        var temp13 = var2;
        var temp14 = msg.data[temp13:temp13 + 0x20];
        var2 = temp14;
        var temp15 = var1;
        var1 = temp13 + 0x20;
        var var3 = temp15;
    
        if ((var2 > 0x0100000000) | (var1 + var2 > arg1)) { revert(memory[0x00:0x00]); }
    
        var temp16 = var2;
        var temp17 = memory[0x40:0x60];
        memory[0x40:0x60] = temp17 + (temp16 + 0x1f) / 0x20 * 0x20 + 0x20;
        memory[temp17:temp17 + 0x20] = temp16;
        var temp18 = temp17 + 0x20;
        memory[temp18:temp18 + temp16] = msg.data[var1:var1 + temp16];
        memory[temp18 + temp16:temp18 + temp16 + 0x20] = 0x00;
        arg1 = temp17;
        var temp19 = memory[0x40:0x60];
        memory[temp19:temp19 + 0x20] = 0x8bf4515c00000000000000000000000000000000000000000000000000000000;
        memory[temp19 + 0x04:temp19 + 0x04 + 0x20] = 0x20;
        var temp20 = arg0;
        memory[temp19 + 0x24:temp19 + 0x24 + 0x20] = memory[temp20:temp20 + 0x20];
        var0 = 0x00;
        var1 = storage[0x01] & 0x02 ** 0xa0 - 0x01;
        var2 = 0x8bf4515c;
        var3 = temp20;
        var var4 = temp19 + 0x04;
        var var5 = var4;
        var var6 = temp19 + 0x44;
        var var8 = memory[var3:var3 + 0x20];
        var var7 = var3 + 0x20;
        var var9 = var8;
        var var10 = var6;
        var var11 = var7;
        var var12 = var0;
    
        if (var12 >= var9) {
        label_06BC:
            var temp21 = var8;
            var6 = temp21 + var6;
            var7 = temp21 & 0x1f;
        
            if (!var7) {
                var3 = var6;
                var4 = 0x20;
                var5 = memory[0x40:0x60];
                var6 = var3 - var5;
                var7 = var5;
                var8 = var1;
                var9 = !address(var8).code.length;
            
                if (var9) { revert(memory[0x00:0x00]); }
            
            label_0706:
                var temp22;
                temp22, memory[var5:var5 + var4] = address(var8).staticcall.gas(msg.gas)(memory[var7:var7 + var6]);
                var4 = !temp22;
            
                if (!var4) {
                    var1 = memory[0x40:0x60];
                    var2 = returndata.length;
                
                    if (var2 < 0x20) { revert(memory[0x00:0x00]); }
                
                    var0 = memory[var1:var1 + 0x20];
                
                    if (var0 & 0x02 ** 0xa0 - 0x01) {
                    label_0838:
                        var1 = 0x0842;
                        var2 = var0;
                        var3 = arg1;
                        func_0603(var2, var3);
                        return;
                    } else {
                        var temp23 = memory[0x40:0x60];
                        memory[temp23:temp23 + 0x20] = 0x7ed0c3b200000000000000000000000000000000000000000000000000000000;
                        var4 = temp23 + 0x04;
                        memory[var4:var4 + 0x20] = 0x20;
                        var temp24 = arg0;
                        memory[temp23 + 0x24:temp23 + 0x24 + 0x20] = memory[temp24:temp24 + 0x20];
                        var1 = storage[0x01] & 0x02 ** 0xa0 - 0x01;
                        var2 = 0x7ed0c3b2;
                        var3 = temp24;
                        var5 = var4;
                        var6 = temp23 + 0x44;
                        var7 = var3 + 0x20;
                        var8 = memory[var3:var3 + 0x20];
                        var9 = var8;
                        var10 = var6;
                        var11 = var7;
                        var12 = 0x00;
                    
                        if (var12 >= var9) {
                        label_07BD:
                            var temp25 = var8;
                            var6 = temp25 + var6;
                            var7 = temp25 & 0x1f;
                        
                            if (!var7) {
                                var3 = var6;
                                var4 = 0x20;
                                var5 = memory[0x40:0x60];
                                var6 = var3 - var5;
                                var7 = var5;
                                var8 = 0x00;
                                var9 = var1;
                                var10 = !address(var9).code.length;
                            
                                if (var10) { revert(memory[0x00:0x00]); }
                            
                            label_0809:
                                var temp26;
                                temp26, memory[var5:var5 + var4] = address(var9).call.gas(msg.gas).value(var8)(memory[var7:var7 + var6]);
                                var4 = !temp26;
                            
                                if (!var4) {
                                    var1 = memory[0x40:0x60];
                                    var2 = returndata.length;
                                
                                    if (var2 < 0x20) { revert(memory[0x00:0x00]); }
                                
                                    var0 = memory[var1:var1 + 0x20];
                                    goto label_0838;
                                } else {
                                    var temp27 = returndata.length;
                                    memory[0x00:0x00 + temp27] = returndata[0x00:0x00 + temp27];
                                    revert(memory[0x00:0x00 + returndata.length]);
                                }
                            } else {
                                var temp28 = var7;
                                var temp29 = var6 - temp28;
                                memory[temp29:temp29 + 0x20] = ~(0x0100 ** (0x20 - temp28) - 0x01) & memory[temp29:temp29 + 0x20];
                                var3 = temp29 + 0x20;
                                var4 = 0x20;
                                var5 = memory[0x40:0x60];
                                var6 = var3 - var5;
                                var7 = var5;
                                var8 = 0x00;
                                var9 = var1;
                                var10 = !address(var9).code.length;
                            
                                if (!var10) { goto label_0809; }
                                else { revert(memory[0x00:0x00]); }
                            }
                        } else {
                        label_07AE:
                            var temp30 = var12;
                            memory[temp30 + var10:temp30 + var10 + 0x20] = memory[temp30 + var11:temp30 + var11 + 0x20];
                            var12 = temp30 + 0x20;
                        
                            if (var12 >= var9) { goto label_07BD; }
                            else { goto label_07AE; }
                        }
                    }
                } else {
                    var temp31 = returndata.length;
                    memory[0x00:0x00 + temp31] = returndata[0x00:0x00 + temp31];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp32 = var7;
                var temp33 = var6 - temp32;
                memory[temp33:temp33 + 0x20] = ~(0x0100 ** (0x20 - temp32) - 0x01) & memory[temp33:temp33 + 0x20];
                var3 = temp33 + 0x20;
                var4 = 0x20;
                var5 = memory[0x40:0x60];
                var6 = var3 - var5;
                var7 = var5;
                var8 = var1;
                var9 = !address(var8).code.length;
            
                if (!var9) { goto label_0706; }
                else { revert(memory[0x00:0x00]); }
            }
        } else {
        label_06AD:
            var temp34 = var12;
            memory[temp34 + var10:temp34 + var10 + 0x20] = memory[temp34 + var11:temp34 + var11 + 0x20];
            var12 = temp34 + 0x20;
        
            if (var12 >= var9) { goto label_06BC; }
            else { goto label_06AD; }
        }
    }
    
    function rely(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0x02 ** 0xa0 - 0x01;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x00;
    
        if (storage[keccak256(memory[0x00:0x40])] != 0x01) { revert(memory[0x00:0x00]); }
    
        memory[0x00:0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x00;
        storage[keccak256(memory[0x00:0x40])] = 0x01;
    }
    
    function func_0302(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & 0x02 ** 0xa0 - 0x01;
        arg1 = temp0 + arg1;
        var var0 = temp0;
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
    
        var temp5 = var2;
        var temp6 = memory[0x40:0x60];
        memory[0x40:0x60] = temp6 + (temp5 + 0x1f) / 0x20 * 0x20 + 0x20;
        memory[temp6:temp6 + 0x20] = temp5;
        var temp7 = temp6 + 0x20;
        memory[temp7:temp7 + temp5] = msg.data[var1:var1 + temp5];
        memory[temp7 + temp5:temp7 + temp5 + 0x20] = 0x00;
        arg1 = temp6;
        r0 = func_088F(arg0, arg1);
        // Error: Could not resolve method call return address!
    }
    
    function setCache(var arg0, var arg1) returns (var r0) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0x02 ** 0xa0 - 0x01;
        arg1 = 0x00;
        memory[arg1:arg1 + 0x20] = msg.sender;
        memory[0x20:0x40] = arg1;
    
        if (storage[keccak256(memory[arg1:arg1 + 0x40])] != 0x01) { revert(memory[0x00:0x00]); }
    
        if (arg0 & 0x02 ** 0xa0 - 0x01) {
            storage[0x01] = (storage[0x01] & ~0xffffffffffffffffffffffffffffffffffffffff) | (arg0 & 0x02 ** 0xa0 - 0x01);
            return 0x01;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = 0x20;
            memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = 0x1f;
            memory[temp0 + 0x44:temp0 + 0x44 + 0x20] = 0x64732d70726f78792d63616368652d616464726573732d726571756972656400;
            var temp1 = memory[0x40:0x60];
            revert(memory[temp1:temp1 + temp0 - temp1 + 0x64]);
        }
    }
    
    function deny(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0x02 ** 0xa0 - 0x01;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x00;
    
        if (storage[keccak256(memory[0x00:0x40])] != 0x01) { revert(memory[0x00:0x00]); }
    
        memory[0x00:0x20] = arg0 & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x00;
        storage[keccak256(memory[0x00:0x40])] = 0x00;
    }
    
    function func_04A7(var arg0, var arg1) returns (var r0) {
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
    
        var temp6 = var2;
        var temp7 = var1;
        var temp8 = memory[0x40:0x60];
        memory[0x40:0x60] = temp8 + (temp7 + 0x1f) / 0x20 * 0x20 + 0x20;
        memory[temp8:temp8 + 0x20] = temp7;
        var temp9 = temp8 + 0x20;
        memory[temp9:temp9 + temp7] = msg.data[var0:var0 + temp7];
        memory[temp9 + temp7:temp9 + temp7 + 0x20] = 0x00;
        var temp10 = arg0;
        arg0 = temp8;
        var temp11 = arg1;
        arg1 = temp10;
        var0 = temp11;
        var1 = temp6 + 0x20;
        var2 = msg.data[temp6:temp6 + 0x20];
    
        if (var2 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp12 = var0 + var2;
        var2 = temp12;
    
        if (var2 + 0x20 > arg1) { revert(memory[0x00:0x00]); }
    
        var temp13 = var2;
        var temp14 = msg.data[temp13:temp13 + 0x20];
        var2 = temp14;
        var temp15 = var1;
        var1 = temp13 + 0x20;
        var var3 = temp15;
    
        if ((var2 > 0x0100000000) | (var1 + var2 > arg1)) { revert(memory[0x00:0x00]); }
    
        var temp16 = var2;
        var temp17 = memory[0x40:0x60];
        memory[0x40:0x60] = temp17 + (temp16 + 0x1f) / 0x20 * 0x20 + 0x20;
        memory[temp17:temp17 + 0x20] = temp16;
        var temp18 = temp17 + 0x20;
        memory[temp18:temp18 + temp16] = msg.data[var1:var1 + temp16];
        memory[temp18 + temp16:temp18 + temp16 + 0x20] = 0x00;
        arg1 = temp17;
        var temp19 = memory[0x40:0x60];
        memory[temp19:temp19 + 0x20] = 0x8bf4515c00000000000000000000000000000000000000000000000000000000;
        memory[temp19 + 0x04:temp19 + 0x04 + 0x20] = 0x20;
        var temp20 = arg0;
        memory[temp19 + 0x24:temp19 + 0x24 + 0x20] = memory[temp20:temp20 + 0x20];
        var0 = 0x60;
        var1 = 0x00;
        var2 = storage[0x01] & 0x02 ** 0xa0 - 0x01;
        var3 = 0x8bf4515c;
        var var4 = temp20;
        var var5 = temp19 + 0x04;
        var var6 = var5;
        var var7 = temp19 + 0x44;
        var var9 = memory[var4:var4 + 0x20];
        var var8 = var4 + 0x20;
        var var10 = var9;
        var var11 = var7;
        var var12 = var8;
        var var13 = var1;
    
        if (var13 >= var10) {
        label_0A73:
            var temp21 = var9;
            var7 = temp21 + var7;
            var8 = temp21 & 0x1f;
        
            if (!var8) {
                var4 = var7;
                var5 = 0x20;
                var6 = memory[0x40:0x60];
                var7 = var4 - var6;
                var8 = var6;
                var9 = var2;
                var10 = !address(var9).code.length;
            
                if (var10) { revert(memory[0x00:0x00]); }
            
            label_0ABD:
                var temp22;
                temp22, memory[var6:var6 + var5] = address(var9).staticcall.gas(msg.gas)(memory[var8:var8 + var7]);
                var5 = !temp22;
            
                if (!var5) {
                    var2 = memory[0x40:0x60];
                    var3 = returndata.length;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    var1 = memory[var2:var2 + 0x20];
                
                    if (var1 & 0x02 ** 0xa0 - 0x01) {
                    label_0BEF:
                        var2 = 0x0bf9;
                        var3 = var1;
                        var4 = arg1;
                        return func_088F(var3, var4);
                    } else {
                        var temp23 = memory[0x40:0x60];
                        memory[temp23:temp23 + 0x20] = 0x7ed0c3b200000000000000000000000000000000000000000000000000000000;
                        var5 = temp23 + 0x04;
                        memory[var5:var5 + 0x20] = 0x20;
                        var temp24 = arg0;
                        memory[temp23 + 0x24:temp23 + 0x24 + 0x20] = memory[temp24:temp24 + 0x20];
                        var2 = storage[0x01] & 0x02 ** 0xa0 - 0x01;
                        var3 = 0x7ed0c3b2;
                        var4 = temp24;
                        var6 = var5;
                        var7 = temp23 + 0x44;
                        var9 = memory[var4:var4 + 0x20];
                        var8 = var4 + 0x20;
                        var10 = var9;
                        var11 = var7;
                        var12 = var8;
                        var13 = 0x00;
                    
                        if (var13 >= var10) {
                        label_0B74:
                            var temp25 = var9;
                            var7 = temp25 + var7;
                            var8 = temp25 & 0x1f;
                        
                            if (!var8) {
                                var4 = var7;
                                var5 = 0x20;
                                var6 = memory[0x40:0x60];
                                var7 = var4 - var6;
                                var8 = var6;
                                var9 = 0x00;
                                var10 = var2;
                                var11 = !address(var10).code.length;
                            
                                if (var11) { revert(memory[0x00:0x00]); }
                            
                            label_0BC0:
                                var temp26;
                                temp26, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
                                var5 = !temp26;
                            
                                if (!var5) {
                                    var2 = memory[0x40:0x60];
                                    var3 = returndata.length;
                                
                                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                                
                                    var1 = memory[var2:var2 + 0x20];
                                    goto label_0BEF;
                                } else {
                                    var temp27 = returndata.length;
                                    memory[0x00:0x00 + temp27] = returndata[0x00:0x00 + temp27];
                                    revert(memory[0x00:0x00 + returndata.length]);
                                }
                            } else {
                                var temp28 = var8;
                                var temp29 = var7 - temp28;
                                memory[temp29:temp29 + 0x20] = ~(0x0100 ** (0x20 - temp28) - 0x01) & memory[temp29:temp29 + 0x20];
                                var4 = temp29 + 0x20;
                                var5 = 0x20;
                                var6 = memory[0x40:0x60];
                                var7 = var4 - var6;
                                var8 = var6;
                                var9 = 0x00;
                                var10 = var2;
                                var11 = !address(var10).code.length;
                            
                                if (!var11) { goto label_0BC0; }
                                else { revert(memory[0x00:0x00]); }
                            }
                        } else {
                        label_0B65:
                            var temp30 = var13;
                            memory[temp30 + var11:temp30 + var11 + 0x20] = memory[temp30 + var12:temp30 + var12 + 0x20];
                            var13 = temp30 + 0x20;
                        
                            if (var13 >= var10) { goto label_0B74; }
                            else { goto label_0B65; }
                        }
                    }
                } else {
                    var temp31 = returndata.length;
                    memory[0x00:0x00 + temp31] = returndata[0x00:0x00 + temp31];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp32 = var8;
                var temp33 = var7 - temp32;
                memory[temp33:temp33 + 0x20] = ~(0x0100 ** (0x20 - temp32) - 0x01) & memory[temp33:temp33 + 0x20];
                var4 = temp33 + 0x20;
                var5 = 0x20;
                var6 = memory[0x40:0x60];
                var7 = var4 - var6;
                var8 = var6;
                var9 = var2;
                var10 = !address(var9).code.length;
            
                if (!var10) { goto label_0ABD; }
                else { revert(memory[0x00:0x00]); }
            }
        } else {
        label_0A64:
            var temp34 = var13;
            memory[temp34 + var11:temp34 + var11 + 0x20] = memory[temp34 + var12:temp34 + var12 + 0x20];
            var13 = temp34 + 0x20;
        
            if (var13 >= var10) { goto label_0A73; }
            else { goto label_0A64; }
        }
    }
    
    function wards(var arg0, var arg1) returns (var arg0) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0x02 ** 0xa0 - 0x01;
        memory[0x20:0x40] = 0x00;
        memory[0x00:0x20] = arg0;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function func_0603(var arg0, var arg1) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x00;
    
        if (storage[keccak256(memory[0x00:0x40])] != 0x01) { revert(memory[0x00:0x00]); }
    
        var temp0 = arg1;
        var temp1;
        temp1, memory[0x00:0x00] = address(arg0).delegatecall.gas(msg.gas)(memory[temp0 + 0x20:temp0 + 0x20 + memory[temp0:temp0 + 0x20]]);
        var var1 = !temp1;
    
        if (var1 == 0x01) { revert(memory[0x00:0x00]); }
        else { return; }
    }
    
    function cache() returns (var r0) { return storage[0x01] & 0x02 ** 0xa0 - 0x01; }
    
    function func_088F(var arg0, var arg1) returns (var r0) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x00;
        var var0 = 0x60;
    
        if (storage[keccak256(memory[0x00:0x40])] != 0x01) { revert(memory[0x00:0x00]); }
    
        var temp0 = arg1;
        var temp1;
        temp1, memory[0x00:0x00] = address(arg0).delegatecall.gas(msg.gas)(memory[temp0 + 0x20:temp0 + 0x20 + memory[temp0:temp0 + 0x20]]);
        var temp2 = returndata.length;
        var var2 = temp2;
        var temp3 = memory[0x40:0x60];
        var0 = temp3;
        memory[0x40:0x60] = var0 + (var2 + 0x20 + 0x1f & ~0x1f);
        memory[var0:var0 + 0x20] = var2;
        memory[var0 + 0x20:var0 + 0x20 + var2] = returndata[0x00:0x00 + var2];
        var var3 = !temp1;
    
        if (var3 == 0x01) { revert(memory[var0 + 0x20:var0 + 0x20 + var2]); }
        else { return var0; }
    }
}