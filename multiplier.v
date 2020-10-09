/*----------16位乘法器-------------*/
module multiplier(clk,rst_n,en,a,b_in,rdy,multiplier_out);
	input clk;						//定义时钟
	input rst_n;					//复位信号
	input en;						//使能
	input[15:0] a,b_in;				//输入a，b-in
	output rdy;						//输出rdy，当结果正确时候为高电平
	output[31:0] multiplier_out;	//乘法输出值
	reg rdy;
	
	//定义中间的17个寄存器
	reg[15:0] multiplier_reg0 ;
	reg[16:0] multiplier_reg1 ;
	reg[17:0] multiplier_reg2 ;
	reg[18:0] multiplier_reg3 ;
	reg[19:0] multiplier_reg4 ;
	reg[20:0] multiplier_reg5 ;
	reg[21:0] multiplier_reg6 ;
	reg[22:0] multiplier_reg7 ;
	reg[23:0] multiplier_reg8 ;
	reg[24:0] multiplier_reg9 ; 
	reg[25:0] multiplier_reg10 ;
	reg[26:0] multiplier_reg11 ;
	reg[27:0] multiplier_reg12 ;
	reg[28:0] multiplier_reg13 ;
	reg[29:0] multiplier_reg14 ;
	reg[30:0] multiplier_reg15 ;
	reg[31:0] multiplier_reg16 ;


	always@(rst_n or a or b_in or en)	//监视4个变量
	begin
		if(!rst_n)  					//复位
		begin 
			rdy <= 1'b0;
			multiplier_reg0 <= 16'd0;
			multiplier_reg1 <= 17'd0;
			multiplier_reg2 <= 18'd0;
			multiplier_reg3 <= 19'd0;
			multiplier_reg4 <= 20'd0;
			multiplier_reg5 <= 21'd0;
			multiplier_reg6 <= 22'd0;
			multiplier_reg7 <= 23'd0;
			multiplier_reg8 <= 24'd0;
			multiplier_reg9 <= 25'd0;
			multiplier_reg10 <= 26'd0;
			multiplier_reg11 <= 27'd0;
			multiplier_reg12 <= 28'd0;
			multiplier_reg13 <= 29'd0;
			multiplier_reg14 <= 30'd0;
			multiplier_reg15 <= 31'd0;
			multiplier_reg16 <= 32'd0;
		end
		else if(en&&rst_n)				//开始乘法的运算操作
		begin
			if(a[0]) multiplier_reg0 <= b_in; else multiplier_reg0 <= 16'd0;             
			if(a[1]) multiplier_reg1 <= {b_in,multiplier_reg16[0]}; else multiplier_reg1 <= 17'd0;  
			if(a[2]) multiplier_reg2 <= {b_in,multiplier_reg16[1:0]}; else multiplier_reg2 <= 18'd0;
			if(a[3]) multiplier_reg3 <= {b_in,multiplier_reg16[2:0]}; else multiplier_reg3 <= 19'd0;
			if(a[4]) multiplier_reg4 <= {b_in,multiplier_reg16[3:0]}; else multiplier_reg4 <= 20'd0;
			if(a[5]) multiplier_reg5 <= {b_in,multiplier_reg16[4:0]}; else multiplier_reg5 <= 21'd0;		
			if(a[6]) multiplier_reg6 <= {b_in,multiplier_reg16[5:0]}; else multiplier_reg6 <= 22'd0;
			if(a[7]) multiplier_reg7 <= {b_in,multiplier_reg16[6:0]}; else multiplier_reg7 <= 23'd0;
			if(a[8]) multiplier_reg8 <= {b_in,multiplier_reg16[7:0]}; else multiplier_reg8 <= 24'd0;
			if(a[9]) multiplier_reg9 <= {b_in,multiplier_reg16[8:0]}; else multiplier_reg9 <= 25'd0;
			if(a[10]) multiplier_reg10 <= {b_in,multiplier_reg16[9:0]}; else multiplier_reg10 <= 26'd0;	
			if(a[11]) multiplier_reg11 <= {b_in,multiplier_reg16[10:0]}; else multiplier_reg11 <= 27'd0;
			if(a[12]) multiplier_reg12 <= {b_in,multiplier_reg16[11:0]}; else multiplier_reg12 <= 28'd0;
			if(a[13]) multiplier_reg13 <= {b_in,multiplier_reg16[12:0]}; else multiplier_reg13 <= 29'd0;	
			if(a[14]) multiplier_reg14 <= {b_in,multiplier_reg16[13:0]}; else multiplier_reg14 <= 30'd0;
			if(a[15]) multiplier_reg15 <= {b_in,multiplier_reg16[14:0]}; else multiplier_reg15 <= 31'd0;
			rdy<=1;
		end
		else 
		begin 
			rdy <= 1'b0 ;
		end
	end
	//输出结果为所有寄存器的和
	assign multiplier_out = multiplier_reg0+multiplier_reg1+multiplier_reg2+multiplier_reg3+multiplier_reg4+multiplier_reg5+multiplier_reg6+multiplier_reg7+multiplier_reg8+multiplier_reg9+multiplier_reg10+multiplier_reg11+multiplier_reg12+multiplier_reg13+multiplier_reg14+multiplier_reg15;
endmodule
