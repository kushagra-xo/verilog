module testbench;
    reg a;
    wire y;

    not_gate UUT(
        .a(a),
        .y(y)
    );

    initial begin
        $display("a | y");
        $monitor("%b | %b", a , y);
        
        a = 0; 
        #10;
        a = 1; 
        #10;
        $finish;
    end
endmodule