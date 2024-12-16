"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[92728],{43989:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>o,default:()=>i,frontMatter:()=>r,toc:()=>a});var s=t(74848),c=t(28453);const r={pagination_prev:null,pagination_next:null},o="%SQL.StatementObject",a=[{value:"Properties",id:"properties",level:2},{value:"column",id:"column",level:3},{value:"columnName",id:"columnname",level:3},{value:"extentName",id:"extentname",level:3},{value:"exportCall",id:"exportcall",level:3}];function l(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,c.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"sqlstatementobject",children:"%SQL.StatementObject"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %SQL.StatementObject Extends %SerialObject [ System = 2 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"%SQL.StatementObject - a StatementObject instances is the metadata for the object attributes of a column whose type class is a persistent class. This metadata contains the referenced extent name and an expression for exporting the referenced object using an optimized interface."}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"column",children:"column"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property column As %Integer;\n"})}),"\n",(0,s.jsx)(n.p,{children:"column is the collection pointer of the column whose values reference objects in an extent."}),"\n",(0,s.jsx)(n.h3,{id:"columnname",children:"columnName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property columnName As %Library.String(MAXLEN = 255);\n"})}),"\n",(0,s.jsx)(n.p,{children:'columnName is the name of the column or property whose values reference objects in an extent. That means that this expression can be used to return an object reference: set objectRef = $classmethod(,"%OpenId",rs.%Get())'}),"\n",(0,s.jsx)(n.h3,{id:"extentname",children:"extentName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property extentName As %String(MAXLEN = 255);\n"})}),"\n",(0,s.jsxs)(n.p,{children:["extentName is the name of the extent in which the value of ",(0,s.jsx)(n.strong,{children:"columnNbr"})," is an instance. This is a class name but the object referenced can be an instance of a more specific subclass of extentName."]}),"\n",(0,s.jsx)(n.h3,{id:"exportcall",children:"exportCall"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property exportCall As %String(MAXLEN = "");\n'})}),"\n",(0,s.jsx)(n.p,{children:"exportCall is the tag^routine() expression that implements the object export for a given object ID. The following code will export an instance of extentName: set %rowid = rs.%Get(), %nolock = 0 do @"})]})}function i(e={}){const{wrapper:n}={...(0,c.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(l,{...e})}):l(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>o,x:()=>a});var s=t(96540);const c={},r=s.createContext(c);function o(e){const n=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(c):e.components||c:o(e.components),s.createElement(r.Provider,{value:n},e.children)}}}]);