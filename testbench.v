`timescale 1ns/1ps

module nor_gate_tb;

reg A, B;
wire Y;

// Instantiate the NOR gate
nor_gate uut (
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    // Generate waveform file
    $dumpfile("dump.vcd");
    $dumpvars(0, nor_gate_tb);

    // Apply test vectors
    A = 0; B = 0;
    #10;

    A = 0; B = 1;
    #10;

    A = 1; B = 0;
    #10;

    A = 1; B = 1;
    #10;

    $finish;
end

endmodule