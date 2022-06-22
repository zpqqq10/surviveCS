<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="AN(3:0)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="seg(7:0)" />
        <signal name="seg(7)" />
        <signal name="seg(6)" />
        <signal name="seg(5)" />
        <signal name="seg(4)" />
        <signal name="seg(3)" />
        <signal name="seg(2)" />
        <signal name="seg(1)" />
        <signal name="seg(0)" />
        <signal name="Scan(2:0)" />
        <signal name="Hexs(31:0)" />
        <signal name="point(7:0)" />
        <signal name="LES(7:0)" />
        <signal name="Hex(3:0)" />
        <signal name="Hex(3)" />
        <signal name="Hex(2)" />
        <signal name="Hex(1)" />
        <signal name="Hex(0)" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="flash" />
        <signal name="XLXN_33(7:0)" />
        <signal name="XLXN_34" />
        <signal name="SW0" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Input" name="Scan(2:0)" />
        <port polarity="Input" name="Hexs(31:0)" />
        <port polarity="Input" name="point(7:0)" />
        <port polarity="Input" name="LES(7:0)" />
        <port polarity="Input" name="flash" />
        <port polarity="Input" name="SW0" />
        <blockdef name="ScanSync">
            <timestamp>2020-11-12T3:37:11</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MC14495_ZJU">
            <timestamp>2020-10-27T1:43:53</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Seg_map">
            <timestamp>2020-11-24T4:57:23</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="MUX2T1_8">
            <timestamp>2020-11-11T0:49:58</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <block symbolname="ScanSync" name="XLXI_1">
            <blockpin signalname="LES(7:0)" name="LES(7:0)" />
            <blockpin signalname="point(7:0)" name="point(7:0)" />
            <blockpin signalname="Hexs(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="Scan(2:0)" name="Scan(2:0)" />
            <blockpin signalname="Hex(3:0)" name="Hexo(3:0)" />
            <blockpin signalname="XLXN_32" name="LE" />
            <blockpin signalname="XLXN_30" name="p" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
        <block symbolname="MC14495_ZJU" name="XLXI_2">
            <blockpin signalname="Hex(0)" name="D0" />
            <blockpin signalname="Hex(1)" name="D1" />
            <blockpin signalname="Hex(2)" name="D2" />
            <blockpin signalname="Hex(3)" name="D3" />
            <blockpin signalname="XLXN_31" name="LE" />
            <blockpin signalname="XLXN_30" name="point" />
            <blockpin signalname="seg(0)" name="a" />
            <blockpin signalname="seg(1)" name="b" />
            <blockpin signalname="seg(2)" name="c" />
            <blockpin signalname="seg(3)" name="d" />
            <blockpin signalname="seg(4)" name="e" />
            <blockpin signalname="seg(5)" name="f" />
            <blockpin signalname="seg(6)" name="g" />
            <blockpin signalname="seg(7)" name="p" />
        </block>
        <block symbolname="Seg_map" name="XLXI_3">
            <blockpin signalname="Hexs(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="Scan(2:0)" name="Scan(2:0)" />
            <blockpin signalname="XLXN_33(7:0)" name="Segg_map(7:0)" />
        </block>
        <block symbolname="MUX2T1_8" name="XLXI_4">
            <blockpin signalname="XLXN_34" name="s" />
            <blockpin signalname="XLXN_33(7:0)" name="I0(7:0)" />
            <blockpin signalname="seg(7:0)" name="I1(7:0)" />
            <blockpin signalname="SEGMENT(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="XLXN_32" name="I0" />
            <blockpin signalname="flash" name="I1" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="SW0" name="I" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="672" y="1488" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1968" y="976" name="XLXI_2" orien="R0">
        </instance>
        <instance x="864" y="2000" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2192" y="1824" name="XLXI_4" orien="R0">
        </instance>
        <branch name="AN(3:0)">
            <wire x2="3024" y1="1456" y2="1456" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="3024" y="1456" name="AN(3:0)" orien="R0" />
        <branch name="SEGMENT(7:0)">
            <wire x2="2880" y1="1664" y2="1664" x1="2576" />
        </branch>
        <iomarker fontsize="28" x="2880" y="1664" name="SEGMENT(7:0)" orien="R0" />
        <branch name="seg(7:0)">
            <wire x2="2192" y1="1792" y2="1792" x1="2128" />
            <wire x2="2128" y1="1792" y2="1904" x1="2128" />
            <wire x2="2624" y1="1904" y2="1904" x1="2128" />
            <wire x2="2528" y1="496" y2="560" x1="2528" />
            <wire x2="2528" y1="560" y2="624" x1="2528" />
            <wire x2="2528" y1="624" y2="688" x1="2528" />
            <wire x2="2528" y1="688" y2="704" x1="2528" />
            <wire x2="2528" y1="704" y2="720" x1="2528" />
            <wire x2="2624" y1="720" y2="720" x1="2528" />
            <wire x2="2624" y1="720" y2="1904" x1="2624" />
            <wire x2="2528" y1="720" y2="752" x1="2528" />
            <wire x2="2528" y1="752" y2="816" x1="2528" />
            <wire x2="2528" y1="816" y2="880" x1="2528" />
            <wire x2="2528" y1="880" y2="944" x1="2528" />
        </branch>
        <bustap x2="2432" y1="944" y2="944" x1="2528" />
        <branch name="seg(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2392" y="944" type="branch" />
            <wire x2="2400" y1="944" y2="944" x1="2352" />
            <wire x2="2432" y1="944" y2="944" x1="2400" />
        </branch>
        <bustap x2="2432" y1="880" y2="880" x1="2528" />
        <branch name="seg(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2392" y="880" type="branch" />
            <wire x2="2400" y1="880" y2="880" x1="2352" />
            <wire x2="2432" y1="880" y2="880" x1="2400" />
        </branch>
        <bustap x2="2432" y1="816" y2="816" x1="2528" />
        <branch name="seg(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2392" y="816" type="branch" />
            <wire x2="2400" y1="816" y2="816" x1="2352" />
            <wire x2="2432" y1="816" y2="816" x1="2400" />
        </branch>
        <bustap x2="2432" y1="752" y2="752" x1="2528" />
        <branch name="seg(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2392" y="752" type="branch" />
            <wire x2="2400" y1="752" y2="752" x1="2352" />
            <wire x2="2432" y1="752" y2="752" x1="2400" />
        </branch>
        <bustap x2="2432" y1="688" y2="688" x1="2528" />
        <branch name="seg(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2392" y="688" type="branch" />
            <wire x2="2400" y1="688" y2="688" x1="2352" />
            <wire x2="2432" y1="688" y2="688" x1="2400" />
        </branch>
        <bustap x2="2432" y1="624" y2="624" x1="2528" />
        <branch name="seg(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2392" y="624" type="branch" />
            <wire x2="2400" y1="624" y2="624" x1="2352" />
            <wire x2="2432" y1="624" y2="624" x1="2400" />
        </branch>
        <bustap x2="2432" y1="560" y2="560" x1="2528" />
        <branch name="seg(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2392" y="560" type="branch" />
            <wire x2="2400" y1="560" y2="560" x1="2352" />
            <wire x2="2432" y1="560" y2="560" x1="2400" />
        </branch>
        <bustap x2="2432" y1="496" y2="496" x1="2528" />
        <branch name="seg(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2392" y="496" type="branch" />
            <wire x2="2400" y1="496" y2="496" x1="2352" />
            <wire x2="2432" y1="496" y2="496" x1="2400" />
        </branch>
        <branch name="Scan(2:0)">
            <wire x2="560" y1="1456" y2="1456" x1="384" />
            <wire x2="672" y1="1456" y2="1456" x1="560" />
            <wire x2="560" y1="1456" y2="1968" x1="560" />
            <wire x2="864" y1="1968" y2="1968" x1="560" />
        </branch>
        <branch name="Hexs(31:0)">
            <wire x2="496" y1="1392" y2="1392" x1="384" />
            <wire x2="672" y1="1392" y2="1392" x1="496" />
            <wire x2="496" y1="1392" y2="1904" x1="496" />
            <wire x2="864" y1="1904" y2="1904" x1="496" />
        </branch>
        <branch name="point(7:0)">
            <wire x2="672" y1="1328" y2="1328" x1="384" />
        </branch>
        <branch name="LES(7:0)">
            <wire x2="672" y1="1264" y2="1264" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="1264" name="LES(7:0)" orien="R180" />
        <iomarker fontsize="28" x="384" y="1328" name="point(7:0)" orien="R180" />
        <iomarker fontsize="28" x="384" y="1392" name="Hexs(31:0)" orien="R180" />
        <iomarker fontsize="28" x="384" y="1456" name="Scan(2:0)" orien="R180" />
        <branch name="Hex(3:0)">
            <wire x2="1632" y1="1264" y2="1264" x1="1056" />
            <wire x2="1632" y1="496" y2="576" x1="1632" />
            <wire x2="1632" y1="576" y2="656" x1="1632" />
            <wire x2="1632" y1="656" y2="736" x1="1632" />
            <wire x2="1632" y1="736" y2="1264" x1="1632" />
        </branch>
        <bustap x2="1728" y1="736" y2="736" x1="1632" />
        <branch name="Hex(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1848" y="736" type="branch" />
            <wire x2="1856" y1="736" y2="736" x1="1728" />
            <wire x2="1968" y1="736" y2="736" x1="1856" />
        </branch>
        <bustap x2="1728" y1="656" y2="656" x1="1632" />
        <branch name="Hex(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1848" y="656" type="branch" />
            <wire x2="1856" y1="656" y2="656" x1="1728" />
            <wire x2="1968" y1="656" y2="656" x1="1856" />
        </branch>
        <bustap x2="1728" y1="576" y2="576" x1="1632" />
        <branch name="Hex(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1848" y="576" type="branch" />
            <wire x2="1856" y1="576" y2="576" x1="1728" />
            <wire x2="1968" y1="576" y2="576" x1="1856" />
        </branch>
        <bustap x2="1728" y1="496" y2="496" x1="1632" />
        <branch name="Hex(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1848" y="496" type="branch" />
            <wire x2="1856" y1="496" y2="496" x1="1728" />
            <wire x2="1968" y1="496" y2="496" x1="1856" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1504" y1="1392" y2="1392" x1="1056" />
            <wire x2="1504" y1="896" y2="1392" x1="1504" />
            <wire x2="1968" y1="896" y2="896" x1="1504" />
        </branch>
        <instance x="1296" y="912" name="XLXI_11" orien="R0" />
        <branch name="XLXN_31">
            <wire x2="1968" y1="816" y2="816" x1="1552" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1168" y1="1328" y2="1328" x1="1056" />
            <wire x2="1168" y1="848" y2="1328" x1="1168" />
            <wire x2="1296" y1="848" y2="848" x1="1168" />
        </branch>
        <branch name="flash">
            <wire x2="1296" y1="784" y2="784" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="784" name="flash" orien="R180" />
        <branch name="XLXN_33(7:0)">
            <wire x2="1712" y1="2032" y2="2032" x1="1248" />
            <wire x2="1712" y1="1728" y2="2032" x1="1712" />
            <wire x2="2192" y1="1728" y2="1728" x1="1712" />
        </branch>
        <instance x="1840" y="1696" name="XLXI_12" orien="R0" />
        <branch name="XLXN_34">
            <wire x2="2192" y1="1664" y2="1664" x1="2064" />
        </branch>
        <branch name="SW0">
            <wire x2="1840" y1="1664" y2="1664" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1760" y="1664" name="SW0" orien="R180" />
    </sheet>
</drawing>