module VTC(
    input               clkin,
    input               reset_n,
    output    reg       VGA_HS,
    output    reg       VGA_VS,
    output    reg       activeVideo,
    output    reg [15:0] horizontalValue,
    output    reg [15:0] verticalValue

);


`include "parameters.vh"



reg verticalGo;

//horizontal counter

always @(posedge clkin or negedge reset_n)
	begin

		if (reset_n == 0)
		begin
			horizontalValue <= 0;
		end

        else
        begin
            if (horizontalValue < maxHorz)
            begin
                horizontalValue <= horizontalValue + 1;
                verticalGo = 0;
            end
            else
            begin
                horizontalValue <= 0;
                verticalGo = 1;
            end
        end
    end

//vertical counter
always @(posedge clkin or negedge reset_n)
	begin
		if (reset_n == 0)
		begin
			verticalValue <= 0;
		end
        else
        begin
            if(verticalGo == 1)
            begin
                if (verticalValue < maxVert)
                begin
                    verticalValue <= verticalValue + 1;
                end
                else
                begin
                    verticalValue <= 0;
                end
            end
        end
    end


//logic deffintions 
always @(posedge clkin or negedge reset_n)
	begin
		if (reset_n == 0)
		begin
		    activeVideo <= 0;
		end
        else
        begin
            VGA_HS = (horizontalValue < syncHorz) ? 1'b1:1'b0;
            VGA_VS = (verticalValue < syncVert) ? 1'b1:1'b0;

            activeVideo = (horizontalValue < activeHorzmax && horizontalValue > activeHorzmin && verticalValue < activeVertmax && verticalValue > activeVertmin) ? 1'b1:1'b0;
        end
    end
endmodule 


