contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length < 0x04) {
        label_0144:
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = msg.sender;
            memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = msg.value;
            var temp1 = memory[0x40:0x60];
            log(memory[temp1:temp1 + temp0 - temp1 + 0x40], [0xa419615bc8fda4c87663805ee2a3597a6d71c1d476911d9892f340d965bc7bf1]);
            stop();
        } else {
            var var0 = msg.data[0x00:0x20] >> 0xe0;
        
            if (0x6b2a8f65 > var0) {
                if (0x2e2d726c > var0) {
                    if (var0 == 0x14ae3c09) {
                        // Dispatch table entry for 0x14ae3c09 (unknown)
                        var var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x01aa;
                        var var2 = 0x04;
                        var var3 = msg.data.length - var2;
                    
                        if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                    
                        var2 = func_01A3(var2, var3);
                    
                    label_01AA:
                        var temp2 = memory[0x40:0x60];
                        memory[temp2:temp2 + 0x20] = var2 & (0x01 << 0xa0) - 0x01;
                        var temp3 = memory[0x40:0x60];
                        return memory[temp3:temp3 + temp2 - temp3 + 0x20];
                    } else if (var0 == 0x15b21082) {
                        // Dispatch table entry for requestCustodianChange(address)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x01f9;
                        var2 = 0x04;
                        var3 = msg.data.length - var2;
                    
                        if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                    
                        var1 = requestCustodianChange(var2, var3);
                    
                    label_01F9:
                        var temp4 = memory[0x40:0x60];
                        memory[temp4:temp4 + 0x20] = var1;
                        var temp5 = memory[0x40:0x60];
                        return memory[temp5:temp5 + temp4 - temp5 + 0x20];
                    } else if (var0 == 0x233ecf78) {
                        // Dispatch table entry for 0x233ecf78 (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x01f9;
                        var2 = 0x04;
                        var3 = msg.data.length - var2;
                    
                        if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                    
                        var1 = func_022E(var2, var3);
                        goto label_01F9;
                    } else if (var0 == 0x2ca40a33) {
                        // Dispatch table entry for 0x2ca40a33 (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0268;
                        var2 = 0x04;
                        var3 = msg.data.length - var2;
                    
                        if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                    
                        func_0261(var2, var3);
                        stop();
                    } else { goto label_0144; }
                } else if (0x3a8343ee > var0) {
                    if (var0 == 0x2e2d726c) {
                        // Dispatch table entry for 0x2e2d726c (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0268;
                        var2 = 0x04;
                        var3 = msg.data.length - var2;
                    
                        if (var3 < 0x40) { revert(memory[0x00:0x00]); }
                    
                        func_028D(var2, var3);
                        stop();
                    } else if (var0 == 0x375b74c3) {
                        // Dispatch table entry for custodian()
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x01aa;
                        var2 = custodian();
                        goto label_01AA;
                    } else { goto label_0144; }
                } else if (var0 == 0x3a8343ee) {
                    // Dispatch table entry for confirmCustodianChange(bytes32)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0268;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    confirmCustodianChange(var2, var3);
                    stop();
                } else if (var0 == 0x3cd18ca0) {
                    // Dispatch table entry for 0x3cd18ca0 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0268;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x40) { revert(memory[0x00:0x00]); }
                
                    func_0359(var2, var3);
                    stop();
                } else if (var0 == 0x3f53c36c) {
                    // Dispatch table entry for 0x3f53c36c (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x01f9;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    var1 = func_03E6(var2, var3);
                    goto label_01F9;
                } else { goto label_0144; }
            } else if (0xcf6e4488 > var0) {
                if (0x96aa7368 > var0) {
                    if (var0 == 0x6b2a8f65) {
                        // Dispatch table entry for 0x6b2a8f65 (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0268;
                        var2 = 0x04;
                        var3 = msg.data.length - var2;
                    
                        if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                    
                        func_0419(var2, var3);
                        stop();
                    } else if (var0 == 0x801ead1d) {
                        // Dispatch table entry for 0x801ead1d (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0453;
                        var2 = 0x04;
                        var3 = msg.data.length - var2;
                    
                        if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                    
                        var2 = func_0443(var2, var3);
                        var temp6 = memory[0x40:0x60];
                        memory[temp6:temp6 + 0x20] = !!var2;
                        var temp7 = memory[0x40:0x60];
                        return memory[temp7:temp7 + temp6 - temp7 + 0x20];
                    } else { goto label_0144; }
                } else if (var0 == 0x96aa7368) {
                    // Dispatch table entry for 0x96aa7368 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0268;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    func_048A(var2, var3);
                    stop();
                } else if (var0 == 0x98a89897) {
                    // Dispatch table entry for 0x98a89897 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0268;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x40) { revert(memory[0x00:0x00]); }
                
                    func_0507(var2, var3);
                    stop();
                } else if (var0 == 0xcb81fecf) {
                    // Dispatch table entry for lockRequestCount()
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x01f9;
                    var2 = lockRequestCount();
                    goto label_01F9;
                } else { goto label_0144; }
            } else if (0xefcab173 > var0) {
                if (var0 == 0xcf6e4488) {
                    // Dispatch table entry for custodianChangeReqs(bytes32)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x01aa;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    var2 = custodianChangeReqs(var2, var3);
                    goto label_01AA;
                } else if (var0 == 0xdfd1fb7a) {
                    // Dispatch table entry for 0xdfd1fb7a (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0268;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x40) { revert(memory[0x00:0x00]); }
                
                    func_0615(var2, var3);
                    stop();
                } else { goto label_0144; }
            } else if (var0 == 0xefcab173) {
                // Dispatch table entry for 0xefcab173 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x01aa;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                var2 = func_06A2(var2, var3);
                goto label_01AA;
            } else if (var0 == 0xfa558b71) {
                // Dispatch table entry for transferERC20(address,address[],uint256[])
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0268;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x60) { revert(memory[0x00:0x00]); }
            
                transferERC20(var2, var3);
                stop();
            } else if (var0 == 0xfd404b4c) {
                // Dispatch table entry for 0xfd404b4c (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0268;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x60) { revert(memory[0x00:0x00]); }
            
                func_07AB(var2, var3);
                stop();
            } else { goto label_0144; }
        }
    }
    
    function func_01A3(var arg0, var arg1) returns (var arg0) {
        arg0 = msg.data[arg0:arg0 + 0x20];
        memory[0x20:0x40] = 0x04;
        memory[0x00:0x20] = arg0;
        return storage[keccak256(memory[0x00:0x40])] & (0x01 << 0xa0) - 0x01;
    }
    
    function requestCustodianChange(var arg0, var arg1) returns (var r0) {
        arg0 = msg.data[arg0:arg0 + 0x20] & (0x01 << 0xa0) - 0x01;
        arg1 = 0x00;
    
        if (arg0 & (0x01 << 0xa0) - 0x01) {
            var var0 = 0x088d;
            var0 = func_177C();
            var temp0 = memory[0x40:0x60];
            memory[0x40:0x60] = temp0 + 0x20;
            var temp1 = (0x01 << 0xa0) - 0x01;
            var temp2 = arg0 & temp1;
            memory[temp0:temp0 + 0x20] = temp2;
            var temp3 = var0;
            memory[0x00:0x20] = temp3;
            memory[0x20:0x40] = 0x02;
            var temp4 = keccak256(memory[0x00:0x40]);
            storage[temp4] = (storage[temp4] & ~((0x01 << 0xa0) - 0x01)) | (temp1 & memory[temp0:temp0 + 0x20]);
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = temp3;
            memory[temp5 + 0x20:temp5 + 0x20 + 0x20] = msg.sender;
            memory[temp5 + 0x40:temp5 + 0x40 + 0x20] = temp2;
            var temp6 = memory[0x40:0x60];
            log(memory[temp6:temp6 + temp5 - temp6 + 0x60], [0xd76fc900a7e1a6fcf11d54b7ba943918df6c53a3128140658c389b3da1e997ba]);
            return temp3;
        } else {
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = 0x461bcd << 0xe5;
            memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = 0x20;
            memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = 0x0c;
            memory[temp7 + 0x44:temp7 + 0x44 + 0x20] = 0x7a65726f2061646472657373 << 0xa0;
            var temp8 = memory[0x40:0x60];
            revert(memory[temp8:temp8 + temp7 - temp8 + 0x64]);
        }
    }
    
    function func_022E(var arg0, var arg1) returns (var r0) {
        arg0 = msg.data[arg0:arg0 + 0x20] & (0x01 << 0xa0) - 0x01;
        arg1 = 0x00;
        var var0 = 0x0921;
        var var1 = 0x05;
        var var2 = arg0;
        var0 = func_17C5(var1, var2);
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = var0;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = msg.sender;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = arg0 & (0x01 << 0xa0) - 0x01;
        var temp1 = memory[0x40:0x60];
        log(memory[temp1:temp1 + temp0 - temp1 + 0x60], [0x80484ea176012d2765209d6a93b423d605ad7bddfdd769252a85b53268f5a845]);
        return var0;
    }
    
    function func_0261(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender == storage[0x01] & (0x01 << 0xa0) - 0x01) {
            arg1 = 0x00;
            var var0 = 0x09cc;
            var var1 = 0x05;
            var var2 = arg0;
            var0 = func_1857(var1, var2);
            var temp0 = var0 & (0x01 << 0xa0) - 0x01;
            memory[0x00:0x20] = temp0;
            memory[0x20:0x40] = 0x03;
            var temp1 = keccak256(memory[0x00:0x40]);
            storage[temp1] = storage[temp1] & ~0xff;
            var temp2 = arg0;
            memory[0x00:0x20] = temp2;
            memory[0x20:0x40] = 0x05;
            var temp3 = keccak256(memory[0x00:0x40]);
            storage[temp3] = storage[temp3] & ~((0x01 << 0xa0) - 0x01);
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = temp2;
            memory[temp4 + 0x20:temp4 + 0x20 + 0x20] = temp0;
            var temp5 = memory[0x40:0x60];
            log(memory[temp5:temp5 + temp4 - temp5 + 0x40], [0x18d5ef563b47e3b56210ead4e105d6fe2315717931d4c120135841bc9d6c7383]);
            return;
        } else {
            var temp6 = memory[0x40:0x60];
            memory[temp6:temp6 + 0x20] = 0x461bcd << 0xe5;
            memory[temp6 + 0x04:temp6 + 0x04 + 0x20] = 0x20;
            memory[temp6 + 0x24:temp6 + 0x24 + 0x20] = 0x0c;
            memory[temp6 + 0x44:temp6 + 0x44 + 0x20] = 0x1d5b985d5d1a1bdc9a5e9959 << 0xa2;
            var temp7 = memory[0x40:0x60];
            revert(memory[temp7:temp7 + temp6 - temp7 + 0x64]);
        }
    }
    
    function func_028D(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & (0x01 << 0xa0) - 0x01;
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
        var var3 = var1;
        var1 = temp2 + 0x20;
    
        if ((var2 > 0x0100000000) | (var1 + var2 * 0x20 > arg1)) { revert(memory[0x00:0x00]); }
    
        arg1 = var1;
        var0 = var2;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x03;
    
        if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
            var1 = 0x00;
        
            if (var1 >= var0) {
            label_0B41:
                return;
            } else {
            label_0AA5:
                var2 = 0x00;
                var3 = arg1;
                var var4 = var0;
                var var5 = var1;
            
                if (var5 >= var4) { assert(); }
            
                var2 = msg.data[var5 * 0x20 + var3:var5 * 0x20 + var3 + 0x20] & (0x01 << 0xa0) - 0x01;
                var temp4 = var2 & (0x01 << 0xa0) - 0x01;
                var3 = temp4;
                var4 = 0xe00af4a7;
                var temp5 = memory[0x40:0x60];
                memory[temp5:temp5 + 0x20] = (var4 & 0xffffffff) << 0xe0;
                var temp6 = temp5 + 0x04;
                memory[temp6:temp6 + 0x20] = arg0 & (0x01 << 0xa0) - 0x01 & (0x01 << 0xa0) - 0x01;
                var5 = temp6 + 0x20;
                var var6 = 0x00;
                var var7 = memory[0x40:0x60];
                var var8 = var5 - var7;
                var var9 = var7;
                var var10 = 0x00;
                var var11 = var3;
                var var12 = !address(var11).code.length;
            
                if (var12) { revert(memory[0x00:0x00]); }
            
                var temp7;
                temp7, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
                var6 = !temp7;
            
                if (!var6) {
                    var1 = var1 + 0x01;
                
                    if (var1 >= var0) { goto label_0B41; }
                    else { goto label_0AA5; }
                } else {
                    var temp8 = returndata.length;
                    memory[0x00:0x00 + temp8] = returndata[0x00:0x00 + temp8];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            }
        } else {
            var temp9 = memory[0x40:0x60];
            memory[temp9:temp9 + 0x20] = 0x461bcd << 0xe5;
            memory[temp9 + 0x04:temp9 + 0x04 + 0x20] = 0x20;
            memory[temp9 + 0x24:temp9 + 0x24 + 0x20] = 0x0c;
            memory[temp9 + 0x44:temp9 + 0x44 + 0x20] = 0x1d5b985d5d1a1bdc9a5e9959 << 0xa2;
            var temp10 = memory[0x40:0x60];
            revert(memory[temp10:temp10 + temp9 - temp10 + 0x64]);
        }
    }
    
    function confirmCustodianChange(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender == storage[0x01] & (0x01 << 0xa0) - 0x01) {
            arg1 = 0x0bad;
            var var0 = arg0;
            arg1 = func_18D2(var0);
            var temp0 = (0x01 << 0xa0) - 0x01;
            var temp1 = ~((0x01 << 0xa0) - 0x01);
            storage[0x01] = (temp1 & storage[0x01]) | (temp0 & arg1);
            var temp2 = arg0;
            memory[0x00:0x20] = temp2;
            memory[0x20:0x40] = 0x02;
            var temp3 = keccak256(memory[0x00:0x40]);
            storage[temp3] = temp1 & storage[temp3];
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = temp2;
            memory[temp4 + 0x20:temp4 + 0x20 + 0x20] = temp0 & storage[0x01];
            var temp5 = memory[0x40:0x60];
            log(memory[temp5:temp5 + temp4 - temp5 + 0x40], [0x9a99272c0f6b7a30ef9e76e684a7cd408bfd4f11a72f36a8e276253c920e442d]);
            return;
        } else {
            var temp6 = memory[0x40:0x60];
            memory[temp6:temp6 + 0x20] = 0x461bcd << 0xe5;
            memory[temp6 + 0x04:temp6 + 0x04 + 0x20] = 0x20;
            memory[temp6 + 0x24:temp6 + 0x24 + 0x20] = 0x0c;
            memory[temp6 + 0x44:temp6 + 0x44 + 0x20] = 0x1d5b985d5d1a1bdc9a5e9959 << 0xa2;
            var temp7 = memory[0x40:0x60];
            revert(memory[temp7:temp7 + temp6 - temp7 + 0x64]);
        }
    }
    
    function func_0359(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & (0x01 << 0xa0) - 0x01;
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
        var var3 = var1;
        var1 = temp2 + 0x20;
    
        if ((var2 > 0x0100000000) | (var1 + var2 * 0x20 > arg1)) { revert(memory[0x00:0x00]); }
    
        arg1 = var1;
        var0 = var2;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x03;
    
        if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
            var1 = arg0;
            var2 = 0x00;
        
            if (var2 >= var0) {
            label_0E20:
                return;
            } else {
            label_0C81:
                var3 = 0x00;
                var var4 = arg1;
                var var5 = var0;
                var var6 = var2;
            
                if (var6 >= var5) { assert(); }
            
                var temp4 = msg.data[var6 * 0x20 + var4:var6 * 0x20 + var4 + 0x20] & (0x01 << 0xa0) - 0x01;
                var3 = temp4;
                var4 = 0x00;
                var5 = var1 & (0x01 << 0xa0) - 0x01;
                var6 = 0x70a08231;
                var temp5 = memory[0x40:0x60];
                memory[temp5:temp5 + 0x20] = (var6 & 0xffffffff) << 0xe0;
                var temp6 = temp5 + 0x04;
                memory[temp6:temp6 + 0x20] = var3 & (0x01 << 0xa0) - 0x01 & (0x01 << 0xa0) - 0x01;
                var var7 = temp6 + 0x20;
                var var8 = 0x20;
                var var9 = memory[0x40:0x60];
                var var10 = var7 - var9;
                var var11 = var9;
                var var12 = var5;
                var var13 = !address(var12).code.length;
            
                if (var13) { revert(memory[0x00:0x00]); }
            
                var temp7;
                temp7, memory[var9:var9 + var8] = address(var12).staticcall.gas(msg.gas)(memory[var11:var11 + var10]);
                var8 = !temp7;
            
                if (!var8) {
                    var5 = memory[0x40:0x60];
                    var6 = returndata.length;
                
                    if (var6 < 0x20) { revert(memory[0x00:0x00]); }
                
                    var temp8 = memory[var5:var5 + 0x20];
                    var temp9 = memory[0x40:0x60];
                    memory[temp9:temp9 + 0x20] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
                    var temp10 = (0x01 << 0xa0) - 0x01;
                    memory[temp9 + 0x04:temp9 + 0x04 + 0x20] = temp10 & var3;
                    memory[temp9 + 0x24:temp9 + 0x24 + 0x20] = address(this);
                    memory[temp9 + 0x44:temp9 + 0x44 + 0x20] = temp8;
                    var4 = temp8;
                    var5 = var1 & temp10;
                    var6 = 0x23b872dd;
                    var7 = temp9 + 0x64;
                    var8 = 0x20;
                    var9 = memory[0x40:0x60];
                    var10 = temp9 - var9 + 0x64;
                    var11 = var9;
                    var12 = 0x00;
                    var13 = var5;
                    var var14 = !address(var13).code.length;
                
                    if (var14) { revert(memory[0x00:0x00]); }
                
                    var temp11;
                    temp11, memory[var9:var9 + var8] = address(var13).call.gas(msg.gas).value(var12)(memory[var11:var11 + var10]);
                    var8 = !temp11;
                
                    if (!var8) {
                        var5 = memory[0x40:0x60];
                        var6 = returndata.length;
                    
                        if (var6 < 0x20) { revert(memory[0x00:0x00]); }
                    
                        if (memory[var5:var5 + 0x20]) {
                            var2 = var2 + 0x01;
                        
                            if (var2 >= var0) { goto label_0E20; }
                            else { goto label_0C81; }
                        } else {
                            var temp12 = memory[0x40:0x60];
                            memory[temp12:temp12 + 0x20] = 0x461bcd << 0xe5;
                            memory[temp12 + 0x04:temp12 + 0x04 + 0x20] = 0x20;
                            memory[temp12 + 0x24:temp12 + 0x24 + 0x20] = 0x12;
                            memory[temp12 + 0x44:temp12 + 0x44 + 0x20] = 0x7472616e7366657246726f6d2066616c73650000000000000000000000000000;
                            var temp13 = memory[0x40:0x60];
                            revert(memory[temp13:temp13 + temp12 - temp13 + 0x64]);
                        }
                    } else {
                        var temp14 = returndata.length;
                        memory[0x00:0x00 + temp14] = returndata[0x00:0x00 + temp14];
                        revert(memory[0x00:0x00 + returndata.length]);
                    }
                } else {
                    var temp15 = returndata.length;
                    memory[0x00:0x00 + temp15] = returndata[0x00:0x00 + temp15];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            }
        } else {
            var temp16 = memory[0x40:0x60];
            memory[temp16:temp16 + 0x20] = 0x461bcd << 0xe5;
            memory[temp16 + 0x04:temp16 + 0x04 + 0x20] = 0x20;
            memory[temp16 + 0x24:temp16 + 0x24 + 0x20] = 0x0c;
            memory[temp16 + 0x44:temp16 + 0x44 + 0x20] = 0x1d5b985d5d1a1bdc9a5e9959 << 0xa2;
            var temp17 = memory[0x40:0x60];
            revert(memory[temp17:temp17 + temp16 - temp17 + 0x64]);
        }
    }
    
    function func_03E6(var arg0, var arg1) returns (var r0) {
        arg0 = msg.data[arg0:arg0 + 0x20] & (0x01 << 0xa0) - 0x01;
        arg1 = 0x00;
        var var0 = 0x0e34;
        var var1 = 0x04;
        var var2 = arg0;
        var0 = func_17C5(var1, var2);
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = var0;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = msg.sender;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = arg0 & (0x01 << 0xa0) - 0x01;
        var temp1 = memory[0x40:0x60];
        log(memory[temp1:temp1 + temp0 - temp1 + 0x60], [0x86347f0dc6401085afc2e65b03928402543790cfec1c26238fb9d5384a0d0150]);
        return var0;
    }
    
    function func_0419(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender == storage[0x01] & (0x01 << 0xa0) - 0x01) {
            arg1 = 0x00;
            var var0 = 0x0edf;
            var var1 = 0x04;
            var var2 = arg0;
            var0 = func_1857(var1, var2);
            var temp0 = var0 & (0x01 << 0xa0) - 0x01;
            memory[0x00:0x20] = temp0;
            memory[0x20:0x40] = 0x03;
            var temp1 = keccak256(memory[0x00:0x40]);
            storage[temp1] = (storage[temp1] & ~0xff) | 0x01;
            var temp2 = arg0;
            memory[0x00:0x20] = temp2;
            memory[0x20:0x40] = 0x04;
            var temp3 = keccak256(memory[0x00:0x40]);
            storage[temp3] = storage[temp3] & ~((0x01 << 0xa0) - 0x01);
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = temp2;
            memory[temp4 + 0x20:temp4 + 0x20 + 0x20] = temp0;
            var temp5 = memory[0x40:0x60];
            log(memory[temp5:temp5 + temp4 - temp5 + 0x40], [0xd201726f779e2288dca2c25bc8608ac2616c615a445dbc0f8e7bb86101bcb393]);
            return;
        } else {
            var temp6 = memory[0x40:0x60];
            memory[temp6:temp6 + 0x20] = 0x461bcd << 0xe5;
            memory[temp6 + 0x04:temp6 + 0x04 + 0x20] = 0x20;
            memory[temp6 + 0x24:temp6 + 0x24 + 0x20] = 0x0c;
            memory[temp6 + 0x44:temp6 + 0x44 + 0x20] = 0x1d5b985d5d1a1bdc9a5e9959 << 0xa2;
            var temp7 = memory[0x40:0x60];
            revert(memory[temp7:temp7 + temp6 - temp7 + 0x64]);
        }
    }
    
    function func_0443(var arg0, var arg1) returns (var arg0) {
        arg0 = msg.data[arg0:arg0 + 0x20] & (0x01 << 0xa0) - 0x01;
        memory[0x20:0x40] = 0x03;
        memory[0x00:0x20] = arg0;
        return storage[keccak256(memory[0x00:0x40])] & 0xff;
    }
    
    function func_048A(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = temp0 + arg1;
        arg1 = temp0;
        var var0 = arg1 + 0x20;
        var var1 = msg.data[arg1:arg1 + 0x20];
    
        if (var1 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp1 = arg1 + var1;
        var1 = temp1;
    
        if (var1 + 0x20 > arg0) { revert(memory[0x00:0x00]); }
    
        var temp2 = var1;
        var temp3 = msg.data[temp2:temp2 + 0x20];
        var1 = temp3;
        var temp4 = var0;
        var0 = temp2 + 0x20;
        var var2 = temp4;
    
        if ((var1 > 0x0100000000) | (var0 + var1 * 0x20 > arg0)) { revert(memory[0x00:0x00]); }
    
        arg0 = var0;
        arg1 = var1;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x03;
    
        if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
            var0 = 0x00;
        
            if (var0 >= arg1) {
            label_104F:
                return;
            } else {
            label_0FD0:
                var1 = 0x00;
                var2 = arg0;
                var var3 = arg1;
                var var4 = var0;
            
                if (var4 >= var3) { assert(); }
            
                var1 = msg.data[var4 * 0x20 + var2:var4 * 0x20 + var2 + 0x20] & (0x01 << 0xa0) - 0x01;
                var temp5 = var1 & (0x01 << 0xa0) - 0x01;
                var2 = temp5;
                var3 = 0x90ec71bd;
                var temp6 = memory[0x40:0x60];
                memory[temp6:temp6 + 0x20] = (var3 & 0xffffffff) << 0xe0;
                var4 = temp6 + 0x04;
                var var5 = 0x00;
                var var6 = memory[0x40:0x60];
                var var7 = var4 - var6;
                var var8 = var6;
                var var9 = 0x00;
                var var10 = var2;
                var var11 = !address(var10).code.length;
            
                if (var11) { revert(memory[0x00:0x00]); }
            
                var temp7;
                temp7, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
                var5 = !temp7;
            
                if (!var5) {
                    var0 = var0 + 0x01;
                
                    if (var0 >= arg1) { goto label_104F; }
                    else { goto label_0FD0; }
                } else {
                    var temp8 = returndata.length;
                    memory[0x00:0x00 + temp8] = returndata[0x00:0x00 + temp8];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            }
        } else {
            var temp9 = memory[0x40:0x60];
            memory[temp9:temp9 + 0x20] = 0x461bcd << 0xe5;
            memory[temp9 + 0x04:temp9 + 0x04 + 0x20] = 0x20;
            memory[temp9 + 0x24:temp9 + 0x24 + 0x20] = 0x0c;
            memory[temp9 + 0x44:temp9 + 0x44 + 0x20] = 0x1d5b985d5d1a1bdc9a5e9959 << 0xa2;
            var temp10 = memory[0x40:0x60];
            revert(memory[temp10:temp10 + temp9 - temp10 + 0x64]);
        }
    }
    
    function func_0507(var arg0, var arg1) {
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
    
        if ((var1 > 0x0100000000) | (var0 + var1 * 0x20 > arg0)) { revert(memory[0x00:0x00]); }
    
        var temp6 = var2;
        var temp7 = arg0;
        arg0 = var0;
        var temp8 = arg1;
        arg1 = var1;
        var1 = temp8;
        var0 = temp7;
        var2 = temp6 + 0x20;
        var var3 = msg.data[temp6:temp6 + 0x20];
    
        if (var3 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp9 = var1 + var3;
        var3 = temp9;
    
        if (var3 + 0x20 > var0) { revert(memory[0x00:0x00]); }
    
        var temp10 = var3;
        var temp11 = msg.data[temp10:temp10 + 0x20];
        var3 = temp11;
        var temp12 = var2;
        var2 = temp10 + 0x20;
        var var4 = temp12;
    
        if ((var3 > 0x0100000000) | (var2 + var3 * 0x20 > var0)) { revert(memory[0x00:0x00]); }
    
        var0 = var2;
        var1 = var3;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x03;
    
        if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) {
            var temp21 = memory[0x40:0x60];
            memory[temp21:temp21 + 0x20] = 0x461bcd << 0xe5;
            memory[temp21 + 0x04:temp21 + 0x04 + 0x20] = 0x20;
            memory[temp21 + 0x24:temp21 + 0x24 + 0x20] = 0x0c;
            memory[temp21 + 0x44:temp21 + 0x44 + 0x20] = 0x1d5b985d5d1a1bdc9a5e9959 << 0xa2;
            var temp22 = memory[0x40:0x60];
            revert(memory[temp22:temp22 + temp21 - temp22 + 0x64]);
        } else if (var1 == arg1) {
            var2 = 0x00;
        
            if (var2 >= arg1) {
            label_0E20:
                return;
            } else {
            label_1107:
                var3 = 0x00;
                var4 = arg0;
                var var5 = arg1;
                var var6 = var2;
            
                if (var6 >= var5) { assert(); }
            
                var3 = msg.data[var6 * 0x20 + var4:var6 * 0x20 + var4 + 0x20] & (0x01 << 0xa0) - 0x01;
                var4 = 0x00;
                var5 = var0;
                var6 = var1;
                var var7 = var2;
            
                if (var7 >= var6) { assert(); }
            
                var temp13 = msg.data[var7 * 0x20 + var5:var7 * 0x20 + var5 + 0x20];
                var4 = temp13;
                var temp14 = memory[0x40:0x60];
                var temp15;
                temp15, memory[temp14:temp14 + 0x00] = address(var3 & (0x01 << 0xa0) - 0x01).call.gas(!var4 * 0x08fc).value(var4)(memory[temp14:temp14 + memory[0x40:0x60] - temp14]);
                var5 = !temp15;
            
                if (!var5) {
                    var temp16 = memory[0x40:0x60];
                    memory[temp16:temp16 + 0x20] = var3 & (0x01 << 0xa0) - 0x01;
                    memory[temp16 + 0x20:temp16 + 0x20 + 0x20] = var4;
                    var temp17 = memory[0x40:0x60];
                    log(memory[temp17:temp17 + temp16 - temp17 + 0x40], [0xf35d7b6a86398c5aabcd316353d6f069dbc1be6fa0ab49d809bfbf6d96f55575]);
                    var2 = var2 + 0x01;
                
                    if (var2 >= arg1) { goto label_0E20; }
                    else { goto label_1107; }
                } else {
                    var temp18 = returndata.length;
                    memory[0x00:0x00 + temp18] = returndata[0x00:0x00 + temp18];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            }
        } else {
            var temp19 = memory[0x40:0x60];
            memory[temp19:temp19 + 0x20] = 0x461bcd << 0xe5;
            memory[temp19 + 0x04:temp19 + 0x04 + 0x20] = 0x20;
            memory[temp19 + 0x24:temp19 + 0x24 + 0x20] = 0x11;
            memory[temp19 + 0x44:temp19 + 0x44 + 0x20] = 0x6d69736d61746368656420617272617973000000000000000000000000000000;
            var temp20 = memory[0x40:0x60];
            revert(memory[temp20:temp20 + temp19 - temp20 + 0x64]);
        }
    }
    
    function custodianChangeReqs(var arg0, var arg1) returns (var arg0) {
        arg0 = msg.data[arg0:arg0 + 0x20];
        memory[0x20:0x40] = 0x02;
        memory[0x00:0x20] = arg0;
        return storage[keccak256(memory[0x00:0x40])] & (0x01 << 0xa0) - 0x01;
    }
    
    function func_0615(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & (0x01 << 0xa0) - 0x01;
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
    
        arg1 = var1;
        var0 = var2;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x03;
    
        if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
            var1 = 0x00;
            var2 = 0x60;
            var temp5 = var0;
            var temp6 = memory[0x40:0x60];
            memory[temp6:temp6 + temp5] = msg.data[arg1:arg1 + temp5];
            var temp7 = memory[0x40:0x60];
            var temp8;
            temp8, memory[temp7:temp7 + 0x00] = address(arg0 & (0x01 << 0xa0) - 0x01).call.gas(msg.gas)(memory[temp7:temp7 + (temp6 + temp5) - temp7]);
            var var4 = returndata.length;
            var var5 = var4;
        
            if (var5 == 0x00) {
                var2 = 0x60;
                var1 = var3;
            
                if (!var1) {
                label_1393:
                    var3 = 0xaba0bbd4bfc61304155c867f51e2bc1c6f844c4d852c9bdb15c2cd9c3c8e6274;
                    var4 = arg0;
                    var5 = arg1;
                    var temp9 = var0;
                    var var6 = temp9;
                    var temp10 = var2;
                    var var7 = temp10;
                    var temp11 = memory[0x40:0x60];
                    var var8 = temp11;
                    memory[var8:var8 + 0x20] = var4 & (0x01 << 0xa0) - 0x01 & (0x01 << 0xa0) - 0x01;
                    var temp12 = var8 + 0x20;
                    var var9 = temp12;
                    var temp13 = var9 + 0x20;
                    var var10 = temp13;
                    var temp14 = var10 + 0x20;
                    memory[var9:var9 + 0x20] = temp14 - var8;
                    memory[temp14:temp14 + 0x20] = var6;
                    var temp15 = temp14 + 0x20;
                    memory[temp15:temp15 + var6] = msg.data[var5:var5 + var6];
                    memory[var6 + temp15:var6 + temp15 + 0x20] = 0x00;
                    var temp16 = temp15 + (var6 + 0x1f & ~0x1f);
                    memory[var10:var10 + 0x20] = temp16 - var8;
                    memory[temp16:temp16 + 0x20] = memory[var7:var7 + 0x20];
                    var var11 = temp16 + 0x20;
                    var var12 = var7 + 0x20;
                    var var13 = memory[var7:var7 + 0x20];
                    var var14 = var13;
                    var var15 = var11;
                    var var17 = 0x00;
                    var var16 = var12;
                
                    if (var17 >= var14) {
                    label_143A:
                        var temp17 = var13;
                        var11 = temp17 + var11;
                        var12 = temp17 & 0x1f;
                    
                        if (!var12) {
                            var temp18 = memory[0x40:0x60];
                            log(memory[temp18:temp18 + var11 - temp18], [stack[-10]]);
                            return;
                        } else {
                            var temp19 = var12;
                            var temp20 = var11 - temp19;
                            memory[temp20:temp20 + 0x20] = ~(0x0100 ** (0x20 - temp19) - 0x01) & memory[temp20:temp20 + 0x20];
                            var temp21 = memory[0x40:0x60];
                            log(memory[temp21:temp21 + (temp20 + 0x20) - temp21], [stack[-10]]);
                            return;
                        }
                    } else {
                    label_142B:
                        var temp22 = var17;
                        memory[temp22 + var15:temp22 + var15 + 0x20] = memory[temp22 + var16:temp22 + var16 + 0x20];
                        var17 = temp22 + 0x20;
                    
                        if (var17 >= var14) { goto label_143A; }
                        else { goto label_142B; }
                    }
                } else {
                label_12AA:
                    var3 = 0x18e614c03fae7d4f0ad0790905bc76b8690e946c477b2b8970403bcad27a9b96;
                    var4 = arg0;
                    var5 = arg1;
                    var temp23 = var0;
                    var6 = temp23;
                    var temp24 = var2;
                    var7 = temp24;
                    var temp25 = memory[0x40:0x60];
                    var8 = temp25;
                    memory[var8:var8 + 0x20] = var4 & (0x01 << 0xa0) - 0x01 & (0x01 << 0xa0) - 0x01;
                    var temp26 = var8 + 0x20;
                    var9 = temp26;
                    var temp27 = var9 + 0x20;
                    var10 = temp27;
                    var temp28 = var10 + 0x20;
                    memory[var9:var9 + 0x20] = temp28 - var8;
                    memory[temp28:temp28 + 0x20] = var6;
                    var temp29 = temp28 + 0x20;
                    memory[temp29:temp29 + var6] = msg.data[var5:var5 + var6];
                    memory[var6 + temp29:var6 + temp29 + 0x20] = 0x00;
                    var temp30 = temp29 + (var6 + 0x1f & ~0x1f);
                    memory[var10:var10 + 0x20] = temp30 - var8;
                    memory[temp30:temp30 + 0x20] = memory[var7:var7 + 0x20];
                    var11 = temp30 + 0x20;
                    var12 = var7 + 0x20;
                    var13 = memory[var7:var7 + 0x20];
                    var14 = var13;
                    var15 = var11;
                    var16 = var12;
                    var17 = 0x00;
                
                    if (var17 >= var14) {
                    label_1350:
                        var temp31 = var13;
                        var11 = temp31 + var11;
                        var12 = temp31 & 0x1f;
                    
                        if (!var12) {
                            var temp32 = memory[0x40:0x60];
                            log(memory[temp32:temp32 + var11 - temp32], [stack[-10]]);
                        
                        label_0E20:
                            return;
                        } else {
                            var temp33 = var12;
                            var temp34 = var11 - temp33;
                            memory[temp34:temp34 + 0x20] = ~(0x0100 ** (0x20 - temp33) - 0x01) & memory[temp34:temp34 + 0x20];
                            var temp35 = memory[0x40:0x60];
                            log(memory[temp35:temp35 + (temp34 + 0x20) - temp35], [stack[-10]]);
                            goto label_0E20;
                        }
                    } else {
                    label_1341:
                        var temp36 = var17;
                        memory[temp36 + var15:temp36 + var15 + 0x20] = memory[temp36 + var16:temp36 + var16 + 0x20];
                        var17 = temp36 + 0x20;
                    
                        if (var17 >= var14) { goto label_1350; }
                        else { goto label_1341; }
                    }
                }
            } else {
                var temp37 = memory[0x40:0x60];
                var4 = temp37;
                memory[0x40:0x60] = var4 + (returndata.length + 0x3f & ~0x1f);
                memory[var4:var4 + 0x20] = returndata.length;
                var temp38 = returndata.length;
                memory[var4 + 0x20:var4 + 0x20 + temp38] = returndata[0x00:0x00 + temp38];
                var2 = var4;
                var1 = var3;
            
                if (!var1) { goto label_1393; }
                else { goto label_12AA; }
            }
        } else {
            var temp39 = memory[0x40:0x60];
            memory[temp39:temp39 + 0x20] = 0x461bcd << 0xe5;
            memory[temp39 + 0x04:temp39 + 0x04 + 0x20] = 0x20;
            memory[temp39 + 0x24:temp39 + 0x24 + 0x20] = 0x0c;
            memory[temp39 + 0x44:temp39 + 0x44 + 0x20] = 0x1d5b985d5d1a1bdc9a5e9959 << 0xa2;
            var temp40 = memory[0x40:0x60];
            revert(memory[temp40:temp40 + temp39 - temp40 + 0x64]);
        }
    }
    
    function func_06A2(var arg0, var arg1) returns (var arg0) {
        arg0 = msg.data[arg0:arg0 + 0x20];
        memory[0x20:0x40] = 0x05;
        memory[0x00:0x20] = arg0;
        return storage[keccak256(memory[0x00:0x40])] & (0x01 << 0xa0) - 0x01;
    }
    
    function transferERC20(var arg0, var arg1) {
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
    
        if ((var2 > 0x0100000000) | (var1 + var2 * 0x20 > arg1)) { revert(memory[0x00:0x00]); }
    
        var temp5 = var3;
        var temp6 = arg1;
        arg1 = var1;
        var temp7 = var0;
        var0 = var2;
        var2 = temp7;
        var1 = temp6;
        var3 = temp5 + 0x20;
        var var4 = msg.data[temp5:temp5 + 0x20];
    
        if (var4 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp8 = var2 + var4;
        var4 = temp8;
    
        if (var4 + 0x20 > var1) { revert(memory[0x00:0x00]); }
    
        var temp9 = var4;
        var temp10 = msg.data[temp9:temp9 + 0x20];
        var4 = temp10;
        var temp11 = var3;
        var3 = temp9 + 0x20;
        var var5 = temp11;
    
        if ((var4 > 0x0100000000) | (var3 + var4 * 0x20 > var1)) { revert(memory[0x00:0x00]); }
    
        var1 = var3;
        var2 = var4;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x03;
    
        if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) {
            var temp22 = memory[0x40:0x60];
            memory[temp22:temp22 + 0x20] = 0x461bcd << 0xe5;
            memory[temp22 + 0x04:temp22 + 0x04 + 0x20] = 0x20;
            memory[temp22 + 0x24:temp22 + 0x24 + 0x20] = 0x0c;
            memory[temp22 + 0x44:temp22 + 0x44 + 0x20] = 0x1d5b985d5d1a1bdc9a5e9959 << 0xa2;
            var temp23 = memory[0x40:0x60];
            revert(memory[temp23:temp23 + temp22 - temp23 + 0x64]);
        } else if (var2 == var0) {
            var3 = arg0;
            var4 = 0x00;
        
            if (var4 >= var0) {
            label_166B:
                return;
            } else {
            label_154E:
                var5 = 0x00;
                var var6 = arg1;
                var var7 = var0;
                var var8 = var4;
            
                if (var8 >= var7) { assert(); }
            
                var5 = msg.data[var8 * 0x20 + var6:var8 * 0x20 + var6 + 0x20] & (0x01 << 0xa0) - 0x01;
                var6 = 0x00;
                var7 = var1;
                var8 = var2;
                var var9 = var4;
            
                if (var9 >= var8) { assert(); }
            
                var temp12 = msg.data[var9 * 0x20 + var7:var9 * 0x20 + var7 + 0x20];
                var6 = temp12;
                var7 = var3 & (0x01 << 0xa0) - 0x01;
                var8 = 0xa9059cbb;
                var temp13 = memory[0x40:0x60];
                memory[temp13:temp13 + 0x20] = (var8 & 0xffffffff) << 0xe0;
                var temp14 = temp13 + 0x04;
                memory[temp14:temp14 + 0x20] = var5 & (0x01 << 0xa0) - 0x01 & (0x01 << 0xa0) - 0x01;
                var temp15 = temp14 + 0x20;
                memory[temp15:temp15 + 0x20] = var6;
                var9 = temp15 + 0x20;
                var var10 = 0x20;
                var var11 = memory[0x40:0x60];
                var var12 = var9 - var11;
                var var13 = var11;
                var var14 = 0x00;
                var var15 = var7;
                var var16 = !address(var15).code.length;
            
                if (var16) { revert(memory[0x00:0x00]); }
            
                var temp16;
                temp16, memory[var11:var11 + var10] = address(var15).call.gas(msg.gas).value(var14)(memory[var13:var13 + var12]);
                var10 = !temp16;
            
                if (!var10) {
                    var7 = memory[0x40:0x60];
                    var8 = returndata.length;
                
                    if (var8 < 0x20) { revert(memory[0x00:0x00]); }
                
                    if (memory[var7:var7 + 0x20]) {
                        var4 = var4 + 0x01;
                    
                        if (var4 >= var0) { goto label_166B; }
                        else { goto label_154E; }
                    } else {
                        var temp17 = memory[0x40:0x60];
                        memory[temp17:temp17 + 0x20] = 0x461bcd << 0xe5;
                        memory[temp17 + 0x04:temp17 + 0x04 + 0x20] = 0x20;
                        memory[temp17 + 0x24:temp17 + 0x24 + 0x20] = 0x0e;
                        memory[temp17 + 0x44:temp17 + 0x44 + 0x20] = 0x7472616e736665722066616c7365000000000000000000000000000000000000;
                        var temp18 = memory[0x40:0x60];
                        revert(memory[temp18:temp18 + temp17 - temp18 + 0x64]);
                    }
                } else {
                    var temp19 = returndata.length;
                    memory[0x00:0x00 + temp19] = returndata[0x00:0x00 + temp19];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            }
        } else {
            var temp20 = memory[0x40:0x60];
            memory[temp20:temp20 + 0x20] = 0x461bcd << 0xe5;
            memory[temp20 + 0x04:temp20 + 0x04 + 0x20] = 0x20;
            memory[temp20 + 0x24:temp20 + 0x24 + 0x20] = 0x11;
            memory[temp20 + 0x44:temp20 + 0x44 + 0x20] = 0x6d69736d61746368656420617272617973000000000000000000000000000000;
            var temp21 = memory[0x40:0x60];
            revert(memory[temp21:temp21 + temp20 - temp21 + 0x64]);
        }
    }
    
    function func_07AB(var arg0, var arg1) {
        var temp0 = (0x01 << 0xa0) - 0x01;
        var temp1 = arg0;
        arg0 = temp0 & msg.data[temp1:temp1 + 0x20];
        var temp2 = arg1;
        arg1 = temp0 & msg.data[temp1 + 0x20:temp1 + 0x20 + 0x20];
        var var1 = temp1;
        var var0 = var1 + temp2;
        var var2 = var1 + 0x60;
        var var3 = msg.data[var1 + 0x40:var1 + 0x40 + 0x20];
    
        if (var3 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp3 = var1 + var3;
        var3 = temp3;
    
        if (var3 + 0x20 > var0) { revert(memory[0x00:0x00]); }
    
        var temp4 = var3;
        var temp5 = msg.data[temp4:temp4 + 0x20];
        var3 = temp5;
        var var4 = var2;
        var2 = temp4 + 0x20;
    
        if ((var3 > 0x0100000000) | (var2 + var3 > var0)) { revert(memory[0x00:0x00]); }
    
        var0 = var2;
        var1 = var3;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x03;
    
        if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
            var temp6 = memory[0x40:0x60];
            memory[temp6:temp6 + 0x20] = 0xdfd1fb7a00000000000000000000000000000000000000000000000000000000;
            var temp7 = (0x01 << 0xa0) - 0x01;
            memory[temp6 + 0x04:temp6 + 0x04 + 0x20] = temp7 & arg1;
            memory[temp6 + 0x24:temp6 + 0x24 + 0x20] = 0x40;
            var temp8 = var1;
            memory[temp6 + 0x44:temp6 + 0x44 + 0x20] = temp8;
            var2 = arg0 & temp7;
            var3 = 0xdfd1fb7a;
            var temp9 = temp6 + 0x64;
            memory[temp9:temp9 + temp8] = msg.data[var0:var0 + temp8];
            memory[temp9 + temp8:temp9 + temp8 + 0x20] = 0x00;
            var4 = temp9 + (temp8 + 0x1f & ~0x1f);
            var var5 = 0x00;
            var var6 = memory[0x40:0x60];
            var var7 = var4 - var6;
            var var8 = var6;
            var var9 = 0x00;
            var var10 = var2;
            var var11 = !address(var10).code.length;
        
            if (var11) { revert(memory[0x00:0x00]); }
        
            var temp10;
            temp10, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
            var5 = !temp10;
        
            if (!var5) { return; }
        
            var temp11 = returndata.length;
            memory[0x00:0x00 + temp11] = returndata[0x00:0x00 + temp11];
            revert(memory[0x00:0x00 + returndata.length]);
        } else {
            var temp12 = memory[0x40:0x60];
            memory[temp12:temp12 + 0x20] = 0x461bcd << 0xe5;
            memory[temp12 + 0x04:temp12 + 0x04 + 0x20] = 0x20;
            memory[temp12 + 0x24:temp12 + 0x24 + 0x20] = 0x0c;
            memory[temp12 + 0x44:temp12 + 0x44 + 0x20] = 0x1d5b985d5d1a1bdc9a5e9959 << 0xa2;
            var temp13 = memory[0x40:0x60];
            revert(memory[temp13:temp13 + temp12 - temp13 + 0x64]);
        }
    }
    
    function custodian() returns (var r0) { return storage[0x01] & (0x01 << 0xa0) - 0x01; }
    
    function lockRequestCount() returns (var r0) { return storage[0x00]; }
    
    function func_177C() returns (var r0) {
        var temp0 = storage[0x00] + 0x01;
        storage[0x00] = temp0;
        var temp1 = memory[0x40:0x60];
        memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = block.blockHash(block.number + ~0x00);
        memory[temp1 + 0x40:temp1 + 0x40 + 0x20] = address(this) << 0x60;
        memory[temp1 + 0x54:temp1 + 0x54 + 0x20] = temp0;
        var temp2 = memory[0x40:0x60];
        memory[temp2:temp2 + 0x20] = temp1 - temp2 + 0x54;
        memory[0x40:0x60] = temp1 + 0x74;
        return keccak256(memory[temp2 + 0x20:temp2 + 0x20 + memory[temp2:temp2 + 0x20]]);
    }
    
    function func_17C5(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 & (0x01 << 0xa0) - 0x01) {
            var var1 = 0x1819;
            var1 = func_177C();
            var temp0 = memory[0x40:0x60];
            memory[0x40:0x60] = temp0 + 0x20;
            var temp1 = (0x01 << 0xa0) - 0x01;
            memory[temp0:temp0 + 0x20] = temp1 & arg1;
            memory[0x00:0x20] = var1;
            memory[0x20:0x40] = arg0;
            var temp2 = keccak256(memory[0x00:0x40]);
            storage[temp2] = (temp1 & memory[temp0:temp0 + 0x20]) | (storage[temp2] & ~((0x01 << 0xa0) - 0x01));
            return var1;
        } else {
            var temp3 = memory[0x40:0x60];
            memory[temp3:temp3 + 0x20] = 0x461bcd << 0xe5;
            memory[temp3 + 0x04:temp3 + 0x04 + 0x20] = 0x20;
            memory[temp3 + 0x24:temp3 + 0x24 + 0x20] = 0x0c;
            memory[temp3 + 0x44:temp3 + 0x44 + 0x20] = 0x7a65726f2061646472657373 << 0xa0;
            var temp4 = memory[0x40:0x60];
            revert(memory[temp4:temp4 + temp3 - temp4 + 0x64]);
        }
    }
    
    function func_1857(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        memory[var0:var0 + 0x20] = arg1;
        memory[0x20:0x40] = arg0;
        var var1 = keccak256(memory[var0:var0 + 0x40]);
    
        if (storage[var1] & (0x01 << 0xa0) - 0x01) { return storage[var1] & (0x01 << 0xa0) - 0x01; }
    
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x461bcd << 0xe5;
        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = 0x20;
        memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = 0x0e;
        memory[temp0 + 0x44:temp0 + 0x44 + 0x20] = 0x6e6f2073756368206c6f636b4964000000000000000000000000000000000000;
        var temp1 = memory[0x40:0x60];
        revert(memory[temp1:temp1 + temp0 - temp1 + 0x64]);
    }
    
    function func_18D2(var arg0) returns (var r0) {
        var var0 = 0x00;
        memory[var0:var0 + 0x20] = arg0;
        memory[0x20:0x40] = 0x02;
        var var1 = keccak256(memory[var0:var0 + 0x40]);
    
        if (storage[var1] & (0x01 << 0xa0) - 0x01) { return storage[var1] & (0x01 << 0xa0) - 0x01; }
    
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x461bcd << 0xe5;
        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = 0x20;
        memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = 0x0e;
        memory[temp0 + 0x44:temp0 + 0x44 + 0x20] = 0x6e6f2073756368206c6f636b4964000000000000000000000000000000000000;
        var temp1 = memory[0x40:0x60];
        revert(memory[temp1:temp1 + temp0 - temp1 + 0x64]);
    }
}