
?
?No debug cores found in the current design.
Before running the implement_debug_core command, either use the Set Up Debug wizard (GUI mode)
or use the create_debug_core and connect_debug_core Tcl commands to insert debug cores into the design.
154*	chipscopeZ16-241h px? 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1091.3242default:default2
0.0002default:defaultZ17-268h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 965b4fe4
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.010 . Memory (MB): peak = 1091.324 ; gain = 0.0002default:defaulth px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1091.3242default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
Ю
?IO placement is infeasible. Number of unplaced terminals (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
2592default:default2
2002default:default2ڬ
?s
 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 2 Drv: 12  has only 200 sites available on device, but needs 259 sites.
	Term: <MSGMETA::BEGIN::BLOCK>payload[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[32]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[33]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[34]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[35]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[36]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[37]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[38]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[39]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[40]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[41]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[42]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[43]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[44]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[45]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[46]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[47]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[48]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[49]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[50]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[51]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[52]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[53]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[54]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[55]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[56]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[57]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[58]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[59]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[60]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[61]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[62]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[63]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[64]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[65]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[66]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[67]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[68]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[69]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[70]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[71]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[72]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[73]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[74]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[75]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[76]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[77]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[78]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[79]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[80]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[81]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[82]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[83]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[84]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[85]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[86]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[87]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[88]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[89]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[90]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[91]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[92]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[93]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[94]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[95]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[96]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[97]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[98]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[99]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[100]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[101]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[102]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[103]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[104]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[105]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[106]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[107]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[108]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[109]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[110]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[111]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[112]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[113]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[114]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[115]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[116]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[117]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[118]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[119]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[120]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[121]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[122]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[123]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[124]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[125]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[126]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[127]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[128]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[129]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[130]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[131]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[132]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[133]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[134]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[135]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[136]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[137]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[138]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[139]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[140]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[141]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[142]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[143]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[144]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[145]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[146]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[147]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[148]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[149]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[150]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[151]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[152]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[153]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[154]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[155]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[156]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[157]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[158]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[159]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[160]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[161]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[162]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[163]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[164]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[165]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[166]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[167]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[168]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[169]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[170]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[171]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[172]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[173]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[174]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[175]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[176]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[177]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[178]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[179]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[180]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[181]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[182]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[183]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[184]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[185]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[186]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[187]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[188]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[189]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[190]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[191]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[192]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[193]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[194]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[195]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[196]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[197]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[198]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[199]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[200]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[201]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[202]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[203]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[204]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[205]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[206]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[207]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[208]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[209]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[210]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[211]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[212]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[213]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[214]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[215]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[216]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[217]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[218]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[219]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[220]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[221]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[222]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[223]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[224]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[225]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[226]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[227]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[228]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[229]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[230]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[231]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[232]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[233]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[234]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[235]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[236]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[237]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[238]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[239]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[240]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[241]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[242]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[243]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[244]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[245]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[246]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[247]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[248]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[249]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[250]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[251]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[252]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[253]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[254]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[255]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>done<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>tready<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>valid<MSGMETA::END>

"?

payload[0]2?
 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 2 Drv: 12  has only 200 sites available on device, but needs 259 sites.
	Term: :
	Term: "

payload[1]:
	Term: "

payload[2]:
	Term: "

payload[3]:
	Term: "

payload[4]:
	Term: "

payload[5]:
	Term: "

payload[6]:
	Term: "

payload[7]:
	Term: "

payload[8]:
	Term: "

payload[9]:
	Term: "
payload[10]:
	Term: "
payload[11]:
	Term: "
payload[12]:
	Term: "
payload[13]:
	Term: "
payload[14]:
	Term: "
payload[15]:
	Term: "
payload[16]:
	Term: "
payload[17]:
	Term: "
payload[18]:
	Term: "
payload[19]:
	Term: "
payload[20]:
	Term: "
payload[21]:
	Term: "
payload[22]:
	Term: "
payload[23]:
	Term: "
payload[24]:
	Term: "
payload[25]:
	Term: "
payload[26]:
	Term: "
payload[27]:
	Term: "
payload[28]:
	Term: "
payload[29]:
	Term: "
payload[30]:
	Term: "
payload[31]:
	Term: "
payload[32]:
	Term: "
payload[33]:
	Term: "
payload[34]:
	Term: "
payload[35]:
	Term: "
payload[36]:
	Term: "
payload[37]:
	Term: "
payload[38]:
	Term: "
payload[39]:
	Term: "
payload[40]:
	Term: "
payload[41]:
	Term: "
payload[42]:
	Term: "
payload[43]:
	Term: "
payload[44]:
	Term: "
payload[45]:
	Term: "
payload[46]:
	Term: "
payload[47]:
	Term: "
payload[48]:
	Term: "
payload[49]:
	Term: "
payload[50]:
	Term: "
payload[51]:
	Term: "
payload[52]:
	Term: "
payload[53]:
	Term: "
payload[54]:
	Term: "
payload[55]:
	Term: "
payload[56]:
	Term: "
payload[57]:
	Term: "
payload[58]:
	Term: "
payload[59]:
	Term: "
payload[60]:
	Term: "
payload[61]:
	Term: "
payload[62]:
	Term: "
payload[63]:
	Term: "
payload[64]:
	Term: "
payload[65]:
	Term: "
payload[66]:
	Term: "
payload[67]:
	Term: "
payload[68]:
	Term: "
payload[69]:
	Term: "
payload[70]:
	Term: "
payload[71]:
	Term: "
payload[72]:
	Term: "
payload[73]:
	Term: "
payload[74]:
	Term: "
payload[75]:
	Term: "
payload[76]:
	Term: "
payload[77]:
	Term: "
payload[78]:
	Term: "
payload[79]:
	Term: "
payload[80]:
	Term: "
payload[81]:
	Term: "
payload[82]:
	Term: "
payload[83]:
	Term: "
payload[84]:
	Term: "
payload[85]:
	Term: "
payload[86]:
	Term: "
payload[87]:
	Term: "
payload[88]:
	Term: "
payload[89]:
	Term: "
payload[90]:
	Term: "
payload[91]:
	Term: "
payload[92]:
	Term: "
payload[93]:
	Term: "
payload[94]:
	Term: "
payload[95]:
	Term: "
payload[96]:
	Term: "
payload[97]:
	Term: "
payload[98]:
	Term: "
payload[99]:
	Term: "
payload[100]:
	Term: "
payload[101]:
	Term: "
payload[102]:
	Term: "
payload[103]:
	Term: "
payload[104]:
	Term: "
payload[105]:
	Term: "
payload[106]:
	Term: "
payload[107]:
	Term: "
payload[108]:
	Term: "
payload[109]:
	Term: "
payload[110]:
	Term: "
payload[111]:
	Term: "
payload[112]:
	Term: "
payload[113]:
	Term: "
payload[114]:
	Term: "
payload[115]:
	Term: "
payload[116]:
	Term: "
payload[117]:
	Term: "
payload[118]:
	Term: "
payload[119]:
	Term: "
payload[120]:
	Term: "
payload[121]:
	Term: "
payload[122]:
	Term: "
payload[123]:
	Term: "
payload[124]:
	Term: "
payload[125]:
	Term: "
payload[126]:
	Term: "
payload[127]:
	Term: "
payload[128]:
	Term: "
payload[129]:
	Term: "
payload[130]:
	Term: "
payload[131]:
	Term: "
payload[132]:
	Term: "
payload[133]:
	Term: "
payload[134]:
	Term: "
payload[135]:
	Term: "
payload[136]:
	Term: "
payload[137]:
	Term: "
payload[138]:
	Term: "
payload[139]:
	Term: "
payload[140]:
	Term: "
payload[141]:
	Term: "
payload[142]:
	Term: "
payload[143]:
	Term: "
payload[144]:
	Term: "
payload[145]:
	Term: "
payload[146]:
	Term: "
payload[147]:
	Term: "
payload[148]:
	Term: "
payload[149]:
	Term: "
payload[150]:
	Term: "
payload[151]:
	Term: "
payload[152]:
	Term: "
payload[153]:
	Term: "
payload[154]:
	Term: "
payload[155]:
	Term: "
payload[156]:
	Term: "
payload[157]:
	Term: "
payload[158]:
	Term: "
payload[159]:
	Term: "
payload[160]:
	Term: "
payload[161]:
	Term: "
payload[162]:
	Term: "
payload[163]:
	Term: "
payload[164]:
	Term: "
payload[165]:
	Term: "
payload[166]:
	Term: "
payload[167]:
	Term: "
payload[168]:
	Term: "
payload[169]:
	Term: "
payload[170]:
	Term: "
payload[171]:
	Term: "
payload[172]:
	Term: "
payload[173]:
	Term: "
payload[174]:
	Term: "
payload[175]:
	Term: "
payload[176]:
	Term: "
payload[177]:
	Term: "
payload[178]:
	Term: "
payload[179]:
	Term: "
payload[180]:
	Term: "
payload[181]:
	Term: "
payload[182]:
	Term: "
payload[183]:
	Term: "
payload[184]:
	Term: "
payload[185]:
	Term: "
payload[186]:
	Term: "
payload[187]:
	Term: "
payload[188]:
	Term: "
payload[189]:
	Term: "
payload[190]:
	Term: "
payload[191]:
	Term: "
payload[192]:
	Term: "
payload[193]:
	Term: "
payload[194]:
	Term: "
payload[195]:
	Term: "
payload[196]:
	Term: "
payload[197]:
	Term: "
payload[198]:
	Term: "
payload[199]:
	Term: "
payload[200]:
	Term: "
payload[201]:
	Term: "
payload[202]:
	Term: "
payload[203]:
	Term: "
payload[204]:
	Term: "
payload[205]:
	Term: "
payload[206]:
	Term: "
payload[207]:
	Term: "
payload[208]:
	Term: "
payload[209]:
	Term: "
payload[210]:
	Term: "
payload[211]:
	Term: "
payload[212]:
	Term: "
payload[213]:
	Term: "
payload[214]:
	Term: "
payload[215]:
	Term: "
payload[216]:
	Term: "
payload[217]:
	Term: "
payload[218]:
	Term: "
payload[219]:
	Term: "
payload[220]:
	Term: "
payload[221]:
	Term: "
payload[222]:
	Term: "
payload[223]:
	Term: "
payload[224]:
	Term: "
payload[225]:
	Term: "
payload[226]:
	Term: "
payload[227]:
	Term: "
payload[228]:
	Term: "
payload[229]:
	Term: "
payload[230]:
	Term: "
payload[231]:
	Term: "
payload[232]:
	Term: "
payload[233]:
	Term: "
payload[234]:
	Term: "
payload[235]:
	Term: "
payload[236]:
	Term: "
payload[237]:
	Term: "
payload[238]:
	Term: "
payload[239]:
	Term: "
payload[240]:
	Term: "
payload[241]:
	Term: "
payload[242]:
	Term: "
payload[243]:
	Term: "
payload[244]:
	Term: "
payload[245]:
	Term: "
payload[246]:
	Term: "
payload[247]:
	Term: "
payload[248]:
	Term: "
payload[249]:
	Term: "
payload[250]:
	Term: "
payload[251]:
	Term: "
payload[252]:
	Term: "
payload[253]:
	Term: "
payload[254]:
	Term: "
payload[255]:
	Term: "
done:
	Term: "
tready:
	Term: "
valid:

2default:default8Z30-58h px? 
Ю
?IO placement is infeasible. Number of unplaced terminals (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
3252default:default2
2002default:default2ڬ
?s
 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 2 Drv: 12  has only 200 sites available on device, but needs 259 sites.
	Term: <MSGMETA::BEGIN::BLOCK>payload[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[32]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[33]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[34]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[35]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[36]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[37]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[38]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[39]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[40]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[41]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[42]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[43]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[44]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[45]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[46]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[47]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[48]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[49]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[50]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[51]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[52]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[53]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[54]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[55]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[56]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[57]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[58]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[59]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[60]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[61]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[62]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[63]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[64]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[65]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[66]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[67]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[68]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[69]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[70]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[71]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[72]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[73]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[74]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[75]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[76]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[77]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[78]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[79]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[80]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[81]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[82]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[83]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[84]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[85]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[86]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[87]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[88]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[89]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[90]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[91]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[92]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[93]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[94]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[95]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[96]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[97]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[98]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[99]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[100]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[101]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[102]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[103]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[104]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[105]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[106]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[107]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[108]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[109]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[110]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[111]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[112]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[113]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[114]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[115]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[116]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[117]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[118]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[119]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[120]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[121]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[122]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[123]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[124]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[125]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[126]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[127]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[128]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[129]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[130]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[131]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[132]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[133]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[134]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[135]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[136]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[137]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[138]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[139]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[140]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[141]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[142]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[143]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[144]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[145]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[146]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[147]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[148]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[149]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[150]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[151]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[152]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[153]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[154]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[155]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[156]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[157]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[158]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[159]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[160]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[161]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[162]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[163]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[164]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[165]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[166]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[167]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[168]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[169]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[170]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[171]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[172]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[173]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[174]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[175]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[176]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[177]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[178]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[179]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[180]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[181]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[182]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[183]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[184]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[185]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[186]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[187]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[188]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[189]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[190]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[191]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[192]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[193]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[194]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[195]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[196]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[197]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[198]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[199]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[200]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[201]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[202]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[203]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[204]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[205]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[206]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[207]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[208]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[209]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[210]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[211]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[212]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[213]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[214]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[215]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[216]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[217]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[218]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[219]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[220]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[221]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[222]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[223]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[224]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[225]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[226]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[227]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[228]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[229]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[230]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[231]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[232]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[233]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[234]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[235]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[236]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[237]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[238]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[239]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[240]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[241]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[242]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[243]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[244]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[245]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[246]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[247]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[248]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[249]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[250]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[251]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[252]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[253]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[254]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>payload[255]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>done<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>tready<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>valid<MSGMETA::END>

"?

payload[0]2?
 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 2 Drv: 12  has only 200 sites available on device, but needs 259 sites.
	Term: :
	Term: "

payload[1]:
	Term: "

payload[2]:
	Term: "

payload[3]:
	Term: "

payload[4]:
	Term: "

payload[5]:
	Term: "

payload[6]:
	Term: "

payload[7]:
	Term: "

payload[8]:
	Term: "

payload[9]:
	Term: "
payload[10]:
	Term: "
payload[11]:
	Term: "
payload[12]:
	Term: "
payload[13]:
	Term: "
payload[14]:
	Term: "
payload[15]:
	Term: "
payload[16]:
	Term: "
payload[17]:
	Term: "
payload[18]:
	Term: "
payload[19]:
	Term: "
payload[20]:
	Term: "
payload[21]:
	Term: "
payload[22]:
	Term: "
payload[23]:
	Term: "
payload[24]:
	Term: "
payload[25]:
	Term: "
payload[26]:
	Term: "
payload[27]:
	Term: "
payload[28]:
	Term: "
payload[29]:
	Term: "
payload[30]:
	Term: "
payload[31]:
	Term: "
payload[32]:
	Term: "
payload[33]:
	Term: "
payload[34]:
	Term: "
payload[35]:
	Term: "
payload[36]:
	Term: "
payload[37]:
	Term: "
payload[38]:
	Term: "
payload[39]:
	Term: "
payload[40]:
	Term: "
payload[41]:
	Term: "
payload[42]:
	Term: "
payload[43]:
	Term: "
payload[44]:
	Term: "
payload[45]:
	Term: "
payload[46]:
	Term: "
payload[47]:
	Term: "
payload[48]:
	Term: "
payload[49]:
	Term: "
payload[50]:
	Term: "
payload[51]:
	Term: "
payload[52]:
	Term: "
payload[53]:
	Term: "
payload[54]:
	Term: "
payload[55]:
	Term: "
payload[56]:
	Term: "
payload[57]:
	Term: "
payload[58]:
	Term: "
payload[59]:
	Term: "
payload[60]:
	Term: "
payload[61]:
	Term: "
payload[62]:
	Term: "
payload[63]:
	Term: "
payload[64]:
	Term: "
payload[65]:
	Term: "
payload[66]:
	Term: "
payload[67]:
	Term: "
payload[68]:
	Term: "
payload[69]:
	Term: "
payload[70]:
	Term: "
payload[71]:
	Term: "
payload[72]:
	Term: "
payload[73]:
	Term: "
payload[74]:
	Term: "
payload[75]:
	Term: "
payload[76]:
	Term: "
payload[77]:
	Term: "
payload[78]:
	Term: "
payload[79]:
	Term: "
payload[80]:
	Term: "
payload[81]:
	Term: "
payload[82]:
	Term: "
payload[83]:
	Term: "
payload[84]:
	Term: "
payload[85]:
	Term: "
payload[86]:
	Term: "
payload[87]:
	Term: "
payload[88]:
	Term: "
payload[89]:
	Term: "
payload[90]:
	Term: "
payload[91]:
	Term: "
payload[92]:
	Term: "
payload[93]:
	Term: "
payload[94]:
	Term: "
payload[95]:
	Term: "
payload[96]:
	Term: "
payload[97]:
	Term: "
payload[98]:
	Term: "
payload[99]:
	Term: "
payload[100]:
	Term: "
payload[101]:
	Term: "
payload[102]:
	Term: "
payload[103]:
	Term: "
payload[104]:
	Term: "
payload[105]:
	Term: "
payload[106]:
	Term: "
payload[107]:
	Term: "
payload[108]:
	Term: "
payload[109]:
	Term: "
payload[110]:
	Term: "
payload[111]:
	Term: "
payload[112]:
	Term: "
payload[113]:
	Term: "
payload[114]:
	Term: "
payload[115]:
	Term: "
payload[116]:
	Term: "
payload[117]:
	Term: "
payload[118]:
	Term: "
payload[119]:
	Term: "
payload[120]:
	Term: "
payload[121]:
	Term: "
payload[122]:
	Term: "
payload[123]:
	Term: "
payload[124]:
	Term: "
payload[125]:
	Term: "
payload[126]:
	Term: "
payload[127]:
	Term: "
payload[128]:
	Term: "
payload[129]:
	Term: "
payload[130]:
	Term: "
payload[131]:
	Term: "
payload[132]:
	Term: "
payload[133]:
	Term: "
payload[134]:
	Term: "
payload[135]:
	Term: "
payload[136]:
	Term: "
payload[137]:
	Term: "
payload[138]:
	Term: "
payload[139]:
	Term: "
payload[140]:
	Term: "
payload[141]:
	Term: "
payload[142]:
	Term: "
payload[143]:
	Term: "
payload[144]:
	Term: "
payload[145]:
	Term: "
payload[146]:
	Term: "
payload[147]:
	Term: "
payload[148]:
	Term: "
payload[149]:
	Term: "
payload[150]:
	Term: "
payload[151]:
	Term: "
payload[152]:
	Term: "
payload[153]:
	Term: "
payload[154]:
	Term: "
payload[155]:
	Term: "
payload[156]:
	Term: "
payload[157]:
	Term: "
payload[158]:
	Term: "
payload[159]:
	Term: "
payload[160]:
	Term: "
payload[161]:
	Term: "
payload[162]:
	Term: "
payload[163]:
	Term: "
payload[164]:
	Term: "
payload[165]:
	Term: "
payload[166]:
	Term: "
payload[167]:
	Term: "
payload[168]:
	Term: "
payload[169]:
	Term: "
payload[170]:
	Term: "
payload[171]:
	Term: "
payload[172]:
	Term: "
payload[173]:
	Term: "
payload[174]:
	Term: "
payload[175]:
	Term: "
payload[176]:
	Term: "
payload[177]:
	Term: "
payload[178]:
	Term: "
payload[179]:
	Term: "
payload[180]:
	Term: "
payload[181]:
	Term: "
payload[182]:
	Term: "
payload[183]:
	Term: "
payload[184]:
	Term: "
payload[185]:
	Term: "
payload[186]:
	Term: "
payload[187]:
	Term: "
payload[188]:
	Term: "
payload[189]:
	Term: "
payload[190]:
	Term: "
payload[191]:
	Term: "
payload[192]:
	Term: "
payload[193]:
	Term: "
payload[194]:
	Term: "
payload[195]:
	Term: "
payload[196]:
	Term: "
payload[197]:
	Term: "
payload[198]:
	Term: "
payload[199]:
	Term: "
payload[200]:
	Term: "
payload[201]:
	Term: "
payload[202]:
	Term: "
payload[203]:
	Term: "
payload[204]:
	Term: "
payload[205]:
	Term: "
payload[206]:
	Term: "
payload[207]:
	Term: "
payload[208]:
	Term: "
payload[209]:
	Term: "
payload[210]:
	Term: "
payload[211]:
	Term: "
payload[212]:
	Term: "
payload[213]:
	Term: "
payload[214]:
	Term: "
payload[215]:
	Term: "
payload[216]:
	Term: "
payload[217]:
	Term: "
payload[218]:
	Term: "
payload[219]:
	Term: "
payload[220]:
	Term: "
payload[221]:
	Term: "
payload[222]:
	Term: "
payload[223]:
	Term: "
payload[224]:
	Term: "
payload[225]:
	Term: "
payload[226]:
	Term: "
payload[227]:
	Term: "
payload[228]:
	Term: "
payload[229]:
	Term: "
payload[230]:
	Term: "
payload[231]:
	Term: "
payload[232]:
	Term: "
payload[233]:
	Term: "
payload[234]:
	Term: "
payload[235]:
	Term: "
payload[236]:
	Term: "
payload[237]:
	Term: "
payload[238]:
	Term: "
payload[239]:
	Term: "
payload[240]:
	Term: "
payload[241]:
	Term: "
payload[242]:
	Term: "
payload[243]:
	Term: "
payload[244]:
	Term: "
payload[245]:
	Term: "
payload[246]:
	Term: "
payload[247]:
	Term: "
payload[248]:
	Term: "
payload[249]:
	Term: "
payload[250]:
	Term: "
payload[251]:
	Term: "
payload[252]:
	Term: "
payload[253]:
	Term: "
payload[254]:
	Term: "
payload[255]:
	Term: "
done:
	Term: "
tready:
	Term: "
valid:

2default:default8Z30-58h px? 
?
'IO placer failed to find a solution
%s
374*place2?
?Below is the partial placement that can be analyzed to see if any constraint modifications will make the IO placement problem easier to solve.

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                     IO Placement : Bank Stats                                                                           |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
| Id | Pins  | Terms |                               Standards                                |                IDelayCtrls               |  VREF  |  VCCO  |   VR   | DCI |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|  0 |     0 |     0 |                                                                        |                                          |        |        |        |     |
| 13 |    50 |     0 |                                                                        |                                          |        |        |        |     |
| 33 |    50 |     0 |                                                                        |                                          |        |        |        |     |
| 34 |    50 |     0 |                                                                        |                                          |        |        |        |     |
| 35 |    50 |     0 |                                                                        |                                          |        |        |        |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|    |   200 |     0 |                                                                        |                                          |        |        |        |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+

IO Placement:
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| BankId |             Terminal | Standard        | Site                 | Pin                  | Attributes           |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
2default:defaultZ30-374h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: cb8db039
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1091.324 ; gain = 0.0002default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: cb8db039
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1091.324 ; gain = 0.0002default:defaulth px? 
?
?Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2*
IO Clock Placer failed2default:defaultZ30-99h px? 
=
(Ending Placer Task | Checksum: cb8db039
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1091.324 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
392default:default2
02default:default2
02default:default2
52default:defaultZ4-41h px? 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px? 
m
Command failed: %s
69*common28
$Placer could not place all instances2default:defaultZ17-69h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Sep 19 22:28:21 20222default:defaultZ17-206h px? 


End Record