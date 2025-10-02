module comparator_1bit(
    input wire A,      
    input wire B,      
    output wire A_lt_B, 
    output wire A_eq_B, 
    output wire A_gt_B  
);

    assign A_lt_B = (~A) & B;       
    assign A_eq_B = (A & B) | (~A & ~B); 
    assign A_gt_B = A & (~B);       
endmodule
