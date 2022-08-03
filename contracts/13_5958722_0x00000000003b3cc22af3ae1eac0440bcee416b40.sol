contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length >= 0x04) {
            var0 = msg.data[0x00:0x20] >> 0xe0;
        
            if (var0 == 0x5c19a95c) {
                // Dispatch table entry for delegate(address)
                var1 = 0x00ce;
                var2 = 0x03ca;
                var3 = msg.data.length;
                var4 = 0x04;
                var2 = func_1BB6(var3, var4);
                var3 = 0x0d68;
                func_040F();
                var temp58 = memory[0x40:0x60];
                var3 = temp58;
                var temp59 = msg.data.length - 0x24;
                memory[var3:var3 + temp59] = msg.data[0x24:0x24 + temp59];
                var temp60;
                temp60, memory[0x00:0x00] = address(var2).delegatecall.gas(msg.gas)(memory[var3:var3 + temp59]);
                var temp61 = returndata.length;
                var4 = temp61;
                memory[var3:var3 + var4] = returndata[0x00:0x00 + var4];
            
                if (!temp60) { revert(memory[var3:var3 + var4]); }
                else { return memory[var3:var3 + var4]; }
            } else if (var0 == 0x9d118770) {
                // Dispatch table entry for destroy(uint256)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00ce;
                var2 = 0x03ea;
                var3 = msg.data.length;
                var4 = 0x04;
                var2 = func_1BEC(var3, var4);
                var3 = 0x0d9b;
                func_040F();
            
                if (!var2) { selfdestruct(msg.sender); }
            
                var temp62 = memory[0x40:0x60];
                memory[temp62:temp62 + 0x20] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                memory[temp62 + 0x04:temp62 + 0x04 + 0x20] = var2;
                var3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                var4 = 0x2e1a7d4d;
                var5 = temp62 + 0x24;
                var6 = 0x00;
                var7 = memory[0x40:0x60];
                var8 = var5 - var7;
                var9 = var7;
                var10 = 0x00;
                var11 = var3;
                var12 = !address(var11).code.length;
            
                if (var12) { revert(memory[0x00:0x00]); }
            
                var temp63;
                temp63, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
                var6 = !temp63;
            
                if (!var6) {
                    var temp64 = memory[0x40:0x60];
                    memory[temp64:temp64 + 0x20] = 0x00;
                    memory[0x40:0x60] = temp64 + 0x20;
                    var3 = 0x00;
                    var4 = msg.sender;
                    var5 = var2;
                    var6 = 0x0e3f;
                    var8 = temp64 + 0x20;
                    var7 = temp64;
                    var6 = func_1C85(var7, var8);
                    var temp65 = memory[0x40:0x60];
                    var temp66;
                    temp66, memory[temp65:temp65 + 0x00] = address(var4).call.gas(msg.gas).value(var5)(memory[temp65:temp65 + var6 - temp65]);
                    var5 = returndata.length;
                    var6 = var5;
                
                    if (var6 == 0x00) {
                        var3 = var4;
                    
                        if (var3) {
                        label_0ED2:
                            selfdestruct(msg.sender);
                        } else {
                        label_0E8B:
                            var temp67 = memory[0x40:0x60];
                            memory[temp67:temp67 + 0x20] = 0x461bcd << 0xe5;
                            memory[temp67 + 0x04:temp67 + 0x04 + 0x20] = 0x20;
                            memory[temp67 + 0x24:temp67 + 0x24 + 0x20] = 0x03;
                            memory[temp67 + 0x44:temp67 + 0x44 + 0x20] = 0x4445530000000000000000000000000000000000000000000000000000000000;
                            var4 = temp67 + 0x64;
                            goto label_0641;
                        }
                    } else {
                        var temp68 = memory[0x40:0x60];
                        var5 = temp68;
                        memory[0x40:0x60] = var5 + (returndata.length + 0x3f & ~0x1f);
                        memory[var5:var5 + 0x20] = returndata.length;
                        var temp69 = returndata.length;
                        memory[var5 + 0x20:var5 + 0x20 + temp69] = returndata[0x00:0x00 + temp69];
                        var3 = var4;
                    
                        if (var3) { goto label_0ED2; }
                        else { goto label_0E8B; }
                    }
                } else {
                    var temp70 = returndata.length;
                    memory[0x00:0x00 + temp70] = returndata[0x00:0x00 + temp70];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else if (var0 == 0xfa461e33) {
                // Dispatch table entry for uniswapV3SwapCallback(int256,int256,bytes)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00ce;
                var2 = 0x040a;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4, var5 = func_1C05(var3, var4);
                func_040A(var2, var3, var4, var5);
                stop();
            } else { goto label_00D0; }
        } else if (msg.data.length) {
        label_00D0:
            var var0 = 0x00d8;
            func_040F();
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x01] = msg.data[0x00:0x01];
            var0 = memory[temp0:temp0 + 0x20];
            memory[temp0:temp0 + 0x04] = msg.data[0x01:0x05];
            var var1 = memory[temp0:temp0 + 0x20];
        
            if (!(var1 & 0xffffffff00000000000000000000000000000000000000000000000000000000)) {
            label_0129:
                var temp1 = var0 & 0xff00000000000000000000000000000000000000000000000000000000000000;
                var var2 = temp1 <= 0x0200000000000000000000000000000000000000000000000000000000000000;
                var var3 = !temp1;
            
                if (var3) {
                    if (!var3) {
                    label_01D2:
                    
                        if (var0 & 0xff00000000000000000000000000000000000000000000000000000000000000 <= 0x0500000000000000000000000000000000000000000000000000000000000000) {
                            var3 = 0x0224;
                            var4 = var2;
                            func_0656(var4);
                            var3 = var0 & 0xff00000000000000000000000000000000000000000000000000000000000000 == 0x0200000000000000000000000000000000000000000000000000000000000000;
                        
                            if (var3) {
                                if (!var3) { stop(); }
                            
                            label_02BB:
                                var temp51 = memory[0x40:0x60];
                                var temp52 = msg.value;
                                var temp53;
                                temp53, memory[temp51:temp51 + 0x00] = address(block.coinbase).call.gas(!temp52 * 0x08fc).value(temp52)(memory[temp51:temp51 + 0x00]);
                                var3 = !temp53;
                            
                                if (!var3) { stop(); }
                            
                                var temp54 = returndata.length;
                                memory[0x00:0x00 + temp54] = returndata[0x00:0x00 + temp54];
                                revert(memory[0x00:0x00 + returndata.length]);
                            } else if (var0 & 0xff00000000000000000000000000000000000000000000000000000000000000 != 0x0500000000000000000000000000000000000000000000000000000000000000) { stop(); }
                            else { goto label_02BB; }
                        } else if (var0 & 0xff00000000000000000000000000000000000000000000000000000000000000 != 0x0600000000000000000000000000000000000000000000000000000000000000) {
                            var3 = 0x0346;
                            var temp2 = memory[0x40:0x60];
                            memory[0x40:0x60] = temp2 + 0xa0;
                            memory[temp2:temp2 + 0x20] = 0x00;
                            memory[temp2 + 0x20:temp2 + 0x20 + 0x20] = 0x00;
                            memory[temp2 + 0x40:temp2 + 0x40 + 0x20] = 0x00;
                            memory[temp2 + 0x60:temp2 + 0x60 + 0x20] = 0x00;
                            var var4 = temp2;
                            memory[var4 + 0x80:var4 + 0x80 + 0x20] = 0x00;
                            var temp3 = memory[0x40:0x60];
                            memory[0x40:0x60] = temp3 + 0xc0;
                            memory[temp3:temp3 + 0x20] = 0x00;
                            memory[temp3 + 0x20:temp3 + 0x20 + 0x20] = 0x00;
                            memory[temp3 + 0x40:temp3 + 0x40 + 0x20] = 0x00;
                            memory[temp3 + 0x60:temp3 + 0x60 + 0x20] = 0x00;
                            memory[temp3 + 0x80:temp3 + 0x80 + 0x20] = 0x00;
                            var var5 = temp3;
                            memory[var5 + 0xa0:var5 + 0xa0 + 0x20] = 0x00;
                            var temp4 = memory[0x40:0x60];
                            memory[temp4:temp4 + 0xbb] = msg.data[0x05:0xc0];
                            var temp5 = memory[temp4:temp4 + 0x20] >> 0xf8;
                            memory[var4 + 0x20:var4 + 0x20 + 0x20] = (temp5 ~ 0x01) % 0x02;
                            var var7 = (temp5 >> 0x01) & 0x01;
                            var var6 = (temp5 >> 0x02) & 0x01;
                            memory[var5 + 0xa0:var5 + 0xa0 + 0x20] = temp5 >> 0x03;
                            memory[var4:var4 + 0x20] = memory[temp4 - 0x0b:temp4 - 0x0b + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                            memory[var5:var5 + 0x20] = memory[temp4 + 0x09:temp4 + 0x09 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                            memory[var4 + 0x40:var4 + 0x40 + 0x20] = memory[temp4 + 0x1d:temp4 + 0x1d + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                            memory[var5 + 0x20:var5 + 0x20 + 0x20] = memory[temp4 + 0x31:temp4 + 0x31 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                            memory[var4 + 0x80:var4 + 0x80 + 0x20] = memory[temp4 + 0x51:temp4 + 0x51 + 0x20];
                            var var8 = memory[temp4 + 0x71:temp4 + 0x71 + 0x20];
                            memory[var5 + 0x40:var5 + 0x40 + 0x20] = memory[temp4 + 0x91:temp4 + 0x91 + 0x20];
                            var var9 = (memory[temp4 + 0xb2:temp4 + 0xb2 + 0x20] >> 0xe0) << ((memory[temp4 + 0xb1:temp4 + 0xb1 + 0x20] >> 0xf8) << 0x02);
                            var var10 = memory[temp4 + 0xb6:temp4 + 0xb6 + 0x20];
                            memory[var4 + 0x60:var4 + 0x60 + 0x20] = memory[temp4 + 0x99:temp4 + 0x99 + 0x20];
                            memory[var5 + 0x80:var5 + 0x80 + 0x20] = memory[temp4 + 0x9b:temp4 + 0x9b + 0x20];
                            var var11 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                            memory[var5 + 0x60:var5 + 0x60 + 0x20] = var11 & 0xffffffffffffffffffffffffffffffffffffffff;
                        
                            if (var7) {
                                var10 = var9;
                                var11 = 0x0c22;
                                var12 = var4;
                                var13 = var5;
                            
                            label_1676:
                                var14 = 0x00;
                                var15 = 0x60;
                                var16 = 0x00;
                                var17 = var16;
                                var18 = 0x168a;
                                var var19 = memory[var13 + 0x20:var13 + 0x20 + 0x20];
                                var18, var19 = func_1A79(var19);
                                var17 = var19;
                                var16 = var18;
                            
                                if (!var17) {
                                    var temp17 = var12;
                                    var temp18 = memory[temp17:temp17 + 0x20];
                                    var temp19 = memory[temp17 + 0x40:temp17 + 0x40 + 0x20];
                                    var temp20 = memory[temp17 + 0x80:temp17 + 0x80 + 0x20];
                                    var temp21 = memory[temp17 + 0x60:temp17 + 0x60 + 0x20];
                                    var temp22 = var13;
                                    var temp23 = memory[temp22 + 0x80:temp22 + 0x80 + 0x20];
                                    var temp24 = memory[temp22 + 0x60:temp22 + 0x60 + 0x20];
                                    var temp25 = memory[temp22 + 0x20:temp22 + 0x20 + 0x20];
                                    var temp26 = memory[0x40:0x60];
                                    memory[temp26 + 0x20:temp26 + 0x20 + 0x20] = !!memory[temp17 + 0x20:temp17 + 0x20 + 0x20] << 0xf8;
                                    memory[temp26 + 0x21:temp26 + 0x21 + 0x20] = (temp18 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
                                    memory[temp26 + 0x35:temp26 + 0x35 + 0x20] = (temp19 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
                                    memory[temp26 + 0x49:temp26 + 0x49 + 0x20] = temp20;
                                    memory[temp26 + 0x69:temp26 + 0x69 + 0x20] = (temp21 << 0xf0) & 0xffff000000000000000000000000000000000000000000000000000000000000;
                                    memory[temp26 + 0x6b:temp26 + 0x6b + 0x20] = (temp23 << 0xf0) & 0xffff000000000000000000000000000000000000000000000000000000000000;
                                    memory[temp26 + 0x6d:temp26 + 0x6d + 0x20] = (temp24 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
                                    memory[temp26 + 0x81:temp26 + 0x81 + 0x20] = (temp25 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
                                    var temp27 = temp26 + 0x95;
                                    var temp28 = memory[0x40:0x60];
                                    memory[temp28:temp28 + 0x20] = temp27 - temp28 - 0x20;
                                    memory[0x40:0x60] = temp27;
                                    var15 = temp28;
                                    var16 = 0x00;
                                    var17 = var16;
                                    var18 = 0x1877;
                                    var19 = memory[temp22:temp22 + 0x20];
                                    var var20 = 0x00;
                                    var var21 = memory[temp22 + 0xa0:temp22 + 0xa0 + 0x20];
                                    var var22 = memory[temp22 + 0x40:temp22 + 0x40 + 0x20];
                                    var var23 = var15;
                                    var18, var19 = func_1AC5(var19, var20, var21, var22, var23);
                                
                                label_1877:
                                    var17 = var19;
                                    var16 = var18;
                                
                                    if (memory[var13 + 0xa0:var13 + 0xa0 + 0x20]) {
                                        var19 = var17;
                                        var18 = 0x150f;
                                        var18 = func_1D86(var19);
                                    
                                    label_150F:
                                        var11 = var18;
                                        // Error: Could not resolve jump destination!
                                    } else {
                                        var18 = var16;
                                        var temp29 = var18;
                                        var18 = 0x150f;
                                        var19 = temp29;
                                        var18 = func_1D86(var19);
                                        goto label_150F;
                                    }
                                } else {
                                    var temp30 = var12;
                                    var temp31 = memory[temp30:temp30 + 0x20];
                                    var temp32 = memory[temp30 + 0x40:temp30 + 0x40 + 0x20];
                                    var temp33 = memory[temp30 + 0x80:temp30 + 0x80 + 0x20];
                                    var temp34 = memory[temp30 + 0x60:temp30 + 0x60 + 0x20];
                                    var temp35 = var13;
                                    var temp36 = memory[temp35 + 0x80:temp35 + 0x80 + 0x20];
                                    var temp37 = memory[temp35 + 0x60:temp35 + 0x60 + 0x20];
                                    var temp38 = memory[0x40:0x60];
                                    memory[temp38 + 0x20:temp38 + 0x20 + 0x20] = !!memory[temp30 + 0x20:temp30 + 0x20 + 0x20] << 0xf8;
                                    memory[temp38 + 0x21:temp38 + 0x21 + 0x20] = (temp31 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
                                    memory[temp38 + 0x35:temp38 + 0x35 + 0x20] = (temp32 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
                                    memory[temp38 + 0x49:temp38 + 0x49 + 0x20] = temp33;
                                    memory[temp38 + 0x69:temp38 + 0x69 + 0x20] = (temp34 << 0xf0) & 0xffff000000000000000000000000000000000000000000000000000000000000;
                                    memory[temp38 + 0x6b:temp38 + 0x6b + 0x20] = (temp36 << 0xf0) & 0xffff000000000000000000000000000000000000000000000000000000000000;
                                    memory[temp38 + 0x6d:temp38 + 0x6d + 0x20] = (temp37 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
                                    memory[temp38 + 0x81:temp38 + 0x81 + 0x20] = var16 & 0xff00000000000000000000000000000000000000000000000000000000000000;
                                    var temp39 = temp38 + 0x82;
                                    var temp40 = memory[0x40:0x60];
                                    memory[temp40:temp40 + 0x20] = temp39 - temp40 - 0x20;
                                    memory[0x40:0x60] = temp39;
                                    var15 = temp40;
                                    var16 = 0x00;
                                    var17 = var16;
                                    var18 = 0x1877;
                                    var temp41 = var13;
                                    var19 = memory[temp41:temp41 + 0x20];
                                    var20 = 0x00;
                                    var21 = memory[temp41 + 0xa0:temp41 + 0xa0 + 0x20];
                                    var22 = memory[temp41 + 0x40:temp41 + 0x40 + 0x20];
                                    var23 = var15;
                                    var18, var19 = func_1AC5(var19, var20, var21, var22, var23);
                                    goto label_1877;
                                }
                            } else if (!memory[var4 + 0x20:var4 + 0x20 + 0x20]) {
                                var10 = var8;
                                var11 = 0x0d12;
                                var temp6 = var4;
                                var var12 = memory[temp6 + 0x40:temp6 + 0x40 + 0x20];
                                var var13 = memory[temp6:temp6 + 0x20];
                                var var14 = memory[temp6 + 0x80:temp6 + 0x80 + 0x20];
                                var var15 = var6;
                                var temp7 = var5;
                                var var16 = memory[temp7:temp7 + 0x20];
                                var var17 = memory[temp7 + 0x20:temp7 + 0x20 + 0x20] << 0x60;
                                var var18 = memory[temp6 + 0x60:temp6 + 0x60 + 0x20] << 0xf0;
                                var11 = func_1519(var12, var13, var14, var15, var16, var17, var18);
                            
                                if (var11 >= var10) {
                                label_0A52:
                                    var10 = 0x0759;
                                    var11 = 0x04fb;
                                    var temp8 = var5;
                                    var12 = memory[temp8:temp8 + 0x20];
                                    var13 = memory[temp8 + 0x20:temp8 + 0x20 + 0x20];
                                    var14 = memory[temp8 + 0x40:temp8 + 0x40 + 0x20];
                                    var15 = var9;
                                    var16 = memory[temp8 + 0xa0:temp8 + 0xa0 + 0x20];
                                    var17 = 0x00;
                                    var11 = func_14D2(var12, var13, var14, var15, var16, var17);
                                
                                    if (var11) {
                                    label_14CF:
                                        // Error: Could not resolve jump destination!
                                    } else {
                                        var temp9 = memory[0x40:0x60];
                                        memory[temp9:temp9 + 0x20] = 0x05709238;
                                        var12 = 0x05709238;
                                        memory[0x40:0x60] = temp9 + 0xae124720;
                                        memory[temp9 + 0x20:temp9 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
                                        var13 = temp9;
                                        var14 = 0x00;
                                        var15 = 0x1466;
                                        var16 = var12;
                                        var17 = 0x01;
                                        var15 = func_1CEF(var16, var17);
                                    
                                    label_1466:
                                    
                                        if (var14 >= var15) { goto label_14CF; }
                                    
                                        var15 = 0x1477;
                                        var16 = var14;
                                        var17 = block.number;
                                        var15 = func_1D07(var16, var17);
                                        var temp10 = memory[0x40:0x60];
                                        memory[temp10 + 0x20:temp10 + 0x20 + 0x20] = block.blockHash(var15);
                                        var temp11 = temp10 + 0x40;
                                        var temp12 = memory[0x40:0x60];
                                        memory[temp12:temp12 + 0x20] = temp11 - temp12 - 0x20;
                                        memory[0x40:0x60] = temp11;
                                        var15 = keccak256(memory[temp12 + 0x20:temp12 + 0x20 + memory[temp12:temp12 + 0x20]]) >> 0x00;
                                        var16 = var13;
                                        var17 = var14;
                                    
                                        if (var17 < memory[var16:var16 + 0x20]) {
                                            memory[var17 * 0x20 + var16 + 0x20:var17 * 0x20 + var16 + 0x20 + 0x20] = var15;
                                            var15 = var14;
                                            var16 = 0x14c3;
                                            var17 = var15;
                                            var16 = func_1D4D(var17);
                                            var14 = var16;
                                            var15 = 0x1466;
                                            var16 = var12;
                                            var17 = 0x01;
                                            var15 = func_1CEF(var16, var17);
                                            goto label_1466;
                                        } else {
                                            var18 = 0x14ae;
                                            memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                            memory[0x04:0x24] = 0x32;
                                            revert(memory[0x00:0x24]);
                                        }
                                    }
                                } else {
                                    var temp13 = memory[0x40:0x60];
                                    memory[temp13:temp13 + 0x20] = 0x461bcd << 0xe5;
                                    memory[temp13 + 0x04:temp13 + 0x04 + 0x20] = 0x20;
                                    memory[temp13 + 0x24:temp13 + 0x24 + 0x20] = 0x02;
                                    memory[temp13 + 0x44:temp13 + 0x44 + 0x20] = 0x4533000000000000000000000000000000000000000000000000000000000000;
                                    var10 = temp13 + 0x64;
                                
                                label_0641:
                                    var temp14 = memory[0x40:0x60];
                                    revert(memory[temp14:temp14 + var10 - temp14]);
                                }
                            } else {
                                var10 = 0x0c98;
                                var temp15 = var4;
                                var11 = memory[temp15:temp15 + 0x20];
                                var12 = memory[temp15 + 0x40:temp15 + 0x40 + 0x20];
                                var13 = memory[temp15 + 0x80:temp15 + 0x80 + 0x20];
                                var14 = var8;
                                var15 = var6;
                                var16 = memory[var5:var5 + 0x20];
                                var10 = func_14D2(var11, var12, var13, var14, var15, var16);
                            
                            label_0C98:
                            
                                if (var10) {
                                label_09D1:
                                    goto label_0A52;
                                } else {
                                    var temp16 = memory[0x40:0x60];
                                    memory[temp16:temp16 + 0x20] = 0x461bcd << 0xe5;
                                    memory[temp16 + 0x04:temp16 + 0x04 + 0x20] = 0x20;
                                    memory[temp16 + 0x24:temp16 + 0x24 + 0x20] = 0x02;
                                    memory[temp16 + 0x44:temp16 + 0x44 + 0x20] = 0x4532000000000000000000000000000000000000000000000000000000000000;
                                    var10 = temp16 + 0x64;
                                    goto label_0641;
                                }
                            }
                        } else {
                            var3 = 0x01cd;
                            var temp42 = memory[0x40:0x60];
                            memory[0x40:0x60] = temp42 + 0xa0;
                            memory[temp42:temp42 + 0x20] = 0x00;
                            memory[temp42 + 0x20:temp42 + 0x20 + 0x20] = 0x00;
                            memory[temp42 + 0x40:temp42 + 0x40 + 0x20] = 0x00;
                            memory[temp42 + 0x60:temp42 + 0x60 + 0x20] = 0x00;
                            var4 = temp42;
                            memory[var4 + 0x80:var4 + 0x80 + 0x20] = 0x00;
                            var temp43 = memory[0x40:0x60];
                            memory[0x40:0x60] = temp43 + 0xc0;
                            memory[temp43:temp43 + 0x20] = 0x00;
                            memory[temp43 + 0x20:temp43 + 0x20 + 0x20] = 0x00;
                            memory[temp43 + 0x40:temp43 + 0x40 + 0x20] = 0x00;
                            memory[temp43 + 0x60:temp43 + 0x60 + 0x20] = 0x00;
                            memory[temp43 + 0x80:temp43 + 0x80 + 0x20] = 0x00;
                            var5 = temp43;
                            memory[var5 + 0xa0:var5 + 0xa0 + 0x20] = 0x00;
                            var temp44 = memory[0x40:0x60];
                            memory[temp44:temp44 + 0xbb] = msg.data[0x05:0xc0];
                            var temp45 = memory[temp44:temp44 + 0x20] >> 0xf8;
                            memory[var4 + 0x20:var4 + 0x20 + 0x20] = (temp45 ~ 0x01) % 0x02;
                            var7 = (temp45 >> 0x01) & 0x01;
                            var6 = (temp45 >> 0x02) & 0x01;
                            memory[var5 + 0xa0:var5 + 0xa0 + 0x20] = temp45 >> 0x03;
                            memory[var4:var4 + 0x20] = memory[temp44 - 0x0b:temp44 - 0x0b + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                            memory[var5:var5 + 0x20] = memory[temp44 + 0x09:temp44 + 0x09 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                            memory[var5 + 0x20:var5 + 0x20 + 0x20] = memory[temp44 + 0x1d:temp44 + 0x1d + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                            memory[var4 + 0x80:var4 + 0x80 + 0x20] = (memory[temp44 + 0x3e:temp44 + 0x3e + 0x20] >> 0xe0) << ((memory[temp44 + 0x3d:temp44 + 0x3d + 0x20] >> 0xf8) << 0x02);
                            memory[var5 + 0x40:var5 + 0x40 + 0x20] = memory[temp44 + 0x42:temp44 + 0x42 + 0x20];
                            var9 = memory[temp44 + 0x62:temp44 + 0x62 + 0x20];
                            var10 = memory[temp44 + 0x82:temp44 + 0x82 + 0x20];
                            var8 = memory[temp44 + 0x83:temp44 + 0x83 + 0x20];
                            memory[var4 + 0x60:var4 + 0x60 + 0x20] = memory[temp44 + 0x85:temp44 + 0x85 + 0x20];
                            memory[var5 + 0x80:var5 + 0x80 + 0x20] = memory[temp44 + 0x87:temp44 + 0x87 + 0x20];
                            memory[var5 + 0x60:var5 + 0x60 + 0x20] = memory[temp44 + 0x9b:temp44 + 0x9b + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                            var11 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                            memory[var4 + 0x40:var4 + 0x40 + 0x20] = var11 & 0xffffffffffffffffffffffffffffffffffffffff;
                        
                            if (var7) {
                                var10 = var9;
                                var11 = 0x090f;
                                var12 = var4;
                                var13 = var5;
                                goto label_1676;
                            } else if (!memory[var4 + 0x20:var4 + 0x20 + 0x20]) {
                                var10 = var8;
                                var11 = 0x0a04;
                                var temp46 = var4;
                                var12 = memory[temp46 + 0x40:temp46 + 0x40 + 0x20];
                                var13 = memory[temp46:temp46 + 0x20];
                                var14 = memory[temp46 + 0x80:temp46 + 0x80 + 0x20];
                                var15 = var6;
                                var temp47 = var5;
                                var16 = memory[temp47:temp47 + 0x20];
                                var17 = memory[temp47 + 0x20:temp47 + 0x20 + 0x20] << 0x60;
                                var18 = memory[temp46 + 0x60:temp46 + 0x60 + 0x20] << 0xf0;
                                var11 = func_1519(var12, var13, var14, var15, var16, var17, var18);
                            
                                if (var11 >= var10) { goto label_0A52; }
                            
                                var temp48 = memory[0x40:0x60];
                                memory[temp48:temp48 + 0x20] = 0x461bcd << 0xe5;
                                memory[temp48 + 0x04:temp48 + 0x04 + 0x20] = 0x20;
                                memory[temp48 + 0x24:temp48 + 0x24 + 0x20] = 0x02;
                                memory[temp48 + 0x44:temp48 + 0x44 + 0x20] = 0x5333000000000000000000000000000000000000000000000000000000000000;
                                var10 = temp48 + 0x64;
                                goto label_0641;
                            } else {
                                var10 = 0x0985;
                                var temp49 = var4;
                                var11 = memory[temp49:temp49 + 0x20];
                                var12 = memory[temp49 + 0x40:temp49 + 0x40 + 0x20];
                                var13 = memory[temp49 + 0x80:temp49 + 0x80 + 0x20];
                                var14 = var8;
                                var15 = var6;
                                var16 = memory[var5:var5 + 0x20];
                                var10 = func_14D2(var11, var12, var13, var14, var15, var16);
                            
                            label_0985:
                            
                                if (var10) { goto label_09D1; }
                            
                                var temp50 = memory[0x40:0x60];
                                memory[temp50:temp50 + 0x20] = 0x461bcd << 0xe5;
                                memory[temp50 + 0x04:temp50 + 0x04 + 0x20] = 0x20;
                                memory[temp50 + 0x24:temp50 + 0x24 + 0x20] = 0x02;
                                memory[temp50 + 0x44:temp50 + 0x44 + 0x20] = 0x5332000000000000000000000000000000000000000000000000000000000000;
                                var10 = temp50 + 0x64;
                                goto label_0641;
                            }
                        }
                    } else {
                    label_01C5:
                        var3 = 0x01cd;
                        var4 = var2;
                        func_0502(var4);
                        stop();
                    }
                } else if (var0 & 0xff00000000000000000000000000000000000000000000000000000000000000 != 0x0300000000000000000000000000000000000000000000000000000000000000) { goto label_01D2; }
                else { goto label_01C5; }
            } else if (var1 >> 0xe0 == block.number) { goto label_0129; }
            else { revert(memory[0x00:0x00]); }
        } else if (msg.sender == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) { stop(); }
        else {
            var0 = 0xffffffffffffffffffffffffffffffffffffffff & 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            var1 = 0xd0e30db0;
            var2 = msg.value;
            var temp55 = memory[0x40:0x60];
            memory[temp55:temp55 + 0x20] = (var1 & 0xffffffff) << 0xe0;
            var3 = temp55 + 0x04;
            var4 = 0x00;
            var5 = memory[0x40:0x60];
            var6 = var3 - var5;
            var7 = var5;
            var8 = var2;
            var9 = var0;
            var10 = !address(var9).code.length;
        
            if (var10) { revert(memory[0x00:0x00]); }
        
            var temp56;
            temp56, memory[var5:var5 + var4] = address(var9).call.gas(msg.gas).value(var8)(memory[var7:var7 + var6]);
            var4 = !temp56;
        
            if (!var4) { stop(); }
        
            var temp57 = returndata.length;
            memory[0x00:0x00 + temp57] = returndata[0x00:0x00 + temp57];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_040A(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x0edf;
        func_1895();
        var0 = arg0 i> 0x00;
    
        if (var0) {
            if (var0) {
            label_0F3A:
                var0 = arg3;
            
                if (var0 > 0x16) {
                    var temp0 = memory[0x40:0x60];
                    memory[0x40:0x60] = temp0 + 0xa0;
                    memory[temp0:temp0 + 0x20] = 0x00;
                    memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x00;
                    memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x00;
                    memory[temp0 + 0x60:temp0 + 0x60 + 0x20] = 0x00;
                    var var1 = temp0;
                    memory[var1 + 0x80:var1 + 0x80 + 0x20] = 0x00;
                    var var2 = var0 > 0x2a;
                    var var3 = 0x00;
                    var var4 = var3;
                    var var5 = var4;
                    var var6 = var5;
                    var var7 = var6;
                
                    if (var2) {
                        var temp1 = memory[0x40:0x60];
                        var var8 = temp1;
                        memory[var8:var8 + 0x75] = msg.data[0x84:0xf9];
                        var temp2 = var1;
                        memory[temp2:temp2 + 0x20] = memory[var8 - 0x1f:var8 - 0x1f + 0x20];
                        memory[temp2 + 0x20:temp2 + 0x20 + 0x20] = memory[var8 - 0x0b:var8 - 0x0b + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                        memory[temp2 + 0x40:temp2 + 0x40 + 0x20] = memory[var8 + 0x09:var8 + 0x09 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                        memory[temp2 + 0x60:temp2 + 0x60 + 0x20] = memory[var8 + 0x29:var8 + 0x29 + 0x20];
                        memory[temp2 + 0x80:temp2 + 0x80 + 0x20] = memory[var8 + 0x49:var8 + 0x49 + 0x20];
                        var6 = memory[var8 + 0x2d:var8 + 0x2d + 0x20] & 0xffff;
                        var5 = memory[var8 + 0x41:var8 + 0x41 + 0x20];
                        var var9 = var0;
                    
                        if (var9 == 0x62) {
                            var7 = memory[var8 + 0x61:var8 + 0x61 + 0x20];
                        
                            if (var4 & 0xffffffffffffffffffffffffffffffffffffffff) {
                            label_10CD:
                                var8 = 0x00;
                                var9 = var8;
                            
                                if (var4 & 0xffffffffffffffffffffffffffffffffffffffff < var5 & 0xffffffffffffffffffffffffffffffffffffffff) {
                                label_110A:
                                    var temp3 = memory[0x40:0x60];
                                    memory[temp3 + 0x20:temp3 + 0x20 + 0x20] = var4 & 0xffffffffffffffffffffffffffffffffffffffff;
                                    memory[temp3 + 0x40:temp3 + 0x40 + 0x20] = var5 & 0xffffffffffffffffffffffffffffffffffffffff;
                                    memory[temp3 + 0x60:temp3 + 0x60 + 0x20] = var6 & 0xffffff;
                                    var temp4 = memory[0x40:0x60];
                                    memory[temp4:temp4 + 0x20] = temp3 - temp4 + 0x60;
                                    memory[0x40:0x60] = temp3 + 0x80;
                                    var temp5 = keccak256(memory[temp4 + 0x20:temp4 + 0x20 + memory[temp4:temp4 + 0x20]]);
                                    memory[temp3 + 0xa0:temp3 + 0xa0 + 0x20] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                                    memory[temp3 + 0xa1:temp3 + 0xa1 + 0x20] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000;
                                    memory[temp3 + 0xb5:temp3 + 0xb5 + 0x20] = temp5;
                                    memory[temp3 + 0xd5:temp3 + 0xd5 + 0x20] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                                    var temp6 = memory[0x40:0x60];
                                    memory[temp6:temp6 + 0x20] = temp3 - temp6 + 0xd5;
                                    memory[0x40:0x60] = temp3 + 0xf5;
                                    var3 = keccak256(memory[temp6 + 0x20:temp6 + 0x20 + memory[temp6:temp6 + 0x20]]);
                                    var5 = 0x00;
                                
                                    if (arg0 i> var5) {
                                    label_120D:
                                        var5 = arg0;
                                    
                                        if (var3 & 0xffffffffffffffffffffffffffffffffffffffff == msg.sender) {
                                        label_1276:
                                        
                                            if (!var2) {
                                                var6 = 0x13ce;
                                                var7 = var4;
                                                var8 = var3;
                                                var9 = var5;
                                                var6 = func_1987(var7, var8, var9);
                                            
                                                if (var6) {
                                                label_141A:
                                                    return;
                                                } else {
                                                    var temp7 = memory[0x40:0x60];
                                                    memory[temp7:temp7 + 0x20] = 0x461bcd << 0xe5;
                                                    memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = 0x20;
                                                    memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = 0x02;
                                                    memory[temp7 + 0x44:temp7 + 0x44 + 0x20] = 0x4334000000000000000000000000000000000000000000000000000000000000;
                                                    var6 = temp7 + 0x64;
                                                
                                                label_0641:
                                                    var temp8 = memory[0x40:0x60];
                                                    revert(memory[temp8:temp8 + var6 - temp8]);
                                                }
                                            } else if (!memory[var1:var1 + 0x20]) {
                                                var6 = var5;
                                                var7 = 0x1375;
                                                var temp9 = var1;
                                                var8 = memory[temp9 + 0x40:temp9 + 0x40 + 0x20];
                                                var9 = memory[temp9 + 0x20:temp9 + 0x20 + 0x20];
                                                var var10 = memory[temp9 + 0x60:temp9 + 0x60 + 0x20];
                                                var temp10 = var4;
                                                var var11 = memory[temp9 + 0x40:temp9 + 0x40 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff < temp10 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                var var12 = var3;
                                                var var13 = temp10 << 0x60;
                                                var var14 = memory[temp9 + 0x80:temp9 + 0x80 + 0x20];
                                                var7 = func_1519(var8, var9, var10, var11, var12, var13, var14);
                                            
                                                if (var7 >= var6) {
                                                label_131B:
                                                    goto label_141A;
                                                } else {
                                                    var temp11 = memory[0x40:0x60];
                                                    memory[temp11:temp11 + 0x20] = 0x461bcd << 0xe5;
                                                    memory[temp11 + 0x04:temp11 + 0x04 + 0x20] = 0x20;
                                                    memory[temp11 + 0x24:temp11 + 0x24 + 0x20] = 0x02;
                                                    memory[temp11 + 0x44:temp11 + 0x44 + 0x20] = 0x4333000000000000000000000000000000000000000000000000000000000000;
                                                    var6 = temp11 + 0x64;
                                                    goto label_0641;
                                                }
                                            } else {
                                                var6 = 0x12cf;
                                                var temp12 = var1;
                                                var7 = memory[temp12 + 0x20:temp12 + 0x20 + 0x20];
                                                var8 = memory[temp12 + 0x40:temp12 + 0x40 + 0x20];
                                                var9 = memory[temp12 + 0x60:temp12 + 0x60 + 0x20];
                                                var10 = var5;
                                                var11 = memory[temp12 + 0x40:temp12 + 0x40 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff > var4 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                var12 = var3;
                                                var6 = func_14D2(var7, var8, var9, var10, var11, var12);
                                            
                                            label_12CF:
                                            
                                                if (var6) { goto label_131B; }
                                            
                                                var temp13 = memory[0x40:0x60];
                                                memory[temp13:temp13 + 0x20] = 0x461bcd << 0xe5;
                                                memory[temp13 + 0x04:temp13 + 0x04 + 0x20] = 0x20;
                                                memory[temp13 + 0x24:temp13 + 0x24 + 0x20] = 0x02;
                                                memory[temp13 + 0x44:temp13 + 0x44 + 0x20] = 0x4332000000000000000000000000000000000000000000000000000000000000;
                                                var6 = temp13 + 0x64;
                                                goto label_0641;
                                            }
                                        } else {
                                        label_122F:
                                            var temp14 = memory[0x40:0x60];
                                            memory[temp14:temp14 + 0x20] = 0x461bcd << 0xe5;
                                            memory[temp14 + 0x04:temp14 + 0x04 + 0x20] = 0x20;
                                            memory[temp14 + 0x24:temp14 + 0x24 + 0x20] = 0x02;
                                            memory[temp14 + 0x44:temp14 + 0x44 + 0x20] = 0x3a29000000000000000000000000000000000000000000000000000000000000;
                                            var6 = temp14 + 0x64;
                                            goto label_0641;
                                        }
                                    } else {
                                    label_1208:
                                        var6 = arg1;
                                        var5 = var6;
                                    
                                        if (var3 & 0xffffffffffffffffffffffffffffffffffffffff == msg.sender) { goto label_1276; }
                                        else { goto label_122F; }
                                    }
                                } else {
                                label_1104:
                                    var10 = var5;
                                    var11 = var4;
                                    var temp15 = memory[0x40:0x60];
                                    memory[temp15 + 0x20:temp15 + 0x20 + 0x20] = var10 & 0xffffffffffffffffffffffffffffffffffffffff;
                                    memory[temp15 + 0x40:temp15 + 0x40 + 0x20] = var11 & 0xffffffffffffffffffffffffffffffffffffffff;
                                    memory[temp15 + 0x60:temp15 + 0x60 + 0x20] = var6 & 0xffffff;
                                    var temp16 = memory[0x40:0x60];
                                    memory[temp16:temp16 + 0x20] = temp15 - temp16 + 0x60;
                                    memory[0x40:0x60] = temp15 + 0x80;
                                    var temp17 = keccak256(memory[temp16 + 0x20:temp16 + 0x20 + memory[temp16:temp16 + 0x20]]);
                                    memory[temp15 + 0xa0:temp15 + 0xa0 + 0x20] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                                    memory[temp15 + 0xa1:temp15 + 0xa1 + 0x20] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000;
                                    memory[temp15 + 0xb5:temp15 + 0xb5 + 0x20] = temp17;
                                    memory[temp15 + 0xd5:temp15 + 0xd5 + 0x20] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                                    var temp18 = memory[0x40:0x60];
                                    memory[temp18:temp18 + 0x20] = temp15 - temp18 + 0xd5;
                                    memory[0x40:0x60] = temp15 + 0xf5;
                                    var3 = keccak256(memory[temp18 + 0x20:temp18 + 0x20 + memory[temp18:temp18 + 0x20]]);
                                    var5 = 0x00;
                                
                                    if (arg0 i> var5) { goto label_120D; }
                                    else { goto label_1208; }
                                }
                            } else {
                            label_10B6:
                                var4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                var8 = 0x00;
                                var9 = var8;
                            
                                if (var4 & 0xffffffffffffffffffffffffffffffffffffffff < var5 & 0xffffffffffffffffffffffffffffffffffffffff) { goto label_110A; }
                                else { goto label_1104; }
                            }
                        } else {
                            var4 = memory[var8 + 0x55:var8 + 0x55 + 0x20];
                        
                            if (var4 & 0xffffffffffffffffffffffffffffffffffffffff) { goto label_10CD; }
                            else { goto label_10B6; }
                        }
                    } else {
                        var temp19 = memory[0x40:0x60];
                        var8 = temp19;
                        memory[var8:var8 + 0x2a] = msg.data[0x84:0xae];
                        var6 = memory[var8 - 0x1e:var8 - 0x1e + 0x20] & 0xffff;
                        var5 = memory[var8 - 0x0a:var8 - 0x0a + 0x20];
                        var9 = var0;
                    
                        if (var9 == 0x17) {
                            var7 = memory[var8 + 0x16:var8 + 0x16 + 0x20];
                        
                        label_109A:
                        
                            if (var4 & 0xffffffffffffffffffffffffffffffffffffffff) { goto label_10CD; }
                            else { goto label_10B6; }
                        } else {
                            var4 = memory[var8 + 0x0a:var8 + 0x0a + 0x20];
                            goto label_109A;
                        }
                    }
                } else {
                    var temp20 = memory[0x40:0x60];
                    memory[temp20:temp20 + 0x20] = 0x461bcd << 0xe5;
                    memory[temp20 + 0x04:temp20 + 0x04 + 0x20] = 0x20;
                    memory[temp20 + 0x24:temp20 + 0x24 + 0x20] = 0x02;
                    memory[temp20 + 0x44:temp20 + 0x44 + 0x20] = 0x4339000000000000000000000000000000000000000000000000000000000000;
                    var1 = temp20 + 0x64;
                    goto label_0641;
                }
            } else {
            label_0EF3:
                var temp21 = memory[0x40:0x60];
                memory[temp21:temp21 + 0x20] = 0x461bcd << 0xe5;
                memory[temp21 + 0x04:temp21 + 0x04 + 0x20] = 0x20;
                memory[temp21 + 0x24:temp21 + 0x24 + 0x20] = 0x02;
                memory[temp21 + 0x44:temp21 + 0x44 + 0x20] = 0x4330000000000000000000000000000000000000000000000000000000000000;
                var0 = temp21 + 0x64;
                goto label_0641;
            }
        } else if (arg1 i> 0x00) { goto label_0F3A; }
        else { goto label_0EF3; }
    }
    
    function func_040F() {
        var var0 = 0x0500;
        var var1 = msg.sender == 0xa6ae57b1da8238cd149bc718c40578e4620b752c;
    
        if (var1) {
            func_0447(var1);
            return;
        } else {
            var1 = msg.sender == 0x26ce7c1976c5eec83ea6ac22d83cb341b08850af;
        
            if (!var1) {
                var1 = msg.sender == 0xb58555fcba6479fced7de1485eb054943a09af7b;
            
                if (var1) { goto label_0483; }
                else { goto label_046B; }
            } else if (var1) {
            label_0483:
            
                if (var1) {
                label_04A1:
                
                    if (var1) {
                    label_04BF:
                    
                        if (var1) {
                        label_04DD:
                        
                            if (var1) {
                            label_04FB:
                            
                            label_1426:
                            
                                if (var1) {
                                label_14CF:
                                    // Error: Could not resolve jump destination!
                                } else {
                                    var temp0 = memory[0x40:0x60];
                                    memory[temp0:temp0 + 0x20] = 0x05709238;
                                    var var2 = 0x05709238;
                                    memory[0x40:0x60] = temp0 + 0xae124720;
                                    memory[temp0 + 0x20:temp0 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
                                    var var3 = temp0;
                                    var var4 = 0x00;
                                    var var5 = 0x1466;
                                    var var6 = var2;
                                    var var7 = 0x01;
                                    var5 = func_1CEF(var6, var7);
                                
                                label_1466:
                                
                                    if (var4 >= var5) { goto label_14CF; }
                                
                                    var5 = 0x1477;
                                    var6 = var4;
                                    var7 = block.number;
                                    var5 = func_1D07(var6, var7);
                                    var temp1 = memory[0x40:0x60];
                                    memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = block.blockHash(var5);
                                    var temp2 = temp1 + 0x40;
                                    var temp3 = memory[0x40:0x60];
                                    memory[temp3:temp3 + 0x20] = temp2 - temp3 - 0x20;
                                    memory[0x40:0x60] = temp2;
                                    var5 = keccak256(memory[temp3 + 0x20:temp3 + 0x20 + memory[temp3:temp3 + 0x20]]) >> 0x00;
                                    var6 = var3;
                                    var7 = var4;
                                
                                    if (var7 < memory[var6:var6 + 0x20]) {
                                        memory[var7 * 0x20 + var6 + 0x20:var7 * 0x20 + var6 + 0x20 + 0x20] = var5;
                                        var5 = var4;
                                        var6 = 0x14c3;
                                        var7 = var5;
                                        var6 = func_1D4D(var7);
                                        var4 = var6;
                                        var5 = 0x1466;
                                        var6 = var2;
                                        var7 = 0x01;
                                        var5 = func_1CEF(var6, var7);
                                        goto label_1466;
                                    } else {
                                        var var8 = 0x14ae;
                                        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                        memory[0x04:0x24] = 0x32;
                                        revert(memory[0x00:0x24]);
                                    }
                                }
                            } else {
                            label_04E3:
                                var1 = msg.sender == 0x41d3ab85aafed2ef9e644cb7d3bbca2fc4d8cac8;
                                goto label_1426;
                            }
                        } else {
                        label_04C5:
                            var1 = msg.sender == 0x52b86a86e4d764e8275391c436127e60340a0e6a;
                        
                            if (var1) { goto label_04FB; }
                            else { goto label_04E3; }
                        }
                    } else {
                    label_04A7:
                        var1 = msg.sender == 0x5b5001c4f80f33ec93b891062ed2e1d0acc05bb6;
                    
                        if (var1) { goto label_04DD; }
                        else { goto label_04C5; }
                    }
                } else {
                label_0489:
                    var1 = msg.sender == 0x4f80b2cd1f550f81581c15f690bdd623f3824c86;
                
                    if (var1) { goto label_04BF; }
                    else { goto label_04A7; }
                }
            } else {
            label_046B:
                var1 = msg.sender == 0xb7ab1de5b259a880c4bb5451bdbe6f80f3798538;
            
                if (var1) { goto label_04A1; }
                else { goto label_0489; }
            }
        }
    }
    
    function func_0447(var arg0) {
        if (!arg0) {
            arg0 = msg.sender == 0xb58555fcba6479fced7de1485eb054943a09af7b;
        
            if (arg0) { goto label_0483; }
            else { goto label_046B; }
        } else if (arg0) {
        label_0483:
        
            if (arg0) {
            label_04A1:
            
                if (arg0) {
                label_04BF:
                
                    if (arg0) {
                    label_04DD:
                    
                        if (arg0) {
                        label_04FB:
                        
                        label_1426:
                        
                            if (arg0) {
                            label_14CF:
                                return;
                            } else {
                                var temp0 = memory[0x40:0x60];
                                memory[temp0:temp0 + 0x20] = 0x05709238;
                                var var0 = 0x05709238;
                                memory[0x40:0x60] = temp0 + 0xae124720;
                                memory[temp0 + 0x20:temp0 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
                                var var1 = temp0;
                                var var2 = 0x00;
                                var var3 = 0x1466;
                                var var4 = var0;
                                var var5 = 0x01;
                                var3 = func_1CEF(var4, var5);
                            
                            label_1466:
                            
                                if (var2 >= var3) { goto label_14CF; }
                            
                                var3 = 0x1477;
                                var4 = var2;
                                var5 = block.number;
                                var3 = func_1D07(var4, var5);
                                var temp1 = memory[0x40:0x60];
                                memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = block.blockHash(var3);
                                var temp2 = temp1 + 0x40;
                                var temp3 = memory[0x40:0x60];
                                memory[temp3:temp3 + 0x20] = temp2 - temp3 - 0x20;
                                memory[0x40:0x60] = temp2;
                                var3 = keccak256(memory[temp3 + 0x20:temp3 + 0x20 + memory[temp3:temp3 + 0x20]]) >> 0x00;
                                var4 = var1;
                                var5 = var2;
                            
                                if (var5 < memory[var4:var4 + 0x20]) {
                                    memory[var5 * 0x20 + var4 + 0x20:var5 * 0x20 + var4 + 0x20 + 0x20] = var3;
                                    var3 = var2;
                                    var4 = 0x14c3;
                                    var5 = var3;
                                    var4 = func_1D4D(var5);
                                    var2 = var4;
                                    var3 = 0x1466;
                                    var4 = var0;
                                    var5 = 0x01;
                                    var3 = func_1CEF(var4, var5);
                                    goto label_1466;
                                } else {
                                    var var6 = 0x14ae;
                                    memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                    memory[0x04:0x24] = 0x32;
                                    revert(memory[0x00:0x24]);
                                }
                            }
                        } else {
                        label_04E3:
                            arg0 = msg.sender == 0x41d3ab85aafed2ef9e644cb7d3bbca2fc4d8cac8;
                            goto label_1426;
                        }
                    } else {
                    label_04C5:
                        arg0 = msg.sender == 0x52b86a86e4d764e8275391c436127e60340a0e6a;
                    
                        if (arg0) { goto label_04FB; }
                        else { goto label_04E3; }
                    }
                } else {
                label_04A7:
                    arg0 = msg.sender == 0x5b5001c4f80f33ec93b891062ed2e1d0acc05bb6;
                
                    if (arg0) { goto label_04DD; }
                    else { goto label_04C5; }
                }
            } else {
            label_0489:
                arg0 = msg.sender == 0x4f80b2cd1f550f81581c15f690bdd623f3824c86;
            
                if (arg0) { goto label_04BF; }
                else { goto label_04A7; }
            }
        } else {
        label_046B:
            arg0 = msg.sender == 0xb7ab1de5b259a880c4bb5451bdbe6f80f3798538;
        
            if (arg0) { goto label_04A1; }
            else { goto label_0489; }
        }
    }
    
    function func_0502(var arg0) {
        var var3 = 0x00;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x3b] = msg.data[0x05:0x40];
        var var0 = memory[temp0 - 0x0c:temp0 - 0x0c + 0x20];
        var var4 = (memory[temp0 + 0x15:temp0 + 0x15 + 0x20] >> 0xe0) << ((memory[temp0 + 0x14:temp0 + 0x14 + 0x20] >> 0xf8) << 0x02);
        var var1 = memory[temp0 + 0x19:temp0 + 0x19 + 0x20];
        var var2 = memory[temp0 + 0x39:temp0 + 0x39 + 0x20];
        var var5 = memory[temp0 + 0x3a:temp0 + 0x3a + 0x20];
        var var6 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        var3 = var6;
    
        if (!arg0) {
            var temp1 = memory[0x40:0x60];
            memory[temp1:temp1 + 0x16] = msg.data[0x40:0x56];
            var6 = memory[temp1:temp1 + 0x20];
            var var7 = memory[temp1 + 0x14:temp1 + 0x14 + 0x20];
            var var8 = var1;
            var var9 = 0x05f7;
            var var10 = var3;
            var var11 = var0;
            var var12 = var4;
            var var13 = !!(var2 & 0xff00000000000000000000000000000000000000000000000000000000000000);
            var var14 = 0x00;
            var var15 = var6;
            var var16 = var7;
            var9 = func_1519(var10, var11, var12, var13, var14, var15, var16);
        
            if (var9 >= var8) { return; }
        
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = 0x461bcd << 0xe5;
            memory[temp2 + 0x04:temp2 + 0x04 + 0x20] = 0x20;
            memory[temp2 + 0x24:temp2 + 0x24 + 0x20] = 0x02;
            memory[temp2 + 0x44:temp2 + 0x44 + 0x20] = 0x4631000000000000000000000000000000000000000000000000000000000000;
            var8 = temp2 + 0x64;
            var temp3 = memory[0x40:0x60];
            revert(memory[temp3:temp3 + var8 - temp3]);
        } else {
            var6 = 0x05a4;
            var7 = 0x04fb;
            var8 = var0;
            var9 = var3;
            var10 = var4;
            var11 = var1;
            var12 = !!(var2 & 0xff00000000000000000000000000000000000000000000000000000000000000);
            var13 = 0x00;
            var7 = func_14D2(var8, var9, var10, var11, var12, var13);
        
        label_04FB:
        
            if (var7) {
            label_14CF:
                // Error: Could not resolve jump destination!
            } else {
                var temp4 = memory[0x40:0x60];
                memory[temp4:temp4 + 0x20] = 0x05709238;
                var8 = 0x05709238;
                memory[0x40:0x60] = temp4 + 0xae124720;
                memory[temp4 + 0x20:temp4 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
                var9 = temp4;
                var10 = 0x00;
                var11 = 0x1466;
                var12 = var8;
                var13 = 0x01;
                var11 = func_1CEF(var12, var13);
            
            label_1466:
            
                if (var10 >= var11) { goto label_14CF; }
            
                var11 = 0x1477;
                var12 = var10;
                var13 = block.number;
                var11 = func_1D07(var12, var13);
                var temp5 = memory[0x40:0x60];
                memory[temp5 + 0x20:temp5 + 0x20 + 0x20] = block.blockHash(var11);
                var temp6 = temp5 + 0x40;
                var temp7 = memory[0x40:0x60];
                memory[temp7:temp7 + 0x20] = temp6 - temp7 - 0x20;
                memory[0x40:0x60] = temp6;
                var11 = keccak256(memory[temp7 + 0x20:temp7 + 0x20 + memory[temp7:temp7 + 0x20]]) >> 0x00;
                var12 = var9;
                var13 = var10;
            
                if (var13 < memory[var12:var12 + 0x20]) {
                    memory[var13 * 0x20 + var12 + 0x20:var13 * 0x20 + var12 + 0x20 + 0x20] = var11;
                    var11 = var10;
                    var12 = 0x14c3;
                    var13 = var11;
                    var12 = func_1D4D(var13);
                    var10 = var12;
                    var11 = 0x1466;
                    var12 = var8;
                    var13 = 0x01;
                    var11 = func_1CEF(var12, var13);
                    goto label_1466;
                } else {
                    var14 = 0x14ae;
                    memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                    memory[0x04:0x24] = 0x32;
                    revert(memory[0x00:0x24]);
                }
            }
        }
    }
    
    function func_0656(var arg0) {
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x4e] = msg.data[0x05:0x53];
        var var0 = memory[temp0 - 0x0c:temp0 - 0x0c + 0x20];
        var var1 = memory[temp0 + 0x08:temp0 + 0x08 + 0x20];
        var var2 = memory[temp0 + 0x28:temp0 + 0x28 + 0x20];
        var var3 = (memory[temp0 + 0x49:temp0 + 0x49 + 0x20] >> 0xe0) << ((memory[temp0 + 0x48:temp0 + 0x48 + 0x20] >> 0xf8) << 0x02);
        var var4 = memory[temp0 + 0x4d:temp0 + 0x4d + 0x20];
    
        if (!arg0) {
            var temp1 = memory[0x40:0x60];
            memory[temp1:temp1 + 0x03] = msg.data[0x53:0x56];
            var var5 = memory[temp1:temp1 + 0x20];
            var var6 = memory[temp1 + 0x01:temp1 + 0x01 + 0x20];
            var var7 = 0x0756;
            var var8 = var3;
            var var9 = 0x074f;
            var var10 = var0;
            var var11 = var1;
            var var12 = var2;
            var var13 = !!(var4 & 0xff00000000000000000000000000000000000000000000000000000000000000);
            var var14 = 0x00;
            var var15 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2000000000000000000000000;
            var var16 = var6;
            var9 = func_1519(var10, var11, var12, var13, var14, var15, var16);
            func_074F(var8, var9);
            return;
        } else {
            var5 = 0x06d9;
            var6 = 0x04fb;
            var7 = var1;
            var8 = var0;
            var9 = var2;
            var10 = var3;
            var11 = !(var4 & 0xff00000000000000000000000000000000000000000000000000000000000000);
            var12 = 0x00;
            var6 = func_14D2(var7, var8, var9, var10, var11, var12);
        
        label_04FB:
        
            if (var6) {
            label_14CF:
                // Error: Could not resolve jump destination!
            } else {
                var temp2 = memory[0x40:0x60];
                memory[temp2:temp2 + 0x20] = 0x05709238;
                var7 = 0x05709238;
                memory[0x40:0x60] = temp2 + 0xae124720;
                memory[temp2 + 0x20:temp2 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
                var8 = temp2;
                var9 = 0x00;
                var10 = 0x1466;
                var11 = var7;
                var12 = 0x01;
                var10 = func_1CEF(var11, var12);
            
            label_1466:
            
                if (var9 >= var10) { goto label_14CF; }
            
                var10 = 0x1477;
                var11 = var9;
                var12 = block.number;
                var10 = func_1D07(var11, var12);
                var temp3 = memory[0x40:0x60];
                memory[temp3 + 0x20:temp3 + 0x20 + 0x20] = block.blockHash(var10);
                var temp4 = temp3 + 0x40;
                var temp5 = memory[0x40:0x60];
                memory[temp5:temp5 + 0x20] = temp4 - temp5 - 0x20;
                memory[0x40:0x60] = temp4;
                var10 = keccak256(memory[temp5 + 0x20:temp5 + 0x20 + memory[temp5:temp5 + 0x20]]) >> 0x00;
                var11 = var8;
                var12 = var9;
            
                if (var12 < memory[var11:var11 + 0x20]) {
                    memory[var12 * 0x20 + var11 + 0x20:var12 * 0x20 + var11 + 0x20 + 0x20] = var10;
                    var10 = var9;
                    var11 = 0x14c3;
                    var12 = var10;
                    var11 = func_1D4D(var12);
                    var9 = var11;
                    var10 = 0x1466;
                    var11 = var7;
                    var12 = 0x01;
                    var10 = func_1CEF(var11, var12);
                    goto label_1466;
                } else {
                    var13 = 0x14ae;
                    memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                    memory[0x04:0x24] = 0x32;
                    revert(memory[0x00:0x24]);
                }
            }
        }
    }
    
    function func_074F(var arg0, var arg1) {
        arg0 = arg1 >= arg0;
    
        if (arg0) {
        label_14CF:
            return;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0x05709238;
            arg1 = 0x05709238;
            memory[0x40:0x60] = temp0 + 0xae124720;
            memory[temp0 + 0x20:temp0 + 0x20 + 0xae124700] = msg.data[msg.data.length:msg.data.length + 0xae124700];
            var var0 = temp0;
            var var1 = 0x00;
            var var2 = 0x1466;
            var var3 = arg1;
            var var4 = 0x01;
            var2 = func_1CEF(var3, var4);
        
        label_1466:
        
            if (var1 >= var2) { goto label_14CF; }
        
            var2 = 0x1477;
            var3 = var1;
            var4 = block.number;
            var2 = func_1D07(var3, var4);
            var temp1 = memory[0x40:0x60];
            memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = block.blockHash(var2);
            var temp2 = temp1 + 0x40;
            var temp3 = memory[0x40:0x60];
            memory[temp3:temp3 + 0x20] = temp2 - temp3 - 0x20;
            memory[0x40:0x60] = temp2;
            var2 = keccak256(memory[temp3 + 0x20:temp3 + 0x20 + memory[temp3:temp3 + 0x20]]) >> 0x00;
            var3 = var0;
            var4 = var1;
        
            if (var4 < memory[var3:var3 + 0x20]) {
                memory[var4 * 0x20 + var3 + 0x20:var4 * 0x20 + var3 + 0x20 + 0x20] = var2;
                var2 = var1;
                var3 = 0x14c3;
                var4 = var2;
                var3 = func_1D4D(var4);
                var1 = var3;
                var2 = 0x1466;
                var3 = arg1;
                var4 = 0x01;
                var2 = func_1CEF(var3, var4);
                goto label_1466;
            } else {
                var var5 = 0x14ae;
                memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                memory[0x04:0x24] = 0x32;
                revert(memory[0x00:0x24]);
            }
        }
    }
    
    function func_14D2(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x14df;
        var var2 = arg1;
        var var3 = arg0;
        var var4 = arg2;
        var1 = func_1987(var2, var3, var4);
    
        if (!var1) { return 0x00; }
    
        if (!arg4) {
            var1 = 0x14f7;
            var2 = 0x00;
            var3 = arg3;
            var4 = arg0;
            var var5 = arg5;
            var1 = func_19F7(var2, var3, var4, var5);
        
        label_14F7:
            return var1;
        } else {
            var1 = 0x14f7;
            var2 = arg3;
            var3 = 0x00;
            var4 = arg0;
            var5 = arg5;
            var1 = func_19F7(var2, var3, var4, var5);
            goto label_14F7;
        }
    }
    
    function func_1519(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5, var arg6) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x60;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = 0x1529;
        var var5 = arg0;
        var4, var5 = func_1A79(var5);
        var3 = var5;
        var2 = var4;
    
        if (!var3) {
            var temp0 = memory[0x40:0x60];
            memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = arg6 & 0xffff000000000000000000000000000000000000000000000000000000000000;
            memory[temp0 + 0x22:temp0 + 0x22 + 0x20] = arg5 & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
            memory[temp0 + 0x36:temp0 + 0x36 + 0x20] = (arg0 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
            var temp1 = temp0 + 0x4a;
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = temp1 - temp2 - 0x20;
            memory[0x40:0x60] = temp1;
            var1 = temp2;
            var4 = 0x00;
            var5 = var4;
            var var6 = 0x164b;
            var var7 = arg1;
            var var8 = arg4;
            var var9 = arg3;
            var var10 = arg2;
            var var11 = var1;
            var6, var7 = func_1AC5(var7, var8, var9, var10, var11);
        
        label_164B:
            var5 = var7;
            var4 = var6;
        
            if (arg3) {
                var7 = var5;
                var6 = 0x1665;
                var6 = func_1D86(var7);
            
            label_1665:
                return var6;
            } else {
                var6 = var4;
                var temp3 = var6;
                var6 = 0x1665;
                var7 = temp3;
                var6 = func_1D86(var7);
                goto label_1665;
            }
        } else {
            var temp4 = memory[0x40:0x60];
            memory[temp4 + 0x20:temp4 + 0x20 + 0x20] = arg6 & 0xffff000000000000000000000000000000000000000000000000000000000000;
            memory[temp4 + 0x22:temp4 + 0x22 + 0x20] = arg5 & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
            memory[temp4 + 0x36:temp4 + 0x36 + 0x20] = var2 & 0xff00000000000000000000000000000000000000000000000000000000000000;
            var temp5 = temp4 + 0x37;
            var temp6 = memory[0x40:0x60];
            memory[temp6:temp6 + 0x20] = temp5 - temp6 - 0x20;
            memory[0x40:0x60] = temp5;
            var1 = temp6;
            var4 = 0x00;
            var5 = var4;
            var6 = 0x164b;
            var7 = arg1;
            var8 = arg4;
            var9 = arg3;
            var10 = arg2;
            var11 = var1;
            var6, var7 = func_1AC5(var7, var8, var9, var10, var11);
            goto label_164B;
        }
    }
    
    function func_1895() {
        var var0 = tx.origin == 0xb58555fcba6479fced7de1485eb054943a09af7b;
    
        if (!var0) {
            var0 = tx.origin == 0xb7ab1de5b259a880c4bb5451bdbe6f80f3798538;
        
            if (var0) { goto label_18E8; }
            else { goto label_18D0; }
        } else if (var0) {
        label_18E8:
        
            if (var0) {
            label_1906:
            
                if (var0) {
                label_1924:
                
                    if (var0) {
                    label_1942:
                    
                        if (var0) {
                        label_1960:
                        
                            if (var0) {
                            label_197E:
                            
                                if (!var0) { revert(memory[0x00:0x00]); }
                            
                            label_0500:
                                return;
                            } else {
                            label_1966:
                            
                                if (tx.origin == 0x41d3ab85aafed2ef9e644cb7d3bbca2fc4d8cac8) { goto label_0500; }
                                else { revert(memory[0x00:0x00]); }
                            }
                        } else {
                        label_1948:
                            var0 = tx.origin == 0x52b86a86e4d764e8275391c436127e60340a0e6a;
                        
                            if (var0) { goto label_197E; }
                            else { goto label_1966; }
                        }
                    } else {
                    label_192A:
                        var0 = tx.origin == 0x26ce7c1976c5eec83ea6ac22d83cb341b08850af;
                    
                        if (var0) { goto label_1960; }
                        else { goto label_1948; }
                    }
                } else {
                label_190C:
                    var0 = tx.origin == 0xa6ae57b1da8238cd149bc718c40578e4620b752c;
                
                    if (var0) { goto label_1942; }
                    else { goto label_192A; }
                }
            } else {
            label_18EE:
                var0 = tx.origin == 0x5b5001c4f80f33ec93b891062ed2e1d0acc05bb6;
            
                if (var0) { goto label_1924; }
                else { goto label_190C; }
            }
        } else {
        label_18D0:
            var0 = tx.origin == 0x4f80b2cd1f550f81581c15f690bdd623f3824c86;
        
            if (var0) { goto label_1906; }
            else { goto label_18EE; }
        }
    }
    
    function func_1987(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = 0x00;
    
        if (arg2) {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = arg2;
            var temp1;
            temp1, memory[temp0:temp0 + 0x20] = address(arg0).call.gas(msg.gas)(memory[temp0:temp0 + 0x44]);
            arg1 = memory[temp0:temp0 + 0x20];
        
        label_19F0:
            return var0;
        } else {
            var0 = 0x01;
            goto label_19F0;
        }
    }
    
    function func_19F7(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var var0 = 0x00;
        var temp0 = memory[0x40:0x60];
        var var1 = temp0;
        memory[var1:var1 + 0x20] = 0x022c0d9f00000000000000000000000000000000000000000000000000000000;
        memory[var1 + 0x04:var1 + 0x04 + 0x20] = arg0;
        memory[var1 + 0x24:var1 + 0x24 + 0x20] = arg1;
        var var2 = arg3;
    
        if (var2 == 0x00) {
            var temp1 = var1;
            memory[temp1 + 0x44:temp1 + 0x44 + 0x20] = 0x3b3cc22af3ae1eac0440bcee416b40;
            memory[temp1 + 0x64:temp1 + 0x64 + 0x20] = 0x80;
            memory[temp1 + 0x84:temp1 + 0x84 + 0x20] = 0x00;
            var temp2;
            temp2, memory[temp1:temp1 + 0x20] = address(arg2).call.gas(msg.gas)(memory[temp1:temp1 + 0xa4]);
            return r0;
        } else {
            memory[var1 + 0x44:var1 + 0x44 + 0x20] = arg3;
            var temp3 = var1;
            memory[temp3 + 0x64:temp3 + 0x64 + 0x20] = 0x80;
            memory[temp3 + 0x84:temp3 + 0x84 + 0x20] = 0x00;
            var temp4;
            temp4, memory[temp3:temp3 + 0x20] = address(arg2).call.gas(msg.gas)(memory[temp3:temp3 + 0xa4]);
            return r0;
        }
    }
    
    function func_1A79(var arg0) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 & 0xffffffffffffffffffffffffffffffffffffffff != 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            r0 = 0x00;
            arg0 = r0;
            return r0, arg0;
        } else {
            r0 = 0x00;
            arg0 = 0x01;
            return r0, arg0;
        }
    }
    
    function func_1AC5(var arg0, var arg1, var arg2, var arg3, var arg4) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg2) {
            var2 = 0x01000276a4;
            var var3 = memory[0x40:0x60];
            memory[var3:var3 + 0x20] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            var var4 = arg1;
        
            if (var4 == 0x00) {
            label_1B2C:
                var temp0 = var3;
                memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = 0x3b3cc22af3ae1eac0440bcee416b40;
                memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = arg2;
                memory[temp0 + 0x44:temp0 + 0x44 + 0x20] = arg3;
                memory[temp0 + 0x64:temp0 + 0x64 + 0x20] = var2;
                memory[temp0 + 0x84:temp0 + 0x84 + 0x20] = 0xa0;
                var temp1 = memory[arg4:arg4 + 0x20];
                var4 = temp1;
                memory[temp0 + 0xa4:temp0 + 0xa4 + 0x20] = var4;
                var var5 = 0x00;
            
                if (var5 >= var4) {
                label_1B84:
                    var temp2 = var3;
                    var temp3;
                    temp3, memory[temp2:temp2 + 0x40] = address(arg0).call.gas(msg.gas)(memory[temp2:temp2 + var4 + 0xc4]);
                
                    if (!temp3) { revert(memory[0x00:0x00]); }
                
                    var temp4 = var3;
                    arg0 = memory[temp4 + 0x20:temp4 + 0x20 + 0x20];
                    r0 = memory[temp4:temp4 + 0x20];
                    return r0, arg0;
                } else {
                label_1B70:
                    var temp5 = var5;
                    memory[temp5 + var3 + 0xc4:temp5 + var3 + 0xc4 + 0x20] = memory[arg4 + temp5 + 0x20:arg4 + temp5 + 0x20 + 0x20];
                    var5 = temp5 + 0x20;
                
                    if (var5 >= var4) { goto label_1B84; }
                    else { goto label_1B70; }
                }
            } else {
            label_1B22:
                memory[var3 + 0x04:var3 + 0x04 + 0x20] = arg1;
                var temp6 = var3;
                memory[temp6 + 0x24:temp6 + 0x24 + 0x20] = arg2;
                memory[temp6 + 0x44:temp6 + 0x44 + 0x20] = arg3;
                memory[temp6 + 0x64:temp6 + 0x64 + 0x20] = var2;
                memory[temp6 + 0x84:temp6 + 0x84 + 0x20] = 0xa0;
                var temp7 = memory[arg4:arg4 + 0x20];
                var4 = temp7;
                memory[temp6 + 0xa4:temp6 + 0xa4 + 0x20] = var4;
                var5 = 0x00;
            
                if (var5 >= var4) { goto label_1B84; }
                else { goto label_1B70; }
            }
        } else {
            var3 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            var2 = var3;
            var3 = memory[0x40:0x60];
            memory[var3:var3 + 0x20] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            var4 = arg1;
        
            if (var4 == 0x00) { goto label_1B2C; }
            else { goto label_1B22; }
        }
    }
    
    function func_1BB6(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i< 0x20) { revert(memory[0x00:0x00]); }
    
        var temp0 = msg.data[arg1:arg1 + 0x20];
        var var1 = temp0;
    
        if (var1 == var1 & 0xffffffffffffffffffffffffffffffffffffffff) { return var1; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_1BEC(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) { return msg.data[arg1:arg1 + 0x20]; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_1C05(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3) {
        r3 = 0x00;
        var var1 = r3;
        var var2 = 0x00;
        var var3 = var2;
    
        if (arg0 - arg1 i< 0x60) { revert(memory[0x00:0x00]); }
    
        var temp0 = arg1;
        r3 = msg.data[temp0:temp0 + 0x20];
        var1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
        var var4 = msg.data[temp0 + 0x40:temp0 + 0x40 + 0x20];
        var var5 = 0xffffffffffffffff;
    
        if (var4 > var5) { revert(memory[0x00:0x00]); }
    
        var temp1 = arg1 + var4;
        var4 = temp1;
    
        if (var4 + 0x1f i>= arg0) { revert(memory[0x00:0x00]); }
    
        var var6 = msg.data[var4:var4 + 0x20];
    
        if (var6 > var5) { revert(memory[0x00:0x00]); }
    
        if (var4 + var6 + 0x20 > arg0) { revert(memory[0x00:0x00]); }
    
        var temp2 = r3;
        r3 = var6;
        r0 = temp2;
        arg0 = var1;
        arg1 = var4 + 0x20;
        return r0, arg0, arg1, r3;
    }
    
    function func_1C85(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = memory[arg0:arg0 + 0x20];
        var var2 = 0x00;
    
        if (var2 >= var1) {
        label_1CA6:
        
            if (var2 <= var1) { return var1 + arg1; }
        
            var temp0 = var1;
            var temp1 = arg1;
            memory[temp1 + temp0:temp1 + temp0 + 0x20] = 0x00;
            return temp0 + temp1;
        } else {
        label_1C95:
            var temp2 = var2;
            memory[temp2 + arg1:temp2 + arg1 + 0x20] = memory[arg0 + temp2 + 0x20:arg0 + temp2 + 0x20 + 0x20];
            var2 = temp2 + 0x20;
        
            if (var2 >= var1) { goto label_1CA6; }
            else { goto label_1C95; }
        }
    }
    
    function func_1CEF(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 <= ~arg0) { return arg1 + arg0; }
    
        var var1 = 0x1d02;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_1D07(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 >= arg0) { return arg1 - arg0; }
    
        var var1 = 0x1d19;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_1D4D(var arg0) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 != 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { return arg0 + 0x01; }
    
        var var1 = 0x1d7f;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_1D86(var arg0) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 != 0x8000000000000000000000000000000000000000000000000000000000000000) { return 0x00 - arg0; }
    
        var var1 = 0x1db8;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
}