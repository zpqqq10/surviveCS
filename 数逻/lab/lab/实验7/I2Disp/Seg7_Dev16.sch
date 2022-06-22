<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="AN(3:0)" />
        <signal name="Scan(1:0)" />
        <signal name="LES(3:0)" />
        <signal name="point(3:0)" />
        <signal name="Hexs(15:0)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="SEGMENT(7)" />
        <signal name="SEGMENT(6)" />
        <signal name="SEGMENT(5)" />
        <signal name="SEGMENT(4)" />
        <signal name="SEGMENT(3)" />
        <signal name="SEGMENT(2)" />
        <signal name="SEGMENT(1)" />
        <signal name="SEGMENT(0)" />
        <signal name="Hex(3:0)" />
        <signal name="Hex(3)" />
        <signal name="Hex(2)" />
        <signal name="Hex(1)" />
        <signal name="Hex(0)" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="flash_clk" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Input" name="Scan(1:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Input" name="point(3:0)" />
        <port polarity="Input" name="Hexs(15:0)" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Input" name="flash_clk" />
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
        <blockdef name="ScanSync_sch">
            <timestamp>2020-11-3T2:54:16</timestamp>
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
        <block symbolname="MC14495_ZJU" name="M1">
            <blockpin signalname="Hex(0)" name="D0" />
            <blockpin signalname="Hex(1)" name="D1" />
            <blockpin signalname="Hex(2)" name="D2" />
            <blockpin signalname="Hex(3)" name="D3" />
            <blockpin signalname="XLXN_23" name="LE" />
            <blockpin signalname="XLXN_1" name="point" />
            <blockpin signalname="SEGMENT(0)" name="a" />
            <blockpin signalname="SEGMENT(1)" name="b" />
            <blockpin signalname="SEGMENT(2)" name="c" />
            <blockpin signalname="SEGMENT(3)" name="d" />
            <blockpin signalname="SEGMENT(4)" name="e" />
            <blockpin signalname="SEGMENT(5)" name="f" />
            <blockpin signalname="SEGMENT(6)" name="g" />
            <blockpin signalname="SEGMENT(7)" name="p" />
        </block>
        <block symbolname="ScanSync_sch" name="M2">
            <blockpin signalname="Hexs(15:0)" name="Hexs(15:0)" />
            <blockpin signalname="point(3:0)" name="point(3:0)" />
            <blockpin signalname="LES(3:0)" name="LES(3:0)" />
            <blockpin signalname="Scan(1:0)" name="Scan(1:0)" />
            <blockpin signalname="Hex(3:0)" name="Hex(3:0)" />
            <blockpin signalname="XLXN_22" name="LE" />
            <blockpin signalname="XLXN_1" name="p" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="flash_clk" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1888" y="1184" name="M1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="960" y="1200" name="M2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="XLXN_1">
            <wire x2="1888" y1="1104" y2="1104" x1="1344" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="1520" y1="1168" y2="1168" x1="1344" />
            <wire x2="1520" y1="1168" y2="1328" x1="1520" />
            <wire x2="1680" y1="1328" y2="1328" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1328" name="AN(3:0)" orien="R0" />
        <branch name="Scan(1:0)">
            <wire x2="960" y1="1168" y2="1168" x1="656" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="960" y1="1104" y2="1104" x1="656" />
        </branch>
        <branch name="point(3:0)">
            <wire x2="960" y1="1040" y2="1040" x1="656" />
        </branch>
        <branch name="Hexs(15:0)">
            <wire x2="960" y1="976" y2="976" x1="656" />
        </branch>
        <iomarker fontsize="28" x="656" y="1168" name="Scan(1:0)" orien="R180" />
        <iomarker fontsize="28" x="656" y="1104" name="LES(3:0)" orien="R180" />
        <iomarker fontsize="28" x="656" y="1040" name="point(3:0)" orien="R180" />
        <iomarker fontsize="28" x="656" y="976" name="Hexs(15:0)" orien="R180" />
        <branch name="SEGMENT(7:0)">
            <wire x2="2560" y1="608" y2="704" x1="2560" />
            <wire x2="2560" y1="704" y2="768" x1="2560" />
            <wire x2="2560" y1="768" y2="832" x1="2560" />
            <wire x2="2560" y1="832" y2="896" x1="2560" />
            <wire x2="2704" y1="896" y2="896" x1="2560" />
            <wire x2="2560" y1="896" y2="960" x1="2560" />
            <wire x2="2560" y1="960" y2="1024" x1="2560" />
            <wire x2="2560" y1="1024" y2="1088" x1="2560" />
            <wire x2="2560" y1="1088" y2="1152" x1="2560" />
            <wire x2="2560" y1="1152" y2="1168" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2704" y="896" name="SEGMENT(7:0)" orien="R0" />
        <bustap x2="2464" y1="1152" y2="1152" x1="2560" />
        <branch name="SEGMENT(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="1152" type="branch" />
            <wire x2="2368" y1="1152" y2="1152" x1="2272" />
            <wire x2="2464" y1="1152" y2="1152" x1="2368" />
        </branch>
        <bustap x2="2464" y1="1088" y2="1088" x1="2560" />
        <branch name="SEGMENT(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="1088" type="branch" />
            <wire x2="2368" y1="1088" y2="1088" x1="2272" />
            <wire x2="2464" y1="1088" y2="1088" x1="2368" />
        </branch>
        <bustap x2="2464" y1="1024" y2="1024" x1="2560" />
        <branch name="SEGMENT(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="1024" type="branch" />
            <wire x2="2368" y1="1024" y2="1024" x1="2272" />
            <wire x2="2464" y1="1024" y2="1024" x1="2368" />
        </branch>
        <bustap x2="2464" y1="960" y2="960" x1="2560" />
        <branch name="SEGMENT(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="960" type="branch" />
            <wire x2="2368" y1="960" y2="960" x1="2272" />
            <wire x2="2464" y1="960" y2="960" x1="2368" />
        </branch>
        <bustap x2="2464" y1="896" y2="896" x1="2560" />
        <branch name="SEGMENT(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="896" type="branch" />
            <wire x2="2368" y1="896" y2="896" x1="2272" />
            <wire x2="2464" y1="896" y2="896" x1="2368" />
        </branch>
        <bustap x2="2464" y1="832" y2="832" x1="2560" />
        <branch name="SEGMENT(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="832" type="branch" />
            <wire x2="2368" y1="832" y2="832" x1="2272" />
            <wire x2="2464" y1="832" y2="832" x1="2368" />
        </branch>
        <bustap x2="2464" y1="768" y2="768" x1="2560" />
        <branch name="SEGMENT(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="768" type="branch" />
            <wire x2="2368" y1="768" y2="768" x1="2272" />
            <wire x2="2464" y1="768" y2="768" x1="2368" />
        </branch>
        <bustap x2="2464" y1="704" y2="704" x1="2560" />
        <branch name="SEGMENT(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="704" type="branch" />
            <wire x2="2368" y1="704" y2="704" x1="2272" />
            <wire x2="2464" y1="704" y2="704" x1="2368" />
        </branch>
        <branch name="Hex(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1359" y="976" type="branch" />
            <wire x2="1680" y1="976" y2="976" x1="1344" />
            <wire x2="1680" y1="672" y2="704" x1="1680" />
            <wire x2="1680" y1="704" y2="784" x1="1680" />
            <wire x2="1680" y1="784" y2="864" x1="1680" />
            <wire x2="1680" y1="864" y2="944" x1="1680" />
            <wire x2="1680" y1="944" y2="976" x1="1680" />
        </branch>
        <bustap x2="1776" y1="944" y2="944" x1="1680" />
        <branch name="Hex(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1832" y="944" type="branch" />
            <wire x2="1888" y1="944" y2="944" x1="1776" />
        </branch>
        <bustap x2="1776" y1="864" y2="864" x1="1680" />
        <branch name="Hex(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1832" y="864" type="branch" />
            <wire x2="1888" y1="864" y2="864" x1="1776" />
        </branch>
        <bustap x2="1776" y1="784" y2="784" x1="1680" />
        <branch name="Hex(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1832" y="784" type="branch" />
            <wire x2="1888" y1="784" y2="784" x1="1776" />
        </branch>
        <bustap x2="1776" y1="704" y2="704" x1="1680" />
        <branch name="Hex(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1832" y="704" type="branch" />
            <wire x2="1888" y1="704" y2="704" x1="1776" />
        </branch>
        <instance x="1296" y="640" name="XLXI_3" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="1296" y1="576" y2="576" x1="1216" />
            <wire x2="1216" y1="576" y2="672" x1="1216" />
            <wire x2="1408" y1="672" y2="672" x1="1216" />
            <wire x2="1408" y1="672" y2="1040" x1="1408" />
            <wire x2="1408" y1="1040" y2="1040" x1="1344" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1648" y1="544" y2="544" x1="1552" />
            <wire x2="1648" y1="544" y2="1024" x1="1648" />
            <wire x2="1888" y1="1024" y2="1024" x1="1648" />
        </branch>
        <branch name="flash_clk">
            <wire x2="1296" y1="512" y2="512" x1="928" />
        </branch>
        <iomarker fontsize="28" x="928" y="512" name="flash_clk" orien="R180" />
    </sheet>
</drawing>