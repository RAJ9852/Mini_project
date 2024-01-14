module Traffic_Light_controller(


	input clk,rst,
	output reg [2:0]light_D0,
	output reg [2:0]light_D1,
	output reg [2:0]light_D2,
	output reg [2:0]light_D3,
	output reg [2:0]light_D4,
	output reg [2:0]light_D5,
	output reg [2:0]light_D6,
	output reg [2:0]light_D7,
	output reg [2:0]light_D8,
	output reg [2:0]light_D9
	);
	
	reg [25:0] clkdiv=26'd0; 
   always @(posedge clk) 
   begin 
       clkdiv=clkdiv+1;
	end
	
	parameter S0=0, S1=1, S2=2, S3=3, S4=4, S5=5, S6=6, S7=7,S8=8, S9=9, S10=10, S11=11;
	reg [3:0]count;
	reg[3:0] ps;
	parameter sec7=7,sec5=5,sec2=2,sec3=3;
	
	
	
	always@(posedge clkdiv[23] or posedge rst)                    // always block for states
		begin
		if(rst==1)
		begin
		ps<=S0;
		count<=0;
		end
		else
		
		
		
		
			case(ps)
 				S0:if(count<sec7)
						begin
						ps<=S0;
						count<=count+1;
						end
					else
						begin
						ps<=S1;
						count<=0;
						end				

				S1:if(count<sec2)
						begin
						ps<=S1;
						count<=count+1;
						end
					else
						begin
						ps<=S2;
						count<=0;
						end
						
				S2:if(count<sec5)
						begin
						ps<=S2;
						count<=count+1;
						end
					else
						begin
						ps<=S3;
						count<=0;
						end
						
				S3:if(count<sec2)
						begin
						ps<=S3;
						count<=count+1;
						end
					else
						begin
						ps<=S4;
						count<=0;
						end
						
				S4:if(count<sec7)
						begin
						ps<=S4;
						count<=count+1;
						end
					else
						begin
						ps<=S5;
						count<=0;
						end
						
				S5:if(count<sec2)
						begin
						ps<=S5;
						count<=count+1;
						end
					else
						begin
						ps<=S6;
						count<=0;
						end
						
				S6:if(count<sec5)
						begin
						ps<=S6;
						count<=count+1;
						end
					else
						begin
						ps<=S7;
						count<=0;
						end

				S7:if(count<sec3)
						begin
						ps<=S7;
						count<=count+1;
						end
					else
						begin
						ps<=S8;
						count<=0;
						end

       				S8:if(count<sec5)
						begin
						ps<=S8;
						count<=count+1;
						end
					else
						begin
						ps<=S9;
						count<=0;
						end

				S9:if(count<sec3)
						begin
						ps<=S9;
						count<=count+1;
						end
					else
						begin
						ps<=S10;
						count<=0;
						end

				S10:if(count<sec7)
						begin
						ps<=S10;
						count<=count+1;
						end
					else
						begin
						ps<=S11;
						count<=0;
						end

				S11:if(count<sec3)
						begin
						ps<=S11;
						count<=count+1;
						end
					else
						begin
						ps<=S0;
						count<=0;
						end
				default:ps<=S0;
				endcase
			end
			
			always@(ps)             //always block for output lights
			begin
			
				case(ps)
				
					S0:
					begin
						light_D0<=3'b001;
						light_D1<=3'b100;
						light_D2<=3'b100;
						light_D3<=3'b100;
						light_D4<=3'b001;
						light_D5<=3'b100;
						light_D6<=3'b100;
						light_D7<=3'b001;
						light_D8<=3'b100;
						light_D9<=3'b100;
					end					
					S1:
					begin
						light_D0<=3'b010;
						light_D1<=3'b100;
						light_D2<=3'b100;
						light_D3<=3'b100;
						light_D4<=3'b001;
						light_D5<=3'b100;
						light_D6<=3'b100;
						light_D7<=3'b001;
						light_D8<=3'b100;
						light_D9<=3'b100;
					end
					S2:
					begin
						light_D0<=3'b100;
						light_D1<=3'b100;
						light_D2<=3'b100;
						light_D3<=3'b100;
						light_D4<=3'b001;
						light_D5<=3'b001;
						light_D6<=3'b100;
						light_D7<=3'b001;
						light_D8<=3'b100;
						light_D9<=3'b100;
					end
					S3:
					begin
						light_D0<=3'b100;
						light_D1<=3'b100;
						light_D2<=3'b100;
						light_D3<=3'b100;
						light_D4<=3'b010;
						light_D5<=3'b001;
						light_D6<=3'b100;
						light_D7<=3'b001;
						light_D8<=3'b100;
						light_D9<=3'b100;
					end
					S4:
					begin
						light_D0<=3'b100;
						light_D1<=3'b100;
						light_D2<=3'b100;
						light_D3<=3'b001;
						light_D4<=3'b100;
						light_D5<=3'b001;
						light_D6<=3'b100;
						light_D7<=3'b001;
						light_D8<=3'b001;
						light_D9<=3'b100;
					end
					S5:
					begin
						light_D0<=3'b100;
						light_D1<=3'b100;
						light_D2<=3'b100;
						light_D3<=3'b010;
						light_D4<=3'b100;
						light_D5<=3'b001;
						light_D6<=3'b100;
						light_D7<=3'b010;
						light_D8<=3'b001;
						light_D9<=3'b100;
					end
					S6:
					begin
						light_D0<=3'b100;
						light_D1<=3'b001;
						light_D2<=3'b100;
						light_D3<=3'b100;
						light_D4<=3'b100;
						light_D5<=3'b001;
						light_D6<=3'b100;
						light_D7<=3'b100;
						light_D8<=3'b001;
						light_D9<=3'b100;
					end
					S7:
					begin
						light_D0<=3'b100;
						light_D1<=3'b010;
						light_D2<=3'b100;
						light_D3<=3'b100;
						light_D4<=3'b100;
						light_D5<=3'b001;
						light_D6<=3'b100;
						light_D7<=3'b100;
						light_D8<=3'b010;
						light_D9<=3'b100;
					end				
					S8:
					begin
						light_D0<=3'b100;
						light_D1<=3'b100;
						light_D2<=3'b001;
						light_D3<=3'b100;
						light_D4<=3'b100;
						light_D5<=3'b001;
						light_D6<=3'b001;
						light_D7<=3'b100;
						light_D8<=3'b100;
						light_D9<=3'b100;
					end				
					S9:
					begin
						light_D0<=3'b100;
						light_D1<=3'b100;
						light_D2<=3'b010;
						light_D3<=3'b100;
						light_D4<=3'b100;
						light_D5<=3'b010;
						light_D6<=3'b001;
						light_D7<=3'b100;
						light_D8<=3'b100;
						light_D9<=3'b100;
					end				
					S10:
					begin
						light_D0<=3'b100;
						light_D1<=3'b100;
						light_D2<=3'b100;
						light_D3<=3'b001;
						light_D4<=3'b100;
						light_D5<=3'b100;
						light_D6<=3'b001;
						light_D7<=3'b001;
						light_D8<=3'b100;
						light_D9<=3'b001;
					end				
                                        S11:
					begin
						light_D0<=3'b100;
						light_D1<=3'b100;
						light_D2<=3'b100;
						light_D3<=3'b010;
						light_D4<=3'b100;
						light_D5<=3'b100;
						light_D6<=3'b010;
						light_D7<=3'b001;
						light_D8<=3'b100;
						light_D9<=3'b010;
					end				
					default:
					begin
					        light_D0<=3'b010;
						light_D1<=3'b010;
						light_D2<=3'b010;
						light_D3<=3'b010;
						light_D4<=3'b010;
						light_D5<=3'b010;
						light_D6<=3'b010;
						light_D7<=3'b010;
						light_D8<=3'b010;
						light_D9<=3'b010;
					end
			    endcase
		        end
			
			
endmodule
