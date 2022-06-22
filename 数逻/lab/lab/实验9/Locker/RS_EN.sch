<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="Q" />
        <signal name="Qn" />
        <signal name="C" />
        <signal name="XLXN_6" />
        <signal name="R" />
        <signal name="S" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qn" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="R" />
        <port polarity="Input" name="S" />
        <blockdef name="RS_NAND">
            <timestamp>2020-11-21T6:40:29</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="RS_NAND" name="XLXI_1">
            <blockpin signalname="XLXN_1" name="Sn" />
            <blockpin signalname="XLXN_2" name="Rn" />
            <blockpin signalname="Q" name="Q" />
            <blockpin signalname="Qn" name="Qn" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="R" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="S" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1408" y="1520" name="XLXI_1" orien="R0">
        </instance>
        <instance x="720" y="1664" name="XLXI_3" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1184" y1="1344" y2="1344" x1="976" />
            <wire x2="1184" y1="1344" y2="1424" x1="1184" />
            <wire x2="1408" y1="1424" y2="1424" x1="1184" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1184" y1="1568" y2="1568" x1="976" />
            <wire x2="1184" y1="1488" y2="1568" x1="1184" />
            <wire x2="1408" y1="1488" y2="1488" x1="1184" />
        </branch>
        <branch name="Q">
            <wire x2="2096" y1="1424" y2="1424" x1="1792" />
        </branch>
        <branch name="Qn">
            <wire x2="2096" y1="1488" y2="1488" x1="1792" />
        </branch>
        <branch name="R">
            <wire x2="720" y1="1600" y2="1600" x1="416" />
        </branch>
        <instance x="720" y="1440" name="XLXI_2" orien="R0" />
        <branch name="S">
            <wire x2="720" y1="1312" y2="1312" x1="416" />
        </branch>
        <branch name="C">
            <wire x2="624" y1="1456" y2="1456" x1="416" />
            <wire x2="624" y1="1456" y2="1536" x1="624" />
            <wire x2="720" y1="1536" y2="1536" x1="624" />
            <wire x2="720" y1="1376" y2="1376" x1="624" />
            <wire x2="624" y1="1376" y2="1456" x1="624" />
        </branch>
        <iomarker fontsize="28" x="416" y="1312" name="S" orien="R180" />
        <iomarker fontsize="28" x="416" y="1456" name="C" orien="R180" />
        <iomarker fontsize="28" x="416" y="1600" name="R" orien="R180" />
        <iomarker fontsize="28" x="2096" y="1424" name="Q" orien="R0" />
        <iomarker fontsize="28" x="2096" y="1488" name="Qn" orien="R0" />
    </sheet>
</drawing>