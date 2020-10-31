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




frameBuff	frameBuff_inst (
	.address ( memIn ),
	.clock ( clkin ),
	.q (memOut )
	);

wire [23:0] memOut;
reg [7:0] memIn;
reg [15:0] hmin;
reg [15:0] hmax;
reg [15:0] vmin;
reg [15:0] vmax;
reg forwardH;
reg forwardV;


always @(posedge clkin or negedge reset_n)
begin
            
        if (reset_n == 0)
		begin
			memIn = 0;
		end
            else
            begin
                
            
            //block 1
            
            if (hValue >= 143 && hValue < 223 && vValue >= 35 && vValue < 95)
            begin
                memIn = 0;
            end
            if (hValue >= 143 && hValue < 223 && vValue >=95 && vValue < 155)
            begin
                memIn = 56;
            end
            if (hValue >= 143 && hValue < 223 && vValue >=155  && vValue < 215)
            begin
                memIn = 48;
            end
            if (hValue >= 143 && hValue < 223 && vValue >= 215 && vValue < 275)
            begin
                memIn = 40;
            end
            if (hValue >= 143 && hValue < 223 && vValue >= 275 && vValue < 335)
            begin
                memIn = 32;
            end
            if (hValue >= 143 && hValue < 223 && vValue >= 335 && vValue < 395)
            begin
                memIn = 24;
            end
            if (hValue >= 143 && hValue < 223 && vValue >= 395 && vValue < 455)
            begin
                memIn = 16;
            end
            if (hValue >= 143 && hValue < 223 && vValue >= 455 && vValue < 515)
            begin
                memIn = 8;
            end
            
            //block 2
            
            if (hValue >= 223 && hValue < 303 && vValue >= 35 && vValue < 95)
            begin
                memIn = 8;
            end
            if (hValue >= 223 && hValue < 303 && vValue >=95 && vValue < 155)
            begin
                memIn = 0;
            end
            if (hValue >= 223 && hValue < 303 && vValue >=155  && vValue < 215)
            begin
                memIn = 56;
            end
            if (hValue >= 223 && hValue < 303 && vValue >= 215 && vValue < 275)
            begin
                memIn = 48;
            end
            if (hValue >= 223 && hValue < 303 && vValue >= 275 && vValue < 335)
            begin
                memIn = 40;
            end
            if (hValue >= 223 && hValue < 303 && vValue >= 335 && vValue < 395)
            begin
                memIn = 32;
            end
            if (hValue >= 223 && hValue < 303 && vValue >= 395 && vValue < 455)
            begin
                memIn = 24;
            end
            if (hValue >= 223 && hValue < 303 && vValue >= 455 && vValue < 515)
            begin
                memIn = 16;
            end

            //block 3

            if (hValue >= 303 && hValue < 383 && vValue >= 35 && vValue < 95)
            begin
                memIn = 16;
            end
            if (hValue >= 303 && hValue < 383 && vValue >=95 && vValue < 155)
            begin
                memIn = 8;
            end
            if (hValue >= 303 && hValue < 383 && vValue >=155  && vValue < 215)
            begin
                memIn = 0;
            end
            if (hValue >= 303 && hValue < 383 && vValue >= 215 && vValue < 275)
            begin
                memIn = 56;
            end
            if (hValue >= 303 && hValue < 383 && vValue >= 275 && vValue < 335)
            begin
                memIn = 48;
            end
            if (hValue >= 303 && hValue < 383 && vValue >= 335 && vValue < 395)
            begin
                memIn = 40;
            end
            if (hValue >= 303 && hValue < 383 && vValue >= 395 && vValue < 455)
            begin
                memIn = 32;
            end
            if (hValue >= 303 && hValue < 383 && vValue >= 455 && vValue < 515)
            begin
                memIn = 24;
            end

            //block 4

            if (hValue >= 383 && hValue < 463 && vValue >= 35 && vValue < 95)
            begin
                memIn = 24;
            end
            if (hValue >= 383 && hValue < 463 && vValue >=95 && vValue < 155)
            begin
                memIn = 16;
            end
            if (hValue >= 383 && hValue < 463 && vValue >=155  && vValue < 215)
            begin
                memIn = 8;
            end
            if (hValue >= 383 && hValue < 463 && vValue >= 215 && vValue < 275)
            begin
                memIn = 0;
            end
            if (hValue >= 383 && hValue < 463 && vValue >= 275 && vValue < 335)
            begin
                memIn = 56;
            end
            if (hValue >= 383 && hValue < 463 && vValue >= 335 && vValue < 395)
            begin
                memIn = 48;
            end
            if (hValue >= 383 && hValue < 463 && vValue >= 395 && vValue < 455)
            begin
                memIn = 40;
            end
            if (hValue >= 383 && hValue < 463 && vValue >= 455 && vValue < 515)
            begin
                memIn = 32;
            end

            //block 5

            if (hValue >= 463 && hValue < 543 && vValue >= 35 && vValue < 95)
            begin
                memIn = 32;
            end
            if (hValue >= 463 && hValue < 543 && vValue >=95 && vValue < 155)
            begin
                memIn = 24;
            end
            if (hValue >= 463 && hValue < 543 && vValue >=155  && vValue < 215)
            begin
                memIn = 16;
            end
            if (hValue >= 463 && hValue < 543 && vValue >= 215 && vValue < 275)
            begin
                memIn = 8;
            end
            if (hValue >= 463 && hValue < 543 && vValue >= 275 && vValue < 335)
            begin
                memIn = 0;
            end
            if (hValue >= 463 && hValue < 543 && vValue >= 335 && vValue < 395)
            begin
                memIn = 56;
            end
            if (hValue >= 463 && hValue < 543 && vValue >= 395 && vValue < 455)
            begin
                memIn = 48;
            end
            if (hValue >= 463 && hValue < 543 && vValue >= 455 && vValue < 515)
            begin
                memIn =40;
            end


            //block 6 

            if (hValue >= 543 && hValue < 623 && vValue >= 35 && vValue < 95)
            begin
                memIn = 40;
            end
            if (hValue >= 543 && hValue < 623 && vValue >=95 && vValue < 155)
            begin
                memIn = 32;
            end
            if (hValue >= 543 && hValue < 623 && vValue >=155  && vValue < 215)
            begin
                memIn = 24;
            end
            if (hValue >= 543 && hValue < 623 && vValue >= 215 && vValue < 275)
            begin
                memIn = 16;
            end
            if (hValue >= 543 && hValue < 623 && vValue >= 275 && vValue < 335)
            begin
                memIn = 8;
            end
            if (hValue >= 543 && hValue < 623 && vValue >= 335 && vValue < 395)
            begin
                memIn = 0;
            end
            if (hValue >= 543 && hValue < 623 && vValue >= 395 && vValue < 455)
            begin
                memIn = 56;
            end
            if (hValue >= 543 && hValue < 623 && vValue >= 455 && vValue < 515)
            begin
                memIn = 48;
            end

            //block 7


            if (hValue >= 623 && hValue < 703 && vValue >= 35 && vValue < 95)
            begin
                memIn = 48;
            end
            if (hValue >= 623 && hValue < 703 && vValue >=95 && vValue < 155)
            begin
                memIn = 40;
            end
            if (hValue >= 623 && hValue < 703 && vValue >=155  && vValue < 215)
            begin
                memIn = 32;
            end
            if (hValue >= 623 && hValue < 703 && vValue >= 215 && vValue < 275)
            begin
                memIn = 24;
            end
            if (hValue >= 623 && hValue < 703 && vValue >= 275 && vValue < 335)
            begin
                memIn = 16;
            end
            if (hValue >= 623 && hValue < 703 && vValue >= 335 && vValue < 395)
            begin
                memIn = 8;
            end
            if (hValue >= 623 && hValue < 703 && vValue >= 395 && vValue < 455)
            begin
                memIn = 0;
            end
            if (hValue >= 623 && hValue < 703 && vValue >= 455 && vValue < 515)
            begin
                memIn = 56;
            end


            //block 8

            if (hValue >= 703 && hValue <= 783 && vValue >= 35 && vValue < 95)
            begin
                memIn = 56;
            end
            if (hValue >= 703 && hValue <= 783 && vValue >=95 && vValue < 155)
            begin
                memIn = 48;
            end
            if (hValue >= 703 && hValue <= 783 && vValue >=155  && vValue < 215)
            begin
                memIn = 40;
            end
            if (hValue >= 703 && hValue <= 783 && vValue >= 215 && vValue < 275)
            begin
                memIn = 32;
            end
            if (hValue >= 703 && hValue <= 783 && vValue >= 275 && vValue < 335)
            begin
                memIn = 24;
            end
            if (hValue >= 703 && hValue <= 783 && vValue >= 335 && vValue < 395)
            begin
                memIn = 16;
            end
            if (hValue >= 703 && hValue <= 783 && vValue >= 395 && vValue < 455)
            begin
                memIn = 8;
            end
            if (hValue >= 703 && hValue <= 783 && vValue >= 455 && vValue < 515)
            begin
                memIn = 0;
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
            //This is where active video goes
  
            
            
            
            
            VGA_R <=  memOut[23:16] ;
            VGA_G <= memOut[15:8] ;
            VGA_B <= memOut[7:0] ;


         
        end
        else
        begin
            VGA_R <= 0;
			VGA_G <= 0;
			VGA_B <= 0;
        end
    end
 
endmodule 