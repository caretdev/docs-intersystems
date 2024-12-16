"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[5402],{57457:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>r,default:()=>o,frontMatter:()=>i,toc:()=>l});var s=n(74848),a=n(28453);const i={pagination_prev:null,pagination_next:null},r="%DeepSee.extensions.BlackBox",l=[{value:"Parameters",id:"parameters",level:2},{value:"MainSubscript",id:"mainsubscript",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnAfterSave",id:"onaftersave",level:3},{value:"%OnAfterDelete",id:"onafterdelete",level:3},{value:"%OnOpen1",id:"onopen1",level:3},{value:"GetDataLocation",id:"getdatalocation",level:3},{value:"GetClassDef",id:"getclassdef",level:3}];function c(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"deepseeextensionsblackbox",children:"%DeepSee.extensions.BlackBox"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DeepSee.extensions.BlackBox [ Abstract, System = 4 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This class implements storage for various transformation objects. Such objects use precalculated data to perform transformation. The data is multidimensional and thus can not be stored in usual way."}),"\n",(0,s.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(t.h3,{id:"mainsubscript",children:"MainSubscript"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter MainSubscript = "md";\n'})}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"onaftersave",children:"%OnAfterSave"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnAfterSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This callback method is invoked by the %Save method to provide notification that the object is being saved. It is called after the object's data has been successfully written to disk."}),"\n",(0,s.jsx)(t.p,{children:"insert will be set to 1 if this object is being saved for the first time."}),"\n",(0,s.jsx)(t.p,{children:"If this method returns an error then the call to %Save will fail."}),"\n",(0,s.jsx)(t.h3,{id:"onafterdelete",children:"%OnAfterDelete"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %OnAfterDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This callback method is invoked by the %Delete method to provide notification that the object specified by oid has been deleted. The callback occurs immediately after %DeleteData has been called. If %DeleteData returns an error then %OnAfterDelete is not called."}),"\n",(0,s.jsx)(t.p,{children:"If %OnAfterDelete returns an error (%Status) then the transaction is rolled back."}),"\n",(0,s.jsx)(t.h3,{id:"onopen1",children:"%OnOpen1"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnOpen1() As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This callback method is invoked by the %Open method to provide notification that the object specified by oid is being opened."}),"\n",(0,s.jsx)(t.p,{children:"If this method returns an error then the object will not be opened."}),"\n",(0,s.jsx)(t.h3,{id:"getdatalocation",children:"GetDataLocation"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetDataLocation(cDef As %Dictionary.CompiledClass, Output dataName) As %Status\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getclassdef",children:"GetClassDef"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetClassDef(Output sc As %Status) As %String\n"})})]})}function o(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>r,x:()=>l});var s=n(96540);const a={},i=s.createContext(a);function r(e){const t=s.useContext(i);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),s.createElement(i.Provider,{value:t},e.children)}}}]);