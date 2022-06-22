<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RSTN" />
        <signal name="clk_100mhz" />
        <signal name="K_COL(3:0)" />
        <signal name="SW(15:0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="K_ROW(4:0)" />
        <signal name="Div(31:0)" />
        <signal name="Div(25)" />
        <signal name="Div(18:17)" />
        <signal name="Div(0)" />
        <signal name="Ai(31:0)" />
        <signal name="Ai(15:0)" />
        <signal name="button_out(3:0)" />
        <signal name="SW_OK(15:0)" />
        <signal name="SW_OK(3:0)" />
        <signal name="blink(7:0)" />
        <signal name="blink(3:0)" />
        <signal name="SW(7:5),SW(1:0)" />
        <signal name="LED(2:0)" />
        <signal name="V5" />
        <signal name="Buzzer" />
        <signal name="G0" />
        <signal name="AN(3:0)" />
        <signal name="SEGMENT(7:0)" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Input" name="clk_100mhz" />
        <port polarity="Input" name="K_COL(3:0)" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Output" name="K_ROW(4:0)" />
        <port polarity="Output" name="LED(2:0)" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <blockdef name="Anti_jitter">
            <timestamp>2020-11-3T5:51:39</timestamp>
            <rect width="336" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="clkdiv">
            <timestamp>2020-11-3T5:59:45</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="InputT32">
            <timestamp>2020-11-3T5:56:16</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Seg7_Dev16">
            <timestamp>2020-11-3T6:1:21</timestamp>
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-300" height="24" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="Anti_jitter" name="M2">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="K_COL(3:0)" name="K_COL(3:0)" />
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin name="CR" />
            <blockpin signalname="XLXN_6" name="rst" />
            <blockpin signalname="K_ROW(4:0)" name="K_ROW(4:0)" />
            <blockpin signalname="button_out(3:0)" name="button_out(3:0)" />
            <blockpin name="button_pulse(3:0)" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
        </block>
        <block symbolname="clkdiv" name="M1">
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_6" name="rst" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="InputT32" name="M4">
            <blockpin signalname="Div(0)" name="clk" />
            <blockpin signalname="button_out(3:0)" name="BTN(3:0)" />
            <blockpin signalname="SW(7:5),SW(1:0)" name="Dctr(4:0)" />
            <blockpin signalname="Ai(31:0)" name="Ai(31:0)" />
            <blockpin name="Bi(31:0)" />
            <blockpin signalname="LED(2:0)" name="state(2:0)" />
            <blockpin signalname="blink(7:0)" name="blink(7:0)" />
        </block>
        <block symbolname="Seg7_Dev16" name="XLXI_4">
            <blockpin signalname="Div(18:17)" name="Scan(1:0)" />
            <blockpin signalname="blink(3:0)" name="LES(3:0)" />
            <blockpin signalname="SW_OK(3:0)" name="point(3:0)" />
            <blockpin signalname="Ai(15:0)" name="Hexs(15:0)" />
            <blockpin signalname="Div(25)" name="flash_clk" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="SEGMENT(7:0)" name="SEGMENT(7:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="V5" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="G0" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1040" name="M2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="RSTN">
            <wire x2="1024" y1="816" y2="816" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="816" name="RSTN" orien="R180" />
        <branch name="clk_100mhz">
            <wire x2="864" y1="752" y2="752" x1="608" />
            <wire x2="1024" y1="752" y2="752" x1="864" />
            <wire x2="864" y1="752" y2="1280" x1="864" />
            <wire x2="1024" y1="1280" y2="1280" x1="864" />
        </branch>
        <iomarker fontsize="28" x="608" y="752" name="clk_100mhz" orien="R180" />
        <branch name="K_COL(3:0)">
            <wire x2="1024" y1="880" y2="880" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="880" name="K_COL(3:0)" orien="R180" />
        <branch name="SW(15:0)">
            <wire x2="1024" y1="1008" y2="1008" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="1008" name="SW(15:0)" orien="R180" />
        <instance x="1024" y="1376" name="M1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <branch name="XLXN_6">
            <wire x2="944" y1="1184" y2="1344" x1="944" />
            <wire x2="1024" y1="1344" y2="1344" x1="944" />
            <wire x2="1504" y1="1184" y2="1184" x1="944" />
            <wire x2="1504" y1="816" y2="816" x1="1488" />
            <wire x2="1504" y1="816" y2="1184" x1="1504" />
        </branch>
        <branch name="K_ROW(4:0)">
            <wire x2="1024" y1="944" y2="944" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="944" name="K_ROW(4:0)" orien="R180" />
        <instance x="1024" y="1760" name="M4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="2288" y="1024" name="XLXI_4" orien="R0">
        </instance>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1502" y="1280" type="branch" />
            <wire x2="1502" y1="1280" y2="1280" x1="1408" />
            <wire x2="1664" y1="1280" y2="1280" x1="1502" />
            <wire x2="1664" y1="720" y2="736" x1="1664" />
            <wire x2="1664" y1="736" y2="992" x1="1664" />
            <wire x2="1664" y1="992" y2="1280" x1="1664" />
        </branch>
        <bustap x2="1760" y1="992" y2="992" x1="1664" />
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2024" y="992" type="branch" />
            <wire x2="2024" y1="992" y2="992" x1="1760" />
            <wire x2="2288" y1="992" y2="992" x1="2024" />
        </branch>
        <bustap x2="1760" y1="736" y2="736" x1="1664" />
        <branch name="Div(18:17)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2024" y="736" type="branch" />
            <wire x2="2024" y1="736" y2="736" x1="1760" />
            <wire x2="2288" y1="736" y2="736" x1="2024" />
        </branch>
        <branch name="Div(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="1536" type="branch" />
            <wire x2="1024" y1="1536" y2="1536" x1="704" />
        </branch>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1539" y="1536" type="branch" />
            <wire x2="1539" y1="1536" y2="1536" x1="1408" />
            <wire x2="1776" y1="1536" y2="1536" x1="1539" />
            <wire x2="1776" y1="912" y2="928" x1="1776" />
            <wire x2="1776" y1="928" y2="1536" x1="1776" />
        </branch>
        <bustap x2="1872" y1="928" y2="928" x1="1776" />
        <branch name="Ai(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="928" type="branch" />
            <wire x2="2080" y1="928" y2="928" x1="1872" />
            <wire x2="2288" y1="928" y2="928" x1="2080" />
        </branch>
        <branch name="button_out(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1531" y="880" type="branch" />
            <wire x2="1531" y1="880" y2="880" x1="1488" />
            <wire x2="1568" y1="880" y2="880" x1="1531" />
        </branch>
        <branch name="SW_OK(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1519" y="1008" type="branch" />
            <wire x2="1519" y1="1008" y2="1008" x1="1488" />
            <wire x2="1552" y1="1008" y2="1008" x1="1519" />
        </branch>
        <branch name="SW_OK(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="864" type="branch" />
            <wire x2="2288" y1="864" y2="864" x1="1952" />
        </branch>
        <branch name="blink(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1544" y="1728" type="branch" />
            <wire x2="1544" y1="1728" y2="1728" x1="1408" />
            <wire x2="1648" y1="1728" y2="1728" x1="1544" />
            <wire x2="1648" y1="1712" y2="1728" x1="1648" />
        </branch>
        <bustap x2="1744" y1="1712" y2="1712" x1="1648" />
        <branch name="blink(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2166" y="800" type="branch" />
            <wire x2="2000" y1="1712" y2="1712" x1="1744" />
            <wire x2="2000" y1="800" y2="1712" x1="2000" />
            <wire x2="2166" y1="800" y2="800" x1="2000" />
            <wire x2="2288" y1="800" y2="800" x1="2166" />
        </branch>
        <branch name="button_out(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="1632" type="branch" />
            <wire x2="1024" y1="1632" y2="1632" x1="704" />
        </branch>
        <branch name="SW(7:5),SW(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="704" y="1728" type="branch" />
            <wire x2="1024" y1="1728" y2="1728" x1="704" />
        </branch>
        <branch name="LED(2:0)">
            <wire x2="2400" y1="1664" y2="1664" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="2400" y="1664" name="LED(2:0)" orien="R0" />
        <instance x="2464" y="1376" name="XLXI_5" orien="R0" />
        <instance x="2848" y="1488" name="XLXI_6" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2673" y="1456" type="branch" />
            <wire x2="2528" y1="1376" y2="1456" x1="2528" />
            <wire x2="2673" y1="1456" y2="1456" x1="2528" />
            <wire x2="2848" y1="1456" y2="1456" x1="2673" />
        </branch>
        <branch name="Buzzer">
            <wire x2="3280" y1="1456" y2="1456" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3280" y="1456" name="Buzzer" orien="R0" />
        <instance x="2576" y="2048" name="XLXI_7" orien="R0" />
        <branch name="G0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2880" y="1792" type="branch" />
            <wire x2="2880" y1="1792" y2="1792" x1="2640" />
            <wire x2="2640" y1="1792" y2="1920" x1="2640" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2864" y1="736" y2="736" x1="2704" />
        </branch>
        <branch name="SEGMENT(7:0)">
            <wire x2="2864" y1="992" y2="992" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2864" y="736" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2864" y="992" name="SEGMENT(7:0)" orien="R0" />
    </sheet>
</drawing>