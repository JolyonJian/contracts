contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length < 0x04) { stop(); }
    
        var var0 = msg.data[0x00:0x20] >> 0xe0;
    
        if (0x4955bae6 > var0) {
            if (0x25fda590 > var0) {
                if (0x0e > var0) {
                    if (var0 == 0x03) {
                        var var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0001f6;
                        var var2 = 0x04;
                        var var3 = msg.data.length - var2;
                    
                        if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                    
                        var2 = msg.data[var2:var2 + 0x20];
                        var3 = msg.sender == 0xdd07249e403979bd79848c27aa5454c7e66bdee7;
                    
                        if (!var3) {
                            var3 = msg.sender == 0xe73c1e4d7992a4a4f19f31531ae7b5dc352b74b0;
                        
                            if (var3) { goto label_0A50; }
                            else { goto label_0A38; }
                        } else if (var3) {
                        label_0A50:
                        
                            if (var3) {
                            label_0A6B:
                            
                                if (!var3) { revert(memory[0x00:0x00]); }
                            
                            label_0A75:
                                var3 = 0x000a80;
                                var var4 = var2;
                                func_3135(var4);
                            
                            label_0A80:
                                // Error: Could not resolve jump destination!
                            } else {
                            label_0A57:
                                memory[0x00:0x20] = msg.sender;
                                memory[0x20:0x40] = 0x02;
                            
                                if (storage[keccak256(memory[0x00:0x40])] & 0xff) { goto label_0A75; }
                                else { revert(memory[0x00:0x00]); }
                            }
                        } else {
                        label_0A38:
                            var3 = msg.sender == 0xdae238a5d94a39e10594fe4a7f96ef4b83c01899;
                        
                            if (var3) { goto label_0A6B; }
                            else { goto label_0A57; }
                        }
                    } else if (var0 == 0x08) {
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0001f6;
                        var2 = 0x04;
                        var3 = msg.data.length - var2;
                    
                        if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                    
                        func_024C(var2, var3);
                        stop();
                    } else if (var0 == 0x0c) {
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0001f6;
                        var2 = 0x04;
                        var3 = msg.data.length - var2;
                    
                        if (var3 < 0x40) { revert(memory[0x00:0x00]); }
                    
                        func_027A(var2, var3);
                        stop();
                    } else { stop(); }
                } else if (var0 == 0x0e) {
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0001f6;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    func_02AE(var2, var3);
                    stop();
                } else if (var0 == 0x9952eb) {
                    // Dispatch table entry for 0x009952eb (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0001f6;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x40) { revert(memory[0x00:0x00]); }
                
                    func_02DC(var2, var3);
                    stop();
                } else if (var0 == 0x0aebace4) {
                    // Dispatch table entry for 0x0aebace4 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x00031b;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    var1 = func_0310(var2, var3);
                
                label_031B:
                    var temp0 = memory[0x40:0x60];
                    memory[temp0:temp0 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var temp1 = memory[0x40:0x60];
                    return memory[temp1:temp1 + temp0 - temp1 + 0x20];
                } else if (var0 == 0x104971c2) {
                    // Dispatch table entry for 0x104971c2 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0001f6;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x60) { revert(memory[0x00:0x00]); }
                
                    func_036A(var2, var3);
                    stop();
                } else { stop(); }
            } else if (0x42422ed9 > var0) {
                if (var0 == 0x25fda590) {
                    // Dispatch table entry for 0x25fda590 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0001f6;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    func_03BE(var2, var3);
                    stop();
                } else if (var0 == 0x2ea9622e) {
                    // Dispatch table entry for 0x2ea9622e (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0001f6;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x40) { revert(memory[0x00:0x00]); }
                
                    func_03EC(var2, var3);
                    stop();
                } else if (var0 == 0x363ce139) {
                    // Dispatch table entry for 0x363ce139 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x000497;
                    var1 = func_181F();
                
                label_0497:
                    var temp2 = memory[0x40:0x60];
                    memory[temp2:temp2 + 0x20] = var1;
                    var temp3 = memory[0x40:0x60];
                    return memory[temp3:temp3 + temp2 - temp3 + 0x20];
                } else if (var0 == 0x3a293885) {
                    // Dispatch table entry for 0x3a293885 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0001f6;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    func_04CF(var2, var3);
                    stop();
                } else { stop(); }
            } else if (var0 == 0x42422ed9) {
                // Dispatch table entry for 0x42422ed9 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0001f6;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x40) { revert(memory[0x00:0x00]); }
            
                func_04FD(var2, var3);
                stop();
            } else if (var0 == 0x47715d18) {
                // Dispatch table entry for 0x47715d18 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0001f6;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                func_0531(var2, var3);
                stop();
            } else if (var0 == 0x4777b3e7) {
                // Dispatch table entry for 0x4777b3e7 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0001f6;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                func_0562(var2, var3);
                stop();
            } else if (var0 == 0x481c6a75) {
                // Dispatch table entry for manager()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00031b;
                var2 = manager();
                goto label_031B;
            } else { stop(); }
        } else if (0x98061191 > var0) {
            if (0x6adfb982 > var0) {
                if (var0 == 0x4955bae6) {
                    // Dispatch table entry for 0x4955bae6 (unknown)
                    var1 = 0x0001f6;
                    func_1F66();
                    stop();
                } else if (var0 == 0x4fb2e45d) {
                    // Dispatch table entry for transferOwner(address)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0001f6;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    transferOwner(var2, var3);
                    stop();
                } else if (var0 == 0x578e4b23) {
                    // Dispatch table entry for 0x578e4b23 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0001f6;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    func_05F6(var2, var3);
                    stop();
                } else if (var0 == 0x58d4696c) {
                    // Dispatch table entry for 0x58d4696c (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0001f6;
                    var2 = 0x04;
                    var3 = msg.data.length - var2;
                
                    if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                
                    func_0624(var2, var3);
                    stop();
                } else { stop(); }
            } else if (var0 == 0x6adfb982) {
                // Dispatch table entry for 0x6adfb982 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0001f6;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                func_0668(var2, var3);
                stop();
            } else if (var0 == 0x737fa33d) {
                // Dispatch table entry for 0x737fa33d (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x000497;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x40) { revert(memory[0x00:0x00]); }
            
                var1 = func_0696(var2, var3);
                goto label_0497;
            } else if (var0 == 0x7b80ec8c) {
                // Dispatch table entry for 0x7b80ec8c (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0001f6;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x40) { revert(memory[0x00:0x00]); }
            
                func_06E3(var2, var3);
                stop();
            } else if (var0 == 0x8da5cb5b) {
                // Dispatch table entry for owner()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00031b;
                var2 = owner();
                goto label_031B;
            } else { stop(); }
        } else if (0xccf12304 > var0) {
            if (var0 == 0x98061191) {
                // Dispatch table entry for 0x98061191 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0001f6;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x60) { revert(memory[0x00:0x00]); }
            
                func_0745(var2, var3);
                stop();
            } else if (var0 == 0x9af73484) {
                // Dispatch table entry for 0x9af73484 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0001f6;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                func_081E(var2, var3);
                stop();
            } else if (var0 == 0xc4d66de8) {
                // Dispatch table entry for initialize(address)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0001f6;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                initialize(var2, var3);
                stop();
            } else if (var0 == 0xccc39909) {
                // Dispatch table entry for transferManagership(address)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0001f6;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                transferManagership(var2, var3);
                stop();
            } else { stop(); }
        } else if (var0 == 0xccf12304) {
            // Dispatch table entry for set_mint(uint256)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x0001f6;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x20) { revert(memory[0x00:0x00]); }
        
            set_mint(var2, var3);
            stop();
        } else if (var0 == 0xd6c1a7fd) {
            // Dispatch table entry for 0xd6c1a7fd (unknown)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x0001f6;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x20) { revert(memory[0x00:0x00]); }
        
            func_0902(var2, var3);
            stop();
        } else if (var0 == 0xfa7cd1d3) {
            // Dispatch table entry for 0xfa7cd1d3 (unknown)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x0001f6;
        
            if (msg.sender != storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
        
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            memory[temp4 + 0x04:temp4 + 0x04 + 0x20] = address(this);
            var2 = 0x00;
            var3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            var4 = 0x70a08231;
            var var5 = temp4 + 0x24;
            var var6 = 0x20;
            var var7 = memory[0x40:0x60];
            var var8 = temp4 - var7 + 0x24;
            var var9 = var7;
            var var10 = var3;
            var var11 = !address(var10).code.length;
        
            if (var11) { revert(memory[0x00:0x00]); }
        
            var temp5;
            temp5, memory[var7:var7 + var6] = address(var10).staticcall.gas(msg.gas)(memory[var9:var9 + var8]);
            var6 = !temp5;
        
            if (!var6) {
                var3 = memory[0x40:0x60];
                var4 = returndata.length;
            
                if (var4 < 0x20) { revert(memory[0x00:0x00]); }
            
                var2 = memory[var3:var3 + 0x20];
            
                if (!var2) { selfdestruct(storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff); }
            
                var3 = 0xffffffffffffffffffffffffffffffffffffffff & 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                var4 = 0x2e1a7d4d;
                var temp6 = memory[0x40:0x60];
                memory[temp6:temp6 + 0x20] = (var4 & 0xffffffff) << 0xe0;
                var temp7 = temp6 + 0x04;
                memory[temp7:temp7 + 0x20] = var2;
                var5 = temp7 + 0x20;
                var6 = 0x00;
                var7 = memory[0x40:0x60];
                var8 = var5 - var7;
                var9 = var7;
                var10 = 0x00;
                var11 = var3;
                var var12 = !address(var11).code.length;
            
                if (var12) { revert(memory[0x00:0x00]); }
            
                var temp8;
                temp8, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
                var6 = !temp8;
            
                if (!var6) { selfdestruct(storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff); }
            
                var temp9 = returndata.length;
                memory[0x00:0x00 + temp9] = returndata[0x00:0x00 + temp9];
                revert(memory[0x00:0x00 + returndata.length]);
            } else {
                var temp10 = returndata.length;
                memory[0x00:0x00 + temp10] = returndata[0x00:0x00 + temp10];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else if (var0 == 0xff1cdcbf) {
            // Dispatch table entry for 0xff1cdcbf (unknown)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x0001f6;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x40) { revert(memory[0x00:0x00]); }
        
            func_0948(var2, var3);
            stop();
        } else { stop(); }
    }
    
    function func_024C(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender != 0x58d46ae3114fc82d80f57c9a2a322845a19418fb) { revert(memory[0x00:0x00]); }
    
        var temp0 = arg0 ~ 0x8f0f90cf868eda8141371c26266f31f07243e96cb9f937247e4dac44527df6f5;
        arg1 = temp0;
        var var0 = arg1 >> 0x48;
        var var1 = 0x00;
        var var2 = 0x000ade;
        var var3 = var0;
        var var4 = arg1 >> 0x38;
        var2 = func_3377(var3, var4);
        var temp1 = memory[0x40:0x60];
        memory[temp1:temp1 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        memory[temp1 + 0x04:temp1 + 0x04 + 0x20] = 0x45544abf5936deb78490d38ec42b80757d16c014;
        var1 = var2;
        var2 = 0x00;
        var3 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
        var4 = 0x70a08231;
        var var5 = temp1 + 0x24;
        var var6 = 0x20;
        var var7 = memory[0x40:0x60];
        var var8 = temp1 - var7 + 0x24;
        var var9 = var7;
        var var10 = var3;
        var var11 = !address(var10).code.length;
    
        if (var11) { revert(memory[0x00:0x00]); }
    
        var temp2;
        temp2, memory[var7:var7 + var6] = address(var10).staticcall.gas(msg.gas)(memory[var9:var9 + var8]);
        var6 = !temp2;
    
        if (!var6) {
            var3 = memory[0x40:0x60];
            var4 = returndata.length;
        
            if (var4 < 0x20) { revert(memory[0x00:0x00]); }
        
            var temp3 = memory[var3:var3 + 0x20];
            var2 = temp3;
            var3 = 0x45544abf5936deb78490d38ec42b80757d16c014;
            var4 = 0x02;
            var5 = var0;
            var6 = var1;
            var7 = 0x000bc1;
            var8 = var2;
            var9 = 0x01;
            var7 = func_35F9(var8, var9);
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = (var4 & 0xffffffff) << 0xe0;
            var temp5 = temp4 + 0x04;
            memory[temp5:temp5 + 0x20] = var5 & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp6 = temp5 + 0x20;
            memory[temp6:temp6 + 0x20] = var6 & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp7 = temp6 + 0x20;
            memory[temp7:temp7 + 0x20] = var7;
            var5 = temp7 + 0x20;
            var6 = 0x00;
            var7 = memory[0x40:0x60];
            var8 = var5 - var7;
            var9 = var7;
            var10 = 0x00;
            var11 = var3;
            var var12 = !address(var11).code.length;
        
            if (var12) { revert(memory[0x00:0x00]); }
        
            var temp8;
            temp8, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
            var6 = !temp8;
        
            if (!var6) {
                var3 = 0x00;
                var4 = var3;
                var5 = 0x000c86;
                var6 = var1;
                var7 = var0;
                var5, var6 = func_360F(var6, var7);
                var temp9 = var6;
                var4 = temp9;
                var3 = var5;
                var5 = 0x00;
                var6 = 0x000d56;
                var7 = 0x000d4e;
                var8 = var4;
                var9 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                var10 = 0x70a08231;
                var temp10 = memory[0x40:0x60];
                memory[temp10:temp10 + 0x20] = (var10 & 0xffffffff) << 0xe0;
                var temp11 = temp10 + 0x04;
                memory[temp11:temp11 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                var11 = temp11 + 0x20;
                var12 = 0x20;
                var var13 = memory[0x40:0x60];
                var var14 = var11 - var13;
                var var15 = var13;
                var var16 = var9;
                var var17 = !address(var16).code.length;
            
                if (var17) { revert(memory[0x00:0x00]); }
            
                var7 = func_0D13(var8, var9, var10, var11, var12, var13, var14, var15, var16, var17);
                var6 = func_0D4E(var3, var4, var7);
                var5 = var6;
            
                if (var5 <= (arg1 & 0xffffffff) * 0xe8d4a51000) { revert(memory[0x00:0x00]); }
            
                var6 = 0x00;
                var7 = var6;
            
                if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < var0 & 0xffffffffffffffffffffffffffffffffffffffff) {
                    var7 = 0x00;
                    var6 = var5;
                    var8 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var9 = 0x022c0d9f;
                    var10 = var6;
                    var11 = var7;
                    var12 = address(this);
                    var temp12 = memory[0x40:0x60];
                    var13 = temp12;
                    var14 = 0x00;
                    memory[var13:var13 + 0x20] = var14;
                    memory[0x40:0x60] = var13 + (var14 + 0x1f & ~0x1f) + 0x20;
                
                    if (!var14) {
                    label_0E04:
                        var temp13 = memory[0x40:0x60];
                        memory[temp13:temp13 + 0x20] = (var9 & 0xffffffff) << 0xe0;
                        var temp14 = temp13 + 0x04;
                        var14 = temp14;
                        memory[var14:var14 + 0x20] = var10;
                        var temp15 = var14 + 0x20;
                        memory[temp15:temp15 + 0x20] = var11;
                        var temp16 = temp15 + 0x20;
                        memory[temp16:temp16 + 0x20] = var12 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var temp17 = temp16 + 0x20;
                        var15 = temp17;
                        var temp18 = var15 + 0x20;
                        memory[var15:var15 + 0x20] = temp18 - var14;
                        var temp19 = var13;
                        memory[temp18:temp18 + 0x20] = memory[temp19:temp19 + 0x20];
                        var16 = temp18 + 0x20;
                        var var18 = memory[temp19:temp19 + 0x20];
                        var17 = temp19 + 0x20;
                        var var19 = var18;
                        var var20 = var16;
                        var var21 = var17;
                        var var22 = 0x00;
                    
                        if (var22 >= var19) {
                        label_0E91:
                            var temp20 = var18;
                            var16 = temp20 + var16;
                            var17 = temp20 & 0x1f;
                        
                            if (!var17) {
                                var10 = var16;
                                var11 = 0x00;
                                var12 = memory[0x40:0x60];
                                var13 = var10 - var12;
                                var14 = var12;
                                var15 = 0x00;
                                var16 = var8;
                                var17 = !address(var16).code.length;
                            
                                if (var17) { revert(memory[0x00:0x00]); }
                            
                            label_0EE2:
                                var temp21;
                                temp21, memory[var12:var12 + var11] = address(var16).call.gas(msg.gas).value(var15)(memory[var14:var14 + var13]);
                                var11 = !temp21;
                            
                                if (!var11) {
                                    var8 = block.coinbase & 0xffffffffffffffffffffffffffffffffffffffff;
                                    var9 = 0x08fc;
                                    var10 = 0x64;
                                    var temp22 = arg1;
                                    var11 = var5 - (temp22 & 0xffffffff) * 0xe8d4a51000 * ((temp22 >> 0x40) & 0xff);
                                
                                    if (!var10) { assert(); }
                                
                                    var temp23 = var11 / var10;
                                    var temp24 = memory[0x40:0x60];
                                    var temp25;
                                    temp25, memory[temp24:temp24 + 0x00] = address(var8).call.gas(!temp23 * var9).value(temp23)(memory[temp24:temp24 + memory[0x40:0x60] - temp24]);
                                    var8 = !temp25;
                                
                                    if (var8) {
                                        var temp26 = returndata.length;
                                        memory[0x00:0x00 + temp26] = returndata[0x00:0x00 + temp26];
                                        revert(memory[0x00:0x00 + returndata.length]);
                                    } else if (!(arg1 >> 0xfc)) {
                                    label_0F96:
                                        return;
                                    } else {
                                        var8 = 0x000f96;
                                        var9 = 0x10;
                                        var10 = (arg1 >> 0xe4) & 0xffffff;
                                        func_0F82(arg1, var9, var10);
                                        goto label_0F96;
                                    }
                                } else {
                                    var temp27 = returndata.length;
                                    memory[0x00:0x00 + temp27] = returndata[0x00:0x00 + temp27];
                                    revert(memory[0x00:0x00 + returndata.length]);
                                }
                            } else {
                                var temp28 = var17;
                                var temp29 = var16 - temp28;
                                memory[temp29:temp29 + 0x20] = ~(0x0100 ** (0x20 - temp28) - 0x01) & memory[temp29:temp29 + 0x20];
                                var10 = temp29 + 0x20;
                                var11 = 0x00;
                                var12 = memory[0x40:0x60];
                                var13 = var10 - var12;
                                var14 = var12;
                                var15 = 0x00;
                                var16 = var8;
                                var17 = !address(var16).code.length;
                            
                                if (!var17) { goto label_0EE2; }
                                else { revert(memory[0x00:0x00]); }
                            }
                        } else {
                        label_0E81:
                            var temp30 = var22;
                            memory[temp30 + var20:temp30 + var20 + 0x20] = memory[temp30 + var21:temp30 + var21 + 0x20];
                            var22 = temp30 + 0x20;
                        
                            if (var22 >= var19) { goto label_0E91; }
                            else { goto label_0E81; }
                        }
                    } else {
                    label_0DF8:
                        var temp31 = var13;
                        var temp32 = var14;
                        memory[temp31 + 0x20:temp31 + 0x20 + temp32] = code[code.length:code.length + temp32];
                        var temp33 = memory[0x40:0x60];
                        memory[temp33:temp33 + 0x20] = (var9 & 0xffffffff) << 0xe0;
                        var temp34 = temp33 + 0x04;
                        var14 = temp34;
                        memory[var14:var14 + 0x20] = var10;
                        var temp35 = var14 + 0x20;
                        memory[temp35:temp35 + 0x20] = var11;
                        var temp36 = temp35 + 0x20;
                        memory[temp36:temp36 + 0x20] = var12 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var temp37 = temp36 + 0x20;
                        var15 = temp37;
                        var temp38 = var15 + 0x20;
                        memory[var15:var15 + 0x20] = temp38 - var14;
                        memory[temp38:temp38 + 0x20] = memory[temp31:temp31 + 0x20];
                        var16 = temp38 + 0x20;
                        var18 = memory[temp31:temp31 + 0x20];
                        var17 = temp31 + 0x20;
                        var19 = var18;
                        var20 = var16;
                        var21 = var17;
                        var22 = 0x00;
                    
                        if (var22 >= var19) { goto label_0E91; }
                        else { goto label_0E81; }
                    }
                } else {
                    var8 = 0x00;
                    var9 = var5;
                    var temp39 = var9;
                    var7 = temp39;
                    var temp40 = var8;
                    var6 = temp40;
                    var8 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var9 = 0x022c0d9f;
                    var10 = var6;
                    var11 = var7;
                    var12 = address(this);
                    var temp41 = memory[0x40:0x60];
                    var13 = temp41;
                    var14 = 0x00;
                    memory[var13:var13 + 0x20] = var14;
                    memory[0x40:0x60] = var13 + (var14 + 0x1f & ~0x1f) + 0x20;
                
                    if (!var14) { goto label_0E04; }
                    else { goto label_0DF8; }
                }
            } else {
                var temp42 = returndata.length;
                memory[0x00:0x00 + temp42] = returndata[0x00:0x00 + temp42];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp43 = returndata.length;
            memory[0x00:0x00 + temp43] = returndata[0x00:0x00 + temp43];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_027A(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20];
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
        var var0 = msg.sender == 0xdd07249e403979bd79848c27aa5454c7e66bdee7;
    
        if (!var0) {
            var0 = msg.sender == 0xe73c1e4d7992a4a4f19f31531ae7b5dc352b74b0;
        
            if (var0) { goto label_0FF7; }
            else { goto label_0FDF; }
        } else if (var0) {
        label_0FF7:
        
            if (var0) {
            label_1012:
            
                if (!var0) { revert(memory[0x00:0x00]); }
            
            label_101C:
                var temp1 = arg1 ~ 0x8f0f90cf868eda8141371c26266f31f07243e96cb9f937247e4dac44527df6f5;
                var0 = temp1;
            
                if (var0 & 0xffffffffffffffffffffffff == address(var0 >> 0x60).balance) {
                    var var1 = 0x0010e2;
                    var var2 = arg0;
                    func_3135(var2);
                
                label_10E2:
                
                label_10E4:
                    return;
                } else if (!((arg0 >> 0xe8) & 0x0f)) {
                label_10D0:
                    goto label_10E4;
                } else {
                    var temp2 = memory[0x40:0x60];
                    var temp3 = arg0;
                    memory[temp2 + 0x20:temp2 + 0x20 + 0x20] = temp3 & 0xffffff0000000000000000000000000000000000000000000000000000000000;
                    var temp4 = memory[0x40:0x60];
                    memory[temp4:temp4 + 0x20] = temp2 - temp4 + 0x03;
                    memory[0x40:0x60] = temp2 + 0x23;
                    var1 = 0x0010d0;
                    var2 = 0x10;
                    var var3 = ((temp3 ~ keccak256(memory[temp4 + 0x20:temp4 + 0x20 + memory[temp4:temp4 + 0x20]])) >> 0xd0) & 0xffffff;
                    func_10C2(var2, var3);
                    goto label_10D0;
                }
            } else {
            label_0FFE:
                memory[0x00:0x20] = msg.sender;
                memory[0x20:0x40] = 0x02;
            
                if (storage[keccak256(memory[0x00:0x40])] & 0xff) { goto label_101C; }
                else { revert(memory[0x00:0x00]); }
            }
        } else {
        label_0FDF:
            var0 = msg.sender == 0xdae238a5d94a39e10594fe4a7f96ef4b83c01899;
        
            if (var0) { goto label_1012; }
            else { goto label_0FFE; }
        }
    }
    
    function func_02AE(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender != 0x58d46ae3114fc82d80f57c9a2a322845a19418fb) { revert(memory[0x00:0x00]); }
    
        arg1 = arg0 ~ 0x8f0f90cf868eda8141371c26266f31f07243e96cb9f937247e4dac44527df6f5;
        var var0 = arg1;
        var var1 = 0x00;
        var var2 = var1;
        var var3 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var4 = 0x0902f1ac;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (var4 & 0xffffffff) << 0xe0;
        var var5 = temp0 + 0x04;
        var var6 = 0x60;
        var var7 = memory[0x40:0x60];
        var var8 = var5 - var7;
        var var9 = var7;
        var var10 = var3;
        var var11 = !address(var10).code.length;
    
        if (var11) { revert(memory[0x00:0x00]); }
    
        var temp1;
        temp1, memory[var7:var7 + var6] = address(var10).staticcall.gas(msg.gas)(memory[var9:var9 + var8]);
        var6 = !temp1;
    
        if (!var6) {
            var3 = memory[0x40:0x60];
            var4 = returndata.length;
        
            if (var4 < 0x60) { revert(memory[0x00:0x00]); }
        
            var temp2 = var3;
            var1 = memory[temp2:temp2 + 0x20] & 0xffffffffffffffffffffffffffff;
            var2 = memory[temp2 + 0x20:temp2 + 0x20 + 0x20] & 0xffffffffffffffffffffffffffff;
        
            if (((arg1 >> 0xa0) & 0xff) / 0x0a & 0xff == 0x00) {
                var temp32 = var2;
                var2 = var1;
                var1 = temp32;
            
                if (var1 < ((arg1 >> 0xc8) & 0xffffffff) * 0x5af3107a4000) { goto label_1208; }
                else { goto label_11FF; }
            } else if (var1 < ((arg1 >> 0xc8) & 0xffffffff) * 0x5af3107a4000) {
            label_1208:
                var3 = ((arg1 >> 0xa8) & 0xffffffff) * 0xe8d4a51000;
                var4 = 0x00;
                var5 = 0x001229;
                var6 = var3;
                var7 = var1;
                var8 = var2;
                var5 = func_36F2(var6, var7, var8);
                var temp3 = memory[0x40:0x60];
                memory[temp3:temp3 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                memory[temp3 + 0x04:temp3 + 0x04 + 0x20] = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp3 + 0x24:temp3 + 0x24 + 0x20] = var3;
                var4 = var5;
                var5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                var6 = 0xa9059cbb;
                var7 = temp3 + 0x44;
                var8 = 0x20;
                var9 = memory[0x40:0x60];
                var10 = temp3 - var9 + 0x44;
                var11 = var9;
                var var12 = 0x00;
                var var13 = var5;
                var var14 = !address(var13).code.length;
            
                if (var14) { revert(memory[0x00:0x00]); }
            
                var temp4;
                temp4, memory[var9:var9 + var8] = address(var13).call.gas(msg.gas).value(var12)(memory[var11:var11 + var10]);
                var8 = !temp4;
            
                if (!var8) {
                    var5 = memory[0x40:0x60];
                    var6 = returndata.length;
                
                    if (var6 < 0x20) { revert(memory[0x00:0x00]); }
                
                    var5 = 0x00;
                    var6 = var5;
                
                    if (((arg1 >> 0xa0) & 0xff) / 0x0a & 0xff == 0x01) {
                        var6 = var4;
                        var5 = 0x00;
                        var7 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var8 = 0x022c0d9f;
                        var9 = var5;
                        var10 = var6;
                        var11 = 0x45544abf5936deb78490d38ec42b80757d16c014;
                        var temp5 = memory[0x40:0x60];
                        var13 = 0x00;
                        var12 = temp5;
                        memory[var12:var12 + 0x20] = var13;
                        memory[0x40:0x60] = var12 + (var13 + 0x1f & ~0x1f) + 0x20;
                    
                        if (!var13) {
                        label_1370:
                            var temp6 = memory[0x40:0x60];
                            memory[temp6:temp6 + 0x20] = (var8 & 0xffffffff) << 0xe0;
                            var temp7 = temp6 + 0x04;
                            var13 = temp7;
                            memory[var13:var13 + 0x20] = var9;
                            var temp8 = var13 + 0x20;
                            memory[temp8:temp8 + 0x20] = var10;
                            var temp9 = temp8 + 0x20;
                            memory[temp9:temp9 + 0x20] = var11 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var temp10 = temp9 + 0x20;
                            var14 = temp10;
                            var temp11 = var14 + 0x20;
                            memory[var14:var14 + 0x20] = temp11 - var13;
                            var temp12 = var12;
                            memory[temp11:temp11 + 0x20] = memory[temp12:temp12 + 0x20];
                            var var15 = temp11 + 0x20;
                            var var17 = memory[temp12:temp12 + 0x20];
                            var var16 = temp12 + 0x20;
                            var var18 = var17;
                            var var19 = var15;
                            var var20 = var16;
                            var var21 = 0x00;
                        
                            if (var21 >= var18) {
                            label_13FD:
                                var temp13 = var17;
                                var15 = temp13 + var15;
                                var16 = temp13 & 0x1f;
                            
                                if (!var16) {
                                    var9 = var15;
                                    var10 = 0x00;
                                    var11 = memory[0x40:0x60];
                                    var12 = var9 - var11;
                                    var13 = var11;
                                    var14 = 0x00;
                                    var15 = var7;
                                    var16 = !address(var15).code.length;
                                
                                    if (var16) { revert(memory[0x00:0x00]); }
                                
                                label_144E:
                                    var temp14;
                                    temp14, memory[var11:var11 + var10] = address(var15).call.gas(msg.gas).value(var14)(memory[var13:var13 + var12]);
                                    var10 = !temp14;
                                
                                    if (var10) {
                                        var temp16 = returndata.length;
                                        memory[0x00:0x00 + temp16] = returndata[0x00:0x00 + temp16];
                                        revert(memory[0x00:0x00 + returndata.length]);
                                    } else if (!(arg1 >> 0xfc)) {
                                    label_1496:
                                        return;
                                    } else {
                                        var7 = 0x001496;
                                        var temp15 = arg1;
                                        var8 = ((temp15 >> 0xe4) & 0xffffff) / 0x10 & 0xffffff;
                                        var9 = (temp15 >> 0xfc) & 0xff;
                                        func_371C(var8, var9);
                                        goto label_1496;
                                    }
                                } else {
                                    var temp17 = var16;
                                    var temp18 = var15 - temp17;
                                    memory[temp18:temp18 + 0x20] = ~(0x0100 ** (0x20 - temp17) - 0x01) & memory[temp18:temp18 + 0x20];
                                    var9 = temp18 + 0x20;
                                    var10 = 0x00;
                                    var11 = memory[0x40:0x60];
                                    var12 = var9 - var11;
                                    var13 = var11;
                                    var14 = 0x00;
                                    var15 = var7;
                                    var16 = !address(var15).code.length;
                                
                                    if (!var16) { goto label_144E; }
                                    else { revert(memory[0x00:0x00]); }
                                }
                            } else {
                            label_13ED:
                                var temp19 = var21;
                                memory[temp19 + var19:temp19 + var19 + 0x20] = memory[temp19 + var20:temp19 + var20 + 0x20];
                                var21 = temp19 + 0x20;
                            
                                if (var21 >= var18) { goto label_13FD; }
                                else { goto label_13ED; }
                            }
                        } else {
                        label_1364:
                            var temp20 = var12;
                            var temp21 = var13;
                            memory[temp20 + 0x20:temp20 + 0x20 + temp21] = code[code.length:code.length + temp21];
                            var temp22 = memory[0x40:0x60];
                            memory[temp22:temp22 + 0x20] = (var8 & 0xffffffff) << 0xe0;
                            var temp23 = temp22 + 0x04;
                            var13 = temp23;
                            memory[var13:var13 + 0x20] = var9;
                            var temp24 = var13 + 0x20;
                            memory[temp24:temp24 + 0x20] = var10;
                            var temp25 = temp24 + 0x20;
                            memory[temp25:temp25 + 0x20] = var11 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var temp26 = temp25 + 0x20;
                            var14 = temp26;
                            var temp27 = var14 + 0x20;
                            memory[var14:var14 + 0x20] = temp27 - var13;
                            memory[temp27:temp27 + 0x20] = memory[temp20:temp20 + 0x20];
                            var15 = temp27 + 0x20;
                            var17 = memory[temp20:temp20 + 0x20];
                            var16 = temp20 + 0x20;
                            var18 = var17;
                            var19 = var15;
                            var20 = var16;
                            var21 = 0x00;
                        
                            if (var21 >= var18) { goto label_13FD; }
                            else { goto label_13ED; }
                        }
                    } else {
                        var7 = var4;
                        var8 = 0x00;
                        var temp28 = var8;
                        var6 = temp28;
                        var temp29 = var7;
                        var5 = temp29;
                        var7 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var8 = 0x022c0d9f;
                        var9 = var5;
                        var10 = var6;
                        var11 = 0x45544abf5936deb78490d38ec42b80757d16c014;
                        var temp30 = memory[0x40:0x60];
                        var13 = 0x00;
                        var12 = temp30;
                        memory[var12:var12 + 0x20] = var13;
                        memory[0x40:0x60] = var12 + (var13 + 0x1f & ~0x1f) + 0x20;
                    
                        if (!var13) { goto label_1370; }
                        else { goto label_1364; }
                    }
                } else {
                    var temp31 = returndata.length;
                    memory[0x00:0x00 + temp31] = returndata[0x00:0x00 + temp31];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
            label_11FF:
                return;
            }
        } else {
            var temp33 = returndata.length;
            memory[0x00:0x00 + temp33] = returndata[0x00:0x00 + temp33];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_02DC(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20];
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
        var var0 = msg.sender == 0xdd07249e403979bd79848c27aa5454c7e66bdee7;
    
        if (!var0) {
            var0 = msg.sender == 0xe73c1e4d7992a4a4f19f31531ae7b5dc352b74b0;
        
            if (var0) { goto label_14F6; }
            else { goto label_14DE; }
        } else if (var0) {
        label_14F6:
        
            if (var0) {
            label_1511:
            
                if (!var0) { revert(memory[0x00:0x00]); }
            
            label_151B:
                var temp1 = memory[0x40:0x60];
                var temp2 = arg0;
                memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = (temp2 << 0xe8) & 0xffffff0000000000000000000000000000000000000000000000000000000000;
                var temp3 = memory[0x40:0x60];
                memory[temp3:temp3 + 0x20] = temp1 - temp3 + 0x03;
                memory[0x40:0x60] = temp1 + 0x23;
                var0 = temp2 ~ keccak256(memory[temp3 + 0x20:temp3 + 0x20 + memory[temp3:temp3 + 0x20]]);
                var temp4 = arg1 ~ 0x8f0f90cf868eda8141371c26266f31f07243e96cb9f937247e4dac44527df6f5;
                var var1 = temp4;
            
                if (var1 & 0xffffffffffffffffffffffff != address(var1 >> 0x60).balance) {
                    var var2 = 0x0015f7;
                    var temp5 = var0;
                    var var3 = temp5 >> 0x48;
                    var var4 = temp5 >> 0x40;
                    var var5 = temp5 >> 0x38;
                    var var6 = (temp5 >> 0x28) & 0x0fff;
                    var var7 = temp5 >> 0x18;
                    func_3794(var3, var4, var5, var6, var7);
                
                label_15F7:
                
                    if (!(arg0 >> 0xfc)) {
                    label_1626:
                        return;
                    } else {
                        var2 = 0x001626;
                        var temp6 = arg0;
                        var3 = ((temp6 >> 0xe4) & 0xffffff) / 0x10 & 0xffffff;
                        var4 = (temp6 >> 0xfc) & 0xff;
                        func_371C(var3, var4);
                        goto label_1626;
                    }
                } else if (!(arg0 >> 0xfc)) {
                label_15C8:
                    return;
                } else {
                    var2 = 0x0015c8;
                    var3 = 0x10;
                    var4 = (arg0 >> 0xe4) & 0xffffff;
                    func_10C2(var3, var4);
                    goto label_15C8;
                }
            } else {
            label_14FD:
                memory[0x00:0x20] = msg.sender;
                memory[0x20:0x40] = 0x02;
            
                if (storage[keccak256(memory[0x00:0x40])] & 0xff) { goto label_151B; }
                else { revert(memory[0x00:0x00]); }
            }
        } else {
        label_14DE:
            var0 = msg.sender == 0xdae238a5d94a39e10594fe4a7f96ef4b83c01899;
        
            if (var0) { goto label_1511; }
            else { goto label_14FD; }
        }
    }
    
    function func_0310(var arg0, var arg1) returns (var r0) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0xff;
        memory[0x00:0x20] = arg0 & 0xff;
        memory[0x20:0x40] = 0x05;
        return storage[keccak256(memory[0x00:0x40])] & 0xffffffffffffffffffffffffffffffffffffffff;
    }
    
    function func_036A(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        var var0 = msg.data[temp0 + 0x40:temp0 + 0x40 + 0x20];
    
        if (msg.sender != storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var temp1 = memory[0x40:0x60];
        memory[temp1:temp1 + 0x20] = 0x0200000000000000000000000000000000000000000000000000000000;
        memory[temp1 + 0x04:temp1 + 0x04 + 0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[temp1 + 0x24:temp1 + 0x24 + 0x20] = msg.sender;
        memory[temp1 + 0x44:temp1 + 0x44 + 0x20] = var0;
        var var1 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var2 = 0x02;
        var var3 = temp1 + 0x64;
        var var4 = 0x00;
        var var5 = memory[0x40:0x60];
        var var6 = temp1 - var5 + 0x64;
        var var7 = var5;
        var var8 = var4;
        var var9 = var1;
        var var10 = !address(var9).code.length;
    
        if (var10) { revert(memory[0x00:0x00]); }
    
        var temp2;
        temp2, memory[var5:var5 + var4] = address(var9).call.gas(msg.gas).value(var8)(memory[var7:var7 + var6]);
        var4 = !temp2;
    
        if (!var4) { return; }
    
        var temp3 = returndata.length;
        memory[0x00:0x00 + temp3] = returndata[0x00:0x00 + temp3];
        revert(memory[0x00:0x00 + returndata.length]);
    }
    
    function func_03BE(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0xff000000000000084e91743124a982076c59f100840000000000000000000000;
        memory[temp0 + 0x35:temp0 + 0x35 + 0x20] = 0x17f2c5b31e6ffc755997e952174fc537025e254986b5630bbadd188e008f2e93;
        memory[temp0 + 0x15:temp0 + 0x15 + 0x20] = arg0;
        memory[msg.value:msg.value + msg.value] = address(keccak256(memory[temp0:temp0 + 0x55])).call.gas(msg.gas).value(msg.value)(memory[msg.value:msg.value + msg.value]);
    }
    
    function func_03EC(var arg0, var arg1) {
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
    
        var temp6 = var1;
        var temp7 = memory[0x40:0x60];
        memory[0x40:0x60] = temp7 + temp6 * 0x20 + 0x20;
        memory[temp7:temp7 + 0x20] = temp6;
        var temp8 = temp7 + 0x20;
        var temp9 = temp6 * 0x20;
        memory[temp8:temp8 + temp9] = msg.data[var0:var0 + temp9];
        memory[temp8 + temp9:temp8 + temp9 + 0x20] = 0x00;
        arg0 = temp7;
        arg1 = !!msg.data[var2:var2 + 0x20];
    
        if (msg.sender != storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var0 = 0x00;
    
        if (var0 >= memory[arg0:arg0 + 0x20]) {
        label_10E2:
            return;
        } else {
        label_17A8:
            var1 = arg1;
            var2 = 0x02;
            var var3 = 0x00;
            var var4 = arg0;
            var var5 = var0;
        
            if (var5 >= memory[var4:var4 + 0x20]) { assert(); }
        
            var temp10 = var3;
            memory[temp10:temp10 + 0x20] = memory[var5 * 0x20 + var4 + 0x20:var5 * 0x20 + var4 + 0x20 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[temp10 + 0x20:temp10 + 0x20 + 0x20] = var2;
            var temp11 = keccak256(memory[0x00:0x00 + temp10 + 0x40]);
            storage[temp11] = !!var1 | (storage[temp11] & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00);
            var0 = var0 + 0x01;
        
            if (var0 >= memory[arg0:arg0 + 0x20]) { goto label_10E2; }
            else { goto label_17A8; }
        }
    }
    
    function func_04CF(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender != storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = address(this);
        arg1 = 0x00;
        var var0 = 0x0018f2;
        var var1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        var var2 = 0x70a08231;
        var var3 = temp0 + 0x24;
        var var4 = 0x20;
        var var5 = memory[0x40:0x60];
        var var6 = temp0 - var5 + 0x24;
        var var7 = var5;
        var var8 = var1;
        var var9 = !address(var8).code.length;
    
        if (var9) { revert(memory[0x00:0x00]); }
    
        var0 = func_18BD(arg0, var1, var2, var3, var4, var5, var6, var7, var8, var9);
        var temp1 = var0;
        arg1 = temp1;
        var0 = 0xffffffffffffffffffffffffffffffffffffffff & 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        var1 = 0x2e1a7d4d;
        var temp2 = memory[0x40:0x60];
        memory[temp2:temp2 + 0x20] = (var1 & 0xffffffff) << 0xe0;
        var temp3 = temp2 + 0x04;
        memory[temp3:temp3 + 0x20] = arg1;
        var2 = temp3 + 0x20;
        var3 = 0x00;
        var4 = memory[0x40:0x60];
        var5 = var2 - var4;
        var6 = var4;
        var7 = 0x00;
        var8 = var0;
        var9 = !address(var8).code.length;
    
        if (var9) { revert(memory[0x00:0x00]); }
    
        var temp4;
        temp4, memory[var4:var4 + var3] = address(var8).call.gas(msg.gas).value(var7)(memory[var6:var6 + var5]);
        var3 = !temp4;
    
        if (!var3) {
            var temp5 = memory[0x40:0x60];
            var temp6 = arg1;
            var temp7;
            temp7, memory[temp5:temp5 + 0x00] = address(storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(!temp6 * 0x08fc).value(temp6)(memory[temp5:temp5 + 0x00]);
            var0 = !temp7;
        
            if (!var0) { return; }
        
            var temp8 = returndata.length;
            memory[0x00:0x00 + temp8] = returndata[0x00:0x00 + temp8];
            revert(memory[0x00:0x00 + returndata.length]);
        } else {
            var temp9 = returndata.length;
            memory[0x00:0x00 + temp9] = returndata[0x00:0x00 + temp9];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_04FD(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20];
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
        var var0 = msg.sender == 0xdd07249e403979bd79848c27aa5454c7e66bdee7;
    
        if (!var0) {
            var0 = msg.sender == 0xe73c1e4d7992a4a4f19f31531ae7b5dc352b74b0;
        
            if (var0) { goto label_1A11; }
            else { goto label_19F9; }
        } else if (var0) {
        label_1A11:
        
            if (var0) {
            label_1A2C:
            
                if (!var0) { revert(memory[0x00:0x00]); }
            
            label_1A36:
                var temp1 = memory[0x40:0x60];
                var temp2 = arg0;
                memory[temp1 + 0x20:temp1 + 0x20 + 0x20] = (temp2 << 0xe8) & 0xffffff0000000000000000000000000000000000000000000000000000000000;
                var temp3 = memory[0x40:0x60];
                memory[temp3:temp3 + 0x20] = temp1 - temp3 + 0x03;
                memory[0x40:0x60] = temp1 + 0x23;
                var temp4 = temp2 ~ keccak256(memory[temp3 + 0x20:temp3 + 0x20 + memory[temp3:temp3 + 0x20]]);
                var0 = temp4;
                var var1 = var0 >> 0x48;
                var var2 = 0x00;
                var var3 = 0x001a9a;
                var var4 = var1;
                var var5 = var0 >> 0x38;
                var3 = func_3377(var4, var5);
                var temp5 = memory[0x40:0x60];
                memory[temp5:temp5 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                memory[temp5 + 0x04:temp5 + 0x04 + 0x20] = var3 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp5 + 0x24:temp5 + 0x24 + 0x20] = arg1;
                var2 = var3;
                var3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                var4 = 0xa9059cbb;
                var5 = temp5 + 0x44;
                var var6 = 0x20;
                var var7 = memory[0x40:0x60];
                var var8 = temp5 - var7 + 0x44;
                var var9 = var7;
                var var10 = 0x00;
                var var11 = var3;
                var var12 = !address(var11).code.length;
            
                if (var12) { revert(memory[0x00:0x00]); }
            
                var temp6;
                temp6, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
                var6 = !temp6;
            
                if (!var6) {
                    var3 = memory[0x40:0x60];
                    var4 = returndata.length;
                
                    if (var4 < 0x20) { revert(memory[0x00:0x00]); }
                
                    var3 = 0x00;
                    var4 = var3;
                    var5 = 0x001b66;
                    var6 = var2;
                    var7 = var1;
                    var5, var6 = func_360F(var6, var7);
                    var temp7 = var6;
                    var4 = temp7;
                    var temp8 = var5;
                    var3 = temp8;
                    var5 = 0x00;
                    var6 = 0x001b79;
                    var7 = arg1;
                    var8 = var3;
                    var9 = var4;
                    var6 = func_36F2(var7, var8, var9);
                    var5 = var6;
                    var6 = 0x00;
                    var7 = var6;
                
                    if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < var1 & 0xffffffffffffffffffffffffffffffffffffffff) {
                        var7 = var5;
                        var6 = 0x00;
                        var8 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var9 = 0x022c0d9f;
                        var10 = var6;
                        var11 = var7;
                        var12 = address(this);
                        var temp9 = memory[0x40:0x60];
                        var var13 = temp9;
                        var var14 = 0x00;
                        memory[var13:var13 + 0x20] = var14;
                        memory[0x40:0x60] = var13 + (var14 + 0x1f & ~0x1f) + 0x20;
                    
                        if (!var14) {
                        label_1C0D:
                            var temp10 = memory[0x40:0x60];
                            memory[temp10:temp10 + 0x20] = (var9 & 0xffffffff) << 0xe0;
                            var temp11 = temp10 + 0x04;
                            var14 = temp11;
                            memory[var14:var14 + 0x20] = var10;
                            var temp12 = var14 + 0x20;
                            memory[temp12:temp12 + 0x20] = var11;
                            var temp13 = temp12 + 0x20;
                            memory[temp13:temp13 + 0x20] = var12 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var temp14 = temp13 + 0x20;
                            var var15 = temp14;
                            var temp15 = var15 + 0x20;
                            memory[var15:var15 + 0x20] = temp15 - var14;
                            var temp16 = var13;
                            memory[temp15:temp15 + 0x20] = memory[temp16:temp16 + 0x20];
                            var var16 = temp15 + 0x20;
                            var var17 = temp16 + 0x20;
                            var var18 = memory[temp16:temp16 + 0x20];
                            var var19 = var18;
                            var var20 = var16;
                            var var21 = var17;
                            var var22 = 0x00;
                        
                            if (var22 >= var19) {
                            label_1C9A:
                                var temp17 = var18;
                                var16 = temp17 + var16;
                                var17 = temp17 & 0x1f;
                            
                                if (!var17) {
                                    var10 = var16;
                                    var11 = 0x00;
                                    var12 = memory[0x40:0x60];
                                    var13 = var10 - var12;
                                    var14 = var12;
                                    var15 = 0x00;
                                    var16 = var8;
                                    var17 = !address(var16).code.length;
                                
                                    if (var17) { revert(memory[0x00:0x00]); }
                                
                                label_1CEB:
                                    var temp18;
                                    temp18, memory[var12:var12 + var11] = address(var16).call.gas(msg.gas).value(var15)(memory[var14:var14 + var13]);
                                    var11 = !temp18;
                                
                                    if (!var11) {
                                        var temp19 = memory[0x40:0x60];
                                        memory[temp19:temp19 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                                        memory[temp19 + 0x04:temp19 + 0x04 + 0x20] = address(this);
                                        var8 = 0x01;
                                        var9 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                                        var10 = 0x70a08231;
                                        var11 = temp19 + 0x24;
                                        var12 = 0x20;
                                        var13 = memory[0x40:0x60];
                                        var14 = temp19 - var13 + 0x24;
                                        var15 = var13;
                                        var16 = var9;
                                        var17 = !address(var16).code.length;
                                    
                                        if (var17) { revert(memory[0x00:0x00]); }
                                    
                                        var temp20;
                                        temp20, memory[var13:var13 + var12] = address(var16).staticcall.gas(msg.gas)(memory[var15:var15 + var14]);
                                        var12 = !temp20;
                                    
                                        if (!var12) {
                                            var9 = memory[0x40:0x60];
                                            var10 = returndata.length;
                                        
                                            if (var10 < 0x20) { revert(memory[0x00:0x00]); }
                                        
                                            if (memory[var9:var9 + 0x20] > var8) { return; }
                                        
                                            var temp21 = memory[0x40:0x60];
                                            memory[temp21:temp21 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                            memory[temp21 + 0x04:temp21 + 0x04 + 0x20] = 0x20;
                                            memory[temp21 + 0x24:temp21 + 0x24 + 0x20] = 0x03;
                                            memory[temp21 + 0x44:temp21 + 0x44 + 0x20] = 0x4e54460000000000000000000000000000000000000000000000000000000000;
                                            var temp22 = memory[0x40:0x60];
                                            revert(memory[temp22:temp22 + temp21 - temp22 + 0x64]);
                                        } else {
                                            var temp23 = returndata.length;
                                            memory[0x00:0x00 + temp23] = returndata[0x00:0x00 + temp23];
                                            revert(memory[0x00:0x00 + returndata.length]);
                                        }
                                    } else {
                                        var temp24 = returndata.length;
                                        memory[0x00:0x00 + temp24] = returndata[0x00:0x00 + temp24];
                                        revert(memory[0x00:0x00 + returndata.length]);
                                    }
                                } else {
                                    var temp25 = var17;
                                    var temp26 = var16 - temp25;
                                    memory[temp26:temp26 + 0x20] = ~(0x0100 ** (0x20 - temp25) - 0x01) & memory[temp26:temp26 + 0x20];
                                    var10 = temp26 + 0x20;
                                    var11 = 0x00;
                                    var12 = memory[0x40:0x60];
                                    var13 = var10 - var12;
                                    var14 = var12;
                                    var15 = 0x00;
                                    var16 = var8;
                                    var17 = !address(var16).code.length;
                                
                                    if (!var17) { goto label_1CEB; }
                                    else { revert(memory[0x00:0x00]); }
                                }
                            } else {
                            label_1C8A:
                                var temp27 = var22;
                                memory[temp27 + var20:temp27 + var20 + 0x20] = memory[temp27 + var21:temp27 + var21 + 0x20];
                                var22 = temp27 + 0x20;
                            
                                if (var22 >= var19) { goto label_1C9A; }
                                else { goto label_1C8A; }
                            }
                        } else {
                        label_1C01:
                            var temp28 = var13;
                            var temp29 = var14;
                            memory[temp28 + 0x20:temp28 + 0x20 + temp29] = code[code.length:code.length + temp29];
                            var temp30 = memory[0x40:0x60];
                            memory[temp30:temp30 + 0x20] = (var9 & 0xffffffff) << 0xe0;
                            var temp31 = temp30 + 0x04;
                            var14 = temp31;
                            memory[var14:var14 + 0x20] = var10;
                            var temp32 = var14 + 0x20;
                            memory[temp32:temp32 + 0x20] = var11;
                            var temp33 = temp32 + 0x20;
                            memory[temp33:temp33 + 0x20] = var12 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var temp34 = temp33 + 0x20;
                            var15 = temp34;
                            var temp35 = var15 + 0x20;
                            memory[var15:var15 + 0x20] = temp35 - var14;
                            memory[temp35:temp35 + 0x20] = memory[temp28:temp28 + 0x20];
                            var16 = temp35 + 0x20;
                            var17 = temp28 + 0x20;
                            var18 = memory[temp28:temp28 + 0x20];
                            var19 = var18;
                            var20 = var16;
                            var21 = var17;
                            var22 = 0x00;
                        
                            if (var22 >= var19) { goto label_1C9A; }
                            else { goto label_1C8A; }
                        }
                    } else {
                        var8 = var5;
                        var9 = 0x00;
                        var temp36 = var9;
                        var7 = temp36;
                        var temp37 = var8;
                        var6 = temp37;
                        var8 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var9 = 0x022c0d9f;
                        var10 = var6;
                        var11 = var7;
                        var12 = address(this);
                        var temp38 = memory[0x40:0x60];
                        var13 = temp38;
                        var14 = 0x00;
                        memory[var13:var13 + 0x20] = var14;
                        memory[0x40:0x60] = var13 + (var14 + 0x1f & ~0x1f) + 0x20;
                    
                        if (!var14) { goto label_1C0D; }
                        else { goto label_1C01; }
                    }
                } else {
                    var temp39 = returndata.length;
                    memory[0x00:0x00 + temp39] = returndata[0x00:0x00 + temp39];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
            label_1A18:
                memory[0x00:0x20] = msg.sender;
                memory[0x20:0x40] = 0x02;
            
                if (storage[keccak256(memory[0x00:0x40])] & 0xff) { goto label_1A36; }
                else { revert(memory[0x00:0x00]); }
            }
        } else {
        label_19F9:
            var0 = msg.sender == 0xdae238a5d94a39e10594fe4a7f96ef4b83c01899;
        
            if (var0) { goto label_1A2C; }
            else { goto label_1A18; }
        }
    }
    
    function func_0531(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0xff;
    
        if (msg.sender != storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        if (arg0 & 0xff <= 0x00) { revert(memory[0x00:0x00]); }
    
        arg1 = 0x00;
        var var0 = 0x001e56;
        var var1 = memory[0x40:0x60];
        var0 = func_40F0(var1);
        var temp0 = memory[0x40:0x60];
        var temp1 = new(memory[temp0:temp0 + var0 - temp0]).value(0x00)();
        var0 = temp1;
        var1 = !var0;
    
        if (!var1) {
            memory[0x00:0x20] = arg0 & 0xff;
            memory[0x20:0x40] = 0x05;
            var temp2 = keccak256(memory[0x00:0x40]);
            storage[temp2] = (var0 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[temp2] & 0xffffffffffffffffffffffff0000000000000000000000000000000000000000);
            return;
        } else {
            var temp3 = returndata.length;
            memory[0x00:0x00 + temp3] = returndata[0x00:0x00 + temp3];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_0562(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender != storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        arg1 = 0x00;
        var var0 = 0x001f01;
        var var1 = address(this).balance;
        var var2 = arg0;
        var0 = func_3E25(var1, var2);
        var temp0 = memory[0x40:0x60];
        var temp1 = var0;
        arg1 = temp1;
        var temp2;
        temp2, memory[temp0:temp0 + 0x00] = address(storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(!arg1 * 0x08fc).value(arg1)(memory[temp0:temp0 + 0x00]);
        var0 = !temp2;
    
        if (!var0) { return; }
    
        var temp3 = returndata.length;
        memory[0x00:0x00 + temp3] = returndata[0x00:0x00 + temp3];
        revert(memory[0x00:0x00 + returndata.length]);
    }
    
    function transferOwner(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
    
        if (msg.sender != storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        if (!(arg0 & 0xffffffffffffffffffffffffffffffffffffffff)) { revert(memory[0x00:0x00]); }
    
        storage[0x00] = (arg0 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[0x00] & 0xffffffffffffffffffffffff0000000000000000000000000000000000000000);
    }
    
    function func_05F6(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
        arg1 = msg.sender == 0xdd07249e403979bd79848c27aa5454c7e66bdee7;
    
        if (!arg1) {
            arg1 = msg.sender == 0xe73c1e4d7992a4a4f19f31531ae7b5dc352b74b0;
        
            if (arg1) { goto label_20C1; }
            else { goto label_20A9; }
        } else if (arg1) {
        label_20C1:
        
            if (arg1) {
            label_20DC:
            
                if (!arg1) { revert(memory[0x00:0x00]); }
            
            label_20E6:
                var temp0 = memory[0x40:0x60];
                var temp1 = arg0;
                memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = (temp1 << 0xe8) & 0xffffff0000000000000000000000000000000000000000000000000000000000;
                var temp2 = memory[0x40:0x60];
                memory[temp2:temp2 + 0x20] = temp0 - temp2 + 0x03;
                memory[0x40:0x60] = temp0 + 0x23;
                var temp3 = temp1 ~ keccak256(memory[temp2 + 0x20:temp2 + 0x20 + memory[temp2:temp2 + 0x20]]);
                arg1 = temp3;
                var var0 = 0x00215a;
                var var1 = arg1 >> 0x48;
                var var2 = arg1 >> 0x40;
                var var3 = arg1 >> 0x38;
                var var4 = (arg1 >> 0x28) & 0x0fff;
                var var5 = arg1 >> 0x18;
                func_3794(var1, var2, var3, var4, var5);
            
            label_215A:
            
                if (!(arg0 >> 0xfc)) {
                label_10E4:
                    return;
                } else {
                    var0 = 0x0010e4;
                    var temp4 = arg0;
                    var1 = ((temp4 >> 0xe4) & 0xffffff) / 0x10 & 0xffffff;
                    var2 = (temp4 >> 0xfc) & 0xff;
                    func_371C(var1, var2);
                    goto label_10E4;
                }
            } else {
            label_20C8:
                memory[0x00:0x20] = msg.sender;
                memory[0x20:0x40] = 0x02;
            
                if (storage[keccak256(memory[0x00:0x40])] & 0xff) { goto label_20E6; }
                else { revert(memory[0x00:0x00]); }
            }
        } else {
        label_20A9:
            arg1 = msg.sender == 0xdae238a5d94a39e10594fe4a7f96ef4b83c01899;
        
            if (arg1) { goto label_20DC; }
            else { goto label_20C8; }
        }
    }
    
    function func_0624(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
    
        if (msg.sender != storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        arg1 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var0 = 0x84b366dc;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (var0 & 0xffffffff) << 0xe0;
        var var1 = temp0 + 0x04;
        var var2 = 0x00;
        var var3 = memory[0x40:0x60];
        var var4 = var1 - var3;
        var var5 = var3;
        var var6 = 0x00;
        var var7 = arg1;
        var var8 = !address(var7).code.length;
    
        if (var8) { revert(memory[0x00:0x00]); }
    
        var temp1;
        temp1, memory[var3:var3 + var2] = address(var7).call.gas(msg.gas).value(var6)(memory[var5:var5 + var4]);
        var2 = !temp1;
    
        if (!var2) { return; }
    
        var temp2 = returndata.length;
        memory[0x00:0x00 + temp2] = returndata[0x00:0x00 + temp2];
        revert(memory[0x00:0x00 + returndata.length]);
    }
    
    function func_0668(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender != 0x58d46ae3114fc82d80f57c9a2a322845a19418fb) { revert(memory[0x00:0x00]); }
    
        var temp0 = arg0 ~ 0x8f0f90cf868eda8141371c26266f31f07243e96cb9f937247e4dac44527df6f5;
        arg1 = temp0;
        var var0 = arg1 >> 0x48;
        var var1 = 0x00;
        var var2 = 0x002252;
        var var3 = var0;
        var var4 = arg1 >> 0x38;
        var2 = func_3377(var3, var4);
        var temp1 = memory[0x40:0x60];
        memory[temp1:temp1 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        memory[temp1 + 0x04:temp1 + 0x04 + 0x20] = 0x45544abf5936deb78490d38ec42b80757d16c014;
        var1 = var2;
        var2 = 0x00;
        var3 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
        var4 = 0x70a08231;
        var var5 = temp1 + 0x24;
        var var6 = 0x20;
        var var7 = memory[0x40:0x60];
        var var8 = temp1 - var7 + 0x24;
        var var9 = var7;
        var var10 = var3;
        var var11 = !address(var10).code.length;
    
        if (var11) { revert(memory[0x00:0x00]); }
    
        var temp2;
        temp2, memory[var7:var7 + var6] = address(var10).staticcall.gas(msg.gas)(memory[var9:var9 + var8]);
        var6 = !temp2;
    
        if (!var6) {
            var3 = memory[0x40:0x60];
            var4 = returndata.length;
        
            if (var4 < 0x20) { revert(memory[0x00:0x00]); }
        
            var temp3 = memory[var3:var3 + 0x20];
            var2 = temp3;
            var3 = 0x45544abf5936deb78490d38ec42b80757d16c014;
            var4 = 0x02;
            var5 = var0;
            var6 = var1;
            var7 = 0x002335;
            var8 = var2;
            var9 = 0x01;
            var7 = func_35F9(var8, var9);
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = (var4 & 0xffffffff) << 0xe0;
            var temp5 = temp4 + 0x04;
            memory[temp5:temp5 + 0x20] = var5 & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp6 = temp5 + 0x20;
            memory[temp6:temp6 + 0x20] = var6 & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp7 = temp6 + 0x20;
            memory[temp7:temp7 + 0x20] = var7;
            var5 = temp7 + 0x20;
            var6 = 0x00;
            var7 = memory[0x40:0x60];
            var8 = var5 - var7;
            var9 = var7;
            var10 = 0x00;
            var11 = var3;
            var var12 = !address(var11).code.length;
        
            if (var12) { revert(memory[0x00:0x00]); }
        
            var temp8;
            temp8, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
            var6 = !temp8;
        
            if (!var6) {
                var3 = 0x00;
                var4 = var3;
                var5 = 0x0023fa;
                var6 = var1;
                var7 = var0;
                var5, var6 = func_360F(var6, var7);
                var temp9 = var6;
                var4 = temp9;
                var3 = var5;
                var5 = 0x00;
                var6 = 0x002487;
                var7 = 0x000d4e;
                var8 = var4;
                var9 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                var10 = 0x70a08231;
                var temp10 = memory[0x40:0x60];
                memory[temp10:temp10 + 0x20] = (var10 & 0xffffffff) << 0xe0;
                var temp11 = temp10 + 0x04;
                memory[temp11:temp11 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                var11 = temp11 + 0x20;
                var12 = 0x20;
                var var13 = memory[0x40:0x60];
                var var14 = var11 - var13;
                var var15 = var13;
                var var16 = var9;
                var var17 = !address(var16).code.length;
            
                if (var17) { revert(memory[0x00:0x00]); }
            
                var7 = func_0D13(var8, var9, var10, var11, var12, var13, var14, var15, var16, var17);
                var6 = func_0D4E(var3, var4, var7);
                var5 = var6;
                var6 = 0x00;
                var7 = var6;
            
                if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < var0 & 0xffffffffffffffffffffffffffffffffffffffff) {
                    var7 = 0x00;
                    var6 = var5;
                    var8 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var9 = 0x022c0d9f;
                    var10 = var6;
                    var11 = var7;
                    var12 = address(this);
                    var temp12 = memory[0x40:0x60];
                    var14 = 0x00;
                    var13 = temp12;
                    memory[var13:var13 + 0x20] = var14;
                    memory[0x40:0x60] = var13 + (var14 + 0x1f & ~0x1f) + 0x20;
                
                    if (!var14) {
                    label_251B:
                        var temp13 = memory[0x40:0x60];
                        memory[temp13:temp13 + 0x20] = (var9 & 0xffffffff) << 0xe0;
                        var temp14 = temp13 + 0x04;
                        var14 = temp14;
                        memory[var14:var14 + 0x20] = var10;
                        var temp15 = var14 + 0x20;
                        memory[temp15:temp15 + 0x20] = var11;
                        var temp16 = temp15 + 0x20;
                        memory[temp16:temp16 + 0x20] = var12 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var temp17 = temp16 + 0x20;
                        var15 = temp17;
                        var temp18 = var15 + 0x20;
                        memory[var15:var15 + 0x20] = temp18 - var14;
                        var temp19 = var13;
                        memory[temp18:temp18 + 0x20] = memory[temp19:temp19 + 0x20];
                        var16 = temp18 + 0x20;
                        var17 = temp19 + 0x20;
                        var var18 = memory[temp19:temp19 + 0x20];
                        var var19 = var18;
                        var var20 = var16;
                        var var21 = var17;
                        var var22 = 0x00;
                    
                        if (var22 >= var19) {
                        label_25A8:
                            var temp20 = var18;
                            var16 = temp20 + var16;
                            var17 = temp20 & 0x1f;
                        
                            if (!var17) {
                                var10 = var16;
                                var11 = 0x00;
                                var12 = memory[0x40:0x60];
                                var13 = var10 - var12;
                                var14 = var12;
                                var15 = 0x00;
                                var16 = var8;
                                var17 = !address(var16).code.length;
                            
                                if (var17) { revert(memory[0x00:0x00]); }
                            
                            label_25F9:
                                var temp21;
                                temp21, memory[var12:var12 + var11] = address(var16).call.gas(msg.gas).value(var15)(memory[var14:var14 + var13]);
                                var11 = !temp21;
                            
                                if (var11) {
                                    var temp27 = returndata.length;
                                    memory[0x00:0x00 + temp27] = returndata[0x00:0x00 + temp27];
                                    revert(memory[0x00:0x00 + returndata.length]);
                                } else if (var5 <= (arg1 & 0xffffffff) * 0xe8d4a51000) {
                                label_268F:
                                
                                    if (!(arg1 >> 0xfc)) {
                                    label_0F96:
                                        return;
                                    } else {
                                        var8 = 0x000f96;
                                        var9 = 0x10;
                                        var10 = (arg1 >> 0xe4) & 0xffffff;
                                        func_0F82(arg1, var9, var10);
                                        goto label_0F96;
                                    }
                                } else {
                                    var temp22 = arg1;
                                    var temp23 = memory[0x40:0x60];
                                    var temp24;
                                    temp24, memory[temp23:temp23 + 0x00] = address(block.coinbase).call.gas(msg.gas).value((((temp22 >> 0x40) & 0xff) * (var5 - (temp22 & 0xffffffff) * 0xe8d4a51000)) / 0x64)(memory[temp23:temp23 + 0x00]);
                                    var9 = returndata.length;
                                    var10 = var9;
                                
                                    if (var10 == 0x00) { goto label_268F; }
                                
                                    var temp25 = memory[0x40:0x60];
                                    var9 = temp25;
                                    memory[0x40:0x60] = var9 + (returndata.length + 0x3f & ~0x1f);
                                    memory[var9:var9 + 0x20] = returndata.length;
                                    var temp26 = returndata.length;
                                    memory[var9 + 0x20:var9 + 0x20 + temp26] = returndata[0x00:0x00 + temp26];
                                    goto label_268F;
                                }
                            } else {
                                var temp28 = var17;
                                var temp29 = var16 - temp28;
                                memory[temp29:temp29 + 0x20] = ~(0x0100 ** (0x20 - temp28) - 0x01) & memory[temp29:temp29 + 0x20];
                                var10 = temp29 + 0x20;
                                var11 = 0x00;
                                var12 = memory[0x40:0x60];
                                var13 = var10 - var12;
                                var14 = var12;
                                var15 = 0x00;
                                var16 = var8;
                                var17 = !address(var16).code.length;
                            
                                if (!var17) { goto label_25F9; }
                                else { revert(memory[0x00:0x00]); }
                            }
                        } else {
                        label_2598:
                            var temp30 = var22;
                            memory[temp30 + var20:temp30 + var20 + 0x20] = memory[temp30 + var21:temp30 + var21 + 0x20];
                            var22 = temp30 + 0x20;
                        
                            if (var22 >= var19) { goto label_25A8; }
                            else { goto label_2598; }
                        }
                    } else {
                    label_250F:
                        var temp31 = var13;
                        var temp32 = var14;
                        memory[temp31 + 0x20:temp31 + 0x20 + temp32] = code[code.length:code.length + temp32];
                        var temp33 = memory[0x40:0x60];
                        memory[temp33:temp33 + 0x20] = (var9 & 0xffffffff) << 0xe0;
                        var temp34 = temp33 + 0x04;
                        var14 = temp34;
                        memory[var14:var14 + 0x20] = var10;
                        var temp35 = var14 + 0x20;
                        memory[temp35:temp35 + 0x20] = var11;
                        var temp36 = temp35 + 0x20;
                        memory[temp36:temp36 + 0x20] = var12 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var temp37 = temp36 + 0x20;
                        var15 = temp37;
                        var temp38 = var15 + 0x20;
                        memory[var15:var15 + 0x20] = temp38 - var14;
                        memory[temp38:temp38 + 0x20] = memory[temp31:temp31 + 0x20];
                        var16 = temp38 + 0x20;
                        var18 = memory[temp31:temp31 + 0x20];
                        var17 = temp31 + 0x20;
                        var19 = var18;
                        var20 = var16;
                        var21 = var17;
                        var22 = 0x00;
                    
                        if (var22 >= var19) { goto label_25A8; }
                        else { goto label_2598; }
                    }
                } else {
                    var8 = 0x00;
                    var9 = var5;
                    var temp39 = var9;
                    var7 = temp39;
                    var temp40 = var8;
                    var6 = temp40;
                    var8 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var9 = 0x022c0d9f;
                    var10 = var6;
                    var11 = var7;
                    var12 = address(this);
                    var temp41 = memory[0x40:0x60];
                    var13 = temp41;
                    var14 = 0x00;
                    memory[var13:var13 + 0x20] = var14;
                    memory[0x40:0x60] = var13 + (var14 + 0x1f & ~0x1f) + 0x20;
                
                    if (!var14) { goto label_251B; }
                    else { goto label_250F; }
                }
            } else {
                var temp42 = returndata.length;
                memory[0x00:0x00 + temp42] = returndata[0x00:0x00 + temp42];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp43 = returndata.length;
            memory[0x00:0x00 + temp43] = returndata[0x00:0x00 + temp43];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_0696(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & 0xff;
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        var var0 = 0x00;
        memory[var0:var0 + 0x20] = arg0 & 0xff;
        memory[0x20:0x40] = 0x05;
        var temp1 = storage[keccak256(memory[var0:var0 + 0x40])];
        var temp2 = memory[0x40:0x60];
        memory[temp2:temp2 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        memory[temp2 + 0x04:temp2 + 0x04 + 0x20] = temp1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var1 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var4 = 0x20;
        var var2 = 0x70a08231;
        var var3 = temp2 + 0x24;
        var var5 = memory[0x40:0x60];
        var var6 = temp2 - var5 + 0x24;
        var var7 = var5;
        var var8 = var1;
        var var9 = !address(var8).code.length;
    
        if (var9) { revert(memory[0x00:0x00]); }
    
        var temp3;
        temp3, memory[var5:var5 + var4] = address(var8).staticcall.gas(msg.gas)(memory[var7:var7 + var6]);
        var4 = !temp3;
    
        if (!var4) {
            var1 = memory[0x40:0x60];
            var2 = returndata.length;
        
            if (var2 >= 0x20) { return memory[var1:var1 + 0x20]; }
            else { revert(memory[0x00:0x00]); }
        } else {
            var temp4 = returndata.length;
            memory[0x00:0x00 + temp4] = returndata[0x00:0x00 + temp4];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_06E3(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
    
        if (msg.sender != storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var temp1 = memory[0x40:0x60];
        memory[temp1 + 0x24:temp1 + 0x24 + 0x20] = msg.sender;
        memory[temp1 + 0x44:temp1 + 0x44 + 0x20] = arg1;
        var temp2 = memory[0x40:0x60];
        memory[temp2:temp2 + 0x20] = temp1 - temp2 + 0x44;
        var var1 = temp2;
        memory[0x40:0x60] = temp1 + 0x64;
        var temp3 = var1 + 0x20;
        memory[temp3:temp3 + 0x20] = (memory[temp3:temp3 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) | 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        var var2 = memory[0x40:0x60];
        var var4 = temp3;
        var var0 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var3 = var2;
        var var5 = memory[var1:var1 + 0x20];
        var var6 = var5;
        var var7 = var3;
        var var8 = var4;
    
        if (var6 < 0x20) {
        label_2856:
            var temp4 = 0x0100 ** (0x20 - var6) - 0x01;
            var temp5 = var7;
            memory[temp5:temp5 + 0x20] = (memory[var8:var8 + 0x20] & ~temp4) | (memory[temp5:temp5 + 0x20] & temp4);
            var temp6 = memory[0x40:0x60];
            var temp7;
            temp7, memory[temp6:temp6 + 0x00] = address(var0).call.gas(msg.gas)(memory[temp6:temp6 + (var5 + var3) - temp6]);
            var1 = returndata.length;
            var2 = var1;
        
            if (var2 == 0x00) {
            label_1FD8:
                return;
            } else {
                var temp8 = memory[0x40:0x60];
                var1 = temp8;
                memory[0x40:0x60] = var1 + (returndata.length + 0x3f & ~0x1f);
                memory[var1:var1 + 0x20] = returndata.length;
                var temp9 = returndata.length;
                memory[var1 + 0x20:var1 + 0x20 + temp9] = returndata[0x00:0x00 + temp9];
                goto label_1FD8;
            }
        } else {
        label_2821:
            var temp10 = var8;
            var temp11 = var7;
            memory[temp11:temp11 + 0x20] = memory[temp10:temp10 + 0x20];
            var6 = var6 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0;
            var7 = temp11 + 0x20;
            var8 = temp10 + 0x20;
        
            if (var6 < 0x20) { goto label_2856; }
            else { goto label_2821; }
        }
    }
    
    function func_0745(var arg0, var arg1) {
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
        var2 = msg.data[var4:var4 + 0x20];
    
        if (msg.sender != storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var3 = 0xffffffffffffffffffffffffffffffffffffffff & 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        var4 = 0x2e1a7d4d;
        var temp13 = memory[0x40:0x60];
        memory[temp13:temp13 + 0x20] = (var4 & 0xffffffff) << 0xe0;
        var temp14 = temp13 + 0x04;
        memory[temp14:temp14 + 0x20] = var2;
        var var5 = temp14 + 0x20;
        var var6 = 0x00;
        var var7 = memory[0x40:0x60];
        var var8 = var5 - var7;
        var var9 = var7;
        var var10 = 0x00;
        var var11 = var3;
        var var12 = !address(var11).code.length;
    
        if (var12) { revert(memory[0x00:0x00]); }
    
        var temp15;
        temp15, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
        var6 = !temp15;
    
        if (!var6) {
            var3 = 0x00;
        
            if (var3 >= arg1) {
            label_2A64:
                return;
            } else {
            label_298A:
                var4 = 0x02;
                var5 = 0x00;
                var6 = arg0;
                var7 = arg1;
                var8 = var3;
            
                if (var8 >= var7) { assert(); }
            
                var temp16 = var5;
                memory[temp16:temp16 + 0x20] = msg.data[var8 * 0x20 + var6:var8 * 0x20 + var6 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp16 + 0x20:temp16 + 0x20 + 0x20] = var4;
            
                if (!(storage[keccak256(memory[0x00:0x00 + temp16 + 0x40])] & 0xff)) { revert(memory[0x00:0x00]); }
            
                var4 = arg0;
                var5 = arg1;
                var6 = var3;
            
                if (var6 >= var5) { assert(); }
            
                var4 = msg.data[var6 * 0x20 + var4:var6 * 0x20 + var4 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                var5 = 0x08fc;
                var6 = var0;
                var7 = var1;
                var8 = var3;
            
                if (var8 >= var7) { assert(); }
            
                var temp17 = msg.data[var8 * 0x20 + var6:var8 * 0x20 + var6 + 0x20];
                var temp18 = memory[0x40:0x60];
                var temp19;
                temp19, memory[temp18:temp18 + 0x00] = address(var4).call.gas(!temp17 * var5).value(temp17)(memory[temp18:temp18 + memory[0x40:0x60] - temp18]);
                var4 = !temp19;
            
                if (!var4) {
                    var3 = var3 + 0x01;
                
                    if (var3 >= arg1) { goto label_2A64; }
                    else { goto label_298A; }
                } else {
                    var temp20 = returndata.length;
                    memory[0x00:0x00 + temp20] = returndata[0x00:0x00 + temp20];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            }
        } else {
            var temp21 = returndata.length;
            memory[0x00:0x00 + temp21] = returndata[0x00:0x00 + temp21];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_081E(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender != storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = address(this);
        arg1 = 0x00;
        var var0 = 0x002b04;
        var var1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        var var2 = 0x70a08231;
        var var3 = temp0 + 0x24;
        var var4 = 0x20;
        var var5 = memory[0x40:0x60];
        var var6 = temp0 - var5 + 0x24;
        var var7 = var5;
        var var8 = var1;
        var var9 = !address(var8).code.length;
    
        if (var9) { revert(memory[0x00:0x00]); }
    
        var0 = func_18BD(arg0, var1, var2, var3, var4, var5, var6, var7, var8, var9);
        var temp1 = var0;
        arg1 = temp1;
        var0 = 0xffffffffffffffffffffffffffffffffffffffff & 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        var1 = 0x2e1a7d4d;
        var temp2 = memory[0x40:0x60];
        memory[temp2:temp2 + 0x20] = (var1 & 0xffffffff) << 0xe0;
        var temp3 = temp2 + 0x04;
        memory[temp3:temp3 + 0x20] = arg1;
        var2 = temp3 + 0x20;
        var3 = 0x00;
        var4 = memory[0x40:0x60];
        var5 = var2 - var4;
        var6 = var4;
        var7 = 0x00;
        var8 = var0;
        var9 = !address(var8).code.length;
    
        if (var9) { revert(memory[0x00:0x00]); }
    
        var temp4;
        temp4, memory[var4:var4 + var3] = address(var8).call.gas(msg.gas).value(var7)(memory[var6:var6 + var5]);
        var3 = !temp4;
    
        if (!var3) { return; }
    
        var temp5 = returndata.length;
        memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
        revert(memory[0x00:0x00 + returndata.length]);
    }
    
    function initialize(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
    
        if (storage[0x04] & 0xff) { revert(memory[0x00:0x00]); }
    
        storage[0x00] = (storage[0x00] & 0xffffffffffffffffffffffff0000000000000000000000000000000000000000) | 0x50d1b550f854b785cedf754114e28d496c8a89c1;
        var temp0 = (storage[0x01] & 0xffffffffffffffffffffffff0000000000000000000000000000000000000000) | (arg0 & 0xffffffffffffffffffffffffffffffffffffffff);
        storage[0x01] = temp0;
        memory[0x00:0x20] = temp0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x02;
        var temp1 = keccak256(memory[0x00:0x40]);
        storage[temp1] = (storage[temp1] & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00) | 0x01;
        memory[0x00:0x20] = 0x00;
        memory[0x20:0x40] = 0x05;
        storage[0x05b8ccbb9d4d8fb16ea74ce3c29a41f1b461fbdaff4714a0d9a8eb05499746bc] = address(this) | (storage[0x05b8ccbb9d4d8fb16ea74ce3c29a41f1b461fbdaff4714a0d9a8eb05499746bc] & 0xffffffffffffffffffffffff0000000000000000000000000000000000000000);
        storage[0x04] = (storage[0x04] & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00) | 0x01;
    }
    
    function transferManagership(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
    
        if (msg.sender != storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        if (!(arg0 & 0xffffffffffffffffffffffffffffffffffffffff)) { revert(memory[0x00:0x00]); }
    
        storage[0x01] = (arg0 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[0x01] & 0xffffffffffffffffffffffff0000000000000000000000000000000000000000);
    }
    
    function set_mint(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender != storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        storage[0x03] = arg0;
    }
    
    function func_0902(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
        memory[msg.value:msg.value + 0x20] = 0x746d084e91743124a982076c59f100843318585733ff6000526015600bf30000;
        arg1 = 0x06;
    
        if (!arg1) {
        label_2EC1:
        
            if (arg0 <= storage[0x03]) { return; }
        
            storage[0x03] = arg0;
            return;
        } else {
        label_2D56:
            var temp0 = arg0;
            var temp1 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0)();
            var temp2 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x01)();
            var temp3 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x02)();
            var temp4 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x03)();
            var temp5 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x04)();
            var temp6 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x05)();
            var temp7 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x06)();
            var temp8 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x07)();
            var temp9 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x08)();
            var temp10 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x09)();
            var temp11 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x0a)();
            var temp12 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x0b)();
            var temp13 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x0c)();
            var temp14 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x0d)();
            var temp15 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x0e)();
            var temp16 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x0f)();
            var temp17 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x10)();
            var temp18 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x11)();
            var temp19 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x12)();
            var temp20 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x13)();
            var temp21 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x14)();
            var temp22 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x15)();
            var temp23 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x16)();
            var temp24 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x17)();
            var temp25 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x18)();
            var temp26 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x19)();
            var temp27 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x1a)();
            var temp28 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x1b)();
            var temp29 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x1c)();
            var temp30 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x1d)();
            var temp31 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x1e)();
            var temp32 = new(memory[msg.value:msg.value + 0x1e]).value(msg.value).salt(temp0 + 0x1f)();
            arg0 = temp0 + 0x20;
            arg1 = arg1 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
        
            if (!arg1) { goto label_2EC1; }
            else { goto label_2D56; }
        }
    }
    
    function func_0948(var arg0, var arg1) {
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
    
        var temp5 = var2;
        var temp6 = arg0;
        arg0 = var0;
        var temp7 = arg1;
        arg1 = var1;
        var1 = temp7;
        var0 = temp6;
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
    
        var0 = var2;
        var1 = var3;
    
        if (msg.sender != storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var2 = 0x00;
    
        if (var2 >= arg1) {
        label_1FD8:
            return;
        } else {
        label_306C:
            var3 = 0x00;
            var4 = arg0;
            var var5 = arg1;
            var var6 = var2;
        
            if (var6 >= var5) { assert(); }
        
            if (msg.data[var6 * 0x20 + var4:var6 * 0x20 + var4 + 0x20] & 0xff <= var3) { revert(memory[0x00:0x00]); }
        
            var3 = var0;
            var4 = var1;
            var5 = var2;
        
            if (var5 >= var4) { assert(); }
        
            var3 = msg.data[var5 * 0x20 + var3:var5 * 0x20 + var3 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
            var4 = 0x05;
            var5 = 0x00;
            var6 = arg0;
            var var7 = arg1;
            var var8 = var2;
        
            if (var8 >= var7) { assert(); }
        
            var temp11 = var5;
            memory[temp11:temp11 + 0x20] = msg.data[var8 * 0x20 + var6:var8 * 0x20 + var6 + 0x20] & 0xff;
            memory[temp11 + 0x20:temp11 + 0x20 + 0x20] = var4;
            var temp12 = keccak256(memory[0x00:0x00 + temp11 + 0x40]);
            storage[temp12] = (var3 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[temp12] & 0xffffffffffffffffffffffff0000000000000000000000000000000000000000);
            var2 = var2 + 0x01;
        
            if (var2 >= arg1) { goto label_1FD8; }
            else { goto label_306C; }
        }
    }
    
    function func_0D13(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5, var arg6, var arg7, var arg8, var arg9) returns (var r0) {
        var temp0;
        temp0, memory[arg5:arg5 + arg4] = address(arg8).staticcall.gas(msg.gas)(memory[arg7:arg7 + arg6]);
        arg4 = !temp0;
    
        if (!arg4) {
            arg1 = memory[0x40:0x60];
            arg2 = returndata.length;
        
            if (arg2 < 0x20) { revert(memory[0x00:0x00]); }
        
            var temp1 = arg0;
            arg0 = memory[arg1:arg1 + 0x20];
            arg1 = temp1;
            r0 = func_35F9(arg0, arg1);
            // Error: Could not resolve method call return address!
        } else {
            var temp2 = returndata.length;
            memory[0x00:0x00 + temp2] = returndata[0x00:0x00 + temp2];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_0D4E(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = arg1;
        var var1 = arg0;
        r0 = func_36F2(arg2, var0, var1);
        // Error: Could not resolve method call return address!
    }
    
    function func_0F82(var arg0, var arg1, var arg2) {
        arg1 = arg2 / arg1 & 0xffffff;
        arg2 = (arg0 >> 0xfc) & 0xff;
        func_371C(arg1, arg2);
        // Error: Could not resolve method call return address!
    }
    
    function func_10C2(var arg0, var arg1) {
        arg0 = arg1 / arg0 & 0xffffff;
        arg1 = 0x01;
        func_371C(arg0, arg1);
        // Error: Could not resolve method call return address!
    }
    
    function func_181F() returns (var r0) { return storage[0x03]; }
    
    function func_18BD(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5, var arg6, var arg7, var arg8, var arg9) returns (var r0) {
        var temp0;
        temp0, memory[arg5:arg5 + arg4] = address(arg8).staticcall.gas(msg.gas)(memory[arg7:arg7 + arg6]);
        arg4 = !temp0;
    
        if (!arg4) {
            arg1 = memory[0x40:0x60];
            arg2 = returndata.length;
        
            if (arg2 < 0x20) { revert(memory[0x00:0x00]); }
        
            arg1 = memory[arg1:arg1 + 0x20];
            arg2 = arg0;
            r0 = func_3E25(arg1, arg2);
            // Error: Could not resolve method call return address!
        } else {
            var temp1 = returndata.length;
            memory[0x00:0x00 + temp1] = returndata[0x00:0x00 + temp1];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function manager() returns (var r0) { return storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff; }
    
    function func_1F66() {
        var var0 = 0xffffffffffffffffffffffffffffffffffffffff & 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        var var1 = 0xd0e30db0;
        var var2 = msg.value;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (var1 & 0xffffffff) << 0xe0;
        var var3 = temp0 + 0x04;
        var var4 = 0x00;
        var var5 = memory[0x40:0x60];
        var var6 = var3 - var5;
        var var7 = var5;
        var var8 = var2;
        var var9 = var0;
        var var10 = !address(var9).code.length;
    
        if (var10) { revert(memory[0x00:0x00]); }
    
        var temp1;
        temp1, memory[var5:var5 + var4] = address(var9).call.gas(msg.gas).value(var8)(memory[var7:var7 + var6]);
        var4 = !temp1;
    
        if (!var4) { return; }
    
        var temp2 = returndata.length;
        memory[0x00:0x00 + temp2] = returndata[0x00:0x00 + temp2];
        revert(memory[0x00:0x00 + returndata.length]);
    }
    
    function owner() returns (var r0) { return storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff; }
    
    function func_3135(var arg0) {
        var temp0 = memory[0x40:0x60];
        var temp1 = arg0;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = temp1 & 0xffffff0000000000000000000000000000000000000000000000000000000000;
        var temp2 = memory[0x40:0x60];
        memory[temp2:temp2 + 0x20] = temp0 - temp2 + 0x03;
        var temp3 = temp0 + 0x23;
        memory[0x40:0x60] = temp3;
        var temp4 = keccak256(memory[temp2 + 0x20:temp2 + 0x20 + memory[temp2:temp2 + 0x20]]);
        memory[temp3:temp3 + 0x20] = 0x0902f1ac00000000000000000000000000000000000000000000000000000000;
        var var0 = temp1 ~ temp4;
        var var1 = var0 >> 0x0c;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var5 = 0x0902f1ac;
        var var6 = temp0 + 0x27;
        var var7 = 0x60;
        var var8 = memory[0x40:0x60];
        var var9 = temp0 - var8 + 0x27;
        var var10 = var8;
        var var11 = var4;
        var var12 = !address(var11).code.length;
    
        if (var12) { revert(memory[0x00:0x00]); }
    
        var temp5;
        temp5, memory[var8:var8 + var7] = address(var11).staticcall.gas(msg.gas)(memory[var10:var10 + var9]);
        var7 = !temp5;
    
        if (!var7) {
            var4 = memory[0x40:0x60];
            var5 = returndata.length;
        
            if (var5 < 0x60) { revert(memory[0x00:0x00]); }
        
            var temp6 = var4;
            var2 = memory[temp6:temp6 + 0x20] & 0xffffffffffffffffffffffffffff;
            var3 = memory[temp6 + 0x20:temp6 + 0x20 + 0x20] & 0xffffffffffffffffffffffffffff;
        
            if (((var0 >> 0xac) & 0xff) / 0x10 & 0xff != 0x00) {
                var4 = tx.gasprice % 0x3b9aca00 * 0x5af3107a4000;
                var5 = var2 >= var4;
            
                if (var5) {
                label_327D:
                
                    if (var5) {
                    label_328D:
                    
                        if (var5) {
                        label_3297:
                        
                            if (!var5) {
                            label_32CC:
                                var5 = ((var0 >> 0xb4) & 0xffffffff) * 0x09184e72a000;
                                var6 = (arg0 >> 0xec) * 0x038d7ea4c68000;
                                var7 = 0x00;
                            
                                if (var5 + var2 <= var6 + var4) {
                                    var7 = var5;
                                    var8 = 0x003337;
                                    var9 = var1;
                                    var temp7 = var0 >> 0xac;
                                    var10 = (temp7 & 0xff) / 0x10;
                                    var11 = temp7 & 0x0f;
                                    var12 = var7;
                                    var var13 = 0x003331;
                                    var var14 = var12;
                                    var var15 = var2;
                                    var var16 = var3;
                                    var13 = func_36F2(var14, var15, var16);
                                    func_3331(var9, var10, var11, var12, var13);
                                
                                label_3337:
                                
                                    if (!((arg0 >> 0xe8) & 0x0f)) {
                                    label_1496:
                                        return;
                                    } else {
                                        var8 = 0x001496;
                                        var9 = ((var0 >> 0xd0) & 0xffffff) / 0x10 & 0xffffff;
                                        var10 = 0x10;
                                        var11 = (arg0 >> 0xe8) & 0xff;
                                    
                                        if (!var10) { assert(); }
                                    
                                        func_336D(var9, var10, var11);
                                        goto label_1496;
                                    }
                                } else {
                                    var8 = (var4 + var6) - var2;
                                    var temp8 = var8;
                                    var7 = temp8;
                                    var8 = 0x003337;
                                    var9 = var1;
                                    var temp9 = var0 >> 0xac;
                                    var10 = (temp9 & 0xff) / 0x10;
                                    var11 = temp9 & 0x0f;
                                    var12 = var7;
                                    var13 = 0x003331;
                                    var14 = var12;
                                    var15 = var2;
                                    var16 = var3;
                                    var13 = func_36F2(var14, var15, var16);
                                    func_3331(var9, var10, var11, var12, var13);
                                    goto label_3337;
                                }
                            } else {
                            label_329E:
                            
                                if (!((arg0 >> 0xe8) & 0x0f)) {
                                label_32C1:
                                    return;
                                } else {
                                    var5 = 0x0032c1;
                                    var6 = 0x10;
                                    var7 = (var0 >> 0xd0) & 0xffffff;
                                    func_10C2(var6, var7);
                                    goto label_32C1;
                                }
                            }
                        } else {
                        label_3294:
                        
                            if (block.coinbase) { goto label_32CC; }
                            else { goto label_329E; }
                        }
                    } else {
                    label_3284:
                        var5 = block.gaslimit >= 0x01d7b08e;
                    
                        if (var5) { goto label_3297; }
                        else { goto label_3294; }
                    }
                } else {
                label_3270:
                    var5 = var0 & 0x0fff >= block.number % 0x03e8;
                
                    if (var5) { goto label_328D; }
                    else { goto label_3284; }
                }
            } else {
                var temp10 = var3;
                var3 = var2;
                var2 = temp10;
                var4 = tx.gasprice % 0x3b9aca00 * 0x5af3107a4000;
                var5 = var2 >= var4;
            
                if (var5) { goto label_327D; }
                else { goto label_3270; }
            }
        } else {
            var temp11 = returndata.length;
            memory[0x00:0x00 + temp11] = returndata[0x00:0x00 + temp11];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_3331(var arg0, var arg1, var arg2, var arg3, var arg4) {
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = arg3;
        var var0 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        var var1 = 0xa9059cbb;
        var var2 = temp0 + 0x44;
        var var3 = 0x20;
        var var4 = memory[0x40:0x60];
        var var5 = temp0 - var4 + 0x44;
        var var6 = var4;
        var var7 = 0x00;
        var var8 = var0;
        var var9 = !address(var8).code.length;
    
        if (var9) { revert(memory[0x00:0x00]); }
    
        var temp1;
        temp1, memory[var4:var4 + var3] = address(var8).call.gas(msg.gas).value(var7)(memory[var6:var6 + var5]);
        var3 = !temp1;
    
        if (!var3) {
            var0 = memory[0x40:0x60];
            var1 = returndata.length;
        
            if (var1 < 0x20) { revert(memory[0x00:0x00]); }
        
            var0 = 0x00;
            var1 = var0;
        
            if (arg1 & 0xff == 0x01) {
                var1 = arg4;
                var0 = 0x00;
                var2 = 0x00;
            
                if (arg2 & 0xff != 0x00) {
                label_3F2F:
                    memory[0x00:0x20] = arg2 & 0xff;
                    memory[0x20:0x40] = 0x05;
                    var2 = storage[keccak256(memory[0x00:0x40])] & 0xffffffffffffffffffffffffffffffffffffffff;
                
                    if (!(tx.gasprice % 0x0a)) {
                    label_4081:
                        var3 = arg0;
                        var4 = var0;
                        var5 = var1;
                        var6 = var2;
                        var7 = 0x004093;
                        var8 = memory[0x40:0x60];
                        var7 = func_40FE(var8);
                        var temp2 = var7;
                        memory[temp2:temp2 + 0x20] = var3 & 0xffffffffffffffffffffffffffffffffffffffff;
                        memory[temp2 + 0x20:temp2 + 0x20 + 0x20] = var4;
                        memory[temp2 + 0x40:temp2 + 0x40 + 0x20] = var5;
                        memory[temp2 + 0x60:temp2 + 0x60 + 0x20] = var6 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var temp3 = memory[0x40:0x60];
                        var temp4 = new(memory[temp3:temp3 + temp2 - temp3 + 0x80]).value(0x00)();
                        var3 = temp4;
                        var4 = !var3;
                    
                        if (!var4) { return; }
                    
                        var temp5 = returndata.length;
                        memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
                        revert(memory[0x00:0x00 + returndata.length]);
                    } else {
                    label_3F65:
                        var temp6 = memory[0x40:0x60];
                        memory[temp6:temp6 + 0x20] = 0x00;
                        var temp7 = temp6 + 0x20;
                        memory[0x40:0x60] = temp7;
                        memory[temp7:temp7 + 0x20] = 0x022c0d9f00000000000000000000000000000000000000000000000000000000;
                        memory[temp6 + 0x24:temp6 + 0x24 + 0x20] = var0;
                        memory[temp6 + 0x44:temp6 + 0x44 + 0x20] = var1;
                        memory[temp6 + 0x64:temp6 + 0x64 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                        memory[temp6 + 0x84:temp6 + 0x84 + 0x20] = 0x80;
                        var temp8 = memory[temp6:temp6 + 0x20];
                        memory[temp6 + 0xa4:temp6 + 0xa4 + 0x20] = temp8;
                        var3 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var4 = 0x022c0d9f;
                        var5 = var0;
                        var6 = var1;
                        var7 = var2;
                        var8 = temp6;
                        var9 = temp6 + 0x24;
                        var var12 = temp7;
                        var var13 = temp8;
                        var var10 = temp6 + 0x84;
                        var var11 = var8 + 0xc4;
                        var var14 = var13;
                        var var15 = var11;
                        var var16 = var12;
                        var var17 = 0x00;
                    
                        if (var17 >= var14) {
                        label_4011:
                            var temp9 = var13;
                            var11 = temp9 + var11;
                            var12 = temp9 & 0x1f;
                        
                            if (!var12) {
                                var5 = var11;
                                var6 = 0x00;
                                var7 = memory[0x40:0x60];
                                var8 = var5 - var7;
                                var9 = var7;
                                var10 = 0x00;
                                var11 = var3;
                                var12 = !address(var11).code.length;
                            
                                if (var12) { revert(memory[0x00:0x00]); }
                            
                            label_4062:
                                var temp10;
                                temp10, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
                                var6 = !temp10;
                            
                                if (!var6) { return; }
                            
                                var temp11 = returndata.length;
                                memory[0x00:0x00 + temp11] = returndata[0x00:0x00 + temp11];
                                revert(memory[0x00:0x00 + returndata.length]);
                            } else {
                                var temp12 = var12;
                                var temp13 = var11 - temp12;
                                memory[temp13:temp13 + 0x20] = ~(0x0100 ** (0x20 - temp12) - 0x01) & memory[temp13:temp13 + 0x20];
                                var5 = temp13 + 0x20;
                                var6 = 0x00;
                                var7 = memory[0x40:0x60];
                                var8 = var5 - var7;
                                var9 = var7;
                                var10 = 0x00;
                                var11 = var3;
                                var12 = !address(var11).code.length;
                            
                                if (!var12) { goto label_4062; }
                                else { revert(memory[0x00:0x00]); }
                            }
                        } else {
                        label_4001:
                            var temp14 = var17;
                            memory[temp14 + var15:temp14 + var15 + 0x20] = memory[temp14 + var16:temp14 + var16 + 0x20];
                            var17 = temp14 + 0x20;
                        
                            if (var17 >= var14) { goto label_4011; }
                            else { goto label_4001; }
                        }
                    }
                } else {
                label_3F28:
                    var2 = address(this);
                
                    if (!(tx.gasprice % 0x0a)) { goto label_4081; }
                    else { goto label_3F65; }
                }
            } else {
                var2 = arg4;
                var3 = 0x00;
                var1 = var3;
                var0 = var2;
                var2 = 0x00;
            
                if (arg2 & 0xff != 0x00) { goto label_3F2F; }
                else { goto label_3F28; }
            }
        } else {
            var temp15 = returndata.length;
            memory[0x00:0x00 + temp15] = returndata[0x00:0x00 + temp15];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_336D(var arg0, var arg1, var arg2) {
        arg1 = arg2 % arg1 & 0xff;
        func_371C(arg0, arg1);
        // Error: Could not resolve method call return address!
    }
    
    function func_3377(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
    
        if (!(arg1 & 0xff)) {
            var var2 = 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f;
        
            if (var1) {
            label_33EE:
                var var3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            
                if (var1) {
                label_3425:
                    var temp0 = memory[0x40:0x60];
                    memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = (var3 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
                    memory[temp0 + 0x34:temp0 + 0x34 + 0x20] = (arg0 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
                    var temp1 = memory[0x40:0x60];
                    memory[temp1:temp1 + 0x20] = temp0 - temp1 + 0x28;
                    memory[0x40:0x60] = temp0 + 0x48;
                    var3 = keccak256(memory[temp1 + 0x20:temp1 + 0x20 + memory[temp1:temp1 + 0x20]]);
                
                    if (!(arg1 & 0xff)) {
                    label_34C4:
                        var temp2 = memory[0x40:0x60];
                        var var4 = temp2;
                        memory[0x40:0x60] = var4 + 0x40;
                        memory[var4:var4 + 0x20] = 0x20;
                        memory[var4 + 0x20:var4 + 0x20 + 0x20] = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f;
                        var temp3 = memory[0x40:0x60] + 0x20;
                        var var5 = temp3;
                        memory[var5:var5 + 0x20] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                        var temp4 = var5 + 0x01;
                        memory[temp4:temp4 + 0x20] = (var2 & 0xffffffffffffffffffffffffffffffffffffffff) << 0x60;
                        var temp5 = temp4 + 0x14;
                        memory[temp5:temp5 + 0x20] = var3;
                        var var6 = temp5 + 0x20;
                        var var8 = memory[var4:var4 + 0x20];
                        var var7 = var4 + 0x20;
                        var var9 = var8;
                        var var10 = var6;
                        var var11 = var7;
                    
                        if (var9 < 0x20) {
                        label_35B0:
                            var temp6 = 0x0100 ** (0x20 - var9) - 0x01;
                            var temp7 = var10;
                            memory[temp7:temp7 + 0x20] = (memory[var11:var11 + 0x20] & ~temp6) | (memory[temp7:temp7 + 0x20] & temp6);
                            var temp8 = var8 + var6;
                            var temp9 = memory[0x40:0x60];
                            memory[temp9:temp9 + 0x20] = temp8 - temp9 - 0x20;
                            memory[0x40:0x60] = temp8;
                            return keccak256(memory[temp9 + 0x20:temp9 + 0x20 + memory[temp9:temp9 + 0x20]]) >> 0x00;
                        } else {
                        label_357B:
                            var temp10 = var11;
                            var temp11 = var10;
                            memory[temp11:temp11 + 0x20] = memory[temp10:temp10 + 0x20];
                            var9 = var9 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0;
                            var10 = temp11 + 0x20;
                            var11 = temp10 + 0x20;
                        
                            if (var9 < 0x20) { goto label_35B0; }
                            else { goto label_357B; }
                        }
                    } else {
                    label_3489:
                        var temp12 = memory[0x40:0x60];
                        var4 = temp12;
                        memory[0x40:0x60] = var4 + 0x40;
                        memory[var4:var4 + 0x20] = 0x20;
                        memory[var4 + 0x20:var4 + 0x20 + 0x20] = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303;
                        var temp13 = memory[0x40:0x60] + 0x20;
                        var5 = temp13;
                        memory[var5:var5 + 0x20] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                        var temp14 = var5 + 0x01;
                        memory[temp14:temp14 + 0x20] = (var2 & 0xffffffffffffffffffffffffffffffffffffffff) << 0x60;
                        var temp15 = temp14 + 0x14;
                        memory[temp15:temp15 + 0x20] = var3;
                        var6 = temp15 + 0x20;
                        var temp16 = var4;
                        var7 = temp16 + 0x20;
                        var8 = memory[temp16:temp16 + 0x20];
                        var9 = var8;
                        var10 = var6;
                        var11 = var7;
                    
                        if (var9 < 0x20) { goto label_35B0; }
                        else { goto label_357B; }
                    }
                } else {
                label_340B:
                    var4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    var temp17 = memory[0x40:0x60];
                    memory[temp17 + 0x20:temp17 + 0x20 + 0x20] = (var3 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
                    memory[temp17 + 0x34:temp17 + 0x34 + 0x20] = (var4 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
                    var temp18 = memory[0x40:0x60];
                    memory[temp18:temp18 + 0x20] = temp17 - temp18 + 0x28;
                    memory[0x40:0x60] = temp17 + 0x48;
                    var3 = keccak256(memory[temp18 + 0x20:temp18 + 0x20 + memory[temp18:temp18 + 0x20]]);
                
                    if (!(arg1 & 0xff)) { goto label_34C4; }
                    else { goto label_3489; }
                }
            } else {
            label_33E8:
                var3 = arg0;
            
                if (var1) { goto label_3425; }
                else { goto label_340B; }
            }
        } else {
            var2 = 0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac;
        
            if (var1) { goto label_33EE; }
            else { goto label_33E8; }
        }
    }
    
    function func_35F9(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 <= arg0) { return arg0 - arg1; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_360F(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var5 = 0x0902f1ac;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (var5 & 0xffffffff) << 0xe0;
        var var6 = temp0 + 0x04;
        var var7 = 0x60;
        var var8 = memory[0x40:0x60];
        var var9 = var6 - var8;
        var var10 = var8;
        var var11 = var4;
        var var12 = !address(var11).code.length;
    
        if (var12) { revert(memory[0x00:0x00]); }
    
        var temp1;
        temp1, memory[var8:var8 + var7] = address(var11).staticcall.gas(msg.gas)(memory[var10:var10 + var9]);
        var7 = !temp1;
    
        if (!var7) {
            var4 = memory[0x40:0x60];
            var5 = returndata.length;
        
            if (var5 < 0x60) { revert(memory[0x00:0x00]); }
        
            var temp2 = var4;
            var2 = memory[temp2:temp2 + 0x20] & 0xffffffffffffffffffffffffffff;
            var3 = memory[temp2 + 0x20:temp2 + 0x20 + 0x20] & 0xffffffffffffffffffffffffffff;
        
            if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < arg1 & 0xffffffffffffffffffffffffffffffffffffffff) {
                r0 = var2;
                arg0 = var3;
                return r0, arg0;
            } else {
                var4 = var3;
                var5 = var2;
                r0 = var4;
                arg0 = var5;
                return r0, arg0;
            }
        } else {
            var temp3 = returndata.length;
            memory[0x00:0x00 + temp3] = returndata[0x00:0x00 + temp3];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_36F2(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = 0x00;
        var temp0 = arg0;
        var var1 = temp0 * 0x03e5;
        var var2 = temp0 * arg2 * 0x03e5;
        var var3 = var1 + arg1 * 0x03e8;
        var var4 = var3;
        var var5 = var2;
    
        if (var4) { return var5 / var4; }
        else { assert(); }
    }
    
    function func_371C(var arg0, var arg1) {
        var temp0 = arg0;
        var var0 = temp0 + arg1;
        var temp1 = memory[0x40:0x60];
        var var1 = temp1;
        memory[var1:var1 + 0x20] = 0xff000000000000084e91743124a982076c59f100840000000000000000000000;
        memory[var1 + 0x35:var1 + 0x35 + 0x20] = 0x17f2c5b31e6ffc755997e952174fc537025e254986b5630bbadd188e008f2e93;
        var var2 = var1 + 0x15;
    
        if (temp0 >= var0) {
        label_1FD8:
            return;
        } else {
        label_377A:
            var temp2 = arg0;
            memory[var2:var2 + 0x20] = temp2;
            memory[msg.value:msg.value + msg.value] = address(keccak256(memory[var1:var1 + 0x55])).call.gas(msg.gas).value(msg.value)(memory[msg.value:msg.value + msg.value]);
            arg0 = temp2 + 0x01;
        
            if (arg0 >= var0) { goto label_1FD8; }
            else { goto label_377A; }
        }
    }
    
    function func_3794(var arg0, var arg1, var arg2, var arg3, var arg4) {
        var var0 = arg3 & 0xffff >= block.number % 0x03e8;
    
        if (!var0) {
            var0 = block.gaslimit >= 0x01d7b08e;
        
            if (var0) { goto label_37BA; }
            else { goto label_37B7; }
        } else if (var0) {
        label_37BA:
        
            if (!var0) {
            label_37C6:
                var0 = 0x00;
                var var1 = 0x0037d4;
                var var2 = arg0;
                var var3 = arg2;
                var1 = func_3377(var2, var3);
                var0 = var1;
                var1 = 0x00;
            
                if (arg1 & 0xff) {
                    memory[0x00:0x20] = arg1 & 0xff;
                    memory[0x20:0x40] = 0x05;
                    var temp0 = storage[keccak256(memory[0x00:0x40])];
                    var temp1 = memory[0x40:0x60];
                    memory[temp1:temp1 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    memory[temp1 + 0x04:temp1 + 0x04 + 0x20] = temp0 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var2 = temp0 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var var6 = 0x20;
                    var3 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var var4 = 0x70a08231;
                    var var7 = memory[0x40:0x60];
                    var var5 = temp1 + 0x24;
                    var var8 = temp1 - var7 + 0x24;
                    var var9 = var7;
                    var var10 = var3;
                    var var11 = !address(var10).code.length;
                
                    if (var11) { revert(memory[0x00:0x00]); }
                
                    var temp2;
                    temp2, memory[var7:var7 + var6] = address(var10).staticcall.gas(msg.gas)(memory[var9:var9 + var8]);
                    var6 = !temp2;
                
                    if (!var6) {
                        var3 = memory[0x40:0x60];
                        var4 = returndata.length;
                    
                        if (var4 < 0x20) { revert(memory[0x00:0x00]); }
                    
                        var1 = memory[var3:var3 + 0x20];
                    
                        if (var1 > 0x01) {
                            var3 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var4 = 0x02;
                            var5 = arg0;
                            var6 = var0;
                            var7 = 0x003adc;
                            var8 = var1;
                            var9 = 0x01;
                            var7 = func_35F9(var8, var9);
                            var temp3 = memory[0x40:0x60];
                            memory[temp3:temp3 + 0x20] = (var4 & 0xffffffff) << 0xe0;
                            var temp4 = temp3 + 0x04;
                            memory[temp4:temp4 + 0x20] = var5 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var temp5 = temp4 + 0x20;
                            memory[temp5:temp5 + 0x20] = var6 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var temp6 = temp5 + 0x20;
                            memory[temp6:temp6 + 0x20] = var7;
                            var5 = temp6 + 0x20;
                            var6 = 0x00;
                            var7 = memory[0x40:0x60];
                            var8 = var5 - var7;
                            var9 = var7;
                            var10 = 0x00;
                            var11 = var3;
                            var var12 = !address(var11).code.length;
                        
                            if (var12) { revert(memory[0x00:0x00]); }
                        
                            var temp7;
                            temp7, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
                            var6 = !temp7;
                        
                            if (!var6) {
                            label_3B94:
                                var2 = 0x00;
                                var3 = var2;
                                var4 = 0x003ba3;
                                var5 = var0;
                                var6 = arg0;
                                var4, var5 = func_360F(var5, var6);
                                var temp8 = var5;
                                var3 = temp8;
                                var2 = var4;
                                var4 = 0x00;
                                var5 = 0x003c2c;
                                var6 = var3;
                                var7 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                                var8 = 0x70a08231;
                                var temp9 = memory[0x40:0x60];
                                memory[temp9:temp9 + 0x20] = (var8 & 0xffffffff) << 0xe0;
                                var temp10 = temp9 + 0x04;
                                memory[temp10:temp10 + 0x20] = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                                var9 = temp10 + 0x20;
                                var10 = 0x20;
                                var11 = memory[0x40:0x60];
                                var12 = var9 - var11;
                                var var13 = var11;
                                var var14 = var7;
                                var var15 = !address(var14).code.length;
                            
                                if (var15) { revert(memory[0x00:0x00]); }
                            
                                var5 = func_0D13(var6, var7, var8, var9, var10, var11, var12, var13, var14, var15);
                                var temp11 = var5;
                                var4 = temp11;
                                var5 = 0x00;
                                var6 = 0x003c3d;
                                var7 = var4;
                                var8 = var3;
                                var9 = var2;
                                var6 = func_36F2(var7, var8, var9);
                                var5 = var6;
                                var6 = 0x00;
                                var7 = var6;
                            
                                if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < arg0 & 0xffffffffffffffffffffffffffffffffffffffff) {
                                    var7 = 0x00;
                                    var6 = var5;
                                
                                    if (arg4 & 0xff != 0x00) {
                                    label_3DAE:
                                        var8 = var0;
                                        var9 = var6;
                                        var10 = var7;
                                        var11 = address(this);
                                        var12 = 0x003dc0;
                                        var13 = memory[0x40:0x60];
                                        var12 = func_40FE(var13);
                                        var temp12 = var12;
                                        memory[temp12:temp12 + 0x20] = var8 & 0xffffffffffffffffffffffffffffffffffffffff;
                                        memory[temp12 + 0x20:temp12 + 0x20 + 0x20] = var9;
                                        memory[temp12 + 0x40:temp12 + 0x40 + 0x20] = var10;
                                        memory[temp12 + 0x60:temp12 + 0x60 + 0x20] = var11 & 0xffffffffffffffffffffffffffffffffffffffff;
                                        var temp13 = memory[0x40:0x60];
                                        var temp14 = new(memory[temp13:temp13 + temp12 - temp13 + 0x80]).value(0x00)();
                                        var8 = temp14;
                                        var9 = !var8;
                                    
                                        if (!var9) {
                                        label_3E16:
                                            return;
                                        } else {
                                            var temp15 = returndata.length;
                                            memory[0x00:0x00 + temp15] = returndata[0x00:0x00 + temp15];
                                            revert(memory[0x00:0x00 + returndata.length]);
                                        }
                                    } else {
                                    label_3C93:
                                        var temp16 = memory[0x40:0x60];
                                        memory[temp16:temp16 + 0x20] = 0x00;
                                        var temp17 = temp16 + 0x20;
                                        memory[0x40:0x60] = temp17;
                                        memory[temp17:temp17 + 0x20] = 0x022c0d9f00000000000000000000000000000000000000000000000000000000;
                                        memory[temp16 + 0x24:temp16 + 0x24 + 0x20] = var6;
                                        memory[temp16 + 0x44:temp16 + 0x44 + 0x20] = var7;
                                        var12 = address(this);
                                        memory[temp16 + 0x64:temp16 + 0x64 + 0x20] = var12;
                                        memory[temp16 + 0x84:temp16 + 0x84 + 0x20] = 0x80;
                                        var temp18 = memory[temp16:temp16 + 0x20];
                                        memory[temp16 + 0xa4:temp16 + 0xa4 + 0x20] = temp18;
                                        var8 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                                        var9 = 0x022c0d9f;
                                        var10 = var6;
                                        var11 = var7;
                                        var13 = temp16;
                                        var14 = temp16 + 0x24;
                                        var15 = temp16 + 0x84;
                                        var var16 = var13 + 0xc4;
                                        var var18 = temp18;
                                        var var17 = temp17;
                                        var var19 = var18;
                                        var var20 = var16;
                                        var var22 = 0x00;
                                        var var21 = var17;
                                    
                                        if (var22 >= var19) {
                                        label_3D3E:
                                            var temp19 = var18;
                                            var16 = temp19 + var16;
                                            var17 = temp19 & 0x1f;
                                        
                                            if (!var17) {
                                                var10 = var16;
                                                var11 = 0x00;
                                                var12 = memory[0x40:0x60];
                                                var13 = var10 - var12;
                                                var14 = var12;
                                                var15 = 0x00;
                                                var16 = var8;
                                                var17 = !address(var16).code.length;
                                            
                                                if (var17) { revert(memory[0x00:0x00]); }
                                            
                                            label_3D8F:
                                                var temp20;
                                                temp20, memory[var12:var12 + var11] = address(var16).call.gas(msg.gas).value(var15)(memory[var14:var14 + var13]);
                                                var11 = !temp20;
                                            
                                                if (!var11) { goto label_3E16; }
                                            
                                                var temp21 = returndata.length;
                                                memory[0x00:0x00 + temp21] = returndata[0x00:0x00 + temp21];
                                                revert(memory[0x00:0x00 + returndata.length]);
                                            } else {
                                                var temp22 = var17;
                                                var temp23 = var16 - temp22;
                                                memory[temp23:temp23 + 0x20] = ~(0x0100 ** (0x20 - temp22) - 0x01) & memory[temp23:temp23 + 0x20];
                                                var10 = temp23 + 0x20;
                                                var11 = 0x00;
                                                var12 = memory[0x40:0x60];
                                                var13 = var10 - var12;
                                                var14 = var12;
                                                var15 = 0x00;
                                                var16 = var8;
                                                var17 = !address(var16).code.length;
                                            
                                                if (!var17) { goto label_3D8F; }
                                                else { revert(memory[0x00:0x00]); }
                                            }
                                        } else {
                                        label_3D2E:
                                            var temp24 = var22;
                                            memory[temp24 + var20:temp24 + var20 + 0x20] = memory[temp24 + var21:temp24 + var21 + 0x20];
                                            var22 = temp24 + 0x20;
                                        
                                            if (var22 >= var19) { goto label_3D3E; }
                                            else { goto label_3D2E; }
                                        }
                                    }
                                } else {
                                    var8 = 0x00;
                                    var9 = var5;
                                    var7 = var9;
                                    var6 = var8;
                                
                                    if (arg4 & 0xff != 0x00) { goto label_3DAE; }
                                    else { goto label_3C93; }
                                }
                            } else {
                                var temp25 = returndata.length;
                                memory[0x00:0x00 + temp25] = returndata[0x00:0x00 + temp25];
                                revert(memory[0x00:0x00 + returndata.length]);
                            }
                        } else {
                        label_1FD8:
                            return;
                        }
                    } else {
                        var temp26 = returndata.length;
                        memory[0x00:0x00 + temp26] = returndata[0x00:0x00 + temp26];
                        revert(memory[0x00:0x00 + returndata.length]);
                    }
                } else {
                    var temp27 = memory[0x40:0x60];
                    memory[temp27:temp27 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    memory[temp27 + 0x04:temp27 + 0x04 + 0x20] = address(this);
                    var2 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var3 = 0x70a08231;
                    var4 = temp27 + 0x24;
                    var5 = 0x20;
                    var6 = memory[0x40:0x60];
                    var7 = temp27 - var6 + 0x24;
                    var8 = var6;
                    var9 = var2;
                    var10 = !address(var9).code.length;
                
                    if (var10) { revert(memory[0x00:0x00]); }
                
                    var temp28;
                    temp28, memory[var6:var6 + var5] = address(var9).staticcall.gas(msg.gas)(memory[var8:var8 + var7]);
                    var5 = !temp28;
                
                    if (!var5) {
                        var2 = memory[0x40:0x60];
                        var3 = returndata.length;
                    
                        if (var3 < 0x20) { revert(memory[0x00:0x00]); }
                    
                        var1 = memory[var2:var2 + 0x20];
                    
                        if (var1 <= 0x01) { goto label_1FD8; }
                    
                        var2 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var3 = 0xa9059cbb;
                        var4 = var0;
                        var5 = 0x0038bf;
                        var6 = var1;
                        var7 = 0x01;
                        var5 = func_35F9(var6, var7);
                        var temp29 = memory[0x40:0x60];
                        memory[temp29 + 0x24:temp29 + 0x24 + 0x20] = var4 & 0xffffffffffffffffffffffffffffffffffffffff;
                        memory[temp29 + 0x44:temp29 + 0x44 + 0x20] = var5;
                        var temp30 = memory[0x40:0x60];
                        memory[temp30:temp30 + 0x20] = temp29 - temp30 + 0x44;
                        memory[0x40:0x60] = temp29 + 0x64;
                        var temp31 = temp30 + 0x20;
                        memory[temp31:temp31 + 0x20] = (var3 << 0xe0) | (memory[temp31:temp31 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
                        var3 = temp30;
                        var4 = memory[0x40:0x60];
                        var5 = var4;
                        var6 = temp31;
                        var7 = memory[var3:var3 + 0x20];
                        var8 = var7;
                        var9 = var5;
                        var10 = var6;
                    
                        if (var8 < 0x20) {
                        label_3978:
                            var temp32 = 0x0100 ** (0x20 - var8) - 0x01;
                            var temp33 = var9;
                            memory[temp33:temp33 + 0x20] = (memory[var10:var10 + 0x20] & ~temp32) | (memory[temp33:temp33 + 0x20] & temp32);
                            var temp34 = memory[0x40:0x60];
                            var temp35;
                            temp35, memory[temp34:temp34 + 0x00] = address(var2).call.gas(msg.gas)(memory[temp34:temp34 + (var7 + var5) - temp34]);
                            var3 = returndata.length;
                            var4 = var3;
                        
                            if (var4 == 0x00) { goto label_3B94; }
                        
                            var temp36 = memory[0x40:0x60];
                            var3 = temp36;
                            memory[0x40:0x60] = var3 + (returndata.length + 0x3f & ~0x1f);
                            memory[var3:var3 + 0x20] = returndata.length;
                            var temp37 = returndata.length;
                            memory[var3 + 0x20:var3 + 0x20 + temp37] = returndata[0x00:0x00 + temp37];
                            goto label_3B94;
                        } else {
                        label_3943:
                            var temp38 = var10;
                            var temp39 = var9;
                            memory[temp39:temp39 + 0x20] = memory[temp38:temp38 + 0x20];
                            var8 = var8 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0;
                            var9 = temp39 + 0x20;
                            var10 = temp38 + 0x20;
                        
                            if (var8 < 0x20) { goto label_3978; }
                            else { goto label_3943; }
                        }
                    } else {
                        var temp40 = returndata.length;
                        memory[0x00:0x00 + temp40] = returndata[0x00:0x00 + temp40];
                        revert(memory[0x00:0x00 + returndata.length]);
                    }
                }
            } else {
            label_37C1:
                goto label_1FD8;
            }
        } else {
        label_37B7:
        
            if (block.coinbase) { goto label_37C6; }
            else { goto label_37C1; }
        }
    }
    
    function func_3E25(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 < arg1) { return arg0; }
    
        var var1 = arg1;
        return var1;
    }
    
    function func_40F0(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x0377] = code[0x410d:0x4484];
        return temp0 + 0x0377;
    }
    
    function func_40FE(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x013f] = code[0x4484:0x45c3];
        return temp0 + 0x013f;
    }
}