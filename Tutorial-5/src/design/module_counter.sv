
module module_counter # (

    parameter COUNT =13500000 

)(
    input logic clk,
    input logic rst,

    output logic [5 : 0] count_o
);

 localparam WIDTH_COUT = $clog2(COUNT);
 
 logic [WIDTH_COUT - 1 : 0]clk_counter='0;
 logic [5 : 0] led_countr_r;

 always_ff @(posedge clk) begin

    if(!rst)begin
        led_countr_r <= '0;
        clk_counter <= '0;
    end

    else if (clk_counter == COUNT - 1)begin
        clk_counter <= '0;
        led_countr_r <= led_countr_r + 1'b1;
    end
    
    else begin
         clk_counter <=  clk_counter + 1'b1;
         led_countr_r  <= led_countr_r;
    end
         
 end

 assign count_o= ~led_countr_r;

endmodule