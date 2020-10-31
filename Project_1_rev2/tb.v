
`timescale 1 ns / 100 ps
module tb();
reg  reset_n;
wire VGA_HS;
wire VGA_VS;
wire activeVideo;
wire [15:0] horizontalValue;
wire [15:0] verticalValue; 
reg clkin;
VTC U0(.clkin(clkin), .reset_n(reset_n), .VGA_HS(VGA_HS), .VGA_VS(VGA_VS), .activeVideo(activeVideo), .horizontalValue(horizontalValue),.verticalValue(verticalValue));






always
    #10 clkin = ~clkin;
initial 
    begin
        //give initial values and trigger reset cycle
        clkin = 0;
        reset_n = 0;
        #20 
        reset_n = 1;
        $display ($time ,"Starting Simulation of Lab 1.");
        #20000 
        reset_n = 0;
       
        #25000
            //Start again
        reset_n = 1; 
        
       
        #35000
            $display ($time ,"Work Done");

    end
endmodule 