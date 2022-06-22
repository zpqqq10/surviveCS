<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="Rn" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="Qn" />
        <signal name="Q" />
        <signal name="XLXN_10" />
        <signal name="Sn" />
        <signal name="Cp" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="Rn" />
        <port polarity="Output" name="Qn" />
        <port polarity="Output" name="Q" />
        <port polarity="Input" name="Sn" />
        <port polarity="Input" name="Cp" />
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="nand3" name="XLXI_1">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="Rn" name="I1" />
            <blockpin signalname="D" name="I2" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_2">
            <blockpin signalname="XLXN_25" name="I0" />
            <blockpin signalname="Sn" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_3">
            <blockpin signalname="Cp" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_4">
            <blockpin signalname="Rn" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="Cp" name="I2" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_5">
            <blockpin signalname="Rn" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="Q" name="I2" />
            <blockpin signalname="Qn" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_6">
            <blockpin signalname="Qn" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="Sn" name="I2" />
            <blockpin signalname="Q" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="736" y="2048" name="XLXI_1" orien="R0" />
        <instance x="736" y="1600" name="XLXI_2" orien="R0" />
        <instance x="1392" y="2048" name="XLXI_3" orien="R0" />
        <instance x="1392" y="1600" name="XLXI_4" orien="R0" />
        <instance x="2048" y="2048" name="XLXI_5" orien="R0" />
        <branch name="D">
            <wire x2="736" y1="1856" y2="1856" x1="416" />
        </branch>
        <branch name="Rn">
            <wire x2="528" y1="2192" y2="2192" x1="416" />
            <wire x2="1152" y1="2192" y2="2192" x1="528" />
            <wire x2="2048" y1="2192" y2="2192" x1="1152" />
            <wire x2="736" y1="1920" y2="1920" x1="528" />
            <wire x2="528" y1="1920" y2="2192" x1="528" />
            <wire x2="1392" y1="1536" y2="1536" x1="1152" />
            <wire x2="1152" y1="1536" y2="2192" x1="1152" />
            <wire x2="2048" y1="1984" y2="2192" x1="2048" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="736" y1="1984" y2="2048" x1="736" />
            <wire x2="1712" y1="2048" y2="2048" x1="736" />
            <wire x2="1712" y1="1920" y2="1920" x1="1648" />
            <wire x2="2048" y1="1920" y2="1920" x1="1712" />
            <wire x2="1712" y1="1920" y2="2048" x1="1712" />
        </branch>
        <branch name="Qn">
            <wire x2="2048" y1="1536" y2="1728" x1="2048" />
            <wire x2="2352" y1="1728" y2="1728" x1="2048" />
            <wire x2="2352" y1="1728" y2="1920" x1="2352" />
            <wire x2="2496" y1="1920" y2="1920" x1="2352" />
            <wire x2="2352" y1="1920" y2="1920" x1="2304" />
        </branch>
        <branch name="Q">
            <wire x2="2048" y1="1744" y2="1856" x1="2048" />
            <wire x2="2336" y1="1744" y2="1744" x1="2048" />
            <wire x2="2336" y1="1472" y2="1472" x1="2304" />
            <wire x2="2336" y1="1472" y2="1744" x1="2336" />
            <wire x2="2512" y1="1472" y2="1472" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2496" y="1920" name="Qn" orien="R0" />
        <iomarker fontsize="28" x="416" y="1856" name="D" orien="R180" />
        <iomarker fontsize="28" x="416" y="2192" name="Rn" orien="R180" />
        <branch name="Sn">
            <wire x2="496" y1="1248" y2="1248" x1="416" />
            <wire x2="496" y1="1248" y2="1472" x1="496" />
            <wire x2="736" y1="1472" y2="1472" x1="496" />
            <wire x2="2048" y1="1248" y2="1248" x1="496" />
            <wire x2="2048" y1="1248" y2="1408" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="416" y="1248" name="Sn" orien="R180" />
        <iomarker fontsize="28" x="416" y="1664" name="Cp" orien="R180" />
        <instance x="2048" y="1600" name="XLXI_6" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="1712" y1="1360" y2="1360" x1="736" />
            <wire x2="1712" y1="1360" y2="1472" x1="1712" />
            <wire x2="2048" y1="1472" y2="1472" x1="1712" />
            <wire x2="1712" y1="1472" y2="1664" x1="1712" />
            <wire x2="736" y1="1360" y2="1408" x1="736" />
            <wire x2="1392" y1="1664" y2="1856" x1="1392" />
            <wire x2="1712" y1="1664" y2="1664" x1="1392" />
            <wire x2="1712" y1="1472" y2="1472" x1="1648" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1392" y1="1472" y2="1472" x1="992" />
        </branch>
        <branch name="Cp">
            <wire x2="1072" y1="1664" y2="1664" x1="416" />
            <wire x2="1072" y1="1664" y2="1984" x1="1072" />
            <wire x2="1392" y1="1984" y2="1984" x1="1072" />
            <wire x2="1392" y1="1408" y2="1408" x1="1072" />
            <wire x2="1072" y1="1408" y2="1664" x1="1072" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="736" y1="1536" y2="1728" x1="736" />
            <wire x2="1040" y1="1728" y2="1728" x1="736" />
            <wire x2="1040" y1="1728" y2="1920" x1="1040" />
            <wire x2="1392" y1="1920" y2="1920" x1="1040" />
            <wire x2="1040" y1="1920" y2="1920" x1="992" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1472" name="Q" orien="R0" />
    </sheet>
</drawing>