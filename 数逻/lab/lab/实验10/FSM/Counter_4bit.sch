<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_10" />
        <signal name="XLXN_15" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_23" />
        <signal name="clk" />
        <signal name="XLXN_26" />
        <signal name="Qa" />
        <signal name="XLXN_28" />
        <signal name="Qb" />
        <signal name="XLXN_30" />
        <signal name="Qc" />
        <signal name="XLXN_32" />
        <signal name="Qd" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="Rc" />
        <signal name="XLXN_40" />
        <signal name="XLXN_16" />
        <signal name="XLXN_21" />
        <signal name="XLXN_43" />
        <signal name="XLXN_22" />
        <signal name="XLXN_45" />
        <signal name="XLXN_24" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Qa" />
        <port polarity="Output" name="Qb" />
        <port polarity="Output" name="Qc" />
        <port polarity="Output" name="Qd" />
        <port polarity="Output" name="Rc" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
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
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <blockdef name="nor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
        </blockdef>
        <blockdef name="nor4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="216" y1="-160" y2="-160" x1="256" />
            <circle r="12" cx="204" cy="-160" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="fd" name="A">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_21" name="D" />
            <blockpin signalname="Qa" name="Q" />
        </block>
        <block symbolname="fd" name="B">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_9" name="D" />
            <blockpin signalname="Qb" name="Q" />
        </block>
        <block symbolname="fd" name="C">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_8" name="D" />
            <blockpin signalname="Qc" name="Q" />
        </block>
        <block symbolname="fd" name="D">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_7" name="D" />
            <blockpin signalname="Qd" name="Q" />
        </block>
        <block symbolname="xnor2" name="XLXI_5">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="Qa" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_6">
            <blockpin signalname="XLXN_24" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_7">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="Qa" name="I" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="Qb" name="I" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="Qc" name="I" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="Qd" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_12">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="nor3" name="XLXI_13">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="XLXN_22" name="I2" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="nor4" name="XLXI_14">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="XLXN_22" name="I2" />
            <blockpin signalname="XLXN_16" name="I3" />
            <blockpin signalname="Rc" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2112" y="816" name="A" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-64" type="instance" />
        </instance>
        <instance x="2112" y="1184" name="B" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-64" type="instance" />
        </instance>
        <instance x="2112" y="1536" name="C" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-64" type="instance" />
        </instance>
        <instance x="2112" y="1872" name="D" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-64" type="instance" />
        </instance>
        <branch name="clk">
            <wire x2="1968" y1="688" y2="688" x1="528" />
            <wire x2="2112" y1="688" y2="688" x1="1968" />
            <wire x2="1968" y1="688" y2="1056" x1="1968" />
            <wire x2="2112" y1="1056" y2="1056" x1="1968" />
            <wire x2="1968" y1="1056" y2="1408" x1="1968" />
            <wire x2="1968" y1="1408" y2="1744" x1="1968" />
            <wire x2="2112" y1="1744" y2="1744" x1="1968" />
            <wire x2="2112" y1="1408" y2="1408" x1="1968" />
        </branch>
        <branch name="Qa">
            <wire x2="1392" y1="784" y2="784" x1="1200" />
            <wire x2="1392" y1="784" y2="896" x1="1392" />
            <wire x2="1440" y1="896" y2="896" x1="1392" />
            <wire x2="2544" y1="784" y2="784" x1="1392" />
            <wire x2="2544" y1="560" y2="560" x1="2496" />
            <wire x2="2656" y1="560" y2="560" x1="2544" />
            <wire x2="2544" y1="560" y2="784" x1="2544" />
        </branch>
        <branch name="Qb">
            <wire x2="2544" y1="1168" y2="1168" x1="1680" />
            <wire x2="2544" y1="928" y2="928" x1="2496" />
            <wire x2="2656" y1="928" y2="928" x1="2544" />
            <wire x2="2544" y1="928" y2="1168" x1="2544" />
        </branch>
        <branch name="Qc">
            <wire x2="2544" y1="1520" y2="1520" x1="1696" />
            <wire x2="2544" y1="1280" y2="1280" x1="2496" />
            <wire x2="2656" y1="1280" y2="1280" x1="2544" />
            <wire x2="2544" y1="1280" y2="1520" x1="2544" />
        </branch>
        <branch name="Qd">
            <wire x2="2544" y1="1872" y2="1872" x1="1712" />
            <wire x2="2544" y1="1616" y2="1616" x1="2496" />
            <wire x2="2656" y1="1616" y2="1616" x1="2544" />
            <wire x2="2544" y1="1616" y2="1872" x1="2544" />
        </branch>
        <instance x="1440" y="1024" name="XLXI_5" orien="R0" />
        <instance x="1456" y="1376" name="XLXI_6" orien="R0" />
        <instance x="1472" y="1712" name="XLXI_7" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="2096" y1="1616" y2="1616" x1="1728" />
            <wire x2="2112" y1="1616" y2="1616" x1="2096" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2112" y1="1280" y2="1280" x1="1712" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2112" y1="928" y2="928" x1="1696" />
        </branch>
        <instance x="1200" y="752" name="XLXI_8" orien="R180" />
        <instance x="1680" y="1136" name="XLXI_9" orien="R180" />
        <instance x="1696" y="1488" name="XLXI_10" orien="R180" />
        <instance x="1712" y="1840" name="XLXI_11" orien="R180" />
        <instance x="960" y="1344" name="XLXI_12" orien="R0" />
        <instance x="1024" y="1712" name="XLXI_13" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1472" y1="1584" y2="1584" x1="1280" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1456" y1="1248" y2="1248" x1="1216" />
        </branch>
        <instance x="1040" y="2208" name="XLXI_14" orien="R0" />
        <branch name="Rc">
            <wire x2="2656" y1="2048" y2="2048" x1="1296" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1040" y1="1872" y2="1952" x1="1040" />
            <wire x2="1360" y1="1872" y2="1872" x1="1040" />
            <wire x2="1488" y1="1872" y2="1872" x1="1360" />
            <wire x2="1472" y1="1648" y2="1648" x1="1360" />
            <wire x2="1360" y1="1648" y2="1872" x1="1360" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2112" y1="560" y2="560" x1="720" />
            <wire x2="720" y1="560" y2="784" x1="720" />
            <wire x2="976" y1="784" y2="784" x1="720" />
            <wire x2="720" y1="784" y2="1280" x1="720" />
            <wire x2="720" y1="1280" y2="1648" x1="720" />
            <wire x2="720" y1="1648" y2="2144" x1="720" />
            <wire x2="1040" y1="2144" y2="2144" x1="720" />
            <wire x2="1024" y1="1648" y2="1648" x1="720" />
            <wire x2="960" y1="1280" y2="1280" x1="720" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="816" y1="1168" y2="1216" x1="816" />
            <wire x2="816" y1="1216" y2="1520" x1="816" />
            <wire x2="816" y1="1520" y2="2016" x1="816" />
            <wire x2="1040" y1="2016" y2="2016" x1="816" />
            <wire x2="1024" y1="1520" y2="1520" x1="816" />
            <wire x2="960" y1="1216" y2="1216" x1="816" />
            <wire x2="1328" y1="1168" y2="1168" x1="816" />
            <wire x2="1456" y1="1168" y2="1168" x1="1328" />
            <wire x2="1440" y1="960" y2="960" x1="1328" />
            <wire x2="1328" y1="960" y2="1168" x1="1328" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1440" y1="1408" y2="1408" x1="928" />
            <wire x2="1440" y1="1408" y2="1520" x1="1440" />
            <wire x2="1472" y1="1520" y2="1520" x1="1440" />
            <wire x2="928" y1="1408" y2="1584" x1="928" />
            <wire x2="928" y1="1584" y2="2080" x1="928" />
            <wire x2="1040" y1="2080" y2="2080" x1="928" />
            <wire x2="1024" y1="1584" y2="1584" x1="928" />
            <wire x2="1456" y1="1312" y2="1312" x1="1440" />
            <wire x2="1440" y1="1312" y2="1408" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="2656" y="1616" name="Qd" orien="R0" />
        <iomarker fontsize="28" x="2656" y="1280" name="Qc" orien="R0" />
        <iomarker fontsize="28" x="2656" y="928" name="Qb" orien="R0" />
        <iomarker fontsize="28" x="2656" y="560" name="Qa" orien="R0" />
        <iomarker fontsize="28" x="2656" y="2048" name="Rc" orien="R0" />
        <iomarker fontsize="28" x="528" y="688" name="clk" orien="R180" />
    </sheet>
</drawing>