"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[40914],{45181:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>c,default:()=>l,frontMatter:()=>r,toc:()=>a});var s=t(74848),o=t(28453);const r={pagination_prev:null,pagination_next:null},c="%ZEN.Component.html",a=[{value:"Parameters",id:"parameters",level:2},{value:"SYSMODULE",id:"sysmodule",level:3},{value:"Properties",id:"properties",level:2},{value:"content",id:"content",level:3},{value:"seed",id:"seed",level:3},{value:"OnDrawContent",id:"ondrawcontent",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawHTML",id:"drawhtml",level:3},{value:"%DrawContent",id:"drawcontent",level:3},{value:"getContent",id:"getcontent",level:3},{value:"setContent",id:"setcontent",level:3},{value:"setProperty",id:"setproperty",level:3}];function i(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,o.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"zencomponenthtml",children:"%ZEN.Component.html"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %ZEN.Component.html Extends component [ Deprecated, System = 3 ]\n"})}),"\n",(0,s.jsxs)(n.p,{children:["HTML component.",(0,s.jsx)(n.br,{}),"\nThis component lets you inject HTML content within a ZEN page.",(0,s.jsx)(n.br,{}),"\nNote that the content of this component is HTML and cannot include ZEN components.",(0,s.jsx)(n.br,{}),'\nThe original content of this component can contain server-side property expressions. These are placed within #( )#. On the client, you can change the contents of the component by setting its "content" property: ',(0,s.jsx)(n.code,{children:"html.setProperty('content','Some new content');"})]}),"\n",(0,s.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(n.h3,{id:"sysmodule",children:"SYSMODULE"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter SYSMODULE = "core";\n'})}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"content",children:"content"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property content As %ZEN.Datatype.html(CONTENT = "MIXED", ESCAPE = "HTML", XMLPROJECTION = "content", ZENEXPRESSION = 1);\n'})}),"\n",(0,s.jsx)(n.p,{children:"HTML content to display. This may contain simple expressions."}),"\n",(0,s.jsx)(n.h3,{id:"seed",children:"seed"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property seed As %ZEN.Datatype.string(ZENEXPRESSION = 1);\n"})}),"\n",(0,s.jsx)(n.p,{children:"Optional. User-defined seed value. This is an optional parameter that is passed on to the OnDrawContent callback method."}),"\n",(0,s.jsx)(n.h3,{id:"ondrawcontent",children:"OnDrawContent"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property OnDrawContent As %ZEN.Datatype.delegator(FORMALSPEC = "seed:%ZEN.Datatype.string", RETURNTYPE = "%Status");\n'})}),"\n",(0,s.jsxs)(n.p,{children:["Optional. Name of Server-side callback method that provides HTML content for this component.",(0,s.jsx)(n.br,{}),"\nIf defined, this callback is invoked on the server when this component is drawn. It provides HTML content by using &html or by using the WRITE command.",(0,s.jsx)(n.br,{}),"\nThis must be the name of a server-only method in the page class that contains this view component."]}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %DrawHTML()\n"})}),"\n",(0,s.jsx)(n.h3,{id:"drawcontent",children:"%DrawContent"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %DrawContent() As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Invoke user method to provide contents for this HTML component."}),"\n",(0,s.jsx)(n.h3,{id:"getcontent",children:"getContent"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getContent(content) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Convenient method for getting the content of this component. This is equivalent to calling getProperty('content')."}),"\n",(0,s.jsx)(n.h3,{id:"setcontent",children:"setContent"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setContent(content) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Convenient method for setting the content of this component. This is equivalent to calling setProperty('content',content)."}),"\n",(0,s.jsx)(n.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Set the value of a named property."})]})}function l(e={}){const{wrapper:n}={...(0,o.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(i,{...e})}):i(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>c,x:()=>a});var s=t(96540);const o={},r=s.createContext(o);function c(e){const n=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(o):e.components||o:c(e.components),s.createElement(r.Provider,{value:n},e.children)}}}]);