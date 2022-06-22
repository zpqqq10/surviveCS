<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="LES(7:0)" />
        <signal name="point(7:0)" />
        <signal name="Hexs(31:0)" />
        <signal name="Scan(2:0)" />
        <signal name="V5" />
        <signal name="G0" />
        <signal name="Hex(7:0)" />
        <signal name="Hex(7)" />
        <signal name="Hex(6)" />
        <signal name="Hex(5)" />
        <signal name="Hex(4)" />
        <signal name="Hexo(3:0)" />
        <signal name="Hexo(3)" />
        <signal name="Hexo(2)" />
        <signal name="Hexo(1)" />
        <signal name="Hexo(0)" />
        <signal name="COM(7:0)" />
        <signal name="COM(7)" />
        <signal name="COM(6)" />
        <signal name="COM(3)" />
        <signal name="COM(2)" />
        <signal name="COM(1)" />
        <signal name="COM(0)" />
        <signal name="LE" />
        <signal name="p" />
        <signal name="AN(3:0)" />
        <signal name="AN(3)" />
        <signal name="AN(2)" />
        <signal name="AN(1)" />
        <signal name="AN(0)" />
        <signal name="LES(0),point(0),G0,G0,V5,V5,V5,G0" />
        <signal name="LES(1),point(1),G0,G0,V5,V5,G0,V5" />
        <signal name="LES(2),point(2),G0,G0,V5,G0,V5,V5" />
        <signal name="LES(3),point(3),G0,G0,G0,V5,V5,V5" />
        <signal name="LES(4),point(4),G0,G0,V5,V5,V5,G0" />
        <signal name="LES(5),point(5),G0,G0,V5,V5,G0,V5" />
        <signal name="LES(6),point(6),G0,G0,V5,G0,V5,V5" />
        <signal name="LES(7),point(7),G0,G0,G0,V5,V5,V5" />
        <signal name="Hexs(3:0),G0,G0,G0,G0" />
        <signal name="Hexs(7:4),G0,G0,G0,G0" />
        <signal name="Hexs(11:8),G0,G0,G0,G0" />
        <signal name="Hexs(15:12),G0,G0,G0,G0" />
        <signal name="Hexs(19:16),G0,G0,G0,G0" />
        <signal name="Hexs(23:20),G0,G0,G0,G0" />
        <signal name="Hexs(27:24),G0,G0,G0,G0" />
        <signal name="Hexs(31:28),G0,G0,G0,G0" />
        <port polarity="Input" name="LES(7:0)" />
        <port polarity="Input" name="point(7:0)" />
        <port polarity="Input" name="Hexs(31:0)" />
        <port polarity="Input" name="Scan(2:0)" />
        <port polarity="Output" name="Hexo(3:0)" />
        <port polarity="Output" name="LE" />
        <port polarity="Output" name="p" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="MUX8T1_8">
            <timestamp>2020-11-3T2:29:25</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
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
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
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
        <block symbolname="MUX8T1_8" name="XLXI_1">
            <blockpin signalname="Scan(2:0)" name="s(2:0)" />
            <blockpin signalname="Hexs(3:0),G0,G0,G0,G0" name="I0(7:0)" />
            <blockpin signalname="Hexs(7:4),G0,G0,G0,G0" name="I1(7:0)" />
            <blockpin signalname="Hexs(11:8),G0,G0,G0,G0" name="I2(7:0)" />
            <blockpin signalname="Hexs(15:12),G0,G0,G0,G0" name="I3(7:0)" />
            <blockpin signalname="Hexs(19:16),G0,G0,G0,G0" name="I4(7:0)" />
            <blockpin signalname="Hexs(23:20),G0,G0,G0,G0" name="I5(7:0)" />
            <blockpin signalname="Hexs(27:24),G0,G0,G0,G0" name="I6(7:0)" />
            <blockpin signalname="Hexs(31:28),G0,G0,G0,G0" name="I7(7:0)" />
            <blockpin signalname="Hex(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="MUX8T1_8" name="XLXI_2">
            <blockpin signalname="Scan(2:0)" name="s(2:0)" />
            <blockpin signalname="LES(0),point(0),G0,G0,V5,V5,V5,G0" name="I0(7:0)" />
            <blockpin signalname="LES(1),point(1),G0,G0,V5,V5,G0,V5" name="I1(7:0)" />
            <blockpin signalname="LES(2),point(2),G0,G0,V5,G0,V5,V5" name="I2(7:0)" />
            <blockpin signalname="LES(3),point(3),G0,G0,G0,V5,V5,V5" name="I3(7:0)" />
            <blockpin signalname="LES(4),point(4),G0,G0,V5,V5,V5,G0" name="I4(7:0)" />
            <blockpin signalname="LES(5),point(5),G0,G0,V5,V5,G0,V5" name="I5(7:0)" />
            <blockpin signalname="LES(6),point(6),G0,G0,V5,G0,V5,V5" name="I6(7:0)" />
            <blockpin signalname="LES(7),point(7),G0,G0,G0,V5,V5,V5" name="I7(7:0)" />
            <blockpin signalname="COM(7:0)" name="o(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_12">
            <blockpin signalname="G0" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_13">
            <blockpin signalname="Hex(4)" name="I" />
            <blockpin signalname="Hexo(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_14">
            <blockpin signalname="Hex(5)" name="I" />
            <blockpin signalname="Hexo(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_15">
            <blockpin signalname="Hex(6)" name="I" />
            <blockpin signalname="Hexo(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_16">
            <blockpin signalname="Hex(7)" name="I" />
            <blockpin signalname="Hexo(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_19">
            <blockpin signalname="COM(3)" name="I" />
            <blockpin signalname="AN(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_20">
            <blockpin signalname="COM(2)" name="I" />
            <blockpin signalname="AN(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_21">
            <blockpin signalname="COM(1)" name="I" />
            <blockpin signalname="AN(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_22">
            <blockpin signalname="COM(0)" name="I" />
            <blockpin signalname="AN(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_17">
            <blockpin signalname="COM(7)" name="I" />
            <blockpin signalname="LE" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_18">
            <blockpin signalname="COM(6)" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="LES(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="608" type="branch" />
            <wire x2="720" y1="608" y2="608" x1="464" />
        </branch>
        <branch name="point(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="496" type="branch" />
            <wire x2="720" y1="496" y2="496" x1="464" />
        </branch>
        <branch name="Hexs(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="368" type="branch" />
            <wire x2="720" y1="368" y2="368" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="608" name="LES(7:0)" orien="R180" />
        <iomarker fontsize="28" x="464" y="496" name="point(7:0)" orien="R180" />
        <iomarker fontsize="28" x="464" y="368" name="Hexs(31:0)" orien="R180" />
        <iomarker fontsize="28" x="464" y="208" name="Scan(2:0)" orien="R180" />
        <branch name="Scan(2:0)">
            <wire x2="896" y1="208" y2="208" x1="464" />
            <wire x2="896" y1="208" y2="832" x1="896" />
            <wire x2="1392" y1="832" y2="832" x1="896" />
            <wire x2="896" y1="832" y2="1648" x1="896" />
            <wire x2="1392" y1="1648" y2="1648" x1="896" />
        </branch>
        <instance x="1392" y="1376" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1392" y="2192" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1216" y="272" name="XLXI_11" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="400" type="branch" />
            <wire x2="1280" y1="272" y2="400" x1="1280" />
            <wire x2="1424" y1="400" y2="400" x1="1280" />
        </branch>
        <instance x="1664" y="464" name="XLXI_12" orien="R0" />
        <branch name="G0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="240" type="branch" />
            <wire x2="1888" y1="240" y2="240" x1="1728" />
            <wire x2="1728" y1="240" y2="336" x1="1728" />
        </branch>
        <branch name="Hex(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1937" y="832" type="branch" />
            <wire x2="1936" y1="832" y2="832" x1="1776" />
            <wire x2="2144" y1="832" y2="832" x1="1936" />
            <wire x2="2144" y1="832" y2="848" x1="2144" />
            <wire x2="2144" y1="848" y2="976" x1="2144" />
            <wire x2="2144" y1="976" y2="1120" x1="2144" />
            <wire x2="2144" y1="1120" y2="1296" x1="2144" />
        </branch>
        <bustap x2="2240" y1="848" y2="848" x1="2144" />
        <bustap x2="2240" y1="976" y2="976" x1="2144" />
        <bustap x2="2240" y1="1120" y2="1120" x1="2144" />
        <bustap x2="2240" y1="1296" y2="1296" x1="2144" />
        <instance x="2336" y="1328" name="XLXI_13" orien="R0" />
        <instance x="2336" y="1152" name="XLXI_14" orien="R0" />
        <instance x="2336" y="1008" name="XLXI_15" orien="R0" />
        <instance x="2336" y="880" name="XLXI_16" orien="R0" />
        <branch name="Hex(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2283" y="848" type="branch" />
            <wire x2="2288" y1="848" y2="848" x1="2240" />
            <wire x2="2336" y1="848" y2="848" x1="2288" />
        </branch>
        <branch name="Hex(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2286" y="976" type="branch" />
            <wire x2="2288" y1="976" y2="976" x1="2240" />
            <wire x2="2336" y1="976" y2="976" x1="2288" />
        </branch>
        <branch name="Hex(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2291" y="1120" type="branch" />
            <wire x2="2288" y1="1120" y2="1120" x1="2240" />
            <wire x2="2336" y1="1120" y2="1120" x1="2288" />
        </branch>
        <branch name="Hex(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2287" y="1296" type="branch" />
            <wire x2="2288" y1="1296" y2="1296" x1="2240" />
            <wire x2="2336" y1="1296" y2="1296" x1="2288" />
        </branch>
        <branch name="Hexo(3:0)">
            <wire x2="2848" y1="832" y2="848" x1="2848" />
            <wire x2="2848" y1="848" y2="976" x1="2848" />
            <wire x2="2848" y1="976" y2="1056" x1="2848" />
            <wire x2="2992" y1="1056" y2="1056" x1="2848" />
            <wire x2="2848" y1="1056" y2="1120" x1="2848" />
            <wire x2="2848" y1="1120" y2="1296" x1="2848" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1056" name="Hexo(3:0)" orien="R0" />
        <bustap x2="2752" y1="848" y2="848" x1="2848" />
        <branch name="Hexo(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="848" type="branch" />
            <wire x2="2656" y1="848" y2="848" x1="2560" />
            <wire x2="2752" y1="848" y2="848" x1="2656" />
        </branch>
        <bustap x2="2752" y1="976" y2="976" x1="2848" />
        <branch name="Hexo(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="976" type="branch" />
            <wire x2="2656" y1="976" y2="976" x1="2560" />
            <wire x2="2752" y1="976" y2="976" x1="2656" />
        </branch>
        <bustap x2="2752" y1="1120" y2="1120" x1="2848" />
        <branch name="Hexo(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1120" type="branch" />
            <wire x2="2656" y1="1120" y2="1120" x1="2560" />
            <wire x2="2752" y1="1120" y2="1120" x1="2656" />
        </branch>
        <bustap x2="2752" y1="1296" y2="1296" x1="2848" />
        <branch name="Hexo(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="1296" type="branch" />
            <wire x2="2656" y1="1296" y2="1296" x1="2560" />
            <wire x2="2752" y1="1296" y2="1296" x1="2656" />
        </branch>
        <branch name="COM(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1955" y="1648" type="branch" />
            <wire x2="1952" y1="1648" y2="1648" x1="1776" />
            <wire x2="2096" y1="1648" y2="1648" x1="1952" />
            <wire x2="2096" y1="1648" y2="1680" x1="2096" />
            <wire x2="2096" y1="1680" y2="1744" x1="2096" />
            <wire x2="2096" y1="1744" y2="1776" x1="2096" />
            <wire x2="2096" y1="1776" y2="1840" x1="2096" />
            <wire x2="2096" y1="1840" y2="1936" x1="2096" />
            <wire x2="2096" y1="1936" y2="2032" x1="2096" />
            <wire x2="2096" y1="2032" y2="2128" x1="2096" />
            <wire x2="2096" y1="2128" y2="2224" x1="2096" />
        </branch>
        <instance x="2320" y="1968" name="XLXI_19" orien="R0" />
        <instance x="2320" y="2064" name="XLXI_20" orien="R0" />
        <instance x="2320" y="2160" name="XLXI_21" orien="R0" />
        <instance x="2320" y="2256" name="XLXI_22" orien="R0" />
        <instance x="2320" y="1712" name="XLXI_17" orien="R0" />
        <instance x="2320" y="1808" name="XLXI_18" orien="R0" />
        <bustap x2="2192" y1="1680" y2="1680" x1="2096" />
        <branch name="COM(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1680" type="branch" />
            <wire x2="2256" y1="1680" y2="1680" x1="2192" />
            <wire x2="2320" y1="1680" y2="1680" x1="2256" />
        </branch>
        <bustap x2="2192" y1="1776" y2="1776" x1="2096" />
        <branch name="COM(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1776" type="branch" />
            <wire x2="2256" y1="1776" y2="1776" x1="2192" />
            <wire x2="2320" y1="1776" y2="1776" x1="2256" />
        </branch>
        <bustap x2="2192" y1="1936" y2="1936" x1="2096" />
        <branch name="COM(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1936" type="branch" />
            <wire x2="2256" y1="1936" y2="1936" x1="2192" />
            <wire x2="2320" y1="1936" y2="1936" x1="2256" />
        </branch>
        <bustap x2="2192" y1="2032" y2="2032" x1="2096" />
        <branch name="COM(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2032" type="branch" />
            <wire x2="2256" y1="2032" y2="2032" x1="2192" />
            <wire x2="2320" y1="2032" y2="2032" x1="2256" />
        </branch>
        <bustap x2="2192" y1="2128" y2="2128" x1="2096" />
        <branch name="COM(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2128" type="branch" />
            <wire x2="2256" y1="2128" y2="2128" x1="2192" />
            <wire x2="2320" y1="2128" y2="2128" x1="2256" />
        </branch>
        <bustap x2="2192" y1="2224" y2="2224" x1="2096" />
        <branch name="COM(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2224" type="branch" />
            <wire x2="2256" y1="2224" y2="2224" x1="2192" />
            <wire x2="2320" y1="2224" y2="2224" x1="2256" />
        </branch>
        <branch name="LE">
            <wire x2="2704" y1="1680" y2="1680" x1="2544" />
        </branch>
        <branch name="p">
            <wire x2="2704" y1="1776" y2="1776" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2704" y="1680" name="LE" orien="R0" />
        <iomarker fontsize="28" x="2704" y="1776" name="p" orien="R0" />
        <branch name="AN(3:0)">
            <wire x2="2704" y1="1936" y2="2032" x1="2704" />
            <wire x2="2704" y1="2032" y2="2080" x1="2704" />
            <wire x2="2880" y1="2080" y2="2080" x1="2704" />
            <wire x2="2704" y1="2080" y2="2128" x1="2704" />
            <wire x2="2704" y1="2128" y2="2224" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2880" y="2080" name="AN(3:0)" orien="R0" />
        <bustap x2="2608" y1="1936" y2="1936" x1="2704" />
        <branch name="AN(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="1936" type="branch" />
            <wire x2="2576" y1="1936" y2="1936" x1="2544" />
            <wire x2="2608" y1="1936" y2="1936" x1="2576" />
        </branch>
        <bustap x2="2608" y1="2032" y2="2032" x1="2704" />
        <branch name="AN(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="2032" type="branch" />
            <wire x2="2576" y1="2032" y2="2032" x1="2544" />
            <wire x2="2608" y1="2032" y2="2032" x1="2576" />
        </branch>
        <bustap x2="2608" y1="2128" y2="2128" x1="2704" />
        <branch name="AN(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="2128" type="branch" />
            <wire x2="2576" y1="2128" y2="2128" x1="2544" />
            <wire x2="2608" y1="2128" y2="2128" x1="2576" />
        </branch>
        <bustap x2="2608" y1="2224" y2="2224" x1="2704" />
        <branch name="AN(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="2224" type="branch" />
            <wire x2="2576" y1="2224" y2="2224" x1="2544" />
            <wire x2="2608" y1="2224" y2="2224" x1="2576" />
        </branch>
        <branch name="LES(0),point(0),G0,G0,V5,V5,V5,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1712" type="branch" />
            <wire x2="1392" y1="1712" y2="1712" x1="1056" />
        </branch>
        <branch name="LES(1),point(1),G0,G0,V5,V5,G0,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1776" type="branch" />
            <wire x2="1392" y1="1776" y2="1776" x1="1056" />
        </branch>
        <branch name="LES(2),point(2),G0,G0,V5,G0,V5,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1840" type="branch" />
            <wire x2="1392" y1="1840" y2="1840" x1="1056" />
        </branch>
        <branch name="LES(3),point(3),G0,G0,G0,V5,V5,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1904" type="branch" />
            <wire x2="1392" y1="1904" y2="1904" x1="1056" />
        </branch>
        <branch name="LES(4),point(4),G0,G0,V5,V5,V5,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1968" type="branch" />
            <wire x2="1392" y1="1968" y2="1968" x1="1056" />
        </branch>
        <branch name="LES(5),point(5),G0,G0,V5,V5,G0,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="2032" type="branch" />
            <wire x2="1392" y1="2032" y2="2032" x1="1056" />
        </branch>
        <branch name="LES(6),point(6),G0,G0,V5,G0,V5,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="2096" type="branch" />
            <wire x2="1392" y1="2096" y2="2096" x1="1056" />
        </branch>
        <branch name="LES(7),point(7),G0,G0,G0,V5,V5,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="2160" type="branch" />
            <wire x2="1392" y1="2160" y2="2160" x1="1056" />
        </branch>
        <branch name="Hexs(3:0),G0,G0,G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="896" type="branch" />
            <wire x2="1392" y1="896" y2="896" x1="1136" />
        </branch>
        <branch name="Hexs(7:4),G0,G0,G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="960" type="branch" />
            <wire x2="1392" y1="960" y2="960" x1="1136" />
        </branch>
        <branch name="Hexs(11:8),G0,G0,G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1024" type="branch" />
            <wire x2="1392" y1="1024" y2="1024" x1="1136" />
        </branch>
        <branch name="Hexs(15:12),G0,G0,G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1088" type="branch" />
            <wire x2="1392" y1="1088" y2="1088" x1="1136" />
        </branch>
        <branch name="Hexs(19:16),G0,G0,G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1152" type="branch" />
            <wire x2="1392" y1="1152" y2="1152" x1="1136" />
        </branch>
        <branch name="Hexs(23:20),G0,G0,G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1216" type="branch" />
            <wire x2="1392" y1="1216" y2="1216" x1="1136" />
        </branch>
        <branch name="Hexs(27:24),G0,G0,G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1280" type="branch" />
            <wire x2="1392" y1="1280" y2="1280" x1="1136" />
        </branch>
        <branch name="Hexs(31:28),G0,G0,G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1344" type="branch" />
            <wire x2="1392" y1="1344" y2="1344" x1="1136" />
        </branch>
    </sheet>
</drawing>