contract Contract {
    function main() {
        memory[0x40:0x60] = 0x60;
    
        if (!msg.data.length) {
        label_0055:
            stop();
        } else {
            var var0 = msg.data[0x00:0x20] / 0x0100000000000000000000000000000000000000000000000000000000 & 0xffffffff;
        
            if (var0 == 0x1a695230) {
                // Dispatch table entry for transfer(address)
                var var1 = 0x008a;
                var var2 = msg.data[0x04:0x24] & 0xffffffffffffffffffffffffffffffffffffffff;
                transfer(var2);
                stop();
            } else if (var0 == 0x7362377b) {
                // Dispatch table entry for withdrawEther()
                if (msg.value) { revert(memory[0x00:0x00]); }
            
                var1 = 0x009f;
                withdrawEther();
                stop();
            } else if (var0 == 0x8da5cb5b) {
                // Dispatch table entry for owner()
                if (msg.value) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00b4;
                var2 = owner();
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                var temp1 = memory[0x40:0x60];
                return memory[temp1:temp1 + (temp0 + 0x20) - temp1];
            } else { goto label_0055; }
        }
    }
    
    function transfer(var arg0) {
        var temp0 = msg.value;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x00] = address(arg0 & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(!temp0 * 0x08fc).value(temp0)(memory[temp1:temp1 + memory[0x40:0x60] - temp1]);
    
        if (temp2) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function withdrawEther() {
        if (msg.sender != storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var temp0 = address(this).balance;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x00] = address(storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(!temp0 * 0x08fc).value(temp0)(memory[temp1:temp1 + memory[0x40:0x60] - temp1]);
    
        if (temp2) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function owner() returns (var r0) { return storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff; }
}

D