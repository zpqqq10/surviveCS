<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s(1:0)" />
        <signal name="s(1)" />
        <signal name="s(0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_9" />
        <signal name="o(3:0)" />
        <signal name="o(0)" />
        <signal name="o(1)" />
        <signal name="o(2)" />
        <signal name="o(3)" />
        <signal name="XLXN_49" />
        <signal name="XLXN_51" />
        <signal name="XLXN_54" />
        <signal name="XLXN_56" />
        <signal name="I0(3:0)" />
        <signal name="I0(3)" />
        <signal name="I0(2)" />
        <signal name="I0(1)" />
        <signal name="I0(0)" />
        <signal name="XLXN_13" />
        <signal name="XLXN_16" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_30" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_40" />
        <signal name="I1(3:0)" />
        <signal name="I1(3)" />
        <signal name="I1(2)" />
        <signal name="I1(1)" />
        <signal name="I1(0)" />
        <signal name="I2(3:0)" />
        <signal name="I2(3)" />
        <signal name="I2(2)" />
        <signal name="I2(1)" />
        <signal name="I2(0)" />
        <signal name="I3(3:0)" />
        <signal name="I3(3)" />
        <signal name="I3(2)" />
        <signal name="I3(1)" />
        <signal name="I3(0)" />
        <port polarity="Input" name="s(1:0)" />
        <port polarity="Output" name="o(3:0)" />
        <port polarity="Input" name="I0(3:0)" />
        <port polarity="Input" name="I1(3:0)" />
        <port polarity="Input" name="I2(3:0)" />
        <port polarity="Input" name="I3(3:0)" />
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
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="s(1)" name="I1" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="s(0)" name="I0" />
            <blockpin signalname="s(1)" name="I1" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_11">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_13" name="I3" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_16">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_23" name="I2" />
            <blockpin signalname="XLXN_21" name="I3" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_21">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="XLXN_30" name="I1" />
            <blockpin signalname="XLXN_28" name="I2" />
            <blockpin signalname="XLXN_26" name="I3" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_31">
            <blockpin signalname="XLXN_37" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_38" name="I2" />
            <blockpin signalname="XLXN_36" name="I3" />
            <blockpin signalname="o(3)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_27">
            <blockpin signalname="I0(3)" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_28">
            <blockpin signalname="I1(3)" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_29">
            <blockpin signalname="I2(3)" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_30">
            <blockpin signalname="I3(3)" name="I0" />
            <blockpin signalname="XLXN_56" name="I1" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="I0(2)" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="I1(2)" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="I2(2)" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="I3(2)" name="I0" />
            <blockpin signalname="XLXN_56" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="I0(1)" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="I1(1)" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="I2(1)" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="I3(1)" name="I0" />
            <blockpin signalname="XLXN_56" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="I0(0)" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="I1(0)" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="I2(0)" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="I3(0)" name="I0" />
            <blockpin signalname="XLXN_56" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="224" name="XLXI_1" orien="R0" />
        <instance x="1056" y="352" name="XLXI_2" orien="R0" />
        <instance x="1056" y="480" name="XLXI_3" orien="R0" />
        <instance x="1056" y="608" name="XLXI_4" orien="R0" />
        <branch name="s(1:0)">
            <wire x2="528" y1="160" y2="160" x1="368" />
            <wire x2="528" y1="160" y2="176" x1="528" />
            <wire x2="528" y1="176" y2="272" x1="528" />
            <wire x2="528" y1="272" y2="320" x1="528" />
        </branch>
        <bustap x2="624" y1="176" y2="176" x1="528" />
        <bustap x2="624" y1="272" y2="272" x1="528" />
        <iomarker fontsize="28" x="368" y="160" name="s(1:0)" orien="R180" />
        <instance x="688" y="208" name="XLXI_5" orien="R0" />
        <instance x="688" y="304" name="XLXI_6" orien="R0" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="653" y="176" type="branch" />
            <wire x2="640" y1="176" y2="176" x1="624" />
            <wire x2="640" y1="176" y2="352" x1="640" />
            <wire x2="1056" y1="352" y2="352" x1="640" />
            <wire x2="640" y1="352" y2="480" x1="640" />
            <wire x2="1056" y1="480" y2="480" x1="640" />
            <wire x2="688" y1="176" y2="176" x1="640" />
        </branch>
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="656" y="272" type="branch" />
            <wire x2="656" y1="272" y2="272" x1="624" />
            <wire x2="656" y1="272" y2="544" x1="656" />
            <wire x2="992" y1="544" y2="544" x1="656" />
            <wire x2="1056" y1="544" y2="544" x1="992" />
            <wire x2="688" y1="272" y2="272" x1="656" />
            <wire x2="1056" y1="288" y2="288" x1="992" />
            <wire x2="992" y1="288" y2="544" x1="992" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="976" y1="176" y2="176" x1="912" />
            <wire x2="976" y1="176" y2="224" x1="976" />
            <wire x2="1056" y1="224" y2="224" x1="976" />
            <wire x2="976" y1="96" y2="176" x1="976" />
            <wire x2="1056" y1="96" y2="96" x1="976" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="960" y1="272" y2="272" x1="912" />
            <wire x2="960" y1="272" y2="416" x1="960" />
            <wire x2="1056" y1="416" y2="416" x1="960" />
            <wire x2="960" y1="160" y2="272" x1="960" />
            <wire x2="1056" y1="160" y2="160" x1="960" />
        </branch>
        <branch name="o(3:0)">
            <wire x2="2816" y1="192" y2="272" x1="2816" />
            <wire x2="2816" y1="272" y2="832" x1="2816" />
            <wire x2="2816" y1="832" y2="1120" x1="2816" />
            <wire x2="3040" y1="1120" y2="1120" x1="2816" />
            <wire x2="2816" y1="1120" y2="1408" x1="2816" />
            <wire x2="2816" y1="1408" y2="1968" x1="2816" />
            <wire x2="2816" y1="1968" y2="2016" x1="2816" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1120" name="o(3:0)" orien="R0" />
        <bustap x2="2720" y1="272" y2="272" x1="2816" />
        <branch name="o(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="272" type="branch" />
            <wire x2="2640" y1="272" y2="272" x1="2608" />
            <wire x2="2720" y1="272" y2="272" x1="2640" />
        </branch>
        <bustap x2="2720" y1="832" y2="832" x1="2816" />
        <branch name="o(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="832" type="branch" />
            <wire x2="2640" y1="832" y2="832" x1="2608" />
            <wire x2="2720" y1="832" y2="832" x1="2640" />
        </branch>
        <bustap x2="2720" y1="1408" y2="1408" x1="2816" />
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1408" type="branch" />
            <wire x2="2640" y1="1408" y2="1408" x1="2608" />
            <wire x2="2720" y1="1408" y2="1408" x1="2640" />
        </branch>
        <bustap x2="2720" y1="1968" y2="1968" x1="2816" />
        <branch name="o(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1968" type="branch" />
            <wire x2="2640" y1="1968" y2="1968" x1="2608" />
            <wire x2="2720" y1="1968" y2="1968" x1="2640" />
        </branch>
        <branch name="I0(3:0)">
            <wire x2="1680" y1="1248" y2="1248" x1="992" />
            <wire x2="1680" y1="1248" y2="1808" x1="1680" />
            <wire x2="1680" y1="112" y2="672" x1="1680" />
            <wire x2="1680" y1="672" y2="1248" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="992" y="1248" name="I0(3:0)" orien="R180" />
        <bustap x2="1776" y1="1808" y2="1808" x1="1680" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1848" y="1808" type="branch" />
            <wire x2="2016" y1="1808" y2="1808" x1="1776" />
        </branch>
        <bustap x2="1776" y1="1248" y2="1248" x1="1680" />
        <branch name="I0(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1848" y="1248" type="branch" />
            <wire x2="2016" y1="1248" y2="1248" x1="1776" />
        </branch>
        <bustap x2="1776" y1="672" y2="672" x1="1680" />
        <branch name="I0(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1848" y="672" type="branch" />
            <wire x2="2016" y1="672" y2="672" x1="1776" />
        </branch>
        <bustap x2="1776" y1="112" y2="112" x1="1680" />
        <branch name="I0(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1848" y="112" type="branch" />
            <wire x2="2016" y1="112" y2="112" x1="1776" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2352" y1="80" y2="80" x1="2272" />
            <wire x2="2352" y1="80" y2="176" x1="2352" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2352" y1="464" y2="464" x1="2272" />
            <wire x2="2352" y1="368" y2="464" x1="2352" />
        </branch>
        <instance x="2352" y="432" name="XLXI_11" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="2336" y1="208" y2="208" x1="2272" />
            <wire x2="2336" y1="208" y2="240" x1="2336" />
            <wire x2="2352" y1="240" y2="240" x1="2336" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2336" y1="336" y2="336" x1="2272" />
            <wire x2="2352" y1="304" y2="304" x1="2336" />
            <wire x2="2336" y1="304" y2="336" x1="2336" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2352" y1="640" y2="640" x1="2272" />
            <wire x2="2352" y1="640" y2="736" x1="2352" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2352" y1="1024" y2="1024" x1="2272" />
            <wire x2="2352" y1="928" y2="1024" x1="2352" />
        </branch>
        <instance x="2352" y="992" name="XLXI_16" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="2336" y1="768" y2="768" x1="2272" />
            <wire x2="2336" y1="768" y2="800" x1="2336" />
            <wire x2="2352" y1="800" y2="800" x1="2336" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2336" y1="896" y2="896" x1="2272" />
            <wire x2="2352" y1="864" y2="864" x1="2336" />
            <wire x2="2336" y1="864" y2="896" x1="2336" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2352" y1="1216" y2="1216" x1="2272" />
            <wire x2="2352" y1="1216" y2="1312" x1="2352" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2352" y1="1600" y2="1600" x1="2272" />
            <wire x2="2352" y1="1504" y2="1600" x1="2352" />
        </branch>
        <instance x="2352" y="1568" name="XLXI_21" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="2336" y1="1344" y2="1344" x1="2272" />
            <wire x2="2336" y1="1344" y2="1376" x1="2336" />
            <wire x2="2352" y1="1376" y2="1376" x1="2336" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2336" y1="1472" y2="1472" x1="2272" />
            <wire x2="2352" y1="1440" y2="1440" x1="2336" />
            <wire x2="2336" y1="1440" y2="1472" x1="2336" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="2352" y1="1776" y2="1776" x1="2272" />
            <wire x2="2352" y1="1776" y2="1872" x1="2352" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="2352" y1="2160" y2="2160" x1="2272" />
            <wire x2="2352" y1="2064" y2="2160" x1="2352" />
        </branch>
        <instance x="2352" y="2128" name="XLXI_31" orien="R0" />
        <branch name="XLXN_38">
            <wire x2="2336" y1="1904" y2="1904" x1="2272" />
            <wire x2="2336" y1="1904" y2="1936" x1="2336" />
            <wire x2="2352" y1="1936" y2="1936" x1="2336" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="2336" y1="2032" y2="2032" x1="2272" />
            <wire x2="2352" y1="2000" y2="2000" x1="2336" />
            <wire x2="2336" y1="2000" y2="2032" x1="2336" />
        </branch>
        <instance x="2016" y="1872" name="XLXI_27" orien="R0" />
        <instance x="2016" y="2000" name="XLXI_28" orien="R0" />
        <instance x="2016" y="2128" name="XLXI_29" orien="R0" />
        <instance x="2016" y="2256" name="XLXI_30" orien="R0" />
        <instance x="2016" y="1312" name="XLXI_17" orien="R0" />
        <instance x="2016" y="1440" name="XLXI_18" orien="R0" />
        <instance x="2016" y="1568" name="XLXI_19" orien="R0" />
        <instance x="2016" y="1696" name="XLXI_20" orien="R0" />
        <instance x="2016" y="736" name="XLXI_12" orien="R0" />
        <instance x="2016" y="864" name="XLXI_13" orien="R0" />
        <instance x="2016" y="992" name="XLXI_14" orien="R0" />
        <instance x="2016" y="1120" name="XLXI_15" orien="R0" />
        <instance x="2016" y="176" name="XLXI_7" orien="R0" />
        <instance x="2016" y="304" name="XLXI_8" orien="R0" />
        <instance x="2016" y="432" name="XLXI_9" orien="R0" />
        <instance x="2016" y="560" name="XLXI_10" orien="R0" />
        <branch name="XLXN_56">
            <wire x2="1568" y1="512" y2="512" x1="1312" />
            <wire x2="1568" y1="512" y2="992" x1="1568" />
            <wire x2="1568" y1="992" y2="1568" x1="1568" />
            <wire x2="1568" y1="1568" y2="2128" x1="1568" />
            <wire x2="2016" y1="2128" y2="2128" x1="1568" />
            <wire x2="2016" y1="1568" y2="1568" x1="1568" />
            <wire x2="2016" y1="992" y2="992" x1="1568" />
            <wire x2="2016" y1="432" y2="432" x1="1568" />
            <wire x2="1568" y1="432" y2="512" x1="1568" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="1584" y1="384" y2="384" x1="1312" />
            <wire x2="1584" y1="384" y2="864" x1="1584" />
            <wire x2="1584" y1="864" y2="1440" x1="1584" />
            <wire x2="1584" y1="1440" y2="2000" x1="1584" />
            <wire x2="2016" y1="2000" y2="2000" x1="1584" />
            <wire x2="2016" y1="1440" y2="1440" x1="1584" />
            <wire x2="2016" y1="864" y2="864" x1="1584" />
            <wire x2="2016" y1="304" y2="304" x1="1584" />
            <wire x2="1584" y1="304" y2="384" x1="1584" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="1600" y1="256" y2="256" x1="1312" />
            <wire x2="1600" y1="256" y2="736" x1="1600" />
            <wire x2="1600" y1="736" y2="1312" x1="1600" />
            <wire x2="1600" y1="1312" y2="1872" x1="1600" />
            <wire x2="2016" y1="1872" y2="1872" x1="1600" />
            <wire x2="2016" y1="1312" y2="1312" x1="1600" />
            <wire x2="2016" y1="736" y2="736" x1="1600" />
            <wire x2="2016" y1="176" y2="176" x1="1600" />
            <wire x2="1600" y1="176" y2="256" x1="1600" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1616" y1="128" y2="128" x1="1312" />
            <wire x2="1616" y1="128" y2="608" x1="1616" />
            <wire x2="1616" y1="608" y2="1184" x1="1616" />
            <wire x2="1616" y1="1184" y2="1744" x1="1616" />
            <wire x2="2016" y1="1744" y2="1744" x1="1616" />
            <wire x2="2016" y1="1184" y2="1184" x1="1616" />
            <wire x2="2016" y1="608" y2="608" x1="1616" />
            <wire x2="2016" y1="48" y2="48" x1="1616" />
            <wire x2="1616" y1="48" y2="128" x1="1616" />
        </branch>
        <branch name="I1(3:0)">
            <wire x2="1744" y1="1376" y2="1376" x1="992" />
            <wire x2="1744" y1="1376" y2="1936" x1="1744" />
            <wire x2="1744" y1="240" y2="800" x1="1744" />
            <wire x2="1744" y1="800" y2="1376" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="992" y="1376" name="I1(3:0)" orien="R180" />
        <bustap x2="1840" y1="1936" y2="1936" x1="1744" />
        <branch name="I1(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1928" y="1936" type="branch" />
            <wire x2="2016" y1="1936" y2="1936" x1="1840" />
        </branch>
        <bustap x2="1840" y1="1376" y2="1376" x1="1744" />
        <branch name="I1(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1928" y="1376" type="branch" />
            <wire x2="1936" y1="1376" y2="1376" x1="1840" />
            <wire x2="2016" y1="1376" y2="1376" x1="1936" />
        </branch>
        <bustap x2="1840" y1="800" y2="800" x1="1744" />
        <branch name="I1(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1928" y="800" type="branch" />
            <wire x2="1936" y1="800" y2="800" x1="1840" />
            <wire x2="2016" y1="800" y2="800" x1="1936" />
        </branch>
        <bustap x2="1840" y1="240" y2="240" x1="1744" />
        <branch name="I1(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1928" y="240" type="branch" />
            <wire x2="1936" y1="240" y2="240" x1="1840" />
            <wire x2="2016" y1="240" y2="240" x1="1936" />
        </branch>
        <branch name="I2(3:0)">
            <wire x2="1808" y1="1504" y2="1504" x1="992" />
            <wire x2="1808" y1="1504" y2="2064" x1="1808" />
            <wire x2="1808" y1="368" y2="928" x1="1808" />
            <wire x2="1808" y1="928" y2="1504" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="992" y="1504" name="I2(3:0)" orien="R180" />
        <bustap x2="1904" y1="2064" y2="2064" x1="1808" />
        <branch name="I2(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1960" y="2064" type="branch" />
            <wire x2="1968" y1="2064" y2="2064" x1="1904" />
            <wire x2="2016" y1="2064" y2="2064" x1="1968" />
        </branch>
        <bustap x2="1904" y1="1504" y2="1504" x1="1808" />
        <branch name="I2(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1960" y="1504" type="branch" />
            <wire x2="1968" y1="1504" y2="1504" x1="1904" />
            <wire x2="2016" y1="1504" y2="1504" x1="1968" />
        </branch>
        <bustap x2="1904" y1="928" y2="928" x1="1808" />
        <branch name="I2(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1960" y="928" type="branch" />
            <wire x2="1968" y1="928" y2="928" x1="1904" />
            <wire x2="2016" y1="928" y2="928" x1="1968" />
        </branch>
        <bustap x2="1904" y1="368" y2="368" x1="1808" />
        <branch name="I2(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1960" y="368" type="branch" />
            <wire x2="1968" y1="368" y2="368" x1="1904" />
            <wire x2="2016" y1="368" y2="368" x1="1968" />
        </branch>
        <branch name="I3(3:0)">
            <wire x2="1904" y1="1632" y2="1632" x1="992" />
            <wire x2="1904" y1="1632" y2="2192" x1="1904" />
            <wire x2="1904" y1="496" y2="1056" x1="1904" />
            <wire x2="1904" y1="1056" y2="1632" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="992" y="1632" name="I3(3:0)" orien="R180" />
        <bustap x2="2000" y1="2192" y2="2192" x1="1904" />
        <branch name="I3(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2008" y="2192" type="branch" />
            <wire x2="2016" y1="2192" y2="2192" x1="2000" />
        </branch>
        <bustap x2="2000" y1="1632" y2="1632" x1="1904" />
        <branch name="I3(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2008" y="1632" type="branch" />
            <wire x2="2016" y1="1632" y2="1632" x1="2000" />
        </branch>
        <bustap x2="2000" y1="1056" y2="1056" x1="1904" />
        <branch name="I3(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2008" y="1056" type="branch" />
            <wire x2="2016" y1="1056" y2="1056" x1="2000" />
        </branch>
        <bustap x2="2000" y1="496" y2="496" x1="1904" />
        <branch name="I3(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2008" y="496" type="branch" />
            <wire x2="2016" y1="496" y2="496" x1="2000" />
        </branch>
    </sheet>
</drawing>