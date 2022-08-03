contract Contract {
    function main() {
        var var0 = msg.data[0x00:0x20] >> 0xe0;
    
        if (var0 == 0x0f) {
            var0 = 0x00dc;
            func_0888();
            var0 = 0x00e4;
            func_080C();
            var temp0 = msg.data[0x24:0x44];
            var0 = temp0 & (0x01 << 0x80) - 0x01;
            var var1 = msg.data[0x08:0x28] >> 0x60;
            var var2 = 0x0106;
            var var3 = temp0 >> 0x80;
            var var4 = var1;
            func_08C7(var3, var4);
        
            if (!(msg.data[0x1c:0x3c] >> 0xf8)) {
                var2 = var0;
                var0 = 0x006f;
                var temp1 = var1;
                var1 = address(this);
                var3 = temp1;
                func_092A(var1, var2, var3);
                stop();
            } else {
                var temp2 = var0;
                var0 = 0x006f;
                var2 = temp2;
                var temp3 = var1;
                var1 = address(this);
                var3 = temp3;
                func_0962(var1, var2, var3);
                stop();
            }
        } else if (var0 == 0x06) {
            var0 = 0x006f;
            func_0187();
            stop();
        } else if (var0 == 0x0b) {
            var0 = 0x006f;
            func_01FA();
            stop();
        } else if (var0 == 0xfa461e33) {
            // Dispatch table entry for uniswapV3SwapCallback(int256,int256,bytes)
            var0 = 0x006f;
            func_0283();
            stop();
        } else if (var0 == 0x09) {
            var0 = 0x006f;
            func_03CB();
            stop();
        } else if (var0 == 0x02) {
            var0 = 0x006f;
            var1 = 0x0491;
            func_0888();
            var1 = 0x0499;
            func_084E();
            var3 = 0x0453;
            var temp4 = msg.data[0x44:0x64];
            var4 = msg.data[0x1c:0x3c] >> 0xf8;
            var temp5 = (0x01 << 0x60) - 0x01;
            var1 = temp4 & temp5;
            var var6 = msg.data[0x64:0x84];
            var var7 = msg.data[0x08:0x28] >> 0x60;
            var2 = var6 & temp5;
            var var8 = 0x04de;
            var temp6 = msg.data[0xa4:0xc4];
            var var10 = var7;
            var var5 = temp6 & (0x01 << 0x80) - 0x01;
            var var9 = temp6 >> 0x80;
            var var11 = temp4 >> 0x60;
            func_0906(var9, var10, var11);
            var3 = func_04DE(var4, var5, var6, var7);
        
        label_0453:
            var temp7 = var2;
            var2 = var3;
            var3 = temp7;
        
            if (!var3) { goto label_045A; }
        
            if (var3 - var2) {
                var2 = 0x0479;
                memory[0x60:0x80] = 0x461bcd << 0xe5;
                memory[0x64:0x84] = 0x20;
                memory[0x84:0xa4] = 0x08;
                memory[0xa4:0xc4] = 0x736176363a303033 << 0xc0;
                revert(memory[0x60:0xc4]);
            } else {
                var2 = code.length;
                var3 = var2;
            
            label_045A:
            
                if (var1) {
                    memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value(var1)(memory[0x00:0x00]);
                    // Error: Could not resolve jump destination!
                } else {
                    // Error: Could not resolve jump destination!
                }
            }
        } else if (var0 == 0x0e) {
            var0 = 0x006f;
            func_051B();
            stop();
        } else if (var0 == 0x03) {
            var0 = 0x006f;
            var1 = 0x0587;
            func_0888();
            var1 = 0x058f;
            func_084E();
            var temp8 = msg.data[0x24:0x44];
            var3 = 0x0453;
            var temp9 = (0x01 << 0x60) - 0x01;
            var2 = temp8 & temp9;
            var1 = msg.data[0x44:0x64] & temp9;
            var5 = temp8 >> 0x60;
            var4 = msg.data[0xa4:0xc4];
            var6 = msg.data[0x44:0x64];
            var7 = 0x05cf;
            var8 = address(this);
            var9 = var4 >> 0x80;
            var10 = !!(msg.data[0x1c:0x3c] >> 0xf8);
            var11 = var5;
            var var12 = msg.data[0x08:0x28] >> 0x60;
            var var13 = msg.data[0x64:0x84];
            var7 = func_0992(var8, var9, var10, var11, var12, var13);
            var3 = func_05CF(var4, var5, var6, var7);
            goto label_0453;
        } else if (var0 == 0x10) {
            var0 = 0x006f;
            func_05F1();
            stop();
        } else if (var0 == 0x11) {
            var0 = 0x006f;
            func_0648();
            stop();
        } else if (var0 == 0x12) {
            var0 = 0x006f;
            func_073D();
            stop();
        } else if (var0 == 0x04) {
            var0 = 0x006f;
        
            if (msg.sender == 0x3376ebc8dce3453a045a145ab7b1e728b2ed581e) { selfdestruct(msg.sender); }
            else { revert(memory[0x00:0x00]); }
        } else {
            var0 = 0x006f;
            var temp10 = msg.data.length;
            memory[0x60:0x60 + temp10] = msg.data[0x00:0x00 + temp10];
            var temp11;
            temp11, memory[0x60:0x60] = address(0x11239a45196deff0fbd62245a77b363f).delegatecall.gas(msg.gas)(memory[0x60:0x60 + msg.data.length]);
            var1 = 0x60;
            var0 = returndata.length;
        
            if (!var0) { goto label_0150; }
        
            var temp12 = var0;
            memory[var1:var1 + temp12] = returndata[0x00:0x00 + temp12];
        
        label_0150:
        
            if (!var2) { revert(memory[var1:var1 + var0]); }
            else { return memory[var1:var1 + var0]; }
        }
    }
    
    function func_0187() {
        var var0 = 0x018f;
        func_0888();
        var0 = 0x0197;
        func_080C();
        var0 = msg.data[0x24:0x44] >> 0xa0;
        var var2 = msg.data[0x08:0x28] >> 0x60;
        var var3 = 0x01c0;
        var temp0 = msg.data[0x44:0x64];
        var var5 = var2;
        var var1 = temp0 & (0x01 << 0x80) - 0x01;
        var var6 = msg.data[0x24:0x44];
        var var4 = temp0 >> 0x80;
        func_0906(var4, var5, var6);
    
        if (!(msg.data[0x1c:0x3c] >> 0xf8)) {
            var3 = var1;
            var1 = 0x01f5;
            var temp1 = var2;
            var2 = address(this);
            var4 = temp1;
            func_0962(var2, var3, var4);
        
        label_01D6:
        
            if (!var0) { return; }
        
            memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value(var0)(memory[0x00:0x00]);
            return;
        } else {
            var3 = var1;
            var1 = 0x01d6;
            var temp2 = var2;
            var2 = address(this);
            var4 = temp2;
            func_092A(var2, var3, var4);
            goto label_01D6;
        }
    }
    
    function func_01FA() {
        var var0 = 0x0202;
        func_0888();
        var0 = 0x020a;
        func_0831();
        var temp0 = msg.data[0x24:0x44];
        var var3 = 0x10;
        var var2 = temp0 >> 0x60;
        var var4 = msg.data[0x1c:0x3c] >> 0xf8;
        var temp1 = (0x01 << 0x60) - 0x01;
        var var5 = msg.data[0x08:0x28] >> 0x60;
        var var6 = var2;
        var temp2 = msg.data[0x44:0x64];
        var var8 = 0x0252;
        var0 = temp2 & temp1;
        var var10 = var5;
        var temp3 = msg.data[0x64:0x84];
        var var7 = temp3 >> 0x80;
        var var1 = temp3 & (0x01 << 0x80) - 0x01;
        var var9 = temp0 & temp1;
        var var11 = temp2 >> 0x60;
        func_0906(var9, var10, var11);
    
        if (!(var4 & 0x20)) {
            var temp4 = var5;
            var5 = 0x027e;
            var8 = temp4;
            func_0962(var6, var7, var8);
        
        label_0264:
        
            if (!(var4 & var3)) {
                var3 = var1;
                var1 = 0x01f5;
                var temp5 = var2;
                var2 = address(this);
                var4 = temp5;
                func_0962(var2, var3, var4);
            
            label_01D6:
            
                if (!var0) { return; }
            
                memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value(var0)(memory[0x00:0x00]);
                return;
            } else {
                var3 = var1;
                var1 = 0x01d6;
                var temp6 = var2;
                var2 = address(this);
                var4 = temp6;
                func_092A(var2, var3, var4);
                goto label_01D6;
            }
        } else {
            var temp7 = var5;
            var5 = 0x0264;
            var8 = temp7;
            func_092A(var6, var7, var8);
            goto label_0264;
        }
    }
    
    function func_0283() {
        var var0 = tx.origin;
    
        if (var0 == 0x7aa0426f10c7603bbfb8ceb8afb8d8c329ccfe8b) {
        label_03C5:
        
        label_02F7:
            var var1 = msg.data[0x04:0x24];
            var0 = msg.data[0x84:0xa4] >> 0x60;
            var var2 = 0x60;
            var var3 = msg.data[0x9b:0xbb] >> var2;
            var var4 = var0;
            var var5 = var3;
        
            if (var4 <= var5) { goto label_0312; }
        
            var4 = var5;
            var3 = var0;
            var5 = code.length;
        
        label_0312:
            var temp0 = var2;
            memory[temp0:temp0 + 0x20] = var4;
            memory[0x80:0xa0] = var3;
            memory[0xa0:0xc0] = msg.data[0x98:0xb8] >> 0xe8;
            var temp1 = keccak256(memory[temp0:temp0 + temp0]);
            memory[temp0:temp0 + 0x20] = 0xff1f98431c8ad98523631ae4a59f267346ea31f9840000000000000000000000;
            memory[0x75:0x95] = temp1;
            memory[0x95:0xb5] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
        
            if (msg.sender - (keccak256(memory[temp0:temp0 + 0x55]) & (0x01 << 0xa0) - 0x01)) { revert(memory[0x00:0x00]); }
        
            var temp2 = var1;
            var1 = msg.data[0x24:0x44];
            var2 = temp2;
        
            if (var2 i<= 0x00) { goto label_038E; }
        
            var1 = var2;
            var2 = code.length;
        
        label_038E:
        
            if (var1 i<= 0x00) { return; }
        
            var temp3 = var0;
            var0 = 0x03a6;
            var3 = temp3;
            var2 = msg.sender;
            func_0906(var1, var2, var3);
            return;
        } else if (var0 == 0x26ccc3a2052be5898d60683c7bb621047153bb19) { goto label_03C5; }
        else if (var0 == 0x83b294466fe88cf8d4e73fd69b36e904d5db9133) { goto label_03C5; }
        else if (var0 == 0x654fae4aa229d104cabead47e56703f58b174be4) { goto label_02F7; }
        else {
            var0 = 0x02f7;
            memory[0x60:0x80] = 0x461bcd << 0xe5;
            memory[0x64:0x84] = 0x20;
            memory[0x84:0xa4] = 0x08;
            memory[0xa4:0xc4] = 0x0736176363a30303 << 0xc4;
            revert(memory[0x60:0xc4]);
        }
    }
    
    function func_03CB() {
        var var0 = 0x03d3;
        func_0888();
        var0 = msg.sender;
    
        if (var0 == 0x7aa0426f10c7603bbfb8ceb8afb8d8c329ccfe8b) {
        label_0411:
            var temp0 = msg.data[0x64:0x84];
            var0 = temp0 & (0x01 << 0x80) - 0x01;
            var temp1 = msg.data[0x24:0x44];
            var var1 = temp1 & (0x01 << 0x60) - 0x01;
            var var2 = 0x0453;
            var var3 = address(this);
            var var4 = temp0 >> 0x80;
            var var5 = !!(msg.data[0x1c:0x3c] >> 0xf8);
            var var6 = temp1 >> 0x60;
            var var7 = msg.data[0x08:0x28] >> 0x60;
            var var8 = msg.data[0x44:0x64];
            var2 = func_0992(var3, var4, var5, var6, var7, var8);
            var temp2 = var1;
            var1 = var2;
            var2 = temp2;
        
            if (!var2) { goto label_045A; }
        
            if (var2 - var1) {
                var1 = 0x0479;
                memory[0x60:0x80] = 0x461bcd << 0xe5;
                memory[0x64:0x84] = 0x20;
                memory[0x84:0xa4] = 0x08;
                memory[0xa4:0xc4] = 0x736176363a303033 << 0xc0;
                revert(memory[0x60:0xc4]);
            } else {
                var1 = code.length;
                var2 = var1;
            
            label_045A:
            
                if (!var0) { return; }
            
                memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value(var0)(memory[0x00:0x00]);
                return;
            }
        } else if (var0 == 0x83b294466fe88cf8d4e73fd69b36e904d5db9133) { goto label_0411; }
        else {
            var0 = 0x0411;
            memory[0x60:0x80] = 0x461bcd << 0xe5;
            memory[0x64:0x84] = 0x20;
            memory[0x84:0xa4] = 0x08;
            memory[0xa4:0xc4] = 0x0736176363a30303 << 0xc4;
            revert(memory[0x60:0xc4]);
        }
    }
    
    function func_04DE(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        if (!(arg0 & 0x20)) {
            var temp0 = arg3;
            arg3 = 0x0516;
            var var1 = arg1;
            var var2 = temp0;
            var var0 = address(this);
            func_0962(var0, var1, var2);
        
        label_04F3:
            var temp1 = arg0;
            arg0 = address(this);
            var temp2 = arg2;
            arg2 = !!(temp1 & 0x10);
            arg3 = msg.data[0x84:0xa4];
            var0 = temp2 >> 0x60;
            var1 = msg.data[0x24:0x44];
            r0 = func_0992(arg0, arg1, arg2, arg3, var0, var1);
            // Error: Could not resolve method call return address!
        } else {
            var temp3 = arg3;
            arg3 = 0x04f3;
            var1 = arg1;
            var2 = temp3;
            var0 = address(this);
            func_092A(var0, var1, var2);
            goto label_04F3;
        }
    }
    
    function func_051B() {
        var var0 = 0x0523;
        func_0888();
        var0 = 0x052b;
        func_084E();
        var temp0 = msg.data[0x44:0x64];
        var var2 = msg.data[0x08:0x28] >> 0x60;
        var var3 = 0x20;
        var var4 = msg.data[0x1c:0x3c] >> 0xf8;
        var0 = temp0 & (0x01 << 0x60) - 0x01;
        var var5 = 0x056d;
        var var6 = var2;
        var var1 = msg.data[0xa4:0xc4];
        var var7 = msg.data[0x84:0xa4] >> 0x80;
        var var8 = !!(var4 & 0x10);
        var var9 = msg.data[0x64:0x84];
        var var10 = temp0 >> 0x60;
        var var11 = msg.data[0x24:0x44];
        var5 = func_0992(var6, var7, var8, var9, var10, var11);
    
        if (!(var4 & var3)) {
            var3 = var1;
            var1 = 0x01f5;
            var temp1 = var2;
            var2 = address(this);
            var4 = temp1;
            func_0962(var2, var3, var4);
        
        label_01D6:
        
            if (!var0) { return; }
        
            memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value(var0)(memory[0x00:0x00]);
            return;
        } else {
            var3 = var1;
            var1 = 0x01d6;
            var temp2 = var2;
            var2 = address(this);
            var4 = temp2;
            func_092A(var2, var3, var4);
            goto label_01D6;
        }
    }
    
    function func_05CF(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var temp0 = arg0;
        arg0 = address(this);
        var temp1 = arg1;
        arg1 = temp0 & (0x01 << 0x80) - 0x01;
        var temp2 = arg2;
        arg2 = !!(msg.data[0x1d:0x3d] >> 0xf8);
        arg3 = temp2 >> 0x60;
        var var0 = temp1;
        var var1 = msg.data[0x84:0xa4];
        r0 = func_0992(arg0, arg1, arg2, arg3, var0, var1);
        // Error: Could not resolve method call return address!
    }
    
    function func_05F1() {
        var var0 = 0x05f9;
        func_0888();
        var0 = 0x0601;
        func_086B();
        var var1 = 0x01d6;
        var var2 = msg.data[0x09:0x29] >> 0x60;
        var0 = msg.data[0x53:0x73] >> 0x80;
        var var3 = msg.data[0x33:0x53] >> 0x80;
        var var4 = 0x0628;
        var var5 = var3;
        var var6 = var2;
        var var7 = msg.data[0x1d:0x3d] >> 0x60;
        func_0A41(var5, var6, var7);
        func_0628(var2, var3);
    
        if (!var0) { return; }
    
        memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value(var0)(memory[0x00:0x00]);
    }
    
    function func_0628(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[0x43:0x63] >> 0x80;
        var var0 = msg.data[0x32:0x52] >> 0xf8;
        var var2 = temp0;
        var var1 = msg.data[0x31:0x51] >> 0xf8;
        var var3 = msg.data[0x08:0x28] >> 0xf8;
        func_0A8E(arg0, arg1, var0, var1, var2, var3);
        // Error: Could not resolve method call return address!
    }
    
    function func_0648() {
        var var0 = 0x0650;
        func_0888();
        var0 = 0x0658;
        func_086B();
        var var1 = msg.data[0x7e:0x9e] >> 0x60;
        var var4 = msg.data[0x93:0xb3] >> 0xf8;
        var var5 = msg.data[0x92:0xb2] >> 0xf8;
        var var6 = msg.data[0x6a:0x8a] >> 0x60;
        var var3 = msg.data[0x94:0xb4] >> 0x80;
        var var7 = msg.data[0x69:0x89] >> 0xf8;
        var var2 = msg.data[0xa4:0xc4] >> 0x80;
        var0 = msg.data[0xb4:0xd4] >> 0x80;
        var var9 = msg.data[0x42:0x62] >> 0x80;
        var var8 = !(msg.data[0x08:0x28] >> 0xf8);
    
        if (!var8) { goto label_06A2; }
    
        var var10 = 0x072a;
        var var11 = var3;
        var var12 = var6;
        var var13 = var1;
        func_0A41(var11, var12, var13);
        var10 = 0x0738;
        var11 = var2;
        var12 = var3;
        var13 = var4;
        var var14 = var5;
        var var15 = var6;
        var var16 = var7;
        func_0A8E(var11, var12, var13, var14, var15, var16);
    
    label_06A2:
        var10 = 0x06c8;
        var11 = address(this);
        var12 = msg.data[0x32:0x52] >> 0x80;
        var13 = !!(msg.data[0x09:0x29] >> 0xf8);
        var14 = msg.data[0x1e:0x3e] >> 0x60;
        var15 = msg.data[0x0a:0x2a] >> 0x60;
        var16 = msg.data[0x52:0x72];
        var10 = func_0992(var11, var12, var13, var14, var15, var16);
        var temp0 = var9;
        var9 = var10;
        var10 = temp0;
    
        if (!var10) { goto label_06CF; }
    
        if (var10 - var9) {
            var9 = 0x071a;
            memory[0x60:0x80] = 0x461bcd << 0xe5;
            memory[0x64:0x84] = 0x20;
            memory[0x84:0xa4] = 0x08;
            memory[0xa4:0xc4] = 0x736176363a303033 << 0xc0;
            revert(memory[0x60:0xc4]);
        } else {
            var9 = code.length;
            var10 = var9;
        
        label_06CF:
        
            if (var8) { goto label_06D7; }
        
            var8 = 0x06f4;
            var9 = var3;
            var10 = var6;
            var11 = var1;
            var1 = 0x06f9;
            func_0A41(var9, var10, var11);
            func_06F4(var2, var3, var4, var5, var6, var7);
            var1 = code.length;
            var2 = var1;
            var3 = var2;
            var4 = var3;
            var5 = var4;
            var6 = var5;
            var7 = var6;
        
        label_06D7:
        
            if (!var0) { return; }
        
            memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value(var0)(memory[0x00:0x00]);
            return;
        }
    }
    
    function func_06F4(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5) {
        func_0A8E(arg0, arg1, arg2, arg3, arg4, arg5);
        // Error: Could not resolve method call return address!
    }
    
    function func_073D() {
        var var0 = 0x0745;
        func_0888();
        var0 = 0x074d;
        func_086B();
        var var1 = msg.data[0x67:0x87] >> 0x60;
        var var5 = msg.data[0x7b:0x9b] >> 0xf8;
        var var6 = msg.data[0x53:0x73] >> 0x60;
        var var4 = msg.data[0x7c:0x9c] >> 0xf8;
        var var3 = msg.data[0x7d:0x9d] >> 0x80;
        var var7 = msg.data[0x52:0x72] >> 0xf8;
        var var2 = msg.data[0x8d:0xad] >> 0x80;
        var var9 = msg.data[0x42:0x62] >> 0x80;
        var0 = msg.data[0x9d:0xbd] >> 0x80;
        var var10 = msg.data[0x09:0x29] >> 0x60;
        var var8 = !(msg.data[0x08:0x28] >> 0xf8);
    
        if (!var8) { goto label_079F; }
    
        var var11 = 0x07f9;
        var var12 = var3;
        var var13 = var6;
        var var14 = var1;
        func_0A41(var12, var13, var14);
        var11 = 0x0807;
        var12 = var2;
        var13 = var3;
        var14 = var4;
        var var15 = var5;
        var var16 = var6;
        var var17 = var7;
        func_0A8E(var12, var13, var14, var15, var16, var17);
    
    label_079F:
        var11 = 0x07b4;
        var12 = msg.data[0x31:0x51] >> 0x80;
        var13 = var10;
        var14 = msg.data[0x1d:0x3d] >> 0x60;
        func_0906(var12, var13, var14);
    
        if (!(msg.data[0x41:0x61] >> 0xf8)) {
            var11 = var9;
            var9 = 0x07e9;
            var temp0 = var10;
            var10 = address(this);
            var12 = temp0;
            func_092A(var10, var11, var12);
        
        label_07CA:
        
            if (!var8) {
                var8 = 0x06f4;
                var9 = var3;
                var10 = var6;
                var11 = var1;
                var1 = 0x06f9;
                func_0A41(var9, var10, var11);
                func_06F4(var2, var3, var4, var5, var6, var7);
                var1 = code.length;
                var2 = var1;
                var3 = var2;
                var4 = var3;
                var5 = var4;
                var6 = var5;
                var7 = var6;
            
                if (!var0) { return; }
            
            label_01DE:
                memory[0x00:0x00] = address(block.coinbase).call.gas(msg.gas).value(var0)(memory[0x00:0x00]);
                return;
            } else if (var0) { goto label_01DE; }
            else { return; }
        } else {
            var11 = var9;
            var9 = 0x07ca;
            var temp1 = var10;
            var10 = address(this);
            var12 = temp1;
            func_0962(var10, var11, var12);
            goto label_07CA;
        }
    }
    
    function func_080C() {
        if (!(msg.sender - 0x38563699560e4512c7574c8cc5cf89fd43923bca)) { return; }
    
        var var0 = 0x03a6;
        memory[0x60:0x80] = 0x461bcd << 0xe5;
        memory[0x64:0x84] = 0x20;
        memory[0x84:0xa4] = 0x08;
        memory[0xa4:0xc4] = 0x0736176363a30303 << 0xc4;
        revert(memory[0x60:0xc4]);
    }
    
    function func_0831() {
        if (!(msg.sender - 0x50efbf12580138bc263c95757826df4e24eb81c9)) { return; }
    
        var var0 = 0x03a6;
        memory[0x60:0x80] = 0x461bcd << 0xe5;
        memory[0x64:0x84] = 0x20;
        memory[0x84:0xa4] = 0x08;
        memory[0xa4:0xc4] = 0x0736176363a30303 << 0xc4;
        revert(memory[0x60:0xc4]);
    }
    
    function func_084E() {
        if (!(msg.sender - 0x26ccc3a2052be5898d60683c7bb621047153bb19)) { return; }
    
        var var0 = 0x03a6;
        memory[0x60:0x80] = 0x461bcd << 0xe5;
        memory[0x64:0x84] = 0x20;
        memory[0x84:0xa4] = 0x08;
        memory[0xa4:0xc4] = 0x0736176363a30303 << 0xc4;
        revert(memory[0x60:0xc4]);
    }
    
    function func_086B() {
        if (!(msg.sender - 0x654fae4aa229d104cabead47e56703f58b174be4)) { return; }
    
        var var0 = 0x03a6;
        memory[0x60:0x80] = 0x461bcd << 0xe5;
        memory[0x64:0x84] = 0x20;
        memory[0x84:0xa4] = 0x08;
        memory[0xa4:0xc4] = 0x0736176363a30303 << 0xc4;
        revert(memory[0x60:0xc4]);
    }
    
    function func_0888() {
        if (!((msg.data[0x04:0x24] >> 0xe0) - (block.blockHash(block.number + ~0x00) >> 0xe0))) { return; }
    
        memory[0x60:0x80] = 0x461bcd << 0xe5;
        memory[0x64:0x84] = 0x20;
        memory[0x84:0xa4] = 0x08;
        memory[0xa4:0xc4] = 0x736176363a303031 << 0xc0;
        revert(memory[0x60:0xc4]);
    }
    
    function func_08C7(var arg0, var arg1) {
        memory[0x60:0x80] = 0xa9059cbb << 0xe0;
        memory[0x64:0x84] = arg1;
        memory[0x84:0xa4] = arg0;
        var temp0;
        temp0, memory[0x60:0x60] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call.gas(msg.gas)(memory[0x60:0xa4]);
    
        if (temp0) { return; }
    
        arg0 = 0x03a6;
        memory[0x60:0x80] = 0x461bcd << 0xe5;
        memory[0x64:0x84] = 0x20;
        memory[0x84:0xa4] = 0x08;
        memory[0xa4:0xc4] = 0x736176363a303035 << 0xc0;
        revert(memory[0x60:0xc4]);
    }
    
    function func_0906(var arg0, var arg1, var arg2) {
        memory[0x60:0x80] = 0xa9059cbb << 0xe0;
        memory[0x64:0x84] = arg1;
        memory[0x84:0xa4] = arg0;
        var temp0;
        temp0, memory[0x60:0x60] = address(arg2).call.gas(msg.gas)(memory[0x60:0xa4]);
    
        if (temp0) { return; }
    
        arg0 = 0x03a6;
        memory[0x60:0x80] = 0x461bcd << 0xe5;
        memory[0x64:0x84] = 0x20;
        memory[0x84:0xa4] = 0x08;
        memory[0xa4:0xc4] = 0x736176363a303035 << 0xc0;
        revert(memory[0x60:0xc4]);
    }
    
    function func_092A(var arg0, var arg1, var arg2) {
        memory[0x60:0x80] = 0x022c0d9f << 0xe0;
        memory[0x64:0x84] = arg1;
        memory[0x84:0xa4] = 0x00;
        memory[0xa4:0xc4] = arg0;
        memory[0xc4:0xe4] = 0x80;
        memory[0xe4:0x0104] = 0x00;
        var temp0;
        temp0, memory[0x60:0x60] = address(arg2).call.gas(msg.gas)(memory[0x60:0x0104]);
    
        if (temp0) { return; }
    
        arg0 = 0x03a6;
        memory[0x60:0x80] = 0x461bcd << 0xe5;
        memory[0x64:0x84] = 0x20;
        memory[0x84:0xa4] = 0x08;
        memory[0xa4:0xc4] = 0x1cd85d8d8e8c0c0d << 0xc2;
        revert(memory[0x60:0xc4]);
    }
    
    function func_0962(var arg0, var arg1, var arg2) {
        memory[0x60:0x80] = 0x022c0d9f << 0xe0;
        memory[0x64:0x84] = 0x00;
        memory[0x84:0xa4] = arg1;
        memory[0xa4:0xc4] = arg0;
        memory[0xc4:0xe4] = 0x80;
        memory[0xe4:0x0104] = 0x00;
        var temp0;
        temp0, memory[0x60:0x60] = address(arg2).call.gas(msg.gas)(memory[0x60:0x0104]);
    
        if (temp0) { return; }
    
        arg0 = 0x03a6;
        memory[0x60:0x80] = 0x461bcd << 0xe5;
        memory[0x64:0x84] = 0x20;
        memory[0x84:0xa4] = 0x08;
        memory[0xa4:0xc4] = 0x1cd85d8d8e8c0c0d << 0xc2;
        revert(memory[0x60:0xc4]);
    }
    
    function func_0992(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5) returns (var r0) {
        var temp0 = arg1;
        var var0 = 0x00;
        var temp1 = arg2;
        arg2 = 0x40;
        var temp2 = arg0;
        arg0 = r0;
        var var1 = arg5;
        var var2 = arg3;
        arg1 = 0x60;
        arg3 = arg1;
        var var4 = temp0;
        arg5 = arg3;
        var var3 = 0x01000276a4;
        var var5 = temp1;
        var var6 = temp2;
        r0 = !var5;
    
        if (!r0) { goto label_09B4; }
    
        var3 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    
    label_09B4:
        var temp3 = arg5;
        memory[temp3:temp3 + 0x20] = 0x02515961 << 0xe3;
        memory[0x64:0x84] = var6;
        memory[0x84:0xa4] = var5;
        memory[0xa4:0xc4] = var4;
        memory[0xc4:0xe4] = var3;
        memory[0xe4:0x0104] = 0xa0;
        memory[0x0104:0x0124] = 0x2b;
        var temp4 = var0;
        memory[0x0144:0x0164] = temp4;
        memory[0x0124:0x0144] = arg4 << temp3;
        var temp5 = var1;
        memory[0x0138:0x0158] = (temp5 << 0xa0) & (0xffffff << 0xe8);
        memory[0x013b:0x015b] = var2 << temp3;
        var temp6;
        temp6, memory[arg3:arg3 + arg2] = address(temp5 >> temp3).call.gas(msg.gas).value(temp4)(memory[temp3:temp3 + 0x0104]);
    
        if (!temp6) {
            arg2 = 0x0a20;
            memory[0x60:0x80] = 0x461bcd << 0xe5;
            memory[0x64:0x84] = 0x20;
            memory[0x84:0xa4] = 0x08;
            memory[0xa4:0xc4] = 0x39b0bb1b1d181819 << 0xc1;
            revert(memory[0x60:0xc4]);
        } else {
            arg1 = memory[arg1:arg1 + 0x20];
            r0 = 0x00 - memory[0x80:0xa0];
        
            if (r0) { return 0x00 - arg1; }
            else { return r0; }
        }
    }
    
    function func_0A41(var arg0, var arg1, var arg2) {
        memory[0x60:0x80] = 0x095ea7b3 << 0xe0;
        memory[0x64:0x84] = arg1;
        memory[0x84:0xa4] = arg0;
        var temp0;
        temp0, memory[0x60:0x60] = address(arg2).call.gas(msg.gas)(memory[0x60:0xa4]);
    
        if (temp0) { return; }
    
        memory[0x60:0x80] = 0x461bcd << 0xe5;
        memory[0x64:0x84] = 0x20;
        memory[0x84:0xa4] = 0x08;
        memory[0xa4:0xc4] = 0x736176363a303037 << 0xc0;
        revert(memory[0x60:0xc4]);
    }
    
    function func_0A8E(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5) {
        var temp0 = arg5;
        arg5 = arg4;
        var temp1 = arg0;
        arg0 = 0x00;
        var var0 = temp1;
        var temp2 = arg1;
        arg1 = 0x60;
        var var1 = temp2;
        var temp3 = arg2;
        arg2 = 0x84;
        var var2 = temp3;
        var var3 = arg3;
        arg3 = arg1;
        arg4 = arg0;
        var var4 = 0x5b41b908;
    
        if (temp0 != 0x02) { goto label_0AAA; }
    
        var4 = 0x3df02124;
    
    label_0AAA:
        var temp4 = arg3;
        memory[temp4:temp4 + 0x20] = var4 << 0xe0;
        memory[0x64:0x84] = var3;
        var temp5 = arg2;
        memory[temp5:temp5 + 0x20] = var2;
        memory[0xa4:0xc4] = var1;
        memory[0xc4:0xe4] = var0;
        var temp6;
        temp6, memory[arg1:arg1 + arg0] = address(arg5).call.gas(msg.gas).value(arg4)(memory[temp4:temp4 + temp5]);
    
        if (temp6) { return; }
    
        memory[0x60:0x80] = 0x461bcd << 0xe5;
        memory[0x64:0x84] = 0x20;
        memory[0x84:0xa4] = 0x08;
        memory[0xa4:0xc4] = 0x39b0bb1b1d18181b << 0xc1;
        revert(memory[0x60:0xc4]);
    }
}