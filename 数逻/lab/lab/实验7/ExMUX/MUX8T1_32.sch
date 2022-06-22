<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s(2:0)" />
        <signal name="I0(31:0)" />
        <signal name="I0(7:0)" />
        <signal name="I0(15:8)" />
        <signal name="I0(23:16)" />
        <signal name="I0(31:24)" />
        <signal name="I1(31:0)" />
        <signal name="I1(31:24)" />
        <signal name="I1(23:16)" />
        <signal name="I1(15:8)" />
        <signal name="I1(7:0)" />
        <signal name="I2(31:0)" />
        <signal name="I2(7:0)" />
        <signal name="I2(15:8)" />
        <signal name="I2(23:16)" />
        <signal name="I2(31:24)" />
        <signal name="I3(31:0)" />
        <signal name="I3(7:0)" />
        <signal name="I3(15:8)" />
        <signal name="I3(23:16)" />
        <signal name="I3(31:24)" />
        <signal name="I4(31:24)" />
        <signal name="I4(23:16)" />
        <signal name="I4(15:8)" />
        <signal name="I4(7:0)" />
        <signal name="I4(31:0)" />
        <signal name="I5(7:0)" />
        <signal name="I5(15:8)" />
        <signal name="I5(23:16)" />
        <signal name="I5(31:24)" />
        <signal name="I6(31:0)" />
        <signal name="I5(31:0)" />
        <signal name="I6(7:0)" />
        <signal name="I6(15:8)" />
        <signal name="I6(23:16)" />
        <signal name="I6(31:24)" />
        <signal name="I7(31:0)" />
        <signal name="I7(7:0)" />
        <signal name="I7(15:8)" />
        <signal name="I7(23:16)" />
        <signal name="I7(31:24)" />
        <signal name="o(31:0)" />
        <signal name="o(7:0)" />
        <signal name="o(15:8)" />
        <signal name="o(23:16)" />
        <signal name="o(31:24)" />
        <port polarity="Input" name="s(2:0)" />
        <port polarity="Input" name="I0(31:0)" />
        <port polarity="Input" name="I1(31:0)" />
        <port polarity="Input" name="I2(31:0)" />
        <port polarity="Input" name="I3(31:0)" />
        <port polarity="Input" name="I4(31:0)" />
        <port polarity="Input" name="I6(31:0)" />
        <port polarity="Input" name="I5(31:0)" />
        <port polarity="Input" name="I7(31:0)" />
        <port polarity="Output" name="o(31:0)" />
        <blockdef name="MUX8T1_8">
            <timestamp>2020-11-3T2:29:25</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
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
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
        </blockdef>
        <block symbolname="MUX8T1_8" name="XLXI_1">
            <blockpin signalname="s(2:0)" name="s(2:0)" />
            <blockpin signalname="I0(7:0)" name="I0(7:0)" />
            <blockpin signalname="I1(7:0)" name="I1(7:0)" />
            <blockpin signalname="I2(7:0)" name="I2(7:0)" />
            <blockpin signalname="I3(7:0)" name="I3(7:0)" />
            <blockpin signalname="I4(7:0)" name="I4(7:0)" />
            <blockpin signalname="I5(7:0)" name="I5(7:0)" />
            <blockpin signalname="I6(7:0)" name="I6(7:0)" />
            <blockpin signalname="I7(7:0)" name="I7(7:0)" />
            <blockpin signalname="o(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="MUX8T1_8" name="XLXI_2">
            <blockpin signalname="s(2:0)" name="s(2:0)" />
            <blockpin signalname="I0(15:8)" name="I0(7:0)" />
            <blockpin signalname="I1(15:8)" name="I1(7:0)" />
            <blockpin signalname="I2(15:8)" name="I2(7:0)" />
            <blockpin signalname="I3(15:8)" name="I3(7:0)" />
            <blockpin signalname="I4(15:8)" name="I4(7:0)" />
            <blockpin signalname="I5(15:8)" name="I5(7:0)" />
            <blockpin signalname="I6(15:8)" name="I6(7:0)" />
            <blockpin signalname="I7(15:8)" name="I7(7:0)" />
            <blockpin signalname="o(15:8)" name="o(7:0)" />
        </block>
        <block symbolname="MUX8T1_8" name="XLXI_3">
            <blockpin signalname="s(2:0)" name="s(2:0)" />
            <blockpin signalname="I0(23:16)" name="I0(7:0)" />
            <blockpin signalname="I1(23:16)" name="I1(7:0)" />
            <blockpin signalname="I2(23:16)" name="I2(7:0)" />
            <blockpin signalname="I3(23:16)" name="I3(7:0)" />
            <blockpin signalname="I4(23:16)" name="I4(7:0)" />
            <blockpin signalname="I5(23:16)" name="I5(7:0)" />
            <blockpin signalname="I6(23:16)" name="I6(7:0)" />
            <blockpin signalname="I7(23:16)" name="I7(7:0)" />
            <blockpin signalname="o(23:16)" name="o(7:0)" />
        </block>
        <block symbolname="MUX8T1_8" name="XLXI_4">
            <blockpin signalname="s(2:0)" name="s(2:0)" />
            <blockpin signalname="I0(31:24)" name="I0(7:0)" />
            <blockpin signalname="I1(31:24)" name="I1(7:0)" />
            <blockpin signalname="I2(31:24)" name="I2(7:0)" />
            <blockpin signalname="I3(31:24)" name="I3(7:0)" />
            <blockpin signalname="I4(31:24)" name="I4(7:0)" />
            <blockpin signalname="I5(31:24)" name="I5(7:0)" />
            <blockpin signalname="I6(31:24)" name="I6(7:0)" />
            <blockpin signalname="I7(31:24)" name="I7(7:0)" />
            <blockpin signalname="o(31:24)" name="o(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="3808" y="1968" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="624" y="688" name="s(2:0)" orien="R180" />
        <iomarker fontsize="28" x="592" y="832" name="I0(31:0)" orien="R180" />
        <branch name="I0(31:0)">
            <wire x2="880" y1="832" y2="832" x1="592" />
            <wire x2="1728" y1="832" y2="832" x1="880" />
            <wire x2="2608" y1="832" y2="832" x1="1728" />
            <wire x2="3568" y1="832" y2="832" x1="2608" />
        </branch>
        <bustap x2="3568" y1="832" y2="928" x1="3568" />
        <bustap x2="1728" y1="832" y2="928" x1="1728" />
        <bustap x2="880" y1="832" y2="928" x1="880" />
        <branch name="I0(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="1023" type="branch" />
            <wire x2="880" y1="928" y2="1488" x1="880" />
            <wire x2="1104" y1="1488" y2="1488" x1="880" />
        </branch>
        <branch name="I0(15:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1002" type="branch" />
            <wire x2="1728" y1="928" y2="1488" x1="1728" />
            <wire x2="1984" y1="1488" y2="1488" x1="1728" />
        </branch>
        <branch name="I0(31:24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3568" y="983" type="branch" />
            <wire x2="3568" y1="928" y2="1488" x1="3568" />
            <wire x2="3808" y1="1488" y2="1488" x1="3568" />
        </branch>
        <iomarker fontsize="28" x="592" y="928" name="I1(31:0)" orien="R180" />
        <bustap x2="832" y1="928" y2="1024" x1="832" />
        <bustap x2="1680" y1="928" y2="1024" x1="1680" />
        <bustap x2="2608" y1="928" y2="1024" x1="2608" />
        <bustap x2="3488" y1="928" y2="1024" x1="3488" />
        <branch name="I1(31:24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="1065" type="branch" />
            <wire x2="3488" y1="1024" y2="1552" x1="3488" />
            <wire x2="3808" y1="1552" y2="1552" x1="3488" />
        </branch>
        <branch name="I1(15:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1082" type="branch" />
            <wire x2="1680" y1="1024" y2="1552" x1="1680" />
            <wire x2="1984" y1="1552" y2="1552" x1="1680" />
        </branch>
        <branch name="I1(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1083" type="branch" />
            <wire x2="832" y1="1024" y2="1552" x1="832" />
            <wire x2="1104" y1="1552" y2="1552" x1="832" />
        </branch>
        <bustap x2="2544" y1="1024" y2="1120" x1="2544" />
        <bustap x2="1616" y1="1024" y2="1120" x1="1616" />
        <bustap x2="768" y1="1024" y2="1120" x1="768" />
        <iomarker fontsize="28" x="592" y="1024" name="I2(31:0)" orien="R180" />
        <bustap x2="3392" y1="1024" y2="1120" x1="3392" />
        <branch name="I2(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1164" type="branch" />
            <wire x2="768" y1="1120" y2="1616" x1="768" />
            <wire x2="1104" y1="1616" y2="1616" x1="768" />
        </branch>
        <branch name="I2(23:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2544" y="1179" type="branch" />
            <wire x2="2544" y1="1120" y2="1616" x1="2544" />
            <wire x2="2912" y1="1616" y2="1616" x1="2544" />
        </branch>
        <branch name="I2(31:24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="1180" type="branch" />
            <wire x2="3392" y1="1120" y2="1616" x1="3392" />
            <wire x2="3808" y1="1616" y2="1616" x1="3392" />
        </branch>
        <bustap x2="2464" y1="1104" y2="1200" x1="2464" />
        <bustap x2="1536" y1="1104" y2="1200" x1="1536" />
        <bustap x2="688" y1="1104" y2="1200" x1="688" />
        <branch name="I3(31:0)">
            <wire x2="688" y1="1104" y2="1104" x1="592" />
            <wire x2="1536" y1="1104" y2="1104" x1="688" />
            <wire x2="2464" y1="1104" y2="1104" x1="1536" />
            <wire x2="3312" y1="1104" y2="1104" x1="2464" />
        </branch>
        <bustap x2="3312" y1="1104" y2="1200" x1="3312" />
        <iomarker fontsize="28" x="592" y="1104" name="I3(31:0)" orien="R180" />
        <branch name="I3(31:24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3312" y="1254" type="branch" />
            <wire x2="3312" y1="1200" y2="1680" x1="3312" />
            <wire x2="3808" y1="1680" y2="1680" x1="3312" />
        </branch>
        <branch name="I3(23:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1263" type="branch" />
            <wire x2="2464" y1="1200" y2="1680" x1="2464" />
            <wire x2="2912" y1="1680" y2="1680" x1="2464" />
        </branch>
        <branch name="I1(23:16)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="1088" type="branch" />
            <wire x2="2608" y1="1024" y2="1088" x1="2608" />
            <wire x2="2608" y1="1088" y2="1552" x1="2608" />
            <wire x2="2912" y1="1552" y2="1552" x1="2608" />
        </branch>
        <instance x="2912" y="1968" name="XLXI_3" orien="R0">
        </instance>
        <branch name="I3(15:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1268" type="branch" />
            <wire x2="1536" y1="1200" y2="1680" x1="1536" />
            <wire x2="1984" y1="1680" y2="1680" x1="1536" />
        </branch>
        <branch name="I2(15:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1172" type="branch" />
            <wire x2="1616" y1="1120" y2="1616" x1="1616" />
            <wire x2="1984" y1="1616" y2="1616" x1="1616" />
        </branch>
        <instance x="1984" y="1968" name="XLXI_2" orien="R0">
        </instance>
        <branch name="I3(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="1249" type="branch" />
            <wire x2="688" y1="1200" y2="1680" x1="688" />
            <wire x2="1104" y1="1680" y2="1680" x1="688" />
        </branch>
        <branch name="I2(31:0)">
            <wire x2="768" y1="1024" y2="1024" x1="592" />
            <wire x2="1616" y1="1024" y2="1024" x1="768" />
            <wire x2="2544" y1="1024" y2="1024" x1="1616" />
            <wire x2="3392" y1="1024" y2="1024" x1="2544" />
        </branch>
        <branch name="s(2:0)">
            <wire x2="960" y1="688" y2="688" x1="624" />
            <wire x2="1808" y1="688" y2="688" x1="960" />
            <wire x2="2736" y1="688" y2="688" x1="1808" />
            <wire x2="3696" y1="688" y2="688" x1="2736" />
            <wire x2="3696" y1="688" y2="1424" x1="3696" />
            <wire x2="3808" y1="1424" y2="1424" x1="3696" />
            <wire x2="2736" y1="688" y2="1424" x1="2736" />
            <wire x2="2912" y1="1424" y2="1424" x1="2736" />
            <wire x2="1808" y1="688" y2="1424" x1="1808" />
            <wire x2="1984" y1="1424" y2="1424" x1="1808" />
            <wire x2="960" y1="688" y2="1424" x1="960" />
            <wire x2="1104" y1="1424" y2="1424" x1="960" />
        </branch>
        <instance x="1104" y="1968" name="XLXI_1" orien="R0">
        </instance>
        <branch name="I4(31:24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3600" y="2210" type="branch" />
            <wire x2="3808" y1="1744" y2="1744" x1="3600" />
            <wire x2="3600" y1="1744" y2="2320" x1="3600" />
        </branch>
        <branch name="I4(23:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="2197" type="branch" />
            <wire x2="2912" y1="1744" y2="1744" x1="2672" />
            <wire x2="2672" y1="1744" y2="2320" x1="2672" />
        </branch>
        <branch name="I4(15:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="2202" type="branch" />
            <wire x2="1984" y1="1744" y2="1744" x1="1728" />
            <wire x2="1728" y1="1744" y2="2320" x1="1728" />
        </branch>
        <branch name="I4(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="2242" type="branch" />
            <wire x2="1104" y1="1744" y2="1744" x1="864" />
            <wire x2="864" y1="1744" y2="2320" x1="864" />
        </branch>
        <branch name="I4(31:0)">
            <wire x2="864" y1="2416" y2="2416" x1="608" />
            <wire x2="1728" y1="2416" y2="2416" x1="864" />
            <wire x2="2672" y1="2416" y2="2416" x1="1728" />
            <wire x2="3600" y1="2416" y2="2416" x1="2672" />
        </branch>
        <bustap x2="3600" y1="2416" y2="2320" x1="3600" />
        <bustap x2="2672" y1="2416" y2="2320" x1="2672" />
        <bustap x2="1728" y1="2416" y2="2320" x1="1728" />
        <bustap x2="864" y1="2416" y2="2320" x1="864" />
        <bustap x2="3488" y1="2352" y2="2256" x1="3488" />
        <bustap x2="2560" y1="2352" y2="2256" x1="2560" />
        <bustap x2="1616" y1="2352" y2="2256" x1="1616" />
        <bustap x2="752" y1="2352" y2="2256" x1="752" />
        <branch name="I5(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="2209" type="branch" />
            <wire x2="1104" y1="1808" y2="1808" x1="752" />
            <wire x2="752" y1="1808" y2="2256" x1="752" />
        </branch>
        <branch name="I5(15:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="2185" type="branch" />
            <wire x2="1984" y1="1808" y2="1808" x1="1616" />
            <wire x2="1616" y1="1808" y2="2256" x1="1616" />
        </branch>
        <branch name="I5(23:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="2188" type="branch" />
            <wire x2="2912" y1="1808" y2="1808" x1="2560" />
            <wire x2="2560" y1="1808" y2="2256" x1="2560" />
        </branch>
        <branch name="I5(31:24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="2214" type="branch" />
            <wire x2="3808" y1="1808" y2="1808" x1="3488" />
            <wire x2="3488" y1="1808" y2="2256" x1="3488" />
        </branch>
        <iomarker fontsize="28" x="608" y="2416" name="I4(31:0)" orien="R180" />
        <bustap x2="3408" y1="2192" y2="2096" x1="3408" />
        <bustap x2="2480" y1="2192" y2="2096" x1="2480" />
        <bustap x2="1536" y1="2192" y2="2096" x1="1536" />
        <bustap x2="672" y1="2192" y2="2096" x1="672" />
        <branch name="I6(31:0)">
            <wire x2="672" y1="2192" y2="2192" x1="528" />
            <wire x2="1536" y1="2192" y2="2192" x1="672" />
            <wire x2="2480" y1="2192" y2="2192" x1="1536" />
            <wire x2="3408" y1="2192" y2="2192" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="528" y="2192" name="I6(31:0)" orien="R180" />
        <iomarker fontsize="28" x="608" y="2352" name="I5(31:0)" orien="R180" />
        <branch name="I5(31:0)">
            <wire x2="752" y1="2352" y2="2352" x1="608" />
            <wire x2="1616" y1="2352" y2="2352" x1="752" />
            <wire x2="2560" y1="2352" y2="2352" x1="1616" />
            <wire x2="3488" y1="2352" y2="2352" x1="2560" />
        </branch>
        <branch name="I6(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="2043" type="branch" />
            <wire x2="1104" y1="1872" y2="1872" x1="672" />
            <wire x2="672" y1="1872" y2="2096" x1="672" />
        </branch>
        <branch name="I6(15:8)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="2048" type="branch" />
            <wire x2="1984" y1="1872" y2="1872" x1="1536" />
            <wire x2="1536" y1="1872" y2="2048" x1="1536" />
            <wire x2="1536" y1="2048" y2="2096" x1="1536" />
        </branch>
        <branch name="I6(23:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2480" y="2056" type="branch" />
            <wire x2="2912" y1="1872" y2="1872" x1="2480" />
            <wire x2="2480" y1="1872" y2="2096" x1="2480" />
        </branch>
        <branch name="I6(31:24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3408" y="2056" type="branch" />
            <wire x2="3808" y1="1872" y2="1872" x1="3408" />
            <wire x2="3408" y1="1872" y2="2096" x1="3408" />
        </branch>
        <bustap x2="3344" y1="2096" y2="2000" x1="3344" />
        <bustap x2="2416" y1="2096" y2="2000" x1="2416" />
        <bustap x2="1472" y1="2096" y2="2000" x1="1472" />
        <bustap x2="608" y1="2096" y2="2000" x1="608" />
        <branch name="I7(31:0)">
            <wire x2="608" y1="2096" y2="2096" x1="464" />
            <wire x2="1472" y1="2096" y2="2096" x1="608" />
            <wire x2="2416" y1="2096" y2="2096" x1="1472" />
            <wire x2="3344" y1="2096" y2="2096" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="464" y="2096" name="I7(31:0)" orien="R180" />
        <branch name="I7(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1970" type="branch" />
            <wire x2="1104" y1="1936" y2="1936" x1="608" />
            <wire x2="608" y1="1936" y2="2000" x1="608" />
        </branch>
        <branch name="I7(15:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1514" y="1984" type="branch" />
            <wire x2="1472" y1="1984" y2="2000" x1="1472" />
            <wire x2="1552" y1="1984" y2="1984" x1="1472" />
            <wire x2="1552" y1="1936" y2="1984" x1="1552" />
            <wire x2="1984" y1="1936" y2="1936" x1="1552" />
        </branch>
        <branch name="I7(23:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="1967" type="branch" />
            <wire x2="2912" y1="1936" y2="1936" x1="2416" />
            <wire x2="2416" y1="1936" y2="2000" x1="2416" />
        </branch>
        <branch name="I7(31:24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3344" y="1972" type="branch" />
            <wire x2="3808" y1="1936" y2="1936" x1="3344" />
            <wire x2="3344" y1="1936" y2="2000" x1="3344" />
        </branch>
        <branch name="o(31:0)">
            <wire x2="2832" y1="2640" y2="2640" x1="1824" />
            <wire x2="3728" y1="2640" y2="2640" x1="2832" />
            <wire x2="4480" y1="2640" y2="2640" x1="3728" />
            <wire x2="4608" y1="2640" y2="2640" x1="4480" />
        </branch>
        <iomarker fontsize="28" x="4608" y="2640" name="o(31:0)" orien="R0" />
        <bustap x2="4480" y1="2640" y2="2544" x1="4480" />
        <bustap x2="3728" y1="2640" y2="2544" x1="3728" />
        <bustap x2="2832" y1="2640" y2="2544" x1="2832" />
        <bustap x2="1824" y1="2640" y2="2544" x1="1824" />
        <branch name="o(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="2481" type="branch" />
            <wire x2="1552" y1="1424" y2="1424" x1="1488" />
            <wire x2="1552" y1="1424" y2="1472" x1="1552" />
            <wire x2="1824" y1="1472" y2="1472" x1="1552" />
            <wire x2="1824" y1="1472" y2="2544" x1="1824" />
        </branch>
        <branch name="o(15:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2832" y="2437" type="branch" />
            <wire x2="2432" y1="1424" y2="1424" x1="2368" />
            <wire x2="2432" y1="1424" y2="1472" x1="2432" />
            <wire x2="2832" y1="1472" y2="1472" x1="2432" />
            <wire x2="2832" y1="1472" y2="2544" x1="2832" />
        </branch>
        <branch name="o(23:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3728" y="2446" type="branch" />
            <wire x2="3376" y1="1424" y2="1424" x1="3296" />
            <wire x2="3376" y1="1408" y2="1424" x1="3376" />
            <wire x2="3728" y1="1408" y2="1408" x1="3376" />
            <wire x2="3728" y1="1408" y2="2544" x1="3728" />
        </branch>
        <branch name="o(31:24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4480" y="2419" type="branch" />
            <wire x2="4480" y1="1424" y2="1424" x1="4192" />
            <wire x2="4480" y1="1424" y2="2544" x1="4480" />
        </branch>
        <branch name="I1(31:0)">
            <wire x2="832" y1="928" y2="928" x1="592" />
            <wire x2="1680" y1="928" y2="928" x1="832" />
            <wire x2="2608" y1="928" y2="928" x1="1680" />
            <wire x2="3488" y1="928" y2="928" x1="2608" />
        </branch>
        <bustap x2="2608" y1="832" y2="736" x1="2608" />
        <branch name="I0(23:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2587" y="656" type="branch" />
            <wire x2="2576" y1="656" y2="1488" x1="2576" />
            <wire x2="2912" y1="1488" y2="1488" x1="2576" />
            <wire x2="2587" y1="656" y2="656" x1="2576" />
            <wire x2="2608" y1="656" y2="656" x1="2587" />
            <wire x2="2608" y1="656" y2="736" x1="2608" />
        </branch>
    </sheet>
</drawing>