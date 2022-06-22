<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW(7:0)" />
        <signal name="LE" />
        <signal name="point" />
        <signal name="SW(0)" />
        <signal name="SW(1)" />
        <signal name="SW(2)" />
        <signal name="SW(3)" />
        <signal name="SW(4)" />
        <signal name="SW(5)" />
        <signal name="SW(6)" />
        <signal name="SW(7)" />
        <signal name="AN(3:0)" />
        <signal name="AN(0)" />
        <signal name="AN(1)" />
        <signal name="AN(2)" />
        <signal name="AN(3)" />
        <signal name="XLXN_19" />
        <signal name="Buzzer" />
        <signal name="SEGMENT(7:0)" />
        <signal name="SEGMENT(0)" />
        <signal name="SEGMENT(1)" />
        <signal name="SEGMENT(2)" />
        <signal name="SEGMENT(7)" />
        <signal name="SEGMENT(6)" />
        <signal name="SEGMENT(5)" />
        <signal name="SEGMENT(4)" />
        <signal name="SEGMENT(3)" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Input" name="LE" />
        <port polarity="Input" name="point" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Output" name="SEGMENT(7:0)" />
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
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="MC14495_ZJU" name="M1">
            <blockpin signalname="SW(0)" name="D0" />
            <blockpin signalname="SW(1)" name="D1" />
            <blockpin signalname="SW(2)" name="D2" />
            <blockpin signalname="SW(3)" name="D3" />
            <blockpin signalname="LE" name="LE" />
            <blockpin signalname="point" name="point" />
            <blockpin signalname="SEGMENT(0)" name="a" />
            <blockpin signalname="SEGMENT(1)" name="b" />
            <blockpin signalname="SEGMENT(2)" name="c" />
            <blockpin signalname="SEGMENT(3)" name="d" />
            <blockpin signalname="SEGMENT(4)" name="e" />
            <blockpin signalname="SEGMENT(5)" name="f" />
            <blockpin signalname="SEGMENT(6)" name="g" />
            <blockpin signalname="SEGMENT(7)" name="p" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="SW(4)" name="I" />
            <blockpin signalname="AN(0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="SW(5)" name="I" />
            <blockpin signalname="AN(1)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="SW(6)" name="I" />
            <blockpin signalname="AN(2)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="SW(7)" name="I" />
            <blockpin signalname="AN(3)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_19" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="XLXN_19" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1360" y="1360" name="M1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="SW(7:0)">
            <wire x2="912" y1="2000" y2="2000" x1="592" />
            <wire x2="912" y1="720" y2="880" x1="912" />
            <wire x2="912" y1="880" y2="960" x1="912" />
            <wire x2="912" y1="960" y2="1040" x1="912" />
            <wire x2="912" y1="1040" y2="1120" x1="912" />
            <wire x2="912" y1="1120" y2="1584" x1="912" />
            <wire x2="912" y1="1584" y2="1664" x1="912" />
            <wire x2="912" y1="1664" y2="1744" x1="912" />
            <wire x2="912" y1="1744" y2="1824" x1="912" />
            <wire x2="912" y1="1824" y2="2000" x1="912" />
        </branch>
        <instance x="1360" y="1616" name="XLXI_2" orien="R0" />
        <instance x="1360" y="1696" name="XLXI_3" orien="R0" />
        <instance x="1360" y="1776" name="XLXI_4" orien="R0" />
        <instance x="1360" y="1856" name="XLXI_5" orien="R0" />
        <branch name="LE">
            <wire x2="1360" y1="1200" y2="1200" x1="576" />
        </branch>
        <branch name="point">
            <wire x2="1360" y1="1280" y2="1280" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="1200" name="LE" orien="R180" />
        <iomarker fontsize="28" x="576" y="1280" name="point" orien="R180" />
        <iomarker fontsize="28" x="592" y="2000" name="SW(7:0)" orien="R180" />
        <bustap x2="1008" y1="880" y2="880" x1="912" />
        <bustap x2="1008" y1="960" y2="960" x1="912" />
        <bustap x2="1008" y1="1040" y2="1040" x1="912" />
        <bustap x2="1008" y1="1120" y2="1120" x1="912" />
        <branch name="SW(0)">
            <wire x2="1360" y1="880" y2="880" x1="1008" />
        </branch>
        <branch name="SW(1)">
            <wire x2="1360" y1="960" y2="960" x1="1008" />
        </branch>
        <branch name="SW(2)">
            <wire x2="1360" y1="1040" y2="1040" x1="1008" />
        </branch>
        <branch name="SW(3)">
            <wire x2="1360" y1="1120" y2="1120" x1="1008" />
        </branch>
        <bustap x2="1008" y1="1584" y2="1584" x1="912" />
        <bustap x2="1008" y1="1664" y2="1664" x1="912" />
        <bustap x2="1008" y1="1744" y2="1744" x1="912" />
        <bustap x2="1008" y1="1824" y2="1824" x1="912" />
        <branch name="SW(4)">
            <wire x2="1360" y1="1584" y2="1584" x1="1008" />
        </branch>
        <branch name="SW(5)">
            <wire x2="1360" y1="1664" y2="1664" x1="1008" />
        </branch>
        <branch name="SW(6)">
            <wire x2="1360" y1="1744" y2="1744" x1="1008" />
        </branch>
        <branch name="SW(7)">
            <wire x2="1360" y1="1824" y2="1824" x1="1008" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="1824" y1="1536" y2="1584" x1="1824" />
            <wire x2="1824" y1="1584" y2="1664" x1="1824" />
            <wire x2="1824" y1="1664" y2="1696" x1="1824" />
            <wire x2="1984" y1="1696" y2="1696" x1="1824" />
            <wire x2="1824" y1="1696" y2="1744" x1="1824" />
            <wire x2="1824" y1="1744" y2="1824" x1="1824" />
            <wire x2="1824" y1="1824" y2="1872" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1984" y="1696" name="AN(3:0)" orien="R0" />
        <bustap x2="1728" y1="1584" y2="1584" x1="1824" />
        <bustap x2="1728" y1="1664" y2="1664" x1="1824" />
        <bustap x2="1728" y1="1744" y2="1744" x1="1824" />
        <bustap x2="1728" y1="1824" y2="1824" x1="1824" />
        <branch name="AN(0)">
            <wire x2="1728" y1="1584" y2="1584" x1="1584" />
        </branch>
        <branch name="AN(1)">
            <wire x2="1728" y1="1664" y2="1664" x1="1584" />
        </branch>
        <branch name="AN(2)">
            <wire x2="1728" y1="1744" y2="1744" x1="1584" />
        </branch>
        <branch name="AN(3)">
            <wire x2="1728" y1="1824" y2="1824" x1="1584" />
        </branch>
        <instance x="1936" y="1488" name="XLXI_6" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="2000" y1="1488" y2="1520" x1="2000" />
            <wire x2="2272" y1="1520" y2="1520" x1="2000" />
        </branch>
        <instance x="2272" y="1552" name="XLXI_8" orien="R0" />
        <branch name="Buzzer">
            <wire x2="2656" y1="1520" y2="1520" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2656" y="1520" name="Buzzer" orien="R0" />
        <branch name="SEGMENT(7:0)">
            <wire x2="2144" y1="800" y2="880" x1="2144" />
            <wire x2="2144" y1="880" y2="944" x1="2144" />
            <wire x2="2144" y1="944" y2="1008" x1="2144" />
            <wire x2="2144" y1="1008" y2="1072" x1="2144" />
            <wire x2="2144" y1="1072" y2="1104" x1="2144" />
            <wire x2="2496" y1="1104" y2="1104" x1="2144" />
            <wire x2="2144" y1="1104" y2="1136" x1="2144" />
            <wire x2="2144" y1="1136" y2="1200" x1="2144" />
            <wire x2="2144" y1="1200" y2="1264" x1="2144" />
            <wire x2="2144" y1="1264" y2="1328" x1="2144" />
            <wire x2="2144" y1="1328" y2="1360" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2496" y="1104" name="SEGMENT(7:0)" orien="R0" />
        <bustap x2="2048" y1="880" y2="880" x1="2144" />
        <bustap x2="2048" y1="944" y2="944" x1="2144" />
        <bustap x2="2048" y1="1008" y2="1008" x1="2144" />
        <bustap x2="2048" y1="1072" y2="1072" x1="2144" />
        <bustap x2="2048" y1="1136" y2="1136" x1="2144" />
        <bustap x2="2048" y1="1200" y2="1200" x1="2144" />
        <bustap x2="2048" y1="1264" y2="1264" x1="2144" />
        <bustap x2="2048" y1="1328" y2="1328" x1="2144" />
        <branch name="SEGMENT(0)">
            <wire x2="2048" y1="880" y2="880" x1="1744" />
        </branch>
        <branch name="SEGMENT(1)">
            <wire x2="2048" y1="944" y2="944" x1="1744" />
        </branch>
        <branch name="SEGMENT(2)">
            <wire x2="2048" y1="1008" y2="1008" x1="1744" />
        </branch>
        <branch name="SEGMENT(7)">
            <wire x2="2048" y1="1328" y2="1328" x1="1744" />
        </branch>
        <branch name="SEGMENT(6)">
            <wire x2="2048" y1="1264" y2="1264" x1="1744" />
        </branch>
        <branch name="SEGMENT(5)">
            <wire x2="2048" y1="1200" y2="1200" x1="1744" />
        </branch>
        <branch name="SEGMENT(4)">
            <wire x2="2048" y1="1136" y2="1136" x1="1744" />
        </branch>
        <branch name="SEGMENT(3)">
            <wire x2="2048" y1="1072" y2="1072" x1="1744" />
        </branch>
    </sheet>
</drawing>