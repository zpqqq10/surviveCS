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
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="V5" />
        <signal name="CR" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86" />
        <signal name="XLXN_138" />
        <signal name="XLXN_139" />
        <signal name="XLXN_140" />
        <signal name="clk" />
        <signal name="QA" />
        <signal name="QB" />
        <signal name="QC" />
        <signal name="QD" />
        <signal name="SL" />
        <signal name="SR" />
        <signal name="A" />
        <signal name="B" />
        <signal name="C" />
        <signal name="D" />
        <signal name="S1" />
        <signal name="S0" />
        <signal name="XLXN_157" />
        <signal name="XLXN_158" />
        <signal name="XLXN_159" />
        <signal name="XLXN_160" />
        <signal name="XLXN_162" />
        <signal name="XLXN_163" />
        <signal name="XLXN_164" />
        <signal name="XLXN_165" />
        <signal name="XLXN_166" />
        <port polarity="Input" name="CR" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="QA" />
        <port polarity="Output" name="QB" />
        <port polarity="Output" name="QC" />
        <port polarity="Output" name="QD" />
        <port polarity="Input" name="SL" />
        <port polarity="Input" name="SR" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="S1" />
        <port polarity="Input" name="S0" />
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
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="MB_DFF">
            <timestamp>2020-12-7T2:25:51</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
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
        <block symbolname="or4" name="XLXI_1">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_3" name="I2" />
            <blockpin signalname="XLXN_4" name="I3" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_2">
            <blockpin signalname="SR" name="I0" />
            <blockpin signalname="S0" name="I1" />
            <blockpin signalname="XLXN_157" name="I2" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_3">
            <blockpin signalname="S0" name="I0" />
            <blockpin signalname="S1" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="XLXN_159" name="I0" />
            <blockpin signalname="S1" name="I1" />
            <blockpin signalname="QB" name="I2" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_5">
            <blockpin signalname="XLXN_159" name="I0" />
            <blockpin signalname="XLXN_157" name="I1" />
            <blockpin signalname="QA" name="I2" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_14">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_7" name="I2" />
            <blockpin signalname="XLXN_8" name="I3" />
            <blockpin signalname="XLXN_84" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_15">
            <blockpin signalname="QA" name="I0" />
            <blockpin signalname="S0" name="I1" />
            <blockpin signalname="XLXN_157" name="I2" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_16">
            <blockpin signalname="S0" name="I0" />
            <blockpin signalname="S1" name="I1" />
            <blockpin signalname="B" name="I2" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_17">
            <blockpin signalname="XLXN_159" name="I0" />
            <blockpin signalname="S1" name="I1" />
            <blockpin signalname="QC" name="I2" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_18">
            <blockpin signalname="XLXN_159" name="I0" />
            <blockpin signalname="XLXN_157" name="I1" />
            <blockpin signalname="QB" name="I2" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_29">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="XLXN_19" name="I2" />
            <blockpin signalname="XLXN_20" name="I3" />
            <blockpin signalname="XLXN_85" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_30">
            <blockpin signalname="QB" name="I0" />
            <blockpin signalname="S0" name="I1" />
            <blockpin signalname="XLXN_157" name="I2" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_31">
            <blockpin signalname="S0" name="I0" />
            <blockpin signalname="S1" name="I1" />
            <blockpin signalname="C" name="I2" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_32">
            <blockpin signalname="XLXN_159" name="I0" />
            <blockpin signalname="S1" name="I1" />
            <blockpin signalname="QD" name="I2" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_33">
            <blockpin signalname="XLXN_159" name="I0" />
            <blockpin signalname="XLXN_157" name="I1" />
            <blockpin signalname="QC" name="I2" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_34">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_23" name="I2" />
            <blockpin signalname="XLXN_24" name="I3" />
            <blockpin signalname="XLXN_86" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_35">
            <blockpin signalname="QC" name="I0" />
            <blockpin signalname="S0" name="I1" />
            <blockpin signalname="XLXN_157" name="I2" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_36">
            <blockpin signalname="S0" name="I0" />
            <blockpin signalname="S1" name="I1" />
            <blockpin signalname="D" name="I2" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_37">
            <blockpin signalname="XLXN_159" name="I0" />
            <blockpin signalname="S1" name="I1" />
            <blockpin signalname="SL" name="I2" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_38">
            <blockpin signalname="XLXN_159" name="I0" />
            <blockpin signalname="XLXN_157" name="I1" />
            <blockpin signalname="QD" name="I2" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="MB_DFF" name="XLXI_80">
            <blockpin signalname="XLXN_83" name="D" />
            <blockpin signalname="CR" name="Rn" />
            <blockpin signalname="V5" name="Sn" />
            <blockpin signalname="clk" name="Cp" />
            <blockpin name="Qn" />
            <blockpin signalname="QA" name="Q" />
        </block>
        <block symbolname="MB_DFF" name="XLXI_81">
            <blockpin signalname="XLXN_84" name="D" />
            <blockpin signalname="CR" name="Rn" />
            <blockpin signalname="V5" name="Sn" />
            <blockpin signalname="clk" name="Cp" />
            <blockpin name="Qn" />
            <blockpin signalname="QB" name="Q" />
        </block>
        <block symbolname="MB_DFF" name="XLXI_82">
            <blockpin signalname="XLXN_85" name="D" />
            <blockpin signalname="CR" name="Rn" />
            <blockpin signalname="V5" name="Sn" />
            <blockpin signalname="clk" name="Cp" />
            <blockpin name="Qn" />
            <blockpin signalname="QC" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_79">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="MB_DFF" name="XLXI_83">
            <blockpin signalname="XLXN_86" name="D" />
            <blockpin signalname="CR" name="Rn" />
            <blockpin signalname="V5" name="Sn" />
            <blockpin signalname="clk" name="Cp" />
            <blockpin name="Qn" />
            <blockpin signalname="QD" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_109">
            <blockpin signalname="S1" name="I" />
            <blockpin signalname="XLXN_157" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_110">
            <blockpin signalname="S0" name="I" />
            <blockpin signalname="XLXN_159" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="400" y="1328" name="XLXI_1" orien="R90" />
        <instance x="176" y="1008" name="XLXI_2" orien="R90" />
        <instance x="352" y="1008" name="XLXI_3" orien="R90" />
        <instance x="528" y="1008" name="XLXI_4" orien="R90" />
        <instance x="704" y="1008" name="XLXI_5" orien="R90" />
        <branch name="XLXN_1">
            <wire x2="304" y1="1264" y2="1328" x1="304" />
            <wire x2="464" y1="1328" y2="1328" x1="304" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="480" y1="1264" y2="1296" x1="480" />
            <wire x2="528" y1="1296" y2="1296" x1="480" />
            <wire x2="528" y1="1296" y2="1328" x1="528" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="592" y1="1296" y2="1328" x1="592" />
            <wire x2="656" y1="1296" y2="1296" x1="592" />
            <wire x2="656" y1="1264" y2="1296" x1="656" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="832" y1="1328" y2="1328" x1="656" />
            <wire x2="832" y1="1264" y2="1328" x1="832" />
        </branch>
        <instance x="1184" y="1328" name="XLXI_14" orien="R90" />
        <instance x="960" y="1008" name="XLXI_15" orien="R90" />
        <instance x="1136" y="1008" name="XLXI_16" orien="R90" />
        <instance x="1312" y="1008" name="XLXI_17" orien="R90" />
        <instance x="1488" y="1008" name="XLXI_18" orien="R90" />
        <branch name="XLXN_5">
            <wire x2="1088" y1="1264" y2="1328" x1="1088" />
            <wire x2="1248" y1="1328" y2="1328" x1="1088" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1264" y1="1264" y2="1296" x1="1264" />
            <wire x2="1312" y1="1296" y2="1296" x1="1264" />
            <wire x2="1312" y1="1296" y2="1328" x1="1312" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1376" y1="1296" y2="1328" x1="1376" />
            <wire x2="1440" y1="1296" y2="1296" x1="1376" />
            <wire x2="1440" y1="1264" y2="1296" x1="1440" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1616" y1="1328" y2="1328" x1="1440" />
            <wire x2="1616" y1="1264" y2="1328" x1="1616" />
        </branch>
        <instance x="1936" y="1328" name="XLXI_29" orien="R90" />
        <instance x="1712" y="1008" name="XLXI_30" orien="R90" />
        <instance x="1888" y="1008" name="XLXI_31" orien="R90" />
        <instance x="2064" y="1008" name="XLXI_32" orien="R90" />
        <instance x="2240" y="1008" name="XLXI_33" orien="R90" />
        <branch name="XLXN_17">
            <wire x2="1840" y1="1264" y2="1328" x1="1840" />
            <wire x2="2000" y1="1328" y2="1328" x1="1840" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2016" y1="1264" y2="1296" x1="2016" />
            <wire x2="2064" y1="1296" y2="1296" x1="2016" />
            <wire x2="2064" y1="1296" y2="1328" x1="2064" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2128" y1="1296" y2="1328" x1="2128" />
            <wire x2="2192" y1="1296" y2="1296" x1="2128" />
            <wire x2="2192" y1="1264" y2="1296" x1="2192" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2368" y1="1328" y2="1328" x1="2192" />
            <wire x2="2368" y1="1264" y2="1328" x1="2368" />
        </branch>
        <instance x="2720" y="1328" name="XLXI_34" orien="R90" />
        <instance x="2496" y="1008" name="XLXI_35" orien="R90" />
        <instance x="2672" y="1008" name="XLXI_36" orien="R90" />
        <instance x="2848" y="1008" name="XLXI_37" orien="R90" />
        <instance x="3024" y="1008" name="XLXI_38" orien="R90" />
        <branch name="XLXN_21">
            <wire x2="2624" y1="1264" y2="1328" x1="2624" />
            <wire x2="2784" y1="1328" y2="1328" x1="2624" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2800" y1="1264" y2="1296" x1="2800" />
            <wire x2="2848" y1="1296" y2="1296" x1="2800" />
            <wire x2="2848" y1="1296" y2="1328" x1="2848" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="2912" y1="1296" y2="1328" x1="2912" />
            <wire x2="2976" y1="1296" y2="1296" x1="2912" />
            <wire x2="2976" y1="1264" y2="1296" x1="2976" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="3152" y1="1328" y2="1328" x1="2976" />
            <wire x2="3152" y1="1264" y2="1328" x1="3152" />
        </branch>
        <instance x="640" y="1968" name="XLXI_80" orien="R0">
        </instance>
        <instance x="1440" y="1968" name="XLXI_81" orien="R0">
        </instance>
        <instance x="2144" y="1968" name="XLXI_82" orien="R0">
        </instance>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1872" type="branch" />
            <wire x2="640" y1="1872" y2="1872" x1="544" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1872" type="branch" />
            <wire x2="1440" y1="1872" y2="1872" x1="1376" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1872" type="branch" />
            <wire x2="2144" y1="1872" y2="1872" x1="2080" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="1872" type="branch" />
            <wire x2="2944" y1="1872" y2="1872" x1="2848" />
        </branch>
        <branch name="CR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1808" type="branch" />
            <wire x2="640" y1="1808" y2="1808" x1="544" />
        </branch>
        <branch name="CR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1808" type="branch" />
            <wire x2="1440" y1="1808" y2="1808" x1="1376" />
        </branch>
        <branch name="CR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1808" type="branch" />
            <wire x2="2144" y1="1808" y2="1808" x1="2080" />
        </branch>
        <branch name="CR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2848" y="1808" type="branch" />
            <wire x2="2944" y1="1808" y2="1808" x1="2848" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="560" y1="1584" y2="1744" x1="560" />
            <wire x2="640" y1="1744" y2="1744" x1="560" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="1344" y1="1584" y2="1744" x1="1344" />
            <wire x2="1440" y1="1744" y2="1744" x1="1344" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="2096" y1="1584" y2="1744" x1="2096" />
            <wire x2="2144" y1="1744" y2="1744" x1="2096" />
        </branch>
        <branch name="XLXN_86">
            <wire x2="2880" y1="1584" y2="1744" x1="2880" />
            <wire x2="2944" y1="1744" y2="1744" x1="2880" />
        </branch>
        <branch name="clk">
            <wire x2="608" y1="2048" y2="2048" x1="512" />
            <wire x2="1296" y1="2048" y2="2048" x1="608" />
            <wire x2="2064" y1="2048" y2="2048" x1="1296" />
            <wire x2="2800" y1="2048" y2="2048" x1="2064" />
            <wire x2="640" y1="1936" y2="1936" x1="608" />
            <wire x2="608" y1="1936" y2="2048" x1="608" />
            <wire x2="1440" y1="1936" y2="1936" x1="1296" />
            <wire x2="1296" y1="1936" y2="2048" x1="1296" />
            <wire x2="2144" y1="1936" y2="1936" x1="2064" />
            <wire x2="2064" y1="1936" y2="2048" x1="2064" />
            <wire x2="2944" y1="1936" y2="1936" x1="2800" />
            <wire x2="2800" y1="1936" y2="2048" x1="2800" />
        </branch>
        <instance x="384" y="2288" name="XLXI_79" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="2336" type="branch" />
            <wire x2="448" y1="2288" y2="2336" x1="448" />
            <wire x2="512" y1="2336" y2="2336" x1="448" />
        </branch>
        <branch name="CR">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2320" type="branch" />
            <wire x2="1136" y1="2320" y2="2320" x1="880" />
        </branch>
        <instance x="2944" y="1968" name="XLXI_83" orien="R0">
        </instance>
        <branch name="SL">
            <wire x2="3344" y1="816" y2="816" x1="3040" />
            <wire x2="3040" y1="816" y2="1008" x1="3040" />
        </branch>
        <branch name="SR">
            <wire x2="240" y1="944" y2="944" x1="160" />
            <wire x2="240" y1="944" y2="1008" x1="240" />
        </branch>
        <branch name="A">
            <wire x2="544" y1="352" y2="1008" x1="544" />
        </branch>
        <branch name="B">
            <wire x2="1328" y1="352" y2="1008" x1="1328" />
        </branch>
        <branch name="C">
            <wire x2="2080" y1="352" y2="1008" x1="2080" />
        </branch>
        <branch name="D">
            <wire x2="2864" y1="352" y2="1008" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="512" y="2048" name="clk" orien="R180" />
        <iomarker fontsize="28" x="880" y="2320" name="CR" orien="R180" />
        <iomarker fontsize="28" x="3344" y="816" name="SL" orien="R0" />
        <iomarker fontsize="28" x="160" y="944" name="SR" orien="R180" />
        <iomarker fontsize="28" x="544" y="352" name="A" orien="R270" />
        <iomarker fontsize="28" x="1328" y="352" name="B" orien="R270" />
        <iomarker fontsize="28" x="2080" y="352" name="C" orien="R270" />
        <iomarker fontsize="28" x="2864" y="352" name="D" orien="R270" />
        <instance x="80" y="592" name="XLXI_109" orien="R0" />
        <instance x="80" y="752" name="XLXI_110" orien="R0" />
        <branch name="S1">
            <wire x2="64" y1="432" y2="560" x1="64" />
            <wire x2="80" y1="560" y2="560" x1="64" />
            <wire x2="64" y1="560" y2="624" x1="64" />
            <wire x2="480" y1="624" y2="624" x1="64" />
            <wire x2="656" y1="624" y2="624" x1="480" />
            <wire x2="1264" y1="624" y2="624" x1="656" />
            <wire x2="1440" y1="624" y2="624" x1="1264" />
            <wire x2="2016" y1="624" y2="624" x1="1440" />
            <wire x2="2192" y1="624" y2="624" x1="2016" />
            <wire x2="2800" y1="624" y2="624" x1="2192" />
            <wire x2="2976" y1="624" y2="624" x1="2800" />
            <wire x2="2976" y1="624" y2="1008" x1="2976" />
            <wire x2="2800" y1="624" y2="1008" x1="2800" />
            <wire x2="2192" y1="624" y2="1008" x1="2192" />
            <wire x2="2016" y1="624" y2="1008" x1="2016" />
            <wire x2="1440" y1="624" y2="1008" x1="1440" />
            <wire x2="1264" y1="624" y2="1008" x1="1264" />
            <wire x2="656" y1="624" y2="1008" x1="656" />
            <wire x2="480" y1="624" y2="1008" x1="480" />
            <wire x2="176" y1="432" y2="432" x1="64" />
        </branch>
        <branch name="S0">
            <wire x2="32" y1="320" y2="720" x1="32" />
            <wire x2="80" y1="720" y2="720" x1="32" />
            <wire x2="32" y1="720" y2="832" x1="32" />
            <wire x2="304" y1="832" y2="832" x1="32" />
            <wire x2="416" y1="832" y2="832" x1="304" />
            <wire x2="1088" y1="832" y2="832" x1="416" />
            <wire x2="1200" y1="832" y2="832" x1="1088" />
            <wire x2="1840" y1="832" y2="832" x1="1200" />
            <wire x2="1840" y1="832" y2="1008" x1="1840" />
            <wire x2="1952" y1="832" y2="832" x1="1840" />
            <wire x2="2624" y1="832" y2="832" x1="1952" />
            <wire x2="2736" y1="832" y2="832" x1="2624" />
            <wire x2="2736" y1="832" y2="1008" x1="2736" />
            <wire x2="2624" y1="832" y2="1008" x1="2624" />
            <wire x2="1952" y1="832" y2="1008" x1="1952" />
            <wire x2="1200" y1="832" y2="1008" x1="1200" />
            <wire x2="1088" y1="832" y2="1008" x1="1088" />
            <wire x2="416" y1="832" y2="1008" x1="416" />
            <wire x2="304" y1="832" y2="1008" x1="304" />
            <wire x2="176" y1="320" y2="320" x1="32" />
        </branch>
        <iomarker fontsize="28" x="176" y="432" name="S1" orien="R0" />
        <iomarker fontsize="28" x="176" y="320" name="S0" orien="R0" />
        <branch name="XLXN_157">
            <wire x2="368" y1="560" y2="560" x1="304" />
            <wire x2="832" y1="560" y2="560" x1="368" />
            <wire x2="1152" y1="560" y2="560" x1="832" />
            <wire x2="1616" y1="560" y2="560" x1="1152" />
            <wire x2="1904" y1="560" y2="560" x1="1616" />
            <wire x2="2368" y1="560" y2="560" x1="1904" />
            <wire x2="2688" y1="560" y2="560" x1="2368" />
            <wire x2="3152" y1="560" y2="560" x1="2688" />
            <wire x2="3152" y1="560" y2="1008" x1="3152" />
            <wire x2="2688" y1="560" y2="1008" x1="2688" />
            <wire x2="2368" y1="560" y2="1008" x1="2368" />
            <wire x2="1904" y1="560" y2="1008" x1="1904" />
            <wire x2="1616" y1="560" y2="1008" x1="1616" />
            <wire x2="1152" y1="560" y2="1008" x1="1152" />
            <wire x2="832" y1="560" y2="1008" x1="832" />
            <wire x2="368" y1="560" y2="1008" x1="368" />
        </branch>
        <branch name="XLXN_159">
            <wire x2="592" y1="720" y2="720" x1="304" />
            <wire x2="768" y1="720" y2="720" x1="592" />
            <wire x2="1376" y1="720" y2="720" x1="768" />
            <wire x2="1552" y1="720" y2="720" x1="1376" />
            <wire x2="2128" y1="720" y2="720" x1="1552" />
            <wire x2="2304" y1="720" y2="720" x1="2128" />
            <wire x2="2912" y1="720" y2="720" x1="2304" />
            <wire x2="3088" y1="720" y2="720" x1="2912" />
            <wire x2="3088" y1="720" y2="1008" x1="3088" />
            <wire x2="2912" y1="720" y2="1008" x1="2912" />
            <wire x2="2304" y1="720" y2="1008" x1="2304" />
            <wire x2="2128" y1="720" y2="1008" x1="2128" />
            <wire x2="1552" y1="720" y2="1008" x1="1552" />
            <wire x2="1376" y1="720" y2="1008" x1="1376" />
            <wire x2="768" y1="720" y2="1008" x1="768" />
            <wire x2="592" y1="720" y2="1008" x1="592" />
        </branch>
        <branch name="QA">
            <wire x2="960" y1="1008" y2="1008" x1="896" />
            <wire x2="1024" y1="1008" y2="1008" x1="960" />
            <wire x2="960" y1="1008" y2="1328" x1="960" />
            <wire x2="1040" y1="1328" y2="1328" x1="960" />
            <wire x2="1056" y1="1328" y2="1328" x1="1040" />
            <wire x2="1056" y1="1328" y2="1920" x1="1056" />
            <wire x2="1056" y1="1920" y2="1936" x1="1056" />
            <wire x2="1136" y1="1936" y2="1936" x1="1056" />
            <wire x2="1056" y1="1936" y2="1936" x1="1024" />
        </branch>
        <branch name="QB">
            <wire x2="720" y1="944" y2="1008" x1="720" />
            <wire x2="1680" y1="944" y2="944" x1="720" />
            <wire x2="1680" y1="944" y2="1008" x1="1680" />
            <wire x2="1728" y1="944" y2="944" x1="1680" />
            <wire x2="1776" y1="944" y2="944" x1="1728" />
            <wire x2="1776" y1="944" y2="1008" x1="1776" />
            <wire x2="1728" y1="944" y2="1344" x1="1728" />
            <wire x2="1840" y1="1344" y2="1344" x1="1728" />
            <wire x2="1856" y1="1344" y2="1344" x1="1840" />
            <wire x2="1856" y1="1344" y2="1936" x1="1856" />
            <wire x2="1920" y1="1936" y2="1936" x1="1856" />
            <wire x2="1856" y1="1936" y2="1936" x1="1824" />
        </branch>
        <branch name="QC">
            <wire x2="1504" y1="928" y2="1008" x1="1504" />
            <wire x2="2432" y1="928" y2="928" x1="1504" />
            <wire x2="2432" y1="928" y2="1008" x1="2432" />
            <wire x2="2496" y1="928" y2="928" x1="2432" />
            <wire x2="2560" y1="928" y2="928" x1="2496" />
            <wire x2="2560" y1="928" y2="1008" x1="2560" />
            <wire x2="2496" y1="928" y2="1328" x1="2496" />
            <wire x2="2544" y1="1328" y2="1328" x1="2496" />
            <wire x2="2592" y1="1328" y2="1328" x1="2544" />
            <wire x2="2592" y1="1328" y2="1936" x1="2592" />
            <wire x2="2624" y1="1936" y2="1936" x1="2592" />
            <wire x2="2592" y1="1936" y2="1936" x1="2528" />
        </branch>
        <branch name="QD">
            <wire x2="2256" y1="912" y2="1008" x1="2256" />
            <wire x2="3216" y1="912" y2="912" x1="2256" />
            <wire x2="3216" y1="912" y2="1008" x1="3216" />
            <wire x2="3344" y1="912" y2="912" x1="3216" />
            <wire x2="3360" y1="912" y2="912" x1="3344" />
            <wire x2="3360" y1="912" y2="1936" x1="3360" />
            <wire x2="3408" y1="1936" y2="1936" x1="3360" />
            <wire x2="3360" y1="1936" y2="1936" x1="3328" />
        </branch>
        <iomarker fontsize="28" x="1136" y="1936" name="QA" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1936" name="QB" orien="R0" />
        <iomarker fontsize="28" x="2624" y="1936" name="QC" orien="R0" />
        <iomarker fontsize="28" x="3408" y="1936" name="QD" orien="R0" />
    </sheet>
</drawing>