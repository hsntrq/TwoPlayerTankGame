
{
Command: %s
53*	vivadotcl2J
6synth_design -top vga_controller -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
150082default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1024.484 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2"
vga_controller2default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
10202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
clk_div2default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
492default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter div_value bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_div2default:default2
 2default:default2
12default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
492default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
PS2Receiver2default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/keyboard_input.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	debouncer2default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/keyboard_input.v2default:default2
212default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter COUNT_MAX bound to: 19 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter COUNT_WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	debouncer2default:default2
 2default:default2
22default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/keyboard_input.v2default:default2
212default:default8@Z8-6155h px? 
?
-case statement is not full and has no default155*oasys2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/keyboard_input.v2default:default2
802default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PS2Receiver2default:default2
 2default:default2
32default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/keyboard_input.v2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	h_counter2default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
752default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	h_counter2default:default2
 2default:default2
42default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
752default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	v_counter2default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
1012default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	v_counter2default:default2
 2default:default2
52default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
1012default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
vga_sync2default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
1222default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter HD bound to: 640 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter HF bound to: 16 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter HB bound to: 48 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter HR bound to: 96 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter VD bound to: 480 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter VF bound to: 10 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter VB bound to: 33 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter VR bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_sync2default:default2
 2default:default2
62default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
1222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	pixel_gen2default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
8592default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter start bound to: 0 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter game bound to: 1 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter p1 bound to: 2 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter p2 bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
startscreen2default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
1502default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
startscreen2default:default2
 2default:default2
72default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
1502default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
p1screen2default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
1952default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
p1screen2default:default2
 2default:default2
82default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
1952default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
p2screen2default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
2412default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
p2screen2default:default2
 2default:default2
92default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
2412default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
maze2default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
3672default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
maze2default:default2
 2default:default2
102default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
3672default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
crown2default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
2882default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
crown2default:default2
 2default:default2
112default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
2882default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
tank12default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
5202default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
Fire12default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
4122default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
y_pos2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
4472default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
y_pos2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
4502default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
x_pos2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
4532default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
x_pos2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
4562default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Fire12default:default2
 2default:default2
122default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
4122default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
tank12default:default2
 2default:default2
132default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
5202default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
tank22default:default2
 2default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
6932default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
tank22default:default2
 2default:default2
142default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
6932default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	pixel_gen2default:default2
 2default:default2
152default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
8592default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
vga_controller2default:default2
 2default:default2
162default:default2
12default:default2l
VC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/sources_1/new/vga_controller.v2default:default2
10202default:default8@Z8-6155h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1024.484 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 1024.484 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 1024.484 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0222default:default2
1024.4842default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2k
UC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/constrs_1/new/constraints.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2k
UC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/constrs_1/new/constraints.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2i
UC:/Users/Student/Desktop/Project_Demo/Project_Demo.srcs/constrs_1/new/constraints.xdc2default:default24
 .Xil/vga_controller_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1063.5082default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0342default:default2
1063.5082default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 1063.508 ; gain = 39.023
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 1063.508 ; gain = 39.023
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 1063.508 ; gain = 39.023
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 1063.508 ; gain = 39.023
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   12 Bit       Adders := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 19    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    6 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    4 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 25    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	  31 Input   30 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  17 Input   16 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    6 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 22    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    4 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 14    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 53    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  12 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  16 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:29 . Memory (MB): peak = 1063.508 ; gain = 39.023
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
M
%s*synth25
!
ROM: Preliminary Mapping	Report
2default:defaulth px? 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px? 
j
%s*synth2R
>|Module Name | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px? 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px? 
j
%s*synth2R
>|tank1       | p_0_out    | 64x16         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|tank2       | p_0_out    | 64x16         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|tank1       | p_0_out    | 64x16         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|tank2       | p_0_out    | 64x16         | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>+------------+------------+---------------+----------------+

2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:33 ; elapsed = 00:00:37 . Memory (MB): peak = 1063.508 ; gain = 39.023
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:39 ; elapsed = 00:00:44 . Memory (MB): peak = 1129.254 ; gain = 104.770
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:39 ; elapsed = 00:00:44 . Memory (MB): peak = 1139.301 ; gain = 114.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:44 ; elapsed = 00:00:49 . Memory (MB): peak = 1139.301 ; gain = 114.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:44 ; elapsed = 00:00:49 . Memory (MB): peak = 1139.301 ; gain = 114.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:44 ; elapsed = 00:00:49 . Memory (MB): peak = 1139.301 ; gain = 114.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:44 ; elapsed = 00:00:49 . Memory (MB): peak = 1139.301 ; gain = 114.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:44 ; elapsed = 00:00:49 . Memory (MB): peak = 1139.301 ; gain = 114.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:44 ; elapsed = 00:00:49 . Memory (MB): peak = 1139.301 ; gain = 114.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     3|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    82|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     6|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |   162|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    49|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |   253|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |   160|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |   365|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |    11|
2default:defaulth px? 
D
%s*synth2,
|10    |MUXF8  |     1|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   |   211|
2default:defaulth px? 
D
%s*synth2,
|12    |IBUF   |     3|
2default:defaulth px? 
D
%s*synth2,
|13    |OBUF   |    17|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:44 ; elapsed = 00:00:49 . Memory (MB): peak = 1139.301 ; gain = 114.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:33 ; elapsed = 00:00:46 . Memory (MB): peak = 1139.301 ; gain = 75.793
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:44 ; elapsed = 00:00:49 . Memory (MB): peak = 1139.301 ; gain = 114.816
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0362default:default2
1139.3012default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
942default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
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
1139.3012default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
482default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:512default:default2
00:00:582default:default2
1139.3012default:default2
114.8162default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2f
RC:/Users/Student/Desktop/Project_Demo/Project_Demo.runs/synth_1/vga_controller.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
rExecuting : report_utilization -file vga_controller_utilization_synth.rpt -pb vga_controller_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Dec 13 19:26:33 20202default:defaultZ17-206h px? 


End Record