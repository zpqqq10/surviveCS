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
        <signal name="A" />
        <signal name="B" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="C" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="D0" />
        <signal name="D1" />
        <signal name="D2" />
        <signal name="D3" />
        <signal name="D4" />
        <signal name="D5" />
        <signal name="D6" />
        <signal name="D7" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="D0" />
        <port polarity="Output" name="D1" />
        <port polarity="Output" name="D2" />
        <port polarity="Output" name="D3" />
        <port polarity="Output" name="D4" />
        <port polarity="Output" name="D5" />
        <port polarity="Output" name="D6" />
        <port polarity="Output" name="D7" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="D1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="D2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="D3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="D4" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="D5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="D6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="D7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="D0" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1120" y="1184" name="XLXI_1" orien="R0" />
        <instance x="1760" y="1280" name="XLXI_3" orien="R0" />
        <instance x="1776" y="1616" name="XLXI_4" orien="R0" />
        <instance x="1776" y="1872" name="XLXI_5" orien="R0" />
        <instance x="1776" y="2128" name="XLXI_6" orien="R0" />
        <instance x="1120" y="1584" name="XLXI_7" orien="R0" />
        <instance x="1776" y="2304" name="XLXI_8" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1552" y1="1152" y2="1152" x1="1344" />
            <wire x2="1760" y1="1152" y2="1152" x1="1552" />
            <wire x2="1552" y1="1152" y2="1744" x1="1552" />
            <wire x2="1776" y1="1744" y2="1744" x1="1552" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1680" y1="1552" y2="1552" x1="1344" />
            <wire x2="1776" y1="1552" y2="1552" x1="1680" />
            <wire x2="1760" y1="1216" y2="1216" x1="1680" />
            <wire x2="1680" y1="1216" y2="1552" x1="1680" />
        </branch>
        <branch name="A">
            <wire x2="944" y1="1264" y2="1264" x1="800" />
            <wire x2="944" y1="1264" y2="1488" x1="944" />
            <wire x2="1504" y1="1488" y2="1488" x1="944" />
            <wire x2="1776" y1="1488" y2="1488" x1="1504" />
            <wire x2="1504" y1="1488" y2="2000" x1="1504" />
            <wire x2="1776" y1="2000" y2="2000" x1="1504" />
            <wire x2="1120" y1="1152" y2="1152" x1="944" />
            <wire x2="944" y1="1152" y2="1264" x1="944" />
        </branch>
        <branch name="B">
            <wire x2="960" y1="1664" y2="1664" x1="800" />
            <wire x2="960" y1="1664" y2="1808" x1="960" />
            <wire x2="1456" y1="1808" y2="1808" x1="960" />
            <wire x2="1776" y1="1808" y2="1808" x1="1456" />
            <wire x2="1456" y1="1808" y2="2064" x1="1456" />
            <wire x2="1776" y1="2064" y2="2064" x1="1456" />
            <wire x2="1120" y1="1552" y2="1552" x1="960" />
            <wire x2="960" y1="1552" y2="1664" x1="960" />
        </branch>
        <iomarker fontsize="28" x="800" y="1264" name="A" orien="R180" />
        <iomarker fontsize="28" x="800" y="1664" name="B" orien="R180" />
        <branch name="C">
            <wire x2="960" y1="2368" y2="2368" x1="832" />
            <wire x2="2096" y1="2368" y2="2368" x1="960" />
            <wire x2="2096" y1="2368" y2="2416" x1="2096" />
            <wire x2="2288" y1="2416" y2="2416" x1="2096" />
            <wire x2="2096" y1="2416" y2="2608" x1="2096" />
            <wire x2="2288" y1="2608" y2="2608" x1="2096" />
            <wire x2="1776" y1="2272" y2="2272" x1="960" />
            <wire x2="960" y1="2272" y2="2368" x1="960" />
            <wire x2="2288" y1="1984" y2="1984" x1="2096" />
            <wire x2="2096" y1="1984" y2="2208" x1="2096" />
            <wire x2="2096" y1="2208" y2="2368" x1="2096" />
            <wire x2="2288" y1="2208" y2="2208" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="832" y="2368" name="C" orien="R180" />
        <instance x="2288" y="1280" name="XLXI_9" orien="R0" />
        <instance x="2288" y="1536" name="XLXI_10" orien="R0" />
        <instance x="2288" y="1792" name="XLXI_11" orien="R0" />
        <instance x="2288" y="2048" name="XLXI_12" orien="R0" />
        <instance x="2288" y="2272" name="XLXI_13" orien="R0" />
        <instance x="2288" y="2480" name="XLXI_14" orien="R0" />
        <instance x="2288" y="2672" name="XLXI_15" orien="R0" />
        <instance x="2288" y="1056" name="XLXI_16" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="2144" y1="1184" y2="1184" x1="2016" />
            <wire x2="2144" y1="1184" y2="1920" x1="2144" />
            <wire x2="2288" y1="1920" y2="1920" x1="2144" />
            <wire x2="2144" y1="928" y2="1184" x1="2144" />
            <wire x2="2288" y1="928" y2="928" x1="2144" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2160" y1="1520" y2="1520" x1="2032" />
            <wire x2="2160" y1="1520" y2="2144" x1="2160" />
            <wire x2="2288" y1="2144" y2="2144" x1="2160" />
            <wire x2="2160" y1="1152" y2="1520" x1="2160" />
            <wire x2="2288" y1="1152" y2="1152" x1="2160" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2176" y1="1776" y2="1776" x1="2032" />
            <wire x2="2176" y1="1776" y2="2352" x1="2176" />
            <wire x2="2288" y1="2352" y2="2352" x1="2176" />
            <wire x2="2176" y1="1408" y2="1776" x1="2176" />
            <wire x2="2288" y1="1408" y2="1408" x1="2176" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2128" y1="2032" y2="2032" x1="2032" />
            <wire x2="2128" y1="2032" y2="2544" x1="2128" />
            <wire x2="2288" y1="2544" y2="2544" x1="2128" />
            <wire x2="2128" y1="1664" y2="2032" x1="2128" />
            <wire x2="2288" y1="1664" y2="1664" x1="2128" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2112" y1="2272" y2="2272" x1="2000" />
            <wire x2="2288" y1="992" y2="992" x1="2112" />
            <wire x2="2112" y1="992" y2="1216" x1="2112" />
            <wire x2="2288" y1="1216" y2="1216" x1="2112" />
            <wire x2="2112" y1="1216" y2="1472" x1="2112" />
            <wire x2="2288" y1="1472" y2="1472" x1="2112" />
            <wire x2="2112" y1="1472" y2="1728" x1="2112" />
            <wire x2="2112" y1="1728" y2="2272" x1="2112" />
            <wire x2="2288" y1="1728" y2="1728" x1="2112" />
        </branch>
        <branch name="D0">
            <wire x2="2640" y1="960" y2="960" x1="2544" />
        </branch>
        <branch name="D1">
            <wire x2="2640" y1="1184" y2="1184" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2640" y="960" name="D0" orien="R0" />
        <iomarker fontsize="28" x="2640" y="1184" name="D1" orien="R0" />
        <branch name="D2">
            <wire x2="2640" y1="1440" y2="1440" x1="2544" />
        </branch>
        <branch name="D3">
            <wire x2="2640" y1="1696" y2="1696" x1="2544" />
        </branch>
        <branch name="D4">
            <wire x2="2640" y1="1952" y2="1952" x1="2544" />
        </branch>
        <branch name="D5">
            <wire x2="2640" y1="2176" y2="2176" x1="2544" />
        </branch>
        <branch name="D6">
            <wire x2="2640" y1="2384" y2="2384" x1="2544" />
        </branch>
        <branch name="D7">
            <wire x2="2640" y1="2576" y2="2576" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2640" y="2576" name="D7" orien="R0" />
        <iomarker fontsize="28" x="2640" y="2384" name="D6" orien="R0" />
        <iomarker fontsize="28" x="2640" y="2176" name="D5" orien="R0" />
        <iomarker fontsize="28" x="2640" y="1952" name="D4" orien="R0" />
        <iomarker fontsize="28" x="2640" y="1696" name="D3" orien="R0" />
        <iomarker fontsize="28" x="2640" y="1440" name="D2" orien="R0" />
    </sheet>
</drawing>