`timescale 1ns / 1ps
/*===============================================
//模块功能：MCP2515控制
//时间：2020.9.20
//版本：1.0.1
===============================================*/

module mcp2515 (clk50, cs, si, sck, rst_n, tx_empty, tx_flag, so, mebg);

/*===============================================
//输入输出定义
===============================================*/
input clk50, rst_n, so;
output cs, si, sck, tx_empty, tx_flag, mebg;
reg cc, sc, da, init, tx_flag, tx_empty, sck, cs, si, uscount_c, rec, mebg;
reg [7:0] cc_buff;
reg [7:0] sc_buff;
reg [3:0] state;
reg [7:0] canlen_buff;
reg [7:0] da_buff;
reg [8:0] clk_count;
reg [8:0] uscount;
reg [6:0] mscount;
reg [4:0] c_count;
reg [7:0] rec_data;
parameter RSTMCP = 0, DELAY = 1, CNF1 = 2, CNF2 = 3, CNF3 = 4, TXB0SIDH = 5, TXB0SIDL = 6, RXB0CTRL = 7, RXB0DLC = 8, RXF0SIDH = 9, RXF0SIDL = 10, CANINTF = 11, CANINTE = 12, CANWORK = 13;
parameter CANSENDLEN = 9, CANSENDDATA0 = 1, CANSENDDATA1 = 2, CANSENDDATA2 = 3, CANSENDDATA3 = 4, CANSENDDATA4 = 5, CANSENDDATA5 = 6, CANSENDDATA6 = 7, CANSENDDATA7 = 8, CANSENDPRE =0, CANSENDQUE = 10, CANDELAY = 11;
parameter CTRLCOMMAND = 0, SETCOMMAND = 1, DATA = 2;

/*=========================================================
//分频进程，125kHz
=========================================================*/
always @ (posedge clk50)
begin 
    if (cs)
		begin
        	sck <= 1;
        	clk_count <= 0;
		end
    else if (clk_count == 9'd199)
		begin
        	sck <= 0;
        	clk_count <= clk_count + 1'b1;
		end
    else if (clk_count == 9'd399)
		begin
        	sck <= 1;
        	clk_count <= 0;
		end
    else
        clk_count <= clk_count+ 1'b1;
end

/*===============================================
//单个bit发送
===============================================*/
always @ (posedge clk50)
begin
	if (clk_count == 9'd199 & (cc | sc | da))//下降沿发送bit
		begin
			if(cc == 1)//发送控制命令1bit
				si <= cc_buff[7];
			else if(sc == 1)//发送设置命令1bit
				si <= sc_buff[7];
			else if(da == 1)//发送数据1bit
				si <= da_buff[7];
			else
				si <= 0;
		end
end

/*===============================================
//延时
===============================================*/
always @ (posedge clk50)
begin
	if (uscount_c)
		uscount <= 0;
	else
		uscount <= uscount + 1'b1;
end

/*===============================================
//MCP2515初始化及发送数据
===============================================*/
always @ (posedge clk50 or negedge rst_n)
begin
	if (rst_n == 0)
		begin
			cs <= 1;
			cc <= 0;
			sc <= 0;
			da <= 0;
			init <= 0;
			tx_empty <= 1;
			tx_flag <= 0;
			state <= 0;
			c_count <= 0;
			uscount_c <= 1;
			mscount <= 0;
			rec <= 0;
			mebg <= 0;
			rec_data <= 0;
		end
	else if (uscount_c == 0)//延时结束
		begin
			if (uscount == 9'd499)
				uscount_c <= 1;
		end
	else
		begin
			if (cc == 0 && sc == 0 && da == 0 && init == 0)//MCP2515初始化
				begin
					case (state)
						RSTMCP:begin//复位
									cc <= 1;
									cc_buff <= 8'hC0;
									state <= state + 1'b1;
								end
						DELAY:begin//延时使MCP2515工作
									if (mscount == 7'd100)
										begin
											state <= state + 1'b1;
											mscount <= 0;
										end
									else
										begin
											uscount_c <= 0;
											mscount <= mscount + 1'b1;
										end
								end
						CNF1:begin//配置CNF1
									cc <= 1;
									cc_buff <= 8'h02;
									sc <= 1;
									sc_buff <= 8'h2A;
									da <= 1;
									da_buff <= 8'h03;
									state <= state + 1'b1;
								end
						CNF2:begin//配置CNF2
									cc <= 1;
									cc_buff <= 8'h02;
									sc <= 1;
									sc_buff <= 8'h29;
									da <= 1;
									da_buff <= 8'h90;
									state <= state + 1'b1;
								end
						CNF3:begin//配置CNF3
									cc <= 1;
									cc_buff <= 8'h02;
									sc <= 1;
									sc_buff <= 8'h28;
									da <= 1;
									da_buff <= 8'h02;
									state <= state + 1'b1;
								end
						TXB0SIDH:begin//发送标准标识符高位
									cc <= 1;
									cc_buff <= 8'h02;
									sc <= 1;
									sc_buff <= 8'h31;
									da <= 1;
									da_buff <= 8'hFF;
									state <= state + 1'b1;
								end
						TXB0SIDL:begin//发送标准标识符低位
									cc <= 1;
									cc_buff <= 8'h02;
									sc <= 1;
									sc_buff <= 8'h32;
									da <= 1;
									da_buff <= 8'hE0;
									state <= state + 1'b1;
								end
						RXB0CTRL:begin//接收标准标识符有效信息
									cc <= 1;
									cc_buff <= 8'h02;
									sc <= 1;
									sc_buff <= 8'h60;
									da <= 1;
									da_buff <= 8'h20;
									state <= state + 1'b1;
								end
						RXB0DLC:begin//接收8个字节
									cc <= 1;
									cc_buff <= 8'h02;
									sc <= 1;
									sc_buff <= 8'h65;
									da <= 1;
									da_buff <= 8'h08;
									state <= state + 1'b1;
								end
						RXF0SIDH:begin//验收滤波寄存器高位
									cc <= 1;
									cc_buff <= 8'h02;
									sc <= 1;
									sc_buff <= 8'h00;
									da <= 1;
									da_buff <= 8'hFF;
									state <= state + 1'b1;
								end
						RXF0SIDL:begin//验收滤波寄存器低位
									cc <= 1;
									cc_buff <= 8'h02;
									sc <= 1;
									sc_buff <= 8'h01;
									da <= 1;
									da_buff <= 8'hE0;
									state <= state + 1'b1;
								end
						CANINTF:begin//清空中断标志寄存器
									cc <= 1;
									cc_buff <= 8'h02;
									sc <= 1;
									sc_buff <= 8'h2C;
									da <= 1;
									da_buff <= 8'h00;
									state <= state + 1'b1;
								end
						CANINTE:begin//接收缓存器0满中断
									cc <= 1;
									cc_buff <= 8'h02;
									sc <= 1;
									sc_buff <= 8'h2B;
									da <= 1;
									da_buff <= 8'h01;
									state <= state + 1'b1;
								end
						CANWORK:begin//设置为正常模式
									cc <= 1;
									cc_buff <= 8'h02;
									sc <= 1;
									sc_buff <= 8'h0F;
									da <= 1;
									da_buff <= 8'h04;
									state <= 0;
									init <= 1;
									tx_flag <= 1;
								end
						default:begin
								state <= 0;
							end
					endcase
				end
			else if (cc)
				begin
					cs <= 0;
					if (c_count == 6'd8 && clk_count == 9'd120)//cc发送结束
						begin
							cs <= 1;
							c_count <= 0;
							uscount_c <= 0;
							cc <= 0;
						end
					else if (c_count < 6'd8 && clk_count == 9'd320)//顺序左移
						begin
							cc_buff <= cc_buff << 1;
							c_count <= c_count + 1'b1;
						end
				end
			else if (sc)
				begin
					cs <= 0;
					if (c_count == 6'd8 && clk_count == 9'd120)//sc发送结束
						begin
							cs <= 1;
							c_count <= 0;
							uscount_c <= 0;
							sc <= 0;
						end
					else if (c_count < 6'd8 && clk_count == 9'd320)//顺序左移
						begin
							sc_buff <= sc_buff << 1;
							c_count <= c_count + 1'b1;
						end
				end
			else if (cc == 0 && sc == 0 && da == 0 && tx_flag == 1 && rec == 0)//MCP2515发送数据
				begin
					tx_empty <= 0;
					case (state)
						CANSENDLEN:begin//数据长度写入寄存器
										cc <= 1;
										cc_buff <= 8'h02;
										sc <= 1;
										sc_buff <= 8'h35;
										da <= 1;
										da_buff <= 8'h08;
										state <= state + 1'b1;
									end
						CANSENDDATA0:begin//0字节写入寄存器
										cc <= 1;
										cc_buff <= 8'h02;
										sc <= 1;
										sc_buff <= 8'h36;
										da <= 1;
										da_buff <= 8'h31;
										state <= state + 1'b1;
									end
						CANSENDDATA1:begin//1字节写入寄存器
										cc <= 1;
										cc_buff <= 8'h02;
										sc <= 1;
										sc_buff <= 8'h37;
										da <= 1;
										da_buff <= 8'h32;
										state <= state + 1'b1;
									end
						CANSENDDATA2:begin//2字节写入寄存器
										cc <= 1;
										cc_buff <= 8'h02;
										sc <= 1;
										sc_buff <= 8'h38;
										da <= 1;
										da_buff <= 8'h33;
										state <= state + 1'b1;
									end
						CANSENDDATA3:begin//3字节写入寄存器
										cc <= 1;
										cc_buff <= 8'h02;
										sc <= 1;
										sc_buff <= 8'h39;
										da <= 1;
										da_buff <= 8'h34;
										state <= state + 1'b1;
									end
						CANSENDDATA4:begin//4字节写入寄存器
										cc <= 1;
										cc_buff <= 8'h02;
										sc <= 1;
										sc_buff <= 8'h3A;
										da <= 1;
										da_buff <= 8'h35;
										state <= state + 1'b1;
									end
						CANSENDDATA5:begin//5字节写入寄存器
										cc <= 1;
										cc_buff <= 8'h02;
										sc <= 1;
										sc_buff <= 8'h3B;
										da <= 1;
										da_buff <= 8'h36;
										state <= state + 1'b1;
									end
						CANSENDDATA6:begin//6字节写入寄存器
										cc <= 1;
										cc_buff <= 8'h02;
										sc <= 1;
										sc_buff <= 8'h3C;
										da <= 1;
										da_buff <= 8'h37;
										state <= state + 1'b1;
									end
						CANSENDDATA7:begin//7字节写入寄存器
										cc <= 1;
										cc_buff <= 8'h02;
										sc <= 1;
										sc_buff <= 8'h3D;
										da <= 1;
										da_buff <= 8'h38;
										state <= state + 1'b1;
									end
						CANSENDPRE:begin
										if (mscount == 7'd100)
											begin
												mscount <= 0;
												cc <= 1;
												cc_buff <= 8'h03;
												sc <= 1;
												sc_buff <= 8'h08;
												rec <= 1'b1;
											end
										else if (rec_data & 8'h01)
											begin
												state <=  state + 1'b1;
											end
										else
											begin
												uscount_c <= 0;
												mscount <= mscount + 1'b1;
											end
									end
						CANSENDQUE:begin//发送命令
										cc <= 1;
										cc_buff <= 8'h02;
										sc <= 1;
										sc_buff <= 8'h30;
										da <= 1;
										da_buff <= 8'h08;
										state <= state + 1'b1;
										//tx_flag <= 0;
										tx_empty <= 1;
									end
						CANDELAY:begin
										if (mscount == 7'd127)
											begin
												state <= 0;
												mebg <= 1;
												mscount <= 0;
											end
										else
											begin
												uscount_c <= 0;
												mscount <= mscount + 1'b1;
											end
									end
						default:tx_flag  <= 0;
					endcase
				end
			else if (da)
				begin
					cs <= 0;
					if (c_count == 6'd8 && clk_count == 9'd120)//数据发送完毕
						begin
							cs <= 1;
							uscount_c <= 0;
							c_count <= 0;
							da <= 0;
						end
					else if (c_count < 6'd8 && clk_count == 9'd320)//顺序左移
						begin
							da_buff <= da_buff << 1;
							c_count <= c_count + 1'b1;
						end
				end
			else if (rec == 1)//接收数据
				begin
					cs <= 0;
					if (clk_count == 9'd130)
						begin
							rec_data[0] <= so;
							c_count <= c_count + 1'b1;
						end
					else if (c_count < 6'd8 && clk_count == 9'd200)
						rec_data <= rec_data << 1;
					else if (c_count == 6'd8 && clk_count == 9'd160)
						begin
							c_count <= 0;
							rec <= 0;
							uscount_c <= 0;
							cs <= 1;
						end
				end
			else 
				init <= 0;
		end
end

endmodule