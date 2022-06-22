<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="NA" />
        <signal name="XLXN_2" />
        <signal name="A" />
        <signal name="B" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="NB" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="C" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="G" />
        <signal name="NG" />
        <signal name="G2A" />
        <signal name="G2B" />
        <signal name="XLXN_23" />
        <signal name="Y(7:0)" />
        <signal name="Y(0)" />
        <signal name="Y(1)" />
        <signal name="Y(2)" />
        <signal name="Y(3)" />
        <signal name="Y(4)" />
        <signal name="Y(5)" />
        <signal name="Y(6)" />
        <signal name="Y(7)" />
        <signal name="XLXN_35" />
        <signal name="EN" />
        <signal name="XLXN_37" />
        <signal name="NC" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="G" />
        <port polarity="Input" name="G2A" />
        <port polarity="Input" name="G2B" />
        <port polarity="Output" name="Y(7:0)" />
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <block symbolname="nand3" name="XLXI_1">
            <blockpin signalname="EN" name="I0" />
            <blockpin signalname="NC" name="I1" />
            <blockpin signalname="XLXN_11" name="I2" />
            <blockpin signalname="Y(0)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_2">
            <blockpin signalname="EN" name="I0" />
            <blockpin signalname="NC" name="I1" />
            <blockpin signalname="XLXN_13" name="I2" />
            <blockpin signalname="Y(1)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_3">
            <blockpin signalname="EN" name="I0" />
            <blockpin signalname="NC" name="I1" />
            <blockpin signalname="XLXN_16" name="I2" />
            <blockpin signalname="Y(2)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_4">
            <blockpin signalname="EN" name="I0" />
            <blockpin signalname="NC" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="Y(3)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_5">
            <blockpin signalname="EN" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_11" name="I2" />
            <blockpin signalname="Y(4)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_6">
            <blockpin signalname="EN" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_13" name="I2" />
            <blockpin signalname="Y(5)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_7">
            <blockpin signalname="EN" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_16" name="I2" />
            <blockpin signalname="Y(6)" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_8">
            <blockpin signalname="EN" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="Y(7)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="NB" name="I0" />
            <blockpin signalname="NA" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="NB" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="NA" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_13">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="NC" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="NA" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="NB" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="G" name="I" />
            <blockpin signalname="NG" name="O" />
        </block>
        <block symbolname="nor3" name="XLXI_18">
            <blockpin signalname="G2B" name="I0" />
            <blockpin signalname="G2A" name="I1" />
            <blockpin signalname="NG" name="I2" />
            <blockpin signalname="EN" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2304" y="320" name="XLXI_1" orien="R0" />
        <instance x="2304" y="608" name="XLXI_2" orien="R0" />
        <instance x="2304" y="912" name="XLXI_3" orien="R0" />
        <instance x="2304" y="1184" name="XLXI_4" orien="R0" />
        <instance x="2304" y="1456" name="XLXI_5" orien="R0" />
        <instance x="2304" y="1728" name="XLXI_6" orien="R0" />
        <instance x="2304" y="2000" name="XLXI_7" orien="R0" />
        <instance x="2304" y="2288" name="XLXI_8" orien="R0" />
        <instance x="1520" y="272" name="XLXI_9" orien="R0" />
        <instance x="1504" y="544" name="XLXI_10" orien="R0" />
        <instance x="1504" y="816" name="XLXI_11" orien="R0" />
        <instance x="1504" y="1088" name="XLXI_12" orien="R0" />
        <instance x="1504" y="1312" name="XLXI_13" orien="R0" />
        <instance x="832" y="240" name="XLXI_14" orien="R0" />
        <instance x="848" y="672" name="XLXI_16" orien="R0" />
        <instance x="560" y="2016" name="XLXI_17" orien="R0" />
        <instance x="1136" y="2288" name="XLXI_18" orien="R0" />
        <branch name="NA">
            <wire x2="1280" y1="208" y2="208" x1="1056" />
            <wire x2="1280" y1="208" y2="688" x1="1280" />
            <wire x2="1504" y1="688" y2="688" x1="1280" />
            <wire x2="1280" y1="144" y2="208" x1="1280" />
            <wire x2="1520" y1="144" y2="144" x1="1280" />
        </branch>
        <branch name="A">
            <wire x2="704" y1="304" y2="304" x1="544" />
            <wire x2="704" y1="304" y2="416" x1="704" />
            <wire x2="1312" y1="416" y2="416" x1="704" />
            <wire x2="1504" y1="416" y2="416" x1="1312" />
            <wire x2="1312" y1="416" y2="960" x1="1312" />
            <wire x2="1504" y1="960" y2="960" x1="1312" />
            <wire x2="832" y1="208" y2="208" x1="704" />
            <wire x2="704" y1="208" y2="304" x1="704" />
        </branch>
        <iomarker fontsize="28" x="544" y="304" name="A" orien="R180" />
        <branch name="B">
            <wire x2="704" y1="736" y2="736" x1="544" />
            <wire x2="704" y1="736" y2="752" x1="704" />
            <wire x2="1152" y1="752" y2="752" x1="704" />
            <wire x2="1504" y1="752" y2="752" x1="1152" />
            <wire x2="1152" y1="752" y2="1024" x1="1152" />
            <wire x2="1504" y1="1024" y2="1024" x1="1152" />
            <wire x2="848" y1="640" y2="640" x1="704" />
            <wire x2="704" y1="640" y2="736" x1="704" />
        </branch>
        <iomarker fontsize="28" x="544" y="736" name="B" orien="R180" />
        <branch name="NB">
            <wire x2="1296" y1="640" y2="640" x1="1072" />
            <wire x2="1392" y1="640" y2="640" x1="1296" />
            <wire x2="1296" y1="208" y2="640" x1="1296" />
            <wire x2="1520" y1="208" y2="208" x1="1296" />
            <wire x2="1392" y1="480" y2="640" x1="1392" />
            <wire x2="1504" y1="480" y2="480" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="544" y="1424" name="C" orien="R180" />
        <branch name="XLXN_11">
            <wire x2="2032" y1="176" y2="176" x1="1776" />
            <wire x2="2032" y1="176" y2="1264" x1="2032" />
            <wire x2="2304" y1="1264" y2="1264" x1="2032" />
            <wire x2="2032" y1="128" y2="176" x1="2032" />
            <wire x2="2304" y1="128" y2="128" x1="2032" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2016" y1="448" y2="448" x1="1760" />
            <wire x2="2016" y1="448" y2="1536" x1="2016" />
            <wire x2="2304" y1="1536" y2="1536" x1="2016" />
            <wire x2="2016" y1="416" y2="448" x1="2016" />
            <wire x2="2304" y1="416" y2="416" x1="2016" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1968" y1="720" y2="720" x1="1760" />
            <wire x2="2304" y1="720" y2="720" x1="1968" />
            <wire x2="1968" y1="720" y2="1808" x1="1968" />
            <wire x2="2304" y1="1808" y2="1808" x1="1968" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1936" y1="992" y2="992" x1="1760" />
            <wire x2="2304" y1="992" y2="992" x1="1936" />
            <wire x2="1936" y1="992" y2="2096" x1="1936" />
            <wire x2="2304" y1="2096" y2="2096" x1="1936" />
        </branch>
        <branch name="G">
            <wire x2="560" y1="1984" y2="1984" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="1984" name="G" orien="R180" />
        <branch name="NG">
            <wire x2="1136" y1="1984" y2="1984" x1="784" />
            <wire x2="1136" y1="1984" y2="2096" x1="1136" />
        </branch>
        <branch name="G2A">
            <wire x2="1136" y1="2160" y2="2160" x1="528" />
        </branch>
        <iomarker fontsize="28" x="528" y="2160" name="G2A" orien="R180" />
        <branch name="G2B">
            <wire x2="1136" y1="2224" y2="2224" x1="528" />
        </branch>
        <iomarker fontsize="28" x="528" y="2224" name="G2B" orien="R180" />
        <branch name="Y(7:0)">
            <wire x2="2848" y1="64" y2="192" x1="2848" />
            <wire x2="2848" y1="192" y2="480" x1="2848" />
            <wire x2="2848" y1="480" y2="784" x1="2848" />
            <wire x2="2848" y1="784" y2="1056" x1="2848" />
            <wire x2="2848" y1="1056" y2="1184" x1="2848" />
            <wire x2="2848" y1="1184" y2="1328" x1="2848" />
            <wire x2="2848" y1="1328" y2="1600" x1="2848" />
            <wire x2="2848" y1="1600" y2="1872" x1="2848" />
            <wire x2="2848" y1="1872" y2="2160" x1="2848" />
            <wire x2="2848" y1="2160" y2="2304" x1="2848" />
            <wire x2="3072" y1="1184" y2="1184" x1="2848" />
        </branch>
        <bustap x2="2752" y1="192" y2="192" x1="2848" />
        <branch name="Y(0)">
            <wire x2="2752" y1="192" y2="192" x1="2560" />
        </branch>
        <bustap x2="2752" y1="480" y2="480" x1="2848" />
        <bustap x2="2752" y1="784" y2="784" x1="2848" />
        <bustap x2="2752" y1="1056" y2="1056" x1="2848" />
        <bustap x2="2752" y1="1328" y2="1328" x1="2848" />
        <bustap x2="2752" y1="1600" y2="1600" x1="2848" />
        <bustap x2="2752" y1="1872" y2="1872" x1="2848" />
        <bustap x2="2752" y1="2160" y2="2160" x1="2848" />
        <branch name="Y(1)">
            <wire x2="2752" y1="480" y2="480" x1="2560" />
        </branch>
        <branch name="Y(2)">
            <wire x2="2752" y1="784" y2="784" x1="2560" />
        </branch>
        <branch name="Y(3)">
            <wire x2="2752" y1="1056" y2="1056" x1="2560" />
        </branch>
        <branch name="Y(4)">
            <wire x2="2752" y1="1328" y2="1328" x1="2560" />
        </branch>
        <branch name="Y(5)">
            <wire x2="2752" y1="1600" y2="1600" x1="2560" />
        </branch>
        <branch name="Y(6)">
            <wire x2="2752" y1="1872" y2="1872" x1="2560" />
        </branch>
        <branch name="Y(7)">
            <wire x2="2752" y1="2160" y2="2160" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="3072" y="1184" name="Y(7:0)" orien="R0" />
        <branch name="C">
            <wire x2="1008" y1="1424" y2="1424" x1="544" />
            <wire x2="1648" y1="1424" y2="1424" x1="1008" />
            <wire x2="1920" y1="1424" y2="1424" x1="1648" />
            <wire x2="1920" y1="1424" y2="1600" x1="1920" />
            <wire x2="2304" y1="1600" y2="1600" x1="1920" />
            <wire x2="1920" y1="1600" y2="1872" x1="1920" />
            <wire x2="1920" y1="1872" y2="2160" x1="1920" />
            <wire x2="2304" y1="2160" y2="2160" x1="1920" />
            <wire x2="2304" y1="1872" y2="1872" x1="1920" />
            <wire x2="1504" y1="1280" y2="1280" x1="1008" />
            <wire x2="1008" y1="1280" y2="1424" x1="1008" />
            <wire x2="1648" y1="1328" y2="1424" x1="1648" />
            <wire x2="2304" y1="1328" y2="1328" x1="1648" />
        </branch>
        <branch name="EN">
            <wire x2="1840" y1="2160" y2="2160" x1="1392" />
            <wire x2="1840" y1="2160" y2="2224" x1="1840" />
            <wire x2="2192" y1="2224" y2="2224" x1="1840" />
            <wire x2="2304" y1="2224" y2="2224" x1="2192" />
            <wire x2="2304" y1="256" y2="256" x1="2192" />
            <wire x2="2192" y1="256" y2="544" x1="2192" />
            <wire x2="2192" y1="544" y2="848" x1="2192" />
            <wire x2="2192" y1="848" y2="1120" x1="2192" />
            <wire x2="2192" y1="1120" y2="1392" x1="2192" />
            <wire x2="2192" y1="1392" y2="1664" x1="2192" />
            <wire x2="2192" y1="1664" y2="1936" x1="2192" />
            <wire x2="2192" y1="1936" y2="2224" x1="2192" />
            <wire x2="2304" y1="1936" y2="1936" x1="2192" />
            <wire x2="2304" y1="1664" y2="1664" x1="2192" />
            <wire x2="2304" y1="1392" y2="1392" x1="2192" />
            <wire x2="2304" y1="1120" y2="1120" x1="2192" />
            <wire x2="2304" y1="848" y2="848" x1="2192" />
            <wire x2="2304" y1="544" y2="544" x1="2192" />
        </branch>
        <branch name="NC">
            <wire x2="2000" y1="1280" y2="1280" x1="1728" />
            <wire x2="2304" y1="192" y2="192" x1="2000" />
            <wire x2="2000" y1="192" y2="480" x1="2000" />
            <wire x2="2304" y1="480" y2="480" x1="2000" />
            <wire x2="2000" y1="480" y2="784" x1="2000" />
            <wire x2="2000" y1="784" y2="1056" x1="2000" />
            <wire x2="2000" y1="1056" y2="1280" x1="2000" />
            <wire x2="2304" y1="1056" y2="1056" x1="2000" />
            <wire x2="2304" y1="784" y2="784" x1="2000" />
        </branch>
    </sheet>
</drawing>