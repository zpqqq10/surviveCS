<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ai(3:0)" />
        <signal name="bi(3:0)" />
        <signal name="ai(3)" />
        <signal name="bi(3)" />
        <signal name="ai(2)" />
        <signal name="bi(2)" />
        <signal name="ai(1)" />
        <signal name="bi(1)" />
        <signal name="ai(0)" />
        <signal name="bi(0)" />
        <signal name="C0" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="GP" />
        <signal name="GG" />
        <signal name="s(3:0)" />
        <signal name="s(0)" />
        <signal name="s(1)" />
        <signal name="s(2)" />
        <signal name="s(3)" />
        <port polarity="Input" name="ai(3:0)" />
        <port polarity="Input" name="bi(3:0)" />
        <port polarity="Input" name="C0" />
        <port polarity="Output" name="GP" />
        <port polarity="Output" name="GG" />
        <port polarity="Output" name="s(3:0)" />
        <blockdef name="add">
            <timestamp>2020-11-11T8:47:59</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="CLA">
            <timestamp>2020-11-11T9:10:50</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="add" name="A0">
            <blockpin signalname="ai(0)" name="ai" />
            <blockpin signalname="bi(0)" name="bi" />
            <blockpin signalname="C0" name="ci" />
            <blockpin signalname="s(0)" name="si" />
            <blockpin name="CO" />
            <blockpin signalname="XLXN_20" name="Gi" />
            <blockpin signalname="XLXN_21" name="Pi" />
        </block>
        <block symbolname="add" name="A1">
            <blockpin signalname="ai(1)" name="ai" />
            <blockpin signalname="bi(1)" name="bi" />
            <blockpin signalname="XLXN_24" name="ci" />
            <blockpin signalname="s(1)" name="si" />
            <blockpin name="CO" />
            <blockpin signalname="XLXN_18" name="Gi" />
            <blockpin signalname="XLXN_19" name="Pi" />
        </block>
        <block symbolname="add" name="A2">
            <blockpin signalname="ai(2)" name="ai" />
            <blockpin signalname="bi(2)" name="bi" />
            <blockpin signalname="XLXN_23" name="ci" />
            <blockpin signalname="s(2)" name="si" />
            <blockpin name="CO" />
            <blockpin signalname="XLXN_16" name="Gi" />
            <blockpin signalname="XLXN_17" name="Pi" />
        </block>
        <block symbolname="add" name="A3">
            <blockpin signalname="ai(3)" name="ai" />
            <blockpin signalname="bi(3)" name="bi" />
            <blockpin signalname="XLXN_22" name="ci" />
            <blockpin signalname="s(3)" name="si" />
            <blockpin name="CO" />
            <blockpin signalname="XLXN_14" name="Gi" />
            <blockpin signalname="XLXN_15" name="Pi" />
        </block>
        <block symbolname="CLA" name="XLXI_5">
            <blockpin signalname="C0" name="Ci" />
            <blockpin signalname="XLXN_21" name="P0" />
            <blockpin signalname="XLXN_20" name="G0" />
            <blockpin signalname="XLXN_18" name="G1" />
            <blockpin signalname="XLXN_19" name="P1" />
            <blockpin signalname="XLXN_16" name="G2" />
            <blockpin signalname="XLXN_17" name="P2" />
            <blockpin signalname="XLXN_15" name="P3" />
            <blockpin signalname="XLXN_14" name="G3" />
            <blockpin signalname="XLXN_24" name="C1" />
            <blockpin signalname="XLXN_23" name="C2" />
            <blockpin signalname="XLXN_22" name="C3" />
            <blockpin signalname="GP" name="GP" />
            <blockpin signalname="GG" name="GG" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="800" y="1968" name="A0" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="800" y="1552" name="A1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="800" y="1136" name="A2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="800" y="720" name="A3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="ai(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="96" type="branch" />
            <wire x2="832" y1="96" y2="96" x1="560" />
        </branch>
        <branch name="bi(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="96" type="branch" />
            <wire x2="1392" y1="96" y2="96" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="560" y="96" name="ai(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1104" y="96" name="bi(3:0)" orien="R180" />
        <branch name="ai(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="496" type="branch" />
            <wire x2="800" y1="496" y2="496" x1="608" />
        </branch>
        <branch name="bi(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="592" type="branch" />
            <wire x2="800" y1="592" y2="592" x1="608" />
        </branch>
        <branch name="ai(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="912" type="branch" />
            <wire x2="800" y1="912" y2="912" x1="608" />
        </branch>
        <branch name="bi(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1008" type="branch" />
            <wire x2="800" y1="1008" y2="1008" x1="608" />
        </branch>
        <branch name="ai(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1328" type="branch" />
            <wire x2="800" y1="1328" y2="1328" x1="608" />
        </branch>
        <branch name="bi(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1424" type="branch" />
            <wire x2="800" y1="1424" y2="1424" x1="608" />
        </branch>
        <branch name="ai(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1744" type="branch" />
            <wire x2="800" y1="1744" y2="1744" x1="608" />
        </branch>
        <branch name="bi(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1840" type="branch" />
            <wire x2="800" y1="1840" y2="1840" x1="608" />
        </branch>
        <branch name="C0">
            <wire x2="720" y1="1936" y2="1936" x1="608" />
            <wire x2="800" y1="1936" y2="1936" x1="720" />
            <wire x2="720" y1="1936" y2="2048" x1="720" />
            <wire x2="1936" y1="2048" y2="2048" x1="720" />
            <wire x2="2096" y1="864" y2="864" x1="1936" />
            <wire x2="1936" y1="864" y2="2048" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="608" y="1936" name="C0" orien="R180" />
        <instance x="2096" y="1408" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_14">
            <wire x2="1632" y1="624" y2="624" x1="1184" />
            <wire x2="1632" y1="624" y2="1376" x1="1632" />
            <wire x2="2096" y1="1376" y2="1376" x1="1632" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1616" y1="688" y2="688" x1="1184" />
            <wire x2="1616" y1="688" y2="1312" x1="1616" />
            <wire x2="2096" y1="1312" y2="1312" x1="1616" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1600" y1="1040" y2="1040" x1="1184" />
            <wire x2="1600" y1="1040" y2="1184" x1="1600" />
            <wire x2="2096" y1="1184" y2="1184" x1="1600" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1584" y1="1104" y2="1104" x1="1184" />
            <wire x2="1584" y1="1104" y2="1248" x1="1584" />
            <wire x2="2096" y1="1248" y2="1248" x1="1584" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1648" y1="1456" y2="1456" x1="1184" />
            <wire x2="1648" y1="1056" y2="1456" x1="1648" />
            <wire x2="2096" y1="1056" y2="1056" x1="1648" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1664" y1="1520" y2="1520" x1="1184" />
            <wire x2="1664" y1="1120" y2="1520" x1="1664" />
            <wire x2="2096" y1="1120" y2="1120" x1="1664" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1680" y1="1872" y2="1872" x1="1184" />
            <wire x2="1680" y1="992" y2="1872" x1="1680" />
            <wire x2="2096" y1="992" y2="992" x1="1680" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1568" y1="1936" y2="1936" x1="1184" />
            <wire x2="1568" y1="928" y2="1936" x1="1568" />
            <wire x2="2096" y1="928" y2="928" x1="1568" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="800" y1="688" y2="688" x1="736" />
            <wire x2="736" y1="688" y2="784" x1="736" />
            <wire x2="2544" y1="784" y2="784" x1="736" />
            <wire x2="2544" y1="784" y2="1120" x1="2544" />
            <wire x2="2544" y1="1120" y2="1120" x1="2480" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="800" y1="1104" y2="1104" x1="736" />
            <wire x2="736" y1="1104" y2="1616" x1="736" />
            <wire x2="2528" y1="1616" y2="1616" x1="736" />
            <wire x2="2528" y1="992" y2="992" x1="2480" />
            <wire x2="2528" y1="992" y2="1616" x1="2528" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="784" y1="752" y2="1520" x1="784" />
            <wire x2="800" y1="1520" y2="1520" x1="784" />
            <wire x2="2528" y1="752" y2="752" x1="784" />
            <wire x2="2528" y1="752" y2="864" x1="2528" />
            <wire x2="2528" y1="864" y2="864" x1="2480" />
        </branch>
        <branch name="GP">
            <wire x2="2656" y1="1248" y2="1248" x1="2480" />
        </branch>
        <branch name="GG">
            <wire x2="2656" y1="1376" y2="1376" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2656" y="1248" name="GP" orien="R0" />
        <iomarker fontsize="28" x="2656" y="1376" name="GG" orien="R0" />
        <branch name="s(3:0)">
            <wire x2="2656" y1="1744" y2="1760" x1="2656" />
            <wire x2="2656" y1="1760" y2="1824" x1="2656" />
            <wire x2="2656" y1="1824" y2="1840" x1="2656" />
            <wire x2="2768" y1="1840" y2="1840" x1="2656" />
            <wire x2="2656" y1="1840" y2="1888" x1="2656" />
            <wire x2="2656" y1="1888" y2="1952" x1="2656" />
        </branch>
        <bustap x2="2560" y1="1824" y2="1824" x1="2656" />
        <bustap x2="2560" y1="1888" y2="1888" x1="2656" />
        <bustap x2="2560" y1="1952" y2="1952" x1="2656" />
        <bustap x2="2560" y1="1744" y2="1744" x1="2656" />
        <iomarker fontsize="28" x="2768" y="1840" name="s(3:0)" orien="R0" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2403" y="1952" type="branch" />
            <wire x2="1872" y1="1744" y2="1744" x1="1184" />
            <wire x2="1872" y1="1744" y2="1952" x1="1872" />
            <wire x2="2403" y1="1952" y2="1952" x1="1872" />
            <wire x2="2438" y1="1952" y2="1952" x1="2403" />
            <wire x2="2560" y1="1952" y2="1952" x1="2438" />
        </branch>
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2446" y="1888" type="branch" />
            <wire x2="1856" y1="1328" y2="1328" x1="1184" />
            <wire x2="1856" y1="1328" y2="1888" x1="1856" />
            <wire x2="2446" y1="1888" y2="1888" x1="1856" />
            <wire x2="2560" y1="1888" y2="1888" x1="2446" />
        </branch>
        <branch name="s(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2395" y="1824" type="branch" />
            <wire x2="1840" y1="912" y2="912" x1="1184" />
            <wire x2="1840" y1="912" y2="1824" x1="1840" />
            <wire x2="2395" y1="1824" y2="1824" x1="1840" />
            <wire x2="2560" y1="1824" y2="1824" x1="2395" />
        </branch>
        <branch name="s(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2435" y="1744" type="branch" />
            <wire x2="1888" y1="496" y2="496" x1="1184" />
            <wire x2="1888" y1="496" y2="1744" x1="1888" />
            <wire x2="2435" y1="1744" y2="1744" x1="1888" />
            <wire x2="2560" y1="1744" y2="1744" x1="2435" />
        </branch>
    </sheet>
</drawing>