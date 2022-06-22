<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW(5:0)" />
        <signal name="SW(0)" />
        <signal name="SW(1)" />
        <signal name="SW(2)" />
        <signal name="SW(3)" />
        <signal name="SW(4)" />
        <signal name="SW(5)" />
        <signal name="LED(7:0)" />
        <port polarity="Input" name="SW(5:0)" />
        <port polarity="Output" name="LED(7:0)" />
        <blockdef name="D_74LS138">
            <timestamp>2020-10-19T14:1:32</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <block symbolname="D_74LS138" name="XLXI_1">
            <blockpin signalname="SW(0)" name="A" />
            <blockpin signalname="SW(1)" name="B" />
            <blockpin signalname="SW(2)" name="C" />
            <blockpin signalname="SW(5)" name="G" />
            <blockpin signalname="SW(3)" name="G2A" />
            <blockpin signalname="SW(4)" name="G2B" />
            <blockpin signalname="LED(7:0)" name="Y(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1552" y="1344" name="XLXI_1" orien="R0">
        </instance>
        <branch name="SW(5:0)">
            <wire x2="1264" y1="848" y2="992" x1="1264" />
            <wire x2="1264" y1="992" y2="1056" x1="1264" />
            <wire x2="1264" y1="1056" y2="1120" x1="1264" />
            <wire x2="1264" y1="1120" y2="1184" x1="1264" />
            <wire x2="1264" y1="1184" y2="1248" x1="1264" />
            <wire x2="1264" y1="1248" y2="1312" x1="1264" />
            <wire x2="1264" y1="1312" y2="1408" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1264" y="1408" name="SW(5:0)" orien="R90" />
        <bustap x2="1360" y1="992" y2="992" x1="1264" />
        <bustap x2="1360" y1="1056" y2="1056" x1="1264" />
        <bustap x2="1360" y1="1120" y2="1120" x1="1264" />
        <bustap x2="1360" y1="1184" y2="1184" x1="1264" />
        <bustap x2="1360" y1="1248" y2="1248" x1="1264" />
        <bustap x2="1360" y1="1312" y2="1312" x1="1264" />
        <branch name="SW(0)">
            <wire x2="1552" y1="992" y2="992" x1="1360" />
        </branch>
        <branch name="SW(1)">
            <wire x2="1552" y1="1056" y2="1056" x1="1360" />
        </branch>
        <branch name="SW(2)">
            <wire x2="1552" y1="1120" y2="1120" x1="1360" />
        </branch>
        <branch name="SW(3)">
            <wire x2="1552" y1="1248" y2="1248" x1="1360" />
        </branch>
        <branch name="SW(4)">
            <wire x2="1552" y1="1312" y2="1312" x1="1360" />
        </branch>
        <branch name="SW(5)">
            <wire x2="1552" y1="1184" y2="1184" x1="1360" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="2160" y1="992" y2="992" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="2160" y="992" name="LED(7:0)" orien="R0" />
    </sheet>
</drawing>