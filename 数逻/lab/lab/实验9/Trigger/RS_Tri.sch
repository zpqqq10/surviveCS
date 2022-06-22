<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="R" />
        <signal name="S" />
        <signal name="Y" />
        <signal name="Yn" />
        <signal name="XLXN_6" />
        <signal name="Qn" />
        <signal name="Q" />
        <signal name="C" />
        <signal name="XLXN_10" />
        <port polarity="Input" name="R" />
        <port polarity="Input" name="S" />
        <port polarity="Output" name="Y" />
        <port polarity="Output" name="Qn" />
        <port polarity="Output" name="Q" />
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
        <block symbolname="RS_EN" name="RS3">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="R" name="R" />
            <blockpin signalname="S" name="S" />
            <blockpin signalname="Y" name="Q" />
            <blockpin signalname="Yn" name="Qn" />
        </block>
        <block symbolname="RS_EN" name="RS4">
            <blockpin signalname="XLXN_10" name="C" />
            <blockpin signalname="Yn" name="R" />
            <blockpin signalname="Y" name="S" />
            <blockpin signalname="Q" name="Q" />
            <blockpin signalname="Qn" name="Qn" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="1552" name="RS3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="1744" y="1552" name="RS4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="R">
            <wire x2="928" y1="1456" y2="1456" x1="624" />
        </branch>
        <branch name="S">
            <wire x2="928" y1="1520" y2="1520" x1="624" />
        </branch>
        <branch name="Y">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1355" y="1392" type="branch" />
            <wire x2="1355" y1="1392" y2="1392" x1="1312" />
            <wire x2="1520" y1="1392" y2="1392" x1="1355" />
            <wire x2="1520" y1="1392" y2="1520" x1="1520" />
            <wire x2="1744" y1="1520" y2="1520" x1="1520" />
            <wire x2="1520" y1="1520" y2="1744" x1="1520" />
            <wire x2="2352" y1="1744" y2="1744" x1="1520" />
        </branch>
        <branch name="Yn">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1334" y="1520" type="branch" />
            <wire x2="1334" y1="1520" y2="1520" x1="1312" />
            <wire x2="1504" y1="1520" y2="1520" x1="1334" />
            <wire x2="1504" y1="1456" y2="1520" x1="1504" />
            <wire x2="1744" y1="1456" y2="1456" x1="1504" />
        </branch>
        <branch name="Qn">
            <wire x2="2352" y1="1520" y2="1520" x1="2128" />
        </branch>
        <branch name="Q">
            <wire x2="2352" y1="1392" y2="1392" x1="2128" />
        </branch>
        <instance x="1008" y="1744" name="XLXI_3" orien="R0" />
        <branch name="C">
            <wire x2="800" y1="1392" y2="1392" x1="624" />
            <wire x2="928" y1="1392" y2="1392" x1="800" />
            <wire x2="800" y1="1392" y2="1712" x1="800" />
            <wire x2="1008" y1="1712" y2="1712" x1="800" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1536" y1="1712" y2="1712" x1="1232" />
            <wire x2="1536" y1="1392" y2="1712" x1="1536" />
            <wire x2="1744" y1="1392" y2="1392" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="624" y="1392" name="C" orien="R180" />
        <iomarker fontsize="28" x="624" y="1456" name="R" orien="R180" />
        <iomarker fontsize="28" x="624" y="1520" name="S" orien="R180" />
        <iomarker fontsize="28" x="2352" y="1392" name="Q" orien="R0" />
        <iomarker fontsize="28" x="2352" y="1520" name="Qn" orien="R0" />
        <iomarker fontsize="28" x="2352" y="1744" name="Y" orien="R0" />
    </sheet>
</drawing>