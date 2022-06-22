<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_5" />
        <signal name="XLXN_11" />
        <signal name="XLXN_1" />
        <signal name="Ci" />
        <signal name="P0" />
        <signal name="XLXN_16" />
        <signal name="G0" />
        <signal name="C1" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="G1" />
        <signal name="P1" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="G2" />
        <signal name="P2" />
        <signal name="C2" />
        <signal name="C3" />
        <signal name="GP" />
        <signal name="GG" />
        <signal name="P3" />
        <signal name="G3" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <port polarity="Input" name="Ci" />
        <port polarity="Input" name="P0" />
        <port polarity="Input" name="G0" />
        <port polarity="Output" name="C1" />
        <port polarity="Input" name="G1" />
        <port polarity="Input" name="P1" />
        <port polarity="Input" name="G2" />
        <port polarity="Input" name="P2" />
        <port polarity="Output" name="C2" />
        <port polarity="Output" name="C3" />
        <port polarity="Output" name="GP" />
        <port polarity="Output" name="GG" />
        <port polarity="Input" name="P3" />
        <port polarity="Input" name="G3" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
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
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="P0" name="I0" />
            <blockpin signalname="Ci" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_2">
            <blockpin signalname="G0" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="C1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_3">
            <blockpin signalname="P1" name="I0" />
            <blockpin signalname="P0" name="I1" />
            <blockpin signalname="Ci" name="I2" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="G0" name="I0" />
            <blockpin signalname="P1" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_5">
            <blockpin signalname="G1" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_9" name="I2" />
            <blockpin signalname="C2" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_6">
            <blockpin signalname="P2" name="I0" />
            <blockpin signalname="P1" name="I1" />
            <blockpin signalname="P0" name="I2" />
            <blockpin signalname="Ci" name="I3" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_7">
            <blockpin signalname="P2" name="I0" />
            <blockpin signalname="P1" name="I1" />
            <blockpin signalname="G0" name="I2" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="P2" name="I0" />
            <blockpin signalname="G1" name="I1" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_9">
            <blockpin signalname="P3" name="I0" />
            <blockpin signalname="P2" name="I1" />
            <blockpin signalname="P1" name="I2" />
            <blockpin signalname="P0" name="I3" />
            <blockpin signalname="GP" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_10">
            <blockpin signalname="P3" name="I0" />
            <blockpin signalname="P2" name="I1" />
            <blockpin signalname="P1" name="I2" />
            <blockpin signalname="G0" name="I3" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_11">
            <blockpin signalname="P3" name="I0" />
            <blockpin signalname="P2" name="I1" />
            <blockpin signalname="G1" name="I2" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="P3" name="I0" />
            <blockpin signalname="G2" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_24">
            <blockpin signalname="G2" name="I0" />
            <blockpin signalname="XLXN_28" name="I1" />
            <blockpin signalname="XLXN_27" name="I2" />
            <blockpin signalname="XLXN_26" name="I3" />
            <blockpin signalname="C3" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_25">
            <blockpin signalname="G3" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_23" name="I2" />
            <blockpin signalname="XLXN_24" name="I3" />
            <blockpin signalname="GG" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1520" y="336" name="XLXI_1" orien="R0" />
        <instance x="1968" y="368" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1968" y1="240" y2="240" x1="1776" />
        </branch>
        <branch name="Ci">
            <wire x2="1440" y1="208" y2="208" x1="992" />
            <wire x2="1520" y1="208" y2="208" x1="1440" />
            <wire x2="1440" y1="208" y2="448" x1="1440" />
            <wire x2="1440" y1="448" y2="896" x1="1440" />
            <wire x2="1520" y1="896" y2="896" x1="1440" />
            <wire x2="1520" y1="448" y2="448" x1="1440" />
        </branch>
        <branch name="P0">
            <wire x2="1376" y1="272" y2="272" x1="992" />
            <wire x2="1520" y1="272" y2="272" x1="1376" />
            <wire x2="1376" y1="272" y2="512" x1="1376" />
            <wire x2="1376" y1="512" y2="960" x1="1376" />
            <wire x2="1376" y1="960" y2="1648" x1="1376" />
            <wire x2="1520" y1="1648" y2="1648" x1="1376" />
            <wire x2="1520" y1="960" y2="960" x1="1376" />
            <wire x2="1520" y1="512" y2="512" x1="1376" />
        </branch>
        <branch name="G0">
            <wire x2="1312" y1="352" y2="352" x1="992" />
            <wire x2="1872" y1="352" y2="352" x1="1312" />
            <wire x2="1312" y1="352" y2="736" x1="1312" />
            <wire x2="1312" y1="736" y2="1168" x1="1312" />
            <wire x2="1312" y1="1168" y2="1936" x1="1312" />
            <wire x2="1520" y1="1936" y2="1936" x1="1312" />
            <wire x2="1520" y1="1168" y2="1168" x1="1312" />
            <wire x2="1520" y1="736" y2="736" x1="1312" />
            <wire x2="1968" y1="304" y2="304" x1="1872" />
            <wire x2="1872" y1="304" y2="352" x1="1872" />
        </branch>
        <branch name="C1">
            <wire x2="2480" y1="272" y2="272" x1="2224" />
        </branch>
        <instance x="1520" y="640" name="XLXI_3" orien="R0" />
        <instance x="1520" y="800" name="XLXI_4" orien="R0" />
        <instance x="1968" y="832" name="XLXI_5" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1968" y1="704" y2="704" x1="1776" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1968" y1="512" y2="512" x1="1776" />
            <wire x2="1968" y1="512" y2="640" x1="1968" />
        </branch>
        <branch name="G1">
            <wire x2="1200" y1="816" y2="816" x1="992" />
            <wire x2="1888" y1="816" y2="816" x1="1200" />
            <wire x2="1968" y1="816" y2="816" x1="1888" />
            <wire x2="1200" y1="816" y2="1392" x1="1200" />
            <wire x2="1200" y1="1392" y2="2208" x1="1200" />
            <wire x2="1520" y1="2208" y2="2208" x1="1200" />
            <wire x2="1520" y1="1392" y2="1392" x1="1200" />
            <wire x2="1968" y1="768" y2="816" x1="1968" />
        </branch>
        <branch name="P1">
            <wire x2="1248" y1="576" y2="576" x1="992" />
            <wire x2="1520" y1="576" y2="576" x1="1248" />
            <wire x2="1248" y1="576" y2="672" x1="1248" />
            <wire x2="1248" y1="672" y2="1024" x1="1248" />
            <wire x2="1248" y1="1024" y2="1232" x1="1248" />
            <wire x2="1248" y1="1232" y2="1712" x1="1248" />
            <wire x2="1248" y1="1712" y2="2000" x1="1248" />
            <wire x2="1520" y1="2000" y2="2000" x1="1248" />
            <wire x2="1520" y1="1712" y2="1712" x1="1248" />
            <wire x2="1520" y1="1232" y2="1232" x1="1248" />
            <wire x2="1520" y1="1024" y2="1024" x1="1248" />
            <wire x2="1520" y1="672" y2="672" x1="1248" />
        </branch>
        <instance x="1520" y="1152" name="XLXI_6" orien="R0" />
        <instance x="1520" y="1360" name="XLXI_7" orien="R0" />
        <instance x="1520" y="1520" name="XLXI_8" orien="R0" />
        <instance x="1520" y="1904" name="XLXI_9" orien="R0" />
        <instance x="1520" y="2192" name="XLXI_10" orien="R0" />
        <instance x="1520" y="2400" name="XLXI_11" orien="R0" />
        <iomarker fontsize="28" x="992" y="208" name="Ci" orien="R180" />
        <iomarker fontsize="28" x="992" y="272" name="P0" orien="R180" />
        <iomarker fontsize="28" x="992" y="352" name="G0" orien="R180" />
        <iomarker fontsize="28" x="2480" y="272" name="C1" orien="R0" />
        <iomarker fontsize="28" x="992" y="816" name="G1" orien="R180" />
        <iomarker fontsize="28" x="992" y="576" name="P1" orien="R180" />
        <instance x="1520" y="2544" name="XLXI_23" orien="R0" />
        <instance x="1968" y="1424" name="XLXI_24" orien="R0" />
        <instance x="1984" y="2464" name="XLXI_25" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="1984" y1="2272" y2="2272" x1="1776" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1984" y1="2032" y2="2032" x1="1776" />
            <wire x2="1984" y1="2032" y2="2208" x1="1984" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1872" y1="2448" y2="2448" x1="1776" />
            <wire x2="1872" y1="2336" y2="2448" x1="1872" />
            <wire x2="1984" y1="2336" y2="2336" x1="1872" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1968" y1="992" y2="992" x1="1776" />
            <wire x2="1968" y1="992" y2="1168" x1="1968" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1968" y1="1232" y2="1232" x1="1776" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1872" y1="1424" y2="1424" x1="1776" />
            <wire x2="1872" y1="1296" y2="1424" x1="1872" />
            <wire x2="1968" y1="1296" y2="1296" x1="1872" />
        </branch>
        <branch name="G2">
            <wire x2="1104" y1="1536" y2="1536" x1="992" />
            <wire x2="1904" y1="1536" y2="1536" x1="1104" />
            <wire x2="1968" y1="1536" y2="1536" x1="1904" />
            <wire x2="1104" y1="1536" y2="2416" x1="1104" />
            <wire x2="1520" y1="2416" y2="2416" x1="1104" />
            <wire x2="1968" y1="1360" y2="1536" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="992" y="1536" name="G2" orien="R180" />
        <branch name="P2">
            <wire x2="1152" y1="1088" y2="1088" x1="992" />
            <wire x2="1520" y1="1088" y2="1088" x1="1152" />
            <wire x2="1152" y1="1088" y2="1296" x1="1152" />
            <wire x2="1152" y1="1296" y2="1456" x1="1152" />
            <wire x2="1152" y1="1456" y2="1776" x1="1152" />
            <wire x2="1152" y1="1776" y2="2064" x1="1152" />
            <wire x2="1152" y1="2064" y2="2272" x1="1152" />
            <wire x2="1520" y1="2272" y2="2272" x1="1152" />
            <wire x2="1520" y1="2064" y2="2064" x1="1152" />
            <wire x2="1520" y1="1776" y2="1776" x1="1152" />
            <wire x2="1520" y1="1456" y2="1456" x1="1152" />
            <wire x2="1520" y1="1296" y2="1296" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="992" y="1088" name="P2" orien="R180" />
        <branch name="C2">
            <wire x2="2480" y1="704" y2="704" x1="2224" />
        </branch>
        <branch name="C3">
            <wire x2="2464" y1="1264" y2="1264" x1="2224" />
        </branch>
        <branch name="GP">
            <wire x2="2464" y1="1744" y2="1744" x1="1776" />
        </branch>
        <branch name="GG">
            <wire x2="2448" y1="2304" y2="2304" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2448" y="2304" name="GG" orien="R0" />
        <iomarker fontsize="28" x="2464" y="1744" name="GP" orien="R0" />
        <iomarker fontsize="28" x="2464" y="1264" name="C3" orien="R0" />
        <iomarker fontsize="28" x="2480" y="704" name="C2" orien="R0" />
        <branch name="P3">
            <wire x2="1056" y1="1840" y2="1840" x1="992" />
            <wire x2="1520" y1="1840" y2="1840" x1="1056" />
            <wire x2="1056" y1="1840" y2="2128" x1="1056" />
            <wire x2="1056" y1="2128" y2="2336" x1="1056" />
            <wire x2="1056" y1="2336" y2="2480" x1="1056" />
            <wire x2="1520" y1="2480" y2="2480" x1="1056" />
            <wire x2="1520" y1="2336" y2="2336" x1="1056" />
            <wire x2="1520" y1="2128" y2="2128" x1="1056" />
        </branch>
        <branch name="G3">
            <wire x2="1920" y1="2560" y2="2560" x1="992" />
            <wire x2="1984" y1="2560" y2="2560" x1="1920" />
            <wire x2="1984" y1="2400" y2="2560" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="992" y="1840" name="P3" orien="R180" />
        <iomarker fontsize="28" x="992" y="2560" name="G3" orien="R180" />
    </sheet>
</drawing>