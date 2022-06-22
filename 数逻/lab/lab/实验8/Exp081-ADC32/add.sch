<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="ai" />
        <signal name="bi" />
        <signal name="ci" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="si" />
        <signal name="CO" />
        <signal name="Gi" />
        <signal name="Pi" />
        <port polarity="Input" name="ai" />
        <port polarity="Input" name="bi" />
        <port polarity="Input" name="ci" />
        <port polarity="Output" name="si" />
        <port polarity="Output" name="CO" />
        <port polarity="Output" name="Gi" />
        <port polarity="Output" name="Pi" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
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
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="bi" name="I0" />
            <blockpin signalname="ai" name="I1" />
            <blockpin signalname="Pi" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="ci" name="I0" />
            <blockpin signalname="Pi" name="I1" />
            <blockpin signalname="si" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="ai" name="I0" />
            <blockpin signalname="bi" name="I1" />
            <blockpin signalname="Gi" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="ci" name="I0" />
            <blockpin signalname="Pi" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="Gi" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="CO" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="1232" name="XLXI_1" orien="R0" />
        <instance x="1664" y="1264" name="XLXI_2" orien="R0" />
        <instance x="1056" y="1488" name="XLXI_3" orien="R0" />
        <instance x="1664" y="1520" name="XLXI_4" orien="R0" />
        <branch name="ai">
            <wire x2="944" y1="1104" y2="1104" x1="816" />
            <wire x2="1056" y1="1104" y2="1104" x1="944" />
            <wire x2="944" y1="1104" y2="1424" x1="944" />
            <wire x2="1056" y1="1424" y2="1424" x1="944" />
        </branch>
        <branch name="bi">
            <wire x2="976" y1="1168" y2="1168" x1="816" />
            <wire x2="1056" y1="1168" y2="1168" x1="976" />
            <wire x2="976" y1="1168" y2="1360" x1="976" />
            <wire x2="1056" y1="1360" y2="1360" x1="976" />
        </branch>
        <branch name="ci">
            <wire x2="1504" y1="992" y2="992" x1="816" />
            <wire x2="1504" y1="992" y2="1200" x1="1504" />
            <wire x2="1664" y1="1200" y2="1200" x1="1504" />
            <wire x2="1504" y1="1200" y2="1456" x1="1504" />
            <wire x2="1664" y1="1456" y2="1456" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="816" y="992" name="ci" orien="R180" />
        <iomarker fontsize="28" x="816" y="1104" name="ai" orien="R180" />
        <iomarker fontsize="28" x="816" y="1168" name="bi" orien="R180" />
        <instance x="2176" y="1584" name="XLXI_5" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="2048" y1="1424" y2="1424" x1="1920" />
            <wire x2="2048" y1="1424" y2="1456" x1="2048" />
            <wire x2="2176" y1="1456" y2="1456" x1="2048" />
        </branch>
        <branch name="si">
            <wire x2="2560" y1="1168" y2="1168" x1="1920" />
        </branch>
        <branch name="CO">
            <wire x2="2560" y1="1488" y2="1488" x1="2432" />
        </branch>
        <branch name="Gi">
            <wire x2="1328" y1="1392" y2="1392" x1="1312" />
            <wire x2="1328" y1="1392" y2="1520" x1="1328" />
            <wire x2="2048" y1="1520" y2="1520" x1="1328" />
            <wire x2="2176" y1="1520" y2="1520" x1="2048" />
            <wire x2="2048" y1="1520" y2="1616" x1="2048" />
            <wire x2="2560" y1="1616" y2="1616" x1="2048" />
        </branch>
        <branch name="Pi">
            <wire x2="1440" y1="1136" y2="1136" x1="1312" />
            <wire x2="1600" y1="1136" y2="1136" x1="1440" />
            <wire x2="1664" y1="1136" y2="1136" x1="1600" />
            <wire x2="1600" y1="1136" y2="1392" x1="1600" />
            <wire x2="1664" y1="1392" y2="1392" x1="1600" />
            <wire x2="1440" y1="1136" y2="1712" x1="1440" />
            <wire x2="2560" y1="1712" y2="1712" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1168" name="si" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1488" name="CO" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1616" name="Gi" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1712" name="Pi" orien="R0" />
    </sheet>
</drawing>