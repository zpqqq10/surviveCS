<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Y" />
        <signal name="Yn" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="C" />
        <signal name="D" />
        <signal name="Q" />
        <signal name="Qn" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qn" />
        <blockdef name="D_EN">
            <timestamp>2020-11-21T7:17:4</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="RS_EN">
            <timestamp>2020-11-21T7:2:24</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="D_EN" name="D1">
            <blockpin signalname="D" name="D" />
            <blockpin signalname="C" name="C" />
            <blockpin signalname="Y" name="Q" />
            <blockpin signalname="Yn" name="Qn" />
        </block>
        <block symbolname="RS_EN" name="RS4">
            <blockpin signalname="XLXN_3" name="C" />
            <blockpin signalname="Yn" name="R" />
            <blockpin signalname="Y" name="S" />
            <blockpin signalname="Q" name="Q" />
            <blockpin signalname="Qn" name="Qn" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1088" y="1648" name="D1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="1840" y="1680" name="RS4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="Y">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1493" y="1552" type="branch" />
            <wire x2="1493" y1="1552" y2="1552" x1="1472" />
            <wire x2="1648" y1="1552" y2="1552" x1="1493" />
            <wire x2="1648" y1="1552" y2="1648" x1="1648" />
            <wire x2="1840" y1="1648" y2="1648" x1="1648" />
        </branch>
        <branch name="Yn">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1500" y="1616" type="branch" />
            <wire x2="1500" y1="1616" y2="1616" x1="1472" />
            <wire x2="1632" y1="1616" y2="1616" x1="1500" />
            <wire x2="1632" y1="1584" y2="1616" x1="1632" />
            <wire x2="1840" y1="1584" y2="1584" x1="1632" />
        </branch>
        <instance x="1152" y="1840" name="XLXI_3" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1600" y1="1808" y2="1808" x1="1376" />
            <wire x2="1600" y1="1520" y2="1808" x1="1600" />
            <wire x2="1840" y1="1520" y2="1520" x1="1600" />
        </branch>
        <branch name="C">
            <wire x2="896" y1="1616" y2="1616" x1="752" />
            <wire x2="1088" y1="1616" y2="1616" x1="896" />
            <wire x2="896" y1="1616" y2="1808" x1="896" />
            <wire x2="1152" y1="1808" y2="1808" x1="896" />
        </branch>
        <branch name="D">
            <wire x2="1088" y1="1552" y2="1552" x1="752" />
        </branch>
        <branch name="Q">
            <wire x2="2416" y1="1520" y2="1520" x1="2224" />
        </branch>
        <branch name="Qn">
            <wire x2="2416" y1="1648" y2="1648" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="752" y="1552" name="D" orien="R180" />
        <iomarker fontsize="28" x="752" y="1616" name="C" orien="R180" />
        <iomarker fontsize="28" x="2416" y="1520" name="Q" orien="R0" />
        <iomarker fontsize="28" x="2416" y="1648" name="Qn" orien="R0" />
    </sheet>
</drawing>