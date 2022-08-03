contract Contract {
    function main() {
        memory[0x40:0x60] = 0x60;
    
        if (!msg.data.length) { revert(memory[0x00:0x00]); }
    
        var var0 = msg.data[0x00:0x20] / 0x0100000000000000000000000000000000000000000000000000000000 & 0xffffffff;
    
        if (var0 == 0x06fdde03) {
            // Dispatch table entry for name()
            if (msg.value) { revert(memory[0x00:0x00]); }
        
            var var1 = 0x00af;
            var var2 = name();
            var temp0 = memory[0x40:0x60];
            var var3 = temp0;
            var var4 = var3;
            var temp1 = var4 + 0x20;
            memory[var4:var4 + 0x20] = temp1 - var4;
            var temp2 = var2;
            memory[temp1:temp1 + 0x20] = memory[temp2:temp2 + 0x20];
            var var5 = temp1 + 0x20;
            var var6 = temp2 + 0x20;
            var var7 = memory[temp2:temp2 + 0x20];
            var var8 = var7;
            var var9 = var5;
            var var10 = var6;
            var var11 = 0x00;
        
            if (var11 >= var8) {
            label_00F0:
                var temp3 = var7;
                var5 = temp3 + var5;
                var6 = temp3 & 0x1f;
            
                if (!var6) {
                    var temp4 = memory[0x40:0x60];
                    return memory[temp4:temp4 + var5 - temp4];
                } else {
                    var temp5 = var6;
                    var temp6 = var5 - temp5;
                    memory[temp6:temp6 + 0x20] = ~(0x0100 ** (0x20 - temp5) - 0x01) & memory[temp6:temp6 + 0x20];
                    var temp7 = memory[0x40:0x60];
                    return memory[temp7:temp7 + (temp6 + 0x20) - temp7];
                }
            } else {
            label_00DD:
                var temp8 = var11;
                memory[var9 + temp8:var9 + temp8 + 0x20] = memory[var10 + temp8:var10 + temp8 + 0x20];
                var11 = temp8 + 0x20;
            
                if (var11 >= var8) { goto label_00F0; }
                else { goto label_00DD; }
            }
        } else if (var0 == 0x095ea7b3) {
            // Dispatch table entry for approve(address,uint256)
            if (msg.value) { revert(memory[0x00:0x00]); }
        
            var1 = 0x016b;
            var2 = msg.data[0x04:0x24] & 0xffffffffffffffffffffffffffffffffffffffff;
            var3 = msg.data[0x24:0x44];
            var1 = approve(var2, var3);
            var temp9 = memory[0x40:0x60];
            memory[temp9:temp9 + 0x20] = !!var1;
            var temp10 = memory[0x40:0x60];
            return memory[temp10:temp10 + (temp9 + 0x20) - temp10];
        } else if (var0 == 0x18160ddd) {
            // Dispatch table entry for totalSupply()
            if (msg.value) { revert(memory[0x00:0x00]); }
        
            var1 = 0x0198;
            var2 = totalSupply();
            var temp11 = memory[0x40:0x60];
            memory[temp11:temp11 + 0x20] = var2;
            var temp12 = memory[0x40:0x60];
            return memory[temp12:temp12 + (temp11 + 0x20) - temp12];
        } else if (var0 == 0x23b872dd) {
            // Dispatch table entry for transferFrom(address,address,uint256)
            if (msg.value) { revert(memory[0x00:0x00]); }
        
            var1 = 0x020d;
            var2 = msg.data[0x04:0x24] & 0xffffffffffffffffffffffffffffffffffffffff;
            var3 = msg.data[0x24:0x44] & 0xffffffffffffffffffffffffffffffffffffffff;
            var4 = msg.data[0x44:0x64];
            var1 = transferFrom(var2, var3, var4);
            var temp13 = memory[0x40:0x60];
            memory[temp13:temp13 + 0x20] = !!var1;
            var temp14 = memory[0x40:0x60];
            return memory[temp14:temp14 + (temp13 + 0x20) - temp14];
        } else if (var0 == 0x313ce567) {
            // Dispatch table entry for decimals()
            if (msg.value) { revert(memory[0x00:0x00]); }
        
            var1 = 0x023a;
            var2 = decimals();
            var temp15 = memory[0x40:0x60];
            memory[temp15:temp15 + 0x20] = var2 & 0xff;
            var temp16 = memory[0x40:0x60];
            return memory[temp16:temp16 + (temp15 + 0x20) - temp16];
        } else if (var0 == 0x70a08231) {
            // Dispatch table entry for balanceOf(address)
            if (msg.value) { revert(memory[0x00:0x00]); }
        
            var1 = 0x028d;
            var2 = msg.data[0x04:0x24] & 0xffffffffffffffffffffffffffffffffffffffff;
            var1 = balanceOf(var2);
            var temp17 = memory[0x40:0x60];
            memory[temp17:temp17 + 0x20] = var1;
            var temp18 = memory[0x40:0x60];
            return memory[temp18:temp18 + (temp17 + 0x20) - temp18];
        } else if (var0 == 0x95d89b41) {
            // Dispatch table entry for symbol()
            if (msg.value) { revert(memory[0x00:0x00]); }
        
            var1 = 0x02b6;
            var2 = symbol();
            var temp19 = memory[0x40:0x60];
            var3 = temp19;
            var4 = var3;
            var temp20 = var4 + 0x20;
            memory[var4:var4 + 0x20] = temp20 - var4;
            var temp21 = var2;
            memory[temp20:temp20 + 0x20] = memory[temp21:temp21 + 0x20];
            var5 = temp20 + 0x20;
            var7 = memory[temp21:temp21 + 0x20];
            var6 = temp21 + 0x20;
            var8 = var7;
            var9 = var5;
            var10 = var6;
            var11 = 0x00;
        
            if (var11 >= var8) {
            label_02F7:
                var temp22 = var7;
                var5 = temp22 + var5;
                var6 = temp22 & 0x1f;
            
                if (!var6) {
                    var temp23 = memory[0x40:0x60];
                    return memory[temp23:temp23 + var5 - temp23];
                } else {
                    var temp24 = var6;
                    var temp25 = var5 - temp24;
                    memory[temp25:temp25 + 0x20] = ~(0x0100 ** (0x20 - temp24) - 0x01) & memory[temp25:temp25 + 0x20];
                    var temp26 = memory[0x40:0x60];
                    return memory[temp26:temp26 + (temp25 + 0x20) - temp26];
                }
            } else {
            label_02E4:
                var temp27 = var11;
                memory[var9 + temp27:var9 + temp27 + 0x20] = memory[var10 + temp27:var10 + temp27 + 0x20];
                var11 = temp27 + 0x20;
            
                if (var11 >= var8) { goto label_02F7; }
                else { goto label_02E4; }
            }
        } else if (var0 == 0xa9059cbb) {
            // Dispatch table entry for transfer(address,uint256)
            if (msg.value) { revert(memory[0x00:0x00]); }
        
            var1 = 0x0372;
            var2 = msg.data[0x04:0x24] & 0xffffffffffffffffffffffffffffffffffffffff;
            var3 = msg.data[0x24:0x44];
            var1 = transfer(var2, var3);
            var temp28 = memory[0x40:0x60];
            memory[temp28:temp28 + 0x20] = !!var1;
            var temp29 = memory[0x40:0x60];
            return memory[temp29:temp29 + (temp28 + 0x20) - temp29];
        } else if (var0 == 0xdd62ed3e) {
            // Dispatch table entry for allowance(address,address)
            if (msg.value) { revert(memory[0x00:0x00]); }
        
            var1 = 0x03e2;
            var2 = msg.data[0x04:0x24] & 0xffffffffffffffffffffffffffffffffffffffff;
            var3 = msg.data[0x24:0x44] & 0xffffffffffffffffffffffffffffffffffffffff;
            var1 = allowance(var2, var3);
            var temp30 = memory[0x40:0x60];
            memory[temp30:temp30 + 0x20] = var1;
            var temp31 = memory[0x40:0x60];
            return memory[temp31:temp31 + (temp30 + 0x20) - temp31];
        } else { revert(memory[0x00:0x00]); }
    }
    
    function name() returns (var r0) {
        var temp0 = storage[0x01];
        var temp1 = (!(temp0 & 0x01) * 0x0100 - 0x01 & temp0) / 0x02;
        var temp2 = memory[0x40:0x60];
        memory[0x40:0x60] = temp2 + (temp1 + 0x1f) / 0x20 * 0x20 + 0x20;
        r0 = temp2;
        var var1 = 0x01;
        var var2 = temp1;
        memory[r0:r0 + 0x20] = var2;
        var var3 = r0 + 0x20;
        var var4 = var1;
        var temp3 = storage[var4];
        var var5 = (!(temp3 & 0x01) * 0x0100 - 0x01 & temp3) / 0x02;
    
        if (!var5) {
        label_048E:
            return r0;
        } else if (0x1f < var5) {
            var temp4 = var3;
            var temp5 = temp4 + var5;
            var3 = temp5;
            memory[0x00:0x20] = var4;
            var temp6 = keccak256(memory[0x00:0x20]);
            memory[temp4:temp4 + 0x20] = storage[temp6];
            var4 = temp6 + 0x01;
            var5 = temp4 + 0x20;
        
            if (var3 <= var5) { goto label_0485; }
        
        label_0471:
            var temp7 = var4;
            var temp8 = var5;
            memory[temp8:temp8 + 0x20] = storage[temp7];
            var4 = temp7 + 0x01;
            var5 = temp8 + 0x20;
        
            if (var3 > var5) { goto label_0471; }
        
        label_0485:
            var temp9 = var3;
            var temp10 = temp9 + (var5 - temp9 & 0x1f);
            var5 = temp9;
            var3 = temp10;
            goto label_048E;
        } else {
            var temp11 = var3;
            memory[temp11:temp11 + 0x20] = storage[var4] / 0x0100 * 0x0100;
            var5 = var5;
            var3 = temp11 + 0x20;
            goto label_048E;
        }
    }
    
    function approve(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x05;
        var temp1 = keccak256(memory[0x00:0x40]);
        var temp2 = arg0;
        memory[0x00:0x20] = temp2 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = temp1;
        storage[keccak256(memory[0x00:0x40])] = temp0;
        var temp3 = memory[0x40:0x60];
        memory[temp3:temp3 + 0x20] = temp0;
        var temp4 = memory[0x40:0x60];
        log(memory[temp4:temp4 + (temp3 + 0x20) - temp4], [0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925, msg.sender, stack[-2] & 0xffffffffffffffffffffffffffffffffffffffff]);
        return 0x01;
    }
    
    function totalSupply() returns (var r0) { return storage[0x00]; }
    
    function transferFrom(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = 0x00;
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x04;
        var var1 = storage[keccak256(memory[0x00:0x40])] >= arg2;
    
        if (var1) {
            memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = 0x05;
            var temp9 = keccak256(memory[0x00:0x40]);
            memory[0x00:0x20] = msg.sender;
            memory[0x20:0x40] = temp9;
        
            if (storage[keccak256(memory[0x00:0x40])] >= arg2) { goto label_0667; }
            else { revert(memory[0x00:0x00]); }
        } else if (var1) {
        label_0667:
            var temp0 = arg2;
            var temp1 = arg1;
            memory[0x00:0x20] = temp1 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = 0x04;
            var temp2 = keccak256(memory[0x00:0x40]);
            storage[temp2] = storage[temp2] + temp0;
            var temp3 = arg0;
            memory[0x00:0x20] = temp3 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = 0x04;
            var temp4 = keccak256(memory[0x00:0x40]);
            storage[temp4] = storage[temp4] - temp0;
            memory[0x00:0x20] = temp3 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = 0x05;
            var temp5 = keccak256(memory[0x00:0x40]);
            memory[0x00:0x20] = msg.sender;
            memory[0x20:0x40] = temp5;
            var temp6 = keccak256(memory[0x00:0x40]);
            storage[temp6] = storage[temp6] - temp0;
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = temp0;
            var temp8 = memory[0x40:0x60];
            log(memory[temp8:temp8 + (temp7 + 0x20) - temp8], [0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef, stack[-4] & 0xffffffffffffffffffffffffffffffffffffffff, stack[-3] & 0xffffffffffffffffffffffffffffffffffffffff]);
            return 0x01;
        } else { revert(memory[0x00:0x00]); }
    }
    
    function decimals() returns (var r0) { return storage[0x02] & 0xff; }
    
    function balanceOf(var arg0) returns (var r0) {
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x04;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function symbol() returns (var r0) {
        var temp0 = storage[0x03];
        var temp1 = (!(temp0 & 0x01) * 0x0100 - 0x01 & temp0) / 0x02;
        var temp2 = memory[0x40:0x60];
        memory[0x40:0x60] = temp2 + (temp1 + 0x1f) / 0x20 * 0x20 + 0x20;
        r0 = temp2;
        var var1 = 0x03;
        var var2 = temp1;
        memory[r0:r0 + 0x20] = var2;
        var var3 = r0 + 0x20;
        var var4 = var1;
        var temp3 = storage[var4];
        var var5 = (!(temp3 & 0x01) * 0x0100 - 0x01 & temp3) / 0x02;
    
        if (!var5) {
        label_08EF:
            return r0;
        } else if (0x1f < var5) {
            var temp4 = var3;
            var temp5 = temp4 + var5;
            var3 = temp5;
            memory[0x00:0x20] = var4;
            var temp6 = keccak256(memory[0x00:0x20]);
            memory[temp4:temp4 + 0x20] = storage[temp6];
            var4 = temp6 + 0x01;
            var5 = temp4 + 0x20;
        
            if (var3 <= var5) { goto label_08E6; }
        
        label_08D2:
            var temp7 = var4;
            var temp8 = var5;
            memory[temp8:temp8 + 0x20] = storage[temp7];
            var4 = temp7 + 0x01;
            var5 = temp8 + 0x20;
        
            if (var3 > var5) { goto label_08D2; }
        
        label_08E6:
            var temp9 = var3;
            var temp10 = temp9 + (var5 - temp9 & 0x1f);
            var5 = temp9;
            var3 = temp10;
            goto label_08EF;
        } else {
            var temp11 = var3;
            memory[temp11:temp11 + 0x20] = storage[var4] / 0x0100 * 0x0100;
            var3 = temp11 + 0x20;
            var5 = var5;
            goto label_08EF;
        }
    }
    
    function transfer(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x04;
        var var1 = storage[keccak256(memory[0x00:0x40])] >= arg1;
    
        if (var1) {
            var temp6 = arg0;
            memory[0x00:0x20] = temp6 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = 0x04;
            var temp7 = storage[keccak256(memory[0x00:0x40])];
            memory[0x00:0x20] = temp6 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = 0x04;
        
            if (storage[keccak256(memory[0x00:0x40])] + arg1 > temp7) { goto label_09D2; }
            else { revert(memory[0x00:0x00]); }
        } else if (var1) {
        label_09D2:
        
            if (arg0 & 0xffffffffffffffffffffffffffffffffffffffff == 0x00) { revert(memory[0x00:0x00]); }
        
            var temp0 = arg1;
            memory[0x00:0x20] = msg.sender;
            memory[0x20:0x40] = 0x04;
            var temp1 = keccak256(memory[0x00:0x40]);
            storage[temp1] = storage[temp1] - temp0;
            var temp2 = arg0;
            memory[0x00:0x20] = temp2 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = 0x04;
            var temp3 = keccak256(memory[0x00:0x40]);
            storage[temp3] = storage[temp3] + temp0;
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = temp0;
            var temp5 = memory[0x40:0x60];
            log(memory[temp5:temp5 + (temp4 + 0x20) - temp5], [0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef, msg.sender, stack[-3] & 0xffffffffffffffffffffffffffffffffffffffff]);
            return 0x01;
        } else { revert(memory[0x00:0x00]); }
    }
    
    function allowance(var arg0, var arg1) returns (var r0) {
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x05;
        var temp0 = keccak256(memory[0x00:0x40]);
        memory[0x00:0x20] = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = temp0;
        return storage[keccak256(memory[0x00:0x40])];
    }
}