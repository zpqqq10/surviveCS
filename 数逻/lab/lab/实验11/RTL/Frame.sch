<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RSTN" />
        <signal name="K_COL(3:0)" />
        <signal name="K_ROW(4:0)" />
        <signal name="SW(15:0)" />
        <signal name="clk_100mhz" />
        <signal name="rst" />
        <signal name="Div(31:0)" />
        <signal name="readn" />
        <signal name="RDY" />
        <signal name="XLXN_25(4:0)" />
        <signal name="CR" />
        <signal name="Pulse(3:0)" />
        <signal name="BTN_OK(3:0)" />
        <signal name="BTN_OK(2:0)" />
        <signal name="blink(7:0)" />
        <signal name="Div(25)" />
        <signal name="Div(10)" />
        <signal name="SEGCLR" />
        <signal name="SEGEN" />
        <signal name="SEGDT" />
        <signal name="SEGCLK" />
        <signal name="V5" />
        <signal name="LEDCLK" />
        <signal name="LEDDT" />
        <signal name="LEDCLR" />
        <signal name="LEDEN" />
        <signal name="SW_OK(15:0)" />
        <signal name="SW_OK(7:5),SW_OK(15),SW_OK(0)" />
        <signal name="SW_OK(7:5)" />
        <signal name="SW_OK(0)" />
        <signal name="Ai(31:0)" />
        <signal name="Bi(31:0)" />
        <signal name="Disp_num(31:0)" />
        <signal name="point_out(7:0)" />
        <signal name="LE_out(7:0)" />
        <signal name="G0" />
        <signal name="Div(31:0),Div(31:0)" />
        <signal name="G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,blink(7:0),blink(7:0)" />
        <signal name="LED(7:0)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="AN(3:0)" />
        <signal name="SW_OK(1),Div(19:18)" />
        <signal name="SW_OK(4:2)" />
        <signal name="XLXN_59" />
        <signal name="zero" />
        <signal name="Co" />
        <signal name="Rc_32" />
        <signal name="ALUout(31:0)" />
        <signal name="Div(26)" />
        <signal name="Div(31:8),Rc_32,Rc_4,Qd,Qc,Qb,Qa,G0,Co" />
        <signal name="Qa" />
        <signal name="Qb" />
        <signal name="Qc" />
        <signal name="Rc_4" />
        <signal name="Qd" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_78" />
        <signal name="clk_1ms" />
        <signal name="Alarm" />
        <signal name="XLXN_81" />
        <signal name="SW_OK(8)" />
        <signal name="XLXN_83" />
        <signal name="BTN_OK(0)" />
        <signal name="BTN_OK(1)" />
        <signal name="XLXN_86(31:0)" />
        <signal name="CNT(31:0)" />
        <signal name="Timer(31:0)" />
        <signal name="XLXN_89(31:0)" />
        <signal name="Bi(13)" />
        <signal name="QA(31:0)" />
        <signal name="QB(31:0)" />
        <signal name="XLXN_96(31:0)" />
        <signal name="BTN_OK(3)" />
        <signal name="Bi(12)" />
        <signal name="Bi(10:8)" />
        <signal name="Bi(2:0)" />
        <signal name="Bi(6:4)" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Input" name="K_COL(3:0)" />
        <port polarity="Output" name="K_ROW(4:0)" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Input" name="clk_100mhz" />
        <port polarity="Output" name="readn" />
        <port polarity="Output" name="RDY" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="SEGCLR" />
        <port polarity="Output" name="SEGEN" />
        <port polarity="Output" name="SEGDT" />
        <port polarity="Output" name="SEGCLK" />
        <port polarity="Output" name="LEDCLK" />
        <port polarity="Output" name="LEDDT" />
        <port polarity="Output" name="LEDCLR" />
        <port polarity="Output" name="LEDEN" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="clkdiv">
            <timestamp>2020-11-3T5:59:45</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="SAnti_jitter">
            <timestamp>2019-10-21T16:0:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="300" x="64" y="-248" height="256" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" x1="64" />
            <line x2="32" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-192" y2="-192" x1="64" />
            <line x2="400" y1="-192" y2="-192" style="linewidth:W" x1="368" />
            <line x2="364" y1="-160" y2="-160" x1="400" />
            <line x2="364" y1="-224" y2="-224" x1="400" />
            <line x2="364" y1="-16" y2="-16" x1="400" />
            <line x2="400" y1="-48" y2="-48" style="linewidth:W" x1="368" />
            <line x2="400" y1="-128" y2="-128" style="linewidth:W" x1="368" />
            <line x2="400" y1="-96" y2="-96" style="linewidth:W" x1="368" />
        </blockdef>
        <blockdef name="Display">
            <timestamp>2020-11-11T1:25:42</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-336" y2="-336" x1="320" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
        </blockdef>
        <blockdef name="SEnter_2_32">
            <timestamp>2019-10-21T16:0:0</timestamp>
            <line x2="288" y1="-240" y2="-240" x1="320" />
            <line x2="320" y1="-192" y2="-192" style="linewidth:W" x1="288" />
            <line x2="320" y1="-128" y2="-128" style="linewidth:W" x1="288" />
            <line x2="320" y1="-64" y2="-64" style="linewidth:W" x1="288" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="256" x="32" y="-272" height="272" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" x1="32" />
            <line x2="0" y1="-240" y2="-240" x1="32" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="Multi_8CH32">
            <timestamp>2020-11-21T3:15:29</timestamp>
            <rect width="320" x="64" y="-896" height="896" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-876" height="24" />
            <line x2="448" y1="-864" y2="-864" x1="384" />
            <rect width="64" x="384" y="-460" height="24" />
            <line x2="448" y1="-448" y2="-448" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="GPIO">
            <timestamp>2020-11-11T2:30:7</timestamp>
            <rect width="304" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="Seg7_Dev">
            <timestamp>2020-11-24T7:0:37</timestamp>
            <rect width="288" x="64" y="-384" height="384" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-364" height="24" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="PIO">
            <timestamp>2020-11-11T2:37:59</timestamp>
            <rect width="320" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2020-11-11T16:2:48</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Counter_4bit">
            <timestamp>2020-12-1T1:52:52</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="counter_32_rev">
            <timestamp>2020-12-1T1:53:16</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ms1">
            <timestamp>2020-12-7T16:31:15</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="Timer">
            <timestamp>2020-12-7T16:32:18</timestamp>
            <rect width="304" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="MUX2T1_32">
            <timestamp>2020-12-7T16:24:16</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Regs_8_32">
            <timestamp>2020-12-7T15:57:40</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="SAnti_jitter" name="M2">
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="K_COL(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="K_ROW(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_25(4:0)" name="Key_out(4:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
            <blockpin signalname="Pulse(3:0)" name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
        </block>
        <block symbolname="Seg7_Dev" name="M7">
            <blockpin signalname="SW_OK(1),Div(19:18)" name="Scan(2:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="SEGMENT(7:0)" name="SEGMENT(7:0)" />
        </block>
        <block symbolname="PIO" name="M8">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="G0" name="rst" />
            <blockpin signalname="V5" name="EN" />
            <blockpin signalname="Div(31:8),Rc_32,Rc_4,Qd,Qc,Qb,Qa,G0,Co" name="PData_in(31:0)" />
            <blockpin signalname="LED(7:0)" name="LED(7:0)" />
            <blockpin name="GPIOf0(31:0)" />
        </block>
        <block symbolname="Display" name="M3">
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Div(10)" name="Start" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="SEGCLR" name="seg_clrn" />
            <blockpin signalname="SEGEN" name="SEG_PEN" />
            <blockpin signalname="SEGDT" name="seg_sout" />
            <blockpin signalname="SEGCLK" name="seg_clk" />
        </block>
        <block symbolname="Multi_8CH32" name="M5">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="V5" name="EN" />
            <blockpin signalname="SW_OK(7:5)" name="Test(2:0)" />
            <blockpin signalname="Div(31:0),Div(31:0)" name="point_in(63:0)" />
            <blockpin signalname="G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,blink(7:0),blink(7:0)" name="LES(63:0)" />
            <blockpin signalname="Ai(31:0)" name="data0(31:0)" />
            <blockpin signalname="Bi(31:0)" name="data1(31:0)" />
            <blockpin signalname="ALUout(31:0)" name="data2(31:0)" />
            <blockpin signalname="CNT(31:0)" name="data3(31:0)" />
            <blockpin signalname="Timer(31:0)" name="data4(31:0)" />
            <blockpin signalname="QA(31:0)" name="data5(31:0)" />
            <blockpin signalname="QB(31:0)" name="data6(31:0)" />
            <blockpin signalname="Div(31:0)" name="data7(31:0)" />
            <blockpin signalname="point_out(7:0)" name="point_out(7:0)" />
            <blockpin signalname="LE_out(7:0)" name="LE_out(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Disp_num(31:0)" />
        </block>
        <block symbolname="GPIO" name="M6">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(10)" name="Start" />
            <blockpin signalname="V5" name="EN" />
            <blockpin signalname="Div(31:8),Rc_32,Rc_4,Qd,Qc,Qb,Qa,G0,Co" name="P_Data(31:0)" />
            <blockpin signalname="LEDCLK" name="led_clk" />
            <blockpin signalname="LEDDT" name="led_sout" />
            <blockpin signalname="LEDCLR" name="led_clrn" />
            <blockpin signalname="LEDEN" name="LED_PEN" />
            <blockpin name="GPIOf0(31:0)" />
        </block>
        <block symbolname="clkdiv" name="M1">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="SEnter_2_32" name="M4">
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="Ai(31:0)" name="Ai(31:0)" />
            <blockpin signalname="Bi(31:0)" name="Bi(31:0)" />
            <blockpin signalname="blink(7:0)" name="blink(7:0)" />
            <blockpin signalname="XLXN_25(4:0)" name="Din(4:0)" />
            <blockpin signalname="RDY" name="D_ready" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="SW_OK(7:5),SW_OK(15),SW_OK(0)" name="Ctrl(4:0)" />
            <blockpin signalname="BTN_OK(2:0)" name="BTN(2:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_1">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="G0" name="G" />
        </block>
        <block symbolname="ALU" name="M10">
            <blockpin signalname="XLXN_89(31:0)" name="A(31:0)" />
            <blockpin signalname="QB(31:0)" name="B(31:0)" />
            <blockpin signalname="SW_OK(4:2)" name="ALU_Ctr(2:0)" />
            <blockpin signalname="Co" name="Co" />
            <blockpin signalname="zero" name="zero" />
            <blockpin signalname="XLXN_59" name="overflow" />
            <blockpin signalname="ALUout(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="Counter_4bit" name="M12">
            <blockpin signalname="Div(26)" name="clk" />
            <blockpin signalname="Qa" name="Qa" />
            <blockpin signalname="Qb" name="Qb" />
            <blockpin signalname="Qc" name="Qc" />
            <blockpin signalname="Qd" name="Qd" />
            <blockpin signalname="Rc_4" name="Rc" />
        </block>
        <block symbolname="counter_32_rev" name="M11">
            <blockpin signalname="Div(26)" name="clk" />
            <blockpin signalname="SW_OK(8)" name="s" />
            <blockpin signalname="BTN_OK(0)" name="Load" />
            <blockpin signalname="Ai(31:0)" name="PData(31:0)" />
            <blockpin signalname="Rc_32" name="Rc" />
            <blockpin signalname="CNT(31:0)" name="cnt(31:0)" />
        </block>
        <block symbolname="ms1" name="MS">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_1ms" name="ms1" />
        </block>
        <block symbolname="Timer" name="MTimer">
            <blockpin signalname="clk_1ms" name="clk" />
            <blockpin signalname="SW_OK(8)" name="Up" />
            <blockpin signalname="BTN_OK(0)" name="Load" />
            <blockpin signalname="BTN_OK(1)" name="Start" />
            <blockpin signalname="Ai(31:0)" name="Timing_const(31:0)" />
            <blockpin signalname="Alarm" name="Alarm" />
            <blockpin signalname="Timer(31:0)" name="cnt(31:0)" />
        </block>
        <block symbolname="MUX2T1_32" name="XLXI_5">
            <blockpin signalname="Bi(13)" name="s" />
            <blockpin signalname="Ai(31:0)" name="I0(31:0)" />
            <blockpin signalname="QA(31:0)" name="I1(31:0)" />
            <blockpin signalname="XLXN_89(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="Regs_8_32" name="XLXI_6">
            <blockpin signalname="BTN_OK(3)" name="clk" />
            <blockpin signalname="rst" name="cr" />
            <blockpin signalname="Bi(12)" name="WE" />
            <blockpin signalname="Bi(10:8)" name="Addr_W(2:0)" />
            <blockpin signalname="Bi(2:0)" name="Addr_A(2:0)" />
            <blockpin signalname="Bi(6:4)" name="Addr_B(2:0)" />
            <blockpin signalname="ALUout(31:0)" name="Di(31:0)" />
            <blockpin signalname="QA(31:0)" name="QA(31:0)" />
            <blockpin signalname="QB(31:0)" name="QB(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="1760" y="1344" name="M2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="32" y="8" type="instance" />
        </instance>
        <instance x="1344" y="688" name="M7" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="RSTN">
            <wire x2="1792" y1="1120" y2="1120" x1="1584" />
        </branch>
        <branch name="K_COL(3:0)">
            <wire x2="1792" y1="1184" y2="1184" x1="1584" />
        </branch>
        <branch name="K_ROW(4:0)">
            <wire x2="1792" y1="1232" y2="1232" x1="1584" />
        </branch>
        <branch name="SW(15:0)">
            <wire x2="1792" y1="1280" y2="1280" x1="1584" />
        </branch>
        <instance x="2592" y="544" name="M8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="4128" y="960" name="M3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="5376" y="2688" name="M5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="5376" y="3280" name="M6" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2256" y="1696" name="M1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="clk_100mhz">
            <wire x2="1664" y1="1824" y2="1824" x1="1424" />
            <wire x2="5376" y1="1824" y2="1824" x1="1664" />
            <wire x2="1664" y1="1824" y2="2016" x1="1664" />
            <wire x2="1872" y1="2016" y2="2016" x1="1664" />
            <wire x2="1664" y1="928" y2="1152" x1="1664" />
            <wire x2="1792" y1="1152" y2="1152" x1="1664" />
            <wire x2="1664" y1="1152" y2="1600" x1="1664" />
            <wire x2="1664" y1="1600" y2="1824" x1="1664" />
            <wire x2="2256" y1="1600" y2="1600" x1="1664" />
            <wire x2="2928" y1="928" y2="928" x1="1664" />
            <wire x2="4128" y1="928" y2="928" x1="2928" />
            <wire x2="2928" y1="928" y2="1120" x1="2928" />
            <wire x2="3168" y1="1120" y2="1120" x1="2928" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1401" type="branch" />
            <wire x2="1824" y1="1888" y2="2080" x1="1824" />
            <wire x2="1872" y1="2080" y2="2080" x1="1824" />
            <wire x2="2208" y1="1888" y2="1888" x1="1824" />
            <wire x2="5376" y1="1888" y2="1888" x1="2208" />
            <wire x2="2208" y1="1328" y2="1328" x1="2160" />
            <wire x2="2208" y1="1328" y2="1664" x1="2208" />
            <wire x2="2256" y1="1664" y2="1664" x1="2208" />
            <wire x2="2208" y1="1664" y2="1888" x1="2208" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1600" type="branch" />
            <wire x2="2720" y1="1600" y2="1600" x1="2640" />
        </branch>
        <instance x="3168" y="1360" name="M4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="readn">
            <wire x2="1728" y1="1008" y2="1312" x1="1728" />
            <wire x2="1792" y1="1312" y2="1312" x1="1728" />
            <wire x2="3552" y1="1008" y2="1008" x1="1728" />
            <wire x2="3552" y1="1008" y2="1120" x1="3552" />
            <wire x2="3600" y1="1120" y2="1120" x1="3552" />
            <wire x2="3552" y1="1120" y2="1120" x1="3488" />
        </branch>
        <branch name="RDY">
            <wire x2="3056" y1="1184" y2="1184" x1="2160" />
            <wire x2="3168" y1="1184" y2="1184" x1="3056" />
            <wire x2="3056" y1="976" y2="1184" x1="3056" />
            <wire x2="3648" y1="976" y2="976" x1="3056" />
        </branch>
        <branch name="XLXN_25(4:0)">
            <wire x2="3168" y1="1152" y2="1152" x1="2160" />
        </branch>
        <branch name="CR">
            <wire x2="2288" y1="1120" y2="1120" x1="2160" />
        </branch>
        <branch name="Pulse(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1216" type="branch" />
            <wire x2="2288" y1="1216" y2="1216" x1="2160" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <wire x2="2448" y1="1248" y2="1248" x1="2160" />
        </branch>
        <bustap x2="2544" y1="1248" y2="1248" x1="2448" />
        <branch name="BTN_OK(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2856" y="1248" type="branch" />
            <wire x2="3168" y1="1248" y2="1248" x1="2544" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3984" y="864" type="branch" />
            <wire x2="4128" y1="864" y2="864" x1="3984" />
        </branch>
        <branch name="blink(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3600" y="1296" type="branch" />
            <wire x2="3600" y1="1296" y2="1296" x1="3488" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3968" y="480" type="branch" />
            <wire x2="4128" y1="480" y2="480" x1="3968" />
        </branch>
        <branch name="Div(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3984" y="800" type="branch" />
            <wire x2="4128" y1="800" y2="800" x1="3984" />
        </branch>
        <branch name="SEGCLR">
            <wire x2="4608" y1="480" y2="480" x1="4512" />
        </branch>
        <branch name="SEGEN">
            <wire x2="4608" y1="624" y2="624" x1="4512" />
        </branch>
        <branch name="SEGDT">
            <wire x2="4608" y1="768" y2="768" x1="4512" />
        </branch>
        <branch name="SEGCLK">
            <wire x2="4608" y1="912" y2="912" x1="4512" />
        </branch>
        <branch name="clk_100mhz">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5232" y="2992" type="branch" />
            <wire x2="5376" y1="2992" y2="2992" x1="5232" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5232" y="3056" type="branch" />
            <wire x2="5376" y1="3056" y2="3056" x1="5232" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5232" y="3184" type="branch" />
            <wire x2="5376" y1="3184" y2="3184" x1="5232" />
        </branch>
        <branch name="Div(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5232" y="3120" type="branch" />
            <wire x2="5376" y1="3120" y2="3120" x1="5232" />
        </branch>
        <branch name="LEDCLK">
            <wire x2="5920" y1="2992" y2="2992" x1="5808" />
        </branch>
        <branch name="LEDDT">
            <wire x2="5920" y1="3056" y2="3056" x1="5808" />
        </branch>
        <branch name="LEDCLR">
            <wire x2="5920" y1="3120" y2="3120" x1="5808" />
        </branch>
        <branch name="LEDEN">
            <wire x2="5920" y1="3184" y2="3184" x1="5808" />
        </branch>
        <branch name="SW_OK(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2234" y="1296" type="branch" />
            <wire x2="2480" y1="1296" y2="1296" x1="2160" />
            <wire x2="2480" y1="1296" y2="1424" x1="2480" />
        </branch>
        <bustap x2="2576" y1="1296" y2="1296" x1="2480" />
        <branch name="SW_OK(7:5),SW_OK(15),SW_OK(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="1296" type="branch" />
            <wire x2="2848" y1="1296" y2="1296" x1="2576" />
            <wire x2="3168" y1="1296" y2="1296" x1="2848" />
        </branch>
        <bustap x2="2576" y1="1424" y2="1424" x1="2480" />
        <branch name="SW_OK(7:5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3423" y="1424" type="branch" />
            <wire x2="3968" y1="1424" y2="1424" x1="2576" />
            <wire x2="3968" y1="1424" y2="2016" x1="3968" />
            <wire x2="5376" y1="2016" y2="2016" x1="3968" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5168" y="1952" type="branch" />
            <wire x2="5376" y1="1952" y2="1952" x1="5168" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3984" y="736" type="branch" />
            <wire x2="4128" y1="736" y2="736" x1="3984" />
        </branch>
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4225" y="384" type="branch" />
            <wire x2="4064" y1="384" y2="544" x1="4064" />
            <wire x2="4128" y1="544" y2="544" x1="4064" />
            <wire x2="5888" y1="384" y2="384" x1="4064" />
            <wire x2="5888" y1="384" y2="2656" x1="5888" />
            <wire x2="5888" y1="2656" y2="2656" x1="5824" />
        </branch>
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4512" y="1008" type="branch" />
            <wire x2="4128" y1="608" y2="608" x1="4048" />
            <wire x2="4048" y1="608" y2="1008" x1="4048" />
            <wire x2="4512" y1="1008" y2="1008" x1="4048" />
            <wire x2="5872" y1="1008" y2="1008" x1="4512" />
            <wire x2="5872" y1="1008" y2="1824" x1="5872" />
            <wire x2="5872" y1="1824" y2="1824" x1="5824" />
        </branch>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4840" y="432" type="branch" />
            <wire x2="4112" y1="432" y2="672" x1="4112" />
            <wire x2="4128" y1="672" y2="672" x1="4112" />
            <wire x2="5856" y1="432" y2="432" x1="4112" />
            <wire x2="5856" y1="432" y2="2240" x1="5856" />
            <wire x2="5856" y1="2240" y2="2240" x1="5824" />
        </branch>
        <instance x="5024" y="672" name="XLXI_1" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5216" y="768" type="branch" />
            <wire x2="5088" y1="672" y2="768" x1="5088" />
            <wire x2="5216" y1="768" y2="768" x1="5088" />
        </branch>
        <instance x="5360" y="832" name="XLXI_2" orien="R0" />
        <branch name="G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5264" y="624" type="branch" />
            <wire x2="5424" y1="624" y2="624" x1="5264" />
            <wire x2="5424" y1="624" y2="704" x1="5424" />
        </branch>
        <branch name="Div(31:0),Div(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5168" y="2080" type="branch" />
            <wire x2="5376" y1="2080" y2="2080" x1="5168" />
        </branch>
        <branch name="G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,G0,blink(7:0),blink(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5168" y="2144" type="branch" />
            <wire x2="5376" y1="2144" y2="2144" x1="5168" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="3152" y1="320" y2="320" x1="3040" />
        </branch>
        <branch name="clk_100mhz">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="320" type="branch" />
            <wire x2="2592" y1="320" y2="320" x1="2512" />
        </branch>
        <branch name="G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="384" type="branch" />
            <wire x2="2592" y1="384" y2="384" x1="2512" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="448" type="branch" />
            <wire x2="2592" y1="448" y2="448" x1="2512" />
        </branch>
        <branch name="Div(31:8),Rc_32,Rc_4,Qd,Qc,Qb,Qa,G0,Co">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="512" type="branch" />
            <wire x2="2592" y1="512" y2="512" x1="2512" />
        </branch>
        <branch name="SEGMENT(7:0)">
            <wire x2="1888" y1="656" y2="656" x1="1760" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="1888" y1="336" y2="336" x1="1760" />
        </branch>
        <branch name="SW_OK(1),Div(19:18)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="336" type="branch" />
            <wire x2="1344" y1="336" y2="336" x1="1200" />
        </branch>
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="400" type="branch" />
            <wire x2="1344" y1="400" y2="400" x1="1200" />
        </branch>
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="464" type="branch" />
            <wire x2="1344" y1="464" y2="464" x1="1200" />
        </branch>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="528" type="branch" />
            <wire x2="1344" y1="528" y2="528" x1="1200" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="592" type="branch" />
            <wire x2="1344" y1="592" y2="592" x1="1200" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="656" type="branch" />
            <wire x2="1344" y1="656" y2="656" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1120" name="RSTN" orien="R180" />
        <iomarker fontsize="28" x="1584" y="1184" name="K_COL(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1584" y="1232" name="K_ROW(4:0)" orien="R180" />
        <iomarker fontsize="28" x="1584" y="1280" name="SW(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1424" y="1824" name="clk_100mhz" orien="R180" />
        <iomarker fontsize="28" x="3600" y="1120" name="readn" orien="R0" />
        <iomarker fontsize="28" x="3648" y="976" name="RDY" orien="R0" />
        <iomarker fontsize="28" x="2288" y="1120" name="CR" orien="R0" />
        <iomarker fontsize="28" x="4608" y="480" name="SEGCLR" orien="R0" />
        <iomarker fontsize="28" x="4608" y="624" name="SEGEN" orien="R0" />
        <iomarker fontsize="28" x="4608" y="768" name="SEGDT" orien="R0" />
        <iomarker fontsize="28" x="4608" y="912" name="SEGCLK" orien="R0" />
        <iomarker fontsize="28" x="5920" y="2992" name="LEDCLK" orien="R0" />
        <iomarker fontsize="28" x="5920" y="3056" name="LEDDT" orien="R0" />
        <iomarker fontsize="28" x="5920" y="3120" name="LEDCLR" orien="R0" />
        <iomarker fontsize="28" x="5920" y="3184" name="LEDEN" orien="R0" />
        <iomarker fontsize="28" x="3152" y="320" name="LED(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1888" y="336" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1888" y="656" name="SEGMENT(7:0)" orien="R0" />
        <instance x="2784" y="2704" name="M10" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="SW_OK(4:2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="2672" type="branch" />
            <wire x2="2784" y1="2672" y2="2672" x1="2240" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="3264" y1="2608" y2="2608" x1="3168" />
        </branch>
        <branch name="zero">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3264" y="2544" type="branch" />
            <wire x2="3264" y1="2544" y2="2544" x1="3168" />
        </branch>
        <branch name="Co">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3207" y="2480" type="branch" />
            <wire x2="3424" y1="2480" y2="2480" x1="3168" />
        </branch>
        <instance x="2784" y="3552" name="M12" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2784" y="3072" name="M11" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="Rc_32">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3280" y="2848" type="branch" />
            <wire x2="3280" y1="2848" y2="2848" x1="3168" />
        </branch>
        <branch name="ALUout(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5198" y="2336" type="branch" />
            <wire x2="4272" y1="2672" y2="2672" x1="3168" />
            <wire x2="4272" y1="2672" y2="2960" x1="4272" />
            <wire x2="4400" y1="2960" y2="2960" x1="4272" />
            <wire x2="4272" y1="2336" y2="2672" x1="4272" />
            <wire x2="5376" y1="2336" y2="2336" x1="4272" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5200" y="2656" type="branch" />
            <wire x2="5376" y1="2656" y2="2656" x1="5200" />
        </branch>
        <branch name="Div(26)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="3264" type="branch" />
            <wire x2="2640" y1="3264" y2="3264" x1="2256" />
            <wire x2="2784" y1="3264" y2="3264" x1="2640" />
            <wire x2="2784" y1="2848" y2="2848" x1="2640" />
            <wire x2="2640" y1="2848" y2="3264" x1="2640" />
        </branch>
        <branch name="Div(31:8),Rc_32,Rc_4,Qd,Qc,Qb,Qa,G0,Co">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4187" y="3248" type="branch" />
            <wire x2="3520" y1="2480" y2="3248" x1="3520" />
            <wire x2="3520" y1="3248" y2="3264" x1="3520" />
            <wire x2="3520" y1="3264" y2="3328" x1="3520" />
            <wire x2="3520" y1="3328" y2="3392" x1="3520" />
            <wire x2="3520" y1="3392" y2="3456" x1="3520" />
            <wire x2="3520" y1="3456" y2="3520" x1="3520" />
            <wire x2="5376" y1="3248" y2="3248" x1="3520" />
        </branch>
        <bustap x2="3424" y1="2480" y2="2480" x1="3520" />
        <bustap x2="3424" y1="3264" y2="3264" x1="3520" />
        <bustap x2="3424" y1="3328" y2="3328" x1="3520" />
        <bustap x2="3424" y1="3392" y2="3392" x1="3520" />
        <bustap x2="3424" y1="3456" y2="3456" x1="3520" />
        <bustap x2="3424" y1="3520" y2="3520" x1="3520" />
        <branch name="Qa">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3200" y="3264" type="branch" />
            <wire x2="3200" y1="3264" y2="3264" x1="3168" />
            <wire x2="3424" y1="3264" y2="3264" x1="3200" />
        </branch>
        <branch name="Qb">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3210" y="3328" type="branch" />
            <wire x2="3424" y1="3328" y2="3328" x1="3168" />
        </branch>
        <branch name="Qc">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3205" y="3392" type="branch" />
            <wire x2="3424" y1="3392" y2="3392" x1="3168" />
        </branch>
        <branch name="Rc_4">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3211" y="3520" type="branch" />
            <wire x2="3424" y1="3520" y2="3520" x1="3168" />
        </branch>
        <branch name="Qd">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3202" y="3456" type="branch" />
            <wire x2="3424" y1="3456" y2="3456" x1="3168" />
        </branch>
        <instance x="1872" y="2112" name="MS" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2784" y="4016" name="MTimer" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="clk_1ms">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2711" y="3728" type="branch" />
            <wire x2="2512" y1="2016" y2="2016" x1="2256" />
            <wire x2="2512" y1="2016" y2="3728" x1="2512" />
            <wire x2="2711" y1="3728" y2="3728" x1="2512" />
            <wire x2="2784" y1="3728" y2="3728" x1="2711" />
        </branch>
        <branch name="Alarm">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3312" y="3728" type="branch" />
            <wire x2="3312" y1="3728" y2="3728" x1="3216" />
        </branch>
        <branch name="SW_OK(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="2912" type="branch" />
            <wire x2="2576" y1="2912" y2="2912" x1="2240" />
            <wire x2="2784" y1="2912" y2="2912" x1="2576" />
            <wire x2="2576" y1="2912" y2="3792" x1="2576" />
            <wire x2="2784" y1="3792" y2="3792" x1="2576" />
        </branch>
        <branch name="BTN_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="2976" type="branch" />
            <wire x2="2448" y1="2976" y2="2976" x1="2240" />
            <wire x2="2784" y1="2976" y2="2976" x1="2448" />
            <wire x2="2448" y1="2976" y2="3856" x1="2448" />
            <wire x2="2784" y1="3856" y2="3856" x1="2448" />
        </branch>
        <branch name="BTN_OK(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="3920" type="branch" />
            <wire x2="2784" y1="3920" y2="3920" x1="2272" />
        </branch>
        <branch name="CNT(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5202" y="2400" type="branch" />
            <wire x2="4288" y1="3040" y2="3040" x1="3168" />
            <wire x2="4288" y1="2400" y2="3040" x1="4288" />
            <wire x2="5202" y1="2400" y2="2400" x1="4288" />
            <wire x2="5376" y1="2400" y2="2400" x1="5202" />
        </branch>
        <branch name="Timer(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5215" y="2464" type="branch" />
            <wire x2="4256" y1="3984" y2="3984" x1="3216" />
            <wire x2="4256" y1="2464" y2="3984" x1="4256" />
            <wire x2="5215" y1="2464" y2="2464" x1="4256" />
            <wire x2="5376" y1="2464" y2="2464" x1="5215" />
        </branch>
        <branch name="Bi(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3952" y="1232" type="branch" />
            <wire x2="3952" y1="1232" y2="1232" x1="3488" />
            <wire x2="4416" y1="1232" y2="1232" x1="3952" />
            <wire x2="4416" y1="1232" y2="2272" x1="4416" />
            <wire x2="5376" y1="2272" y2="2272" x1="4416" />
        </branch>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3952" y="1168" type="branch" />
            <wire x2="3952" y1="1168" y2="1168" x1="3488" />
            <wire x2="4432" y1="1168" y2="1168" x1="3952" />
            <wire x2="4432" y1="1168" y2="2208" x1="4432" />
            <wire x2="5376" y1="2208" y2="2208" x1="4432" />
        </branch>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="3040" type="branch" />
            <wire x2="2784" y1="3040" y2="3040" x1="2256" />
        </branch>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="3984" type="branch" />
            <wire x2="2784" y1="3984" y2="3984" x1="2256" />
        </branch>
        <instance x="1744" y="2640" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_89(31:0)">
            <wire x2="2784" y1="2480" y2="2480" x1="2128" />
        </branch>
        <branch name="Bi(13)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="2480" type="branch" />
            <wire x2="1744" y1="2480" y2="2480" x1="1632" />
        </branch>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="2544" type="branch" />
            <wire x2="1744" y1="2544" y2="2544" x1="1632" />
        </branch>
        <instance x="4400" y="2992" name="XLXI_6" orien="R0">
        </instance>
        <branch name="QA(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4808" y="2576" type="branch" />
            <wire x2="4808" y1="2576" y2="2576" x1="4784" />
            <wire x2="5072" y1="2576" y2="2576" x1="4808" />
            <wire x2="5072" y1="2528" y2="2576" x1="5072" />
            <wire x2="5376" y1="2528" y2="2528" x1="5072" />
        </branch>
        <branch name="QB(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4859" y="2960" type="branch" />
            <wire x2="4859" y1="2960" y2="2960" x1="4784" />
            <wire x2="5072" y1="2960" y2="2960" x1="4859" />
            <wire x2="5072" y1="2592" y2="2960" x1="5072" />
            <wire x2="5376" y1="2592" y2="2592" x1="5072" />
        </branch>
        <branch name="BTN_OK(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4160" y="2576" type="branch" />
            <wire x2="4400" y1="2576" y2="2576" x1="4160" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4160" y="2640" type="branch" />
            <wire x2="4400" y1="2640" y2="2640" x1="4160" />
        </branch>
        <branch name="Bi(12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4160" y="2704" type="branch" />
            <wire x2="4400" y1="2704" y2="2704" x1="4160" />
        </branch>
        <branch name="Bi(10:8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4160" y="2768" type="branch" />
            <wire x2="4400" y1="2768" y2="2768" x1="4160" />
        </branch>
        <branch name="Bi(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4176" y="2832" type="branch" />
            <wire x2="4400" y1="2832" y2="2832" x1="4176" />
        </branch>
        <branch name="Bi(6:4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4160" y="2896" type="branch" />
            <wire x2="4400" y1="2896" y2="2896" x1="4160" />
        </branch>
        <branch name="QA(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="2608" type="branch" />
            <wire x2="1744" y1="2608" y2="2608" x1="1632" />
        </branch>
        <branch name="QB(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="2576" type="branch" />
            <wire x2="2784" y1="2576" y2="2576" x1="2240" />
        </branch>
    </sheet>
</drawing>