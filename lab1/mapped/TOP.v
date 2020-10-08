/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in topographical mode
// Version   : O-2018.06-SP1
// Date      : Fri Sep 25 22:15:00 2020
/////////////////////////////////////////////////////////////


module TOP ( Clk, Reset, Crnt_Instrn, Zro_Flag, Carry_Flag, Neg_Flag, 
        Return_Addr, Current_State, PC );
  input [31:0] Crnt_Instrn;
  input [7:0] Return_Addr;
  output [2:0] Current_State;
  output [7:0] PC;
  input Clk, Reset, Zro_Flag, Carry_Flag, Neg_Flag;
  wire   \I_FSM/N31 , \I_FSM/N30 , n55, n56, n57, n58, n60, n61, n62, n189,
         n191, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n297, n298, n299, n300, n302, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n324, n325, n326, n327, n328, n331, n332, n333,
         n334, n335, n336, n337, n340, n341, n342, n343, n347, n348, n349,
         n350, n351, n352, n353, n356, n357, n363, n366, n368, n369, n370,
         n371, n372, n373, n374, n376, n377, n378, n380, n384, n385, n387,
         n388, n389, n390, n391, n392, n393, n395, n399, n400, n402, n403,
         n405, n406, n407, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n446, n447, n448, n449, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510;

  dfnrb2 \I_COUNT/PCint_reg[0]  ( .D(n61), .CP(Clk), .Q(PC[0]) );
  dfnrq4 \I_FSM/Current_State_reg[0]  ( .D(\I_FSM/N30 ), .CP(Clk), .Q(
        Current_State[0]) );
  dfnrq4 \I_FSM/Current_State_reg[1]  ( .D(\I_FSM/N31 ), .CP(Clk), .Q(
        Current_State[1]) );
  dfnrn2 \I_FSM/Current_State_reg[2]  ( .D(n476), .CP(Clk), .QN(
        Current_State[2]) );
  dfnrq4 \I_COUNT/PCint_reg[7]  ( .D(n62), .CP(Clk), .Q(PC[7]) );
  dfnrb4 \I_COUNT/PCint_reg[1]  ( .D(n60), .CP(Clk), .Q(PC[1]), .QN(n465) );
  dfnrq4 \I_COUNT/PCint_reg[5]  ( .D(n56), .CP(Clk), .Q(PC[5]) );
  dfnrq4 \I_COUNT/PCint_reg[3]  ( .D(n58), .CP(Clk), .Q(PC[3]) );
  dfnrq4 \I_COUNT/PCint_reg[2]  ( .D(n466), .CP(Clk), .Q(PC[2]) );
  nr02d0 U130 ( .A1(Current_State[0]), .A2(Current_State[1]), .ZN(n431) );
  nr02d0 U132 ( .A1(Crnt_Instrn[29]), .A2(Crnt_Instrn[28]), .ZN(n270) );
  nr03d0 U133 ( .A1(n270), .A2(Crnt_Instrn[22]), .A3(Crnt_Instrn[23]), .ZN(
        n277) );
  nd02d0 U134 ( .A1(Crnt_Instrn[19]), .A2(Crnt_Instrn[20]), .ZN(n272) );
  inv0d0 U135 ( .I(Crnt_Instrn[18]), .ZN(n271) );
  nr03d0 U136 ( .A1(n272), .A2(n271), .A3(Crnt_Instrn[25]), .ZN(n274) );
  nr04d0 U139 ( .A1(n283), .A2(n285), .A3(Crnt_Instrn[31]), .A4(
        Crnt_Instrn[30]), .ZN(n273) );
  nd03d0 U140 ( .A1(n277), .A2(n274), .A3(n273), .ZN(n279) );
  nr04d0 U141 ( .A1(Crnt_Instrn[19]), .A2(Crnt_Instrn[20]), .A3(
        Crnt_Instrn[18]), .A4(Crnt_Instrn[21]), .ZN(n276) );
  nr02d0 U142 ( .A1(Crnt_Instrn[31]), .A2(Crnt_Instrn[30]), .ZN(n275) );
  nd03d0 U143 ( .A1(n277), .A2(n276), .A3(n275), .ZN(n278) );
  an02d1 U144 ( .A1(n279), .A2(n278), .Z(n282) );
  xr02d1 U145 ( .A1(Crnt_Instrn[25]), .A2(Carry_Flag), .Z(n280) );
  nr03d0 U146 ( .A1(n280), .A2(Crnt_Instrn[21]), .A3(n283), .ZN(n281) );
  nr03d0 U147 ( .A1(n312), .A2(n282), .A3(n281), .ZN(n289) );
  xr02d1 U148 ( .A1(Crnt_Instrn[25]), .A2(Zro_Flag), .Z(n284) );
  nr02d0 U150 ( .A1(n285), .A2(Crnt_Instrn[21]), .ZN(n286) );
  nd02d1 U152 ( .A1(n289), .A2(n288), .ZN(n415) );
  inv0d0 U153 ( .I(Crnt_Instrn[25]), .ZN(n290) );
  nr03d0 U154 ( .A1(n290), .A2(Crnt_Instrn[16]), .A3(Crnt_Instrn[17]), .ZN(
        n309) );
  nr02d0 U155 ( .A1(n415), .A2(n309), .ZN(n291) );
  nd02d1 U156 ( .A1(Neg_Flag), .A2(n291), .ZN(n321) );
  nd02d2 U161 ( .A1(n321), .A2(n292), .ZN(n393) );
  nd02d1 U162 ( .A1(PC[0]), .A2(PC[1]), .ZN(n447) );
  nr02d0 U164 ( .A1(n447), .A2(n437), .ZN(n349) );
  inv0d0 U169 ( .I(Crnt_Instrn[27]), .ZN(n293) );
  nr03d0 U170 ( .A1(Crnt_Instrn[31]), .A2(Crnt_Instrn[30]), .A3(n293), .ZN(
        n310) );
  inv0d0 U172 ( .I(n191), .ZN(n370) );
  nd03d0 U173 ( .A1(n325), .A2(n423), .A3(n370), .ZN(n391) );
  nd12d0 U174 ( .A1(n391), .A2(PC[5]), .ZN(n294) );
  inv0d0 U179 ( .I(n423), .ZN(n298) );
  nr02d0 U181 ( .A1(n369), .A2(n395), .ZN(n297) );
  nd02d2 U184 ( .A1(n308), .A2(n300), .ZN(n449) );
  inv0d1 U186 ( .I(n321), .ZN(n376) );
  inv0d0 U190 ( .I(Reset), .ZN(n412) );
  inv0d0 U192 ( .I(n418), .ZN(n438) );
  nd02d1 U197 ( .A1(Neg_Flag), .A2(n309), .ZN(n434) );
  invbd2 U199 ( .I(n454), .ZN(n313) );
  inv0d0 U200 ( .I(n310), .ZN(n311) );
  nr02d0 U201 ( .A1(n312), .A2(n311), .ZN(n315) );
  nr02d0 U207 ( .A1(n413), .A2(Reset), .ZN(n436) );
  nd02d0 U208 ( .A1(n436), .A2(Return_Addr[6]), .ZN(n316) );
  nr02d0 U210 ( .A1(n318), .A2(n317), .ZN(n319) );
  invbd2 U213 ( .I(n451), .ZN(n324) );
  invbd2 U218 ( .I(n393), .ZN(n326) );
  inv0d0 U220 ( .I(n369), .ZN(n327) );
  nd12d0 U221 ( .A1(n389), .A2(n327), .ZN(n328) );
  nd02d0 U225 ( .A1(n433), .A2(Crnt_Instrn[4]), .ZN(n331) );
  an02d1 U227 ( .A1(n436), .A2(Return_Addr[4]), .Z(n333) );
  nr02d0 U228 ( .A1(n418), .A2(n191), .ZN(n332) );
  nr02d0 U229 ( .A1(n333), .A2(n332), .ZN(n334) );
  nd02d1 U230 ( .A1(n335), .A2(n334), .ZN(n336) );
  nd02d0 U233 ( .A1(n412), .A2(Crnt_Instrn[3]), .ZN(n340) );
  nr02d0 U234 ( .A1(n415), .A2(n340), .ZN(n341) );
  nd02d0 U235 ( .A1(n341), .A2(n413), .ZN(n342) );
  nr02d0 U236 ( .A1(n454), .A2(n342), .ZN(n347) );
  an02d1 U237 ( .A1(n436), .A2(Return_Addr[3]), .Z(n343) );
  nr02d0 U242 ( .A1(n363), .A2(n437), .ZN(n352) );
  nr02d0 U243 ( .A1(n349), .A2(n348), .ZN(n350) );
  inv0d0 U244 ( .I(n350), .ZN(n351) );
  inv0d0 U248 ( .I(PC[0]), .ZN(n356) );
  nr02d0 U258 ( .A1(Current_State[2]), .A2(Reset), .ZN(n429) );
  nd02d0 U259 ( .A1(Current_State[0]), .A2(Current_State[1]), .ZN(n366) );
  inv0d0 U260 ( .I(n366), .ZN(n430) );
  nr03d0 U265 ( .A1(n391), .A2(n189), .A3(n395), .ZN(n368) );
  inv0d0 U266 ( .I(PC[7]), .ZN(n380) );
  inv0d0 U267 ( .I(n380), .ZN(n372) );
  nr02d0 U268 ( .A1(n368), .A2(n372), .ZN(n378) );
  nd02d0 U269 ( .A1(n423), .A2(n369), .ZN(n388) );
  nd02d0 U270 ( .A1(n423), .A2(n189), .ZN(n374) );
  inv0d0 U271 ( .I(n395), .ZN(n392) );
  nd02d0 U272 ( .A1(n370), .A2(n392), .ZN(n371) );
  nd02d0 U273 ( .A1(n423), .A2(n371), .ZN(n373) );
  aor21d1 U283 ( .B1(n389), .B2(n388), .A(n395), .Z(n390) );
  nr03d0 U285 ( .A1(n393), .A2(n392), .A3(n391), .ZN(n400) );
  inv0d0 U298 ( .I(Current_State[0]), .ZN(n409) );
  nd02d0 U299 ( .A1(n429), .A2(n409), .ZN(n411) );
  nd02d0 U300 ( .A1(n431), .A2(n412), .ZN(n410) );
  nd02d0 U301 ( .A1(n411), .A2(n410), .ZN(\I_FSM/N30 ) );
  inv0d1 U302 ( .I(n435), .ZN(n417) );
  nd03d0 U304 ( .A1(n413), .A2(Crnt_Instrn[1]), .A3(n412), .ZN(n414) );
  nr04d0 U305 ( .A1(n417), .A2(n416), .A3(n415), .A4(n414), .ZN(n421) );
  an02d1 U306 ( .A1(n436), .A2(Return_Addr[1]), .Z(n420) );
  nr02d0 U307 ( .A1(n418), .A2(n465), .ZN(n419) );
  nr03d0 U308 ( .A1(n421), .A2(n420), .A3(n419), .ZN(n428) );
  nd02d0 U309 ( .A1(n422), .A2(PC[1]), .ZN(n426) );
  nd03d0 U310 ( .A1(n423), .A2(PC[0]), .A3(n465), .ZN(n425) );
  aor21d1 U311 ( .B1(n426), .B2(n425), .A(n424), .Z(n427) );
  inv0d0 U313 ( .I(n429), .ZN(n432) );
  nr03d0 U314 ( .A1(n432), .A2(n431), .A3(n430), .ZN(\I_FSM/N31 ) );
  an02d1 U315 ( .A1(n433), .A2(Crnt_Instrn[2]), .Z(n452) );
  nd03d0 U316 ( .A1(n435), .A2(n452), .A3(n434), .ZN(n441) );
  nd02d1 U317 ( .A1(n436), .A2(Return_Addr[2]), .ZN(n456) );
  nr03d0 U319 ( .A1(n439), .A2(n438), .A3(n437), .ZN(n440) );
  an02d1 U320 ( .A1(n441), .A2(n440), .Z(n442) );
  nd02d1 U321 ( .A1(n443), .A2(n442), .ZN(n446) );
  inv0d0 U324 ( .I(n447), .ZN(n448) );
  nr02d0 U328 ( .A1(n454), .A2(n453), .ZN(n458) );
  inv0d0 U329 ( .I(PC[2]), .ZN(n455) );
  nd02d0 U330 ( .A1(n456), .A2(n455), .ZN(n457) );
  nr03d0 U331 ( .A1(n459), .A2(n458), .A3(n457), .ZN(n460) );
  nd02d2 U212 ( .A1(n321), .A2(n423), .ZN(n451) );
  invbd2 U185 ( .I(n449), .ZN(n377) );
  nd02d1 U312 ( .A1(n428), .A2(n427), .ZN(n60) );
  nr02d4 U159 ( .A1(n415), .A2(n307), .ZN(n300) );
  nd02d0 U290 ( .A1(n472), .A2(n473), .ZN(n399) );
  nr03d0 U158 ( .A1(Crnt_Instrn[16]), .A2(Crnt_Instrn[17]), .A3(
        Crnt_Instrn[25]), .ZN(n307) );
  inv0d1 U219 ( .I(n488), .ZN(n424) );
  dfnrb2 \I_COUNT/PCint_reg[6]  ( .D(n55), .CP(Clk), .Q(PC[6]), .QN(n189) );
  dfnrb2 \I_COUNT/PCint_reg[4]  ( .D(n57), .CP(Clk), .Q(PC[4]), .QN(n191) );
  inv0d1 U295 ( .I(Crnt_Instrn[0]), .ZN(n406) );
  inv0d1 U137 ( .I(Crnt_Instrn[17]), .ZN(n283) );
  inv0d1 U138 ( .I(Crnt_Instrn[16]), .ZN(n285) );
  inv0d1 U204 ( .I(Crnt_Instrn[6]), .ZN(n314) );
  inv0d1 U163 ( .I(PC[2]), .ZN(n437) );
  inv0d1 U180 ( .I(PC[5]), .ZN(n395) );
  inv0d1 U165 ( .I(PC[3]), .ZN(n363) );
  nd02d1 U151 ( .A1(n287), .A2(n286), .ZN(n288) );
  inv0d1 U166 ( .I(n363), .ZN(n348) );
  nd02d2 U131 ( .A1(n431), .A2(Current_State[2]), .ZN(n312) );
  inv0d1 U303 ( .I(n434), .ZN(n416) );
  nr03d4 U171 ( .A1(n312), .A2(Reset), .A3(n310), .ZN(n423) );
  nd02d1 U167 ( .A1(n349), .A2(n348), .ZN(n369) );
  nd02d1 U187 ( .A1(n423), .A2(n191), .ZN(n389) );
  nd02d1 U249 ( .A1(n423), .A2(n356), .ZN(n357) );
  inv0d1 U168 ( .I(n369), .ZN(n325) );
  inv0d1 U206 ( .I(n315), .ZN(n413) );
  nd12d1 U245 ( .A1(n352), .A2(n351), .ZN(n353) );
  inv0d1 U250 ( .I(n357), .ZN(n422) );
  inv0d1 U209 ( .I(n316), .ZN(n317) );
  nd02d1 U280 ( .A1(n474), .A2(n475), .ZN(n384) );
  inv0d1 U318 ( .I(n456), .ZN(n439) );
  inv0d1 U327 ( .I(n452), .ZN(n453) );
  nd02d1 U264 ( .A1(n402), .A2(Crnt_Instrn[7]), .ZN(n387) );
  nd02d1 U292 ( .A1(n402), .A2(Crnt_Instrn[5]), .ZN(n403) );
  nd02d1 U149 ( .A1(n284), .A2(n283), .ZN(n287) );
  nd02d1 U191 ( .A1(n312), .A2(n412), .ZN(n418) );
  nr02d0 U193 ( .A1(n438), .A2(n189), .ZN(n302) );
  nr02d1 U182 ( .A1(n298), .A2(n297), .ZN(n299) );
  nr03d2 U202 ( .A1(n415), .A2(Reset), .A3(n315), .ZN(n433) );
  invbd2 U263 ( .I(n405), .ZN(n402) );
  nd03d0 U157 ( .A1(n481), .A2(n302), .A3(n467), .ZN(n492) );
  nd02d1 U160 ( .A1(n326), .A2(n299), .ZN(n467) );
  nd12d1 U175 ( .A1(n393), .A2(n422), .ZN(n443) );
  nd02d1 U176 ( .A1(n502), .A2(n387), .ZN(n62) );
  inv0d1 U177 ( .I(n189), .ZN(n478) );
  nd02d1 U178 ( .A1(n491), .A2(n471), .ZN(n490) );
  inv0d1 U183 ( .I(n331), .ZN(n503) );
  nd02d1 U188 ( .A1(n449), .A2(n448), .ZN(n480) );
  inv0d1 U189 ( .I(n390), .ZN(n505) );
  buffd1 U194 ( .I(n357), .Z(n468) );
  an02d1 U195 ( .A1(n423), .A2(n465), .Z(n469) );
  buffd1 U196 ( .I(n369), .Z(n470) );
  nd04d0 U198 ( .A1(n388), .A2(n374), .A3(n373), .A4(n372), .ZN(n471) );
  inv0d1 U203 ( .I(n378), .ZN(n491) );
  inv0d0 U205 ( .I(PC[0]), .ZN(n497) );
  nd02d0 U211 ( .A1(n436), .A2(Return_Addr[5]), .ZN(n472) );
  or02d0 U214 ( .A1(n418), .A2(n395), .Z(n473) );
  nd02d0 U215 ( .A1(n436), .A2(Return_Addr[7]), .ZN(n474) );
  or02d0 U216 ( .A1(n418), .A2(n380), .Z(n475) );
  inv0d0 U217 ( .I(n328), .ZN(n483) );
  nd02d0 U222 ( .A1(n429), .A2(n430), .ZN(n476) );
  nd02d2 U223 ( .A1(n449), .A2(n324), .ZN(n477) );
  nd02d1 U224 ( .A1(n449), .A2(n324), .ZN(n444) );
  nr02d0 U226 ( .A1(n479), .A2(n478), .ZN(n306) );
  nr02d0 U231 ( .A1(n393), .A2(n294), .ZN(n479) );
  nr02d0 U232 ( .A1(n480), .A2(n451), .ZN(n459) );
  nd12d1 U238 ( .A1(n377), .A2(n494), .ZN(n481) );
  nr03d0 U239 ( .A1(n507), .A2(n400), .A3(n399), .ZN(n501) );
  nd02d1 U240 ( .A1(n482), .A2(n500), .ZN(n58) );
  nr03d0 U241 ( .A1(n499), .A2(n343), .A3(n347), .ZN(n482) );
  nd02d2 U246 ( .A1(PC[3]), .A2(n489), .ZN(n500) );
  an02d1 U247 ( .A1(n488), .A2(n483), .Z(n337) );
  nr02d0 U251 ( .A1(n336), .A2(n484), .ZN(n504) );
  nr02d0 U252 ( .A1(n477), .A2(n485), .ZN(n484) );
  nd12d1 U253 ( .A1(n191), .A2(n470), .ZN(n485) );
  nd02d2 U254 ( .A1(n486), .A2(n418), .ZN(n489) );
  nd02d2 U255 ( .A1(n488), .A2(n487), .ZN(n486) );
  nd12d1 U256 ( .A1(n469), .A2(n468), .ZN(n487) );
  invbd2 U257 ( .I(n393), .ZN(n488) );
  nr03d0 U261 ( .A1(n376), .A2(n490), .A3(n377), .ZN(n385) );
  nd12d1 U262 ( .A1(n306), .A2(n492), .ZN(n320) );
  nr02d0 U274 ( .A1(n446), .A2(n493), .ZN(n510) );
  nr02d0 U275 ( .A1(n477), .A2(PC[1]), .ZN(n493) );
  nr02d0 U276 ( .A1(n376), .A2(n389), .ZN(n494) );
  nd02d1 U277 ( .A1(n407), .A2(n495), .ZN(n61) );
  nr02d0 U278 ( .A1(n498), .A2(n496), .ZN(n495) );
  nr02d0 U279 ( .A1(n418), .A2(n497), .ZN(n496) );
  nr02d0 U281 ( .A1(n477), .A2(PC[0]), .ZN(n498) );
  nr02d0 U282 ( .A1(n444), .A2(n353), .ZN(n499) );
  nd02d1 U284 ( .A1(n501), .A2(n403), .ZN(n56) );
  nr02d0 U286 ( .A1(n405), .A2(n314), .ZN(n318) );
  nd02d2 U287 ( .A1(n313), .A2(n433), .ZN(n405) );
  nd02d1 U288 ( .A1(n320), .A2(n319), .ZN(n55) );
  nr02d0 U289 ( .A1(n385), .A2(n384), .ZN(n502) );
  nd12d1 U291 ( .A1(n454), .A2(n503), .ZN(n335) );
  nd12d1 U293 ( .A1(n337), .A2(n504), .ZN(n57) );
  an02d1 U294 ( .A1(n326), .A2(n505), .Z(n507) );
  nd02d2 U296 ( .A1(n506), .A2(n434), .ZN(n454) );
  nd02d2 U297 ( .A1(n308), .A2(n307), .ZN(n506) );
  nd02d2 U322 ( .A1(n308), .A2(n300), .ZN(n292) );
  nr02d0 U323 ( .A1(n509), .A2(n508), .ZN(n407) );
  an02d1 U325 ( .A1(n436), .A2(Return_Addr[0]), .Z(n508) );
  nr02d0 U326 ( .A1(n405), .A2(n406), .ZN(n509) );
  nd02d2 U332 ( .A1(n308), .A2(n307), .ZN(n435) );
  invbd2 U333 ( .I(Neg_Flag), .ZN(n308) );
  nr02d0 U334 ( .A1(n510), .A2(n460), .ZN(n466) );
endmodule

