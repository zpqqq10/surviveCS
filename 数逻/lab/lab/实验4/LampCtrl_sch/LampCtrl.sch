<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S1" />
        <signal name="S2" />
        <signal name="S3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_13" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="F" />
        <port polarity="Input" name="S1" />
        <port polarity="Input" name="S2" />
        <port polarity="Input" name="S3" />
        <port polarity="Output" name="F" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="S1" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="S2" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="S3" name="I" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_5">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="S2" name="I1" />
            <blockpin signalname="XLXN_7" name="I2" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_6">
            <blockpin signalname="S3" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="XLXN_7" name="I2" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_7">
            <blockpin signalname="S3" name="I0" />
            <blockpin signalname="S2" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_8">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="XLXN_19" name="I2" />
            <blockpin signalname="XLXN_18" name="I3" />
            <blockpin signalname="F" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="736" y="672" name="XLXI_1" orien="R0" />
        <instance x="736" y="1328" name="XLXI_2" orien="R0" />
        <instance x="720" y="2016" name="XLXI_3" orien="R0" />
        <branch name="S1">
            <wire x2="528" y1="640" y2="640" x1="384" />
            <wire x2="736" y1="640" y2="640" x1="528" />
            <wire x2="528" y1="336" y2="640" x1="528" />
            <wire x2="1072" y1="336" y2="336" x1="528" />
            <wire x2="1984" y1="336" y2="336" x1="1072" />
            <wire x2="1072" y1="336" y2="2288" x1="1072" />
            <wire x2="1984" y1="2288" y2="2288" x1="1072" />
        </branch>
        <branch name="S2">
            <wire x2="528" y1="1296" y2="1296" x1="416" />
            <wire x2="736" y1="1296" y2="1296" x1="528" />
            <wire x2="528" y1="1104" y2="1296" x1="528" />
            <wire x2="1152" y1="1104" y2="1104" x1="528" />
            <wire x2="1984" y1="1104" y2="1104" x1="1152" />
            <wire x2="1152" y1="1104" y2="2352" x1="1152" />
            <wire x2="1984" y1="2352" y2="2352" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="384" y="640" name="S1" orien="R180" />
        <iomarker fontsize="28" x="416" y="1296" name="S2" orien="R180" />
        <iomarker fontsize="28" x="448" y="1984" name="S3" orien="R180" />
        <instance x="1984" y="528" name="XLXI_4" orien="R0" />
        <instance x="1984" y="1232" name="XLXI_5" orien="R0" />
        <instance x="1984" y="1824" name="XLXI_6" orien="R0" />
        <instance x="1984" y="2480" name="XLXI_7" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1392" y1="640" y2="640" x1="960" />
            <wire x2="1984" y1="640" y2="640" x1="1392" />
            <wire x2="1984" y1="640" y2="1040" x1="1984" />
            <wire x2="1392" y1="640" y2="1632" x1="1392" />
            <wire x2="1984" y1="1632" y2="1632" x1="1392" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1472" y1="1296" y2="1296" x1="960" />
            <wire x2="1472" y1="1296" y2="1696" x1="1472" />
            <wire x2="1984" y1="1696" y2="1696" x1="1472" />
            <wire x2="1472" y1="400" y2="1296" x1="1472" />
            <wire x2="1984" y1="400" y2="400" x1="1472" />
        </branch>
        <branch name="S3">
            <wire x2="544" y1="1984" y2="1984" x1="448" />
            <wire x2="560" y1="1984" y2="1984" x1="544" />
            <wire x2="720" y1="1984" y2="1984" x1="560" />
            <wire x2="560" y1="1760" y2="1984" x1="560" />
            <wire x2="1248" y1="1760" y2="1760" x1="560" />
            <wire x2="1264" y1="1760" y2="1760" x1="1248" />
            <wire x2="1984" y1="1760" y2="1760" x1="1264" />
            <wire x2="1264" y1="1760" y2="2416" x1="1264" />
            <wire x2="1984" y1="2416" y2="2416" x1="1264" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1456" y1="1984" y2="1984" x1="944" />
            <wire x2="1984" y1="464" y2="464" x1="1456" />
            <wire x2="1456" y1="464" y2="1840" x1="1456" />
            <wire x2="1456" y1="1840" y2="1984" x1="1456" />
            <wire x2="1712" y1="1840" y2="1840" x1="1456" />
            <wire x2="1712" y1="1168" y2="1840" x1="1712" />
            <wire x2="1984" y1="1168" y2="1168" x1="1712" />
        </branch>
        <instance x="2640" y="1520" name="XLXI_8" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="2640" y1="400" y2="400" x1="2240" />
            <wire x2="2640" y1="400" y2="1264" x1="2640" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2432" y1="1104" y2="1104" x1="2240" />
            <wire x2="2432" y1="1104" y2="1328" x1="2432" />
            <wire x2="2640" y1="1328" y2="1328" x1="2432" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2432" y1="1696" y2="1696" x1="2240" />
            <wire x2="2432" y1="1392" y2="1696" x1="2432" />
            <wire x2="2640" y1="1392" y2="1392" x1="2432" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2640" y1="2352" y2="2352" x1="2240" />
            <wire x2="2640" y1="1456" y2="2352" x1="2640" />
        </branch>
        <branch name="F">
            <wire x2="3136" y1="1360" y2="1360" x1="2896" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1360" name="F" orien="R0" />
    </sheet>
</drawing>