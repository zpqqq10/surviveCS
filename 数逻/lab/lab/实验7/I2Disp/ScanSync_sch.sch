<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Hexs(15:0)" />
        <signal name="Hexs(15:12)" />
        <signal name="Hexs(11:8)" />
        <signal name="Hexs(7:4)" />
        <signal name="Hexs(3:0)" />
        <signal name="point(3:0)" />
        <signal name="LES(3:0)" />
        <signal name="Scan(1:0)" />
        <signal name="XLXN_9(1:0)" />
        <signal name="Hex(3:0)" />
        <signal name="V5" />
        <signal name="G0" />
        <signal name="o(3:0)" />
        <signal name="o(3)" />
        <signal name="o(2)" />
        <signal name="LE" />
        <signal name="p" />
        <signal name="LES(0),point(0),G0,G0" />
        <signal name="LES(1),point(1),G0,G0" />
        <signal name="LES(2),point(2),G0,G0" />
        <signal name="LES(3),point(3),G0,G0" />
        <signal name="AN(3:0)" />
        <signal name="V5,V5,V5,G0" />
        <signal name="V5,V5,G0,V5" />
        <signal name="V5,G0,V5,V5" />
        <signal name="G0,V5,V5,V5" />
        <port polarity="Input" name="Hexs(15:0)" />
        <port polarity="Input" name="point(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Input" name="Scan(1:0)" />
        <port polarity="Output" name="Hex(3:0)" />
        <port polarity="Output" name="LE" />
        <port polarity="Output" name="p" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="MUX4T1_4">
            <timestamp>2020-11-3T1:52:39</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
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
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="MUX4T1_4" name="MUX1">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="V5,V5,V5,G0" name="I0(3:0)" />
            <blockpin signalname="V5,V5,G0,V5" name="I1(3:0)" />
            <blockpin signalname="V5,G0,V5,V5" name="I2(3:0)" />
            <blockpin signalname="G0,V5,V5,V5" name="I3(3:0)" />
            <blockpin signalname="AN(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="MUX4T1_4" name="MUX2">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="Hexs(3:0)" name="I0(3:0)" />
            <blockpin signalname="Hexs(7:4)" name="I1(3:0)" />
            <blockpin signalname="Hexs(11:8)" name="I2(3:0)" />
            <blockpin signalname="Hexs(15:12)" name="I3(3:0)" />
            <blockpin signalname="Hex(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="MUX4T1_4" name="MUX3">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="LES(0),point(0),G0,G0" name="I0(3:0)" />
            <blockpin signalname="LES(1),point(1),G0,G0" name="I1(3:0)" />
            <blockpin signalname="LES(2),point(2),G0,G0" name="I2(3:0)" />
            <blockpin signalname="LES(3),point(3),G0,G0" name="I3(3:0)" />
            <blockpin signalname="o(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="G0" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="o(3)" name="I" />
            <blockpin signalname="LE" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="o(2)" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="880" y="752" name="MUX2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="880" y="1376" name="MUX3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="Hexs(15:0)">
            <wire x2="480" y1="624" y2="624" x1="368" />
            <wire x2="480" y1="624" y2="656" x1="480" />
            <wire x2="480" y1="656" y2="720" x1="480" />
            <wire x2="480" y1="528" y2="592" x1="480" />
            <wire x2="480" y1="592" y2="624" x1="480" />
        </branch>
        <iomarker fontsize="28" x="368" y="624" name="Hexs(15:0)" orien="R180" />
        <bustap x2="576" y1="720" y2="720" x1="480" />
        <branch name="Hexs(15:12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="728" y="720" type="branch" />
            <wire x2="728" y1="720" y2="720" x1="576" />
            <wire x2="880" y1="720" y2="720" x1="728" />
        </branch>
        <bustap x2="576" y1="656" y2="656" x1="480" />
        <branch name="Hexs(11:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="728" y="656" type="branch" />
            <wire x2="728" y1="656" y2="656" x1="576" />
            <wire x2="880" y1="656" y2="656" x1="728" />
        </branch>
        <bustap x2="576" y1="592" y2="592" x1="480" />
        <branch name="Hexs(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="728" y="592" type="branch" />
            <wire x2="728" y1="592" y2="592" x1="576" />
            <wire x2="880" y1="592" y2="592" x1="728" />
        </branch>
        <bustap x2="576" y1="528" y2="528" x1="480" />
        <branch name="Hexs(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="728" y="528" type="branch" />
            <wire x2="728" y1="528" y2="528" x1="576" />
            <wire x2="880" y1="528" y2="528" x1="728" />
        </branch>
        <branch name="point(3:0)">
            <wire x2="560" y1="800" y2="800" x1="368" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="560" y1="880" y2="880" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="800" name="point(3:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="880" name="LES(3:0)" orien="R180" />
        <branch name="Scan(1:0)">
            <wire x2="832" y1="240" y2="240" x1="560" />
            <wire x2="832" y1="240" y2="464" x1="832" />
            <wire x2="832" y1="464" y2="1088" x1="832" />
            <wire x2="832" y1="1088" y2="1568" x1="832" />
            <wire x2="880" y1="1568" y2="1568" x1="832" />
            <wire x2="880" y1="1088" y2="1088" x1="832" />
            <wire x2="880" y1="464" y2="464" x1="832" />
        </branch>
        <iomarker fontsize="28" x="560" y="240" name="Scan(1:0)" orien="R180" />
        <instance x="880" y="1856" name="MUX1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="Hex(3:0)">
            <wire x2="1520" y1="464" y2="464" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1520" y="464" name="Hex(3:0)" orien="R0" />
        <instance x="1696" y="224" name="XLXI_4" orien="R0" />
        <instance x="1936" y="336" name="XLXI_5" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="320" type="branch" />
            <wire x2="1760" y1="224" y2="320" x1="1760" />
            <wire x2="1840" y1="320" y2="320" x1="1760" />
        </branch>
        <branch name="G0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="160" type="branch" />
            <wire x2="2160" y1="160" y2="160" x1="2000" />
            <wire x2="2000" y1="160" y2="208" x1="2000" />
        </branch>
        <branch name="o(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1088" type="branch" />
            <wire x2="1360" y1="1088" y2="1088" x1="1264" />
            <wire x2="1600" y1="1088" y2="1088" x1="1360" />
            <wire x2="1600" y1="1088" y2="1120" x1="1600" />
            <wire x2="1600" y1="1040" y2="1088" x1="1600" />
        </branch>
        <bustap x2="1696" y1="1040" y2="1040" x1="1600" />
        <bustap x2="1696" y1="1120" y2="1120" x1="1600" />
        <instance x="1840" y="1072" name="XLXI_6" orien="R0" />
        <instance x="1840" y="1152" name="XLXI_7" orien="R0" />
        <branch name="o(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1764" y="1040" type="branch" />
            <wire x2="1764" y1="1040" y2="1040" x1="1696" />
            <wire x2="1840" y1="1040" y2="1040" x1="1764" />
        </branch>
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1120" type="branch" />
            <wire x2="1760" y1="1120" y2="1120" x1="1696" />
            <wire x2="1840" y1="1120" y2="1120" x1="1760" />
        </branch>
        <branch name="LE">
            <wire x2="2160" y1="1040" y2="1040" x1="2064" />
        </branch>
        <branch name="p">
            <wire x2="2160" y1="1120" y2="1120" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1040" name="LE" orien="R0" />
        <iomarker fontsize="28" x="2160" y="1120" name="p" orien="R0" />
        <branch name="LES(0),point(0),G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1152" type="branch" />
            <wire x2="880" y1="1152" y2="1152" x1="528" />
        </branch>
        <branch name="LES(1),point(1),G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1216" type="branch" />
            <wire x2="880" y1="1216" y2="1216" x1="528" />
        </branch>
        <branch name="LES(2),point(2),G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1280" type="branch" />
            <wire x2="880" y1="1280" y2="1280" x1="528" />
        </branch>
        <branch name="LES(3),point(3),G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1344" type="branch" />
            <wire x2="880" y1="1344" y2="1344" x1="528" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="1648" y1="1568" y2="1568" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1568" name="AN(3:0)" orien="R0" />
        <branch name="V5,V5,V5,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1632" type="branch" />
            <wire x2="880" y1="1632" y2="1632" x1="528" />
        </branch>
        <branch name="V5,V5,G0,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1696" type="branch" />
            <wire x2="880" y1="1696" y2="1696" x1="528" />
        </branch>
        <branch name="V5,G0,V5,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1760" type="branch" />
            <wire x2="880" y1="1760" y2="1760" x1="528" />
        </branch>
        <branch name="G0,V5,V5,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1824" type="branch" />
            <wire x2="880" y1="1824" y2="1824" x1="528" />
        </branch>
    </sheet>
</drawing>