contract Contract {
    function main() {
        var temp0 = msg.data.length;
        memory[0x00:0x00 + temp0] = msg.data[0x00:0x00 + temp0];
        var temp1;
        temp1, memory[0x00:0x20] = address(0x5b9e8728e316bbeb692d22daaab74f6cbf2c4691).delegatecall.gas(msg.gas - 0x02c6)(memory[0x00:0x00 + msg.data.length]);
    
        if (temp1) { return memory[0x00:0x20]; }
        else { assert(); }
    }
}