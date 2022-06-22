<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="G0" />
        <signal name="V5" />
        <signal name="Buzzer" />
        <signal name="XLXN_4" />
        <signal name="clk_100mhz" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="RSTN" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <signal name="XLXN_14" />
        <signal name="Div(31:0)" />
        <signal name="Div(20)" />
        <signal name="Div(25)" />
        <signal name="SW(15:0)" />
        <signal name="SW(7:0)" />
        <signal name="SW(15:8)" />
        <signal name="G0,V5,V5,V5,G0,V5,V5,G0,G0,V5,G0,V5,G0,V5,G0,G0,G0,G0,V5,V5,G0,G0,V5,G0,G0,G0,G0,V5,G0,G0,G0,G0" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Input" name="clk_100mhz" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <port polarity="Input" name="SW(15:0)" />
        <blockdef name="Hex827Seg_sch">
            <timestamp>2020-10-27T7:4:34</timestamp>
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
        <blockdef name="clkdiv">
            <timestamp>2019-10-16T16:0:0</timestamp>
            <rect width="192" x="32" y="-120" height="120" />
            <line x2="0" y1="-96" y2="-96" x1="32" />
            <line x2="0" y1="-32" y2="-32" x1="32" />
            <line x2="256" y1="-96" y2="-96" style="linewidth:W" x1="224" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="Hex827Seg_sch" name="XLXI_1">
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="G0,V5,V5,V5,G0,V5,V5,G0,G0,V5,G0,V5,G0,V5,G0,G0,G0,G0,V5,V5,G0,G0,V5,G0,G0,G0,G0,V5,G0,G0,G0,G0" name="Hexs(31:0)" />
            <blockpin signalname="SW(7:0)" name="point(7:0)" />
            <blockpin signalname="SW(15:8)" name="LES(7:0)" />
            <blockpin signalname="Div(20)" name="Start" />
            <blockpin signalname="XLXN_7" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin name="SW0" />
            <blockpin signalname="seg_clk" name="seg_clk" />
            <blockpin signalname="seg_sout" name="seg_sout" />
            <blockpin signalname="SEG_PEN" name="SEG_PEN" />
            <blockpin signalname="seg_clrn" name="seg_clrn" />
        </block>
        <block symbolname="clkdiv" name="XLXI_2">
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_7" name="rst" />
        </block>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="G0" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="V5" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="RSTN" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2064" y="1408" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1168" y="1184" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2128" y="1744" name="XLXI_3" orien="R0" />
        <branch name="G0">
            <wire x2="2384" y1="1568" y2="1568" x1="2192" />
            <wire x2="2192" y1="1568" y2="1616" x1="2192" />
        </branch>
        <instance x="944" y="1616" name="XLXI_4" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1150" y="1696" type="branch" />
            <wire x2="1008" y1="1616" y2="1696" x1="1008" />
            <wire x2="1150" y1="1696" y2="1696" x1="1008" />
            <wire x2="1184" y1="1696" y2="1696" x1="1150" />
        </branch>
        <instance x="1184" y="1728" name="XLXI_5" orien="R0" />
        <branch name="Buzzer">
            <wire x2="1520" y1="1696" y2="1696" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1696" name="Buzzer" orien="R0" />
        <branch name="clk_100mhz">
            <wire x2="848" y1="1312" y2="1312" x1="656" />
            <wire x2="2064" y1="1312" y2="1312" x1="848" />
            <wire x2="1168" y1="1088" y2="1088" x1="848" />
            <wire x2="848" y1="1088" y2="1312" x1="848" />
        </branch>
        <iomarker fontsize="28" x="656" y="1312" name="clk_100mhz" orien="R180" />
        <instance x="544" y="1184" name="XLXI_6" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1040" y1="1152" y2="1152" x1="768" />
            <wire x2="1168" y1="1152" y2="1152" x1="1040" />
            <wire x2="1040" y1="1152" y2="1248" x1="1040" />
            <wire x2="2064" y1="1248" y2="1248" x1="1040" />
        </branch>
        <branch name="RSTN">
            <wire x2="544" y1="1152" y2="1152" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="1152" name="RSTN" orien="R180" />
        <branch name="seg_clk">
            <wire x2="2592" y1="928" y2="928" x1="2448" />
        </branch>
        <branch name="seg_sout">
            <wire x2="2592" y1="1072" y2="1072" x1="2448" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="2592" y1="1216" y2="1216" x1="2448" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="2592" y1="1360" y2="1360" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2592" y="928" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="2592" y="1072" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="2592" y="1216" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="2592" y="1360" name="seg_clrn" orien="R0" />
        <branch name="Div(31:0)">
            <wire x2="1456" y1="1088" y2="1088" x1="1424" />
            <wire x2="1456" y1="1088" y2="1168" x1="1456" />
            <wire x2="1504" y1="1168" y2="1168" x1="1456" />
            <wire x2="1504" y1="1168" y2="1184" x1="1504" />
            <wire x2="1504" y1="1184" y2="1216" x1="1504" />
            <wire x2="1504" y1="1104" y2="1136" x1="1504" />
            <wire x2="1504" y1="1136" y2="1168" x1="1504" />
        </branch>
        <bustap x2="1600" y1="1184" y2="1184" x1="1504" />
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1832" y="1184" type="branch" />
            <wire x2="1832" y1="1184" y2="1184" x1="1600" />
            <wire x2="2064" y1="1184" y2="1184" x1="1832" />
        </branch>
        <bustap x2="1600" y1="1136" y2="1136" x1="1504" />
        <branch name="Div(25)">
            <wire x2="1824" y1="1136" y2="1136" x1="1600" />
            <wire x2="1824" y1="928" y2="1136" x1="1824" />
            <wire x2="2064" y1="928" y2="928" x1="1824" />
        </branch>
        <branch name="SW(15:0)">
            <wire x2="848" y1="944" y2="944" x1="608" />
            <wire x2="848" y1="944" y2="992" x1="848" />
            <wire x2="848" y1="992" y2="1024" x1="848" />
            <wire x2="848" y1="864" y2="896" x1="848" />
            <wire x2="848" y1="896" y2="944" x1="848" />
        </branch>
        <iomarker fontsize="28" x="608" y="944" name="SW(15:0)" orien="R180" />
        <bustap x2="944" y1="896" y2="896" x1="848" />
        <bustap x2="944" y1="992" y2="992" x1="848" />
        <branch name="SW(7:0)">
            <wire x2="1504" y1="896" y2="896" x1="944" />
            <wire x2="1504" y1="896" y2="1056" x1="1504" />
            <wire x2="2064" y1="1056" y2="1056" x1="1504" />
        </branch>
        <branch name="SW(15:8)">
            <wire x2="1680" y1="992" y2="992" x1="944" />
            <wire x2="1680" y1="992" y2="1120" x1="1680" />
            <wire x2="2064" y1="1120" y2="1120" x1="1680" />
        </branch>
        <branch name="G0,V5,V5,V5,G0,V5,V5,G0,G0,V5,G0,V5,G0,V5,G0,G0,G0,G0,V5,V5,G0,G0,V5,G0,G0,G0,G0,V5,G0,G0,G0,G0">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="720" type="branch" />
            <wire x2="1920" y1="720" y2="992" x1="1920" />
            <wire x2="2064" y1="992" y2="992" x1="1920" />
        </branch>
    </sheet>
</drawing>