
module module_counter # (

    parameter COUNT =13500000 ;
)(
    input logic clk;
    input logic rst,

    output logic [5 : 0] count_o
);

lo