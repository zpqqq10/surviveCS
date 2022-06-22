<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Hex(3:0)" />
        <signal name="Hex(0)" />
        <signal name="Hex(1)" />
        <signal name="Hex(2)" />
        <signal name="Hex(3)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="AN(3:0)" />
        <signal name="SW(7:0)" />
        <signal name="SW(3:0)" />
        <signal name="SW(7:4)" />
        <signal name="XLXN_12" />
        <signal name="clk_100mhz" />
        <signal name="RSTN" />
        <signal name="clkdiv(31:0)" />
        <signal name="clkdiv(18:17)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="SEGMENT(7)" />
        <signal name="SEGMENT(6)" />
        <signal name="SEGMENT(5)" />
        <signal name="SEGMENT(4)" />
        <signal name="SEGMENT(3)" />
        <signal name="SEGMENT(2)" />
        <signal name="SEGMENT(1)" />
        <signal name="SEGMENT(0)" />
        <signal name="V5" />
        <signal name="G0" />
        <signal name="G0,V5,G0,G0,G0,G0,V5,V5,G0,G0,V5,G0,G0,G0,G0,V5" />
        <signal name="Buzzer" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Input" name="clk_100mhz" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Output" name="Buzzer" />
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
        <blockdef name="clkdiv">
            <timestamp>2019-10-16T16:0:0</timestamp>
            <rect width="192" x="32" y="-120" height="120" />
            <line x2="0" y1="-96" y2="-96" x1="32" />
            <line x2="0" y1="-32" y2="-32" x1="32" />
            <line x2="256" y1="-96" y2="-96" style="linewidth:W" x1="224" />
        </blockdef>
        <blockdef name="dispsync">
            <timestamp>2019-10-16T16:0:0</timestamp>
            <rect width="224" x="32" y="-200" height="200" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="288" y1="-32" y2="-32" style="linewidth:W" x1="256" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="288" y1="-80" y2="-80" x1="256" />
            <line x2="288" y1="-176" y2="-176" style="linewidth:W" x1="256" />
            <line x2="0" y1="-128" y2="-128" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="32" />
            <line x2="288" y1="-128" y2="-128" x1="256" />
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
        <block symbolname="MC14495_ZJU" name="M1">
            <blockpin signalname="Hex(0)" name="D0" />
            <blockpin signalname="Hex(1)" name="D1" />
            <blockpin signalname="Hex(2)" name="D2" />
            <blockpin signalname="Hex(3)" name="D3" />
            <blockpin signalname="XLXN_6" name="LE" />
            <blockpin signalname="XLXN_7" name="point" />
            <blockpin signalname="SEGMENT(0)" name="a" />
            <blockpin signalname="SEGMENT(1)" name="b" />
            <blockpin signalname="SEGMENT(2)" name="c" />
            <blockpin signalname="SEGMENT(3)" name="d" />
            <blockpin signalname="SEGMENT(4)" name="e" />
            <blockpin signalname="SEGMENT(5)" name="f" />
            <blockpin signalname="SEGMENT(6)" name="g" />
            <blockpin signalname="SEGMENT(7)" name="p" />
        </block>
        <block symbolname="clkdiv" name="M0">
            <blockpin signalname="clkdiv(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_12" name="rst" />
        </block>
        <block symbolname="dispsync" name="M2">
            <blockpin signalname="SW(7:4)" name="LES(3:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="SW(3:0)" name="point(3:0)" />
            <blockpin signalname="XLXN_7" name="p" />
            <blockpin signalname="Hex(3:0)" name="Hex(3:0)" />
            <blockpin signalname="G0,V5,G0,G0,G0,G0,V5,V5,G0,G0,V5,G0,G0,G0,G0,V5" name="Hexs(15:0)" />
            <blockpin signalname="clkdiv(18:17)" name="Scan(1:0)" />
            <blockpin signalname="XLXN_6" name="LE" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="RSTN" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="G0" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="V5" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1632" y="1152" name="M1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="848" y="768" name="M0" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="848" y="1264" name="M2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="Hex(3:0)">
            <wire x2="1248" y1="1088" y2="1088" x1="1136" />
            <wire x2="1248" y1="624" y2="672" x1="1248" />
            <wire x2="1248" y1="672" y2="752" x1="1248" />
            <wire x2="1248" y1="752" y2="832" x1="1248" />
            <wire x2="1248" y1="832" y2="912" x1="1248" />
            <wire x2="1248" y1="912" y2="1088" x1="1248" />
        </branch>
        <bustap x2="1344" y1="672" y2="672" x1="1248" />
        <branch name="Hex(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1425" y="672" type="branch" />
            <wire x2="1424" y1="672" y2="672" x1="1344" />
            <wire x2="1632" y1="672" y2="672" x1="1424" />
        </branch>
        <bustap x2="1344" y1="752" y2="752" x1="1248" />
        <branch name="Hex(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1431" y="752" type="branch" />
            <wire x2="1424" y1="752" y2="752" x1="1344" />
            <wire x2="1520" y1="752" y2="752" x1="1424" />
            <wire x2="1632" y1="752" y2="752" x1="1520" />
        </branch>
        <bustap x2="1344" y1="832" y2="832" x1="1248" />
        <branch name="Hex(2)">
            <wire x2="1632" y1="832" y2="832" x1="1344" />
        </branch>
        <bustap x2="1344" y1="912" y2="912" x1="1248" />
        <branch name="Hex(3)">
            <wire x2="1632" y1="912" y2="912" x1="1344" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1376" y1="1136" y2="1136" x1="1136" />
            <wire x2="1376" y1="992" y2="1136" x1="1376" />
            <wire x2="1632" y1="992" y2="992" x1="1376" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1392" y1="1184" y2="1184" x1="1136" />
            <wire x2="1392" y1="1072" y2="1184" x1="1392" />
            <wire x2="1632" y1="1072" y2="1072" x1="1392" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="1616" y1="1232" y2="1232" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1616" y="1232" name="AN(3:0)" orien="R0" />
        <branch name="SW(7:0)">
            <wire x2="608" y1="1216" y2="1216" x1="336" />
            <wire x2="608" y1="1216" y2="1232" x1="608" />
            <wire x2="608" y1="1232" y2="1264" x1="608" />
            <wire x2="608" y1="1152" y2="1184" x1="608" />
            <wire x2="608" y1="1184" y2="1216" x1="608" />
        </branch>
        <iomarker fontsize="28" x="336" y="1216" name="SW(7:0)" orien="R180" />
        <bustap x2="704" y1="1184" y2="1184" x1="608" />
        <branch name="SW(3:0)">
            <wire x2="848" y1="1184" y2="1184" x1="704" />
        </branch>
        <bustap x2="704" y1="1232" y2="1232" x1="608" />
        <branch name="SW(7:4)">
            <wire x2="848" y1="1232" y2="1232" x1="704" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="848" y1="736" y2="736" x1="640" />
        </branch>
        <branch name="clk_100mhz">
            <wire x2="848" y1="672" y2="672" x1="336" />
        </branch>
        <instance x="416" y="768" name="XLXI_4" orien="R0" />
        <branch name="RSTN">
            <wire x2="416" y1="736" y2="736" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="672" name="clk_100mhz" orien="R180" />
        <iomarker fontsize="28" x="336" y="736" name="RSTN" orien="R180" />
        <branch name="clkdiv(31:0)">
            <wire x2="432" y1="992" y2="1088" x1="432" />
            <wire x2="432" y1="1088" y2="1120" x1="432" />
            <wire x2="1168" y1="992" y2="992" x1="432" />
            <wire x2="1168" y1="672" y2="672" x1="1104" />
            <wire x2="1168" y1="672" y2="992" x1="1168" />
        </branch>
        <bustap x2="528" y1="1088" y2="1088" x1="432" />
        <branch name="clkdiv(18:17)">
            <wire x2="848" y1="1088" y2="1088" x1="528" />
        </branch>
        <branch name="SEGMENT(7:0)">
            <wire x2="2272" y1="592" y2="672" x1="2272" />
            <wire x2="2272" y1="672" y2="736" x1="2272" />
            <wire x2="2272" y1="736" y2="800" x1="2272" />
            <wire x2="2272" y1="800" y2="864" x1="2272" />
            <wire x2="2272" y1="864" y2="896" x1="2272" />
            <wire x2="2416" y1="896" y2="896" x1="2272" />
            <wire x2="2272" y1="896" y2="928" x1="2272" />
            <wire x2="2272" y1="928" y2="992" x1="2272" />
            <wire x2="2272" y1="992" y2="1056" x1="2272" />
            <wire x2="2272" y1="1056" y2="1120" x1="2272" />
            <wire x2="2272" y1="1120" y2="1168" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2416" y="896" name="SEGMENT(7:0)" orien="R0" />
        <bustap x2="2176" y1="1120" y2="1120" x1="2272" />
        <branch name="SEGMENT(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1120" type="branch" />
            <wire x2="2096" y1="1120" y2="1120" x1="2016" />
            <wire x2="2176" y1="1120" y2="1120" x1="2096" />
        </branch>
        <bustap x2="2176" y1="1056" y2="1056" x1="2272" />
        <branch name="SEGMENT(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1056" type="branch" />
            <wire x2="2096" y1="1056" y2="1056" x1="2016" />
            <wire x2="2176" y1="1056" y2="1056" x1="2096" />
        </branch>
        <bustap x2="2176" y1="992" y2="992" x1="2272" />
        <branch name="SEGMENT(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="992" type="branch" />
            <wire x2="2096" y1="992" y2="992" x1="2016" />
            <wire x2="2176" y1="992" y2="992" x1="2096" />
        </branch>
        <bustap x2="2176" y1="928" y2="928" x1="2272" />
        <branch name="SEGMENT(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="928" type="branch" />
            <wire x2="2096" y1="928" y2="928" x1="2016" />
            <wire x2="2176" y1="928" y2="928" x1="2096" />
        </branch>
        <bustap x2="2176" y1="864" y2="864" x1="2272" />
        <branch name="SEGMENT(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="864" type="branch" />
            <wire x2="2096" y1="864" y2="864" x1="2016" />
            <wire x2="2176" y1="864" y2="864" x1="2096" />
        </branch>
        <bustap x2="2176" y1="800" y2="800" x1="2272" />
        <branch name="SEGMENT(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="800" type="branch" />
            <wire x2="2096" y1="800" y2="800" x1="2016" />
            <wire x2="2176" y1="800" y2="800" x1="2096" />
        </branch>
        <bustap x2="2176" y1="736" y2="736" x1="2272" />
        <branch name="SEGMENT(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="736" type="branch" />
            <wire x2="2096" y1="736" y2="736" x1="2016" />
            <wire x2="2176" y1="736" y2="736" x1="2096" />
        </branch>
        <bustap x2="2176" y1="672" y2="672" x1="2272" />
        <branch name="SEGMENT(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="672" type="branch" />
            <wire x2="2096" y1="672" y2="672" x1="2016" />
            <wire x2="2176" y1="672" y2="672" x1="2096" />
        </branch>
        <instance x="2528" y="512" name="XLXI_5" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="624" type="branch" />
            <wire x2="2592" y1="512" y2="624" x1="2592" />
            <wire x2="2768" y1="624" y2="624" x1="2592" />
        </branch>
        <instance x="2528" y="1264" name="XLXI_6" orien="R0" />
        <branch name="G0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="1072" type="branch" />
            <wire x2="2784" y1="1072" y2="1072" x1="2592" />
            <wire x2="2592" y1="1072" y2="1120" x1="2592" />
            <wire x2="2592" y1="1120" y2="1136" x1="2592" />
        </branch>
        <branch name="G0,V5,G0,G0,G0,G0,V5,V5,G0,G0,V5,G0,G0,G0,G0,V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1488" type="branch" />
            <wire x2="848" y1="1136" y2="1136" x1="512" />
            <wire x2="512" y1="1136" y2="1488" x1="512" />
            <wire x2="784" y1="1488" y2="1488" x1="512" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1440" type="branch" />
            <wire x2="2064" y1="1440" y2="1440" x1="1856" />
        </branch>
        <instance x="2064" y="1472" name="XLXI_7" orien="R0" />
        <branch name="Buzzer">
            <wire x2="2384" y1="1440" y2="1440" x1="2288" />
        </branch>
        <iomarker fontsize="28" x="2384" y="1440" name="Buzzer" orien="R0" />
    </sheet>
</drawing>