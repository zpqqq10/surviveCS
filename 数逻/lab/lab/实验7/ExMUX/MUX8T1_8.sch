<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
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
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="o(7:0)" />
        <signal name="o(7)" />
        <signal name="o(6)" />
        <signal name="o(5)" />
        <signal name="o(4)" />
        <signal name="o(3)" />
        <signal name="o(2)" />
        <signal name="o(1)" />
        <signal name="o(0)" />
        <signal name="s(2:0)" />
        <signal name="s(1:0)" />
        <signal name="s(2)" />
        <signal name="XLXN_47" />
        <signal name="I0(7:0)" />
        <signal name="I0(3:0)" />
        <signal name="I0(7:4)" />
        <signal name="I1(7:0)" />
        <signal name="I1(3:0)" />
        <signal name="I1(7:4)" />
        <signal name="I2(7:0)" />
        <signal name="I3(7:0)" />
        <signal name="I2(3:0)" />
        <signal name="I2(7:4)" />
        <signal name="I3(7:4)" />
        <signal name="I3(3:0)" />
        <signal name="I4(7:0)" />
        <signal name="I5(7:0)" />
        <signal name="I6(7:0)" />
        <signal name="I7(7:0)" />
        <signal name="I4(3:0)" />
        <signal name="I4(7:4)" />
        <signal name="I5(3:0)" />
        <signal name="I5(7:4)" />
        <signal name="I6(3:0)" />
        <signal name="I6(7:4)" />
        <signal name="I7(3:0)" />
        <signal name="I7(7:4)" />
        <signal name="o0(3:0)" />
        <signal name="o0(3)" />
        <signal name="o0(2)" />
        <signal name="o0(1)" />
        <signal name="o0(0)" />
        <signal name="o1(3:0)" />
        <signal name="o1(3)" />
        <signal name="o1(2)" />
        <signal name="o1(1)" />
        <signal name="o1(0)" />
        <signal name="o2(3:0)" />
        <signal name="o2(3)" />
        <signal name="o2(2)" />
        <signal name="o2(1)" />
        <signal name="o2(0)" />
        <signal name="o3(3:0)" />
        <signal name="o3(3)" />
        <signal name="o3(2)" />
        <signal name="o3(1)" />
        <signal name="o3(0)" />
        <port polarity="Output" name="o(7:0)" />
        <port polarity="Input" name="s(2:0)" />
        <port polarity="Input" name="I0(7:0)" />
        <port polarity="Input" name="I1(7:0)" />
        <port polarity="Input" name="I2(7:0)" />
        <port polarity="Input" name="I3(7:0)" />
        <port polarity="Input" name="I4(7:0)" />
        <port polarity="Input" name="I5(7:0)" />
        <port polarity="Input" name="I6(7:0)" />
        <port polarity="Input" name="I7(7:0)" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="MUX4T1_4" name="M0">
            <blockpin signalname="s(1:0)" name="s(1:0)" />
            <blockpin signalname="I0(3:0)" name="I0(3:0)" />
            <blockpin signalname="I1(3:0)" name="I1(3:0)" />
            <blockpin signalname="I2(3:0)" name="I2(3:0)" />
            <blockpin signalname="I3(3:0)" name="I3(3:0)" />
            <blockpin signalname="o0(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="MUX4T1_4" name="M1">
            <blockpin signalname="s(1:0)" name="s(1:0)" />
            <blockpin signalname="I4(3:0)" name="I0(3:0)" />
            <blockpin signalname="I5(3:0)" name="I1(3:0)" />
            <blockpin signalname="I6(3:0)" name="I2(3:0)" />
            <blockpin signalname="I7(3:0)" name="I3(3:0)" />
            <blockpin signalname="o1(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="MUX4T1_4" name="M2">
            <blockpin signalname="s(1:0)" name="s(1:0)" />
            <blockpin signalname="I0(7:4)" name="I0(3:0)" />
            <blockpin signalname="I1(7:4)" name="I1(3:0)" />
            <blockpin signalname="I2(7:4)" name="I2(3:0)" />
            <blockpin signalname="I3(7:4)" name="I3(3:0)" />
            <blockpin signalname="o2(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="MUX4T1_4" name="M3">
            <blockpin signalname="s(1:0)" name="s(1:0)" />
            <blockpin signalname="I4(7:4)" name="I0(3:0)" />
            <blockpin signalname="I5(7:4)" name="I1(3:0)" />
            <blockpin signalname="I6(7:4)" name="I2(3:0)" />
            <blockpin signalname="I7(7:4)" name="I3(3:0)" />
            <blockpin signalname="o3(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="o0(0)" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="o1(0)" name="I0" />
            <blockpin signalname="s(2)" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="o0(1)" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="o1(1)" name="I0" />
            <blockpin signalname="s(2)" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_10">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="o0(2)" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="o1(2)" name="I0" />
            <blockpin signalname="s(2)" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_13">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="o0(3)" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="o1(3)" name="I0" />
            <blockpin signalname="s(2)" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_16">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="o(3)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="o2(0)" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="o3(0)" name="I0" />
            <blockpin signalname="s(2)" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_19">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="o(4)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="o2(1)" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_21">
            <blockpin signalname="o3(1)" name="I0" />
            <blockpin signalname="s(2)" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_22">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="o(5)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="o2(2)" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="o3(2)" name="I0" />
            <blockpin signalname="s(2)" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_25">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="o(6)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_26">
            <blockpin signalname="o2(3)" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_27">
            <blockpin signalname="o3(3)" name="I0" />
            <blockpin signalname="s(2)" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_28">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="o(7)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_53">
            <blockpin signalname="s(2)" name="I" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="832" y="832" name="M0" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="832" y="1200" name="M1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="832" y="1696" name="M2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="832" y="2080" name="M3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2400" y="256" name="XLXI_5" orien="R0" />
        <instance x="2400" y="384" name="XLXI_6" orien="R0" />
        <instance x="2688" y="320" name="XLXI_7" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="2672" y1="160" y2="160" x1="2656" />
            <wire x2="2672" y1="160" y2="192" x1="2672" />
            <wire x2="2688" y1="192" y2="192" x1="2672" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2672" y1="288" y2="288" x1="2656" />
            <wire x2="2672" y1="256" y2="288" x1="2672" />
            <wire x2="2688" y1="256" y2="256" x1="2672" />
        </branch>
        <instance x="2400" y="528" name="XLXI_8" orien="R0" />
        <instance x="2400" y="656" name="XLXI_9" orien="R0" />
        <instance x="2688" y="592" name="XLXI_10" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="2672" y1="432" y2="432" x1="2656" />
            <wire x2="2672" y1="432" y2="464" x1="2672" />
            <wire x2="2688" y1="464" y2="464" x1="2672" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="2672" y1="560" y2="560" x1="2656" />
            <wire x2="2672" y1="528" y2="560" x1="2672" />
            <wire x2="2688" y1="528" y2="528" x1="2672" />
        </branch>
        <instance x="2400" y="800" name="XLXI_11" orien="R0" />
        <instance x="2400" y="928" name="XLXI_12" orien="R0" />
        <instance x="2688" y="864" name="XLXI_13" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="2672" y1="704" y2="704" x1="2656" />
            <wire x2="2672" y1="704" y2="736" x1="2672" />
            <wire x2="2688" y1="736" y2="736" x1="2672" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2672" y1="832" y2="832" x1="2656" />
            <wire x2="2672" y1="800" y2="832" x1="2672" />
            <wire x2="2688" y1="800" y2="800" x1="2672" />
        </branch>
        <instance x="2400" y="1072" name="XLXI_14" orien="R0" />
        <instance x="2400" y="1200" name="XLXI_15" orien="R0" />
        <instance x="2688" y="1136" name="XLXI_16" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="2672" y1="976" y2="976" x1="2656" />
            <wire x2="2672" y1="976" y2="1008" x1="2672" />
            <wire x2="2688" y1="1008" y2="1008" x1="2672" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2672" y1="1104" y2="1104" x1="2656" />
            <wire x2="2672" y1="1072" y2="1104" x1="2672" />
            <wire x2="2688" y1="1072" y2="1072" x1="2672" />
        </branch>
        <instance x="2400" y="1344" name="XLXI_17" orien="R0" />
        <instance x="2400" y="1472" name="XLXI_18" orien="R0" />
        <instance x="2688" y="1408" name="XLXI_19" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="2672" y1="1248" y2="1248" x1="2656" />
            <wire x2="2672" y1="1248" y2="1280" x1="2672" />
            <wire x2="2688" y1="1280" y2="1280" x1="2672" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2672" y1="1376" y2="1376" x1="2656" />
            <wire x2="2672" y1="1344" y2="1376" x1="2672" />
            <wire x2="2688" y1="1344" y2="1344" x1="2672" />
        </branch>
        <instance x="2400" y="1616" name="XLXI_20" orien="R0" />
        <instance x="2400" y="1744" name="XLXI_21" orien="R0" />
        <instance x="2688" y="1680" name="XLXI_22" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="2672" y1="1520" y2="1520" x1="2656" />
            <wire x2="2672" y1="1520" y2="1552" x1="2672" />
            <wire x2="2688" y1="1552" y2="1552" x1="2672" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2672" y1="1648" y2="1648" x1="2656" />
            <wire x2="2672" y1="1616" y2="1648" x1="2672" />
            <wire x2="2688" y1="1616" y2="1616" x1="2672" />
        </branch>
        <instance x="2400" y="1888" name="XLXI_23" orien="R0" />
        <instance x="2400" y="2016" name="XLXI_24" orien="R0" />
        <instance x="2688" y="1952" name="XLXI_25" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="2672" y1="1792" y2="1792" x1="2656" />
            <wire x2="2672" y1="1792" y2="1824" x1="2672" />
            <wire x2="2688" y1="1824" y2="1824" x1="2672" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2672" y1="1920" y2="1920" x1="2656" />
            <wire x2="2672" y1="1888" y2="1920" x1="2672" />
            <wire x2="2688" y1="1888" y2="1888" x1="2672" />
        </branch>
        <instance x="2400" y="2160" name="XLXI_26" orien="R0" />
        <instance x="2400" y="2288" name="XLXI_27" orien="R0" />
        <instance x="2688" y="2224" name="XLXI_28" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="2672" y1="2064" y2="2064" x1="2656" />
            <wire x2="2672" y1="2064" y2="2096" x1="2672" />
            <wire x2="2688" y1="2096" y2="2096" x1="2672" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2672" y1="2192" y2="2192" x1="2656" />
            <wire x2="2672" y1="2160" y2="2192" x1="2672" />
            <wire x2="2688" y1="2160" y2="2160" x1="2672" />
        </branch>
        <branch name="o(7:0)">
            <wire x2="3104" y1="96" y2="224" x1="3104" />
            <wire x2="3104" y1="224" y2="496" x1="3104" />
            <wire x2="3104" y1="496" y2="768" x1="3104" />
            <wire x2="3104" y1="768" y2="1040" x1="3104" />
            <wire x2="3104" y1="1040" y2="1312" x1="3104" />
            <wire x2="3104" y1="1312" y2="1584" x1="3104" />
            <wire x2="3104" y1="1584" y2="1856" x1="3104" />
            <wire x2="3104" y1="1856" y2="2128" x1="3104" />
            <wire x2="3104" y1="2128" y2="2256" x1="3104" />
            <wire x2="3232" y1="2256" y2="2256" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3232" y="2256" name="o(7:0)" orien="R0" />
        <bustap x2="3008" y1="2128" y2="2128" x1="3104" />
        <branch name="o(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="2128" type="branch" />
            <wire x2="2976" y1="2128" y2="2128" x1="2944" />
            <wire x2="3008" y1="2128" y2="2128" x1="2976" />
        </branch>
        <bustap x2="3008" y1="1856" y2="1856" x1="3104" />
        <branch name="o(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="1856" type="branch" />
            <wire x2="2976" y1="1856" y2="1856" x1="2944" />
            <wire x2="3008" y1="1856" y2="1856" x1="2976" />
        </branch>
        <bustap x2="3008" y1="1584" y2="1584" x1="3104" />
        <branch name="o(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="1584" type="branch" />
            <wire x2="2976" y1="1584" y2="1584" x1="2944" />
            <wire x2="3008" y1="1584" y2="1584" x1="2976" />
        </branch>
        <bustap x2="3008" y1="1312" y2="1312" x1="3104" />
        <branch name="o(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="1312" type="branch" />
            <wire x2="2976" y1="1312" y2="1312" x1="2944" />
            <wire x2="3008" y1="1312" y2="1312" x1="2976" />
        </branch>
        <bustap x2="3008" y1="1040" y2="1040" x1="3104" />
        <branch name="o(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="1040" type="branch" />
            <wire x2="2976" y1="1040" y2="1040" x1="2944" />
            <wire x2="3008" y1="1040" y2="1040" x1="2976" />
        </branch>
        <bustap x2="3008" y1="768" y2="768" x1="3104" />
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="768" type="branch" />
            <wire x2="2976" y1="768" y2="768" x1="2944" />
            <wire x2="3008" y1="768" y2="768" x1="2976" />
        </branch>
        <bustap x2="3008" y1="496" y2="496" x1="3104" />
        <branch name="o(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="496" type="branch" />
            <wire x2="2976" y1="496" y2="496" x1="2944" />
            <wire x2="3008" y1="496" y2="496" x1="2976" />
        </branch>
        <bustap x2="3008" y1="224" y2="224" x1="3104" />
        <branch name="o(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="224" type="branch" />
            <wire x2="2976" y1="224" y2="224" x1="2944" />
            <wire x2="3008" y1="224" y2="224" x1="2976" />
        </branch>
        <branch name="s(2:0)">
            <wire x2="496" y1="64" y2="64" x1="384" />
            <wire x2="496" y1="64" y2="112" x1="496" />
            <wire x2="496" y1="112" y2="240" x1="496" />
        </branch>
        <iomarker fontsize="28" x="384" y="64" name="s(2:0)" orien="R180" />
        <bustap x2="592" y1="112" y2="112" x1="496" />
        <bustap x2="592" y1="240" y2="240" x1="496" />
        <branch name="s(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="628" y="240" type="branch" />
            <wire x2="628" y1="240" y2="240" x1="592" />
            <wire x2="704" y1="240" y2="240" x1="628" />
            <wire x2="704" y1="240" y2="544" x1="704" />
            <wire x2="832" y1="544" y2="544" x1="704" />
            <wire x2="704" y1="544" y2="912" x1="704" />
            <wire x2="832" y1="912" y2="912" x1="704" />
            <wire x2="704" y1="912" y2="1408" x1="704" />
            <wire x2="704" y1="1408" y2="1792" x1="704" />
            <wire x2="832" y1="1792" y2="1792" x1="704" />
            <wire x2="832" y1="1408" y2="1408" x1="704" />
        </branch>
        <instance x="1296" y="144" name="XLXI_53" orien="R0" />
        <branch name="s(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="639" y="112" type="branch" />
            <wire x2="639" y1="112" y2="112" x1="592" />
            <wire x2="1168" y1="112" y2="112" x1="639" />
            <wire x2="1296" y1="112" y2="112" x1="1168" />
            <wire x2="1168" y1="112" y2="208" x1="1168" />
            <wire x2="2192" y1="208" y2="208" x1="1168" />
            <wire x2="2192" y1="208" y2="256" x1="2192" />
            <wire x2="2400" y1="256" y2="256" x1="2192" />
            <wire x2="2192" y1="256" y2="528" x1="2192" />
            <wire x2="2400" y1="528" y2="528" x1="2192" />
            <wire x2="2192" y1="528" y2="800" x1="2192" />
            <wire x2="2400" y1="800" y2="800" x1="2192" />
            <wire x2="2192" y1="800" y2="1072" x1="2192" />
            <wire x2="2400" y1="1072" y2="1072" x1="2192" />
            <wire x2="2192" y1="1072" y2="1344" x1="2192" />
            <wire x2="2400" y1="1344" y2="1344" x1="2192" />
            <wire x2="2192" y1="1344" y2="1616" x1="2192" />
            <wire x2="2400" y1="1616" y2="1616" x1="2192" />
            <wire x2="2192" y1="1616" y2="1888" x1="2192" />
            <wire x2="2192" y1="1888" y2="2160" x1="2192" />
            <wire x2="2400" y1="2160" y2="2160" x1="2192" />
            <wire x2="2400" y1="1888" y2="1888" x1="2192" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="2240" y1="112" y2="112" x1="1520" />
            <wire x2="2240" y1="112" y2="128" x1="2240" />
            <wire x2="2400" y1="128" y2="128" x1="2240" />
            <wire x2="2240" y1="128" y2="400" x1="2240" />
            <wire x2="2400" y1="400" y2="400" x1="2240" />
            <wire x2="2240" y1="400" y2="672" x1="2240" />
            <wire x2="2400" y1="672" y2="672" x1="2240" />
            <wire x2="2240" y1="672" y2="944" x1="2240" />
            <wire x2="2400" y1="944" y2="944" x1="2240" />
            <wire x2="2240" y1="944" y2="1216" x1="2240" />
            <wire x2="2400" y1="1216" y2="1216" x1="2240" />
            <wire x2="2240" y1="1216" y2="1488" x1="2240" />
            <wire x2="2400" y1="1488" y2="1488" x1="2240" />
            <wire x2="2240" y1="1488" y2="1760" x1="2240" />
            <wire x2="2240" y1="1760" y2="2032" x1="2240" />
            <wire x2="2400" y1="2032" y2="2032" x1="2240" />
            <wire x2="2400" y1="1760" y2="1760" x1="2240" />
        </branch>
        <branch name="I0(7:0)">
            <wire x2="240" y1="400" y2="400" x1="160" />
            <wire x2="240" y1="400" y2="416" x1="240" />
            <wire x2="240" y1="416" y2="480" x1="240" />
        </branch>
        <iomarker fontsize="28" x="160" y="400" name="I0(7:0)" orien="R180" />
        <bustap x2="336" y1="416" y2="416" x1="240" />
        <bustap x2="336" y1="480" y2="480" x1="240" />
        <branch name="I0(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="801" y="608" type="branch" />
            <wire x2="576" y1="416" y2="416" x1="336" />
            <wire x2="576" y1="416" y2="608" x1="576" />
            <wire x2="801" y1="608" y2="608" x1="576" />
            <wire x2="832" y1="608" y2="608" x1="801" />
        </branch>
        <branch name="I0(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="767" y="1472" type="branch" />
            <wire x2="560" y1="480" y2="480" x1="336" />
            <wire x2="560" y1="480" y2="1472" x1="560" />
            <wire x2="767" y1="1472" y2="1472" x1="560" />
            <wire x2="832" y1="1472" y2="1472" x1="767" />
        </branch>
        <branch name="I1(7:0)">
            <wire x2="240" y1="560" y2="560" x1="160" />
            <wire x2="240" y1="560" y2="576" x1="240" />
            <wire x2="240" y1="576" y2="640" x1="240" />
        </branch>
        <iomarker fontsize="28" x="160" y="560" name="I1(7:0)" orien="R180" />
        <bustap x2="336" y1="576" y2="576" x1="240" />
        <bustap x2="336" y1="640" y2="640" x1="240" />
        <branch name="I1(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="801" y="672" type="branch" />
            <wire x2="544" y1="576" y2="576" x1="336" />
            <wire x2="544" y1="576" y2="672" x1="544" />
            <wire x2="801" y1="672" y2="672" x1="544" />
            <wire x2="832" y1="672" y2="672" x1="801" />
        </branch>
        <branch name="I1(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="764" y="1536" type="branch" />
            <wire x2="528" y1="640" y2="640" x1="336" />
            <wire x2="528" y1="640" y2="1536" x1="528" />
            <wire x2="764" y1="1536" y2="1536" x1="528" />
            <wire x2="832" y1="1536" y2="1536" x1="764" />
        </branch>
        <branch name="I2(7:0)">
            <wire x2="240" y1="720" y2="720" x1="160" />
            <wire x2="240" y1="720" y2="736" x1="240" />
            <wire x2="240" y1="736" y2="800" x1="240" />
        </branch>
        <iomarker fontsize="28" x="160" y="720" name="I2(7:0)" orien="R180" />
        <branch name="I3(7:0)">
            <wire x2="240" y1="880" y2="880" x1="160" />
            <wire x2="240" y1="880" y2="896" x1="240" />
            <wire x2="240" y1="896" y2="960" x1="240" />
        </branch>
        <iomarker fontsize="28" x="160" y="880" name="I3(7:0)" orien="R180" />
        <bustap x2="336" y1="736" y2="736" x1="240" />
        <bustap x2="336" y1="800" y2="800" x1="240" />
        <bustap x2="336" y1="896" y2="896" x1="240" />
        <bustap x2="336" y1="960" y2="960" x1="240" />
        <branch name="I2(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="783" y="736" type="branch" />
            <wire x2="783" y1="736" y2="736" x1="336" />
            <wire x2="832" y1="736" y2="736" x1="783" />
        </branch>
        <branch name="I2(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="762" y="1600" type="branch" />
            <wire x2="512" y1="800" y2="800" x1="336" />
            <wire x2="512" y1="800" y2="1600" x1="512" />
            <wire x2="762" y1="1600" y2="1600" x1="512" />
            <wire x2="832" y1="1600" y2="1600" x1="762" />
        </branch>
        <branch name="I3(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="765" y="1664" type="branch" />
            <wire x2="496" y1="960" y2="960" x1="336" />
            <wire x2="496" y1="960" y2="1664" x1="496" />
            <wire x2="765" y1="1664" y2="1664" x1="496" />
            <wire x2="832" y1="1664" y2="1664" x1="765" />
        </branch>
        <branch name="I3(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="779" y="800" type="branch" />
            <wire x2="576" y1="896" y2="896" x1="336" />
            <wire x2="576" y1="800" y2="896" x1="576" />
            <wire x2="779" y1="800" y2="800" x1="576" />
            <wire x2="832" y1="800" y2="800" x1="779" />
        </branch>
        <branch name="I4(7:0)">
            <wire x2="240" y1="1120" y2="1120" x1="160" />
            <wire x2="240" y1="1120" y2="1136" x1="240" />
            <wire x2="240" y1="1136" y2="1200" x1="240" />
        </branch>
        <iomarker fontsize="28" x="160" y="1120" name="I4(7:0)" orien="R180" />
        <branch name="I5(7:0)">
            <wire x2="240" y1="1264" y2="1264" x1="160" />
            <wire x2="240" y1="1264" y2="1280" x1="240" />
            <wire x2="240" y1="1280" y2="1344" x1="240" />
        </branch>
        <iomarker fontsize="28" x="160" y="1264" name="I5(7:0)" orien="R180" />
        <branch name="I6(7:0)">
            <wire x2="240" y1="1424" y2="1424" x1="160" />
            <wire x2="240" y1="1424" y2="1440" x1="240" />
            <wire x2="240" y1="1440" y2="1504" x1="240" />
        </branch>
        <iomarker fontsize="28" x="160" y="1424" name="I6(7:0)" orien="R180" />
        <branch name="I7(7:0)">
            <wire x2="240" y1="1584" y2="1584" x1="160" />
            <wire x2="240" y1="1584" y2="1600" x1="240" />
            <wire x2="240" y1="1600" y2="1664" x1="240" />
        </branch>
        <iomarker fontsize="28" x="160" y="1584" name="I7(7:0)" orien="R180" />
        <bustap x2="336" y1="1136" y2="1136" x1="240" />
        <bustap x2="336" y1="1200" y2="1200" x1="240" />
        <bustap x2="336" y1="1280" y2="1280" x1="240" />
        <bustap x2="336" y1="1344" y2="1344" x1="240" />
        <bustap x2="336" y1="1440" y2="1440" x1="240" />
        <bustap x2="336" y1="1504" y2="1504" x1="240" />
        <bustap x2="336" y1="1600" y2="1600" x1="240" />
        <bustap x2="336" y1="1664" y2="1664" x1="240" />
        <branch name="I4(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="787" y="976" type="branch" />
            <wire x2="576" y1="1136" y2="1136" x1="336" />
            <wire x2="576" y1="976" y2="1136" x1="576" />
            <wire x2="787" y1="976" y2="976" x1="576" />
            <wire x2="832" y1="976" y2="976" x1="787" />
        </branch>
        <branch name="I4(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1856" type="branch" />
            <wire x2="480" y1="1200" y2="1200" x1="336" />
            <wire x2="480" y1="1200" y2="1856" x1="480" />
            <wire x2="752" y1="1856" y2="1856" x1="480" />
            <wire x2="832" y1="1856" y2="1856" x1="752" />
        </branch>
        <branch name="I5(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="783" y="1040" type="branch" />
            <wire x2="592" y1="1280" y2="1280" x1="336" />
            <wire x2="592" y1="1040" y2="1280" x1="592" />
            <wire x2="783" y1="1040" y2="1040" x1="592" />
            <wire x2="832" y1="1040" y2="1040" x1="783" />
        </branch>
        <branch name="I5(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="766" y="1920" type="branch" />
            <wire x2="576" y1="1344" y2="1344" x1="336" />
            <wire x2="576" y1="1344" y2="1920" x1="576" />
            <wire x2="766" y1="1920" y2="1920" x1="576" />
            <wire x2="832" y1="1920" y2="1920" x1="766" />
        </branch>
        <branch name="I6(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="792" y="1104" type="branch" />
            <wire x2="608" y1="1440" y2="1440" x1="336" />
            <wire x2="608" y1="1104" y2="1440" x1="608" />
            <wire x2="792" y1="1104" y2="1104" x1="608" />
            <wire x2="832" y1="1104" y2="1104" x1="792" />
        </branch>
        <branch name="I6(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="785" y="1984" type="branch" />
            <wire x2="560" y1="1504" y2="1504" x1="336" />
            <wire x2="560" y1="1504" y2="1984" x1="560" />
            <wire x2="785" y1="1984" y2="1984" x1="560" />
            <wire x2="832" y1="1984" y2="1984" x1="785" />
        </branch>
        <branch name="I7(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="778" y="1168" type="branch" />
            <wire x2="400" y1="1600" y2="1600" x1="336" />
            <wire x2="400" y1="1168" y2="1600" x1="400" />
            <wire x2="778" y1="1168" y2="1168" x1="400" />
            <wire x2="832" y1="1168" y2="1168" x1="778" />
        </branch>
        <branch name="I7(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="778" y="2048" type="branch" />
            <wire x2="400" y1="1664" y2="1664" x1="336" />
            <wire x2="400" y1="1664" y2="2048" x1="400" />
            <wire x2="778" y1="2048" y2="2048" x1="400" />
            <wire x2="832" y1="2048" y2="2048" x1="778" />
        </branch>
        <branch name="o0(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1259" y="544" type="branch" />
            <wire x2="1259" y1="544" y2="544" x1="1216" />
            <wire x2="1312" y1="544" y2="544" x1="1259" />
            <wire x2="1312" y1="544" y2="736" x1="1312" />
            <wire x2="1312" y1="736" y2="1008" x1="1312" />
            <wire x2="1312" y1="192" y2="464" x1="1312" />
            <wire x2="1312" y1="464" y2="544" x1="1312" />
        </branch>
        <bustap x2="1408" y1="1008" y2="1008" x1="1312" />
        <branch name="o0(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1008" type="branch" />
            <wire x2="1904" y1="1008" y2="1008" x1="1408" />
            <wire x2="2400" y1="1008" y2="1008" x1="1904" />
        </branch>
        <bustap x2="1408" y1="736" y2="736" x1="1312" />
        <branch name="o0(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="736" type="branch" />
            <wire x2="1904" y1="736" y2="736" x1="1408" />
            <wire x2="2400" y1="736" y2="736" x1="1904" />
        </branch>
        <bustap x2="1408" y1="464" y2="464" x1="1312" />
        <branch name="o0(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="464" type="branch" />
            <wire x2="1904" y1="464" y2="464" x1="1408" />
            <wire x2="2400" y1="464" y2="464" x1="1904" />
        </branch>
        <bustap x2="1408" y1="192" y2="192" x1="1312" />
        <branch name="o0(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="192" type="branch" />
            <wire x2="1904" y1="192" y2="192" x1="1408" />
            <wire x2="2400" y1="192" y2="192" x1="1904" />
        </branch>
        <branch name="o1(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1271" y="912" type="branch" />
            <wire x2="1271" y1="912" y2="912" x1="1216" />
            <wire x2="1488" y1="912" y2="912" x1="1271" />
            <wire x2="1488" y1="912" y2="1136" x1="1488" />
            <wire x2="1488" y1="320" y2="592" x1="1488" />
            <wire x2="1488" y1="592" y2="864" x1="1488" />
            <wire x2="1488" y1="864" y2="912" x1="1488" />
        </branch>
        <bustap x2="1584" y1="1136" y2="1136" x1="1488" />
        <branch name="o1(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1992" y="1136" type="branch" />
            <wire x2="1992" y1="1136" y2="1136" x1="1584" />
            <wire x2="2400" y1="1136" y2="1136" x1="1992" />
        </branch>
        <bustap x2="1584" y1="864" y2="864" x1="1488" />
        <branch name="o1(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1992" y="864" type="branch" />
            <wire x2="1992" y1="864" y2="864" x1="1584" />
            <wire x2="2400" y1="864" y2="864" x1="1992" />
        </branch>
        <bustap x2="1584" y1="592" y2="592" x1="1488" />
        <branch name="o1(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1992" y="592" type="branch" />
            <wire x2="1992" y1="592" y2="592" x1="1584" />
            <wire x2="2400" y1="592" y2="592" x1="1992" />
        </branch>
        <bustap x2="1584" y1="320" y2="320" x1="1488" />
        <branch name="o1(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1992" y="320" type="branch" />
            <wire x2="1992" y1="320" y2="320" x1="1584" />
            <wire x2="2400" y1="320" y2="320" x1="1992" />
        </branch>
        <branch name="o2(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1244" y="1408" type="branch" />
            <wire x2="1244" y1="1408" y2="1408" x1="1216" />
            <wire x2="1312" y1="1408" y2="1408" x1="1244" />
            <wire x2="1312" y1="1408" y2="1552" x1="1312" />
            <wire x2="1312" y1="1552" y2="1824" x1="1312" />
            <wire x2="1312" y1="1824" y2="2096" x1="1312" />
            <wire x2="1312" y1="1280" y2="1408" x1="1312" />
        </branch>
        <bustap x2="1408" y1="2096" y2="2096" x1="1312" />
        <branch name="o2(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="2096" type="branch" />
            <wire x2="1904" y1="2096" y2="2096" x1="1408" />
            <wire x2="2400" y1="2096" y2="2096" x1="1904" />
        </branch>
        <bustap x2="1408" y1="1824" y2="1824" x1="1312" />
        <branch name="o2(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1824" type="branch" />
            <wire x2="1904" y1="1824" y2="1824" x1="1408" />
            <wire x2="2400" y1="1824" y2="1824" x1="1904" />
        </branch>
        <bustap x2="1408" y1="1552" y2="1552" x1="1312" />
        <branch name="o2(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1552" type="branch" />
            <wire x2="1904" y1="1552" y2="1552" x1="1408" />
            <wire x2="2400" y1="1552" y2="1552" x1="1904" />
        </branch>
        <bustap x2="1408" y1="1280" y2="1280" x1="1312" />
        <branch name="o2(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1280" type="branch" />
            <wire x2="1904" y1="1280" y2="1280" x1="1408" />
            <wire x2="2400" y1="1280" y2="1280" x1="1904" />
        </branch>
        <branch name="o3(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1250" y="1792" type="branch" />
            <wire x2="1250" y1="1792" y2="1792" x1="1216" />
            <wire x2="1488" y1="1792" y2="1792" x1="1250" />
            <wire x2="1488" y1="1792" y2="1952" x1="1488" />
            <wire x2="1488" y1="1952" y2="2224" x1="1488" />
            <wire x2="1488" y1="1408" y2="1680" x1="1488" />
            <wire x2="1488" y1="1680" y2="1792" x1="1488" />
        </branch>
        <bustap x2="1584" y1="2224" y2="2224" x1="1488" />
        <branch name="o3(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1992" y="2224" type="branch" />
            <wire x2="1992" y1="2224" y2="2224" x1="1584" />
            <wire x2="2400" y1="2224" y2="2224" x1="1992" />
        </branch>
        <bustap x2="1584" y1="1952" y2="1952" x1="1488" />
        <branch name="o3(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1992" y="1952" type="branch" />
            <wire x2="1992" y1="1952" y2="1952" x1="1584" />
            <wire x2="2400" y1="1952" y2="1952" x1="1992" />
        </branch>
        <bustap x2="1584" y1="1680" y2="1680" x1="1488" />
        <branch name="o3(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1992" y="1680" type="branch" />
            <wire x2="1992" y1="1680" y2="1680" x1="1584" />
            <wire x2="2400" y1="1680" y2="1680" x1="1992" />
        </branch>
        <bustap x2="1584" y1="1408" y2="1408" x1="1488" />
        <branch name="o3(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1992" y="1408" type="branch" />
            <wire x2="1992" y1="1408" y2="1408" x1="1584" />
            <wire x2="2400" y1="1408" y2="1408" x1="1992" />
        </branch>
    </sheet>
</drawing>