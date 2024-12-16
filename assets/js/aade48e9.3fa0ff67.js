"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[73726],{81268:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>a,default:()=>l,frontMatter:()=>i,toc:()=>o});var n=s(74848),r=s(28453);const i={pagination_prev:null,pagination_next:null},a="%CSP.Util.AutoFormDynamic",o=[{value:"Methods",id:"methods",level:2},{value:"DrawHTMLTable",id:"drawhtmltable",level:3},{value:"DrawHTMLForm",id:"drawhtmlform",level:3},{value:"Submit",id:"submit",level:3},{value:"ProcessSubmit",id:"processsubmit",level:3}];function c(e){const t={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"csputilautoformdynamic",children:"%CSP.Util.AutoFormDynamic"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %CSP.Util.AutoFormDynamic Extends (%RegisteredObject, %CSP.Util.AutoForm) [ Inheritance = right, ServerOnly = 1, System = 4 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,n.jsxs)(t.p,{children:["This is a version of AutoForm that generates its dialog and forms ",(0,n.jsx)(t.em,{children:"dynamically"}),", that is, it calculates what properties to display at run-time using the meta-information for the provided object.",(0,n.jsx)(t.br,{}),"\nThis is not as efficient as the generated case, but is useful for some applications."]}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"drawhtmltable",children:"DrawHTMLTable"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DrawHTMLTable(pObj As %RegisteredObject, ByRef pID As %String) As %Status\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Draw an HTML table for an arbitary object.",(0,n.jsx)(t.br,{}),"\npObj is an instance of object that provides the definition and values for the table.",(0,n.jsx)(t.br,{}),"\nThis table is dynamic in that the table to display is calculated at runtime."]}),"\n",(0,n.jsx)(t.h3,{id:"drawhtmlform",children:"DrawHTMLForm"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod DrawHTMLForm(pObj As %RegisteredObject, ByRef pID As %String, pActionURL As %String = "", ByRef pButtons As FormButton, pTarget As %String = "") As %Status\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Draw an HTML form for this form object.",(0,n.jsx)(t.br,{}),"\npObj is an instance of the form object that provides the initial values for the form."]}),"\n",(0,n.jsx)(t.h3,{id:"submit",children:"Submit"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod Submit(pRequest As %CSP.Request, pSubmit As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.h3,{id:"processsubmit",children:"ProcessSubmit"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod ProcessSubmit(pRequest As %CSP.Request, ByRef pID As %String = "", Output pErrorMsg As %String, pPersistentOnly As %Boolean = 1) As AutoForm\n'})}),"\n",(0,n.jsx)(t.p,{children:"Takes submitted data for a form and returns an instance of AutoForm object"})]})}function l(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>a,x:()=>o});var n=s(96540);const r={},i=n.createContext(r);function a(e){const t=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),n.createElement(i.Provider,{value:t},e.children)}}}]);