"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[66415],{22220:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>l,default:()=>d,frontMatter:()=>a,toc:()=>i});var n=r(74848),t=r(28453);const a={pagination_prev:null,pagination_next:null},l="%DeepSee.UserPortal.Data.User",i=[{value:"Properties",id:"properties",level:2},{value:"userId",id:"userid",level:3},{value:"fullName",id:"fullname",level:3},{value:"email",id:"email",level:3},{value:"alertsEnabled",id:"alertsenabled",level:3}];function c(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"deepseeuserportaldatauser",children:"%DeepSee.UserPortal.Data.User"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.UserPortal.Data.User Extends (%Persistent, %XML.Adaptor) [ SqlTableName = UserName, System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Each instance of this class represents a user within the DeepSee User Portal. Each DeepSee user is assumed be a valid system user. This table is used to track additional information about the user within the current namespace."}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"userid",children:"userId"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property userId As %String(MAXLEN = 200, XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:"User ID ($UserName value)."}),"\n",(0,n.jsx)(s.h3,{id:"fullname",children:"fullName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property fullName As %String(MAXLEN = 128);\n"})}),"\n",(0,n.jsx)(s.p,{children:"Full name of the user."}),"\n",(0,n.jsx)(s.h3,{id:"email",children:"email"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property email As %String(MAXLEN = 500, XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:"User's email address, if any."}),"\n",(0,n.jsx)(s.h3,{id:"alertsenabled",children:"alertsEnabled"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property alertsEnabled As %Boolean(XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:"If true, alerts are enabled for this user-- other users can send alerts to this user."})]})}function d(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>l,x:()=>i});var n=r(96540);const t={},a=n.createContext(t);function l(e){const s=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:l(e.components),n.createElement(a.Provider,{value:s},e.children)}}}]);