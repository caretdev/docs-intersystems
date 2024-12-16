"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[13042],{70593:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>i,default:()=>o,frontMatter:()=>r,toc:()=>t});var l=s(74848),c=s(28453);const r={pagination_prev:null,pagination_next:null},i="%ZEN.Report.element",t=[{value:"Properties",id:"properties",level:2},{value:"escape",id:"escape",level:3},{value:"filter",id:"filter",level:3},{value:"isExcelNumber",id:"isexcelnumber",level:3},{value:"isExcelDate",id:"isexceldate",level:3},{value:"isExcelTime",id:"isexceltime",level:3},{value:"excelNumberFormat",id:"excelnumberformat",level:3},{value:"fieldType",id:"fieldtype",level:3},{value:"excelName",id:"excelname",level:3}];function a(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,c.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(n.header,{children:(0,l.jsx)(n.h1,{id:"zenreportelement",children:"%ZEN.Report.element"})}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.element Extends valueNode [ Deprecated, System = 3 ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Defines an XML element within a ZEN Report."}),"\n",(0,l.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(n.h3,{id:"escape",children:"escape"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Property escape As %ZEN.Datatype.string(VALUELIST = ",xml,none,noneifspace,passthru,html") [ InitialExpression = "xml" ];\n'})}),"\n",(0,l.jsx)(n.p,{children:"escape can be nonspace in which case any text with line-feed or space characters is not XML spaced or none in which case no characters are XML spaced but all are enclosed in CDATA or xml in which case the text is XML escaped"}),"\n",(0,l.jsx)(n.h3,{id:"filter",children:"filter"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property filter As %ZEN.Datatype.integer;\n"})}),"\n",(0,l.jsx)(n.p,{children:"When filter is 0, element is skipped"}),"\n",(0,l.jsx)(n.h3,{id:"isexcelnumber",children:"isExcelNumber"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property isExcelNumber As %ZEN.Datatype.boolean;\n"})}),"\n",(0,l.jsx)(n.p,{children:"True if Excel numeric field"}),"\n",(0,l.jsx)(n.h3,{id:"isexceldate",children:"isExcelDate"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property isExcelDate As %ZEN.Datatype.boolean;\n"})}),"\n",(0,l.jsx)(n.p,{children:"True if Excel date field"}),"\n",(0,l.jsx)(n.h3,{id:"isexceltime",children:"isExcelTime"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property isExcelTime As %ZEN.Datatype.boolean;\n"})}),"\n",(0,l.jsx)(n.p,{children:"True if Excel time field"}),"\n",(0,l.jsx)(n.h3,{id:"excelnumberformat",children:"excelNumberFormat"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property excelNumberFormat As %ZEN.Datatype.string;\n"})}),"\n",(0,l.jsx)(n.p,{children:'if non-null is display number format of element value, only effective when mode="xlsx"'}),"\n",(0,l.jsx)(n.h3,{id:"fieldtype",children:"fieldType"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Property fieldType As %ZEN.Datatype.string(VALUELIST = ",literal,stream") [ InitialExpression = "literal" ];\n'})}),"\n",(0,l.jsx)(n.h3,{id:"excelname",children:"excelName"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property excelName As %ZEN.Datatype.string;\n"})})]})}function o(e={}){const{wrapper:n}={...(0,c.R)(),...e.components};return n?(0,l.jsx)(n,{...e,children:(0,l.jsx)(a,{...e})}):a(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>i,x:()=>t});var l=s(96540);const c={},r=l.createContext(c);function i(e){const n=l.useContext(r);return l.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function t(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(c):e.components||c:i(e.components),l.createElement(r.Provider,{value:n},e.children)}}}]);