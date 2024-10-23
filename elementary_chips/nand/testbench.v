module testbench;
    reg a,b;
    wire y;

    nand_gate UUT(
        .a(a), 
        .b(b),
        .y(y)
    );

    initial begin
        $display("a b | y");
        $monitor("%b %b | %b", a, b, y);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule