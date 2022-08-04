contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length >= 0x04) {
            var0 = msg.data[0x00:0x20] >> 0xe0;
        
            if (0xc1d86a3f > var0) {
                if (var0 == 0x2e1a7d4d) {
                    // Dispatch table entry for withdraw(uint256)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0318;
                    var2 = 0x0388;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2 = func_25CC(var3, var4);
                    func_0388(var2);
                    stop();
                } else if (var0 == 0x49df728c) {
                    // Dispatch table entry for withdrawTokens(address)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0318;
                    var2 = 0x03a8;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2 = func_246E(var3, var4);
                    func_03A8(var2);
                    stop();
                } else if (var0 == 0xc0ee0b8a) {
                    // Dispatch table entry for tokenFallback(address,uint256,bytes)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0318;
                    var2 = 0x03c8;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5 = func_24E9(var3, var4);
                    func_03C8(var2, var3, var4, var5);
                    stop();
                } else if (var0 == 0xc1b683cc) {
                    // Dispatch table entry for 0xc1b683cc (unknown)
                    var1 = 0x0318;
                    func_19DB();
                    stop();
                } else { goto label_0086; }
            } else if (var0 == 0xc1d86a3f) {
                // Dispatch table entry for 0xc1d86a3f (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0318;
                var2 = 0x03f0;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4 = func_255F(var3, var4);
                func_03F0(var2, var3, var4);
                stop();
            } else if (var0 == 0xe0514792) {
                // Dispatch table entry for 0xe0514792 (unknown)
                var1 = 0x0318;
                var2 = 0x1e76;
                func_043D();
                var temp14 = msg.data[0x04:0x24];
                var2 = temp14;
                var3 = var2 >> 0xf8;
                var4 = (var2 << 0x08) >> 0xf8;
                var5 = (var2 << 0x10) >> 0xb0;
                var6 = address(this).balance;
            
                if (var3 <= 0x0f) {
                    var7 = 0x10;
                    var8 = 0x00;
                
                    if (var8 >= var4) {
                    label_1F2E:
                    
                        if (!var5) {
                            if (var3 > 0x0f) {
                                memory[0x40:0x60] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).staticcall.gas(msg.gas)(memory[0x1c:0x40]);
                                var2 = address(this).balance + memory[0x40:0x60];
                            
                                if (var6 > var2) { revert(memory[0x00:0x00]); }
                            
                                var5 = var2 - var6;
                            
                                if (!var5) { revert(memory[0x00:0x00]); }
                            
                                if (!(var3 % 0x10)) { stop(); }
                            
                                memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value((var5 * (msg.value % 0x03e8)) / 0x03e8)(memory[0x00:0x00]);
                            
                                if (var6 <= address(this).balance + memory[0x40:0x60]) { stop(); }
                                else { revert(memory[0x00:0x00]); }
                            } else if (var6 <= address(this).balance) {
                                var5 = address(this).balance - var6;
                            
                                if (var5 == 0x00) { revert(memory[0x00:0x00]); }
                            
                                if (!(var3 % 0x10)) { stop(); }
                            
                                memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value((var5 * (msg.value % 0x03e8)) / 0x03e8)(memory[0x00:0x00]);
                            
                                if (var6 <= address(this).balance) { stop(); }
                                else { revert(memory[0x00:0x00]); }
                            } else { revert(memory[0x00:0x00]); }
                        } else if (!(var3 % 0x10)) { stop(); }
                        else {
                            var temp15 = var5;
                            memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value((temp15 * (msg.value % 0x03e8)) / 0x03e8)(memory[0x00:0x00]);
                        
                            if (var6 <= address(this).balance + temp15) { stop(); }
                            else { revert(memory[0x00:0x00]); }
                        }
                    } else {
                    label_1EE8:
                        var temp16 = var7;
                        var temp17 = msg.data[temp16:temp16 + 0x20];
                        var2 = temp17;
                        var temp18 = var2 >> 0xf0;
                        var9 = temp18;
                        var10 = (var2 << 0x10) >> 0x60;
                        var var11 = (var2 << 0xb0) >> 0xb0;
                        var7 = temp16 + 0x20;
                        memory[0x40:0x40 + var9] = msg.data[var7:var7 + var9];
                        var temp19;
                        temp19, memory[0x00:0x00] = address(var10).call.gas(msg.gas).value(var11)(memory[0x40:0x40 + var9]);
                    
                        if (temp19 == 0x00) { revert(memory[0x00:0x00]); }
                    
                        var7 = var9 + var7;
                        var8 = var8 + 0x01;
                    
                        if (var8 >= var4) { goto label_1F2E; }
                        else { goto label_1EE8; }
                    }
                } else {
                    memory[0x00:0x20] = 0x70a08231;
                    memory[0x20:0x40] = 0xdfee68a9adb981cd08699891a11cabe10f25ec44;
                    memory[0x40:0x60] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).staticcall.gas(msg.gas)(memory[0x1c:0x40]);
                    var6 = memory[0x40:0x60] + var6;
                    var7 = 0x10;
                    var8 = 0x00;
                
                    if (var8 >= var4) { goto label_1F2E; }
                    else { goto label_1EE8; }
                }
            } else if (var0 == 0xe1f21c67) {
                // Dispatch table entry for approve(address,address,uint256)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0318;
                var2 = 0x0418;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4 = func_24A9(var3, var4);
                func_0418(var2, var3, var4);
                stop();
            } else if (var0 == 0xfa461e33) {
                // Dispatch table entry for uniswapV3SwapCallback(int256,int256,bytes)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0318;
                var2 = 0x0438;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4, var5 = func_2593(var3, var4);
                func_0438(var2, var3, var4, var5);
                stop();
            } else { goto label_0086; }
        } else if (msg.data.length) {
        label_0086:
            var var0 = 0x008e;
            func_043D();
        
            if (msg.sender == 0x70526cc7a6d6320b44122ea9d2d07670accc85a1) {
            label_00B1:
                var temp0 = msg.data[0x00:0x20];
                var0 = temp0;
                var var1 = var0 >> 0xf8;
                var var2 = (var0 << 0x08) >> 0xf8;
                var var3 = address(this).balance;
                var var4 = 0x00;
            
                if (var1 <= 0x0f) {
                    var var5 = 0x02;
                    var var6 = memory[0x40:0x60];
                    var var7 = 0x0de0b6b3a7640000;
                
                    if (msg.value != 0x00) {
                    label_01AD:
                    
                        if (!var7) {
                        label_026A:
                            var0 = 0x00;
                        
                            if (var1 > 0x0f) {
                                memory[0x00:0x20] = 0x70a08231;
                                memory[0x20:0x40] = 0xdfee68a9adb981cd08699891a11cabe10f25ec44;
                                memory[0x00:0x20] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).staticcall.gas(msg.gas)(memory[0x1c:0x40]);
                            
                                if (var3 + var4 > address(this).balance + memory[0x00:0x20]) { revert(memory[0x00:0x00]); }
                            
                                if (var1 % 0x10 != 0x02) { stop(); }
                            
                                var0 = (address(this).balance + memory[0x00:0x20]) - (var3 + var4);
                            
                                if (var0 == 0x00) { revert(memory[0x00:0x00]); }
                            
                                memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value((var0 * (msg.value % 0x03e8)) / 0x03e8)(memory[0x00:0x00]);
                            
                                if (var3 + var4 <= address(this).balance + memory[0x00:0x20]) { stop(); }
                                else { revert(memory[0x00:0x00]); }
                            } else if (var3 <= address(this).balance) {
                                if (var1 % 0x10 != 0x02) { stop(); }
                            
                                var0 = address(this).balance - var3;
                            
                                if (var0 == 0x00) { revert(memory[0x00:0x00]); }
                            
                                memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value((var0 * (msg.value % 0x03e8)) / 0x03e8)(memory[0x00:0x00]);
                            
                                if (var3 <= address(this).balance) { stop(); }
                                else { revert(memory[0x00:0x00]); }
                            } else { revert(memory[0x00:0x00]); }
                        } else {
                            var5 = 0x02;
                            var var8 = 0x00;
                        
                            if (var8 >= var2) {
                            label_0268:
                                goto label_026A;
                            } else {
                            label_01C3:
                                var temp1 = var5;
                                var temp2 = msg.data[temp1:temp1 + 0x20];
                                var0 = temp2;
                                var var9 = var0 >> 0x60;
                                var temp3 = ((var0 << 0xa0) >> 0xf8) * 0x20;
                                var temp4 = var6;
                                memory[temp4:temp4 + 0x04] = msg.data[temp1 + 0x15:temp1 + 0x15 + 0x04];
                                memory[temp4 + 0x04:temp4 + 0x04 + temp3] = msg.data[temp1 + 0x1d:temp1 + 0x1d + temp3];
                                var temp5 = temp3 + temp1;
                                memory[temp3 + temp4 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe4:temp3 + temp4 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe4 + 0x20] = (var7 * msg.data[temp5 + 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd:temp5 + 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd + 0x20]) / 0x0de0b6b3a7640000;
                                var var10 = temp3;
                                var5 = temp5 + 0x1d;
                                var temp6;
                                temp6, memory[0x00:0x00] = address(var9).delegatecall.gas(msg.gas)(memory[temp4:temp4 + var10 + 0x04]);
                            
                                if (temp6 == 0x00) { revert(memory[0x00:0x00]); }
                            
                                var8 = var8 + 0x01;
                            
                                if (var8 >= var2) { goto label_0268; }
                                else { goto label_01C3; }
                            }
                        }
                    } else {
                    label_0128:
                        var8 = 0x00;
                    
                        if (var8 >= var2) {
                        label_01AB:
                            goto label_01AD;
                        } else {
                        label_0133:
                            var temp7 = var5;
                            var temp8 = msg.data[temp7:temp7 + 0x20];
                            var0 = temp8;
                            var9 = var0 >> 0x60;
                            var temp9 = ((var0 << 0xa0) >> 0xf8) * 0x20;
                            var10 = temp9;
                            var temp10 = var10 + 0x04;
                            var temp11 = var6;
                            memory[temp11:temp11 + temp10] = msg.data[temp7 + 0x19:temp7 + 0x19 + temp10];
                            var temp12;
                            temp12, memory[0x00:0x40] = address(var9).delegatecall.gas(msg.gas)(memory[temp11:temp11 + var10 + 0x04]);
                        
                            if (temp12 == 0x00) { revert(memory[0x00:0x00]); }
                        
                            if (memory[0x00:0x20]) {
                                var temp13 = var5 + var10 + 0x1d;
                                var5 = temp13;
                                var9 = (memory[0x00:0x20] * 0x0de0b6b3a7640000) / msg.data[var5 - 0x20:var5 - 0x20 + 0x20];
                            
                                if (var9 >= var7) {
                                    var8 = var8 + 0x01;
                                
                                label_012A:
                                
                                    if (var8 >= var2) { goto label_01AB; }
                                    else { goto label_0133; }
                                } else {
                                    var7 = var9;
                                    var8 = var8 + 0x01;
                                    goto label_012A;
                                }
                            } else {
                                var7 = 0x00;
                                goto label_01AB;
                            }
                        }
                    }
                } else {
                    memory[0x00:0x20] = 0x70a08231;
                    memory[0x20:0x40] = 0xdfee68a9adb981cd08699891a11cabe10f25ec44;
                    memory[0x00:0x20] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).staticcall.gas(msg.gas)(memory[0x1c:0x40]);
                    var4 = memory[0x00:0x20];
                    var5 = 0x02;
                    var6 = memory[0x40:0x60];
                    var7 = 0x0de0b6b3a7640000;
                
                    if (msg.value != 0x00) { goto label_01AD; }
                    else { goto label_0128; }
                }
            } else {
                var0 = 0x00b1;
                func_1826();
                goto label_00B1;
            }
        } else { stop(); }
    }
    
    function func_0388(var arg0) {
        var var0 = 0x183f;
        func_043D();
    
        if (!arg0) {
        label_1874:
            return;
        } else {
            var temp0 = memory[0x40:0x60];
            var temp1 = arg0;
            var temp2;
            temp2, memory[temp0:temp0 + 0x00] = address(msg.sender).call.gas(!temp1 * 0x08fc).value(temp1)(memory[temp0:temp0 + 0x00]);
            var0 = !temp2;
        
            if (!var0) { goto label_1874; }
        
            var temp3 = returndata.length;
            memory[0x00:0x00 + temp3] = returndata[0x00:0x00 + temp3];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_03A8(var arg0) {
        var var0 = 0x187f;
        func_043D();
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        var0 = arg0;
        var var1 = 0x00;
        var var2 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var3 = 0x70a08231;
        var var4 = 0x18d6;
        var var5 = address(this);
        var var6 = temp0 + 0x04;
        var4 = func_25FC(var5, var6);
        var5 = 0x20;
        var6 = memory[0x40:0x60];
        var var7 = var4 - var6;
        var var8 = var6;
        var var9 = var2;
        var var10 = !address(var9).code.length;
    
        if (var10) { revert(memory[0x00:0x00]); }
    
        var temp1;
        temp1, memory[var6:var6 + var5] = address(var9).staticcall.gas(msg.gas)(memory[var8:var8 + var7]);
        var5 = !temp1;
    
        if (!var5) {
            var temp2 = memory[0x40:0x60];
            var temp3 = returndata.length;
            memory[0x40:0x60] = temp2 + (temp3 + 0x1f & ~0x1f);
            var2 = 0x1926;
            var3 = temp2 + temp3;
            var4 = temp2;
            var2 = func_25E4(var3, var4);
            var1 = var2;
        
            if (!var1) { return; }
        
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            var2 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
            var3 = 0xa9059cbb;
            var4 = 0x1982;
            var5 = msg.sender;
            var6 = var1;
            var7 = temp4 + 0x04;
            var4 = func_2644(var5, var6, var7);
            var5 = 0x20;
            var6 = memory[0x40:0x60];
            var7 = var4 - var6;
            var8 = var6;
            var9 = 0x00;
            var10 = var2;
            var var11 = !address(var10).code.length;
        
            if (var11) { revert(memory[0x00:0x00]); }
        
            var temp5;
            temp5, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
            var5 = !temp5;
        
            if (!var5) {
                var temp6 = memory[0x40:0x60];
                var temp7 = returndata.length;
                memory[0x40:0x60] = temp6 + (temp7 + 0x1f & ~0x1f);
                var2 = 0x19d4;
                var4 = temp6;
                var3 = var4 + temp7;
                var5 = 0x00;
            
                if (var3 - var4 i>= 0x20) {
                    var6 = memory[var4:var4 + 0x20];
                    var7 = 0x24a2;
                    var8 = var6;
                    func_268C(var8);
                    var2 = var6;
                    // Error: Could not resolve jump destination!
                } else {
                    var temp8 = var5;
                    revert(memory[temp8:temp8 + temp8]);
                }
            } else {
                var temp9 = returndata.length;
                memory[0x00:0x00 + temp9] = returndata[0x00:0x00 + temp9];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp10 = returndata.length;
            memory[0x00:0x00 + temp10] = returndata[0x00:0x00 + temp10];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_03C8(var arg0, var arg1, var arg2, var arg3) {}
    
    function func_03F0(var arg0, var arg1, var arg2) {
        if (msg.sender != 0x55757942b19e543a7d4c909f952f5509b10b66b3) { revert(memory[0x00:0x00]); }
    
        if (!arg0) {
            arg1 = storage[0x32];
            arg2 = storage[0x33];
            memory[0x04:0x24] = 0x8d08e154;
            memory[0x24:0x44] = arg1;
            memory[0x44:0x64] = arg2;
            memory[0x00:0x00] = address(msg.sender).call.gas(msg.gas)(memory[0x20:0x64]);
            selfdestruct(msg.sender);
        } else {
            storage[0x32] = arg1;
            storage[0x33] = arg2;
            return;
        }
    }
    
    function func_0418(var arg0, var arg1, var arg2) {
        var var0 = 0x2032;
        func_043D();
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0xdd62ed3e00000000000000000000000000000000000000000000000000000000;
        var0 = arg0;
        var var1 = 0x00;
        var var2 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var3 = 0xdd62ed3e;
        var var4 = 0x208b;
        var var5 = address(this);
        var var6 = arg1;
        var var7 = temp0 + 0x04;
        var4 = func_261D(var5, var6, var7);
        var5 = 0x20;
        var6 = memory[0x40:0x60];
        var7 = var4 - var6;
        var var8 = var6;
        var var9 = var2;
        var var10 = !address(var9).code.length;
    
        if (var10) { revert(memory[0x00:0x00]); }
    
        var temp1;
        temp1, memory[var6:var6 + var5] = address(var9).staticcall.gas(msg.gas)(memory[var8:var8 + var7]);
        var5 = !temp1;
    
        if (!var5) {
            var temp2 = memory[0x40:0x60];
            var temp3 = returndata.length;
            memory[0x40:0x60] = temp2 + (temp3 + 0x1f & ~0x1f);
            var2 = 0x20db;
            var4 = temp2;
            var3 = var4 + temp3;
            var2 = func_25E4(var3, var4);
        
            if (var2 > var1) {
                var temp10 = memory[0x40:0x60];
                memory[temp10:temp10 + 0x20] = 0x095ea7b300000000000000000000000000000000000000000000000000000000;
                var1 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                var2 = 0x095ea7b3;
                var3 = 0x2136;
                var4 = arg1;
                var5 = 0x00;
                var6 = temp10 + 0x04;
                var3 = func_2644(var4, var5, var6);
                var4 = 0x20;
                var5 = memory[0x40:0x60];
                var6 = var3 - var5;
                var7 = var5;
                var8 = 0x00;
                var9 = var1;
                var10 = !address(var9).code.length;
            
                if (var10) { revert(memory[0x00:0x00]); }
            
                var temp11;
                temp11, memory[var5:var5 + var4] = address(var9).call.gas(msg.gas).value(var8)(memory[var7:var7 + var6]);
                var4 = !temp11;
            
                if (!var4) {
                    var temp12 = memory[0x40:0x60];
                    var temp13 = returndata.length;
                    memory[0x40:0x60] = temp12 + (temp13 + 0x1f & ~0x1f);
                    var1 = 0x2188;
                    var3 = temp12;
                    var2 = var3 + temp13;
                    goto label_2543;
                } else {
                    var temp14 = returndata.length;
                    memory[0x00:0x00 + temp14] = returndata[0x00:0x00 + temp14];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else if (!arg2) { return; }
            else {
                var temp4 = memory[0x40:0x60];
                memory[temp4:temp4 + 0x20] = 0x095ea7b300000000000000000000000000000000000000000000000000000000;
                var1 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                var2 = 0x095ea7b3;
                var3 = 0x2204;
                var4 = arg1;
                var5 = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
                var6 = temp4 + 0x04;
                var3 = func_2644(var4, var5, var6);
                var4 = 0x20;
                var5 = memory[0x40:0x60];
                var6 = var3 - var5;
                var7 = var5;
                var8 = 0x00;
                var9 = var1;
                var10 = !address(var9).code.length;
            
                if (var10) { revert(memory[0x00:0x00]); }
            
                var temp5;
                temp5, memory[var5:var5 + var4] = address(var9).call.gas(msg.gas).value(var8)(memory[var7:var7 + var6]);
                var4 = !temp5;
            
                if (!var4) {
                    var temp6 = memory[0x40:0x60];
                    var temp7 = returndata.length;
                    memory[0x40:0x60] = temp6 + (temp7 + 0x1f & ~0x1f);
                    var1 = 0x2256;
                    var3 = temp6;
                    var2 = var3 + temp7;
                
                label_2543:
                    var4 = 0x00;
                
                    if (var2 - var3 i>= 0x20) {
                        var5 = memory[var3:var3 + 0x20];
                        var6 = 0x24a2;
                        var7 = var5;
                        func_268C(var7);
                        var1 = var5;
                        // Error: Could not resolve jump destination!
                    } else {
                        var temp8 = var4;
                        revert(memory[temp8:temp8 + temp8]);
                    }
                } else {
                    var temp9 = returndata.length;
                    memory[0x00:0x00 + temp9] = returndata[0x00:0x00 + temp9];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            }
        } else {
            var temp15 = returndata.length;
            memory[0x00:0x00 + temp15] = returndata[0x00:0x00 + temp15];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_0438(var arg0, var arg1, var arg2, var arg3) {
        var var0 = msg.data[0x84:0xa4] >> 0x60;
        var var1 = msg.data[0x98:0xb8] >> 0x60;
        var var2 = msg.data[0xac:0xcc] >> 0xe8;
        var var3 = msg.data[0xaf:0xcf] >> 0xf8;
    
        if (var0 >= var1) { revert(memory[0x00:0x00]); }
    
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = var0;
        var temp1 = temp0 + 0x20;
        memory[temp1:temp1 + 0x20] = var1;
        var temp2 = temp0 + 0x40;
        memory[temp2:temp2 + 0x20] = var2;
        memory[temp1:temp1 + 0x20] = keccak256(memory[temp0:temp0 + 0x60]);
        memory[temp2:temp2 + 0x20] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
        memory[temp0:temp0 + 0x20] = 0xff1f98431c8ad98523631ae4a59f267346ea31f984;
        var var4 = temp0;
        var2 = keccak256(memory[var4 + 0x0b:var4 + 0x0b + 0x55]) & 0xffffffffffffffffffffffffffffffffffffffff;
    
        if (var2 != msg.sender) { revert(memory[0x00:0x00]); }
    
        if (arg0 i<= 0x00) {
        label_238F:
        
            if (arg1 i<= 0x00) {
            label_241C:
                return;
            } else {
                var var5 = var3;
            
                if (!var5) {
                    var temp3 = var4;
                    memory[temp3 - 0x1c:temp3 - 0x1c + 0x20] = 0xa9059cbb;
                    memory[temp3 + 0x04:temp3 + 0x04 + 0x20] = var2;
                    memory[temp3 + 0x24:temp3 + 0x24 + 0x20] = arg1;
                    var temp4;
                    temp4, memory[0x00:0x00] = address(var1).call.gas(msg.gas)(memory[temp3:temp3 + 0x44]);
                
                    if (temp4 == 0x00) { revert(memory[0x00:0x00]); }
                
                label_241A:
                    goto label_241C;
                } else {
                    var temp5 = var4;
                    memory[temp5 - 0x1c:temp5 - 0x1c + 0x20] = 0x23b872dd;
                    memory[temp5 + 0x04:temp5 + 0x04 + 0x20] = 0xdfee68a9adb981cd08699891a11cabe10f25ec44;
                    memory[temp5 + 0x24:temp5 + 0x24 + 0x20] = var2;
                    memory[temp5 + 0x44:temp5 + 0x44 + 0x20] = arg1;
                    var temp6;
                    temp6, memory[0x00:0x00] = address(var1).call.gas(msg.gas)(memory[temp5:temp5 + 0x64]);
                
                    if (temp6 != 0x00) { goto label_241A; }
                    else { revert(memory[0x00:0x00]); }
                }
            }
        } else {
            var5 = var3;
        
            if (!var5) {
                var temp7 = var4;
                memory[temp7 - 0x1c:temp7 - 0x1c + 0x20] = 0xa9059cbb;
                memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = var2;
                memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = arg0;
                var temp8;
                temp8, memory[0x00:0x00] = address(var0).call.gas(msg.gas)(memory[temp7:temp7 + 0x44]);
            
                if (temp8 == 0x00) { revert(memory[0x00:0x00]); }
            
            label_238D:
                goto label_238F;
            } else {
                var temp9 = var4;
                memory[temp9 - 0x1c:temp9 - 0x1c + 0x20] = 0x23b872dd;
                memory[temp9 + 0x04:temp9 + 0x04 + 0x20] = 0xdfee68a9adb981cd08699891a11cabe10f25ec44;
                memory[temp9 + 0x24:temp9 + 0x24 + 0x20] = var2;
                memory[temp9 + 0x44:temp9 + 0x44 + 0x20] = arg0;
                var temp10;
                temp10, memory[0x00:0x00] = address(var0).call.gas(msg.gas)(memory[temp9:temp9 + 0x64]);
            
                if (temp10 != 0x00) { goto label_238D; }
                else { revert(memory[0x00:0x00]); }
            }
        }
    }
    
    function func_043D() {
        var var0 = msg.sender >> 0x98;
    
        if (var0 & 0x01) {
        label_0E12:
        
            if (var0 >= 0x0a) {
            label_0EC5:
            
                if (var0 >= 0x1a) {
                label_0F78:
                
                    if (var0 >= 0x2a) {
                    label_102B:
                    
                        if (var0 >= 0x3a) {
                        label_10DE:
                        
                            if (var0 >= 0x4a) {
                            label_1191:
                            
                                if (var0 >= 0x5a) {
                                label_1244:
                                
                                    if (var0 >= 0x6a) {
                                    label_12F7:
                                    
                                        if (var0 >= 0x7a) {
                                        label_13AA:
                                        
                                            if (var0 >= 0x8a) {
                                            label_145D:
                                            
                                                if (var0 >= 0x9a) {
                                                label_1510:
                                                
                                                    if (var0 >= 0xaa) {
                                                    label_15C3:
                                                    
                                                        if (var0 >= 0xba) {
                                                        label_1676:
                                                        
                                                            if (var0 >= 0xca) {
                                                            label_1729:
                                                            
                                                                if (var0 >= 0xda) {
                                                                label_17DC:
                                                                
                                                                    if (msg.sender == 0x70526cc7a6d6320b44122ea9d2d07670accc85a1) { goto label_1824; }
                                                                
                                                                    if (msg.sender != 0xffff46e05a09314daae9176fc32dba0f4172dcdb) { revert(memory[0x00:0x00]); }
                                                                
                                                                label_1824:
                                                                    return;
                                                                } else if (msg.sender != 0xd1299a8c305823eeb6eba54409c22a19361b893c) {
                                                                    if (msg.sender == 0xd3af132e98d12a7c93d3f3bb5b95c948d297fce6) { goto label_1824; }
                                                                
                                                                    if (msg.sender == 0xd59993206bc22285a5df20984e42fbf3bccc3a1b) { goto label_1824; }
                                                                
                                                                    if (msg.sender == 0xd731f5ca9485acc1ce02633ec279cf212f1e17bd) { goto label_1824; }
                                                                
                                                                    if (msg.sender != 0xd99f9bfcf2019cf4b498d0d05dd5e4a5d0501833) { goto label_17DC; }
                                                                    else { goto label_1824; }
                                                                } else { goto label_1824; }
                                                            } else if (msg.sender != 0xc11099d3cd9686158db0a40e88267e7b1740958c) {
                                                                if (msg.sender == 0xc3d6392cffc1e5aa395a648bb40e27bd17a2efbb) { goto label_1824; }
                                                            
                                                                if (msg.sender == 0xc51c95641cf695aeed62ecfc6606f1ab12b13a28) { goto label_1824; }
                                                            
                                                                if (msg.sender == 0xc71d2bb0154ca613eb21fd3380cfc14b8c74349a) { goto label_1824; }
                                                            
                                                                if (msg.sender != 0xc905e1df8f73ff171a14d35d59514b0fc4a93d98) { goto label_1729; }
                                                                else { goto label_1824; }
                                                            } else { goto label_1824; }
                                                        } else if (msg.sender != 0xb10a699f0e9d27273d6d7bdbb7fd44346c7d7076) {
                                                            if (msg.sender == 0xb30b1dabe7451fe6646a15631d7537df64b193ce) { goto label_1824; }
                                                        
                                                            if (msg.sender == 0xb50a3c7466eedf134b43949a0b4935baff76c7b4) { goto label_1824; }
                                                        
                                                            if (msg.sender == 0xb7049df3451db4d9ab16166a9afdb1c77a5ac0ff) { goto label_1824; }
                                                        
                                                            if (msg.sender != 0xb90688cb809e38986f91377f01150dbb7e6a5986) { goto label_1676; }
                                                            else { goto label_1824; }
                                                        } else { goto label_1824; }
                                                    } else if (msg.sender != 0xa10571375c543110f75a670b0b810b798cdb0e2b) {
                                                        if (msg.sender == 0xa30622a0061513b1b6971307b66e8ba4c4f52f3c) { goto label_1824; }
                                                    
                                                        if (msg.sender == 0xa503923dddd74bebd6e8d599eeca1b8cd3b4fd16) { goto label_1824; }
                                                    
                                                        if (msg.sender == 0xa701c4f24f73f087b3b5044ba22eb39746881091) { goto label_1824; }
                                                    
                                                        if (msg.sender != 0xa903f2a25801778e6736e5b9c26cddccb8a9aec3) { goto label_15C3; }
                                                        else { goto label_1824; }
                                                    } else { goto label_1824; }
                                                } else if (msg.sender != 0x917fbe2f902cb5ff9ff9a69bb05e99c0b31a2876) {
                                                    if (msg.sender == 0x93bbcfff71140ff3993bf6f3d2ee6586320a0f7c) { goto label_1824; }
                                                
                                                    if (msg.sender == 0x95c955f41059418ddbbaa02c8855648da85a08e9) { goto label_1824; }
                                                
                                                    if (msg.sender == 0x97b3960ca7be6853b542c60fe8c4dfcdc3167513) { goto label_1824; }
                                                
                                                    if (msg.sender != 0x997132e8d309dd2b7795b58b9fc45d1c8076a263) { goto label_1510; }
                                                    else { goto label_1824; }
                                                } else { goto label_1824; }
                                            } else if (msg.sender != 0x81f4e690552687a37ed08b791c626d6c3d3a5e4c) {
                                                if (msg.sender == 0x8353ea423c1cb59722c6d06b3468e072e6b265ad) { goto label_1824; }
                                            
                                                if (msg.sender == 0x8572508cd0fc1989f265e667415359dfbf5c43b5) { goto label_1824; }
                                            
                                                if (msg.sender == 0x874e509d2b14d5984e11d5b0da11d8382ca4be9b) { goto label_1824; }
                                            
                                                if (msg.sender != 0x897dcc8dc2127c7911e0da427ff293692c2d71be) { goto label_145D; }
                                                else { goto label_1824; }
                                            } else { goto label_1824; }
                                        } else if (msg.sender != 0x7171858b7d8381475da5805b1633b084409354de) {
                                            if (msg.sender == 0x73821e7a51afe6ad1603d1d0fe3e2c14157366b1) { goto label_1824; }
                                        
                                            if (msg.sender == 0x75db2f804d95c17227df9e8102925d1ef5a2e383) { goto label_1824; }
                                        
                                            if (msg.sender == 0x77893ecf8cbc63ee020b140a6f4216d9c1479135) { goto label_1824; }
                                        
                                            if (msg.sender != 0x792c938df8d0ef2ba9f578d98e852fb9d8e3deb3) { goto label_13AA; }
                                            else { goto label_1824; }
                                        } else { goto label_1824; }
                                    } else if (msg.sender != 0x6199686cb7e49193d4e4d9ba5a7352d51df65d47) {
                                        if (msg.sender == 0x63166dc8c4820362e2a99d06f044fa64ed1935ad) { goto label_1824; }
                                    
                                        if (msg.sender == 0x655d76da7523a385ba22bff8abbcb22b268f65e2) { goto label_1824; }
                                    
                                        if (msg.sender == 0x676c0068402fc45f05e4dde5260249d2b7edcf85) { goto label_1824; }
                                    
                                        if (msg.sender != 0x695bc4af453c6c01e07818dac067a14982e9f958) { goto label_12F7; }
                                        else { goto label_1824; }
                                    } else { goto label_1824; }
                                } else if (msg.sender != 0x51aa0eda9c3367ae897513d6ecb54a687aa5a618) {
                                    if (msg.sender == 0x5350ef3850c227f62d84266335c726c8bc5fdf76) { goto label_1824; }
                                
                                    if (msg.sender == 0x556e4894dbe587cb661b4d412fd54a442c4c98e2) { goto label_1824; }
                                
                                    if (msg.sender == 0x57ad4bfca0ca9ba91c885068970d429647581c45) { goto label_1824; }
                                
                                    if (msg.sender != 0x59f228a6c65a12d17bca2031cbf7b0cc3a0d9566) { goto label_1244; }
                                    else { goto label_1824; }
                                } else { goto label_1824; }
                            } else if (msg.sender != 0x41ed16c0982099bf5da7bc44217e74e8847a4eeb) {
                                if (msg.sender == 0x4306ccaadc07c235cf857d062e80fff6c4948e59) { goto label_1824; }
                            
                                if (msg.sender == 0x45dd0e024d618465003a1cdec68426187c5218b0) { goto label_1824; }
                            
                                if (msg.sender == 0x47be5812cd4059f15ac7bc125febfe700d55eebc) { goto label_1824; }
                            
                                if (msg.sender != 0x4964f173a96326d408958931e690a0900e1517f5) { goto label_1191; }
                                else { goto label_1824; }
                            } else { goto label_1824; }
                        } else if (msg.sender != 0x31893157f8d17a5dc3328ed3081fca67ac16b4d9) {
                            if (msg.sender == 0x330f620168e2f3c2bdba60b68574b74358611688) { goto label_1824; }
                        
                            if (msg.sender == 0x3500cfcaecafcf5e0607f38a3c7eafb1750830eb) { goto label_1824; }
                        
                            if (msg.sender == 0x3741d4ffb44e77fa9b56ea22019c3498c975fa0c) { goto label_1824; }
                        
                            if (msg.sender != 0x393246fd310aec7cbc174d9df0168989a623a71d) { goto label_10DE; }
                            else { goto label_1824; }
                        } else { goto label_1824; }
                    } else if (msg.sender != 0x21f179df331cdc8583373ca5925bf386880cf49e) {
                        if (msg.sender == 0x23e28b5adbdf08319b4919471cdb0551f0c64dfe) { goto label_1824; }
                    
                        if (msg.sender == 0x2560a6b230badbac68cb6667e202cf0c1caa17b7) { goto label_1824; }
                    
                        if (msg.sender == 0x2762c99f14e987ec71346e33735959b7d9180311) { goto label_1824; }
                    
                        if (msg.sender != 0x299db3a6e900681c2436417ef8d13d2af0531f7e) { goto label_102B; }
                        else { goto label_1824; }
                    } else { goto label_1824; }
                } else if (msg.sender != 0x110291e254c334c7e2831821f051267d0536b10d) {
                    if (msg.sender == 0x13a4d642caa4756af054731340c3c740136256cc) { goto label_1824; }
                
                    if (msg.sender == 0x15f660c0f392986e27a6d82a37db26c25258a1d0) { goto label_1824; }
                
                    if (msg.sender == 0x17dceabe0653d1569d1c0b3cf169497ba256d60a) { goto label_1824; }
                
                    if (msg.sender != 0x1926456caa0265aae826ee1e1dfc49653a542a9e) { goto label_0F78; }
                    else { goto label_1824; }
                } else { goto label_1824; }
            } else if (msg.sender != 0x0197abe48f0a9826d10f44dad7050f26586eb9ba) {
                if (msg.sender == 0x0336e78e4d09b8a6a84d34d0fd103452de57a7a3) { goto label_1824; }
            
                if (msg.sender == 0x0593a1447f14c5b8c6b635d40b1cf8a5e1c0f3d1) { goto label_1824; }
            
                if (msg.sender == 0x076ed039940ae1f5de89745609c7bbc307aab886) { goto label_1824; }
            
                if (msg.sender != 0x096b907590dce529dfcbafe61d3e6806267666b3) { goto label_0EC5; }
                else { goto label_1824; }
            } else { goto label_1824; }
        } else if (var0 >= 0x0a) {
        label_04FB:
        
            if (var0 >= 0x1a) {
            label_05AE:
            
                if (var0 >= 0x2a) {
                label_0661:
                
                    if (var0 >= 0x3a) {
                    label_0714:
                    
                        if (var0 >= 0x4a) {
                        label_07C7:
                        
                            if (var0 >= 0x5a) {
                            label_087A:
                            
                                if (var0 >= 0x6a) {
                                label_092D:
                                
                                    if (var0 >= 0x7a) {
                                    label_09E0:
                                    
                                        if (var0 >= 0x8a) {
                                        label_0A93:
                                        
                                            if (var0 >= 0x9a) {
                                            label_0B46:
                                            
                                                if (var0 >= 0xaa) {
                                                label_0BF9:
                                                
                                                    if (var0 >= 0xba) {
                                                    label_0CAC:
                                                    
                                                        if (var0 >= 0xca) {
                                                        label_0D5F:
                                                        
                                                            if (var0 >= 0xda) { goto label_0E12; }
                                                        
                                                            if (msg.sender == 0xd03154dbc4ae6beafa79f7ae6d99c12ce58f5b64) { goto label_1824; }
                                                        
                                                            if (msg.sender == 0xd2a9c44307edaba67667b13125583ba6dfafe18e) { goto label_1824; }
                                                        
                                                            if (msg.sender == 0xd44d6ea31f65eb9bcf8507a2704298765506b4ef) { goto label_1824; }
                                                        
                                                            if (msg.sender == 0xd693021cafef52df402a09a3a5cfdbc010b425d7) { goto label_1824; }
                                                        
                                                            if (msg.sender != 0xd8382abf56917c52a96a6c5f2e9ccd6ebaa75502) { goto label_0E12; }
                                                            else { goto label_1824; }
                                                        } else if (msg.sender != 0xc04e9356b6cc9d164ad1733e165f7aa6fffc474c) {
                                                            if (msg.sender == 0xc26b35339a61f791b74d0b93706b21e2eeffbb63) { goto label_1824; }
                                                        
                                                            if (msg.sender == 0xc426803a64e13e34ab3976d768accf8d8a575faf) { goto label_1824; }
                                                        
                                                            if (msg.sender == 0xc6af80461d356c91dd1b00678b2bb0349e1f6914) { goto label_1824; }
                                                        
                                                            if (msg.sender != 0xc8df9b669a99562c7a3455ea34fd149c74594d97) { goto label_0D5F; }
                                                            else { goto label_1824; }
                                                        } else { goto label_1824; }
                                                    } else if (msg.sender != 0xb0088e9a28d254e828bc7225a441917deec99a5a) {
                                                        if (msg.sender == 0xb2088e2ec5e3599554a70cbb17c0ef1aac70dc78) { goto label_1824; }
                                                    
                                                        if (msg.sender == 0xb40d10833c824340af3023fc4bcb1fb0c6b29b7b) { goto label_1824; }
                                                    
                                                        if (msg.sender == 0xb600dfaace3223b814fceb4dbd60302b01219acc) { goto label_1824; }
                                                    
                                                        if (msg.sender != 0xb80b25f2716c440e62cc096783eecb3efcc6c11d) { goto label_0CAC; }
                                                        else { goto label_1824; }
                                                    } else { goto label_1824; }
                                                } else if (msg.sender != 0xa00cce999f4cdde0230360609ed94e3b64b09ec1) {
                                                    if (msg.sender == 0xa2068c74401ddd5fc6a3408d00d0936316a9bd19) { goto label_1824; }
                                                
                                                    if (msg.sender == 0xa40c08732ea74411e404bb108043ccf2992fbf87) { goto label_1824; }
                                                
                                                    if (msg.sender == 0xa60eb4f31296c60e689e9234426ab0a31c3254bb) { goto label_1824; }
                                                
                                                    if (msg.sender != 0xa80c22b4ea37ef04f2a012c8d30c544e2620e09b) { goto label_0BF9; }
                                                    else { goto label_1824; }
                                                } else { goto label_1824; }
                                            } else if (msg.sender != 0x905161a26557f387e84bfd0dcb0ac9e97b7b1b2d) {
                                                if (msg.sender == 0x92d2b377c0af1eecf72140efc9976eb052396bf0) { goto label_1824; }
                                            
                                                if (msg.sender == 0x941bb5c31e715324a0bdb6569e125f3b1000b32b) { goto label_1824; }
                                            
                                                if (msg.sender == 0x96db81969a5cbad48fe868d8530c81589abe1b35) { goto label_1824; }
                                            
                                                if (msg.sender != 0x9828975989edc9b281df1b705ae70d1fc8aa5336) { goto label_0B46; }
                                                else { goto label_1824; }
                                            } else { goto label_1824; }
                                        } else if (msg.sender != 0x80d87340e754bf2ec226f8ad948f831bef57a261) {
                                            if (msg.sender == 0x82407fbb1244e9b12e00fc753099072fef8c8ffb) { goto label_1824; }
                                        
                                            if (msg.sender == 0x8439a6a573eba2fb29d4bff8ed1caecae1eb6249) { goto label_1824; }
                                        
                                            if (msg.sender == 0x86cdff297e5c5524648777dd34d991e23c682d9e) { goto label_1824; }
                                        
                                            if (msg.sender != 0x887fb345640112fd699279ae6222ced22a666c9d) { goto label_0A93; }
                                            else { goto label_1824; }
                                        } else { goto label_1824; }
                                    } else if (msg.sender != 0x70e949ae46a1d52dbc3ab2b7bceaa81f1a613ce8) {
                                        if (msg.sender == 0x7270a8a3d44a86711c56bb74d9fd5ffb85456462) { goto label_1824; }
                                    
                                        if (msg.sender == 0x7433ec80c8d878d6f04677ae2be7ef7ea772cae9) { goto label_1824; }
                                    
                                        if (msg.sender == 0x76555c36fb12c4bca5e4dba06bc089b0d031c0f5) { goto label_1824; }
                                    
                                        if (msg.sender != 0x783d9c137a2ad4fd5a61b93a6c6eb4b997f0abee) { goto label_09E0; }
                                        else { goto label_1824; }
                                    } else { goto label_1824; }
                                } else if (msg.sender != 0x60530f5ca4cb9907e0fbe67ca3afcbfe56d19a5c) {
                                    if (msg.sender == 0x62d2ec49f8f6fc01e81cc81ccab354d508049717) { goto label_1824; }
                                
                                    if (msg.sender == 0x64f88984c5ed6d16ca5aa119f4d79018f4b23322) { goto label_1824; }
                                
                                    if (msg.sender == 0x663168c2d70a31aeb18062d51af303276fd1ffce) { goto label_1824; }
                                
                                    if (msg.sender != 0x684b00ce95cb4c3331dc99b75e6517964297d555) { goto label_092D; }
                                    else { goto label_1824; }
                                } else { goto label_1824; }
                            } else if (msg.sender != 0x50bb07e549702848dcf689c8ad31b4774b34b164) {
                                if (msg.sender == 0x527a5889db1bfa948a71c53f9bd5679e25a0b643) { goto label_1824; }
                            
                                if (msg.sender == 0x542636ca6c9d37908bbb3973b1853d367fc14177) { goto label_1824; }
                            
                                if (msg.sender == 0x569911a297eba566fe5dab8b162f39f2c4a58c5f) { goto label_1824; }
                            
                                if (msg.sender != 0x5868f93c5127dfe53c5c4e770858484e78d986fb) { goto label_087A; }
                                else { goto label_1824; }
                            } else { goto label_1824; }
                        } else if (msg.sender != 0x40535fa07dae9054c2f8598199883fc62c23f12d) {
                            if (msg.sender == 0x42815f4f05298b748fa40f47e272dc2a9f9064cc) { goto label_1824; }
                        
                            if (msg.sender == 0x44bf59c7aa434bcb7207749672134819294e7c4e) { goto label_1824; }
                        
                            if (msg.sender == 0x4614d68b1d13b6ff55ef3a9070212026f7c18d3d) { goto label_1824; }
                        
                            if (msg.sender != 0x4895d41376c5172caa5de975d89b13fd994cd174) { goto label_07C7; }
                            else { goto label_1824; }
                        } else { goto label_1824; }
                    } else if (msg.sender != 0x30906c083e2ad69c9dcc5b753b86a14f7065d22b) {
                        if (msg.sender == 0x325eb11541684dcb487a5c6c7e89c98c3f3d6ad0) { goto label_1824; }
                    
                        if (msg.sender == 0x34e2a44518b39601633ac9d848f16480ef73be48) { goto label_1824; }
                    
                        if (msg.sender == 0x366d92fa7f6c565d6b831dc6850ee1d299e54f07) { goto label_1824; }
                    
                        if (msg.sender != 0x389fd1c46e93cff16ed530a76e44e79b99ae240a) { goto label_0714; }
                        else { goto label_1824; }
                    } else { goto label_1824; }
                } else if (msg.sender != 0x2029f4d7eb80ecc2e405e1e12193cc3fcf98829c) {
                    if (msg.sender == 0x228e402a8eeedd5d1062287bfb1fa0c87df6f69c) { goto label_1824; }
                
                    if (msg.sender == 0x24df3880dde1f005548ba9334547d7f317f13d29) { goto label_1824; }
                
                    if (msg.sender == 0x26afd91411226d4c2a13b8c8b5547cb6ac1c6cdc) { goto label_1824; }
                
                    if (msg.sender != 0x2886f28a2c58a3ddf7a4847ced88720125d63b80) { goto label_0661; }
                    else { goto label_1824; }
                } else { goto label_1824; }
            } else if (msg.sender != 0x10fe19c2773ef80b95a3243e946f6b1c144894a6) {
                if (msg.sender == 0x121f8a1fbfebcc7c134dc52abaec73259a593ee2) { goto label_1824; }
            
                if (msg.sender == 0x14fa60576f065eab08f8a4cc9313f6a7db3074eb) { goto label_1824; }
            
                if (msg.sender == 0x169c951dd62e6fc241f5392fad6ee0382fa6c2b9) { goto label_1824; }
            
                if (msg.sender != 0x18e55b66cff8befa0a8d2e45e4fd64cbd36cce31) { goto label_05AE; }
                else { goto label_1824; }
            } else { goto label_1824; }
        } else if (msg.sender != 0x3fd5f6030b8c1a4d2503339b14466b9ba6c6cf) {
            if (msg.sender == 0x029f388ac4d5c8bff490550ce0853221030e822b) { goto label_1824; }
        
            if (msg.sender == 0x048fde2d3d47f54d3e7be0be7a40e1cb5aff5d72) { goto label_1824; }
        
            if (msg.sender == 0x061e29222ee7cdf5a1abfb4223a492b9c4ea69f0) { goto label_1824; }
        
            if (msg.sender != 0x08c5b0521d780f31061cf6f0089caf6e46e46c12) { goto label_04FB; }
            else { goto label_1824; }
        } else { goto label_1824; }
    }
    
    function func_1826() {
        if (block.gaslimit <= 0x02fc7720) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_19DB() {
        var var0 = 0x19e3;
        func_043D();
    
        if (msg.sender == 0x70526cc7a6d6320b44122ea9d2d07670accc85a1) {
        label_1A06:
            var temp0 = msg.data[0x04:0x24];
            var var1 = temp0;
            var0 = var1 >> 0xf8;
            var var2 = (var1 << 0x08) >> 0xf8;
            var var3 = (var1 << 0x18) >> 0x90;
            var var4 = 0x15;
            var var5 = 0x0de0b6b3a7640000;
            var var6 = 0x64 - ((var1 << 0x10) >> 0xf8);
            memory[0x44:0x64] = 0x0902f1ac;
            var var7 = 0x00;
        
            if (var7 >= var2) {
            label_1B23:
            
                if (var5) {
                    var4 = 0x15;
                    var temp1 = (var3 * var5) / 0x0de0b6b3a7640000;
                    var3 = temp1;
                    memory[0x00:0x20] = 0x022c0d9f;
                    memory[0xc0:0xe0] = 0x70a08231;
                    var6 = var3;
                    var7 = address(this).balance;
                
                    if (var0 <= 0x0f) {
                        var var8 = 0x00;
                    
                        if (var8 >= var2) {
                        label_1D24:
                            var8 = 0x00;
                        
                            if (var0 > 0x0f) {
                                memory[0xe0:0x0100] = 0xdfee68a9adb981cd08699891a11cabe10f25ec44;
                                memory[0xa0:0xc0] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).staticcall.gas(msg.gas)(memory[0xdc:0x0100]);
                            
                                if (var7 > address(this).balance + memory[0xa0:0xc0]) { revert(memory[0x00:0x00]); }
                            
                                if (var0 % 0x10 != 0x02) { stop(); }
                            
                                var temp4 = var7;
                                var8 = (address(this).balance + memory[0xa0:0xc0]) - temp4;
                                memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value((var8 * (msg.value % 0x03e8)) / 0x03e8)(memory[0x00:0x00]);
                            
                                if (temp4 <= address(this).balance + memory[0xa0:0xc0]) { stop(); }
                                else { revert(memory[0x00:0x00]); }
                            } else if (var7 <= address(this).balance + var6) {
                                if (var0 % 0x10 != 0x02) { stop(); }
                            
                                var temp2 = var7;
                                var temp3 = var6;
                                var8 = (address(this).balance + temp3) - temp2;
                                memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value((var8 * (msg.value % 0x03e8)) / 0x03e8)(memory[0x00:0x00]);
                            
                                if (temp2 <= address(this).balance + temp3) { stop(); }
                                else { revert(memory[0x00:0x00]); }
                            } else { revert(memory[0x00:0x00]); }
                        } else {
                        label_1BA2:
                            var temp5 = msg.data[var4:var4 + 0x20];
                            var1 = temp5;
                            var var9 = var1 >> 0xf8;
                            var var10 = (var1 << 0x08) >> 0x60;
                            var temp6 = var8;
                            var var11 = memory[temp6 * 0x40 + 0x0180:temp6 * 0x40 + 0x0180 + 0x20];
                            var var12 = memory[temp6 * 0x40 + 0x01a0:temp6 * 0x40 + 0x01a0 + 0x20];
                        
                            if (temp6) {
                                var1 = msg.data[var4 + 0x15:var4 + 0x15 + 0x20];
                            
                                if (!((var1 >> 0xf0) & 0xff)) {
                                label_1C58:
                                    var temp7 = var3 * (0x2710 - (var1 >> 0xf8) * 0x05);
                                    var3 = temp7;
                                    var var13 = (var3 * var12) / (var11 * 0x2710 + var3);
                                    var var14 = var8 == var2 - 0x01;
                                
                                    if (var14 == 0x01) {
                                        memory[0x60:0x80] = 0xdfee68a9adb981cd08699891a11cabe10f25ec44;
                                        var14 = var9;
                                    
                                        if (!var14) {
                                        label_1CC4:
                                            memory[0x20:0x40] = 0x00;
                                            memory[0x40:0x60] = var13;
                                            memory[0x80:0xa0] = 0x00;
                                            var temp8;
                                            temp8, memory[0x00:0x00] = address(var10).call.gas(msg.gas)(memory[0x1c:0xa0]);
                                        
                                            if (temp8 == 0x00) { revert(memory[0x00:0x00]); }
                                        
                                        label_1CED:
                                        
                                            if (var8 + 0x01 != var2) {
                                                var3 = var13;
                                                var4 = var4 + 0x6b;
                                                var8 = var8 + 0x01;
                                            
                                                if (var8 >= var2) { goto label_1D24; }
                                                else { goto label_1BA2; }
                                            } else if (var13 <= var6) { revert(memory[0x00:0x00]); }
                                            else {
                                                var6 = var13 - var6;
                                                goto label_1D24;
                                            }
                                        } else {
                                        label_1CB2:
                                            memory[0x20:0x40] = var13;
                                            memory[0x40:0x60] = 0x00;
                                            memory[0x80:0xa0] = 0x20;
                                            var temp9;
                                            temp9, memory[0x00:0x00] = address(var10).call.gas(msg.gas)(memory[0x1c:0xa0]);
                                        
                                            if (temp9 != 0x00) { goto label_1CED; }
                                            else { revert(memory[0x00:0x00]); }
                                        }
                                    } else {
                                        memory[0x60:0x80] = msg.data[var4 + 0x6c:var4 + 0x6c + 0x20] >> 0x60;
                                        var14 = var9;
                                    
                                        if (!var14) { goto label_1CC4; }
                                        else { goto label_1CB2; }
                                    }
                                } else {
                                label_1C2B:
                                    memory[0xe0:0x0100] = var10;
                                    memory[0xa0:0xc0] = address((var1 << 0x10) >> 0x60).staticcall.gas(msg.gas)(memory[0xdc:0x0100]);
                                    var3 = memory[0xa0:0xc0];
                                
                                    if (var11 > var3) { revert(memory[0x00:0x00]); }
                                
                                    var3 = var3 - var11;
                                    goto label_1C58;
                                }
                            } else {
                                memory[0x0100:0x0120] = 0x23b872dd;
                                memory[0x0120:0x0140] = 0xdfee68a9adb981cd08699891a11cabe10f25ec44;
                                memory[0x0140:0x0160] = var10;
                                memory[0x0160:0x0180] = var3;
                                memory[0x00:0x00] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call.gas(msg.gas)(memory[0x011c:0x0180]);
                                var1 = msg.data[var4 + 0x15:var4 + 0x15 + 0x20];
                            
                                if (!((var1 >> 0xf0) & 0xff)) { goto label_1C58; }
                                else { goto label_1C2B; }
                            }
                        }
                    } else {
                        memory[0xe0:0x0100] = 0xdfee68a9adb981cd08699891a11cabe10f25ec44;
                        memory[0xa0:0xc0] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).staticcall.gas(msg.gas)(memory[0xdc:0x0100]);
                        var7 = memory[0xa0:0xc0] + var7;
                        var8 = 0x00;
                    
                        if (var8 >= var2) { goto label_1D24; }
                        else { goto label_1BA2; }
                    }
                } else if (var0 % 0x10 <= 0x00) { return; }
                else { revert(memory[0x00:0x00]); }
            } else {
            label_1A48:
                var temp10 = msg.data[var4:var4 + 0x20];
                var1 = temp10;
                memory[0x00:0x60] = address((var1 << 0x08) >> 0x60).staticcall.gas(msg.gas)(memory[0x60:0x64]);
                var8 = 0x00;
                var9 = var8;
                var10 = 0x00;
                var11 = var1 >> 0xf8;
            
                if (var11 == 0x00) {
                    var temp11 = memory[0x00:0x20];
                    var temp12 = memory[0x20:0x40];
                    var temp13 = var7 * 0x40;
                    memory[temp13 + 0x0180:temp13 + 0x0180 + 0x20] = temp11;
                    memory[temp13 + 0x01a0:temp13 + 0x01a0 + 0x20] = temp12;
                    var8 = (temp12 * 0x0de0b6b3a7640000) / temp11;
                    var temp14 = var4;
                    var9 = msg.data[temp14 + 0x2b:temp14 + 0x2b + 0x20];
                    var10 = msg.data[temp14 + 0x4b:temp14 + 0x4b + 0x20];
                
                    if (var8 >= var9) {
                    label_1B11:
                        var4 = var4 + 0x6b;
                        var7 = var7 + 0x01;
                    
                        if (var7 >= var2) { goto label_1B23; }
                        else { goto label_1A48; }
                    } else {
                    label_1ABC:
                        var temp15 = var10;
                    
                        if (!((var8 < temp15) | (var9 < temp15))) {
                            var temp16 = var10;
                            var11 = var8 - temp16 > (var9 - temp16 * var6) / 0x64;
                        
                            if (var11) {
                                var temp17 = var10;
                                var11 = (var8 - temp17 * 0x0de0b6b3a7640000) / (var9 - temp17);
                            
                                if (var11 >= var5) { goto label_1B11; }
                            
                                var5 = var11;
                                goto label_1B11;
                            } else {
                                var5 = 0x00;
                                goto label_1B23;
                            }
                        } else {
                            var5 = 0x00;
                            goto label_1B23;
                        }
                    }
                } else {
                    var9 = memory[0x20:0x40];
                    var10 = memory[0x00:0x20];
                    var temp18 = var7 * 0x40;
                    var temp19 = var9;
                    memory[temp18 + 0x0180:temp18 + 0x0180 + 0x20] = temp19;
                    var temp20 = var10;
                    memory[temp18 + 0x01a0:temp18 + 0x01a0 + 0x20] = temp20;
                    var8 = (temp20 * 0x0de0b6b3a7640000) / temp19;
                    var temp21 = var4;
                    var9 = msg.data[temp21 + 0x2b:temp21 + 0x2b + 0x20];
                    var10 = msg.data[temp21 + 0x4b:temp21 + 0x4b + 0x20];
                
                    if (var8 >= var9) { goto label_1B11; }
                    else { goto label_1ABC; }
                }
            }
        } else {
            var0 = 0x1a06;
            func_1826();
            goto label_1A06;
        }
    }
    
    function func_2427(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg1 + 0x1f i< arg0) {
            var1 = msg.data[arg1:arg1 + 0x20];
        
            if (var1 <= 0xffffffffffffffff) {
                var temp0 = arg1;
                var0 = temp0 + 0x20;
            
                if (temp0 + var1 + 0x20 > arg0) { revert(memory[0x00:0x00]); }
            
                arg0 = var1;
                r0 = var0;
                return r0, arg0;
            } else {
                var temp1 = var0;
                revert(memory[temp1:temp1 + temp1]);
            }
        } else {
            var temp2 = var0;
            revert(memory[temp2:temp2 + temp2]);
        }
    }
    
    function func_246E(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) {
            var temp0 = msg.data[arg1:arg1 + 0x20];
            var var1 = temp0;
        
            if (var1 == var1 & 0xffffffffffffffffffffffffffffffffffffffff) { return var1; }
        
            var temp1 = var0;
            revert(memory[temp1:temp1 + temp1]);
        } else {
            var temp2 = var0;
            revert(memory[temp2:temp2 + temp2]);
        }
    }
    
    function func_24A9(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i>= 0x60) {
            var var3 = msg.data[arg1:arg1 + 0x20];
            var var4 = 0x24c8;
            var var5 = var3;
            func_266A(var5);
            var0 = var3;
            var3 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
            var4 = 0x24d8;
            var5 = var3;
            func_266A(var5);
            r0 = var0;
            arg0 = var3;
            arg1 = msg.data[arg1 + 0x40:arg1 + 0x40 + 0x20];
            return r0, arg0, arg1;
        } else {
            var temp0 = var1;
            revert(memory[temp0:temp0 + temp0]);
        }
    }
    
    function func_24E9(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3) {
        r3 = 0x00;
        var var1 = r3;
        var var2 = 0x00;
        var var3 = var2;
    
        if (arg0 - arg1 i>= 0x60) {
            var var4 = msg.data[arg1:arg1 + 0x20];
            var var5 = 0x2509;
            var var6 = var4;
            func_266A(var6);
            r3 = var4;
            var temp0 = arg1;
            var1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
            var4 = msg.data[temp0 + 0x40:temp0 + 0x40 + 0x20];
        
            if (var4 <= 0xffffffffffffffff) {
                var5 = 0x2537;
                var6 = arg0;
                var var7 = arg1 + var4;
                var5, var6 = func_2427(var6, var7);
                var temp1 = r3;
                r3 = var6;
                r0 = temp1;
                arg0 = var1;
                arg1 = var5;
                return r0, arg0, arg1, r3;
            } else {
                var temp2 = var3;
                revert(memory[temp2:temp2 + temp2]);
            }
        } else {
            var temp3 = var3;
            revert(memory[temp3:temp3 + temp3]);
        }
    }
    
    function func_255F(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i>= 0x60) {
            var var3 = msg.data[arg1:arg1 + 0x20];
            var var4 = 0x257e;
            var var5 = var3;
            func_268C(var5);
            r0 = var3;
            var temp0 = arg1;
            arg0 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
            arg1 = msg.data[temp0 + 0x40:temp0 + 0x40 + 0x20];
            return r0, arg0, arg1;
        } else {
            var temp1 = var0;
            revert(memory[temp1:temp1 + temp1]);
        }
    }
    
    function func_2593(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3) {
        r3 = 0x00;
        var var1 = r3;
        var var2 = 0x00;
        var var3 = var2;
    
        if (arg0 - arg1 i>= 0x60) {
            var temp0 = arg1;
            r3 = msg.data[temp0:temp0 + 0x20];
            var1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
            var var4 = msg.data[temp0 + 0x40:temp0 + 0x40 + 0x20];
        
            if (var4 <= 0xffffffffffffffff) {
                var var5 = 0x2537;
                var var6 = arg0;
                var var7 = arg1 + var4;
                var5, var6 = func_2427(var6, var7);
                var temp1 = r3;
                r3 = var6;
                r0 = temp1;
                arg0 = var1;
                arg1 = var5;
                return r0, arg0, arg1, r3;
            } else {
                var temp2 = var2;
                revert(memory[temp2:temp2 + temp2]);
            }
        } else {
            var temp3 = r3;
            revert(memory[temp3:temp3 + temp3]);
        }
    }
    
    function func_25CC(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) { return msg.data[arg1:arg1 + 0x20]; }
    
        var temp0 = var0;
        revert(memory[temp0:temp0 + temp0]);
    }
    
    function func_25E4(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) { return memory[arg1:arg1 + 0x20]; }
    
        var temp0 = var0;
        revert(memory[temp0:temp0 + temp0]);
    }
    
    function func_25FC(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        return temp0 + 0x20;
    }
    
    function func_261D(var arg0, var arg1, var arg2) returns (var r0) {
        var temp0 = arg2;
        memory[temp0:temp0 + 0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
        return temp0 + 0x40;
    }
    
    function func_2644(var arg0, var arg1, var arg2) returns (var r0) {
        var temp0 = arg2;
        memory[temp0:temp0 + 0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = arg1;
        return temp0 + 0x40;
    }
    
    function func_266A(var arg0) {
        var temp0 = arg0;
    
        if (temp0 == temp0 & 0xffffffffffffffffffffffffffffffffffffffff) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_268C(var arg0) {
        var temp0 = arg0;
    
        if (temp0 == !!temp0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
}