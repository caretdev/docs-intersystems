"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[64646],{32815:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>a,default:()=>o,frontMatter:()=>l,toc:()=>r});var i=n(74848),t=n(28453);const l={pagination_prev:null,pagination_next:null},a="%SYS.Maint.Bitmap",r=[{value:"Properties",id:"properties",level:2},{value:"StartTime",id:"starttime",level:3},{value:"StopTime",id:"stoptime",level:3},{value:"ElapseTime",id:"elapsetime",level:3},{value:"Namespace",id:"namespace",level:3},{value:"ClassName",id:"classname",level:3},{value:"IndexName",id:"indexname",level:3},{value:"NumberCompressed",id:"numbercompressed",level:3},{value:"Status",id:"status",level:3},{value:"Message",id:"message",level:3},{value:"OldSize",id:"oldsize",level:3},{value:"NewSize",id:"newsize",level:3},{value:"CompressionAmount",id:"compressionamount",level:3},{value:"Methods",id:"methods",level:2},{value:"Namespace",id:"namespace-1",level:3},{value:"OneClass",id:"oneclass",level:3},{value:"CompactMap",id:"compactmap",level:3},{value:"CompactGlobal",id:"compactglobal",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,t.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(s.header,{children:(0,i.jsx)(s.h1,{id:"sysmaintbitmap",children:"%SYS.Maint.Bitmap"})}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SYS.Maint.Bitmap Extends %Persistent [ Final, StorageStrategy = Default, System = 4 ]\n"})}),"\n",(0,i.jsx)(s.p,{children:"This utility is used to compact bitmap/bitslice indices. Over time in a volatile table (think lots of INSERTs and DELETEs) the storage for a bitmap index may become less efficient. To a lesser extent index value changes, i.e. UPDATES, can also degrade bitmap performance."}),"\n",(0,i.jsx)(s.p,{children:"This utility can by run on a live system. It will loop over all bitmap/bitslice indices in a class or namespace and compact them by either removing a chunk that is all zeros or by using $BITLOGIC() to compact the bits."}),"\n",(0,i.jsxs)(s.p,{children:["The Utility has 2 entry points: ",(0,i.jsx)(s.code,{children:'d ##class(%SYS.Maint.Bitmap).Namespace("Samples",1,1,"2014-01-17 09:00:00")'})," ",(0,i.jsx)(s.code,{children:'d ##class(%SYS.Maint.Bitmap).OneClass("BitMap.Test",1,1)'})]}),"\n",(0,i.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(s.h3,{id:"starttime",children:"StartTime"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property StartTime As %TimeStamp [ SqlColumnNumber = 4 ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"when the last Compact was started"}),"\n",(0,i.jsx)(s.h3,{id:"stoptime",children:"StopTime"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property StopTime As %TimeStamp [ SqlColumnNumber = 5 ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Passed in Timestamp for when the compact should stop, NULL for no stop time Set to the time the compaction finshed when done."}),"\n",(0,i.jsx)(s.h3,{id:"elapsetime",children:"ElapseTime"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'Property ElapseTime As %Integer [ SqlColumnNumber = 6, SqlComputeCode = {s {*}=$SYSTEM.SQL.DATEDIFF("ss",{StartTime},{StopTime})}, SqlComputed, Transient ];\n'})}),"\n",(0,i.jsx)(s.h3,{id:"namespace",children:"Namespace"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property Namespace As %String(MAXLEN = 500) [ SqlColumnNumber = 2 ];\n"})}),"\n",(0,i.jsx)(s.h3,{id:"classname",children:"ClassName"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property ClassName As %String(MAXLEN = 500) [ SqlColumnNumber = 11 ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Namspace that was compacted Last Class Compacted, if NULL then it finished all the classes."}),"\n",(0,i.jsx)(s.h3,{id:"indexname",children:"IndexName"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property IndexName As %String(MAXLEN = 500) [ SqlColumnNumber = 12 ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Last Index Compacted, if NULL then it finished all the indices."}),"\n",(0,i.jsx)(s.h3,{id:"numbercompressed",children:"NumberCompressed"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property NumberCompressed As %Integer [ InitialExpression = 0, SqlColumnNumber = 7 ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"count of how many indices were compacted"}),"\n",(0,i.jsx)(s.h3,{id:"status",children:"Status"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property Status As %String [ SqlColumnNumber = 3 ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"current status of the compaction Running - Compaction is underway Stopped - Compaction reached the Duration limit before finishing all Classes or encountered an error Finished - Compaction completed."}),"\n",(0,i.jsx)(s.h3,{id:"message",children:"Message"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property Message As array Of %String(MAXLEN = 30000) [ SqlColumnNumber = 13 ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Message contains error info and lists of global that were skipped because they where not in the local DB"}),"\n",(0,i.jsx)(s.h3,{id:"oldsize",children:"OldSize"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property OldSize As %Integer [ InitialExpression = 0, SqlColumnNumber = 9 ];\n"})}),"\n",(0,i.jsx)(s.h3,{id:"newsize",children:"NewSize"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property NewSize As %Integer [ InitialExpression = 0, SqlColumnNumber = 10 ];\n"})}),"\n",(0,i.jsx)(s.h3,{id:"compressionamount",children:"CompressionAmount"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'Property CompressionAmount As %String [ SqlColumnNumber = 8, SqlComputeCode = { s {*}=$s(+{OldSize}=0:0,1:$FN(1-({NewSize}/{OldSize})*100,"",2)_" %")}, SqlComputed, Transient ];\n'})}),"\n",(0,i.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(s.h3,{id:"namespace-1",children:"Namespace"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Namespace(ns As %String = "", NoJournal As %Boolean = 0, Display As %Boolean = 0, StopTime As %TimeStamp = "") As %Status [ PublicList = (ClassName, status), SqlProc ]\n'})}),"\n",(0,i.jsxs)(s.p,{children:["Entry point to compact all bitmaps in a namespace.",(0,i.jsx)(s.br,{}),"\nEach run records its' status in this class",(0,i.jsx)(s.br,{}),"\nIf the last run did not finish then it will pick up where it stopped",(0,i.jsx)(s.br,{}),"\nThis utility will only Compact globals in the default database"]}),"\n",(0,i.jsx)(s.p,{children:"Parameters:"}),"\n",(0,i.jsxs)(s.ul,{children:["\n",(0,i.jsx)(s.li,{children:"ns - Namespace you want to compact"}),"\n",(0,i.jsxs)(s.li,{children:["NoJournal - Stop journaling for this Process\n",(0,i.jsxs)(s.ul,{children:["\n",(0,i.jsx)(s.li,{children:"1 to Stop Journaling"}),"\n",(0,i.jsx)(s.li,{children:"0 to continue Journaling default = 0"}),"\n"]}),"\n"]}),"\n",(0,i.jsxs)(s.li,{children:["Display - write info to the current device\n",(0,i.jsxs)(s.ul,{children:["\n",(0,i.jsx)(s.li,{children:"1 to write to the device"}),"\n",(0,i.jsx)(s.li,{children:"0 to not write to the device default = 0"}),"\n"]}),"\n"]}),"\n",(0,i.jsxs)(s.li,{children:["StopTime - Timestamp for when the utility should stop.\n",(0,i.jsxs)(s.ul,{children:["\n",(0,i.jsx)(s.li,{children:"The stop time is tested after each index is finished so it could go over."}),"\n",(0,i.jsx)(s.li,{children:"A value of NULL means not limit"}),"\n"]}),"\n"]}),"\n"]}),"\n",(0,i.jsx)(s.h3,{id:"oneclass",children:"OneClass"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod OneClass(ClassName As %String, NoJournal As %Boolean = 0, Display As %Boolean = 0, StopTime As %TimeStamp = "", StatusObj As %RegisteredObject = "") As %Status [ PublicList = (ClassName, IndexName, StorageID, StorageType), SqlProc ]\n'})}),"\n",(0,i.jsxs)(s.p,{children:["Entry point to compact all bitmaps in one class.",(0,i.jsx)(s.br,{}),"\nEach run records its' status in this class",(0,i.jsx)(s.br,{}),"\nThis utility will only Compact globals in the default database"]}),"\n",(0,i.jsx)(s.p,{children:"Parameters:"}),"\n",(0,i.jsxs)(s.ul,{children:["\n",(0,i.jsx)(s.li,{children:"ClassName - Class you want to compact"}),"\n",(0,i.jsxs)(s.li,{children:["NoJournal - Stop journaling for this Process\n",(0,i.jsxs)(s.ul,{children:["\n",(0,i.jsx)(s.li,{children:"1 to Stop Journaling"}),"\n",(0,i.jsx)(s.li,{children:"0 to continue Journaling default = 0"}),"\n"]}),"\n"]}),"\n",(0,i.jsxs)(s.li,{children:["Display - write info to the current device\n",(0,i.jsxs)(s.ul,{children:["\n",(0,i.jsx)(s.li,{children:"1 to write to the device"}),"\n",(0,i.jsx)(s.li,{children:"0 to not write to the device default = 0"}),"\n"]}),"\n"]}),"\n",(0,i.jsxs)(s.li,{children:["StopTime - Timestamp for when the utility should stop. The stop time is tested after each index is finished so it could go over.\n",(0,i.jsxs)(s.ul,{children:["\n",(0,i.jsx)(s.li,{children:"a value of NULL means not limit"}),"\n"]}),"\n"]}),"\n",(0,i.jsxs)(s.li,{children:["StatusObj - This is either passed in from the Namespace Method or is defined in this method.\n",(0,i.jsxs)(s.ul,{children:["\n",(0,i.jsx)(s.li,{children:"This value should not be passed in if you are calling this method directly"}),"\n"]}),"\n"]}),"\n"]}),"\n",(0,i.jsx)(s.h3,{id:"compactmap",children:"CompactMap"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CompactMap(ClassName As %String, MapName As %String, Display As %Boolean, StatusObj As %RegisteredObject) As %Status [ Private ]\n"})}),"\n",(0,i.jsx)(s.h3,{id:"compactglobal",children:"CompactGlobal"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CompactGlobal(global As %String, vars As %Integer, current As %Integer, ByRef v As %String, Display As %Boolean = 0, StatusObj As %RegisteredObject) As %Status [ Private, PublicList = v ]\n"})}),"\n",(0,i.jsxs)(s.p,{children:["This method compacts any global bitmap",(0,i.jsx)(s.br,{}),"\nCalled from CompactMap or CompactMapSQL it takes 3 parameters"]}),"\n",(0,i.jsxs)(s.ul,{children:["\n",(0,i.jsx)(s.li,{children:'global - is the root for this index, for example ^Sample.PersonI("NameIndex")'}),"\n",(0,i.jsx)(s.li,{children:"vars - is the number of subscripts we need to $ORDER() over"}),"\n",(0,i.jsx)(s.li,{children:"current - is the subscript level we are presently on"}),"\n"]}),"\n",(0,i.jsx)(s.p,{children:"Once we get tot he final subscript level we execute the compat code."})]})}function o(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,i.jsx)(s,{...e,children:(0,i.jsx)(c,{...e})}):c(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>a,x:()=>r});var i=n(96540);const t={},l=i.createContext(t);function a(e){const s=i.useContext(l);return i.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),i.createElement(l.Provider,{value:s},e.children)}}}]);