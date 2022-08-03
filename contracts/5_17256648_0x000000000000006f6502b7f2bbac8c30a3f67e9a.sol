contract Contract {
    function main() {
        if (msg.data[returndata.length:returndata.length + 0x20] >> 0xe0 != 0xfa461e33) {
            var var0 = msg.data[returndata.length:returndata.length + 0x20] ~ (msg.sender << 0xa0);
            var var1 = byte(var0, returndata.length);
        
            if (var1 == 0xdf) {
                memory[0xcf:0xe0] = code[byte(msg.sender, 0x13) * 0x11 + 0x29df:byte(msg.sender, 0x13) * 0x11 + 0x29df + 0x11];
            
                if (msg.sender == memory[0xc0:0xe0]) {
                label_00D7:
                    memory[MSIZE():MSIZE() + 0x20] = (msg.data[0x05:0x25] >> 0xf0) + 0x25;
                    var var2 = msg.data[0x08:0x28] >> 0xb8;
                    var var3 = msg.data[0x11:0x31] >> 0x60;
                    var var4 = msg.value;
                    var var5 = msg.value;
                    var var6 = byte(var0, 0x03);
                    var var7 = var6;
                
                    if (var7 == 0x0b) {
                        var var8 = 0x0159;
                        var var9 = var2;
                        var var10 = var3;
                        var8 = func_1BC9(var9, var10);
                    
                    label_0159:
                        var4 = var8;
                    
                    label_01E5:
                    
                        if (!var4) { stop(); }
                    
                    label_01ED:
                        var7 = byte(var0, 0x04);
                        var8 = var7;
                    
                        if (var8 == 0x0b) {
                            var9 = 0x0256;
                            var10 = var4;
                            var var11 = var3;
                            var9 = func_1C25(var10, var11);
                        
                        label_0256:
                            var5 = var9;
                        
                        label_02DF:
                            var8 = var2 + tx.gasprice * byte(var0, 0x02) * 0x1388;
                        
                            if (var5 < var8) { stop(); }
                        
                        label_02F6:
                            var9 = address(this).balance;
                            var10 = var6;
                        
                            if (var10 == 0x0b) {
                                var11 = 0x035f;
                                var var12 = var2;
                                var var13 = var3;
                                var11 = func_1C8F(var12, var13);
                            
                            label_035F:
                                var4 = var11;
                            
                            label_03D4:
                                var10 = var7;
                            
                                if (var10 == 0x0b) {
                                    var11 = 0x043d;
                                    var12 = var4;
                                    var13 = var3;
                                    func_1D3E(var12, var13);
                                
                                label_043D:
                                
                                label_04A4:
                                
                                    if (address(this).balance > var9) { stop(); }
                                    else { revert(memory[msg.value:msg.value + msg.value]); }
                                } else if (var10 == 0x01) {
                                    var11 = 0x043d;
                                    var12 = var4;
                                    var13 = var3;
                                    func_0C1A(var12, var13);
                                    goto label_043D;
                                } else if (var10 == 0x13) {
                                    var11 = 0x043d;
                                    var12 = var8;
                                    var13 = var4;
                                    var var14 = var3;
                                    func_1FD0(var12, var13, var14);
                                    goto label_043D;
                                } else if (var10 == 0x08) {
                                    var11 = 0x043d;
                                    var12 = var3;
                                    func_15E2(var12);
                                    goto label_043D;
                                } else if (var10 == 0x15) {
                                    var11 = 0x043d;
                                    var12 = var3;
                                    func_28C7(var12);
                                    goto label_043D;
                                } else if (var10 == 0x0f) {
                                    var11 = 0x043d;
                                    var12 = var4;
                                    var13 = var3;
                                    func_2229(var12, var13);
                                    goto label_043D;
                                } else if (var10 == 0x07) {
                                    var11 = 0x043d;
                                    var12 = var3;
                                    func_10F9(var12);
                                    goto label_043D;
                                } else if (var10 == 0x10) {
                                    var11 = 0x043d;
                                    var12 = var4;
                                    var13 = var3;
                                    func_246D(var12, var13);
                                    goto label_043D;
                                } else if (var10 == 0x09) {
                                    var11 = 0x043d;
                                    var12 = var4;
                                    var13 = var3;
                                    func_199C(var12, var13);
                                    goto label_043D;
                                } else if (var10 == 0x11) {
                                    var11 = 0x043d;
                                    var12 = var4;
                                    var13 = var3;
                                    func_25B0(var12, var13);
                                    goto label_043D;
                                } else if (var10 == 0x0d) {
                                    var11 = 0x04a4;
                                    var12 = var4;
                                    var13 = var3;
                                    func_1B83(var12, var13);
                                    goto label_04A4;
                                } else { goto label_04A4; }
                            } else if (var10 == 0x01) {
                                var11 = 0x035f;
                                var12 = var2;
                                var13 = var3;
                                var11 = func_0B53(var12, var13);
                                goto label_035F;
                            } else if (var10 == 0x13) {
                                var11 = 0x035f;
                                var12 = var4;
                                var13 = var2;
                                var14 = var3;
                                var11 = func_1EEA(var12, var13, var14);
                                goto label_035F;
                            } else if (var10 == 0x08) {
                                var11 = 0x035f;
                                var12 = var2 - memory[0x40:0x60];
                                var13 = var3;
                                var11 = func_1501(var12, var13);
                                goto label_035F;
                            } else if (var10 == 0x15) {
                                var11 = 0x035f;
                                var12 = var2;
                                var11 = func_2828(var12);
                                goto label_035F;
                            } else if (var10 == 0x0f) {
                                var11 = 0x035f;
                                var12 = var2;
                                var13 = var3;
                                var11 = func_21AC(var12, var13);
                                goto label_035F;
                            } else if (var10 == 0x07) {
                                var11 = 0x035f;
                                var12 = var2 - memory[0x40:0x60];
                                var13 = var3;
                                var11 = func_0FCF(var12, var13);
                                goto label_035F;
                            } else if (var10 == 0x10) {
                                var11 = 0x035f;
                                var12 = var2;
                                var13 = var3;
                                var11 = func_23D0(var12, var13);
                                goto label_035F;
                            } else if (var10 == 0x09) {
                                var11 = 0x035f;
                                var12 = var2;
                                var13 = var3;
                                var11 = func_1899(var12, var13);
                                goto label_035F;
                            } else if (var10 == 0x11) {
                                var11 = 0x035f;
                                var12 = var2;
                                var13 = var3;
                                var11 = func_255E(var12, var13);
                                goto label_035F;
                            } else if (var10 == 0x0d) {
                                var11 = 0x03d1;
                                var12 = var2;
                                var11 = func_1B51(var12);
                                var4 = var11;
                                goto label_03D4;
                            } else { goto label_03D4; }
                        } else if (var8 == 0x01) {
                            var9 = 0x0256;
                            var10 = var4;
                            var11 = var3;
                            var9 = func_0AB9(var10, var11);
                            goto label_0256;
                        } else if (var8 == 0x13) {
                            var9 = 0x0256;
                            var10 = var4;
                            var11 = var3;
                            var9 = func_1E67(var10, var11);
                            goto label_0256;
                        } else if (var8 == 0x08) {
                            var9 = 0x027a;
                            var10 = var4;
                            var9 = func_13AD(var10);
                        
                        label_027A:
                            var temp0 = tx.gasprice * ((msg.data[memory[0xe0:0x0100] + CHAINID():memory[0xe0:0x0100] + CHAINID() + 0x20] >> 0xe8) ~ 0x00);
                            var5 = var9 - temp0;
                            memory[0x80:0xa0] = temp0;
                            goto label_02DF;
                        } else if (var8 == 0x15) {
                            var9 = 0x0256;
                            var10 = var4;
                            var9 = func_2703(var10);
                            goto label_0256;
                        } else if (var8 == 0x0f) {
                            var9 = 0x0256;
                            var10 = var4;
                            var11 = var3;
                            var9 = func_2117(var10, var11);
                            goto label_0256;
                        } else if (var8 == 0x07) {
                            var9 = 0x027a;
                            var10 = var4;
                            var9 = func_0E5D(var10);
                            goto label_027A;
                        } else if (var8 == 0x10) {
                            var9 = 0x0256;
                            var10 = var4;
                            var11 = var3;
                            var9 = func_2326(var10, var11);
                            goto label_0256;
                        } else if (var8 == 0x09) {
                            var9 = 0x0256;
                            var10 = var4;
                            var9 = func_17D0(var10);
                            goto label_0256;
                        } else if (var8 == 0x11) {
                            var9 = 0x0256;
                            var10 = var4;
                            var11 = var3;
                            var9 = func_2526(var10, var11);
                            goto label_0256;
                        } else if (var8 == 0x0d) {
                            var9 = 0x02dc;
                            var10 = var4;
                            var11 = var3;
                            var9 = func_1B0F(var10, var11);
                            var5 = var9;
                            var8 = var2 + tx.gasprice * byte(var0, 0x02) * 0x1388;
                        
                            if (var5 >= var8) { goto label_02F6; }
                            else { stop(); }
                        } else { stop(); }
                    } else if (var7 == 0x01) {
                        var8 = 0x0159;
                        var9 = var2;
                        var10 = var3;
                        var8 = func_0A20(var9, var10);
                        goto label_0159;
                    } else if (var7 == 0x13) {
                        var8 = 0x0159;
                        var9 = var2;
                        var10 = var3;
                        var8 = func_1DF4(var9, var10);
                        goto label_0159;
                    } else if (var7 == 0x08) {
                        var8 = 0x017d;
                        var9 = var2;
                        var8, var9 = func_1281(var9);
                    
                    label_017D:
                        var temp1 = (msg.data[0x26:0x46] >> 0xe8) * tx.gasprice;
                        memory[0x40:0x60] = temp1;
                        var2 = temp1 + var9;
                        var4 = var8;
                        goto label_01E5;
                    } else if (var7 == 0x15) {
                        var8 = 0x019e;
                        var9 = var2;
                        var10 = var3;
                        var8, var9 = func_2604(var9, var10);
                        var2 = var9;
                        var4 = var8;
                        goto label_01E5;
                    } else if (var7 == 0x0f) {
                        var8 = 0x0159;
                        var9 = var2;
                        var10 = var3;
                        var8 = func_20AE(var9, var10);
                        goto label_0159;
                    } else if (var7 == 0x07) {
                        var8 = 0x017d;
                        var9 = var2;
                        var8, var9 = func_0D19(var9);
                        goto label_017D;
                    } else if (var7 == 0x10) {
                        var8 = 0x0159;
                        var9 = var2;
                        var10 = var3;
                        var8 = func_22AD(var9, var10);
                        goto label_0159;
                    } else if (var7 == 0x09) {
                        var8 = 0x0159;
                        var9 = var2;
                        var10 = var3;
                        var8 = func_1719(var9, var10);
                        goto label_0159;
                    } else if (var7 == 0x11) {
                        var8 = 0x0159;
                        var9 = var2;
                        var10 = var3;
                        var8 = func_2503(var9, var10);
                        goto label_0159;
                    } else if (var7 == 0x0d) {
                        var8 = 0x01e2;
                        var9 = var2;
                        var10 = var3;
                        var8 = func_1AD2(var9, var10);
                        var4 = var8;
                    
                        if (var4) { goto label_01ED; }
                        else { stop(); }
                    } else { stop(); }
                } else {
                    var2 = 0x00d7;
                    func_09B0();
                    goto label_00D7;
                }
            } else if (var1 == 0xe3) {
                var2 = msg.sender ~ msg.data[msg.data.length - 0x20:msg.data.length - 0x20 + 0x20];
            
                if ((block.blockHash(block.number - CHAINID()) ~ var2) & 0xffffffff) { stop(); }
            
                memory[0xcf:0xe0] = code[byte(msg.sender, 0x13) * 0x11 + 0x29df:byte(msg.sender, 0x13) * 0x11 + 0x29df + 0x11];
            
                if (msg.sender == memory[0xc0:0xe0]) {
                label_04ED:
                    memory[MSIZE():MSIZE() + 0x20] = (msg.data[0x05:0x25] >> 0xf0) + 0x25;
                    var3 = msg.data[0x08:0x28] >> 0xb8;
                    var4 = msg.data[0x11:0x31] >> 0x60;
                    var5 = msg.value;
                    var6 = address(this).balance;
                    var7 = byte(var0, 0x03);
                    var8 = var7;
                
                    if (var8 == 0x0b) {
                        var9 = 0x056f;
                        var10 = var3;
                        var11 = var4;
                        var9 = func_1BC9(var10, var11);
                        var9 = 0x057a;
                        var10 = var3;
                        var11 = var4;
                        var9 = func_1C8F(var10, var11);
                    
                    label_057A:
                        var5 = var9;
                        var8 = byte(var0, 0x04);
                        var9 = var8;
                    
                        if (var9 == 0x0b) {
                        label_065F:
                            var10 = 0x0669;
                            var11 = var5;
                            var12 = var4;
                            var10 = func_1C25(var11, var12);
                            var10 = 0x0674;
                            var11 = var5;
                            var12 = var4;
                            func_1D3E(var11, var12);
                        
                        label_0674:
                        
                        label_0709:
                            var9 = address(this).balance - var6 - tx.gasprice * byte(var0, 0x02) * 0x1388;
                        
                            if (var9 i<= msg.value) { revert(memory[msg.value:msg.value + msg.value]); }
                        
                            var10 = 0xffff;
                            var11 = (var2 >> 0x20) & var10;
                        
                            if (!var11) { stop(); }
                        
                            memory[msg.value:msg.value + msg.value] = address(block.coinbase).call.gas(msg.gas).value((var9 * var11) / var10)(memory[msg.value:msg.value + msg.value]);
                            stop();
                        } else {
                        label_060C:
                        
                            if (var9 == 0x01) {
                                var10 = 0x0674;
                                var11 = var5;
                                var12 = var4;
                                func_0C1A(var11, var12);
                                goto label_0674;
                            } else if (var9 == 0x13) {
                                var10 = 0x0674;
                                var11 = CHAINID();
                                var12 = var5;
                                var13 = var4;
                                func_1FD0(var11, var12, var13);
                                goto label_0674;
                            } else if (var9 == 0x08) {
                                memory[0x80:0xa0] = tx.gasprice * ((msg.data[memory[0xe0:0x0100] + CHAINID():memory[0xe0:0x0100] + CHAINID() + 0x20] >> 0xe8) ~ 0x00);
                                memory[0xa0:0xc0] = var5;
                                var10 = 0x0674;
                                var11 = var4;
                                func_15E2(var11);
                                goto label_0674;
                            } else if (var9 == 0x15) {
                                memory[0x80:0xa0] = var5;
                                var10 = 0x0674;
                                var11 = var4;
                                func_28C7(var11);
                                goto label_0674;
                            } else if (var9 == 0x0f) {
                                var10 = 0x0674;
                                var11 = var5;
                                var12 = var4;
                                func_2229(var11, var12);
                                goto label_0674;
                            } else if (var9 == 0x07) {
                                memory[0x80:0xa0] = tx.gasprice * ((msg.data[memory[0xe0:0x0100] + CHAINID():memory[0xe0:0x0100] + CHAINID() + 0x20] >> 0xe8) ~ 0x00);
                                memory[0xa0:0xc0] = var5;
                                var10 = 0x0674;
                                var11 = var4;
                                func_10F9(var11);
                                goto label_0674;
                            } else if (var9 == 0x10) {
                                var10 = 0x0674;
                                var11 = var5;
                                var12 = var4;
                                func_246D(var11, var12);
                                goto label_0674;
                            } else if (var9 == 0x09) {
                                var10 = 0x0674;
                                var11 = var5;
                                var12 = var4;
                                func_199C(var11, var12);
                                goto label_0674;
                            } else if (var9 == 0x11) {
                                var10 = 0x0674;
                                var11 = var5;
                                var12 = var4;
                                func_25B0(var11, var12);
                                goto label_0674;
                            } else if (var9 == 0x0d) {
                                var10 = 0x0709;
                                var11 = var5;
                                var12 = var4;
                                func_1B83(var11, var12);
                                goto label_0709;
                            } else { revert(memory[msg.value:msg.value + msg.value]); }
                        }
                    } else if (var8 == 0x01) {
                        var9 = 0x057a;
                        var10 = var3;
                        var11 = var4;
                        var9 = func_0B53(var10, var11);
                        goto label_057A;
                    } else if (var8 == 0x13) {
                        var9 = 0x057a;
                        var10 = CHAINID();
                        var11 = var3;
                        var12 = var4;
                        var9 = func_1EEA(var10, var11, var12);
                        goto label_057A;
                    } else if (var8 == 0x08) {
                        memory[0x40:0x60] = (msg.data[0x26:0x46] >> 0xe8) * tx.gasprice;
                        var9 = 0x057a;
                        var10 = var3;
                        var11 = var4;
                        var9 = func_1501(var10, var11);
                        goto label_057A;
                    } else if (var8 == 0x15) {
                        var9 = 0x057a;
                        var10 = var3;
                        var9 = func_2828(var10);
                        goto label_057A;
                    } else if (var8 == 0x0f) {
                        var9 = 0x057a;
                        var10 = var3;
                        var11 = var4;
                        var9 = func_21AC(var10, var11);
                        goto label_057A;
                    } else if (var8 == 0x07) {
                        memory[0x40:0x60] = (msg.data[0x26:0x46] >> 0xe8) * tx.gasprice;
                        var9 = 0x057a;
                        var10 = var3;
                        var11 = var4;
                        var9 = func_0FCF(var10, var11);
                        goto label_057A;
                    } else if (var8 == 0x10) {
                        var9 = 0x057a;
                        var10 = var3;
                        var11 = var4;
                        var9 = func_23D0(var10, var11);
                        goto label_057A;
                    } else if (var8 == 0x09) {
                        var9 = 0x057a;
                        var10 = var3;
                        var11 = var4;
                        var9 = func_1899(var10, var11);
                        goto label_057A;
                    } else if (var8 == 0x11) {
                        var9 = 0x057a;
                        var10 = var3;
                        var11 = var4;
                        var9 = func_255E(var10, var11);
                        goto label_057A;
                    } else if (var8 == 0x0d) {
                        var9 = 0x05fa;
                        var10 = var3;
                        var9 = func_1B51(var10);
                        var5 = var9;
                        var8 = byte(var0, 0x04);
                        var9 = var8;
                    
                        if (var9 == 0x0b) { goto label_065F; }
                        else { goto label_060C; }
                    } else { stop(); }
                } else {
                    var3 = 0x04ed;
                    func_09B0();
                    goto label_04ED;
                }
            } else if (var1 == 0xa3) {
                if (msg.sender != 0xc4f28a63a3f5567642188d9c3a10181d) { stop(); }
            
                var2 = address(this).balance;
                var3 = msg.data.length - CHAINID() / 0x03;
                var4 = CHAINID();
                var5 = (CHAINID() << 0x20) - CHAINID() << 0x30;
                var6 = returndata.length;
            
                if (var6 >= var3) {
                label_07A8:
                    var6 = address(this).balance;
                
                    if (msg.value == var2 - var6) { stop(); }
                    else { revert(memory[returndata.length:returndata.length + returndata.length]); }
                } else {
                label_0777:
                    var temp2 = var4;
                    var temp3 = msg.data[temp2:temp2 + 0x20];
                    memory[0x0f:0x20] = code[byte(temp3, 0x02) * 0x11 + 0x29df:byte(temp3, 0x02) * 0x11 + 0x29df + 0x11];
                    memory[returndata.length:returndata.length + returndata.length] = address(memory[returndata.length:returndata.length + 0x20]).call.gas(msg.gas).value((temp3 >> 0xc0) & var5)(memory[returndata.length:returndata.length + returndata.length]);
                    var4 = temp2 + 0x03;
                    var6 = CHAINID() + var6;
                
                    if (var6 >= var3) { goto label_07A8; }
                    else { goto label_0777; }
                }
            } else if (var1 == 0x65) {
                if (msg.sender != 0x7f21ef9b651bf9875ac139425739343c) { stop(); }
            
                var2 = byte(msg.data[CHAINID():CHAINID() + 0x20], msg.value);
                var3 = byte(msg.data[0x02:0x22], msg.value);
                var4 = var2 * 0x14 + 0x04;
                memory[msg.value:msg.value + 0x20] = 0x095ea7b3;
            
                if (!byte(msg.data[0x03:0x23], msg.value)) {
                    var5 = msg.value;
                
                    if (var5 >= var2) { stop(); }
                
                label_0803:
                    var temp4 = var5;
                    memory[0x20:0x40] = (msg.data[temp4 * 0x14 + 0x04:temp4 * 0x14 + 0x04 + 0x20] >> 0x60) + temp4 * 0x20 ~ msg.sender ~ address(this);
                    var6 = msg.value;
                
                    if (var6 >= var3) {
                    label_0840:
                        var5 = CHAINID() + var5;
                    
                        if (var5 >= var2) { stop(); }
                        else { goto label_0803; }
                    } else {
                    label_0824:
                        var temp5 = var6;
                        memory[msg.value:msg.value + msg.value] = address(msg.data[temp5 * 0x14 + var4:temp5 * 0x14 + var4 + 0x20] >> 0x60).call.gas(msg.gas).value(msg.value)(memory[0x1c:0x60]);
                        var6 = CHAINID() + temp5;
                    
                        if (var6 >= var3) { goto label_0840; }
                        else { goto label_0824; }
                    }
                } else {
                    memory[0x40:0x60] = msg.value - CHAINID();
                    var5 = msg.value;
                
                    if (var5 >= var2) { stop(); }
                    else { goto label_0803; }
                }
            } else if (var1 == 0x71) {
                if (msg.sender != 0xa2d833027198212da6f17d784a5b5790) { stop(); }
            
                var2 = msg.data[0x0a:0x2a] >> 0x60;
            
                if (var2) {
                    memory[returndata.length:returndata.length + returndata.length] = address(var2).call.gas(msg.gas).value(msg.data[0x01:0x21] >> 0xb8)(memory[returndata.length:returndata.length + returndata.length]);
                    stop();
                } else {
                    var2 = msg.sender;
                    memory[returndata.length:returndata.length + returndata.length] = address(var2).call.gas(msg.gas).value(msg.data[0x01:0x21] >> 0xb8)(memory[returndata.length:returndata.length + returndata.length]);
                    stop();
                }
            } else if (var1 == 0x67) {
                if (msg.sender != 0x7f21ef9b651bf9875ac139425739343c) { stop(); }
            
                memory[MSIZE():MSIZE() + 0x20] = 0xa9059cbb;
                memory[MSIZE():MSIZE() + 0x20] = msg.data[0x15:0x35] >> 0x60;
                memory[MSIZE():MSIZE() + 0x20] = msg.data[0x29:0x49];
                var temp6;
                temp6, memory[0x60:0x80] = address(msg.data[CHAINID():CHAINID() + 0x20] >> 0x60).call.gas(msg.gas).value(returndata.length)(memory[0x1c:0x60]);
            
                if (!temp6) {
                label_08E8:
                
                    if (memory[0x60:0x80]) { stop(); }
                    else { revert(memory[msg.value:msg.value + msg.value]); }
                } else {
                    var2 = returndata.length;
                
                    if (var2 == 0x20) {
                    label_08E6:
                        goto label_08E8;
                    } else if (!var2) {
                        memory[0x60:0x80] = CHAINID();
                        goto label_08E8;
                    } else {
                        memory[0x60:0x80] = msg.value;
                        goto label_08E6;
                    }
                }
            } else if (var1 == 0x6b) {
                if (msg.sender != 0x7f21ef9b651bf9875ac139425739343c) { stop(); }
            
                var2 = address(this).balance;
                var3 = 0x15;
                var temp7 = msg.data.length - var3;
                var4 = temp7;
                memory[returndata.length:returndata.length + var4] = msg.data[var3:var3 + var4];
                var5 = returndata.length;
                var temp8;
                temp8, memory[returndata.length:returndata.length + returndata.length] = address(msg.data[CHAINID():CHAINID() + 0x20] >> 0x60).delegatecall.gas(msg.gas)(memory[returndata.length:returndata.length + var4]);
            
                if (address(this).balance >= var2) {
                    var temp9 = returndata.length;
                    var temp10 = var5;
                    memory[temp10:temp10 + temp9] = returndata[temp10:temp10 + temp9];
                
                    if (var6) { return memory[var5:var5 + returndata.length]; }
                    else { revert(memory[var5:var5 + returndata.length]); }
                } else {
                    var temp11 = var5;
                    revert(memory[temp11:temp11 + temp11]);
                }
            } else if (var1 == 0x3b) {
                if (msg.sender != 0x7f21ef9b651bf9875ac139425739343c) { stop(); }
            
                memory[MSIZE():MSIZE() + 0x20] = 0x2e1a7d4d;
                memory[MSIZE():MSIZE() + 0x20] = msg.data[CHAINID():CHAINID() + 0x20] >> 0xb0;
                var temp12 = MSIZE();
                var2 = temp12;
                memory[var2:var2 + 0x20] = code[0x299f:0x29bf];
                memory[returndata.length:returndata.length + returndata.length] = address(memory[var2:var2 + 0x20]).call.gas(msg.gas).value(returndata.length)(memory[0x1c:0x40]);
                stop();
            } else if (var1 == 0x87) {
                if (msg.sender == 0x3452954838762313786992245132387393331546) { selfdestruct(0x3452954838762313786992245132387393331546); }
                else { stop(); }
            } else { stop(); }
        } else {
            var0 = storage[msg.sender];
        
            if (!var0) { stop(); }
        
            if (returndata.length - msg.data[byte(var0, returndata.length):byte(var0, returndata.length) + 0x20] >= msg.data[0x84:0xa4]) {
                var temp13 = var0;
                var1 = msg.data[byte(temp13, CHAINID()):byte(temp13, CHAINID()) + 0x20];
            
                if (!byte(temp13, 0x02)) {
                    memory[returndata.length:returndata.length + 0x20] = 0xa9059cbb;
                    memory[MSIZE():MSIZE() + 0x20] = msg.sender;
                    memory[MSIZE():MSIZE() + 0x20] = var1;
                    memory[returndata.length:returndata.length + returndata.length] = address(var0).call.gas(msg.gas).value(returndata.length)(memory[0x1c:0x60]);
                    stop();
                } else {
                    var temp14 = var1;
                    var temp15 = var0;
                    memory[returndata.length:returndata.length + returndata.length] = address(temp15).call.gas(msg.gas).value(temp14)(memory[msg.value:msg.value + msg.value]);
                    memory[returndata.length:returndata.length + 0x20] = 0xa9059cbb;
                    memory[MSIZE():MSIZE() + 0x20] = msg.sender;
                    memory[MSIZE():MSIZE() + 0x20] = temp14;
                    memory[returndata.length:returndata.length + returndata.length] = address(temp15).call.gas(msg.gas).value(returndata.length)(memory[0x1c:0x60]);
                    stop();
                }
            } else {
                memory[returndata.length:returndata.length + 0x20] = returndata.length - CHAINID();
                revert(memory[returndata.length:returndata.length + 0x20]);
            }
        }
    }
    
    function func_09B0() {
        if (msg.sender == 0x651743201537d4ddb296afc886d7) { return; }
        else { stop(); }
    }
    
    function func_09C9(var arg0, var arg1, var arg2) {
        memory[0x0100:0x0120] = 0x095ea7b3;
        memory[0x0120:0x0140] = arg2;
        memory[0x0140:0x0160] = arg1;
        var temp0;
        temp0, memory[msg.value:msg.value + msg.value] = address(arg0).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0160]);
    
        if (temp0) {
        label_0A1B:
            return;
        } else {
            memory[0x0140:0x0160] = msg.value;
            var temp1;
            temp1, memory[msg.value:msg.value + msg.value] = address(arg0).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0160]);
        
            if (!temp1) { revert(memory[msg.value:msg.value + msg.value]); }
        
            memory[0x0140:0x0160] = arg1;
            var temp2;
            temp2, memory[msg.value:msg.value + msg.value] = address(arg0).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0160]);
        
            if (temp2) { goto label_0A1B; }
            else { revert(memory[msg.value:msg.value + msg.value]); }
        }
    }
    
    function func_0A20(var arg0, var arg1) returns (var r0) {
        var var0 = msg.value;
        var var1 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c;
        memory[MSIZE():MSIZE() + 0x20] = 0x1e1401f8;
        memory[MSIZE():MSIZE() + 0x20] = code[0x297f:0x299f];
        memory[MSIZE():MSIZE() + 0x20] = var1;
        memory[MSIZE():MSIZE() + 0x20] = arg0;
        var temp0;
        temp0, memory[0x0160:0x0180] = address(msg.data[0x2f:0x4f] ~ 0x4c9a2bd661d640da3634a4988a9bd2bc0f18e5a9).staticcall.gas(msg.gas)(memory[0x011c:0x0180]);
    
        if (!temp0) { stop(); }
    
        var var2 = byte(msg.data[0x26:0x46], msg.value);
        var var3 = var2;
    
        if (!var3) {
            memory[0x0120:0x0140] = var1;
            memory[0x0140:0x0160] = arg1;
            var temp1;
            temp1, memory[msg.value:msg.value + 0x20] = address(msg.data[0x43:0x63]).staticcall.gas(msg.gas)(memory[0x011c:0x0180]);
        
            if (!temp1) { stop(); }
        
            var temp2 = memory[msg.value:msg.value + 0x20];
            memory[0x40:0x60] = var1;
            return temp2;
        } else {
            var0 = memory[0x0160:0x0180];
            memory[0x40:0x60] = var1;
            return var0;
        }
    }
    
    function func_0AB9(var arg0, var arg1) returns (var r0) {
        memory[0x0100:0x0120] = 0x1e1401f8;
        memory[0x0160:0x0180] = arg0;
        var var0 = msg.value;
        var var1 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c;
    
        if (byte(msg.data[memory[0xe0:0x0100]:memory[0xe0:0x0100] + 0x20], CHAINID())) {
        label_0B0B:
            memory[0x0120:0x0140] = var1;
            memory[0x0140:0x0160] = code[0x297f:0x299f];
            memory[msg.value:msg.value + 0x20] = msg.value;
            var temp0;
            temp0, memory[msg.value:msg.value + 0x20] = address(msg.data[memory[0xe0:0x0100] + 0x0a:memory[0xe0:0x0100] + 0x0a + 0x20] ~ 0x4c9a2bd661d640da3634a4988a9bd2bc0f18e5a9).staticcall.gas(msg.gas)(memory[0x011c:0x0180]);
        
            if (temp0) { return memory[msg.value:msg.value + 0x20]; }
            else { stop(); }
        } else {
            memory[0x0120:0x0140] = arg1;
            memory[0x0140:0x0160] = var1;
            var temp1;
            temp1, memory[0x0160:0x0180] = address(msg.data[memory[0xe0:0x0100] + 0x1e:memory[0xe0:0x0100] + 0x1e + 0x20]).staticcall.gas(msg.gas)(memory[0x011c:0x0180]);
        
            if (temp1) { goto label_0B0B; }
            else { stop(); }
        }
    }
    
    function func_0B53(var arg0, var arg1) returns (var r0) {
        memory[0x0100:0x0120] = 0xb77d239b;
        memory[0x0120:0x0140] = 0xc0;
        memory[0x0140:0x0160] = arg0;
        memory[0x0160:0x0180] = CHAINID();
        memory[0x0180:0x01a0] = msg.data[0x78:0x98] >> 0x60;
        var temp0 = msg.value;
        var var0 = temp0;
        var var1 = byte(msg.data[0x26:0x46], var0);
    
        if (!byte(msg.data[0x25:0x45], var0)) {
            memory[0x01a0:0x01e0] = code[code.length:code.length + 0x40];
            memory[0x01e0:0x0200] = 0x05 - var1;
            memory[0x0200:0x0220] = code[0x297f:0x299f];
            memory[0x0220:0x0240] = 0xb1cd6e4153b2a390cf00a6556b0fc1458c4a5533;
            memory[0x0240:0x0260] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c;
        
            if (var1) {
            label_0BEC:
                memory[msg.value:msg.value + 0x20] = msg.value;
                var temp1;
                temp1, memory[msg.value:msg.value + 0x20] = address(msg.data[0x1b:0x3b] ~ 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0).call.gas(msg.gas).value(arg0)(memory[0x011c:0x02a0]);
            
                if (!temp1) { stop(); }
            
            label_0B49:
                return memory[msg.value:msg.value + 0x20];
            } else {
            label_0BDD:
                memory[0x0260:0x0280] = msg.data[0x63:0x83] >> 0x60;
                memory[0x0280:0x02a0] = arg1;
                memory[msg.value:msg.value + 0x20] = msg.value;
                var temp2;
                temp2, memory[msg.value:msg.value + 0x20] = address(msg.data[0x1b:0x3b] ~ 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0).call.gas(msg.gas).value(arg0)(memory[0x011c:0x02a0]);
            
                if (temp2) { goto label_0B49; }
                else { stop(); }
            }
        } else {
            memory[0x0180:0x01a0] = address(this);
            memory[0x01a0:0x01e0] = code[code.length:code.length + 0x40];
            memory[0x01e0:0x0200] = 0x05 - var1;
            memory[0x0200:0x0220] = code[0x297f:0x299f];
            memory[0x0220:0x0240] = 0xb1cd6e4153b2a390cf00a6556b0fc1458c4a5533;
            memory[0x0240:0x0260] = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c;
        
            if (var1) { goto label_0BEC; }
            else { goto label_0BDD; }
        }
    }
    
    function func_0C1A(var arg0, var arg1) {
        var var0 = (msg.data[memory[0xe0:0x0100] + 0x02:memory[0xe0:0x0100] + 0x02 + 0x20] >> 0x60) ~ 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0;
        var var1 = byte(msg.data[memory[0xe0:0x0100]:memory[0xe0:0x0100] + 0x20], CHAINID());
    
        if (byte(msg.data[0x07:0x27], msg.value)) {
        label_0C54:
            memory[0x0100:0x0120] = 0xb77d239b;
            memory[0x0120:0x0140] = 0xc0;
            memory[0x0140:0x0160] = arg0;
            memory[0x0160:0x0180] = CHAINID();
            memory[0x0180:0x01a0] = address(this);
            memory[0x01a0:0x01e0] = code[code.length:code.length + 0x40];
            var temp0 = var1;
            memory[0x01e0:0x0200] = 0x05 - temp0;
            var var2 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c;
            memory[0x0200:0x0220] = arg1;
            memory[0x0220:0x0240] = msg.data[memory[0xe0:0x0100] + 0x3e:memory[0xe0:0x0100] + 0x3e + 0x20] >> 0x60;
            memory[0x0240:0x0260] = var2;
            memory[0x0260:0x0280] = 0xb1cd6e4153b2a390cf00a6556b0fc1458c4a5533;
            memory[0x0280:0x02a0] = code[0x297f:0x299f];
        
            if (!temp0) {
                var temp1;
                temp1, memory[msg.value:msg.value + msg.value] = address(var0).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x02a0]);
            
                if (!temp1) { revert(memory[msg.value:msg.value + msg.value]); }
            
            label_0D12:
                return;
            } else {
                memory[0x0200:0x0220] = var2;
                memory[0x0220:0x0240] = 0xb1cd6e4153b2a390cf00a6556b0fc1458c4a5533;
                memory[0x0240:0x0260] = code[0x297f:0x299f];
                var temp2;
                temp2, memory[msg.value:msg.value + msg.value] = address(var0).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x02a0]);
            
                if (temp2) { goto label_0D12; }
                else { revert(memory[msg.value:msg.value + msg.value]); }
            }
        } else {
            var2 = 0x0c54;
            var var3 = arg1;
            var var4 = arg0;
            var var5 = var0;
            func_09C9(var3, var4, var5);
            goto label_0C54;
        }
    }
    
    function func_0D19(var arg0) returns (var r0, var arg0) {
        var var0 = msg.value;
        var var1 = arg0;
    
        if (block.timestamp >= msg.data[0x71:0x91] >> 0xe0) { stop(); }
    
        var var2 = 0x61935cbdd02287b511119ddb11aeb42f1593b7ef;
        var temp0 = msg.data[0x61:0x81] >> 0x80;
        var var3 = temp0;
        memory[MSIZE():MSIZE() + 0x20] = 0x288cdc91;
        memory[MSIZE():MSIZE() + 0x20] = msg.data[0x97:0xb7];
        memory[msg.value:msg.value + 0x20] = var3;
        memory[msg.value:msg.value + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        var var4 = var3 - memory[msg.value:msg.value + 0x20];
    
        if (arg0 <= var4) {
        label_0D84:
            var var5 = msg.data[0x29:0x49] >> 0x60;
            memory[MSIZE():MSIZE() + 0x20] = 0xd9bfa73e;
            memory[MSIZE():MSIZE() + 0x20] = var5;
            memory[0x0160:0x0180] = address(var2).staticcall.gas(msg.gas)(memory[0x015c:0x01a0]);
        
            if (memory[0x0160:0x0180] > msg.data[0x75:0x95] - 0x1000) { stop(); }
        
            memory[0x0100:0x0120] = 0x2ac12622;
            memory[msg.value:msg.value + 0x20] = CHAINID();
            memory[msg.value:msg.value + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        
            if (memory[msg.value:msg.value + 0x20]) { stop(); }
        
            var var6 = msg.data[0x11:0x31] >> 0x60;
            var0 = (var1 * (msg.data[0x51:0x71] >> 0x80)) / var3;
            memory[0x0100:0x0120] = 0x70a08231;
            memory[0x0120:0x0140] = var5;
            var temp1;
            temp1, memory[msg.value:msg.value + 0x20] = address(var6).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        
            if (!temp1) { stop(); }
        
            if (memory[msg.value:msg.value + 0x20] < var0) { stop(); }
        
            memory[0x0100:0x0120] = 0xdd62ed3e;
            memory[0x0140:0x0160] = 0x95e6f48254609a6ee006f7d493c8e5fb97094cef;
            memory[msg.value:msg.value + 0x20] = msg.value;
            var temp2;
            temp2, memory[msg.value:msg.value + 0x20] = address(var6).staticcall.gas(msg.gas)(memory[0x011c:0x0160]);
        
            if (!temp2) { stop(); }
        
            if (memory[msg.value:msg.value + 0x20] < var0) { stop(); }
        
            arg0 = var1;
            r0 = var0;
            return r0, arg0;
        } else {
            var temp3 = arg0;
        
            if (temp3 - (byte(msg.data[0x25:0x45], msg.value) * temp3) / 0xff > var4) { stop(); }
        
            var1 = var4;
            goto label_0D84;
        }
    }
    
    function func_0E5D(var arg0) returns (var r0) {
        var var0 = msg.value;
    
        if (block.timestamp >= msg.data[memory[0xe0:0x0100] + 0x4c:memory[0xe0:0x0100] + 0x4c + 0x20] >> 0xe0) { stop(); }
    
        var var1 = 0x61935cbdd02287b511119ddb11aeb42f1593b7ef;
        var temp0 = msg.data[memory[0xe0:0x0100] + 0x3c:memory[0xe0:0x0100] + 0x3c + 0x20] >> 0x80;
        var var2 = temp0;
        memory[0x0100:0x0120] = 0x288cdc91;
        memory[0x0120:0x0140] = msg.data[memory[0xe0:0x0100] + 0x92:memory[0xe0:0x0100] + 0x92 + 0x20];
        memory[msg.value:msg.value + 0x20] = var2;
        memory[msg.value:msg.value + 0x20] = address(var1).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        var var3 = var2 - memory[msg.value:msg.value + 0x20];
    
        if (arg0 <= var3) {
        label_0ED8:
            var temp1 = msg.data[memory[0xe0:0x0100] + 0x04:memory[0xe0:0x0100] + 0x04 + 0x20] >> 0x60;
            var var4 = temp1;
            memory[0x0140:0x0160] = 0xd9bfa73e;
            memory[0x0160:0x0180] = var4;
            memory[0x0180:0x01a0] = msg.value;
            memory[0x0160:0x0180] = address(var1).staticcall.gas(msg.gas)(memory[0x015c:0x01a0]);
        
            if (memory[0x0160:0x0180] > msg.data[memory[0xe0:0x0100] + 0x50:memory[0xe0:0x0100] + 0x50 + 0x20] - 0x1000) { stop(); }
        
            memory[0x0100:0x0120] = 0x2ac12622;
            memory[msg.value:msg.value + 0x20] = CHAINID();
            memory[msg.value:msg.value + 0x20] = address(var1).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        
            if (memory[msg.value:msg.value + 0x20]) { stop(); }
        
            var var5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            var temp2 = (arg0 * (msg.data[memory[0xe0:0x0100] + 0x2c:memory[0xe0:0x0100] + 0x2c + 0x20] >> 0x80)) / var2;
            var0 = temp2;
            memory[0x0100:0x0120] = 0x70a08231;
            memory[0x0120:0x0140] = var4;
            memory[msg.value:msg.value + 0x20] = address(var5).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        
            if (memory[msg.value:msg.value + 0x20] < var0) { stop(); }
        
            memory[0x0100:0x0120] = 0xdd62ed3e;
            memory[0x0140:0x0160] = 0x95e6f48254609a6ee006f7d493c8e5fb97094cef;
            memory[msg.value:msg.value + 0x20] = msg.value;
            memory[msg.value:msg.value + 0x20] = address(var5).staticcall.gas(msg.gas)(memory[0x011c:0x0160]);
        
            if (memory[msg.value:msg.value + 0x20] < var0) { stop(); }
        
            memory[0xa0:0xc0] = arg0;
            return var0;
        } else {
            var temp3 = arg0;
        
            if (temp3 - (byte(msg.data[memory[0xe0:0x0100]:memory[0xe0:0x0100] + 0x20], msg.value) * temp3) / 0xff > var3) { stop(); }
        
            arg0 = var3;
            goto label_0ED8;
        }
    }
    
    function func_0FCF(var arg0, var arg1) returns (var r0) {
        var var0 = msg.value;
        memory[0x03c4:0x03e4] = code[0x299f:0x29bf];
        var temp0 = arg0;
        memory[msg.value:msg.value + msg.value] = address(memory[0x03c4:0x03e4]).call.gas(msg.gas).value(temp0)(memory[msg.value:msg.value + msg.value]);
        memory[msg.value:msg.value + 0x20] = code[0x29bf:0x29df];
        var temp1 = byte(msg.data[0x95:0xb5], msg.value) * memory[msg.value:msg.value + 0x20];
        var var1 = temp1;
        memory[0x0100:0x0120] = 0x9b44d556;
        memory[0x0120:0x0140] = 0x60;
        memory[0x0140:0x0160] = temp0;
        memory[0x0160:0x0180] = 0x02e0;
        memory[0x0180:0x02a0] = code[code.length:code.length + 0x0120];
        memory[0x018c:0x01a0] = msg.data[0x29:0x3d];
        memory[0x01cc:0x01e0] = msg.data[0x3d:0x51];
        memory[0x0210:0x0220] = msg.data[0x51:0x61];
        memory[0x0230:0x0240] = msg.data[0x61:0x71];
        memory[0x029c:0x02a0] = msg.data[0x71:0x75];
        memory[0x02a0:0x02c0] = msg.data[0x75:0x95] - 0x1000;
        memory[0x02c0:0x02e0] = 0x01c0;
        memory[0x02e0:0x0300] = 0x0220;
        memory[0x0300:0x0320] = 0x20;
        memory[0x0320:0x0340] = 0x20;
        memory[0x0344:0x0364] = 0xf47261b0;
        memory[0x0340:0x0360] = 0x24;
        memory[0x0364:0x0384] = arg1;
        memory[0x03a4:0x03c4] = 0xf47261b0;
        memory[0x03a0:0x03c0] = 0x24;
        memory[0x0400:0x0420] = 0x42;
        memory[0x0420:0x0421] = byte(msg.data[0x96:0xb6], msg.value) + 0x1b;
        memory[0x0421:0x0441] = msg.data[0xb7:0xd7] ~ var1;
        memory[0x0441:0x0461] = msg.data[0xd7:0xf7] ~ var1;
        memory[0x0461:0x0462] = byte(msg.data[0xf7:0x0117], msg.value) + 0x02;
        memory[msg.value:msg.value + 0x20] = msg.value;
        var temp2;
        temp2, memory[msg.value:msg.value + 0x20] = address(0x61935cbdd02287b511119ddb11aeb42f1593b7ef).call.gas(msg.gas).value(memory[0x40:0x60])(memory[0x011c:0x0482]);
    
        if (!temp2) { revert(memory[msg.value:msg.value + msg.value]); }
    
        var0 = memory[msg.value:msg.value + 0x20];
    
        if (var0) { return var0; }
        else { revert(memory[msg.value:msg.value + msg.value]); }
    }
    
    function func_10F9(var arg0) {
        var var0 = memory[0xa0:0xc0];
    
        if (byte(msg.data[0x07:0x27], msg.value)) {
        label_1124:
            memory[0x0364:0x0384] = code[0x299f:0x29bf];
            memory[msg.value:msg.value + 0x20] = code[0x29bf:0x29df];
            var temp0 = byte(msg.data[memory[0xe0:0x0100] + 0x91:memory[0xe0:0x0100] + 0x91 + 0x20], msg.value) * memory[msg.value:msg.value + 0x20];
            var var1 = temp0;
            memory[0x0100:0x0120] = 0x9b44d556;
            memory[0x0120:0x0140] = 0x60;
            memory[0x0140:0x0160] = var0;
            memory[0x0160:0x0180] = 0x02e0;
            memory[0x0180:0x02a0] = code[code.length:code.length + 0x0120];
            memory[0x018c:0x01a0] = msg.data[memory[0xe0:0x0100] + 0x04:memory[0xe0:0x0100] + 0x04 + 0x14];
            memory[0x01cc:0x01e0] = msg.data[memory[0xe0:0x0100] + 0x18:memory[0xe0:0x0100] + 0x18 + 0x14];
            memory[0x0210:0x0220] = msg.data[memory[0xe0:0x0100] + 0x2c:memory[0xe0:0x0100] + 0x2c + 0x10];
            memory[0x0230:0x0240] = msg.data[memory[0xe0:0x0100] + 0x3c:memory[0xe0:0x0100] + 0x3c + 0x10];
            memory[0x029c:0x02a0] = msg.data[memory[0xe0:0x0100] + 0x4c:memory[0xe0:0x0100] + 0x4c + 0x04];
            memory[0x02a0:0x02c0] = msg.data[memory[0xe0:0x0100] + 0x50:memory[0xe0:0x0100] + 0x50 + 0x20] - 0x1000;
            memory[0x02c0:0x02e0] = 0x01c0;
            memory[0x02e0:0x0300] = 0x0220;
            memory[0x0300:0x0320] = 0x20;
            memory[0x0320:0x0340] = 0x20;
            memory[0x0344:0x0364] = 0xf47261b0;
            memory[0x0340:0x0360] = 0x24;
            memory[0x03a4:0x03c4] = 0xf47261b0;
            memory[0x03a0:0x03c0] = 0x24;
            memory[0x03c4:0x03e4] = arg0;
            memory[0x0400:0x0420] = 0x42;
            memory[0x0420:0x0421] = byte(msg.data[memory[0xe0:0x0100] + 0x70:memory[0xe0:0x0100] + 0x70 + 0x20], msg.value) + 0x1b;
            memory[0x0421:0x0441] = msg.data[memory[0xe0:0x0100] + 0x71:memory[0xe0:0x0100] + 0x71 + 0x20] ~ var1;
            memory[0x0441:0x0461] = msg.data[memory[0xe0:0x0100] + 0xb2:memory[0xe0:0x0100] + 0xb2 + 0x20] ~ var1;
            memory[0x0461:0x0462] = byte(msg.data[memory[0xe0:0x0100] + 0xd2:memory[0xe0:0x0100] + 0xd2 + 0x20], msg.value) + 0x02;
            var temp1;
            temp1, memory[0x01a0:0x0240] = address(0x61935cbdd02287b511119ddb11aeb42f1593b7ef).call.gas(msg.gas).value(memory[0x80:0xa0])(memory[0x011c:0x0482]);
        
            if (!temp1) { revert(memory[msg.value:msg.value + msg.value]); }
        
            if (!memory[0x01a0:0x01c0]) { revert(memory[msg.value:msg.value + msg.value]); }
        
            memory[0x0180:0x01a0] = 0x2e1a7d4d;
            memory[msg.value:msg.value + msg.value] = address(memory[0x0364:0x0384]).call.gas(msg.gas).value(msg.value)(memory[0x019c:0x01c0]);
            return;
        } else {
            var1 = 0x1124;
            var var2 = arg0;
            var var3 = var0;
            var var4 = 0x95e6f48254609a6ee006f7d493c8e5fb97094cef;
            func_09C9(var2, var3, var4);
            goto label_1124;
        }
    }
    
    function func_1281(var arg0) returns (var r0, var arg0) {
        var var0 = msg.value;
        var var1 = arg0;
        var var2 = msg.data[0x11:0x31] >> 0x60;
        var var3 = msg.data[0x61:0x81] >> 0x80;
        memory[MSIZE():MSIZE() + 0x20] = 0x95480889;
        memory[MSIZE():MSIZE() + 0x20] = var2;
        memory[MSIZE():MSIZE() + 0x20] = code[0x299f:0x29bf];
        memory[0x0170:0x0180] = msg.data[0x51:0x61];
        memory[0x0190:0x01a0] = msg.data[0x61:0x71];
        memory[0x01cc:0x01e0] = msg.data[0x29:0x3d];
        memory[0x022c:0x0240] = msg.data[0x3d:0x51];
        memory[0x0240:0x0260] = msg.data[0x95:0xb5];
        memory[0x027c:0x0280] = msg.data[0x71:0x75];
        memory[MSIZE():MSIZE() + 0x20] = msg.data[0x75:0x95] - 0x1000;
        memory[0x02a0:0x0300] = address(0xdef1c0ded9bec7f1a1670819833240f027b25eff).staticcall.gas(msg.gas)(memory[0x011c:0x02a0]);
    
        if (memory[0x02c0:0x02e0] != CHAINID()) { stop(); }
    
        var var4 = memory[0x0180:0x01a0] - memory[0x02e0:0x0300];
    
        if (arg0 <= var4) {
        label_1332:
            var0 = (var1 * memory[0x0160:0x0180]) / memory[0x0180:0x01a0];
            memory[0x01a0:0x01c0] = 0x70a08231;
            var temp0;
            temp0, memory[msg.value:msg.value + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[0x01bc:0x01e0]);
        
            if (!temp0) { stop(); }
        
            if (memory[msg.value:msg.value + 0x20] < var0) { stop(); }
        
            memory[0x01a0:0x01c0] = 0xdd62ed3e;
            memory[0x01e0:0x0200] = 0xdef1c0ded9bec7f1a1670819833240f027b25eff;
            memory[msg.value:msg.value + 0x20] = msg.value;
            var temp1;
            temp1, memory[msg.value:msg.value + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[0x01bc:0x0200]);
        
            if (!temp1) { stop(); }
        
            if (memory[msg.value:msg.value + 0x20] < var0) { stop(); }
        
            arg0 = var1;
            r0 = var0;
            return r0, arg0;
        } else {
            var temp2 = arg0;
        
            if (temp2 - (byte(msg.data[0x25:0x45], msg.value) * temp2) / 0xff > var4) { stop(); }
        
            var1 = var4;
            goto label_1332;
        }
    }
    
    function func_13AD(var arg0) returns (var r0) {
        var var0 = msg.value;
        var temp0 = msg.data[memory[0xe0:0x0100] + 0x3c:memory[0xe0:0x0100] + 0x3c + 0x20] >> 0x80;
        var var1 = temp0;
        memory[0x0100:0x0120] = 0x95480889;
        memory[0x0120:0x0140] = code[0x299f:0x29bf];
        memory[0x0140:0x0160] = msg.data[0x11:0x31] >> 0x60;
        memory[0x0160:0x0180] = msg.data[memory[0xe0:0x0100] + 0x2c:memory[0xe0:0x0100] + 0x2c + 0x20] >> 0x80;
        memory[0x0180:0x01a0] = var1;
        memory[0x01a0:0x0220] = code[code.length:code.length + 0x80];
        memory[0x01cc:0x01e0] = msg.data[memory[0xe0:0x0100] + 0x04:memory[0xe0:0x0100] + 0x04 + 0x14];
        memory[0x0220:0x0240] = msg.data[memory[0xe0:0x0100] + 0x18:memory[0xe0:0x0100] + 0x18 + 0x20] >> 0x60;
        memory[0x0240:0x0260] = msg.data[memory[0xe0:0x0100] + 0x70:memory[0xe0:0x0100] + 0x70 + 0x20];
        memory[0x0260:0x0280] = msg.data[memory[0xe0:0x0100] + 0x4c:memory[0xe0:0x0100] + 0x4c + 0x20] >> 0xe0;
        memory[0x0280:0x02a0] = msg.data[memory[0xe0:0x0100] + 0x50:memory[0xe0:0x0100] + 0x50 + 0x20] - 0x1000;
        memory[0x02a0:0x0300] = address(0xdef1c0ded9bec7f1a1670819833240f027b25eff).staticcall.gas(msg.gas)(memory[0x011c:0x02a0]);
    
        if (memory[0x02c0:0x02e0] != CHAINID()) { stop(); }
    
        var var2 = var1 - memory[0x02e0:0x0300];
    
        if (arg0 <= var2) {
        label_1487:
            var temp1 = (arg0 * memory[0x0160:0x0180]) / var1;
            var0 = temp1;
            memory[0x01a0:0x01c0] = 0x70a08231;
            memory[msg.value:msg.value + 0x20] = msg.value;
            memory[msg.value:msg.value + 0x20] = address(memory[0x0120:0x0140]).staticcall.gas(msg.gas)(memory[0x01bc:0x01e0]);
        
            if (memory[msg.value:msg.value + 0x20] < var0) { stop(); }
        
            memory[0x01a0:0x01c0] = 0xdd62ed3e;
            memory[0x01e0:0x0200] = 0xdef1c0ded9bec7f1a1670819833240f027b25eff;
            memory[msg.value:msg.value + 0x20] = msg.value;
            memory[msg.value:msg.value + 0x20] = address(memory[0x0120:0x0140]).staticcall.gas(msg.gas)(memory[0x01bc:0x0200]);
        
            if (memory[msg.value:msg.value + 0x20] < var0) { stop(); }
        
            memory[0xa0:0xc0] = arg0;
            return var0;
        } else {
            var temp2 = arg0;
        
            if (temp2 - (byte(msg.data[memory[0xe0:0x0100]:memory[0xe0:0x0100] + 0x20], msg.value) * temp2) / 0xff > var2) { stop(); }
        
            arg0 = var2;
            goto label_1487;
        }
    }
    
    function func_1501(var arg0, var arg1) returns (var r0) {
        var var0 = msg.value;
        memory[0x0140:0x0160] = code[0x299f:0x29bf];
        var temp0 = arg0;
        memory[msg.value:msg.value + msg.value] = address(memory[0x0140:0x0160]).call.gas(msg.gas).value(temp0)(memory[msg.value:msg.value + msg.value]);
        memory[msg.value:msg.value + 0x20] = code[0x29bf:0x29df];
        var temp1 = byte(msg.data[0xb5:0xd5], msg.value) * memory[msg.value:msg.value + 0x20];
        var var1 = temp1;
        memory[0x0100:0x0120] = 0xf6274f66;
        memory[0x0120:0x0140] = arg1;
        memory[0x0160:0x0280] = code[code.length:code.length + 0x0120];
        memory[0x0170:0x0180] = msg.data[0x51:0x61];
        memory[0x0190:0x01a0] = msg.data[0x61:0x71];
        memory[0x01cc:0x01e0] = msg.data[0x29:0x3d];
        memory[0x022c:0x0240] = msg.data[0x3d:0x51];
        memory[0x0240:0x0260] = msg.data[0x95:0xb5];
        memory[0x027c:0x0280] = msg.data[0x71:0x75];
        memory[0x0280:0x02a0] = msg.data[0x75:0x95] - 0x1000;
        memory[0x02a0:0x02c0] = byte(msg.data[0xf7:0x0117], msg.value) + 0x02;
        memory[0x02c0:0x02e0] = byte(msg.data[0xb6:0xd6], msg.value) + 0x1b;
        memory[0x02e0:0x0300] = msg.data[0xd7:0xf7] ~ var1;
        memory[0x0300:0x0320] = msg.data[0xb7:0xd7] ~ var1;
        memory[0x0320:0x0340] = temp0;
        var temp2;
        temp2, memory[0x01e0:0x0220] = address(0xdef1c0ded9bec7f1a1670819833240f027b25eff).call.gas(msg.gas).value(memory[0x40:0x60])(memory[0x011c:0x0340]);
    
        if (!temp2) { revert(memory[msg.value:msg.value + msg.value]); }
    
        var0 = memory[0x0200:0x0220];
    
        if (var0) { return var0; }
        else { revert(memory[msg.value:msg.value + msg.value]); }
    }
    
    function func_15E2(var arg0) {
        var var0 = memory[0xa0:0xc0];
        var var1 = 0xdef1c0ded9bec7f1a1670819833240f027b25eff;
    
        if (byte(msg.data[0x07:0x27], msg.value)) {
        label_160E:
            memory[msg.value:msg.value + 0x20] = code[0x29bf:0x29df];
            var temp0 = byte(msg.data[memory[0xe0:0x0100] + 0xb1:memory[0xe0:0x0100] + 0xb1 + 0x20], msg.value) * memory[msg.value:msg.value + 0x20];
            var var2 = temp0;
            memory[0x0100:0x0120] = 0xf6274f66;
            memory[0x0120:0x0140] = code[0x299f:0x29bf];
            memory[0x0140:0x0160] = arg0;
            memory[0x0160:0x0280] = code[code.length:code.length + 0x0120];
            memory[0x0170:0x0180] = msg.data[memory[0xe0:0x0100] + 0x2c:memory[0xe0:0x0100] + 0x2c + 0x10];
            memory[0x0190:0x01a0] = msg.data[memory[0xe0:0x0100] + 0x3c:memory[0xe0:0x0100] + 0x3c + 0x10];
            memory[0x01cc:0x01e0] = msg.data[memory[0xe0:0x0100] + 0x04:memory[0xe0:0x0100] + 0x04 + 0x14];
            memory[0x022c:0x0240] = msg.data[memory[0xe0:0x0100] + 0x18:memory[0xe0:0x0100] + 0x18 + 0x14];
            memory[0x0240:0x0260] = msg.data[memory[0xe0:0x0100] + 0x70:memory[0xe0:0x0100] + 0x70 + 0x20];
            memory[0x027c:0x0280] = msg.data[memory[0xe0:0x0100] + 0x4c:memory[0xe0:0x0100] + 0x4c + 0x04];
            memory[0x0280:0x02a0] = msg.data[memory[0xe0:0x0100] + 0x50:memory[0xe0:0x0100] + 0x50 + 0x20] - 0x1000;
            memory[0x02a0:0x02c0] = byte(msg.data[memory[0xe0:0x0100] + 0xd2:memory[0xe0:0x0100] + 0xd2 + 0x20], msg.value) + 0x02;
            memory[0x02c0:0x02e0] = byte(msg.data[memory[0xe0:0x0100] + 0x90:memory[0xe0:0x0100] + 0x90 + 0x20], msg.value) + 0x1b;
            memory[0x02e0:0x0300] = msg.data[memory[0xe0:0x0100] + 0x91:memory[0xe0:0x0100] + 0x91 + 0x20] ~ var2;
            memory[0x0300:0x0320] = msg.data[memory[0xe0:0x0100] + 0xb2:memory[0xe0:0x0100] + 0xb2 + 0x20] ~ var2;
            memory[0x0320:0x0340] = var0;
            var temp1;
            temp1, memory[0x01e0:0x0220] = address(var1).call.gas(msg.gas).value(memory[0x80:0xa0])(memory[0x011c:0x0340]);
        
            if (!temp1) { revert(memory[msg.value:msg.value + msg.value]); }
        
            if (!memory[0x0200:0x0220]) { revert(memory[msg.value:msg.value + msg.value]); }
        
            memory[0x01e0:0x0200] = 0x2e1a7d4d;
            memory[msg.value:msg.value + msg.value] = address(memory[0x0120:0x0140]).call.gas(msg.gas).value(msg.value)(memory[0x01fc:0x0220]);
            return;
        } else {
            var2 = 0x160e;
            var var3 = arg0;
            var var4 = var0;
            var var5 = var1;
            func_09C9(var3, var4, var5);
            goto label_160E;
        }
    }
    
    function func_1719(var arg0, var arg1) returns (var r0) {
        var var0 = msg.value;
        var var1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819;
    
        if (block.number > msg.data[0x3d:0x5d] >> 0xd8) { stop(); }
    
        var var2 = (arg0 * 0x0de0b6b3a7640000) / 0x0deb5f2f95b78000;
        var var3 = msg.data[0x31:0x51] >> 0xa0;
        var temp0 = msg.data[0x25:0x45] >> 0xa0;
        var var4 = temp0;
        memory[MSIZE():MSIZE() + 0x20] = 0x19774d43;
        memory[MSIZE():MSIZE() + 0x20] = (msg.data[0x4a:0x6a] >> 0x60) ~ msg.sender;
        memory[MSIZE():MSIZE() + 0x20] = msg.data[0xa0:0xc0];
        memory[msg.value:msg.value + 0x20] = var4;
        memory[msg.value:msg.value + 0x20] = address(var1).staticcall.gas(msg.gas)(memory[0x011c:0x0160]);
    
        if (var2 > var4 - memory[msg.value:msg.value + 0x20]) { stop(); }
    
        memory[MSIZE():MSIZE() + 0x20] = memory[0x0120:0x0140];
        memory[0x0140:0x0160] = arg1;
        memory[0x0120:0x0140] = 0x508493bc;
        memory[msg.value:msg.value + 0x20] = msg.value;
        memory[msg.value:msg.value + 0x20] = address(var1).staticcall.gas(msg.gas)(memory[0x013c:0x0180]);
        var0 = (var2 * var3) / var4;
    
        if (var0 <= memory[msg.value:msg.value + 0x20]) { return var0; }
        else { stop(); }
    }
    
    function func_17D0(var arg0) returns (var r0) {
        var var0 = msg.value;
        var var1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819;
    
        if (block.number > msg.data[memory[0xe0:0x0100] + 0x18:memory[0xe0:0x0100] + 0x18 + 0x20] >> 0xd8) { stop(); }
    
        var var2 = (arg0 * 0x0de0b6b3a7640000) / 0x0deb5f2f95b78000;
        var var3 = msg.data[memory[0xe0:0x0100] + 0x0c:memory[0xe0:0x0100] + 0x0c + 0x20] >> 0xa0;
        var temp0 = msg.data[memory[0xe0:0x0100]:memory[0xe0:0x0100] + 0x20] >> 0xa0;
        var var4 = temp0;
        memory[0x0120:0x0140] = 0x19774d43;
        memory[0x0140:0x0160] = (msg.data[memory[0xe0:0x0100] + 0x25:memory[0xe0:0x0100] + 0x25 + 0x20] >> 0x60) - 0x1000;
        memory[0x0160:0x0180] = msg.data[memory[0xe0:0x0100] + 0x3a:memory[0xe0:0x0100] + 0x3a + 0x20];
        memory[msg.value:msg.value + 0x20] = var4;
        memory[msg.value:msg.value + 0x20] = address(var1).staticcall.gas(msg.gas)(memory[0x013c:0x0180]);
    
        if (var2 > var4 - memory[msg.value:msg.value + 0x20]) { stop(); }
    
        memory[0x0120:0x0140] = msg.value;
        memory[0x0100:0x0120] = 0x508493bc;
        memory[msg.value:msg.value + 0x20] = msg.value;
        memory[msg.value:msg.value + 0x20] = address(var1).staticcall.gas(msg.gas)(memory[0x011c:0x0160]);
        var0 = (var2 * var3) / var4;
    
        if (var0 <= memory[msg.value:msg.value + 0x20]) { return var0; }
        else { stop(); }
    }
    
    function func_1899(var arg0, var arg1) returns (var r0) {
        var var0 = msg.value;
        var var1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819;
        var var2 = msg.data[0x25:0x45] >> 0xa0;
        var var3 = msg.data[0x31:0x51] >> 0xa0;
        var temp0 = arg0;
        var var4 = (temp0 * 0x0de0b6b3a7640000) / 0x0deb5f2f95b78000;
        memory[msg.value:msg.value + 0x20] = code[0x29bf:0x29df];
        var temp1 = byte(msg.data[0x9f:0xbf], msg.value) * memory[msg.value:msg.value + 0x20];
        var var5 = temp1;
        memory[msg.value:msg.value + 0x20] = 0xd0e30db0;
        memory[msg.value:msg.value + msg.value] = address(var1).call.gas(msg.gas).value(temp0)(memory[0x1c:0x20]);
        memory[0x0100:0x0120] = 0x0a19b14a;
        memory[0x0120:0x0140] = msg.value;
        memory[0x0140:0x0160] = var2;
        memory[0x0160:0x0180] = arg1;
        memory[0x0180:0x01a0] = var3;
        memory[0x01a0:0x01c0] = msg.data[0x3d:0x5d] >> 0xd8;
        memory[0x01c0:0x01e0] = msg.data[0x42:0x62] >> 0xc0;
        memory[0x01e0:0x0200] = (msg.data[0x4a:0x6a] >> 0x60) ~ msg.sender;
        memory[0x0200:0x0220] = byte(msg.data[0x5e:0x7e], msg.value) + 0x1b;
        memory[0x0220:0x0240] = msg.data[0x5f:0x7f] ~ var5;
        memory[0x0240:0x0260] = msg.data[0x7f:0x9f] ~ var5;
        memory[0x0260:0x0280] = var4;
        var temp2;
        temp2, memory[msg.value:msg.value + msg.value] = address(var1).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0280]);
    
        if (!temp2) { revert(memory[msg.value:msg.value + msg.value]); }
    
        var0 = (var4 * var3) / var2;
        memory[0x0140:0x0160] = 0x9e281a98;
        memory[0x0180:0x01a0] = var0;
        var temp3;
        temp3, memory[msg.value:msg.value + msg.value] = address(var1).call.gas(msg.gas).value(msg.value)(memory[0x015c:0x01a0]);
    
        if (temp3) { return var0; }
        else { revert(memory[msg.value:msg.value + msg.value]); }
    }
    
    function func_199C(var arg0, var arg1) {
        var var0 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819;
    
        if (byte(msg.data[0x07:0x27], msg.value)) {
        label_19C5:
            var temp0 = msg.data[memory[0xe0:0x0100]:memory[0xe0:0x0100] + 0x20] >> 0xa0;
            var var1 = temp0;
            var temp1 = msg.data[memory[0xe0:0x0100] + 0x0c:memory[0xe0:0x0100] + 0x0c + 0x20] >> 0xa0;
            var var2 = temp1;
            var temp2 = arg0;
            var var3 = (temp2 * 0x0de0b6b3a7640000) / 0x0deb5f2f95b78000;
            memory[msg.value:msg.value + 0x20] = code[0x29bf:0x29df];
            var temp3 = byte(msg.data[memory[0xe0:0x0100] + 0x7a:memory[0xe0:0x0100] + 0x7a + 0x20], msg.value) * memory[msg.value:msg.value + 0x20];
            var var4 = temp3;
            memory[0x0100:0x0120] = 0x338b5dea;
            memory[0x0120:0x0140] = arg1;
            memory[0x0140:0x0160] = temp2;
            var temp4 = var0;
            memory[msg.value:msg.value + msg.value] = address(temp4).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0160]);
            memory[0x0100:0x0120] = 0x0a19b14a;
            memory[0x0140:0x0160] = var1;
            memory[0x0160:0x0180] = msg.value;
            memory[0x0180:0x01a0] = var2;
            memory[0x01a0:0x01c0] = msg.data[memory[0xe0:0x0100] + 0x18:memory[0xe0:0x0100] + 0x18 + 0x20] >> 0xd8;
            memory[0x01c0:0x01e0] = msg.data[memory[0xe0:0x0100] + 0x1d:memory[0xe0:0x0100] + 0x1d + 0x20] >> 0xc0;
            memory[0x01e0:0x0200] = (msg.data[memory[0xe0:0x0100] + 0x25:memory[0xe0:0x0100] + 0x25 + 0x20] >> 0x60) - 0x1000;
            memory[0x0200:0x0220] = byte(msg.data[memory[0xe0:0x0100] + 0x39:memory[0xe0:0x0100] + 0x39 + 0x20], msg.value) + 0x1b;
            memory[0x0220:0x0240] = msg.data[memory[0xe0:0x0100] + 0x5a:memory[0xe0:0x0100] + 0x5a + 0x20] ~ var4;
            memory[0x0240:0x0260] = msg.data[memory[0xe0:0x0100] + 0x7b:memory[0xe0:0x0100] + 0x7b + 0x20] ~ var4;
            memory[0x0260:0x0280] = var3;
            var temp5;
            temp5, memory[msg.value:msg.value + msg.value] = address(temp4).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0280]);
        
            if (!temp5) { revert(memory[msg.value:msg.value + msg.value]); }
        
            var var5 = (var3 * var2) / var1;
            memory[msg.value:msg.value + 0x20] = 0x2e1a7d4d;
            memory[0x20:0x40] = var5;
            var temp6;
            temp6, memory[msg.value:msg.value + msg.value] = address(var0).call.gas(msg.gas).value(msg.value)(memory[0x1c:0x40]);
        
            if (temp6) { return; }
            else { revert(memory[msg.value:msg.value + msg.value]); }
        } else {
            var1 = 0x19c5;
            var2 = arg1;
            var3 = arg0;
            var4 = var0;
            func_09C9(var2, var3, var4);
            goto label_19C5;
        }
    }
    
    function func_1AD2(var arg0, var arg1) returns (var r0) {
        var var0 = msg.value;
        var var1 = msg.data[0x25:0x45] >> 0x60;
        memory[MSIZE():MSIZE() + 0x20] = 0x70a08231;
        memory[MSIZE():MSIZE() + 0x20] = var1;
        var temp0;
        temp0, memory[msg.value:msg.value + 0x20] = address(arg1).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
    
        if (!temp0) { stop(); }
    
        var temp1 = arg0 * 0x03e5;
        return (temp1 * memory[msg.value:msg.value + 0x20]) / (address(var1).balance * 0x03e8 + temp1);
    }
    
    function func_1B0F(var arg0, var arg1) returns (var r0) {
        var var0 = msg.value;
        var temp0 = msg.data[memory[0xe0:0x0100]:memory[0xe0:0x0100] + 0x20] >> 0x60;
        var var1 = temp0;
        memory[0x0100:0x0120] = 0x70a08231;
        memory[0x0120:0x0140] = var1;
        memory[msg.value:msg.value + 0x20] = msg.value;
        var temp1;
        temp1, memory[msg.value:msg.value + 0x20] = address(arg1).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
    
        if (!temp1) { stop(); }
    
        var temp2 = arg0 * 0x03e5;
        return (address(var1).balance * temp2) / (memory[msg.value:msg.value + 0x20] * 0x03e8 + temp2);
    }
    
    function func_1B51(var arg0) returns (var r0) {
        memory[0x0100:0x0120] = 0xf39b5b9b;
        memory[0x0120:0x0140] = CHAINID();
        memory[0x0140:0x0160] = block.timestamp;
        var var0 = msg.value;
        var temp0;
        temp0, memory[0x40:0x60] = address(msg.data[0x19:0x39]).call.gas(msg.gas).value(arg0)(memory[0x011c:0x0160]);
    
        if (temp0) { return memory[0x40:0x60]; }
        else { stop(); }
    }
    
    function func_1B83(var arg0, var arg1) {
        var var0 = msg.data[memory[0xe0:0x0100]:memory[0xe0:0x0100] + 0x20] >> 0x60;
    
        if (byte(msg.data[0x07:0x27], msg.value)) {
        label_1B9E:
            memory[0x0100:0x0120] = 0x95e3c50b;
            memory[0x0120:0x0140] = arg0;
            memory[0x0140:0x0160] = CHAINID();
            memory[0x0160:0x0180] = block.timestamp;
            var temp0;
            temp0, memory[msg.value:msg.value + msg.value] = address(var0).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0180]);
        
            if (temp0) { return; }
            else { revert(memory[msg.value:msg.value + msg.value]); }
        } else {
            var var1 = 0x1b9e;
            var var2 = arg1;
            var var3 = arg0;
            var var4 = var0;
            func_09C9(var2, var3, var4);
            goto label_1B9E;
        }
    }
    
    function func_1BC9(var arg0, var arg1) returns (var r0) {
        var var0 = msg.value;
        memory[MSIZE():MSIZE() + 0x20] = 0x0902f1ac;
        memory[msg.value:msg.value + 0x40] = address(msg.data[0x1a:0x3a]).staticcall.gas(msg.gas)(memory[0x011c:0x0120]);
    
        if (arg1 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            var temp0 = arg0 * 0x03e5;
            var temp1 = (temp0 * memory[msg.value:msg.value + 0x20]) / (memory[0x20:0x40] * 0x03e8 + temp0);
            memory[0x60:0x80] = temp1;
            return temp1;
        } else {
            var temp2 = memory[msg.value:msg.value + 0x20];
            memory[msg.value:msg.value + 0x20] = memory[0x20:0x40];
            memory[0x20:0x40] = temp2;
            var temp3 = arg0 * 0x03e5;
            var temp4 = (temp3 * memory[msg.value:msg.value + 0x20]) / (memory[0x20:0x40] * 0x03e8 + temp3);
            memory[0x60:0x80] = temp4;
            return temp4;
        }
    }
    
    function func_1C25(var arg0, var arg1) returns (var r0) {
        memory[0x0100:0x0120] = 0x0902f1ac;
        var temp0 = msg.value;
        var var0 = temp0;
        memory[var0:var0 + 0x20] = var0;
        memory[0x20:0x40] = var0;
        memory[var0:var0 + 0x40] = address(msg.data[memory[0xe0:0x0100] - 0x0b:memory[0xe0:0x0100] - 0x0b + 0x20]).staticcall.gas(msg.gas)(memory[0x011c:0x0120]);
    
        if (arg1 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            var temp1 = arg0 * 0x03e5;
            var temp2 = (temp1 * memory[0x20:0x40]) / (memory[msg.value:msg.value + 0x20] * 0x03e8 + temp1);
            memory[0xa0:0xc0] = temp2;
            return temp2;
        } else {
            var temp3 = memory[msg.value:msg.value + 0x20];
            memory[msg.value:msg.value + 0x20] = memory[0x20:0x40];
            memory[0x20:0x40] = temp3;
            var temp4 = arg0 * 0x03e5;
            var temp5 = (temp4 * memory[0x20:0x40]) / (memory[msg.value:msg.value + 0x20] * 0x03e8 + temp4);
            memory[0xa0:0xc0] = temp5;
            return temp5;
        }
    }
    
    function func_1C8F(var arg0, var arg1) returns (var r0) {
        var temp0 = memory[0x60:0x80];
        var var0 = temp0;
        var var1 = msg.data[0x26:0x46] >> 0x60;
        var var2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        var temp1 = arg0;
        memory[msg.value:msg.value + msg.value] = address(var2).call.gas(msg.gas).value(temp1)(memory[msg.value:msg.value + msg.value]);
        memory[0x0100:0x0120] = 0xa9059cbb;
        memory[0x0120:0x0140] = var1;
        memory[0x0140:0x0160] = temp1;
        memory[msg.value:msg.value + msg.value] = address(var2).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0160]);
        memory[0x0100:0x0120] = 0x022c0d9f;
        memory[0x0120:0x0140] = var0;
        memory[0x0140:0x0160] = msg.value;
        memory[0x0180:0x01a0] = 0x20;
    
        if (arg1 < var2) {
            memory[0x0160:0x0180] = address(this);
        
            if (!byte(msg.data[0x25:0x45], msg.value)) {
            label_1D23:
                var temp2;
                temp2, memory[msg.value:msg.value + msg.value] = address(var1).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x01a0]);
            
                if (!temp2) { revert(memory[msg.value:msg.value + msg.value]); }
            
            label_1D36:
                return var0;
            } else {
            label_1D19:
                memory[0x0160:0x0180] = msg.data[0x3b:0x5b] >> 0x60;
                var temp3;
                temp3, memory[msg.value:msg.value + msg.value] = address(var1).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x01a0]);
            
                if (temp3) { goto label_1D36; }
                else { revert(memory[msg.value:msg.value + msg.value]); }
            }
        } else {
            memory[0x0120:0x0140] = msg.value;
            memory[0x0140:0x0160] = var0;
            memory[0x0180:0x01a0] = msg.value;
            memory[0x0160:0x0180] = address(this);
        
            if (!byte(msg.data[0x25:0x45], msg.value)) { goto label_1D23; }
            else { goto label_1D19; }
        }
    }
    
    function func_1D3E(var arg0, var arg1) {
        var var0 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        var var1 = msg.data[memory[0xe0:0x0100] + CHAINID():memory[0xe0:0x0100] + CHAINID() + 0x20] >> 0x60;
    
        if (byte(msg.data[memory[0xe0:0x0100]:memory[0xe0:0x0100] + 0x20], msg.value)) {
        label_1D8C:
            var temp0 = memory[0xa0:0xc0];
            var var2 = temp0;
            memory[0x0100:0x0120] = 0x022c0d9f;
            memory[0x0120:0x0140] = msg.value;
            memory[0x0140:0x0160] = var2;
            memory[0x0180:0x01a0] = msg.value;
        
            if (arg1 < var0) {
                memory[0x0160:0x0180] = address(this);
                var temp1;
                temp1, memory[msg.value:msg.value + msg.value] = address(var1).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x01a0]);
            
                if (!temp1) { revert(memory[msg.value:msg.value + msg.value]); }
            
            label_1DD7:
                memory[msg.value:msg.value + 0x20] = 0x2e1a7d4d;
                memory[0x20:0x40] = var2;
                memory[msg.value:msg.value + msg.value] = address(var0).call.gas(msg.gas).value(msg.value)(memory[0x1c:0x40]);
                return;
            } else {
                memory[0x0120:0x0140] = var2;
                memory[0x0140:0x0160] = msg.value;
                memory[0x0180:0x01a0] = 0x20;
                memory[0x0160:0x0180] = address(this);
                var temp2;
                temp2, memory[msg.value:msg.value + msg.value] = address(var1).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x01a0]);
            
                if (temp2) { goto label_1DD7; }
                else { revert(memory[msg.value:msg.value + msg.value]); }
            }
        } else {
            memory[0x0100:0x0120] = 0xa9059cbb;
            memory[0x0120:0x0140] = var1;
            memory[0x0140:0x0160] = arg0;
            var temp3;
            temp3, memory[msg.value:msg.value + msg.value] = address(arg1).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0160]);
        
            if (temp3) { goto label_1D8C; }
            else { revert(memory[msg.value:msg.value + msg.value]); }
        }
    }
    
    function func_1DF4(var arg0, var arg1) returns (var r0) {
        var temp0 = msg.value;
        var var0 = temp0;
        memory[var0:var0 + 0x20] = 0x3850c7bd;
        memory[0x40:0x60] = address(msg.data[0x1a:0x3a]).call.gas(msg.gas).value(var0)(memory[0x1c:0x20]);
    
        if (!returndata.length) { stop(); }
    
        var var1 = arg1 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    
        if (var1 == 0x01) {
            if (memory[0x40:0x60] > msg.data[0x3a:0x5a] >> 0x60) { stop(); }
        
        label_1E59:
            return msg.data[0x4e:0x6e] >> 0x80;
        } else if (memory[0x40:0x60] >= msg.data[0x3a:0x5a] >> 0x60) { goto label_1E59; }
        else { stop(); }
    }
    
    function func_1E67(var arg0, var arg1) returns (var r0) {
        var temp0 = msg.value;
        var var0 = temp0;
        memory[var0:var0 + 0x20] = 0x3850c7bd;
        memory[0x80:0xa0] = address(msg.data[memory[0xe0:0x0100] - 0x0b:memory[0xe0:0x0100] - 0x0b + 0x20]).call.gas(msg.gas).value(var0)(memory[0x1c:0x20]);
    
        if (!returndata.length) { stop(); }
    
        var var1 = arg1 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    
        if (var1 == 0x01) {
            if (memory[0x80:0xa0] < msg.data[memory[0xe0:0x0100] + 0x15:memory[0xe0:0x0100] + 0x15 + 0x20] >> 0x60) { stop(); }
        
        label_1ED8:
            return msg.data[memory[0xe0:0x0100] + 0x29:memory[0xe0:0x0100] + 0x29 + 0x20] >> 0x80;
        } else if (memory[0x80:0xa0] <= msg.data[memory[0xe0:0x0100] + 0x15:memory[0xe0:0x0100] + 0x15 + 0x20] >> 0x60) { goto label_1ED8; }
        else { stop(); }
    }
    
    function func_1EEA(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = msg.value;
        var var1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        var var2 = msg.data[0x26:0x46] >> 0x60;
        var var3 = 0x0200;
        memory[0x0100:0x0120] = 0x128acb08;
        memory[0x0120:0x0140] = msg.data[0x5f:0x7f] >> 0x60;
    
        if (!byte(msg.data[0x25:0x45], msg.value)) {
            var var4 = arg2 < var1;
        
            if (var4 == 0x01) {
            label_1F61:
                memory[0x0140:0x0160] = msg.value;
                memory[0x0180:0x01a0] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                var temp0 = var2;
                storage[temp0] = (0x042401 << msg.value + 0xe8) + var1;
                memory[0x0160:0x0180] = arg1;
                memory[0x01a0:0x01c0] = 0xa0;
                memory[0x01c0:0x01e0] = 0x20;
                memory[0x01e0:0x0200] = arg0;
                memory[var3:var3 + 0x20] = msg.value;
                var temp1;
                temp1, memory[0x0200:0x0240] = address(temp0).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0200]);
            
                if (temp1) {
                label_1FBE:
                    storage[var2] = msg.value;
                    return msg.value - memory[var3:var3 + 0x20];
                } else {
                label_1FBA:
                    storage[var2] = msg.value;
                    stop();
                }
            } else {
            label_1F3C:
                var3 = 0x0220;
                memory[0x0140:0x0160] = CHAINID();
                memory[0x0180:0x01a0] = 0x01000276a4;
                storage[var2] = (0x240401 << msg.value + 0xe8) + var1;
                memory[0x0160:0x0180] = arg1;
                memory[0x01a0:0x01c0] = 0xa0;
                memory[0x01c0:0x01e0] = 0x20;
                memory[0x01e0:0x0200] = arg0;
                memory[var3:var3 + 0x20] = msg.value;
                var temp2;
                temp2, memory[0x0200:0x0240] = address(var2).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0200]);
            
                if (temp2) { goto label_1FBE; }
                else { goto label_1FBA; }
            }
        } else {
            memory[0x0120:0x0140] = address(this);
            var4 = arg2 < var1;
        
            if (var4 == 0x01) { goto label_1F61; }
            else { goto label_1F3C; }
        }
    }
    
    function func_1FD0(var arg0, var arg1, var arg2) {
        var var0 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        var var1 = msg.data[memory[0xe0:0x0100] + CHAINID():memory[0xe0:0x0100] + CHAINID() + 0x20] >> 0x60;
        var var2 = 0x0220;
        memory[0x0100:0x0120] = 0x128acb08;
        memory[0x0120:0x0140] = address(this);
        var var3 = arg2 < var0;
    
        if (var3 == 0x01) {
            memory[0x0140:0x0160] = CHAINID();
            memory[0x0180:0x01a0] = 0x01000276a4;
            var temp0 = var1;
            storage[temp0] = (0x2404 << msg.value + 0xf0) + arg2;
            memory[0x0160:0x0180] = arg1;
            memory[0x01a0:0x01c0] = 0xa0;
            memory[0x01c0:0x01e0] = 0x20;
            memory[0x01e0:0x0200] = arg0;
            memory[var2:var2 + 0x20] = msg.value;
            var temp1;
            temp1, memory[0x0200:0x0240] = address(temp0).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0200]);
        
            if (!temp1) { revert(memory[msg.value:msg.value + msg.value]); }
        
        label_208A:
            storage[var1] = msg.value;
            memory[msg.value:msg.value + 0x20] = 0x2e1a7d4d;
            memory[0x20:0x40] = msg.value - memory[var2:var2 + 0x20];
            memory[msg.value:msg.value + msg.value] = address(var0).call.gas(msg.gas).value(msg.value)(memory[0x1c:0x40]);
            return;
        } else {
            var2 = 0x0200;
            memory[0x0140:0x0160] = msg.value;
            memory[0x0180:0x01a0] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            storage[var1] = (0x0424 << msg.value + 0xf0) + arg2;
            memory[0x0160:0x0180] = arg1;
            memory[0x01a0:0x01c0] = 0xa0;
            memory[0x01c0:0x01e0] = 0x20;
            memory[0x01e0:0x0200] = arg0;
            memory[var2:var2 + 0x20] = msg.value;
            var temp2;
            temp2, memory[0x0200:0x0240] = address(var1).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0200]);
        
            if (temp2) { goto label_208A; }
            else { revert(memory[msg.value:msg.value + msg.value]); }
        }
    }
    
    function func_20AE(var arg0, var arg1) returns (var r0) {
        var temp0 = msg.data[0x1a:0x3a];
        memory[MSIZE():MSIZE() + 0x20] = 0xf8b2cb4f;
        memory[MSIZE():MSIZE() + 0x20] = code[0x299f:0x29bf];
        memory[MSIZE():MSIZE() + 0x20] = address(temp0).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        memory[MSIZE():MSIZE() + 0x20] = msg.data[0x42:0x62] >> 0xb8;
        memory[0x0120:0x0140] = arg1;
        memory[MSIZE():MSIZE() + 0x20] = address(temp0).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        memory[0x0120:0x0140] = 0xba9530a6;
        memory[MSIZE():MSIZE() + 0x20] = msg.data[0x4b:0x6b] >> 0xb8;
        memory[MSIZE():MSIZE() + 0x20] = arg0;
        memory[MSIZE():MSIZE() + 0x20] = msg.data[0x3a:0x5a] >> 0xc0;
        memory[msg.value:msg.value + 0x20] = address(temp0).staticcall.gas(msg.gas)(memory[0x013c:0x0200]);
        return memory[msg.value:msg.value + 0x20];
    }
    
    function func_2117(var arg0, var arg1) returns (var r0) {
        var temp0 = msg.data[memory[0xe0:0x0100] - 0x0b:memory[0xe0:0x0100] - 0x0b + 0x20];
        memory[0x0100:0x0120] = 0xf8b2cb4f;
        memory[0x0120:0x0140] = arg1;
        memory[0x0140:0x0160] = msg.value;
        memory[0x0140:0x0160] = address(temp0).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        memory[0x0160:0x0180] = msg.data[memory[0xe0:0x0100] + 0x1d:memory[0xe0:0x0100] + 0x1d + 0x20] >> 0xb8;
        memory[0x0120:0x0140] = code[0x299f:0x29bf];
        memory[0x0180:0x01a0] = msg.value;
        memory[0x0180:0x01a0] = address(temp0).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        memory[0x0120:0x0140] = 0xba9530a6;
        memory[0x01a0:0x01c0] = msg.data[memory[0xe0:0x0100] + 0x26:memory[0xe0:0x0100] + 0x26 + 0x20] >> 0xb8;
        memory[0x01c0:0x01e0] = arg0;
        memory[0x01e0:0x0200] = msg.data[memory[0xe0:0x0100] + 0x15:memory[0xe0:0x0100] + 0x15 + 0x20] >> 0xc0;
        memory[0x80:0xa0] = address(temp0).staticcall.gas(msg.gas)(memory[0x013c:0x0200]);
        return memory[0x80:0xa0];
    }
    
    function func_21AC(var arg0, var arg1) returns (var r0) {
        var temp0 = msg.value;
        var var0 = temp0;
        var var1 = msg.data[0x26:0x46] >> 0x60;
        var var2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        memory[var0:var0 + var0] = address(var2).call.gas(msg.gas).value(arg0)(memory[var0:var0 + var0]);
    
        if (byte(msg.data[0x25:0x45], msg.value)) {
        label_21E5:
            memory[0x0100:0x0120] = 0x8201aa3f;
            memory[0x0120:0x0140] = var2;
            memory[0x0140:0x0160] = arg0;
            memory[0x0160:0x0180] = arg1;
            memory[0x0180:0x01a0] = CHAINID();
            memory[0x01a0:0x01a1] = CHAINID();
            memory[msg.value:msg.value + 0x20] = msg.value;
            var temp1;
            temp1, memory[msg.value:msg.value + 0x20] = address(var1).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x01c0]);
        
            if (temp1) { return memory[msg.value:msg.value + 0x20]; }
            else { revert(memory[msg.value:msg.value + msg.value]); }
        } else {
            var var3 = 0x21e5;
            var var4 = var2;
            var var5 = arg0;
            var var6 = var1;
            func_09C9(var4, var5, var6);
            goto label_21E5;
        }
    }
    
    function func_2229(var arg0, var arg1) {
        var var0 = msg.data[memory[0xe0:0x0100] + CHAINID():memory[0xe0:0x0100] + CHAINID() + 0x20] >> 0x60;
        var var1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    
        if (byte(msg.data[0x07:0x27], msg.value)) {
        label_225B:
            memory[0x0100:0x0120] = 0x8201aa3f;
            memory[0x0120:0x0140] = arg1;
            memory[0x0140:0x0160] = arg0;
            memory[0x0160:0x0180] = var1;
            memory[0x0180:0x01a0] = CHAINID();
            memory[0x01a0:0x01a1] = CHAINID();
            memory[0x20:0x40] = msg.value;
            var temp0;
            temp0, memory[0x20:0x40] = address(var0).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x01c0]);
        
            if (!temp0) { revert(memory[msg.value:msg.value + msg.value]); }
        
            memory[msg.value:msg.value + 0x20] = 0x2e1a7d4d;
            memory[msg.value:msg.value + msg.value] = address(var1).call.gas(msg.gas).value(msg.value)(memory[0x1c:0x40]);
            return;
        } else {
            var var2 = 0x225b;
            var var3 = arg1;
            var var4 = arg0;
            var var5 = var0;
            func_09C9(var3, var4, var5);
            goto label_225B;
        }
    }
    
    function func_22AD(var arg0, var arg1) returns (var r0) {
        var var0 = msg.value;
        memory[MSIZE():MSIZE() + 0x20] = 0xf84d066e;
        memory[0x0140:0x0160] = 0xe0;
        memory[MSIZE():MSIZE() + 0x20] = 0x01e0;
        memory[MSIZE():MSIZE() + 0x20] = address(this);
        memory[0x01c0:0x01e0] = address(this);
        memory[0x0200:0x0220] = CHAINID();
        memory[MSIZE():MSIZE() + 0x20] = 0x20;
        memory[MSIZE():MSIZE() + 0x20] = msg.data[0x26:0x46];
        memory[0x0280:0x02a0] = CHAINID();
        memory[MSIZE():MSIZE() + 0x20] = arg0;
        memory[MSIZE():MSIZE() + 0x20] = 0xa0;
        memory[0x0300:0x0320] = 0x02;
        memory[MSIZE():MSIZE() + 0x20] = code[0x299f:0x29bf];
        memory[MSIZE():MSIZE() + 0x20] = arg1;
        var temp0;
        temp0, memory[MSIZE():MSIZE() + 0x80] = address(0xba12222222228d8ba445958a75a0704d566bf2c8).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0360]);
    
        if (temp0) { return msg.value - memory[0x03c0:0x03e0]; }
        else { stop(); }
    }
    
    function func_2326(var arg0, var arg1) returns (var r0) {
        var var0 = msg.value;
        memory[0x0100:0x0120] = 0xf84d066e;
        memory[0x0120:0x0140] = msg.value;
        memory[0x0140:0x0160] = 0xe0;
        memory[0x0160:0x0180] = 0x01e0;
        memory[0x0180:0x01a0] = address(this);
        memory[0x01a0:0x01c0] = msg.value;
        memory[0x01c0:0x01e0] = address(this);
        memory[0x01e0:0x0200] = msg.value;
        memory[0x0200:0x0220] = CHAINID();
        memory[0x0220:0x0240] = 0x20;
        memory[0x0240:0x0260] = msg.data[memory[0xe0:0x0100] + CHAINID():memory[0xe0:0x0100] + CHAINID() + 0x20];
        memory[0x0260:0x0280] = msg.value;
        memory[0x0280:0x02a0] = CHAINID();
        memory[0x02a0:0x02c0] = arg0;
        memory[0x02c0:0x02e0] = 0xa0;
        memory[0x02e0:0x0300] = msg.value;
        memory[0x0300:0x0320] = 0x02;
        memory[0x0320:0x0340] = arg1;
        memory[0x0340:0x0360] = code[0x299f:0x29bf];
        memory[0x03c0:0x03e0] = msg.value;
        var temp0;
        temp0, memory[0x0360:0x03e0] = address(0xba12222222228d8ba445958a75a0704d566bf2c8).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x0360]);
    
        if (temp0) { return msg.value - memory[0x03c0:0x03e0]; }
    
        var temp1 = returndata.length;
        memory[0x00:0x00 + temp1] = returndata[0x00:0x00 + temp1];
        stop();
    }
    
    function func_23D0(var arg0, var arg1) returns (var r0) {
        memory[0x0100:0x0120] = 0x52bbbe29;
        memory[0x0120:0x0140] = 0xe0;
        memory[0x0140:0x0160] = address(this);
        var temp0 = msg.value;
        var var0 = temp0;
        memory[0x0160:0x0180] = var0;
        memory[0x0180:0x01a0] = msg.data[0x47:0x67] >> 0x60;
    
        if (!byte(msg.data[0x25:0x45], var0)) {
            memory[0x01a0:0x01c0] = msg.value;
            memory[0x01c0:0x01e0] = CHAINID();
            memory[0x01e0:0x0200] = block.timestamp;
            memory[0x0200:0x0220] = msg.data[0x26:0x46];
            memory[0x0220:0x0240] = msg.value;
            memory[0x0240:0x0260] = msg.value;
            memory[0x0260:0x0280] = arg1;
            var temp1 = arg0;
            memory[0x0280:0x02a0] = temp1;
            memory[0x02a0:0x02c0] = 0xc0;
            memory[0x02c0:0x02e0] = msg.value;
            memory[msg.value:msg.value + 0x20] = msg.value;
            var temp2;
            temp2, memory[msg.value:msg.value + 0x20] = address(0xba12222222228d8ba445958a75a0704d566bf2c8).call.gas(msg.gas).value(temp1)(memory[0x011c:0x02e0]);
        
            if (!temp2) { stop(); }
        
        label_2464:
            return memory[msg.value:msg.value + 0x20];
        } else {
            memory[0x0180:0x01a0] = address(this);
            memory[0x01a0:0x01c0] = msg.value;
            memory[0x01c0:0x01e0] = CHAINID();
            memory[0x01e0:0x0200] = block.timestamp;
            memory[0x0200:0x0220] = msg.data[0x26:0x46];
            memory[0x0220:0x0240] = msg.value;
            memory[0x0240:0x0260] = msg.value;
            memory[0x0260:0x0280] = arg1;
            var temp3 = arg0;
            memory[0x0280:0x02a0] = temp3;
            memory[0x02a0:0x02c0] = 0xc0;
            memory[0x02c0:0x02e0] = msg.value;
            memory[msg.value:msg.value + 0x20] = msg.value;
            var temp4;
            temp4, memory[msg.value:msg.value + 0x20] = address(0xba12222222228d8ba445958a75a0704d566bf2c8).call.gas(msg.gas).value(temp3)(memory[0x011c:0x02e0]);
        
            if (temp4) { goto label_2464; }
            else { stop(); }
        }
    }
    
    function func_246D(var arg0, var arg1) {
        var var0 = 0xba12222222228d8ba445958a75a0704d566bf2c8;
    
        if (byte(msg.data[0x07:0x27], msg.value)) {
        label_2496:
            memory[0x0100:0x0120] = 0x52bbbe29;
            memory[0x0120:0x0140] = 0xe0;
            memory[0x0140:0x0160] = address(this);
            memory[0x0160:0x0180] = msg.value;
            memory[0x0180:0x01a0] = address(this);
            memory[0x01a0:0x01c0] = msg.value;
            memory[0x01c0:0x01e0] = CHAINID();
            memory[0x01e0:0x0200] = block.timestamp;
            memory[0x0200:0x0220] = msg.data[memory[0xe0:0x0100] + CHAINID():memory[0xe0:0x0100] + CHAINID() + 0x20];
            memory[0x0220:0x0240] = msg.value;
            memory[0x0240:0x0260] = arg1;
            memory[0x0260:0x0280] = msg.value;
            memory[0x0280:0x02a0] = arg0;
            memory[0x02a0:0x02c0] = 0xc0;
            memory[0x02c0:0x02e0] = msg.value;
            var temp0;
            temp0, memory[msg.value:msg.value + msg.value] = address(var0).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x02e0]);
        
            if (temp0) { return; }
        
            var temp1 = returndata.length;
            memory[0x00:0x00 + temp1] = returndata[0x00:0x00 + temp1];
            stop();
        } else {
            var var1 = 0x2496;
            var var2 = arg1;
            var var3 = arg0;
            var var4 = var0;
            func_09C9(var2, var3, var4);
            goto label_2496;
        }
    }
    
    function func_2503(var arg0, var arg1) returns (var r0) {
        var var0 = msg.value;
        memory[MSIZE():MSIZE() + 0x20] = 0x1e1401f8;
        memory[0x0140:0x0160] = arg1;
        memory[MSIZE():MSIZE() + 0x20] = arg0;
        var temp0;
        temp0, memory[msg.value:msg.value + 0x20] = address(msg.data[0x1a:0x3a]).staticcall.gas(msg.gas)(memory[0x011c:0x0180]);
    
        if (temp0) { return memory[msg.value:msg.value + 0x20]; }
        else { stop(); }
    }
    
    function func_2526(var arg0, var arg1) returns (var r0) {
        var var0 = msg.value;
        memory[0x0100:0x0120] = 0x1e1401f8;
        memory[0x0120:0x0140] = arg1;
        memory[0x0140:0x0160] = msg.value;
        memory[0x0160:0x0180] = arg0;
        memory[msg.value:msg.value + 0x20] = 0x00;
        var temp0;
        temp0, memory[msg.value:msg.value + 0x20] = address(msg.data[memory[0xe0:0x0100] - 0x0b:memory[0xe0:0x0100] - 0x0b + 0x20]).staticcall.gas(msg.gas)(memory[0x011c:0x0180]);
    
        if (temp0) { return memory[msg.value:msg.value + 0x20]; }
        else { stop(); }
    }
    
    function func_255E(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        memory[0x0100:0x0120] = 0xe331d039;
        memory[0x0120:0x0140] = msg.value;
        memory[0x0140:0x0160] = arg1;
        memory[0x0160:0x0180] = arg0;
        memory[0x0180:0x01c0] = code[code.length:code.length + 0x40];
        memory[0x01c0:0x01e0] = msg.data[0x3b:0x5b] >> 0x60;
    
        if (!byte(msg.data[0x25:0x45], msg.value)) {
            memory[msg.value:msg.value + 0x20] = msg.value;
            var temp0;
            temp0, memory[msg.value:msg.value + 0x20] = address(msg.data[0x1a:0x3a]).call.gas(msg.gas).value(arg0)(memory[0x011c:0x01e0]);
        
            if (!temp0) { stop(); }
        
        label_2464:
            return memory[msg.value:msg.value + 0x20];
        } else {
            memory[0x01c0:0x01e0] = address(this);
            memory[msg.value:msg.value + 0x20] = msg.value;
            var temp1;
            temp1, memory[msg.value:msg.value + 0x20] = address(msg.data[0x1a:0x3a]).call.gas(msg.gas).value(arg0)(memory[0x011c:0x01e0]);
        
            if (temp1) { goto label_2464; }
            else { stop(); }
        }
    }
    
    function func_25B0(var arg0, var arg1) {
        var var0 = msg.data[memory[0xe0:0x0100] + CHAINID():memory[0xe0:0x0100] + CHAINID() + 0x20] >> 0x60;
    
        if (byte(msg.data[0x07:0x27], msg.value)) {
        label_25CD:
            memory[0x0100:0x0120] = 0xe331d039;
            memory[0x0120:0x0140] = arg1;
            memory[0x0140:0x0160] = msg.value;
            memory[0x0160:0x0180] = arg0;
            memory[0x0180:0x01c0] = code[code.length:code.length + 0x40];
            memory[0x01c0:0x01e0] = address(this);
            var temp0;
            temp0, memory[msg.value:msg.value + msg.value] = address(var0).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x01e0]);
        
            if (temp0) { return; }
            else { revert(memory[msg.value:msg.value + msg.value]); }
        } else {
            var var1 = 0x25cd;
            var var2 = arg1;
            var var3 = arg0;
            var var4 = var0;
            func_09C9(var2, var3, var4);
            goto label_25CD;
        }
    }
    
    function func_2604(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = msg.value;
        var var1 = arg0;
        var var2 = 0x119c71d3bbac22029622cbaec24854d3d32d2828;
        memory[MSIZE():MSIZE() + 0x20] = 0x7e54f092;
        memory[MSIZE():MSIZE() + 0x20] = msg.data[0x29:0x49];
        memory[msg.value:msg.value + 0x20] = CHAINID();
        memory[msg.value:msg.value + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        var var3 = msg.data[0x0109:0x0129];
        var var4 = msg.data[0x0129:0x0149];
    
        if (!memory[msg.value:msg.value + 0x20]) {
        label_2665:
            memory[0x0100:0x0120] = 0xa65a0e71;
            memory[0x0120:0x0140] = 0x20;
            var temp0 = msg.data[0x27:0x47] >> 0xf0;
            var var5 = temp0;
            memory[MSIZE():MSIZE() + var5] = msg.data[0x49:0x49 + var5];
            memory[msg.value:msg.value + 0x20] = msg.value;
            memory[msg.value:msg.value + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[0x011c:0x011c + var5 + 0x24]);
        
            if (!memory[msg.value:msg.value + 0x20]) { stop(); }
        
            var0 = (var1 * var3) / var4;
            memory[0x0100:0x0120] = 0x70a08231;
            memory[0x0120:0x0140] = msg.data[0xa9:0xc9];
            var temp1;
            temp1, memory[msg.value:msg.value + 0x20] = address(arg1).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        
            if (!temp1) { stop(); }
        
            if (memory[msg.value:msg.value + 0x20] < var0) { stop(); }
        
            memory[0x0100:0x0120] = 0xdd62ed3e;
            memory[0x0140:0x0160] = var2;
            memory[msg.value:msg.value + 0x20] = msg.value;
            var temp2;
            temp2, memory[msg.value:msg.value + 0x20] = address(arg1).staticcall.gas(msg.gas)(memory[0x011c:0x0160]);
        
            if (!temp2) { stop(); }
        
            if (memory[msg.value:msg.value + 0x20] < var0) { stop(); }
        
            arg0 = var1;
            r0 = var0;
            return r0, arg0;
        } else {
            var5 = (memory[msg.value:msg.value + 0x20] - CHAINID() * var4) / var3;
            var temp3 = arg0;
        
            if (temp3 - (byte(msg.data[0x26:0x46], msg.value) * temp3) / 0xff > var5) { stop(); }
        
            var1 = var5;
            goto label_2665;
        }
    }
    
    function func_2703(var arg0) returns (var r0) {
        memory[0x0100:0x0120] = 0x7e54f092;
        var var0 = msg.value;
        var var1 = 0x119c71d3bbac22029622cbaec24854d3d32d2828;
        memory[0x0120:0x0140] = msg.data[memory[0xe0:0x0100] + 0x04:memory[0xe0:0x0100] + 0x04 + 0x20];
        memory[msg.value:msg.value + 0x20] = CHAINID();
        memory[msg.value:msg.value + 0x20] = address(var1).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        var temp0 = memory[0xe0:0x0100] + 0x24;
        var var2 = temp0;
        var var3 = msg.data[var2 + 0xc0:var2 + 0xc0 + 0x20];
        var var4 = msg.data[var2 + 0xe0:var2 + 0xe0 + 0x20];
    
        if (!memory[msg.value:msg.value + 0x20]) {
        label_2774:
            memory[0x0100:0x0120] = 0xa65a0e71;
            memory[0x0120:0x0140] = 0x20;
            var temp1 = msg.data[memory[0xe0:0x0100] + 0x02:memory[0xe0:0x0100] + 0x02 + 0x20] >> 0xf0;
            var var5 = temp1;
            memory[0x0140:0x0140 + var5] = msg.data[var2:var2 + var5];
            memory[msg.value:msg.value + 0x20] = msg.value;
            memory[msg.value:msg.value + 0x20] = address(var1).staticcall.gas(msg.gas)(memory[0x011c:0x011c + var5 + 0x24]);
        
            if (!memory[msg.value:msg.value + 0x20]) { stop(); }
        
            var0 = (arg0 * var3) / var4;
            var var6 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            memory[0x0100:0x0120] = 0x70a08231;
            memory[0x0120:0x0140] = msg.data[var2 + 0x60:var2 + 0x60 + 0x20];
            memory[msg.value:msg.value + 0x20] = address(var6).staticcall.gas(msg.gas)(memory[0x011c:0x0140]);
        
            if (memory[msg.value:msg.value + 0x20] < var0) { stop(); }
        
            memory[0x0100:0x0120] = 0xdd62ed3e;
            memory[0x0140:0x0160] = var1;
            memory[msg.value:msg.value + 0x20] = msg.value;
            memory[msg.value:msg.value + 0x20] = address(var6).staticcall.gas(msg.gas)(memory[0x011c:0x0160]);
        
            if (memory[msg.value:msg.value + 0x20] < var0) { stop(); }
        
            memory[0x80:0xa0] = arg0;
            return var0;
        } else {
            var5 = (memory[msg.value:msg.value + 0x20] - CHAINID() * var4) / var3;
            var temp2 = arg0;
        
            if (temp2 - (byte(msg.data[memory[0xe0:0x0100]:memory[0xe0:0x0100] + 0x20], CHAINID()) * temp2) / 0xff > var5) { stop(); }
        
            arg0 = var5;
            goto label_2774;
        }
    }
    
    function func_2828(var arg0) returns (var r0) {
        var temp0 = msg.value;
        var var0 = temp0;
        var temp1 = msg.data[0x27:0x47] >> 0xf0;
        var var1 = temp1;
        var var2 = var1 + 0x61;
        var temp2 = arg0;
        memory[var0:var0 + var0] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call.gas(msg.gas).value(temp2)(memory[var0:var0 + var0]);
        memory[0x0100:0x0120] = 0xb2610fe3;
        memory[0x0120:0x0140] = 0xc0;
        memory[0x0140:0x0160] = var1 + 0xc0;
        memory[0x0160:0x0180] = msg.value;
        memory[0x0180:0x01a0] = temp2;
        memory[0x01a0:0x01c0] = msg.value;
        memory[0x01c0:0x01e0] = msg.data[memory[0xe0:0x0100] + CHAINID():memory[0xe0:0x0100] + CHAINID() + 0x20] >> 0x60;
    
        if (!byte(msg.data[0x25:0x45], msg.value)) {
            var temp3 = var2;
            memory[0x01e0:0x01e0 + temp3] = msg.data[0x49:0x49 + temp3];
            memory[msg.value:msg.value + 0x20] = msg.value;
            var temp4;
            temp4, memory[msg.value:msg.value + 0x20] = address(0x119c71d3bbac22029622cbaec24854d3d32d2828).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x011c + temp3 + 0xc4]);
        
            if (!temp4) { revert(memory[msg.value:msg.value + msg.value]); }
        
        label_0B49:
            return memory[msg.value:msg.value + 0x20];
        } else {
            memory[0x01c0:0x01e0] = address(this);
            var temp5 = var2;
            memory[0x01e0:0x01e0 + temp5] = msg.data[0x49:0x49 + temp5];
            memory[msg.value:msg.value + 0x20] = msg.value;
            var temp6;
            temp6, memory[msg.value:msg.value + 0x20] = address(0x119c71d3bbac22029622cbaec24854d3d32d2828).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x011c + temp5 + 0xc4]);
        
            if (temp6) { goto label_0B49; }
            else { revert(memory[msg.value:msg.value + msg.value]); }
        }
    }
    
    function func_28C7(var arg0) {
        var var0 = 0x119c71d3bbac22029622cbaec24854d3d32d2828;
    
        if (byte(msg.data[0x07:0x27], msg.value)) {
        label_28F2:
            var temp0 = msg.data[memory[0xe0:0x0100] + 0x02:memory[0xe0:0x0100] + 0x02 + 0x20] >> 0xf0;
            var var1 = temp0;
            var temp1 = var1 + 0x61;
            var var2 = temp1;
            memory[0x0100:0x0120] = 0xb2610fe3;
            memory[0x0120:0x0140] = 0xc0;
            memory[0x0140:0x0160] = var1 + 0xc0;
            memory[0x0160:0x0180] = msg.value;
            memory[0x0180:0x01a0] = memory[0x80:0xa0];
            memory[0x01a0:0x01c0] = msg.value;
            memory[0x01c0:0x01e0] = address(this);
            memory[0x01e0:0x01e0 + var2] = msg.data[memory[0xe0:0x0100] + 0x24:memory[0xe0:0x0100] + 0x24 + var2];
            memory[0x20:0x40] = msg.value;
            var temp2;
            temp2, memory[0x20:0x40] = address(var0).call.gas(msg.gas).value(msg.value)(memory[0x011c:0x011c + var2 + 0xc4]);
        
            if (!temp2) { revert(memory[msg.value:msg.value + msg.value]); }
        
            memory[msg.value:msg.value + 0x20] = 0x2e1a7d4d;
            memory[msg.value:msg.value + msg.value] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call.gas(msg.gas).value(msg.value)(memory[0x1c:0x40]);
            return;
        } else {
            var1 = 0x28f2;
            var2 = arg0;
            var var3 = memory[0x80:0xa0];
            var var4 = var0;
            func_09C9(var2, var3, var4);
            goto label_28F2;
        }
    }
}