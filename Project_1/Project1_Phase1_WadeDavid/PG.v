module PG(
    input               clkin,
    input               reset_n,
    output    reg    [7:0]   VGA_B,
    output    reg     [7:0]    VGA_G,
    output    reg     [7:0]    VGA_R,
    input               activeVideo,
    input       [15:0] hValue,
    input        [15:0] vValue,
    input           pbutton
);

reg [15:0] hmin;
reg [15:0] hmax;
reg [15:0] vmin;
reg [15:0] vmax;
reg forwardH;
reg forwardV;


always @(posedge pbutton or negedge reset_n)
    begin 
        if (reset_n == 0)
		begin
			hmin = 250;
            hmax = 400;
            vmin = 100;
            vmax = 300;
		end
        else if (activeVideo == 1)
        begin
           if(hmax < 784 && forwardH == 1)
            begin
                hmax = hmax +1;
                hmin = hmin + 1;
            end
            else if(hmax >= 784 && forwardH == 1)
            begin
                forwardH = ~forwardH;
            end
            else if(hmin > 143 && forwardH == 0)
            begin
                hmax = hmax - 1;
                hmin = hmin - 1;
            end
            else if(hmin <= 143 && forwardH == 0)
            begin
                forwardH = ~forwardH;
            end
            end
        
    end
    


always @(posedge clkin or negedge reset_n)
	begin
        
		if (reset_n == 0)
		begin
			VGA_R <= 0;
			VGA_G <= 0;
			VGA_B <= 0;
		end
        else if(activeVideo == 1)
        begin
           if(hValue > hmin && hValue < hmax && vValue > 100 && vValue < 300)
           begin
               VGA_R = 150;
           end
         
          


        
           else 
           begin
                
                VGA_R = 0;
                VGA_B = 0;
                VGA_G = 0;
                
           end
       
    end
    end
 
endmodule 