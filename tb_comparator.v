`timescale 1ns/1ps

module tb_comparator_1bit;

    reg A, B;                 
    wire A_lt_B, A_eq_B, A_gt_B;

   
    comparator_1bit uut (
        .A(A),
        .B(B),
        .A_lt_B(A_lt_B),
        .A_eq_B(A_eq_B),
        .A_gt_B(A_gt_B)
    );

    initial begin
        
        A = 0; B = 0; #20;  
        A = 0; B = 1; #20;  
        A = 1; B = 0; #20;  
        A = 1; B = 1; #20;  

        #20;
        $stop;   
    end

endmodule
