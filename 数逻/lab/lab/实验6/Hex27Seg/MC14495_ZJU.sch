<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D0" />
        <signal name="D1" />
        <signal name="D2" />
        <signal name="D3" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="LE" />
        <signal name="XLXN_47" />
        <signal name="p" />
        <signal name="point" />
        <port polarity="Input" name="D0" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D3" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <port polarity="Input" name="LE" />
        <port polarity="Output" name="p" />
        <port polarity="Input" name="point" />
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
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
        <block symbolname="and4" name="A0">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="and4" name="A1">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_5" name="I3" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and3" name="A2">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and3" name="A3">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and3" name="A4">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and3" name="A5">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and3" name="A6">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and3" name="A7">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and2" name="A8">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and4" name="A9">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and3" name="A10">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and3" name="A11">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and4" name="A12">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_5" name="I3" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and3" name="A13">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="and3" name="A14">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and3" name="A15">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and4" name="A16">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_5" name="I3" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and4" name="A17">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and4" name="A18">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and4" name="A19">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_5" name="I3" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and4" name="A20">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_5" name="I3" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_106">
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_107">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_108">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_109">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="or3" name="go">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_12" name="I2" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="or3" name="eo">
            <blockpin signalname="XLXN_29" name="I0" />
            <blockpin signalname="XLXN_28" name="I1" />
            <blockpin signalname="XLXN_27" name="I2" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="or3" name="co">
            <blockpin signalname="XLXN_24" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_22" name="I2" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="or4" name="fo">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_15" name="I2" />
            <blockpin signalname="XLXN_16" name="I3" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="or4" name="do">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="XLXN_17" name="I3" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="or4" name="bo">
            <blockpin signalname="XLXN_30" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_21" name="I2" />
            <blockpin signalname="XLXN_20" name="I3" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="or4" name="ao">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="XLXN_17" name="I3" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_117">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_44" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_118">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_43" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_119">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_31" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_120">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_121">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_33" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_122">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_34" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_123">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_35" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_124">
            <blockpin signalname="point" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="208" y="1152" name="A0" orien="R90" />
        <instance x="512" y="1152" name="A1" orien="R90" />
        <instance x="816" y="1152" name="A2" orien="R90" />
        <instance x="1024" y="1152" name="A3" orien="R90" />
        <instance x="1248" y="1152" name="A4" orien="R90" />
        <instance x="1456" y="1152" name="A5" orien="R90" />
        <instance x="1664" y="1152" name="A6" orien="R90" />
        <instance x="1904" y="1152" name="A7" orien="R90" />
        <instance x="2144" y="1152" name="A8" orien="R90" />
        <instance x="2288" y="1152" name="A9" orien="R90" />
        <instance x="2560" y="1168" name="A10" orien="R90" />
        <instance x="2768" y="1168" name="A11" orien="R90" />
        <instance x="2960" y="1168" name="A12" orien="R90" />
        <instance x="3264" y="1168" name="A13" orien="R90" />
        <instance x="3488" y="1168" name="A14" orien="R90" />
        <instance x="3696" y="1168" name="A15" orien="R90" />
        <instance x="3904" y="1184" name="A16" orien="R90" />
        <instance x="4160" y="1184" name="A17" orien="R90" />
        <instance x="4416" y="1184" name="A18" orien="R90" />
        <instance x="4656" y="1184" name="A19" orien="R90" />
        <instance x="4944" y="1184" name="A20" orien="R90" />
        <instance x="5168" y="272" name="XLXI_106" orien="R90" />
        <instance x="4800" y="272" name="XLXI_107" orien="R90" />
        <instance x="4432" y="272" name="XLXI_108" orien="R90" />
        <instance x="4144" y="272" name="XLXI_109" orien="R90" />
        <branch name="D0">
            <wire x2="576" y1="656" y2="1152" x1="576" />
            <wire x2="1088" y1="656" y2="656" x1="576" />
            <wire x2="1088" y1="656" y2="1152" x1="1088" />
            <wire x2="1520" y1="656" y2="656" x1="1088" />
            <wire x2="1520" y1="656" y2="1152" x1="1520" />
            <wire x2="1728" y1="656" y2="656" x1="1520" />
            <wire x2="1728" y1="656" y2="1152" x1="1728" />
            <wire x2="2208" y1="656" y2="656" x1="1728" />
            <wire x2="2208" y1="656" y2="1152" x1="2208" />
            <wire x2="2624" y1="656" y2="656" x1="2208" />
            <wire x2="2624" y1="656" y2="1168" x1="2624" />
            <wire x2="3328" y1="656" y2="656" x1="2624" />
            <wire x2="3328" y1="656" y2="1168" x1="3328" />
            <wire x2="3968" y1="656" y2="656" x1="3328" />
            <wire x2="4016" y1="656" y2="656" x1="3968" />
            <wire x2="4224" y1="656" y2="656" x1="4016" />
            <wire x2="4224" y1="656" y2="1184" x1="4224" />
            <wire x2="4480" y1="656" y2="656" x1="4224" />
            <wire x2="5008" y1="656" y2="656" x1="4480" />
            <wire x2="5008" y1="656" y2="1184" x1="5008" />
            <wire x2="4480" y1="656" y2="1184" x1="4480" />
            <wire x2="3968" y1="656" y2="1184" x1="3968" />
            <wire x2="4176" y1="256" y2="256" x1="4016" />
            <wire x2="4176" y1="256" y2="272" x1="4176" />
            <wire x2="4016" y1="256" y2="656" x1="4016" />
            <wire x2="4176" y1="176" y2="256" x1="4176" />
        </branch>
        <branch name="D1">
            <wire x2="640" y1="736" y2="1152" x1="640" />
            <wire x2="1152" y1="736" y2="736" x1="640" />
            <wire x2="1152" y1="736" y2="1152" x1="1152" />
            <wire x2="1312" y1="736" y2="736" x1="1152" />
            <wire x2="1312" y1="736" y2="1152" x1="1312" />
            <wire x2="2416" y1="736" y2="736" x1="1312" />
            <wire x2="2416" y1="736" y2="1152" x1="2416" />
            <wire x2="2688" y1="736" y2="736" x1="2416" />
            <wire x2="2688" y1="736" y2="1168" x1="2688" />
            <wire x2="2832" y1="736" y2="736" x1="2688" />
            <wire x2="2832" y1="736" y2="1168" x1="2832" />
            <wire x2="3088" y1="736" y2="736" x1="2832" />
            <wire x2="3088" y1="736" y2="1168" x1="3088" />
            <wire x2="3392" y1="736" y2="736" x1="3088" />
            <wire x2="3392" y1="736" y2="1168" x1="3392" />
            <wire x2="3824" y1="736" y2="736" x1="3392" />
            <wire x2="3824" y1="736" y2="1168" x1="3824" />
            <wire x2="4288" y1="736" y2="736" x1="3824" />
            <wire x2="4336" y1="736" y2="736" x1="4288" />
            <wire x2="4288" y1="736" y2="1184" x1="4288" />
            <wire x2="4464" y1="256" y2="256" x1="4336" />
            <wire x2="4464" y1="256" y2="272" x1="4464" />
            <wire x2="4336" y1="256" y2="736" x1="4336" />
            <wire x2="4464" y1="176" y2="256" x1="4464" />
        </branch>
        <branch name="D2">
            <wire x2="400" y1="976" y2="1152" x1="400" />
            <wire x2="704" y1="976" y2="976" x1="400" />
            <wire x2="704" y1="976" y2="1152" x1="704" />
            <wire x2="2032" y1="976" y2="976" x1="704" />
            <wire x2="2032" y1="976" y2="1152" x1="2032" />
            <wire x2="2752" y1="976" y2="976" x1="2032" />
            <wire x2="2752" y1="976" y2="1168" x1="2752" />
            <wire x2="2896" y1="976" y2="976" x1="2752" />
            <wire x2="2896" y1="976" y2="1168" x1="2896" />
            <wire x2="3616" y1="976" y2="976" x1="2896" />
            <wire x2="3616" y1="976" y2="1168" x1="3616" />
            <wire x2="3888" y1="976" y2="976" x1="3616" />
            <wire x2="3888" y1="976" y2="1168" x1="3888" />
            <wire x2="4096" y1="976" y2="976" x1="3888" />
            <wire x2="4096" y1="976" y2="1184" x1="4096" />
            <wire x2="4608" y1="976" y2="976" x1="4096" />
            <wire x2="4752" y1="976" y2="976" x1="4608" />
            <wire x2="4848" y1="976" y2="976" x1="4752" />
            <wire x2="4848" y1="976" y2="1184" x1="4848" />
            <wire x2="4608" y1="976" y2="1184" x1="4608" />
            <wire x2="4832" y1="256" y2="256" x1="4752" />
            <wire x2="4832" y1="256" y2="272" x1="4832" />
            <wire x2="4752" y1="256" y2="976" x1="4752" />
            <wire x2="4832" y1="176" y2="256" x1="4832" />
        </branch>
        <branch name="D3">
            <wire x2="464" y1="896" y2="1152" x1="464" />
            <wire x2="2544" y1="896" y2="896" x1="464" />
            <wire x2="2544" y1="896" y2="1152" x1="2544" />
            <wire x2="2960" y1="896" y2="896" x1="2544" />
            <wire x2="2960" y1="896" y2="1168" x1="2960" />
            <wire x2="3456" y1="896" y2="896" x1="2960" />
            <wire x2="3456" y1="896" y2="1168" x1="3456" />
            <wire x2="3680" y1="896" y2="896" x1="3456" />
            <wire x2="3680" y1="896" y2="1168" x1="3680" />
            <wire x2="4416" y1="896" y2="896" x1="3680" />
            <wire x2="4416" y1="896" y2="1184" x1="4416" />
            <wire x2="4672" y1="896" y2="896" x1="4416" />
            <wire x2="5040" y1="896" y2="896" x1="4672" />
            <wire x2="4672" y1="896" y2="1184" x1="4672" />
            <wire x2="5200" y1="256" y2="256" x1="5040" />
            <wire x2="5200" y1="256" y2="272" x1="5200" />
            <wire x2="5040" y1="256" y2="896" x1="5040" />
            <wire x2="5200" y1="176" y2="240" x1="5200" />
            <wire x2="5200" y1="240" y2="256" x1="5200" />
        </branch>
        <iomarker fontsize="28" x="4176" y="176" name="D0" orien="R270" />
        <iomarker fontsize="28" x="4464" y="176" name="D1" orien="R270" />
        <iomarker fontsize="28" x="4832" y="176" name="D2" orien="R270" />
        <iomarker fontsize="28" x="5200" y="176" name="D3" orien="R270" />
        <branch name="XLXN_5">
            <wire x2="768" y1="1056" y2="1152" x1="768" />
            <wire x2="1008" y1="1056" y2="1056" x1="768" />
            <wire x2="1008" y1="1056" y2="1152" x1="1008" />
            <wire x2="1216" y1="1056" y2="1056" x1="1008" />
            <wire x2="1216" y1="1056" y2="1152" x1="1216" />
            <wire x2="1440" y1="1056" y2="1056" x1="1216" />
            <wire x2="1440" y1="1056" y2="1152" x1="1440" />
            <wire x2="1648" y1="1056" y2="1056" x1="1440" />
            <wire x2="1648" y1="1056" y2="1152" x1="1648" />
            <wire x2="2096" y1="1056" y2="1056" x1="1648" />
            <wire x2="2096" y1="1056" y2="1152" x1="2096" />
            <wire x2="2272" y1="1056" y2="1056" x1="2096" />
            <wire x2="2272" y1="1056" y2="1152" x1="2272" />
            <wire x2="3216" y1="1056" y2="1056" x1="2272" />
            <wire x2="3216" y1="1056" y2="1168" x1="3216" />
            <wire x2="4160" y1="1056" y2="1056" x1="3216" />
            <wire x2="4912" y1="1056" y2="1056" x1="4160" />
            <wire x2="5200" y1="1056" y2="1056" x1="4912" />
            <wire x2="5200" y1="1056" y2="1184" x1="5200" />
            <wire x2="4912" y1="1056" y2="1184" x1="4912" />
            <wire x2="4160" y1="1056" y2="1184" x1="4160" />
            <wire x2="5200" y1="496" y2="1056" x1="5200" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="944" y1="832" y2="1152" x1="944" />
            <wire x2="1376" y1="832" y2="832" x1="944" />
            <wire x2="1376" y1="832" y2="1152" x1="1376" />
            <wire x2="1584" y1="832" y2="832" x1="1376" />
            <wire x2="1584" y1="832" y2="1152" x1="1584" />
            <wire x2="1856" y1="832" y2="832" x1="1584" />
            <wire x2="2480" y1="832" y2="832" x1="1856" />
            <wire x2="2480" y1="832" y2="1152" x1="2480" />
            <wire x2="3152" y1="832" y2="832" x1="2480" />
            <wire x2="3152" y1="832" y2="1168" x1="3152" />
            <wire x2="4352" y1="832" y2="832" x1="3152" />
            <wire x2="4832" y1="832" y2="832" x1="4352" />
            <wire x2="5136" y1="832" y2="832" x1="4832" />
            <wire x2="5136" y1="832" y2="1184" x1="5136" />
            <wire x2="4352" y1="832" y2="1184" x1="4352" />
            <wire x2="1856" y1="832" y2="1152" x1="1856" />
            <wire x2="4832" y1="496" y2="832" x1="4832" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="336" y1="848" y2="1152" x1="336" />
            <wire x2="880" y1="848" y2="848" x1="336" />
            <wire x2="880" y1="848" y2="1152" x1="880" />
            <wire x2="1792" y1="848" y2="848" x1="880" />
            <wire x2="1792" y1="848" y2="1152" x1="1792" />
            <wire x2="1968" y1="848" y2="848" x1="1792" />
            <wire x2="1968" y1="848" y2="1152" x1="1968" />
            <wire x2="4032" y1="848" y2="848" x1="1968" />
            <wire x2="4464" y1="848" y2="848" x1="4032" />
            <wire x2="4544" y1="848" y2="848" x1="4464" />
            <wire x2="4784" y1="848" y2="848" x1="4544" />
            <wire x2="5072" y1="848" y2="848" x1="4784" />
            <wire x2="5072" y1="848" y2="1184" x1="5072" />
            <wire x2="4784" y1="848" y2="1184" x1="4784" />
            <wire x2="4544" y1="848" y2="1184" x1="4544" />
            <wire x2="4032" y1="848" y2="1184" x1="4032" />
            <wire x2="4464" y1="496" y2="848" x1="4464" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="272" y1="816" y2="1152" x1="272" />
            <wire x2="2352" y1="816" y2="816" x1="272" />
            <wire x2="2352" y1="816" y2="1152" x1="2352" />
            <wire x2="3024" y1="816" y2="816" x1="2352" />
            <wire x2="3024" y1="816" y2="1168" x1="3024" />
            <wire x2="3552" y1="816" y2="816" x1="3024" />
            <wire x2="3552" y1="816" y2="1168" x1="3552" />
            <wire x2="3760" y1="816" y2="816" x1="3552" />
            <wire x2="4176" y1="816" y2="816" x1="3760" />
            <wire x2="4720" y1="816" y2="816" x1="4176" />
            <wire x2="4720" y1="816" y2="1184" x1="4720" />
            <wire x2="3760" y1="816" y2="1168" x1="3760" />
            <wire x2="4176" y1="496" y2="816" x1="4176" />
        </branch>
        <instance x="976" y="1680" name="go" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="1984" y="1696" name="eo" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="2992" y="1696" name="co" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="1392" y="1696" name="fo" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="2448" y="1712" name="do" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="3536" y="1696" name="bo" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <instance x="4240" y="1696" name="ao" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-8" type="instance" />
        </instance>
        <branch name="XLXN_10">
            <wire x2="368" y1="1408" y2="1680" x1="368" />
            <wire x2="1040" y1="1680" y2="1680" x1="368" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="672" y1="1408" y2="1536" x1="672" />
            <wire x2="1104" y1="1536" y2="1536" x1="672" />
            <wire x2="1104" y1="1536" y2="1680" x1="1104" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="944" y1="1408" y2="1520" x1="944" />
            <wire x2="1168" y1="1520" y2="1520" x1="944" />
            <wire x2="1168" y1="1520" y2="1680" x1="1168" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1152" y1="1408" y2="1504" x1="1152" />
            <wire x2="1456" y1="1504" y2="1504" x1="1152" />
            <wire x2="1456" y1="1504" y2="1696" x1="1456" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1376" y1="1408" y2="1488" x1="1376" />
            <wire x2="1520" y1="1488" y2="1488" x1="1376" />
            <wire x2="1520" y1="1488" y2="1696" x1="1520" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1584" y1="1408" y2="1696" x1="1584" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1648" y1="1568" y2="1696" x1="1648" />
            <wire x2="4368" y1="1568" y2="1568" x1="1648" />
            <wire x2="4576" y1="1568" y2="1568" x1="4368" />
            <wire x2="4368" y1="1568" y2="1696" x1="4368" />
            <wire x2="4576" y1="1440" y2="1568" x1="4576" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="5104" y1="1600" y2="1600" x1="2704" />
            <wire x2="5104" y1="1600" y2="1696" x1="5104" />
            <wire x2="2704" y1="1600" y2="1712" x1="2704" />
            <wire x2="5104" y1="1696" y2="1696" x1="4496" />
            <wire x2="5104" y1="1440" y2="1600" x1="5104" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="4432" y1="1584" y2="1584" x1="2640" />
            <wire x2="4432" y1="1584" y2="1696" x1="4432" />
            <wire x2="4816" y1="1584" y2="1584" x1="4432" />
            <wire x2="2640" y1="1584" y2="1712" x1="2640" />
            <wire x2="4816" y1="1440" y2="1584" x1="4816" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="4304" y1="1552" y2="1696" x1="4304" />
            <wire x2="4320" y1="1552" y2="1552" x1="4304" />
            <wire x2="4320" y1="1440" y2="1552" x1="4320" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="4064" y1="1696" y2="1696" x1="3792" />
            <wire x2="4064" y1="1440" y2="1696" x1="4064" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="3728" y1="1552" y2="1696" x1="3728" />
            <wire x2="3824" y1="1552" y2="1552" x1="3728" />
            <wire x2="3824" y1="1424" y2="1552" x1="3824" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="3616" y1="1552" y2="1552" x1="3184" />
            <wire x2="3664" y1="1552" y2="1552" x1="3616" />
            <wire x2="3664" y1="1552" y2="1696" x1="3664" />
            <wire x2="3184" y1="1552" y2="1696" x1="3184" />
            <wire x2="3616" y1="1424" y2="1552" x1="3616" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="3120" y1="1424" y2="1696" x1="3120" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="2896" y1="1424" y2="1696" x1="2896" />
            <wire x2="3056" y1="1696" y2="1696" x1="2896" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2576" y1="1552" y2="1712" x1="2576" />
            <wire x2="2688" y1="1552" y2="1552" x1="2576" />
            <wire x2="2688" y1="1424" y2="1552" x1="2688" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2448" y1="1408" y2="1712" x1="2448" />
            <wire x2="2512" y1="1712" y2="1712" x1="2448" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2240" y1="1696" y2="1696" x1="2176" />
            <wire x2="2240" y1="1408" y2="1696" x1="2240" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2032" y1="1408" y2="1552" x1="2032" />
            <wire x2="2112" y1="1552" y2="1552" x1="2032" />
            <wire x2="2112" y1="1552" y2="1696" x1="2112" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1792" y1="1408" y2="1696" x1="1792" />
            <wire x2="2048" y1="1696" y2="1696" x1="1792" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="3392" y1="1424" y2="1696" x1="3392" />
            <wire x2="3600" y1="1696" y2="1696" x1="3392" />
        </branch>
        <instance x="976" y="2208" name="XLXI_117" orien="R90" />
        <instance x="1424" y="2224" name="XLXI_118" orien="R90" />
        <instance x="1984" y="2224" name="XLXI_119" orien="R90" />
        <instance x="2480" y="2224" name="XLXI_120" orien="R90" />
        <instance x="2992" y="2224" name="XLXI_121" orien="R90" />
        <instance x="3568" y="2224" name="XLXI_122" orien="R90" />
        <instance x="4272" y="2240" name="XLXI_123" orien="R90" />
        <branch name="XLXN_31">
            <wire x2="2112" y1="1952" y2="2224" x1="2112" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="2608" y1="1968" y2="2224" x1="2608" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="3120" y1="1952" y2="2224" x1="3120" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="3696" y1="1952" y2="2224" x1="3696" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="4400" y1="1952" y2="2240" x1="4400" />
        </branch>
        <branch name="a">
            <wire x2="4368" y1="2496" y2="2592" x1="4368" />
        </branch>
        <branch name="b">
            <wire x2="3664" y1="2480" y2="2592" x1="3664" />
        </branch>
        <branch name="c">
            <wire x2="3088" y1="2480" y2="2592" x1="3088" />
        </branch>
        <branch name="d">
            <wire x2="2576" y1="2480" y2="2592" x1="2576" />
        </branch>
        <branch name="e">
            <wire x2="2080" y1="2480" y2="2592" x1="2080" />
        </branch>
        <branch name="f">
            <wire x2="1520" y1="2480" y2="2592" x1="1520" />
        </branch>
        <branch name="g">
            <wire x2="1072" y1="2464" y2="2576" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1072" y="2576" name="g" orien="R90" />
        <iomarker fontsize="28" x="1520" y="2592" name="f" orien="R90" />
        <iomarker fontsize="28" x="2080" y="2592" name="e" orien="R90" />
        <iomarker fontsize="28" x="2576" y="2592" name="d" orien="R90" />
        <iomarker fontsize="28" x="3088" y="2592" name="c" orien="R90" />
        <iomarker fontsize="28" x="3664" y="2592" name="b" orien="R90" />
        <iomarker fontsize="28" x="4368" y="2592" name="a" orien="R90" />
        <branch name="XLXN_43">
            <wire x2="1552" y1="1952" y2="2224" x1="1552" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1104" y1="1936" y2="2208" x1="1104" />
        </branch>
        <branch name="LE">
            <wire x2="128" y1="624" y2="2064" x1="128" />
            <wire x2="128" y1="2064" y2="2080" x1="128" />
            <wire x2="1040" y1="2080" y2="2080" x1="128" />
            <wire x2="1040" y1="2080" y2="2208" x1="1040" />
            <wire x2="1488" y1="2080" y2="2080" x1="1040" />
            <wire x2="2048" y1="2080" y2="2080" x1="1488" />
            <wire x2="2544" y1="2080" y2="2080" x1="2048" />
            <wire x2="3056" y1="2080" y2="2080" x1="2544" />
            <wire x2="3632" y1="2080" y2="2080" x1="3056" />
            <wire x2="4336" y1="2080" y2="2080" x1="3632" />
            <wire x2="4336" y1="2080" y2="2240" x1="4336" />
            <wire x2="3632" y1="2080" y2="2224" x1="3632" />
            <wire x2="3056" y1="2080" y2="2224" x1="3056" />
            <wire x2="2544" y1="2080" y2="2224" x1="2544" />
            <wire x2="2048" y1="2080" y2="2208" x1="2048" />
            <wire x2="2048" y1="2208" y2="2224" x1="2048" />
            <wire x2="1488" y1="2080" y2="2224" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="128" y="624" name="LE" orien="R270" />
        <instance x="176" y="1776" name="XLXI_124" orien="R90" />
        <branch name="p">
            <wire x2="208" y1="2000" y2="2560" x1="208" />
        </branch>
        <branch name="point">
            <wire x2="208" y1="624" y2="1776" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="624" name="point" orien="R270" />
        <iomarker fontsize="28" x="208" y="2560" name="p" orien="R90" />
    </sheet>
</drawing>