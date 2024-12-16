"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[37441],{76174:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>l,default:()=>o,frontMatter:()=>a,toc:()=>c});var t=n(74848),i=n(28453);const a={pagination_prev:null,pagination_next:null},l="%ZEN.Mobile.RSS.API",c=[{value:"Methods",id:"methods",level:2},{value:"%CreateApplication",id:"createapplication",level:3},{value:"%TestFeed",id:"testfeed",level:3},{value:"%DeleteApplication",id:"deleteapplication",level:3},{value:"%ExistsApplication",id:"existsapplication",level:3},{value:"%ListApplications",id:"listapplications",level:3},{value:"%OpenApplication",id:"openapplication",level:3},{value:"%Exercise",id:"exercise",level:3}];function p(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"zenmobilerssapi",children:"%ZEN.Mobile.RSS.API"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Mobile.RSS.API Extends %RegisteredObject [ Deprecated, System = 3 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This class provides the API for the RSS implementation"}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"createapplication",children:"%CreateApplication"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %CreateApplication(pName As %String, pDescription As %String, Output pApplication As Application) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Create an application, at minimum a name and description must be supplied"}),"\n",(0,t.jsx)(s.h3,{id:"testfeed",children:"%TestFeed"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %TestFeed(pURL As %String, Output pStatus As %Status, pTimeout As %Integer = -1, pHttpRequest As %Net.HttpRequest = "") As %Boolean\n'})}),"\n",(0,t.jsx)(s.p,{children:"Test a Feed, URL must be supplied. Optionally supplied a preconfigured HttpRequest. Returns True if an Accessible Feed, Otherwise false. If false examine pStatus for an an explanation of why the feed is not accessible ( if you care )"}),"\n",(0,t.jsx)(s.h3,{id:"deleteapplication",children:"%DeleteApplication"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %DeleteApplication(pName As %String) As %Status [ CodeMode = expression ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Delete a named application"}),"\n",(0,t.jsx)(s.h3,{id:"existsapplication",children:"%ExistsApplication"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %ExistsApplication(pName As %String) As %Boolean [ CodeMode = expression ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Test for existence of a named application"}),"\n",(0,t.jsx)(s.h3,{id:"listapplications",children:"%ListApplications"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %ListApplications(Output pNames As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns a list of defined applications"}),"\n",(0,t.jsx)(s.h3,{id:"openapplication",children:"%OpenApplication"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %OpenApplication(pName As %String, Output pObject As Application) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Open a named application"}),"\n",(0,t.jsx)(s.h3,{id:"exercise",children:"%Exercise"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %Exercise(pFeedURL As %String = "feed://www.npr.org/rss/rss.php?id=1001")\n'})}),"\n",(0,t.jsx)(s.p,{children:"Exercise the API"})]})}function o(e={}){const{wrapper:s}={...(0,i.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(p,{...e})}):p(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>l,x:()=>c});var t=n(96540);const i={},a=t.createContext(i);function l(e){const s=t.useContext(a);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:l(e.components),t.createElement(a.Provider,{value:s},e.children)}}}]);