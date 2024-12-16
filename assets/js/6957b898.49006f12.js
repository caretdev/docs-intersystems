"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[32593],{14593:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>l,default:()=>o,frontMatter:()=>a,toc:()=>i});var n=t(74848),r=t(28453);const a={pagination_prev:null,pagination_next:null},l="%ZEN.Report.callelement",i=[{value:"Properties",id:"properties",level:2},{value:"method",id:"method",level:3},{value:"escape",id:"escape",level:3},{value:"filter",id:"filter",level:3},{value:"field",id:"field",level:3},{value:"fields",id:"fields",level:3},{value:"expression",id:"expression",level:3},{value:"hasStatus",id:"hasstatus",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"zenreportcallelement",children:"%ZEN.Report.callelement"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.callelement Extends reportNode [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"method",children:"method"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property method As %ZEN.Datatype.string;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Name of method that returns an XML stream to include"}),"\n",(0,n.jsx)(s.h3,{id:"escape",children:"escape"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property escape As %ZEN.Datatype.string(VALUELIST = ",xml,none,noneifspace,passthru") [ InitialExpression = "xml" ];\n'})}),"\n",(0,n.jsx)(s.p,{children:"escape can be nonspace in which case any text with line-feed or space characters is not XML spaced or none in which case no characters are XML spaced but all are enclosed in CDATA or xml in which case the text is XML escaped"}),"\n",(0,n.jsx)(s.h3,{id:"filter",children:"filter"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property filter As %ZEN.Datatype.integer;\n"})}),"\n",(0,n.jsx)(s.p,{children:"When filter is 0, call is skipped"}),"\n",(0,n.jsx)(s.h3,{id:"field",children:"field"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property field As %ZEN.Datatype.classMember(MEMBERTYPE = "SQLCOLUMN");\n'})}),"\n",(0,n.jsx)(s.p,{children:'Name of field (column) in the base query for this report that will supply the value for this item. If this starts with "!" then this is expression that evaluates to field name'}),"\n",(0,n.jsx)(s.h3,{id:"fields",children:"fields"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property fields As %ZEN.Datatype.classMember(MEMBERTYPE = "SQLCOLUMN");\n'})}),"\n",(0,n.jsx)(s.p,{children:"Name of fields (columns) in the base query for this report that will supply the values for this item."}),"\n",(0,n.jsx)(s.h3,{id:"expression",children:"expression"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property expression As %ZEN.Datatype.expression;\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Optional ObjectScript expression that can either be applied to the value of this item (supplied as %val), or to provide an arbitrary value for this item.",(0,n.jsx)(s.br,{}),"\nFor example:",(0,n.jsx)(s.br,{}),'\nexpression="%val*2"',(0,n.jsx)(s.br,{}),'\nexpression="..ReportProp"']}),"\n",(0,n.jsx)(s.h3,{id:"hasstatus",children:"hasStatus"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property hasStatus As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"return status by reference in last parameter to method"})]})}function o(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>l,x:()=>i});var n=t(96540);const r={},a=n.createContext(r);function l(e){const s=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),n.createElement(a.Provider,{value:s},e.children)}}}]);