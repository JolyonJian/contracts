contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length < 0x04) { stop(); }
    
        var var0 = msg.data[0x00:0x20] >> 0xe0;
    
        if (0x847a771a > var0) {
            if (0x48d5c7e3 > var0) {
                if (var0 == 0x1626ba7e) {
                    // Dispatch table entry for isValidSignature(bytes32,bytes)
                    var var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0115;
                    var var2 = 0x0110;
                    var var3 = msg.data.length;
                    var var4 = 0x04;
                    var2, var3 = func_207D(var3, var4);
                    var1 = func_0110(var2, var3);
                    var temp0 = var1;
                    var1 = 0x0122;
                    var2 = temp0;
                    var3 = memory[0x40:0x60];
                    var1 = func_235F(var2, var3);
                
                label_0122:
                    var temp1 = memory[0x40:0x60];
                    return memory[temp1:temp1 + var1 - temp1];
                } else if (var0 == 0x178979ae) {
                    // Dispatch table entry for 0x178979ae (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x00f3;
                    var2 = 0x0146;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4 = func_1D29(var3, var4);
                    func_0146(var2, var3, var4);
                    stop();
                } else if (var0 == 0x29411510) {
                    // Dispatch table entry for 0x29411510 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x00f3;
                    var2 = 0x0166;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4 = func_1EC7(var3, var4);
                    func_0166(var2, var3, var4);
                    stop();
                } else if (var0 == 0x3e004d44) {
                    // Dispatch table entry for 0x3e004d44 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x00f3;
                    var2 = 0x0186;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var var5;
                    var var6;
                    var var7;
                    var var8;
                    var var9;
                    var var10;
                    var2, var3, var4, var5, var6, var7, var8, var9, var10 = func_1DFA(var3, var4);
                    var var11 = msg.gas;
                    var var12 = 0x06b6;
                    var var13 = var2;
                    var var14 = var3;
                    var var15 = var4;
                    var var16 = var5;
                    var var17 = var6;
                    var var18 = var7;
                    var var19 = var8;
                    var var20 = var9;
                    var var21 = var10;
                
                label_0BAD:
                    var var22 = 0x0bbe;
                    var var23 = var13;
                    var var24 = var14;
                    var var25 = var15;
                    var var26 = var16;
                    var var27 = var17;
                    var var28 = var18;
                    var var29 = var19;
                    var var30 = var20;
                    var var31 = var21;
                    var var32 = 0x00;
                    var var33 = 0x1624;
                    var var34 = var23;
                    var var35 = var24;
                    var var36 = var25;
                    var var37 = 0x00;
                    var var38 = 0x0f21;
                    var var39 = var34;
                    var var40 = var35;
                    var var41 = var36;
                    func_1757(var39, var40, var41);
                    var38 = 0x00;
                    var39 = 0x0f3c;
                    var40 = storage[0x06];
                    var41 = var34;
                    var var42 = var35;
                    var var44 = memory[0x40:0x60] + 0x20;
                    var var43 = var36;
                    var39 = func_21FD(var40, var41, var42, var43, var44);
                    var temp2 = memory[0x40:0x60];
                    var temp3 = var39;
                    memory[temp2:temp2 + 0x20] = temp3 - temp2 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0;
                    memory[0x40:0x60] = temp3;
                    var37 = keccak256(memory[temp2 + 0x20:temp2 + 0x20 + memory[temp2:temp2 + 0x20]]);
                    var33 = var37;
                    // Error: Could not resolve jump destination!
                } else { stop(); }
            } else if (var0 == 0x48d5c7e3) {
                // Dispatch table entry for 0x48d5c7e3 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00f3;
                var2 = 0x01a6;
                var3 = msg.data.length;
                var4 = 0x04;
                var5 = 0x00;
                var6 = var5;
            
                if (var3 - var4 i>= 0x40) {
                    var7 = msg.data[var4:var4 + 0x20];
                    var8 = 0xffffffffffffffff;
                
                    if (var7 <= var8) {
                        var temp4 = var4 + var7;
                        var7 = temp4;
                    
                        if (var7 + 0x1f i< var3) {
                            var9 = msg.data[var7:var7 + 0x20];
                            var10 = 0x1fe4;
                            var11 = 0x1bc0;
                            var12 = var9;
                            var11 = func_2723(var12);
                            var10 = func_1BC0(var11);
                            var temp5 = var10;
                            var11 = temp5;
                            var temp6 = var9;
                            memory[var11:var11 + 0x20] = temp6;
                            var12 = 0x20;
                            var10 = var11 + var12;
                            var temp7 = var7;
                            var13 = temp7 + var12;
                        
                            if (temp7 + temp6 * var12 + var12 <= var3) {
                                var7 = var5;
                            
                                if (var7 >= var9) {
                                label_202F:
                                    var5 = var11;
                                    var7 = msg.data[var4 + var12:var4 + var12 + 0x20];
                                
                                    if (var7 <= var8) {
                                        var8 = 0x2053;
                                        var9 = var3;
                                        var10 = var4 + var7;
                                        var8 = func_1C19(var9, var10);
                                        var3 = var8;
                                        var2 = var5;
                                        // Error: Could not resolve jump destination!
                                    } else {
                                        var temp8 = var6;
                                        revert(memory[temp8:temp8 + temp8]);
                                    }
                                } else {
                                label_2011:
                                    var14 = msg.data[var13:var13 + 0x20];
                                    var15 = 0x201b;
                                    var16 = var14;
                                    func_276D(var16);
                                    var temp9 = var10;
                                    memory[temp9:temp9 + 0x20] = var14;
                                    var7 = var7 + 0x01;
                                    var temp10 = var12;
                                    var10 = temp10 + temp9;
                                    var13 = temp10 + var13;
                                
                                    if (var7 >= var9) { goto label_202F; }
                                    else { goto label_2011; }
                                }
                            } else {
                                var temp11 = var5;
                                revert(memory[temp11:temp11 + temp11]);
                            }
                        } else {
                            var temp12 = var5;
                            revert(memory[temp12:temp12 + temp12]);
                        }
                    } else {
                        var temp13 = var5;
                        revert(memory[temp13:temp13 + temp13]);
                    }
                } else {
                    var temp14 = var5;
                    revert(memory[temp14:temp14 + temp14]);
                }
            } else if (var0 == 0x55a61f40) {
                // Dispatch table entry for mintChi(uint256)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00f3;
                var2 = 0x01c6;
                var3 = msg.data.length;
                var4 = 0x04;
                var2 = func_20B8(var3, var4);
                func_01C6(var2);
                stop();
            } else if (var0 == 0x6a5b266d) {
                // Dispatch table entry for CHI()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x01e0;
                var2 = func_08FB();
                var temp15 = var2;
                var2 = 0x0122;
                var3 = temp15;
                var4 = memory[0x40:0x60];
                var2 = func_23B4(var3, var4);
                goto label_0122;
            } else if (var0 == 0x729df14c) {
                // Dispatch table entry for 0x729df14c (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00f3;
                var2 = 0x0208;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4 = func_1EC7(var3, var4);
                func_0208(var2, var3, var4);
                stop();
            } else { stop(); }
        } else if (0xc36f210b > var0) {
            if (var0 == 0x847a771a) {
                // Dispatch table entry for 0x847a771a (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00f3;
                var2 = 0x0228;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4 = func_1D29(var3, var4);
                func_0228(var2, var3, var4);
                stop();
            } else if (var0 == 0xa6dd0c50) {
                // Dispatch table entry for 0xa6dd0c50 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x024d;
                var2 = 0x0248;
                var3 = msg.data.length;
                var4 = 0x04;
                var2 = func_1D0D(var3, var4);
                var2 = func_0248(var2);
                var temp16 = var2;
                var2 = 0x0122;
                var3 = temp16;
                var4 = memory[0x40:0x60];
                var2 = func_2354(var3, var4);
                goto label_0122;
            } else if (var0 == 0xad0b5105) {
                // Dispatch table entry for 0xad0b5105 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00f3;
                var2 = 0x0275;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4, var5, var6, var7, var8, var9, var10 = func_1DFA(var3, var4);
                goto label_0BAD;
            } else if (var0 == 0xc217d070) {
                // Dispatch table entry for 0xc217d070 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00f3;
                var2 = 0x0295;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4 = func_1EC7(var3, var4);
                func_0295(var2, var3, var4);
                stop();
            } else { stop(); }
        } else if (var0 == 0xc36f210b) {
            // Dispatch table entry for 0xc36f210b (unknown)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x0115;
            var2 = 0x02b5;
            var3 = msg.data.length;
            var4 = 0x04;
            var5 = 0x00;
            var6 = var5;
            var7 = 0x00;
        
            if (var3 - var4 i>= 0x60) {
                var8 = msg.data[var4:var4 + 0x20];
                var9 = 0xffffffffffffffff;
            
                if (var8 <= var9) {
                    var10 = 0x1db7;
                    var11 = var3;
                    var12 = var4 + var8;
                    var10 = func_1BA2(var11, var12);
                    var5 = var10;
                    var8 = msg.data[var4 + 0x20:var4 + 0x20 + 0x20];
                
                    if (var8 <= var9) {
                        var10 = 0x1dd8;
                        var11 = var3;
                        var12 = var4 + var8;
                        var10 = func_1BA2(var11, var12);
                        var6 = var10;
                        var8 = msg.data[var4 + 0x40:var4 + 0x40 + 0x20];
                    
                        if (var8 <= var9) {
                            var9 = 0x1d76;
                            var10 = var3;
                            var11 = var4 + var8;
                            var9 = func_1C19(var10, var11);
                            var4 = var9;
                            var3 = var6;
                            var2 = var5;
                            // Error: Could not resolve jump destination!
                        } else {
                            var temp17 = var7;
                            revert(memory[temp17:temp17 + temp17]);
                        }
                    } else {
                        var temp18 = var6;
                        revert(memory[temp18:temp18 + temp18]);
                    }
                } else {
                    var temp19 = var5;
                    revert(memory[temp19:temp19 + temp19]);
                }
            } else {
                var temp20 = var5;
                revert(memory[temp20:temp20 + temp20]);
            }
        } else if (var0 == 0xcdcab4a3) {
            // Dispatch table entry for drainETH(uint256)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x00f3;
            var2 = 0x02d5;
            var3 = msg.data.length;
            var4 = 0x04;
            var2 = func_20B8(var3, var4);
            func_02D5(var2);
            stop();
        } else if (var0 == 0xdff69b6c) {
            // Dispatch table entry for 0xdff69b6c (unknown)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x00f3;
            var2 = 0x02f5;
            var3 = msg.data.length;
            var4 = 0x04;
            var2, var3, var4 = func_1EC7(var3, var4);
            func_02F5(var2, var3, var4);
            stop();
        } else if (var0 == 0xe264172c) {
            // Dispatch table entry for drainETH()
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x00f3;
            drainETH();
            stop();
        } else { stop(); }
    }
    
    function func_0110(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = memory[arg1:arg1 + 0x20] == 0x57;
    
        if (var2) {
            if (!var2) {
            label_0339:
                var2 = 0x0343;
                var var3 = arg0;
                var var4 = arg1;
                var2 = func_126C(var3, var4);
                var1 = var2;
                memory[0x00:0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[0x20:0x40] = 0x05;
            
                if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
                label_03AE:
                    return 0xb067138131d606f18b51e6ee32605a2acac5aad86d6a80011ed9cb2bab20c1c7;
                } else {
                label_0374:
                    var temp0 = memory[0x40:0x60];
                    memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var2 = 0x03a5;
                    var3 = temp0 + 0x04;
                    var2 = func_2558(var3);
                    var temp1 = memory[0x40:0x60];
                    revert(memory[temp1:temp1 + var2 - temp1]);
                }
            } else {
            label_0329:
                var2 = 0x0332;
                var3 = arg0;
                var4 = arg1;
                var2 = func_1110(var3, var4);
                var1 = var2;
                memory[0x00:0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[0x20:0x40] = 0x05;
            
                if (storage[keccak256(memory[0x00:0x40])] & 0xff) { goto label_03AE; }
                else { goto label_0374; }
            }
        } else if (memory[arg1:arg1 + 0x20] != 0x58) { goto label_0339; }
        else { goto label_0329; }
    }
    
    function func_0146(var arg0, var arg1, var arg2) {
        func_03D7(arg0, arg1, arg2);
        // Error: Could not resolve method call return address!
    }
    
    function func_0166(var arg0, var arg1, var arg2) {
        func_04D9(arg0, arg1, arg2);
        // Error: Could not resolve method call return address!
    }
    
    function func_01C6(var arg0) {
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0xa0712d6800000000000000000000000000000000000000000000000000000000;
        var var0 = 0x4946c0e9f43f4dee607b0ef1fa1c;
        var var1 = 0xa0712d68;
        var var2 = 0x08c6;
        var var3 = arg0;
        var var4 = temp0 + 0x04;
        var2 = func_235F(var3, var4);
        var3 = 0x00;
        var4 = memory[0x40:0x60];
        var var5 = var2 - var4;
        var var6 = var4;
        var var7 = 0x00;
        var var8 = var0;
        var var9 = !address(var8).code.length;
    
        if (var9) { revert(memory[0x00:0x00]); }
    
        var temp1;
        temp1, memory[var4:var4 + var3] = address(var8).call.gas(msg.gas).value(var7)(memory[var6:var6 + var5]);
        var3 = !temp1;
    
        if (!var3) { return; }
    
        var temp2 = returndata.length;
        memory[0x00:0x00 + temp2] = returndata[0x00:0x00 + temp2];
        revert(memory[0x00:0x00 + returndata.length]);
    }
    
    function func_0208(var arg0, var arg1, var arg2) {
        func_090D(arg0, arg1, arg2);
        // Error: Could not resolve method call return address!
    }
    
    function func_0228(var arg0, var arg1, var arg2) {
        var var0 = msg.gas;
        var var1 = 0x0ad8;
        var var2 = arg0;
        var var3 = arg1;
        var var4 = arg2;
        func_03D7(var2, var3, var4);
        var1 = (var0 + 0x5208) - msg.gas + msg.data.length * 0x10;
        var2 = 0xffffffffffffffffffffffffffffffffffffffff & 0x4946c0e9f43f4dee607b0ef1fa1c;
        var3 = 0x6366b936;
        var4 = 0xa3db;
        var var5 = var1 + 0x374a;
    
        if (!var4) { assert(); }
    
        var temp0 = var5 / var4;
        var temp1 = memory[0x40:0x60];
        memory[temp1:temp1 + 0x20] = (var3 & 0xffffffff) << 0xe0;
        var4 = 0x0b3e;
        var var6 = temp1 + 0x04;
        var5 = temp0;
        var4 = func_235F(var5, var6);
        var5 = 0x20;
        var6 = memory[0x40:0x60];
        var var7 = var4 - var6;
        var var8 = var6;
        var var9 = 0x00;
        var var10 = var2;
        var var11 = !address(var10).code.length;
    
        if (var11) { revert(memory[0x00:0x00]); }
    
        var temp2;
        temp2, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
        var5 = !temp2;
    
        if (!var5) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var2 = 0x0b90;
            var4 = temp3;
            var3 = var4 + temp4;
            var2 = func_20D0(var3, var4);
            return;
        } else {
            var temp5 = returndata.length;
            memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_0248(var arg0) returns (var arg0) {
        memory[0x20:0x40] = 0x01;
        memory[0x00:0x20] = arg0;
        return storage[keccak256(memory[0x00:0x40])] & 0xff;
    }
    
    function func_0295(var arg0, var arg1, var arg2) {
        var var0 = msg.gas;
        var var1 = 0x0ad8;
        var var2 = arg0;
        var var3 = arg1;
        var var4 = arg2;
        func_090D(var2, var3, var4);
        var1 = (var0 + 0x5208) - msg.gas + msg.data.length * 0x10;
        var2 = 0xffffffffffffffffffffffffffffffffffffffff & 0x4946c0e9f43f4dee607b0ef1fa1c;
        var3 = 0x6366b936;
        var4 = 0xa3db;
        var var5 = var1 + 0x374a;
    
        if (!var4) { assert(); }
    
        var temp0 = var5 / var4;
        var temp1 = memory[0x40:0x60];
        memory[temp1:temp1 + 0x20] = (var3 & 0xffffffff) << 0xe0;
        var4 = 0x0b3e;
        var var6 = temp1 + 0x04;
        var5 = temp0;
        var4 = func_235F(var5, var6);
        var5 = 0x20;
        var6 = memory[0x40:0x60];
        var var7 = var4 - var6;
        var var8 = var6;
        var var9 = 0x00;
        var var10 = var2;
        var var11 = !address(var10).code.length;
    
        if (var11) { revert(memory[0x00:0x00]); }
    
        var temp2;
        temp2, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
        var5 = !temp2;
    
        if (!var5) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var2 = 0x0b90;
            var4 = temp3;
            var3 = var4 + temp4;
            var2 = func_20D0(var3, var4);
            return;
        } else {
            var temp5 = returndata.length;
            memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_02D5(var arg0) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x03;
    
        if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
            var var0 = 0xffffffffffffffffffffffffffffffffffffffff & 0xf079e68bbcc79ab9600ace786b0a4db1c83c;
            var var1 = arg0;
            var var3 = memory[0x40:0x60];
            var var2 = 0x0ffc;
            var2 = func_2304(var3);
            var temp0 = memory[0x40:0x60];
            var temp1;
            temp1, memory[temp0:temp0 + 0x00] = address(var0).call.gas(msg.gas).value(var1)(memory[temp0:temp0 + var2 - temp0]);
            var1 = returndata.length;
            var2 = var1;
        
            if (var2 == 0x00) { return; }
        
            var temp2 = memory[0x40:0x60];
            var1 = temp2;
            memory[0x40:0x60] = var1 + (returndata.length + 0x3f & ~0x1f);
            memory[var1:var1 + 0x20] = returndata.length;
            var temp3 = returndata.length;
            memory[var1 + 0x20:var1 + 0x20 + temp3] = returndata[0x00:0x00 + temp3];
            return;
        } else {
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp4 + 0x04;
            var0 = 0x03a5;
            var0 = func_2558(var1);
            var temp5 = memory[0x40:0x60];
            revert(memory[temp5:temp5 + var0 - temp5]);
        }
    }
    
    function func_02F5(var arg0, var arg1, var arg2) {
        var var0 = msg.gas;
        var var1 = 0x0ad8;
        var var2 = arg0;
        var var3 = arg1;
        var var4 = arg2;
        func_04D9(var2, var3, var4);
        var1 = (var0 + 0x5208) - msg.gas + msg.data.length * 0x10;
        var2 = 0xffffffffffffffffffffffffffffffffffffffff & 0x4946c0e9f43f4dee607b0ef1fa1c;
        var3 = 0x6366b936;
        var4 = 0xa3db;
        var var5 = var1 + 0x374a;
    
        if (!var4) { assert(); }
    
        var temp0 = var5 / var4;
        var temp1 = memory[0x40:0x60];
        memory[temp1:temp1 + 0x20] = (var3 & 0xffffffff) << 0xe0;
        var4 = 0x0b3e;
        var var6 = temp1 + 0x04;
        var5 = temp0;
        var4 = func_235F(var5, var6);
        var5 = 0x20;
        var6 = memory[0x40:0x60];
        var var7 = var4 - var6;
        var var8 = var6;
        var var9 = 0x00;
        var var10 = var2;
        var var11 = !address(var10).code.length;
    
        if (var11) { revert(memory[0x00:0x00]); }
    
        var temp2;
        temp2, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
        var5 = !temp2;
    
        if (!var5) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var2 = 0x0b90;
            var4 = temp3;
            var3 = var4 + temp4;
            var2 = func_20D0(var3, var4);
            return;
        } else {
            var temp5 = returndata.length;
            memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_03D7(var arg0, var arg1, var arg2) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x02;
    
        if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
            memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = 0x01;
            var var0 = arg0;
        
            if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) {
                var temp2 = memory[0x40:0x60];
                memory[temp2:temp2 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                var2 = temp2 + 0x04;
                var1 = 0x03a5;
                var1 = func_2558(var2);
                goto label_03A5;
            } else if (storage[0x00] != 0x02) {
                storage[0x00] = 0x02;
                var var1 = 0x04ce;
                var var2 = arg0;
                var var3 = arg1;
                var var4 = arg2;
                func_133B(var2, var3, var4);
            
            label_04CE:
                storage[0x00] = 0x01;
                return;
            } else {
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                var2 = temp0 + 0x04;
                var1 = 0x03a5;
                var1 = func_26C8(var2);
            
            label_03A5:
                var temp1 = memory[0x40:0x60];
                revert(memory[temp1:temp1 + var1 - temp1]);
            }
        } else {
            var temp3 = memory[0x40:0x60];
            memory[temp3:temp3 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp3 + 0x04;
            var0 = 0x03a5;
            var0 = func_2558(var1);
            goto label_03A5;
        }
    }
    
    function func_04D9(var arg0, var arg1, var arg2) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x02;
    
        if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
            var var0 = arg0;
            var var1 = 0x00;
        
            if (var1 >= memory[var0:var0 + 0x20]) {
            label_05B1:
            
                if (storage[0x00] != 0x02) {
                    storage[0x00] = 0x02;
                    var1 = memory[arg0:arg0 + 0x20] == memory[arg1:arg1 + 0x20];
                
                    if (!var1) {
                        if (var1) {
                        label_063C:
                            var1 = 0x00;
                        
                            if (var1 >= memory[arg0:arg0 + 0x20]) {
                            label_0694:
                                storage[0x00] = 0x01;
                                return;
                            } else {
                            label_0649:
                                var var2 = 0x068c;
                                var var3 = arg0;
                                var var4 = var1;
                            
                                if (var4 >= memory[var3:var3 + 0x20]) { assert(); }
                            
                                func_0657(arg1, arg2, var1, var3, var4);
                            
                            label_068C:
                                var1 = var1 + 0x01;
                            
                                if (var1 >= memory[arg0:arg0 + 0x20]) { goto label_0694; }
                                else { goto label_0649; }
                            }
                        } else {
                        label_060B:
                            var temp0 = memory[0x40:0x60];
                            memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                            var2 = temp0 + 0x04;
                            var1 = 0x03a5;
                            var1 = func_258F(var2);
                        
                        label_03A5:
                            var temp1 = memory[0x40:0x60];
                            revert(memory[temp1:temp1 + var1 - temp1]);
                        }
                    } else if (memory[arg1:arg1 + 0x20] == memory[arg2:arg2 + 0x20]) { goto label_063C; }
                    else { goto label_060B; }
                } else {
                    var temp2 = memory[0x40:0x60];
                    memory[temp2:temp2 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var2 = temp2 + 0x04;
                    var1 = 0x03a5;
                    var1 = func_26C8(var2);
                    goto label_03A5;
                }
            } else {
            label_0530:
                var2 = 0x01;
                var3 = 0x00;
                var4 = var0;
                var var5 = var1;
            
                if (var5 >= memory[var4:var4 + 0x20]) { assert(); }
            
                var temp3 = var3;
                memory[temp3:temp3 + 0x20] = memory[var5 * 0x20 + var4 + 0x20:var5 * 0x20 + var4 + 0x20 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp3 + 0x20:temp3 + 0x20 + 0x20] = var2;
            
                if (storage[keccak256(memory[0x00:0x00 + temp3 + 0x40])] & 0xff) {
                    var1 = var1 + 0x01;
                
                    if (var1 >= memory[var0:var0 + 0x20]) { goto label_05B1; }
                    else { goto label_0530; }
                } else {
                    var temp4 = memory[0x40:0x60];
                    memory[temp4:temp4 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var3 = temp4 + 0x04;
                    var2 = 0x03a5;
                    var2 = func_2558(var3);
                    goto label_03A5;
                }
            }
        } else {
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var0 = 0x03a5;
            var1 = temp5 + 0x04;
            var0 = func_2558(var1);
            goto label_03A5;
        }
    }
    
    function func_0657(var arg0, var arg1, var arg2, var arg3, var arg4) {
        arg3 = memory[arg4 * 0x20 + 0x20 + arg3:arg4 * 0x20 + 0x20 + arg3 + 0x20];
        arg4 = arg0;
        var var0 = arg2;
    
        if (var0 >= memory[arg4:arg4 + 0x20]) { assert(); }
    
        arg4 = memory[var0 * 0x20 + 0x20 + arg4:var0 * 0x20 + 0x20 + arg4 + 0x20];
        var0 = arg1;
        var var1 = arg2;
    
        if (var1 >= memory[var0:var0 + 0x20]) { assert(); }
    
        var0 = memory[var1 * 0x20 + 0x20 + var0:var1 * 0x20 + 0x20 + var0 + 0x20];
        func_133B(arg3, arg4, var0);
        // Error: Could not resolve method call return address!
    }
    
    function func_08FB() returns (var r0) { return 0x4946c0e9f43f4dee607b0ef1fa1c; }
    
    function func_090D(var arg0, var arg1, var arg2) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x02;
    
        if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
            var var0 = arg0;
            var var1 = 0x00;
        
            if (var1 >= memory[var0:var0 + 0x20]) {
            label_09E5:
            
                if (storage[0x00] != 0x02) {
                    storage[0x00] = 0x02;
                    var1 = memory[arg0:arg0 + 0x20] == memory[arg1:arg1 + 0x20];
                
                    if (!var1) {
                        if (var1) {
                        label_0A70:
                            var1 = 0x00;
                        
                            if (var1 >= memory[arg0:arg0 + 0x20]) {
                            label_0694:
                                storage[0x00] = 0x01;
                                return;
                            } else {
                            label_0A7D:
                                var var2 = 0x0ac0;
                                var var3 = arg0;
                                var var4 = var1;
                            
                                if (var4 >= memory[var3:var3 + 0x20]) { assert(); }
                            
                                func_0A8B(arg1, arg2, var1, var3, var4);
                                var1 = var1 + 0x01;
                            
                                if (var1 >= memory[arg0:arg0 + 0x20]) { goto label_0694; }
                                else { goto label_0A7D; }
                            }
                        } else {
                        label_0A3F:
                            var temp0 = memory[0x40:0x60];
                            memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                            var2 = temp0 + 0x04;
                            var1 = 0x03a5;
                            var1 = func_258F(var2);
                        
                        label_03A5:
                            var temp1 = memory[0x40:0x60];
                            revert(memory[temp1:temp1 + var1 - temp1]);
                        }
                    } else if (memory[arg1:arg1 + 0x20] == memory[arg2:arg2 + 0x20]) { goto label_0A70; }
                    else { goto label_0A3F; }
                } else {
                    var temp2 = memory[0x40:0x60];
                    memory[temp2:temp2 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var1 = 0x03a5;
                    var2 = temp2 + 0x04;
                    var1 = func_26C8(var2);
                    goto label_03A5;
                }
            } else {
            label_0964:
                var2 = 0x01;
                var3 = 0x00;
                var4 = var0;
                var var5 = var1;
            
                if (var5 >= memory[var4:var4 + 0x20]) { assert(); }
            
                var temp3 = var3;
                memory[temp3:temp3 + 0x20] = memory[var5 * 0x20 + var4 + 0x20:var5 * 0x20 + var4 + 0x20 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp3 + 0x20:temp3 + 0x20 + 0x20] = var2;
            
                if (storage[keccak256(memory[0x00:0x00 + temp3 + 0x40])] & 0xff) {
                    var1 = var1 + 0x01;
                
                    if (var1 >= memory[var0:var0 + 0x20]) { goto label_09E5; }
                    else { goto label_0964; }
                } else {
                    var temp4 = memory[0x40:0x60];
                    memory[temp4:temp4 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var3 = temp4 + 0x04;
                    var2 = 0x03a5;
                    var2 = func_2558(var3);
                    goto label_03A5;
                }
            }
        } else {
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp5 + 0x04;
            var0 = 0x03a5;
            var0 = func_2558(var1);
            goto label_03A5;
        }
    }
    
    function func_0A8B(var arg0, var arg1, var arg2, var arg3, var arg4) {
        arg3 = memory[arg4 * 0x20 + 0x20 + arg3:arg4 * 0x20 + 0x20 + arg3 + 0x20];
        arg4 = arg0;
        var var0 = arg2;
    
        if (var0 >= memory[arg4:arg4 + 0x20]) { assert(); }
    
        arg4 = memory[var0 * 0x20 + 0x20 + arg4:var0 * 0x20 + 0x20 + arg4 + 0x20];
        var0 = arg1;
        var var1 = arg2;
    
        if (var1 >= memory[var0:var0 + 0x20]) { assert(); }
    
        var0 = memory[var1 * 0x20 + 0x20 + var0:var1 * 0x20 + 0x20 + var0 + 0x20];
    
        if (arg4 <= address(this).balance) {
            var1 = 0x00;
            var var2 = 0x60;
            var var3 = arg3 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var4 = arg4;
            var var5 = 0x1548;
            var var7 = memory[0x40:0x60];
            var var6 = var0;
            var5 = func_21E1(var6, var7);
            var temp0 = memory[0x40:0x60];
            var temp1;
            temp1, memory[temp0:temp0 + 0x00] = address(var3).call.gas(msg.gas).value(var4)(memory[temp0:temp0 + var5 - temp0]);
            var4 = returndata.length;
            var5 = var4;
        
            if (var5 == 0x00) {
                var2 = 0x60;
                var1 = var3;
            
                if (var1) {
                label_08F4:
                    return;
                } else {
                label_1595:
                    var3 = arg4;
                    var4 = arg3 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var5 = 0x335a31c96b94b80f0be06ac8580999f098962ec15c75c6cf3c48df0628ce2531;
                    var6 = 0x15dd;
                    var7 = var0;
                    var var9 = memory[0x40:0x60];
                    var var8 = var2;
                    var6 = func_2386(var7, var8, var9);
                    var temp2 = memory[0x40:0x60];
                    log(memory[temp2:temp2 + var6 - temp2], [stack[-2], stack[-3], stack[-4]]);
                    var temp3 = memory[0x40:0x60];
                    memory[temp3:temp3 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var3 = 0x03a5;
                    var4 = temp3 + 0x04;
                    var3 = func_23E8(var4);
                
                label_03A5:
                    var temp4 = memory[0x40:0x60];
                    revert(memory[temp4:temp4 + var3 - temp4]);
                }
            } else {
                var temp5 = memory[0x40:0x60];
                var4 = temp5;
                memory[0x40:0x60] = var4 + (returndata.length + 0x3f & ~0x1f);
                memory[var4:var4 + 0x20] = returndata.length;
                var temp6 = returndata.length;
                memory[var4 + 0x20:var4 + 0x20 + temp6] = returndata[0x00:0x00 + temp6];
                var2 = var4;
                var1 = var3;
            
                if (var1) { goto label_08F4; }
                else { goto label_1595; }
            }
        } else {
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var2 = temp7 + 0x04;
            var1 = 0x03a5;
            var1 = func_2456(var2);
            goto label_03A5;
        }
    }
    
    function drainETH() {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x03;
    
        if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
            var var0 = 0xffffffffffffffffffffffffffffffffffffffff & 0xf079e68bbcc79ab9600ace786b0a4db1c83c;
            var var1 = address(this).balance;
            var var2 = 0x10d3;
            var var3 = memory[0x40:0x60];
            var2 = func_2304(var3);
            var temp0 = memory[0x40:0x60];
            var temp1;
            temp1, memory[temp0:temp0 + 0x00] = address(var0).call.gas(msg.gas).value(var1)(memory[temp0:temp0 + var2 - temp0]);
            var1 = returndata.length;
            var2 = var1;
        
            if (var2 == 0x00) {
            label_0877:
                return;
            } else {
                var temp2 = memory[0x40:0x60];
                var1 = temp2;
                memory[0x40:0x60] = var1 + (returndata.length + 0x3f & ~0x1f);
                memory[var1:var1 + 0x20] = returndata.length;
                var temp3 = returndata.length;
                memory[var1 + 0x20:var1 + 0x20 + temp3] = returndata[0x00:0x00 + temp3];
                goto label_0877;
            }
        } else {
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var0 = 0x03a5;
            var1 = temp4 + 0x04;
            var0 = func_2558(var1);
            var temp5 = memory[0x40:0x60];
            revert(memory[temp5:temp5 + var0 - temp5]);
        }
    }
    
    function func_1110(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = 0x00;
        var var5 = var4;
        var var6 = arg1;
        var var7 = 0x00;
    
        if (var7 >= memory[var6:var6 + 0x20]) { assert(); }
    
        var temp0 = arg1;
        var temp1 = memory[temp0 + 0x75:temp0 + 0x75 + 0x20];
        var1 = memory[var7 + var6 + 0x20:var7 + var6 + 0x20 + 0x20] >> 0xf8;
        var2 = memory[temp0 + 0x21:temp0 + 0x21 + 0x20];
        var3 = memory[temp0 + 0x41:temp0 + 0x41 + 0x20];
        var4 = memory[temp0 + 0x55:temp0 + 0x55 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        var5 = temp1 & 0xffff000000000000000000000000000000000000000000000000000000000000;
        var6 = temp1 >> 0xf0;
    
        if (var6 < 0x2710) {
            var7 = 0x01;
            var var8 = 0x11de;
            var var9 = arg0;
            var var10 = var4;
            var var12 = memory[0x40:0x60] + 0x20;
            var var11 = var6;
            var8 = func_224B(var9, var10, var11, var12);
            var temp2 = memory[0x40:0x60];
            var temp3 = var8;
            memory[temp2:temp2 + 0x20] = temp3 - temp2 - 0x20;
            memory[0x40:0x60] = temp3;
            var temp4 = keccak256(memory[temp2 + 0x20:temp2 + 0x20 + memory[temp2:temp2 + 0x20]]);
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = 0x00;
            memory[0x40:0x60] = temp5 + 0x20;
            var8 = 0x1214;
            var9 = temp4;
            var10 = var1;
            var11 = var2;
            var var13 = memory[0x40:0x60];
            var12 = var3;
            var8 = func_2368(var9, var10, var11, var12, var13);
            var temp6 = memory[0x40:0x60];
            var temp7;
            temp7, memory[temp6 - 0x20:temp6 - 0x20 + 0x20] = address(var7).staticcall.gas(msg.gas)(memory[temp6:temp6 + var8 - temp6]);
            var9 = !temp7;
        
            if (!var9) { return memory[memory[0x40:0x60] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0:memory[0x40:0x60] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 0x20]; }
        
            var temp8 = returndata.length;
            memory[0x00:0x00 + temp8] = returndata[0x00:0x00 + temp8];
            revert(memory[0x00:0x00 + returndata.length]);
        } else {
            var temp9 = memory[0x40:0x60];
            memory[temp9:temp9 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var7 = 0x03a5;
            var8 = temp9 + 0x04;
            var7 = func_248D(var8);
            var temp10 = memory[0x40:0x60];
            revert(memory[temp10:temp10 + var7 - temp10]);
        }
    }
    
    function func_126C(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = arg1;
        var var5 = 0x00;
    
        if (var5 >= memory[var4:var4 + 0x20]) { assert(); }
    
        var1 = ((memory[var5 + 0x20 + var4:var5 + 0x20 + var4 + 0x20] >> 0xf8) << 0xf8) >> 0xf8;
        var temp0 = arg1;
        var2 = memory[temp0 + 0x21:temp0 + 0x21 + 0x20];
        var3 = memory[temp0 + 0x41:temp0 + 0x41 + 0x20];
        var4 = 0x01;
        var5 = 0x12b0;
        var var7 = memory[0x40:0x60] + 0x20;
        var var6 = arg0;
        var5 = func_22D3(var6, var7);
        var temp1 = memory[0x40:0x60];
        var temp2 = var5;
        memory[temp1:temp1 + 0x20] = temp2 - temp1 - 0x20;
        memory[0x40:0x60] = temp2;
        var temp3 = keccak256(memory[temp1 + 0x20:temp1 + 0x20 + memory[temp1:temp1 + 0x20]]);
        var temp4 = memory[0x40:0x60];
        memory[temp4:temp4 + 0x20] = 0x00;
        memory[0x40:0x60] = temp4 + 0x20;
        var5 = 0x12e6;
        var6 = temp3;
        var7 = var1;
        var var8 = var2;
        var var10 = memory[0x40:0x60];
        var var9 = var3;
        var5 = func_2368(var6, var7, var8, var9, var10);
        var temp5 = memory[0x40:0x60];
        var temp6;
        temp6, memory[temp5 - 0x20:temp5 - 0x20 + 0x20] = address(var4).staticcall.gas(msg.gas)(memory[temp5:temp5 + var5 - temp5]);
        var6 = !temp6;
    
        if (!var6) { return memory[memory[0x40:0x60] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0:memory[0x40:0x60] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 0x20]; }
    
        var temp7 = returndata.length;
        memory[0x00:0x00 + temp7] = returndata[0x00:0x00 + temp7];
        revert(memory[0x00:0x00 + returndata.length]);
    }
    
    function func_133B(var arg0, var arg1, var arg2) {
        if (arg1 <= address(this).balance) {
            var var0 = 0x00;
            var var1 = 0x60;
            var var2 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var3 = arg1;
            var var4 = 0x139f;
            var var5 = arg2;
            var var6 = memory[0x40:0x60];
            var4 = func_21E1(var5, var6);
            var temp0 = memory[0x40:0x60];
            var temp1;
            temp1, memory[temp0:temp0 + 0x00] = address(var2).call.gas(msg.gas).value(var3)(memory[temp0:temp0 + var4 - temp0]);
            var3 = returndata.length;
            var4 = var3;
        
            if (var4 == 0x00) {
                var1 = 0x60;
                var0 = var2;
            
                if (var0) {
                label_08F4:
                    return;
                } else {
                label_13EC:
                    var2 = arg1;
                    var3 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var4 = 0x335a31c96b94b80f0be06ac8580999f098962ec15c75c6cf3c48df0628ce2531;
                    var5 = 0x1434;
                    var6 = arg2;
                    var var8 = memory[0x40:0x60];
                    var var7 = var1;
                    var5 = func_2386(var6, var7, var8);
                    var temp2 = memory[0x40:0x60];
                    log(memory[temp2:temp2 + var5 - temp2], [stack[-2], stack[-3], stack[-4]]);
                    return;
                }
            } else {
                var temp3 = memory[0x40:0x60];
                var3 = temp3;
                memory[0x40:0x60] = var3 + (returndata.length + 0x3f & ~0x1f);
                memory[var3:var3 + 0x20] = returndata.length;
                var temp4 = returndata.length;
                memory[var3 + 0x20:var3 + 0x20 + temp4] = returndata[0x00:0x00 + temp4];
                var1 = var3;
                var0 = var2;
            
                if (var0) { goto label_08F4; }
                else { goto label_13EC; }
            }
        } else {
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var0 = 0x03a5;
            var1 = temp5 + 0x04;
            var0 = func_2456(var1);
            var temp6 = memory[0x40:0x60];
            revert(memory[temp6:temp6 + var0 - temp6]);
        }
    }
    
    function func_1757(var arg0, var arg1, var arg2) {
        var var0 = memory[arg0:arg0 + 0x20] == memory[arg1:arg1 + 0x20];
    
        if (!var0) {
            if (var0) {
            label_179F:
                var0 = 0x00;
            
                if (var0 >= memory[arg0:arg0 + 0x20]) { return; }
            
                var var1 = 0x17dd;
                var var2 = arg0;
                var var3 = var0;
            
                if (var3 >= memory[var2:var2 + 0x20]) { assert(); }
            
                var2 = memory[var3 * 0x20 + 0x20 + var2:var3 * 0x20 + 0x20 + var2 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                var3 = 0x00;
                var var4 = keccak256(address(var2).code);
                var var5 = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
                var var6 = var5 != var4;
            
                if (var5 != var4) {
                    var3 = var6;
                
                label_1A32:
                    var1 = var3;
                    // Error: Could not resolve jump destination!
                } else {
                    var3 = !!var4;
                    goto label_1A32;
                }
            } else {
            label_176E:
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                var0 = 0x03a5;
                var1 = temp0 + 0x04;
                var0 = func_258F(var1);
                var temp1 = memory[0x40:0x60];
                revert(memory[temp1:temp1 + var0 - temp1]);
            }
        } else if (memory[arg1:arg1 + 0x20] == memory[arg2:arg2 + 0x20]) { goto label_179F; }
        else { goto label_176E; }
    }
    
    function func_1BA2(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 + 0x1f i< arg0) {
            var var1 = msg.data[arg1:arg1 + 0x20];
            var var2 = 0x1bc5;
            var var3 = 0x1bc0;
            var var4 = var1;
            var3 = func_2723(var4);
            var2 = func_1BC0(var3);
            var temp0 = var1;
            var temp1 = var2;
            memory[temp1:temp1 + 0x20] = temp0;
            var0 = temp1;
            var2 = var0 + 0x20;
            var3 = 0x20;
            var temp2 = arg1;
            var4 = var3 + temp2;
        
            if (arg0 < var3 + temp2 + temp0 * var3) { revert(memory[0x00:0x00]); }
        
            var var5 = 0x00;
        
            if (var5 >= var1) {
            label_1C0E:
                return var0;
            } else {
            label_1BF2:
                var var6 = msg.data[var4:var4 + 0x20];
                var var7 = 0x1bfc;
                var var8 = var6;
                func_276D(var8);
                var temp3 = var2;
                memory[temp3:temp3 + 0x20] = var6;
                var temp4 = var3;
                var2 = temp4 + temp3;
                var4 = temp4 + var4;
                var5 = var5 + 0x01;
            
                if (var5 >= var1) { goto label_1C0E; }
                else { goto label_1BF2; }
            }
        } else {
            var temp5 = var0;
            revert(memory[temp5:temp5 + temp5]);
        }
    }
    
    function func_1BC0(var arg0) returns (var r0) {
        r0 = func_26FF(arg0);
        // Error: Could not resolve method call return address!
    }
    
    function func_1C19(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 + 0x1f i< arg0) {
            var var1 = msg.data[arg1:arg1 + 0x20];
            var var2 = 0x1c37;
            var var3 = 0x1bc0;
            var var4 = var1;
            var3 = func_2723(var4);
            var2 = func_1BC0(var3);
            var temp0 = var1;
            var temp1 = var2;
            memory[temp1:temp1 + 0x20] = temp0;
            var0 = temp1;
            var2 = var0 + 0x20;
            var3 = 0x20;
            var temp2 = arg1;
            var4 = var3 + temp2;
        
            if (arg0 < var3 + temp2 + temp0 * var3) { revert(memory[0x00:0x00]); }
        
            var var5 = 0x00;
        
            if (var5 >= var1) {
            label_1C0E:
                return var0;
            } else {
            label_1C64:
                var temp3 = var4;
                var temp4 = var2;
                memory[temp4:temp4 + 0x20] = msg.data[temp3:temp3 + 0x20];
                var temp5 = var3;
                var2 = temp5 + temp4;
                var4 = temp5 + temp3;
                var5 = var5 + 0x01;
            
                if (var5 >= var1) { goto label_1C0E; }
                else { goto label_1C64; }
            }
        } else {
            var temp6 = var0;
            revert(memory[temp6:temp6 + temp6]);
        }
    }
    
    function func_1C77(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 + 0x1f i< arg0) {
            var var1 = msg.data[arg1:arg1 + 0x20];
        
            if (var1 > 0xffffffffffffffff) { assert(); }
        
            var var2 = 0x1ccc;
            var var3 = (var1 + 0x1f & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 0x20;
            var2 = func_26FF(var3);
            var0 = var2;
            var temp0 = var1;
            memory[var0:var0 + 0x20] = temp0;
        
            if (arg1 + temp0 + 0x20 > arg0) { revert(memory[0x00:0x00]); }
        
            var temp1 = var1;
            var temp2 = var0;
            memory[temp2 + 0x20:temp2 + 0x20 + temp1] = msg.data[arg1 + 0x20:arg1 + 0x20 + temp1];
            memory[temp2 + temp1 + 0x20:temp2 + temp1 + 0x20 + 0x20] = 0x00;
            return temp2;
        } else {
            var temp3 = var0;
            revert(memory[temp3:temp3 + temp3]);
        }
    }
    
    function func_1CFC(var arg0) returns (var r0) {
        var temp0 = msg.data[arg0:arg0 + 0x20];
        var var0 = temp0;
    
        if (var0 == var0 & 0xff) { return var0; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_1D0D(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) {
            var var1 = msg.data[arg1:arg1 + 0x20];
            var var2 = 0x0f76;
            var var3 = var1;
            func_276D(var3);
            return var1;
        } else {
            var temp0 = var0;
            revert(memory[temp0:temp0 + temp0]);
        }
    }
    
    function func_1D29(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i>= 0x60) {
            var var3 = msg.data[arg1:arg1 + 0x20];
            var var4 = 0x1d48;
            var var5 = var3;
            func_276D(var5);
            var0 = var3;
            var temp0 = arg1;
            var1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
            var3 = msg.data[temp0 + 0x40:temp0 + 0x40 + 0x20];
        
            if (var3 <= 0xffffffffffffffff) {
                var4 = 0x1d76;
                var5 = arg0;
                var var6 = arg1 + var3;
                var4 = func_1C77(var5, var6);
                arg1 = var4;
                arg0 = var1;
                r0 = var0;
                return r0, arg0, arg1;
            } else {
                var temp1 = var2;
                revert(memory[temp1:temp1 + temp1]);
            }
        } else {
            var temp2 = var1;
            revert(memory[temp2:temp2 + temp2]);
        }
    }
    
    function func_1DFA(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3, var r4, var r5, var r6, var r7, var r8) {
        r3 = 0x00;
        r4 = r3;
        r5 = 0x00;
        r6 = r5;
        r7 = 0x00;
        r8 = r7;
        var var6 = 0x00;
        var var7 = var6;
        var var8 = 0x00;
    
        if (arg0 - arg1 i>= 0x0120) {
            var var9 = msg.data[arg1:arg1 + 0x20];
            var var10 = 0xffffffffffffffff;
        
            if (var9 <= var10) {
                var var11 = 0x1e3b;
                var var12 = arg0;
                var var13 = arg1 + var9;
                var11 = func_1BA2(var12, var13);
                r3 = var11;
                var9 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
            
                if (var9 <= var10) {
                    var11 = 0x1e5c;
                    var12 = arg0;
                    var13 = arg1 + var9;
                    var11 = func_1BA2(var12, var13);
                    r4 = var11;
                    var9 = msg.data[arg1 + 0x40:arg1 + 0x40 + 0x20];
                
                    if (var9 <= var10) {
                        var10 = 0x1e7e;
                        var11 = arg0;
                        var12 = arg1 + var9;
                        var10 = func_1C19(var11, var12);
                        r5 = var10;
                        var9 = 0x1e8d;
                        var10 = arg1 + 0x60;
                        var9 = func_1CFC(var10);
                        r6 = var9;
                        var temp0 = arg1;
                        r7 = msg.data[temp0 + 0x80:temp0 + 0x80 + 0x20];
                        r8 = msg.data[temp0 + 0xa0:temp0 + 0xa0 + 0x20];
                        var9 = 0x1ea9;
                        var10 = temp0 + 0xc0;
                        var9 = func_1CFC(var10);
                        var temp1 = arg1;
                        var temp2 = r8;
                        r8 = msg.data[temp1 + 0x0100:temp1 + 0x0100 + 0x20];
                        var temp3 = r5;
                        r5 = temp2;
                        arg1 = temp3;
                        var temp4 = r7;
                        r7 = msg.data[temp1 + 0xe0:temp1 + 0xe0 + 0x20];
                        var temp5 = r4;
                        r4 = temp4;
                        arg0 = temp5;
                        var temp6 = r6;
                        r6 = var9;
                        var temp7 = r3;
                        r3 = temp6;
                        r0 = temp7;
                        return r0, arg0, arg1, r3, r4, r5, r6, r7, r8;
                    } else {
                        var temp8 = r7;
                        revert(memory[temp8:temp8 + temp8]);
                    }
                } else {
                    var temp9 = r7;
                    revert(memory[temp9:temp9 + temp9]);
                }
            } else {
                var temp10 = r7;
                revert(memory[temp10:temp10 + temp10]);
            }
        } else {
            var temp11 = r7;
            revert(memory[temp11:temp11 + temp11]);
        }
    }
    
    function func_1EC7(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i>= 0x60) {
            var var3 = msg.data[arg1:arg1 + 0x20];
            var var4 = 0xffffffffffffffff;
        
            if (var3 <= var4) {
                var var5 = 0x1efe;
                var var6 = arg0;
                var var7 = arg1 + var3;
                var5 = func_1BA2(var6, var7);
                var0 = var5;
                var3 = 0x20;
                var5 = msg.data[arg1 + var3:arg1 + var3 + 0x20];
            
                if (var5 <= var4) {
                    var6 = 0x1f20;
                    var7 = arg0;
                    var var8 = arg1 + var5;
                    var6 = func_1C19(var7, var8);
                    var1 = var6;
                    var5 = msg.data[arg1 + 0x40:arg1 + 0x40 + 0x20];
                
                    if (var5 <= var4) {
                        var4 = arg1 + var5;
                    
                        if (arg0 i> var4 + 0x1f) {
                            var5 = msg.data[var4:var4 + 0x20];
                            var6 = 0x1f54;
                            var7 = 0x1bc0;
                            var8 = var5;
                            var7 = func_2723(var8);
                            var6 = func_1BC0(var7);
                            var temp0 = var5;
                            var temp1 = var6;
                            memory[temp1:temp1 + 0x20] = temp0;
                            var temp2 = var3;
                            var6 = temp1 + temp2;
                            var7 = temp1;
                            var8 = temp2 + var4;
                            var var9 = var2;
                        
                            if (var9 >= temp0) {
                            label_1F89:
                                arg1 = var7;
                                arg0 = var1;
                                r0 = var0;
                                return r0, arg0, arg1;
                            } else {
                            label_1F69:
                                var var10 = 0x1f77;
                                var var11 = arg0;
                                var var12 = var4 + msg.data[var8:var8 + 0x20] + var3;
                                var10 = func_1C77(var11, var12);
                                var temp3 = var6;
                                memory[temp3:temp3 + 0x20] = var10;
                                var temp4 = var3;
                                var6 = temp4 + temp3;
                                var8 = temp4 + var8;
                                var9 = var9 + 0x01;
                            
                                if (var9 >= var5) { goto label_1F89; }
                                else { goto label_1F69; }
                            }
                        } else {
                            var temp5 = var2;
                            revert(memory[temp5:temp5 + temp5]);
                        }
                    } else {
                        var temp6 = var2;
                        revert(memory[temp6:temp6 + temp6]);
                    }
                } else {
                    var temp7 = var1;
                    revert(memory[temp7:temp7 + temp7]);
                }
            } else {
                var temp8 = var0;
                revert(memory[temp8:temp8 + temp8]);
            }
        } else {
            var temp9 = var0;
            revert(memory[temp9:temp9 + temp9]);
        }
    }
    
    function func_207D(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i>= 0x40) {
            var temp0 = arg1;
            var0 = msg.data[temp0:temp0 + 0x20];
            var var2 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
        
            if (var2 <= 0xffffffffffffffff) {
                var var3 = 0x2053;
                var var4 = arg0;
                var var5 = arg1 + var2;
                var3 = func_1C77(var4, var5);
                arg0 = var3;
                r0 = var0;
                return r0, arg0;
            } else {
                var temp1 = var1;
                revert(memory[temp1:temp1 + temp1]);
            }
        } else {
            var temp2 = var0;
            revert(memory[temp2:temp2 + temp2]);
        }
    }
    
    function func_20B8(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) { return msg.data[arg1:arg1 + 0x20]; }
    
        var temp0 = var0;
        revert(memory[temp0:temp0 + temp0]);
    }
    
    function func_20D0(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) { return memory[arg1:arg1 + 0x20]; }
    
        var temp0 = var0;
        revert(memory[temp0:temp0 + temp0]);
    }
    
    function func_20E8(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var temp0 = arg1;
        var var1 = memory[temp0:temp0 + 0x20];
        var var2 = 0x20;
        var var3 = temp0 + var2;
        var var4 = var0;
    
        if (var4 >= var1) {
        label_2125:
            return arg0;
        } else {
        label_20FC:
            var temp1 = var3;
            var temp2 = arg0;
            memory[temp2:temp2 + 0x20] = memory[temp1:temp1 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp3 = var2;
            arg0 = temp3 + temp2;
            var3 = temp3 + temp1;
            var4 = var4 + 0x01;
        
            if (var4 >= var1) { goto label_2125; }
            else { goto label_20FC; }
        }
    }
    
    function func_2130(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var temp0 = arg1;
        var temp1 = memory[temp0:temp0 + 0x20];
        var var1 = temp1;
        var temp2 = arg0;
        memory[temp2:temp2 + 0x20] = var1;
        var var2 = 0x2148;
        var var3 = var1;
        var var4 = temp2 + 0x20;
        var var5 = temp0 + 0x20;
        func_2741(var3, var4, var5);
        return (var1 + 0x1f & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + arg0 + 0x20;
    }
    
    function func_21E1(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var temp0 = arg0;
        var var1 = memory[temp0:temp0 + 0x20];
        var var2 = 0x21f3;
        var var3 = var1;
        var var4 = arg1;
        var var5 = temp0 + 0x20;
        func_2741(var3, var4, var5);
        return var1 + arg1;
    }
    
    function func_21FD(var arg0, var arg1, var arg2, var arg3, var arg4) returns (var r0) {
        var var0 = 0x00;
        var temp0 = arg4;
        memory[temp0:temp0 + 0x20] = arg0;
        var var1 = 0x20;
        var var2 = 0x2219;
        var var3 = 0x2213;
        var var4 = temp0 + var1;
        var var5 = arg1;
        var3 = func_20E8(var4, var5);
        var2 = func_2213(arg2, var3);
        var temp1 = arg3;
        var3 = memory[temp1:temp1 + 0x20];
        var4 = temp1 + var1;
        var5 = var0;
    
        if (var5 >= var3) {
        label_223C:
            return var2;
        } else {
        label_2229:
            var temp2 = var4;
            var temp3 = var2;
            memory[temp3:temp3 + 0x20] = memory[temp2:temp2 + 0x20];
            var temp4 = var1;
            var2 = temp4 + temp3;
            var4 = temp4 + temp2;
            var5 = var5 + 0x01;
        
            if (var5 >= var3) { goto label_223C; }
            else { goto label_2229; }
        }
    }
    
    function func_2213(var arg0, var arg1) returns (var r0) {
        var var0 = arg0;
        r0 = func_20E8(arg1, var0);
        // Error: Could not resolve method call return address!
    }
    
    function func_224B(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var temp0 = arg3;
        memory[temp0:temp0 + 0x20] = 0x19457468657265756d205369676e6564204d6573736167653a0a353400000000;
        memory[temp0 + 0x1c:temp0 + 0x1c + 0x20] = arg0;
        memory[temp0 + 0x3c:temp0 + 0x3c + 0x20] = (arg1 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
        memory[temp0 + 0x50:temp0 + 0x50 + 0x20] = (arg2 << 0xf0) & 0xffff000000000000000000000000000000000000000000000000000000000000;
        return temp0 + 0x52;
    }
    
    function func_22D3(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = 0x19457468657265756d205369676e6564204d6573736167653a0a333200000000;
        memory[temp0 + 0x1c:temp0 + 0x1c + 0x20] = arg0;
        return temp0 + 0x3c;
    }
    
    function func_2304(var arg0) returns (var r0) { return arg0; }
    
    function func_2354(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = !!arg0;
        return temp0 + 0x20;
    }
    
    function func_235F(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = arg0;
        return temp0 + 0x20;
    }
    
    function func_2368(var arg0, var arg1, var arg2, var arg3, var arg4) returns (var r0) {
        var temp0 = arg4;
        memory[temp0:temp0 + 0x20] = arg0;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = arg1 & 0xff;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = arg2;
        memory[temp0 + 0x60:temp0 + 0x60 + 0x20] = arg3;
        return temp0 + 0x80;
    }
    
    function func_2386(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = 0x00;
        var temp0 = arg2;
        memory[temp0:temp0 + 0x20] = 0x40;
        var var1 = 0x2399;
        var var2 = temp0 + 0x40;
        var var3 = arg0;
        var1 = func_2130(var2, var3);
        var temp1 = arg2;
        memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = var1 - temp1;
        var2 = 0x23ab;
        var3 = var1;
        var var4 = arg1;
        return func_2130(var3, var4);
    }
    
    function func_23B4(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        return temp0 + 0x20;
    }
    
    function func_23E8(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x20;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x0c;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x54524144455f4641494c45440000000000000000000000000000000000000000;
        return temp0 + 0x60;
    }
    
    function func_2456(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x20;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x01;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x3300000000000000000000000000000000000000000000000000000000000000;
        return temp0 + 0x60;
    }
    
    function func_248D(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x20;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x1a;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x4645455f464143544f525f4d4f52455f5448454e5f3130303030000000000000;
        return temp0 + 0x60;
    }
    
    function func_2558(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x20;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x01;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x3200000000000000000000000000000000000000000000000000000000000000;
        return temp0 + 0x60;
    }
    
    function func_258F(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x20;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x01;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x3100000000000000000000000000000000000000000000000000000000000000;
        return temp0 + 0x60;
    }
    
    function func_26C8(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x20;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x01;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x3800000000000000000000000000000000000000000000000000000000000000;
        return temp0 + 0x60;
    }
    
    function func_26FF(var arg0) returns (var r0) {
        var temp0 = memory[0x40:0x60];
        var var0 = temp0;
        var temp1 = var0 + arg0;
        var var1 = temp1;
    
        if ((var1 < var0) | (var1 > 0xffffffffffffffff)) { assert(); }
    
        memory[0x40:0x60] = var1;
        return var0;
    }
    
    function func_2723(var arg0) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 <= 0xffffffffffffffff) { return arg0 * 0x20 + 0x20; }
        else { assert(); }
    }
    
    function func_2741(var arg0, var arg1, var arg2) {
        var var0 = 0x00;
    
        if (var0 >= arg0) {
        label_275C:
        
            if (var0 <= arg0) { return; }
        
            memory[arg0 + arg1:arg0 + arg1 + 0x20] = 0x00;
            return;
        } else {
        label_274D:
            var temp0 = var0;
            memory[temp0 + arg1:temp0 + arg1 + 0x20] = memory[temp0 + arg2:temp0 + arg2 + 0x20];
            var0 = temp0 + 0x20;
        
            if (var0 >= arg0) { goto label_275C; }
            else { goto label_274D; }
        }
    }
    
    function func_276D(var arg0) {
        var temp0 = arg0;
    
        if (temp0 == temp0 & 0xffffffffffffffffffffffffffffffffffffffff) { return; }
        else { revert(memory[0x00:0x00]); }
    }
}