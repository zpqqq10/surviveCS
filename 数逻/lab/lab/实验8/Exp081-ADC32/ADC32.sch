<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="C0" />
        <signal name="Co" />
        <signal name="a(31:0)" />
        <signal name="b(31:0)" />
        <signal name="a(31:28)" />
        <signal name="a(27:24)" />
        <signal name="a(23:20)" />
        <signal name="a(19:16)" />
        <signal name="a(15:12)" />
        <signal name="a(11:8)" />
        <signal name="a(7:4)" />
        <signal name="a(3:0)" />
        <signal name="b(31:28)" />
        <signal name="b(27:24)" />
        <signal name="b(23:20)" />
        <signal name="b(19:16)" />
        <signal name="b(15:12)" />
        <signal name="b(11:8)" />
        <signal name="b(7:4)" />
        <signal name="b(3:0)" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="s(31:0)" />
        <signal name="s(3:0)" />
        <signal name="s(7:4)" />
        <signal name="s(15:12)" />
        <signal name="s(19:16)" />
        <signal name="s(23:20)" />
        <signal name="s(31:28)" />
        <signal name="s(27:24)" />
        <signal name="s(11:8)" />
        <port polarity="Input" name="C0" />
        <port polarity="Output" name="Co" />
        <port polarity="Input" name="a(31:0)" />
        <port polarity="Input" name="b(31:0)" />
        <port polarity="Output" name="s(31:0)" />
        <blockdef name="CLA">
            <timestamp>2020-11-11T9:10:50</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="add4b">
            <timestamp>2020-11-11T10:0:59</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="CLA" name="XLXI_1">
            <blockpin signalname="XLXN_50" name="Ci" />
            <blockpin signalname="XLXN_37" name="P0" />
            <blockpin signalname="XLXN_38" name="G0" />
            <blockpin signalname="XLXN_41" name="G1" />
            <blockpin signalname="XLXN_40" name="P1" />
            <blockpin signalname="XLXN_42" name="G2" />
            <blockpin signalname="XLXN_43" name="P2" />
            <blockpin signalname="XLXN_45" name="P3" />
            <blockpin signalname="XLXN_44" name="G3" />
            <blockpin signalname="XLXN_48" name="C1" />
            <blockpin signalname="XLXN_47" name="C2" />
            <blockpin signalname="XLXN_46" name="C3" />
            <blockpin signalname="XLXN_5" name="GP" />
            <blockpin signalname="XLXN_4" name="GG" />
        </block>
        <block symbolname="CLA" name="XLXI_2">
            <blockpin signalname="C0" name="Ci" />
            <blockpin signalname="XLXN_29" name="P0" />
            <blockpin signalname="XLXN_30" name="G0" />
            <blockpin signalname="XLXN_32" name="G1" />
            <blockpin signalname="XLXN_31" name="P1" />
            <blockpin signalname="XLXN_34" name="G2" />
            <blockpin signalname="XLXN_33" name="P2" />
            <blockpin signalname="XLXN_35" name="P3" />
            <blockpin signalname="XLXN_36" name="G3" />
            <blockpin signalname="XLXN_53" name="C1" />
            <blockpin signalname="XLXN_52" name="C2" />
            <blockpin signalname="XLXN_51" name="C3" />
            <blockpin signalname="XLXN_7" name="GP" />
            <blockpin signalname="XLXN_3" name="GG" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="Co" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="C0" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="XLXN_50" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="add4b" name="XLXI_7">
            <blockpin signalname="a(31:28)" name="ai(3:0)" />
            <blockpin signalname="b(31:28)" name="bi(3:0)" />
            <blockpin signalname="XLXN_46" name="C0" />
            <blockpin signalname="XLXN_45" name="GP" />
            <blockpin signalname="XLXN_44" name="GG" />
            <blockpin signalname="s(31:28)" name="s(3:0)" />
        </block>
        <block symbolname="add4b" name="XLXI_8">
            <blockpin signalname="a(27:24)" name="ai(3:0)" />
            <blockpin signalname="b(27:24)" name="bi(3:0)" />
            <blockpin signalname="XLXN_47" name="C0" />
            <blockpin signalname="XLXN_43" name="GP" />
            <blockpin signalname="XLXN_42" name="GG" />
            <blockpin signalname="s(27:24)" name="s(3:0)" />
        </block>
        <block symbolname="add4b" name="XLXI_9">
            <blockpin signalname="a(23:20)" name="ai(3:0)" />
            <blockpin signalname="b(23:20)" name="bi(3:0)" />
            <blockpin signalname="XLXN_48" name="C0" />
            <blockpin signalname="XLXN_40" name="GP" />
            <blockpin signalname="XLXN_41" name="GG" />
            <blockpin signalname="s(23:20)" name="s(3:0)" />
        </block>
        <block symbolname="add4b" name="XLXI_10">
            <blockpin signalname="a(19:16)" name="ai(3:0)" />
            <blockpin signalname="b(19:16)" name="bi(3:0)" />
            <blockpin signalname="XLXN_50" name="C0" />
            <blockpin signalname="XLXN_37" name="GP" />
            <blockpin signalname="XLXN_38" name="GG" />
            <blockpin signalname="s(19:16)" name="s(3:0)" />
        </block>
        <block symbolname="add4b" name="XLXI_11">
            <blockpin signalname="a(15:12)" name="ai(3:0)" />
            <blockpin signalname="b(15:12)" name="bi(3:0)" />
            <blockpin signalname="XLXN_51" name="C0" />
            <blockpin signalname="XLXN_35" name="GP" />
            <blockpin signalname="XLXN_36" name="GG" />
            <blockpin signalname="s(15:12)" name="s(3:0)" />
        </block>
        <block symbolname="add4b" name="XLXI_12">
            <blockpin signalname="a(11:8)" name="ai(3:0)" />
            <blockpin signalname="b(11:8)" name="bi(3:0)" />
            <blockpin signalname="XLXN_52" name="C0" />
            <blockpin signalname="XLXN_33" name="GP" />
            <blockpin signalname="XLXN_34" name="GG" />
            <blockpin signalname="s(11:8)" name="s(3:0)" />
        </block>
        <block symbolname="add4b" name="XLXI_13">
            <blockpin signalname="a(7:4)" name="ai(3:0)" />
            <blockpin signalname="b(7:4)" name="bi(3:0)" />
            <blockpin signalname="XLXN_53" name="C0" />
            <blockpin signalname="XLXN_31" name="GP" />
            <blockpin signalname="XLXN_32" name="GG" />
            <blockpin signalname="s(7:4)" name="s(3:0)" />
        </block>
        <block symbolname="add4b" name="XLXI_14">
            <blockpin signalname="a(3:0)" name="ai(3:0)" />
            <blockpin signalname="b(3:0)" name="bi(3:0)" />
            <blockpin signalname="C0" name="C0" />
            <blockpin signalname="XLXN_29" name="GP" />
            <blockpin signalname="XLXN_30" name="GG" />
            <blockpin signalname="s(3:0)" name="s(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2176" y="960" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2176" y="2144" name="XLXI_2" orien="R0">
        </instance>
        <instance x="2944" y="2176" name="XLXI_4" orien="R0" />
        <instance x="2976" y="992" name="XLXI_3" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="2944" y1="2112" y2="2112" x1="2560" />
        </branch>
        <instance x="2640" y="2368" name="XLXI_5" orien="R0" />
        <instance x="2656" y="1152" name="XLXI_6" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="2976" y1="928" y2="928" x1="2560" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="2608" y1="800" y2="800" x1="2560" />
            <wire x2="2608" y1="800" y2="1024" x1="2608" />
            <wire x2="2656" y1="1024" y2="1024" x1="2608" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2944" y1="1056" y2="1056" x1="2912" />
            <wire x2="2944" y1="864" y2="1056" x1="2944" />
            <wire x2="2976" y1="864" y2="864" x1="2944" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2592" y1="1984" y2="1984" x1="2560" />
            <wire x2="2592" y1="1984" y2="2240" x1="2592" />
            <wire x2="2640" y1="2240" y2="2240" x1="2592" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2912" y1="2272" y2="2272" x1="2896" />
            <wire x2="2912" y1="2048" y2="2272" x1="2912" />
            <wire x2="2944" y1="2048" y2="2048" x1="2912" />
        </branch>
        <branch name="C0">
            <wire x2="464" y1="2304" y2="2304" x1="288" />
            <wire x2="2032" y1="2304" y2="2304" x1="464" />
            <wire x2="2640" y1="2304" y2="2304" x1="2032" />
            <wire x2="464" y1="2304" y2="2528" x1="464" />
            <wire x2="672" y1="2528" y2="2528" x1="464" />
            <wire x2="2176" y1="1600" y2="1600" x1="2032" />
            <wire x2="2032" y1="1600" y2="2304" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="288" y="2304" name="C0" orien="R180" />
        <branch name="Co">
            <wire x2="3312" y1="896" y2="896" x1="3232" />
        </branch>
        <iomarker fontsize="28" x="3312" y="896" name="Co" orien="R0" />
        <instance x="672" y="576" name="XLXI_8" orien="R0">
        </instance>
        <instance x="672" y="2560" name="XLXI_14" orien="R0">
        </instance>
        <instance x="672" y="2224" name="XLXI_13" orien="R0">
        </instance>
        <instance x="672" y="1888" name="XLXI_12" orien="R0">
        </instance>
        <instance x="672" y="1552" name="XLXI_11" orien="R0">
        </instance>
        <instance x="672" y="1184" name="XLXI_10" orien="R0">
        </instance>
        <instance x="672" y="880" name="XLXI_9" orien="R0">
        </instance>
        <instance x="672" y="288" name="XLXI_7" orien="R0">
        </instance>
        <branch name="a(31:0)">
            <wire x2="496" y1="128" y2="128" x1="192" />
            <wire x2="496" y1="128" y2="416" x1="496" />
            <wire x2="496" y1="416" y2="720" x1="496" />
            <wire x2="496" y1="720" y2="1024" x1="496" />
            <wire x2="496" y1="1024" y2="1392" x1="496" />
            <wire x2="496" y1="1392" y2="1728" x1="496" />
            <wire x2="496" y1="1728" y2="2064" x1="496" />
            <wire x2="496" y1="2064" y2="2400" x1="496" />
        </branch>
        <branch name="b(31:0)">
            <wire x2="320" y1="192" y2="192" x1="192" />
            <wire x2="320" y1="192" y2="480" x1="320" />
            <wire x2="320" y1="480" y2="784" x1="320" />
            <wire x2="320" y1="784" y2="1088" x1="320" />
            <wire x2="320" y1="1088" y2="1456" x1="320" />
            <wire x2="320" y1="1456" y2="1792" x1="320" />
            <wire x2="320" y1="1792" y2="2128" x1="320" />
            <wire x2="320" y1="2128" y2="2464" x1="320" />
        </branch>
        <iomarker fontsize="28" x="192" y="128" name="a(31:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="192" name="b(31:0)" orien="R180" />
        <bustap x2="592" y1="128" y2="128" x1="496" />
        <branch name="a(31:28)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="632" y="128" type="branch" />
            <wire x2="632" y1="128" y2="128" x1="592" />
            <wire x2="672" y1="128" y2="128" x1="632" />
        </branch>
        <bustap x2="592" y1="416" y2="416" x1="496" />
        <branch name="a(27:24)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="632" y="416" type="branch" />
            <wire x2="632" y1="416" y2="416" x1="592" />
            <wire x2="672" y1="416" y2="416" x1="632" />
        </branch>
        <bustap x2="592" y1="720" y2="720" x1="496" />
        <branch name="a(23:20)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="632" y="720" type="branch" />
            <wire x2="632" y1="720" y2="720" x1="592" />
            <wire x2="672" y1="720" y2="720" x1="632" />
        </branch>
        <bustap x2="592" y1="1024" y2="1024" x1="496" />
        <branch name="a(19:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="632" y="1024" type="branch" />
            <wire x2="632" y1="1024" y2="1024" x1="592" />
            <wire x2="672" y1="1024" y2="1024" x1="632" />
        </branch>
        <bustap x2="592" y1="1392" y2="1392" x1="496" />
        <branch name="a(15:12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="632" y="1392" type="branch" />
            <wire x2="632" y1="1392" y2="1392" x1="592" />
            <wire x2="672" y1="1392" y2="1392" x1="632" />
        </branch>
        <bustap x2="592" y1="1728" y2="1728" x1="496" />
        <branch name="a(11:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="632" y="1728" type="branch" />
            <wire x2="632" y1="1728" y2="1728" x1="592" />
            <wire x2="672" y1="1728" y2="1728" x1="632" />
        </branch>
        <bustap x2="592" y1="2064" y2="2064" x1="496" />
        <branch name="a(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="632" y="2064" type="branch" />
            <wire x2="632" y1="2064" y2="2064" x1="592" />
            <wire x2="672" y1="2064" y2="2064" x1="632" />
        </branch>
        <bustap x2="592" y1="2400" y2="2400" x1="496" />
        <branch name="a(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="632" y="2400" type="branch" />
            <wire x2="632" y1="2400" y2="2400" x1="592" />
            <wire x2="672" y1="2400" y2="2400" x1="632" />
        </branch>
        <bustap x2="416" y1="192" y2="192" x1="320" />
        <branch name="b(31:28)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="192" type="branch" />
            <wire x2="544" y1="192" y2="192" x1="416" />
            <wire x2="672" y1="192" y2="192" x1="544" />
        </branch>
        <bustap x2="416" y1="480" y2="480" x1="320" />
        <branch name="b(27:24)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="480" type="branch" />
            <wire x2="544" y1="480" y2="480" x1="416" />
            <wire x2="672" y1="480" y2="480" x1="544" />
        </branch>
        <bustap x2="416" y1="784" y2="784" x1="320" />
        <branch name="b(23:20)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="784" type="branch" />
            <wire x2="544" y1="784" y2="784" x1="416" />
            <wire x2="672" y1="784" y2="784" x1="544" />
        </branch>
        <bustap x2="416" y1="1088" y2="1088" x1="320" />
        <branch name="b(19:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1088" type="branch" />
            <wire x2="544" y1="1088" y2="1088" x1="416" />
            <wire x2="672" y1="1088" y2="1088" x1="544" />
        </branch>
        <bustap x2="416" y1="1456" y2="1456" x1="320" />
        <branch name="b(15:12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1456" type="branch" />
            <wire x2="544" y1="1456" y2="1456" x1="416" />
            <wire x2="672" y1="1456" y2="1456" x1="544" />
        </branch>
        <bustap x2="416" y1="1792" y2="1792" x1="320" />
        <branch name="b(11:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1792" type="branch" />
            <wire x2="544" y1="1792" y2="1792" x1="416" />
            <wire x2="672" y1="1792" y2="1792" x1="544" />
        </branch>
        <bustap x2="416" y1="2128" y2="2128" x1="320" />
        <branch name="b(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="2128" type="branch" />
            <wire x2="544" y1="2128" y2="2128" x1="416" />
            <wire x2="672" y1="2128" y2="2128" x1="544" />
        </branch>
        <bustap x2="416" y1="2464" y2="2464" x1="320" />
        <branch name="b(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="2464" type="branch" />
            <wire x2="544" y1="2464" y2="2464" x1="416" />
            <wire x2="672" y1="2464" y2="2464" x1="544" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1616" y1="2400" y2="2400" x1="1056" />
            <wire x2="1616" y1="1664" y2="2400" x1="1616" />
            <wire x2="2176" y1="1664" y2="1664" x1="1616" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1600" y1="2464" y2="2464" x1="1056" />
            <wire x2="1600" y1="1728" y2="2464" x1="1600" />
            <wire x2="2176" y1="1728" y2="1728" x1="1600" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1584" y1="2064" y2="2064" x1="1056" />
            <wire x2="1584" y1="1856" y2="2064" x1="1584" />
            <wire x2="2176" y1="1856" y2="1856" x1="1584" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1568" y1="2128" y2="2128" x1="1056" />
            <wire x2="1568" y1="1792" y2="2128" x1="1568" />
            <wire x2="2176" y1="1792" y2="1792" x1="1568" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="1552" y1="1728" y2="1728" x1="1056" />
            <wire x2="1552" y1="1728" y2="1984" x1="1552" />
            <wire x2="2176" y1="1984" y2="1984" x1="1552" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="1536" y1="1792" y2="1792" x1="1056" />
            <wire x2="1536" y1="1792" y2="1920" x1="1536" />
            <wire x2="2176" y1="1920" y2="1920" x1="1536" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="1632" y1="1392" y2="1392" x1="1056" />
            <wire x2="1632" y1="1392" y2="2048" x1="1632" />
            <wire x2="2176" y1="2048" y2="2048" x1="1632" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="1648" y1="1456" y2="1456" x1="1056" />
            <wire x2="1648" y1="1456" y2="2112" x1="1648" />
            <wire x2="2176" y1="2112" y2="2112" x1="1648" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="1616" y1="1024" y2="1024" x1="1056" />
            <wire x2="1616" y1="480" y2="1024" x1="1616" />
            <wire x2="2176" y1="480" y2="480" x1="1616" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1632" y1="1088" y2="1088" x1="1056" />
            <wire x2="1632" y1="544" y2="1088" x1="1632" />
            <wire x2="2176" y1="544" y2="544" x1="1632" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1600" y1="720" y2="720" x1="1056" />
            <wire x2="1600" y1="672" y2="720" x1="1600" />
            <wire x2="2176" y1="672" y2="672" x1="1600" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="1584" y1="784" y2="784" x1="1056" />
            <wire x2="1584" y1="608" y2="784" x1="1584" />
            <wire x2="2176" y1="608" y2="608" x1="1584" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1568" y1="480" y2="480" x1="1056" />
            <wire x2="1568" y1="480" y2="736" x1="1568" />
            <wire x2="2176" y1="736" y2="736" x1="1568" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="1648" y1="416" y2="416" x1="1056" />
            <wire x2="1648" y1="416" y2="800" x1="1648" />
            <wire x2="2176" y1="800" y2="800" x1="1648" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1664" y1="192" y2="192" x1="1056" />
            <wire x2="1664" y1="192" y2="928" x1="1664" />
            <wire x2="2176" y1="928" y2="928" x1="1664" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1552" y1="128" y2="128" x1="1056" />
            <wire x2="1552" y1="128" y2="864" x1="1552" />
            <wire x2="2176" y1="864" y2="864" x1="1552" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="672" y1="256" y2="256" x1="592" />
            <wire x2="592" y1="256" y2="368" x1="592" />
            <wire x2="2624" y1="368" y2="368" x1="592" />
            <wire x2="2624" y1="368" y2="672" x1="2624" />
            <wire x2="2624" y1="672" y2="672" x1="2560" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="672" y1="544" y2="544" x1="608" />
            <wire x2="608" y1="544" y2="1248" x1="608" />
            <wire x2="2640" y1="1248" y2="1248" x1="608" />
            <wire x2="2640" y1="544" y2="544" x1="2560" />
            <wire x2="2640" y1="544" y2="1248" x1="2640" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="656" y1="304" y2="848" x1="656" />
            <wire x2="672" y1="848" y2="848" x1="656" />
            <wire x2="2608" y1="304" y2="304" x1="656" />
            <wire x2="2608" y1="304" y2="416" x1="2608" />
            <wire x2="2608" y1="416" y2="416" x1="2560" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="656" y1="944" y2="1152" x1="656" />
            <wire x2="672" y1="1152" y2="1152" x1="656" />
            <wire x2="1712" y1="944" y2="944" x1="656" />
            <wire x2="1712" y1="944" y2="1088" x1="1712" />
            <wire x2="2112" y1="1088" y2="1088" x1="1712" />
            <wire x2="2656" y1="1088" y2="1088" x1="2112" />
            <wire x2="2112" y1="1088" y2="1168" x1="2112" />
            <wire x2="3264" y1="1168" y2="1168" x1="2112" />
            <wire x2="3264" y1="1168" y2="2080" x1="3264" />
            <wire x2="2176" y1="416" y2="416" x1="2112" />
            <wire x2="2112" y1="416" y2="1088" x1="2112" />
            <wire x2="3264" y1="2080" y2="2080" x1="3200" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="672" y1="1520" y2="1520" x1="608" />
            <wire x2="608" y1="1520" y2="2336" x1="608" />
            <wire x2="3216" y1="2336" y2="2336" x1="608" />
            <wire x2="3216" y1="1856" y2="1856" x1="2560" />
            <wire x2="3216" y1="1856" y2="2336" x1="3216" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="656" y1="1312" y2="1856" x1="656" />
            <wire x2="672" y1="1856" y2="1856" x1="656" />
            <wire x2="2624" y1="1312" y2="1312" x1="656" />
            <wire x2="2624" y1="1312" y2="1728" x1="2624" />
            <wire x2="2624" y1="1728" y2="1728" x1="2560" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="672" y1="2192" y2="2192" x1="624" />
            <wire x2="624" y1="2192" y2="2288" x1="624" />
            <wire x2="2608" y1="2288" y2="2288" x1="624" />
            <wire x2="2608" y1="1600" y2="1600" x1="2560" />
            <wire x2="2608" y1="1600" y2="2288" x1="2608" />
        </branch>
        <branch name="s(31:0)">
            <wire x2="1856" y1="256" y2="272" x1="1856" />
            <wire x2="1856" y1="272" y2="576" x1="1856" />
            <wire x2="1856" y1="576" y2="848" x1="1856" />
            <wire x2="1856" y1="848" y2="1152" x1="1856" />
            <wire x2="1856" y1="1152" y2="1520" x1="1856" />
            <wire x2="1856" y1="1520" y2="1888" x1="1856" />
            <wire x2="1856" y1="1888" y2="2192" x1="1856" />
            <wire x2="1856" y1="2192" y2="2528" x1="1856" />
            <wire x2="2384" y1="2528" y2="2528" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="2384" y="2528" name="s(31:0)" orien="R0" />
        <bustap x2="1760" y1="2528" y2="2528" x1="1856" />
        <branch name="s(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="2528" type="branch" />
            <wire x2="1408" y1="2528" y2="2528" x1="1056" />
            <wire x2="1760" y1="2528" y2="2528" x1="1408" />
        </branch>
        <bustap x2="1760" y1="2192" y2="2192" x1="1856" />
        <branch name="s(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="2192" type="branch" />
            <wire x2="1408" y1="2192" y2="2192" x1="1056" />
            <wire x2="1760" y1="2192" y2="2192" x1="1408" />
        </branch>
        <bustap x2="1760" y1="1888" y2="1888" x1="1856" />
        <bustap x2="1760" y1="1520" y2="1520" x1="1856" />
        <branch name="s(15:12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1520" type="branch" />
            <wire x2="1408" y1="1520" y2="1520" x1="1056" />
            <wire x2="1760" y1="1520" y2="1520" x1="1408" />
        </branch>
        <bustap x2="1760" y1="1152" y2="1152" x1="1856" />
        <branch name="s(19:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1152" type="branch" />
            <wire x2="1408" y1="1152" y2="1152" x1="1056" />
            <wire x2="1760" y1="1152" y2="1152" x1="1408" />
        </branch>
        <bustap x2="1760" y1="848" y2="848" x1="1856" />
        <branch name="s(23:20)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="848" type="branch" />
            <wire x2="1408" y1="848" y2="848" x1="1056" />
            <wire x2="1760" y1="848" y2="848" x1="1408" />
        </branch>
        <bustap x2="1760" y1="576" y2="576" x1="1856" />
        <bustap x2="1760" y1="256" y2="256" x1="1856" />
        <branch name="s(31:28)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="256" type="branch" />
            <wire x2="1408" y1="256" y2="256" x1="1056" />
            <wire x2="1760" y1="256" y2="256" x1="1408" />
        </branch>
        <branch name="s(27:24)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1331" y="544" type="branch" />
            <wire x2="1331" y1="544" y2="544" x1="1056" />
            <wire x2="1408" y1="544" y2="544" x1="1331" />
            <wire x2="1408" y1="544" y2="576" x1="1408" />
            <wire x2="1760" y1="576" y2="576" x1="1408" />
        </branch>
        <branch name="s(11:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1856" type="branch" />
            <wire x2="1328" y1="1856" y2="1856" x1="1056" />
            <wire x2="1408" y1="1856" y2="1856" x1="1328" />
            <wire x2="1408" y1="1856" y2="1888" x1="1408" />
            <wire x2="1760" y1="1888" y2="1888" x1="1408" />
        </branch>
    </sheet>
</drawing>