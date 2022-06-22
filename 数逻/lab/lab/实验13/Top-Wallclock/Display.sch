<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="flash" />
        <signal name="Hexs(31:0)" />
        <signal name="point(7:0)" />
        <signal name="LES(7:0)" />
        <signal name="Hexs(31:0),Hexs(31:0)" />
        <signal name="XLXN_7(63:0)" />
        <signal name="XLXN_9(63:0)" />
        <signal name="seg_clrn" />
        <signal name="SEG_PEN" />
        <signal name="seg_sout" />
        <signal name="seg_clk" />
        <signal name="SW0" />
        <signal name="XLXN_15(63:0)" />
        <signal name="Start" />
        <signal name="rst" />
        <signal name="clk" />
        <port polarity="Input" name="flash" />
        <port polarity="Input" name="Hexs(31:0)" />
        <port polarity="Input" name="point(7:0)" />
        <port polarity="Input" name="LES(7:0)" />
        <port polarity="Output" name="seg_clrn" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Input" name="SW0" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="clk" />
        <blockdef name="Hex827Seg">
            <timestamp>2020-10-27T6:55:6</timestamp>
            <rect width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
        </blockdef>
        <blockdef name="SSeg_map">
            <timestamp>2020-11-11T1:13:30</timestamp>
            <rect width="336" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="MUX2T1_64">
            <timestamp>2020-11-11T1:15:48</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="P2S">
            <timestamp>2019-10-21T16:0:0</timestamp>
            <rect width="208" x="16" y="-212" height="212" />
            <line x2="224" y1="-32" y2="-32" x1="240" />
            <line x2="224" y1="-128" y2="-128" x1="240" />
            <line x2="0" y1="-128" y2="-128" x1="16" />
            <line x2="0" y1="-80" y2="-80" x1="16" />
            <line x2="224" y1="-80" y2="-80" x1="240" />
            <line x2="0" y1="-176" y2="-176" x1="16" />
            <line x2="224" y1="-176" y2="-176" x1="240" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="16" />
        </blockdef>
        <block symbolname="Hex827Seg" name="XLXI_1">
            <blockpin signalname="flash" name="flash" />
            <blockpin signalname="Hexs(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="point(7:0)" name="points(7:0)" />
            <blockpin signalname="LES(7:0)" name="LES(7:0)" />
            <blockpin signalname="XLXN_15(63:0)" name="SEG_TXT(63:0)" />
        </block>
        <block symbolname="SSeg_map" name="XLXI_2">
            <blockpin signalname="Hexs(31:0),Hexs(31:0)" name="Disp_num(63:0)" />
            <blockpin signalname="XLXN_7(63:0)" name="Seg_map(63:0)" />
        </block>
        <block symbolname="MUX2T1_64" name="XLXI_3">
            <blockpin signalname="SW0" name="sel" />
            <blockpin signalname="XLXN_15(63:0)" name="a(63:0)" />
            <blockpin signalname="XLXN_7(63:0)" name="b(63:0)" />
            <blockpin signalname="XLXN_9(63:0)" name="o(63:0)" />
        </block>
        <block symbolname="P2S" name="XLXI_4">
            <blockpin signalname="seg_clrn" name="s_clrn" />
            <blockpin signalname="seg_sout" name="sout" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SEG_PEN" name="EN" />
            <blockpin signalname="Start" name="Serial" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="seg_clk" name="s_clk" />
            <blockpin signalname="XLXN_9(63:0)" name="P_Data(63:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="896" y="1808" name="XLXI_1" orien="R0">
        </instance>
        <instance x="880" y="1984" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1808" y="1840" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2480" y="1344" name="XLXI_4" orien="R0">
        </instance>
        <branch name="flash">
            <wire x2="880" y1="1584" y2="1584" x1="608" />
            <wire x2="896" y1="1584" y2="1584" x1="880" />
        </branch>
        <branch name="Hexs(31:0)">
            <wire x2="896" y1="1648" y2="1648" x1="608" />
        </branch>
        <branch name="point(7:0)">
            <wire x2="896" y1="1712" y2="1712" x1="608" />
        </branch>
        <branch name="LES(7:0)">
            <wire x2="896" y1="1776" y2="1776" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="1584" name="flash" orien="R180" />
        <iomarker fontsize="28" x="608" y="1648" name="Hexs(31:0)" orien="R180" />
        <iomarker fontsize="28" x="608" y="1712" name="point(7:0)" orien="R180" />
        <iomarker fontsize="28" x="608" y="1776" name="LES(7:0)" orien="R180" />
        <branch name="Hexs(31:0),Hexs(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1952" type="branch" />
            <wire x2="880" y1="1952" y2="1952" x1="608" />
        </branch>
        <branch name="XLXN_7(63:0)">
            <wire x2="1568" y1="1952" y2="1952" x1="1344" />
            <wire x2="1568" y1="1808" y2="1952" x1="1568" />
            <wire x2="1808" y1="1808" y2="1808" x1="1568" />
        </branch>
        <branch name="XLXN_9(63:0)">
            <wire x2="2336" y1="1680" y2="1680" x1="2192" />
            <wire x2="2336" y1="1312" y2="1680" x1="2336" />
            <wire x2="2480" y1="1312" y2="1312" x1="2336" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="2848" y1="1312" y2="1312" x1="2720" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="2848" y1="1264" y2="1264" x1="2720" />
        </branch>
        <branch name="seg_sout">
            <wire x2="2848" y1="1216" y2="1216" x1="2720" />
        </branch>
        <branch name="seg_clk">
            <wire x2="2848" y1="1168" y2="1168" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2848" y="1168" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="2848" y="1216" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="2848" y="1264" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="2848" y="1312" name="seg_clrn" orien="R0" />
        <branch name="SW0">
            <wire x2="1680" y1="1440" y2="1440" x1="1600" />
            <wire x2="1680" y1="1440" y2="1680" x1="1680" />
            <wire x2="1808" y1="1680" y2="1680" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1600" y="1440" name="SW0" orien="R180" />
        <branch name="XLXN_15(63:0)">
            <wire x2="1568" y1="1584" y2="1584" x1="1328" />
            <wire x2="1568" y1="1584" y2="1744" x1="1568" />
            <wire x2="1808" y1="1744" y2="1744" x1="1568" />
        </branch>
        <branch name="Start">
            <wire x2="2480" y1="1264" y2="1264" x1="2240" />
        </branch>
        <branch name="rst">
            <wire x2="2480" y1="1216" y2="1216" x1="2240" />
        </branch>
        <branch name="clk">
            <wire x2="2480" y1="1168" y2="1168" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1168" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2240" y="1216" name="rst" orien="R180" />
        <iomarker fontsize="28" x="2240" y="1264" name="Start" orien="R180" />
    </sheet>
</drawing>