`timescale 1ns/1ps
module tb_Fulladder;
    reg A, B, Cin;        
    wire Sum, Cout;       

    
    Fulladder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        
        $dumpfile("Fulladder.vcd");   
        $dumpvars(0, tb_Fulladder);

        
        A = 0; B = 0; Cin = 0;
        #10;

        
        A = 0; B = 0; Cin = 1; #10;
        A = 0; B = 1; Cin = 0; #10;
        A = 0; B = 1; Cin = 1; #10;
        A = 1; B = 0; Cin = 0; #10;
        A = 1; B = 0; Cin = 1; #10;
        A = 1; B = 1; Cin = 0; #10;
        A = 1; B = 1; Cin = 1; #10;

        $finish;
    end
endmodule
