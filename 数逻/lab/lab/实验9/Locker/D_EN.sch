<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q" />
        <signal name="Qn" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="D" />
        <signal name="C" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qn" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="C" />
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
        <block symbolname="RS_EN" name="XLXI_1">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_3" name="R" />
            <blockpin signalname="D" name="S" />
            <blockpin signalname="Q" name="Q" />
            <blockpin signalname="Qn" name="Qn" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1760" y="1632" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1264" y="1568" name="XLXI_2" orien="R0" />
        <branch name="Q">
            <wire x2="2368" y1="1472" y2="1472" x1="2144" />
        </branch>
        <branch name="Qn">
            <wire x2="2368" y1="1600" y2="1600" x1="2144" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1760" y1="1536" y2="1536" x1="1488" />
        </branch>
        <branch name="D">
            <wire x2="1168" y1="1600" y2="1600" x1="1024" />
            <wire x2="1264" y1="1600" y2="1600" x1="1168" />
            <wire x2="1760" y1="1600" y2="1600" x1="1264" />
            <wire x2="1264" y1="1536" y2="1536" x1="1168" />
            <wire x2="1168" y1="1536" y2="1600" x1="1168" />
        </branch>
        <branch name="C">
            <wire x2="1760" y1="1472" y2="1472" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="1472" name="C" orien="R180" />
        <iomarker fontsize="28" x="1024" y="1600" name="D" orien="R180" />
        <iomarker fontsize="28" x="2368" y="1472" name="Q" orien="R0" />
        <iomarker fontsize="28" x="2368" y="1600" name="Qn" orien="R0" />
    </sheet>
</drawing>