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
        <signal name="XLXN_5(63:0)" />
        <signal name="XLXN_6(63:0)" />
        <signal name="Start" />
        <signal name="rst" />
        <signal name="clk" />
        <signal name="SW0" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <port polarity="Input" name="flash" />
        <port polarity="Input" name="Hexs(31:0)" />
        <port polarity="Input" name="point(7:0)" />
        <port polarity="Input" name="LES(7:0)" />
        <port polarity="Input" name="Start" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="SW0" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
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
        <blockdef name="P2S">
            <timestamp>2019-10-16T16:0:0</timestamp>
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
        <block symbolname="Hex827Seg" name="SM1">
            <blockpin signalname="flash" name="flash" />
            <blockpin signalname="Hexs(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="point(7:0)" name="points(7:0)" />
            <blockpin signalname="LES(7:0)" name="LES(7:0)" />
            <blockpin signalname="XLXN_5(63:0)" name="SEG_TXT(63:0)" />
        </block>
        <block symbolname="P2S" name="M2">
            <blockpin signalname="seg_clrn" name="s_clrn" />
            <blockpin signalname="seg_sout" name="sout" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SEG_PEN" name="EN" />
            <blockpin signalname="Start" name="Serial" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="seg_clk" name="s_clk" />
            <blockpin signalname="XLXN_5(63:0)" name="P_Data(63:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1008" y="1632" name="SM1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="flash">
            <wire x2="1008" y1="1408" y2="1408" x1="800" />
        </branch>
        <branch name="Hexs(31:0)">
            <wire x2="1008" y1="1472" y2="1472" x1="800" />
        </branch>
        <branch name="point(7:0)">
            <wire x2="1008" y1="1536" y2="1536" x1="800" />
        </branch>
        <branch name="LES(7:0)">
            <wire x2="1008" y1="1600" y2="1600" x1="800" />
        </branch>
        <branch name="XLXN_5(63:0)">
            <wire x2="1456" y1="1408" y2="1408" x1="1440" />
            <wire x2="1760" y1="1280" y2="1280" x1="1456" />
            <wire x2="1456" y1="1280" y2="1408" x1="1456" />
        </branch>
        <instance x="1760" y="1312" name="M2" orien="R0">
        </instance>
        <branch name="Start">
            <wire x2="1760" y1="1232" y2="1232" x1="800" />
        </branch>
        <branch name="rst">
            <wire x2="1760" y1="1184" y2="1184" x1="800" />
        </branch>
        <branch name="clk">
            <wire x2="1760" y1="1136" y2="1136" x1="800" />
        </branch>
        <branch name="SW0">
            <wire x2="960" y1="1040" y2="1040" x1="800" />
        </branch>
        <branch name="seg_clk">
            <wire x2="2080" y1="1136" y2="1136" x1="2000" />
        </branch>
        <branch name="seg_sout">
            <wire x2="2080" y1="1184" y2="1184" x1="2000" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="2080" y1="1232" y2="1232" x1="2000" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="2080" y1="1280" y2="1280" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2080" y="1136" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="2080" y="1184" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="2080" y="1232" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="2080" y="1280" name="seg_clrn" orien="R0" />
        <iomarker fontsize="28" x="800" y="1040" name="SW0" orien="R180" />
        <iomarker fontsize="28" x="800" y="1136" name="clk" orien="R180" />
        <iomarker fontsize="28" x="800" y="1184" name="rst" orien="R180" />
        <iomarker fontsize="28" x="800" y="1232" name="Start" orien="R180" />
        <iomarker fontsize="28" x="800" y="1408" name="flash" orien="R180" />
        <iomarker fontsize="28" x="800" y="1472" name="Hexs(31:0)" orien="R180" />
        <iomarker fontsize="28" x="800" y="1536" name="point(7:0)" orien="R180" />
        <iomarker fontsize="28" x="800" y="1600" name="LES(7:0)" orien="R180" />
    </sheet>
</drawing>