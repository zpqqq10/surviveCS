<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="B" />
        <signal name="C" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="G" />
        <signal name="G_2B" />
        <signal name="G_2A" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="Y0" />
        <signal name="Y1" />
        <signal name="Y2" />
        <signal name="Y3" />
        <signal name="Y4" />
        <signal name="Y5" />
        <signal name="Y6" />
        <signal name="Y7" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="G" />
        <port polarity="Input" name="G_2B" />
        <port polarity="Input" name="G_2A" />
        <port polarity="Output" name="Y0" />
        <port polarity="Output" name="Y1" />
        <port polarity="Output" name="Y2" />
        <port polarity="Output" name="Y3" />
        <port polarity="Output" name="Y4" />
        <port polarity="Output" name="Y5" />
        <port polarity="Output" name="Y6" />
        <port polarity="Output" name="Y7" />
        <blockdef name="Decoder_38_sch">
            <timestamp>2020-10-20T6:46:20</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
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
        <block symbolname="Decoder_38_sch" name="M1">
            <blockpin signalname="A" name="A" />
            <blockpin signalname="B" name="B" />
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_4" name="D0" />
            <blockpin signalname="XLXN_5" name="D1" />
            <blockpin signalname="XLXN_6" name="D2" />
            <blockpin signalname="XLXN_7" name="D3" />
            <blockpin signalname="XLXN_8" name="D4" />
            <blockpin signalname="XLXN_9" name="D5" />
            <blockpin signalname="XLXN_10" name="D6" />
            <blockpin signalname="XLXN_11" name="D7" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="Y0" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="Y1" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_4">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="Y2" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_5">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="Y3" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_6">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="Y4" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_7">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="Y5" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_8">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="Y6" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_9">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="Y7" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_10">
            <blockpin signalname="G" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_12" name="I2" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="G_2A" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="G_2B" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1456" y="1408" name="M1" orien="R0">
        </instance>
        <branch name="A">
            <wire x2="1456" y1="928" y2="928" x1="1360" />
        </branch>
        <branch name="B">
            <wire x2="1456" y1="1152" y2="1152" x1="1360" />
        </branch>
        <branch name="C">
            <wire x2="1456" y1="1376" y2="1376" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="928" name="A" orien="R180" />
        <iomarker fontsize="28" x="1360" y="1152" name="B" orien="R180" />
        <iomarker fontsize="28" x="1360" y="1376" name="C" orien="R180" />
        <instance x="2224" y="960" name="XLXI_2" orien="R0" />
        <instance x="2224" y="1136" name="XLXI_3" orien="R0" />
        <instance x="2224" y="1312" name="XLXI_4" orien="R0" />
        <instance x="2224" y="1472" name="XLXI_5" orien="R0" />
        <instance x="2224" y="1648" name="XLXI_6" orien="R0" />
        <instance x="2224" y="1808" name="XLXI_7" orien="R0" />
        <instance x="2224" y="1968" name="XLXI_8" orien="R0" />
        <instance x="2224" y="2128" name="XLXI_9" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="2032" y1="928" y2="928" x1="1840" />
            <wire x2="2032" y1="832" y2="928" x1="2032" />
            <wire x2="2224" y1="832" y2="832" x1="2032" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="2032" y1="992" y2="992" x1="1840" />
            <wire x2="2032" y1="992" y2="1008" x1="2032" />
            <wire x2="2224" y1="1008" y2="1008" x1="2032" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2032" y1="1056" y2="1056" x1="1840" />
            <wire x2="2032" y1="1056" y2="1184" x1="2032" />
            <wire x2="2224" y1="1184" y2="1184" x1="2032" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2016" y1="1120" y2="1120" x1="1840" />
            <wire x2="2016" y1="1120" y2="1344" x1="2016" />
            <wire x2="2224" y1="1344" y2="1344" x1="2016" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2000" y1="1184" y2="1184" x1="1840" />
            <wire x2="2000" y1="1184" y2="1520" x1="2000" />
            <wire x2="2224" y1="1520" y2="1520" x1="2000" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1984" y1="1248" y2="1248" x1="1840" />
            <wire x2="1984" y1="1248" y2="1680" x1="1984" />
            <wire x2="2224" y1="1680" y2="1680" x1="1984" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1968" y1="1312" y2="1312" x1="1840" />
            <wire x2="1968" y1="1312" y2="1840" x1="1968" />
            <wire x2="2224" y1="1840" y2="1840" x1="1968" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1952" y1="1376" y2="1376" x1="1840" />
            <wire x2="1952" y1="1376" y2="2000" x1="1952" />
            <wire x2="2224" y1="2000" y2="2000" x1="1952" />
        </branch>
        <instance x="1392" y="2192" name="XLXI_10" orien="R0" />
        <instance x="1008" y="2032" name="XLXI_11" orien="R0" />
        <instance x="928" y="2096" name="XLXI_12" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1392" y1="2000" y2="2000" x1="1232" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1392" y1="2064" y2="2064" x1="1152" />
        </branch>
        <branch name="G">
            <wire x2="1392" y1="2128" y2="2128" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="2128" name="G" orien="R180" />
        <branch name="G_2B">
            <wire x2="928" y1="2064" y2="2064" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="2064" name="G_2B" orien="R180" />
        <branch name="G_2A">
            <wire x2="1008" y1="2000" y2="2000" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="2000" name="G_2A" orien="R180" />
        <branch name="XLXN_18">
            <wire x2="2160" y1="2064" y2="2064" x1="1648" />
            <wire x2="2224" y1="2064" y2="2064" x1="2160" />
            <wire x2="2224" y1="896" y2="896" x1="2160" />
            <wire x2="2160" y1="896" y2="1072" x1="2160" />
            <wire x2="2224" y1="1072" y2="1072" x1="2160" />
            <wire x2="2160" y1="1072" y2="1248" x1="2160" />
            <wire x2="2224" y1="1248" y2="1248" x1="2160" />
            <wire x2="2160" y1="1248" y2="1408" x1="2160" />
            <wire x2="2224" y1="1408" y2="1408" x1="2160" />
            <wire x2="2160" y1="1408" y2="1584" x1="2160" />
            <wire x2="2224" y1="1584" y2="1584" x1="2160" />
            <wire x2="2160" y1="1584" y2="1744" x1="2160" />
            <wire x2="2224" y1="1744" y2="1744" x1="2160" />
            <wire x2="2160" y1="1744" y2="1904" x1="2160" />
            <wire x2="2160" y1="1904" y2="2064" x1="2160" />
            <wire x2="2224" y1="1904" y2="1904" x1="2160" />
        </branch>
        <branch name="Y0">
            <wire x2="2544" y1="864" y2="864" x1="2480" />
        </branch>
        <branch name="Y1">
            <wire x2="2544" y1="1040" y2="1040" x1="2480" />
        </branch>
        <branch name="Y2">
            <wire x2="2544" y1="1216" y2="1216" x1="2480" />
        </branch>
        <branch name="Y3">
            <wire x2="2528" y1="1376" y2="1376" x1="2480" />
        </branch>
        <branch name="Y4">
            <wire x2="2528" y1="1552" y2="1552" x1="2480" />
        </branch>
        <branch name="Y5">
            <wire x2="2528" y1="1712" y2="1712" x1="2480" />
        </branch>
        <branch name="Y6">
            <wire x2="2528" y1="1872" y2="1872" x1="2480" />
        </branch>
        <branch name="Y7">
            <wire x2="2528" y1="2032" y2="2032" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2544" y="864" name="Y0" orien="R0" />
        <iomarker fontsize="28" x="2544" y="1040" name="Y1" orien="R0" />
        <iomarker fontsize="28" x="2544" y="1216" name="Y2" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1376" name="Y3" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1552" name="Y4" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1712" name="Y5" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1872" name="Y6" orien="R0" />
        <iomarker fontsize="28" x="2528" y="2032" name="Y7" orien="R0" />
    </sheet>
</drawing>