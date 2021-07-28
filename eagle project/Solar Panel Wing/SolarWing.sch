<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="mm" unit="mm" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Solar">
<packages>
<package name="XJTPRIME">
<description>https://www.spectrolab.com/photovoltaics/XTJ-Prime_Data_Sheet.pdf</description>
<wire x1="0" y1="0" x2="69.8" y2="0" width="0.127" layer="51"/>
<wire x1="69.8" y1="0" x2="69.8" y2="-42.2" width="0.127" layer="51"/>
<wire x1="69.8" y1="-42.2" x2="0" y2="-42.2" width="0.127" layer="51"/>
<wire x1="0" y1="-42.2" x2="0" y2="0" width="0.127" layer="51"/>
<smd name="P$1" x="12.85" y="-0.75" dx="8" dy="1" layer="1"/>
<smd name="P$2" x="34.85" y="-0.75" dx="8" dy="1" layer="1"/>
<smd name="P$3" x="56.85" y="-0.75" dx="8" dy="1" layer="1"/>
<smd name="P$4" x="34.9" y="-22.15" dx="49" dy="28" layer="1"/>
<wire x1="0.35" y1="-2.3" x2="0.35" y2="-42" width="0.127" layer="51"/>
<wire x1="0.35" y1="-42" x2="69.45" y2="-42" width="0.127" layer="51"/>
<wire x1="69.45" y1="-42" x2="69.45" y2="-2.3" width="0.127" layer="51"/>
<wire x1="69.45" y1="-2.3" x2="0.35" y2="-2.3" width="0.127" layer="51"/>
<text x="20.32" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="43.18" y="1.27" size="1.27" layer="27">&gt;VALUE</text>
<text x="17.78" y="-1.27" size="1.27" layer="51">-</text>
<text x="40.64" y="-1.27" size="1.27" layer="51">-</text>
<text x="62.23" y="-1.27" size="1.27" layer="51">-</text>
<text x="34.29" y="-6.35" size="1.27" layer="51">+</text>
</package>
</packages>
<symbols>
<symbol name="SOLARPANEL">
<description>Basic Solar Panel Symbol</description>
<circle x="0" y="0" radius="1.4142125" width="0.254" layer="94"/>
<wire x1="-1" y1="0.25" x2="0" y2="0.25" width="0.254" layer="94"/>
<wire x1="0" y1="0.25" x2="1" y2="0.25" width="0.254" layer="94"/>
<wire x1="-0.5" y1="-0.25" x2="0" y2="-0.25" width="0.254" layer="94"/>
<wire x1="0" y1="-0.25" x2="0.5" y2="-0.25" width="0.254" layer="94"/>
<wire x1="0" y1="-0.25" x2="0" y2="-1.25" width="0.254" layer="94"/>
<wire x1="0" y1="0.25" x2="0" y2="1.25" width="0.254" layer="94"/>
<wire x1="0.6" y1="1.7" x2="1.6" y2="2.7" width="0.254" layer="94"/>
<wire x1="1.1" y1="1.7" x2="0.6" y2="1.7" width="0.254" layer="94"/>
<wire x1="0.6" y1="1.7" x2="0.6" y2="2.2" width="0.254" layer="94"/>
<wire x1="1.4" y1="1.1" x2="2.4" y2="2.1" width="0.254" layer="94"/>
<wire x1="1.4" y1="1.1" x2="1.4" y2="1.6" width="0.254" layer="94"/>
<wire x1="1.9" y1="1.1" x2="1.4" y2="1.1" width="0.254" layer="94"/>
<pin name="+" x="0" y="3.46" length="short" direction="pwr" rot="R270"/>
<pin name="-" x="0" y="-3.46" length="short" direction="pwr" rot="R90"/>
<text x="-2" y="2" size="1.27" layer="97">+</text>
<text x="-2" y="-3" size="1.27" layer="97">-</text>
<text x="2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="XJTPRIME">
<description>https://www.spectrolab.com/photovoltaics/XTJ-Prime_Data_Sheet.pdf</description>
<gates>
<gate name="G$1" symbol="SOLARPANEL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XJTPRIME">
<connects>
<connect gate="G$1" pin="+" pad="P$4"/>
<connect gate="G$1" pin="-" pad="P$1 P$2 P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="Solar" deviceset="XJTPRIME" device=""/>
<part name="U$2" library="Solar" deviceset="XJTPRIME" device=""/>
<part name="U$3" library="Solar" deviceset="XJTPRIME" device=""/>
<part name="U$4" library="Solar" deviceset="XJTPRIME" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="38.1" y="60.96" smashed="yes">
<attribute name="NAME" x="40.64" y="63.5" size="1.778" layer="95"/>
<attribute name="VALUE" x="40.64" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="U$2" gate="G$1" x="60.96" y="60.96" smashed="yes">
<attribute name="NAME" x="63.5" y="63.5" size="1.778" layer="95"/>
<attribute name="VALUE" x="63.5" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="U$3" gate="G$1" x="83.82" y="60.96" smashed="yes">
<attribute name="NAME" x="86.36" y="63.5" size="1.778" layer="95"/>
<attribute name="VALUE" x="86.36" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="U$4" gate="G$1" x="101.6" y="60.96" smashed="yes">
<attribute name="NAME" x="104.14" y="63.5" size="1.778" layer="95"/>
<attribute name="VALUE" x="104.14" y="58.42" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="+" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="+"/>
<pinref part="U$2" gate="G$1" pin="+"/>
<wire x1="38.1" y1="64.42" x2="60.96" y2="64.42" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="+"/>
<wire x1="60.96" y1="64.42" x2="71.33" y2="64.42" width="0.1524" layer="91"/>
<junction x="60.96" y="64.42"/>
<pinref part="U$4" gate="G$1" pin="+"/>
<wire x1="71.33" y1="64.42" x2="83.82" y2="64.42" width="0.1524" layer="91"/>
<wire x1="83.82" y1="64.42" x2="101.6" y2="64.42" width="0.1524" layer="91"/>
<junction x="83.82" y="64.42"/>
<wire x1="71.33" y1="64.42" x2="71.33" y2="69.57" width="0.1524" layer="91"/>
<junction x="71.33" y="64.42"/>
<label x="71.3" y="69.5" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="-" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="-"/>
<pinref part="U$2" gate="G$1" pin="-"/>
<wire x1="38.1" y1="57.5" x2="60.96" y2="57.5" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="-"/>
<junction x="60.96" y="57.5"/>
<pinref part="U$4" gate="G$1" pin="-"/>
<wire x1="60.96" y1="57.5" x2="71.5" y2="57.5" width="0.1524" layer="91"/>
<wire x1="71.5" y1="57.5" x2="83.82" y2="57.5" width="0.1524" layer="91"/>
<wire x1="83.82" y1="57.5" x2="101.6" y2="57.5" width="0.1524" layer="91"/>
<junction x="83.82" y="57.5"/>
<wire x1="71.5" y1="57.5" x2="71.5" y2="52" width="0.1524" layer="91"/>
<junction x="71.5" y="57.5"/>
<label x="71.5" y="52" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
