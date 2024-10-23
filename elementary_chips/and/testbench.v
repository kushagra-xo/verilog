module testbench;
    reg a,b;
    wire y;

    and_gate UUT(
        .a(a), 
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, testbench);

        $display("a b | y");
        $monitor("%b %b | %b", a, b, y);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule