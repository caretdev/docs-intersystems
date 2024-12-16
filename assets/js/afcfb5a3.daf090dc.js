"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[52266],{18186:(e,s,i)=>{i.r(s),i.d(s,{contentTitle:()=>l,default:()=>c,frontMatter:()=>r,toc:()=>d});var n=i(74848),t=i(28453);const r={pagination_prev:null,pagination_next:null},l="%DeepSee.Model.listingField",d=[{value:"Properties",id:"properties",level:2},{value:"cube",id:"cube",level:3},{value:"fieldExpression",id:"fieldexpression",level:3},{value:"resource",id:"resource",level:3},{value:"Methods",id:"methods",level:2},{value:"%Validate",id:"validate",level:3}];function o(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"deepseemodellistingfield",children:"%DeepSee.Model.listingField"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.Model.listingField Extends %DeepSee.Model.node [ System = 3 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Meta-data object that represents a listing field for a DeepSee cube. This provides a way for users to create a customized listing by selecting one or more listing fields."}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"cube",children:"cube"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Relationship cube As %DeepSee.Model.cube(XMLPROJECTION = "none") [ Cardinality = one, Inverse = listingFields ];\n'})}),"\n",(0,n.jsx)(s.p,{children:"Cube that this listing field belongs to."}),"\n",(0,n.jsx)(s.h3,{id:"fieldexpression",children:"fieldExpression"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property fieldExpression As %String(MAXLEN = 1000, XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:"This is the (SQL) expression that defines this listing field."}),"\n",(0,n.jsx)(s.h3,{id:"resource",children:"resource"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property resource As %String(MAXLEN = 255, XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Optional. The resource needed to view this listing field:",(0,n.jsx)(s.br,{}),"\nIf defined and the current user holds the USE privilege on this resource, then the user may view this listing field."]}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"validate",children:"%Validate"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %Validate() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Test if this listing field's definition is valid."})]})}function c(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,s,i)=>{i.d(s,{R:()=>l,x:()=>d});var n=i(96540);const t={},r=n.createContext(t);function l(e){const s=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function d(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:l(e.components),n.createElement(r.Provider,{value:s},e.children)}}}]);