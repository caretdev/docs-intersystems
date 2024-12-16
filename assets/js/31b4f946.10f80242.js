"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[91696],{95640:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>r,default:()=>d,frontMatter:()=>i,toc:()=>c});var n=t(74848),l=t(28453);const i={pagination_prev:null,pagination_next:null},r="%ZEN.Mobile.RSS.Feed",c=[{value:"Parameters",id:"parameters",level:2},{value:"DEFAULTGLOBAL",id:"defaultglobal",level:3},{value:"Properties",id:"properties",level:2},{value:"URL",id:"url",level:3},{value:"Title",id:"title",level:3},{value:"Link",id:"link",level:3},{value:"Description",id:"description",level:3},{value:"Tag",id:"tag",level:3},{value:"Application",id:"application",level:3},{value:"Items",id:"items",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"FeedChannelXSLT",id:"feedchannelxslt",level:3},{value:"FeedItemsXSLT",id:"feeditemsxslt",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"Refresh",id:"refresh",level:3},{value:"FetchFromURL",id:"fetchfromurl",level:3},{value:"FetchNetURL",id:"fetchneturl",level:3},{value:"ExtractItemsFromResults",id:"extractitemsfromresults",level:3},{value:"BuildItem",id:"builditem",level:3}];function a(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"zenmobilerssfeed",children:"%ZEN.Mobile.RSS.Feed"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %ZEN.Mobile.RSS.Feed Extends %Persistent [ Deprecated, System = 3 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This represents an RSS feed"}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"defaultglobal",children:"DEFAULTGLOBAL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DEFAULTGLOBAL = "^ZEN.Mobile.RSS.Feed";\n'})}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"url",children:"URL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property URL As %String(MAXLEN = "") [ Required ];\n'})}),"\n",(0,n.jsx)(s.p,{children:"This is the feed URL"}),"\n",(0,n.jsx)(s.h3,{id:"title",children:"Title"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property Title As %String(MAXLEN = "") [ Required ];\n'})}),"\n",(0,n.jsx)(s.p,{children:"This is the Title of the feed (derived from Channel/title)"}),"\n",(0,n.jsx)(s.h3,{id:"link",children:"Link"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property Link As %String(MAXLEN = "") [ Required ];\n'})}),"\n",(0,n.jsx)(s.p,{children:"This represents the URL at which the feed presents itself (derived from Channel/link)"}),"\n",(0,n.jsx)(s.h3,{id:"description",children:"Description"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property Description As %String(MAXLEN = "") [ Required ];\n'})}),"\n",(0,n.jsx)(s.p,{children:"This is a description of the contents of the feed"}),"\n",(0,n.jsx)(s.h3,{id:"tag",children:"Tag"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property Tag As %String(MAXLEN = "");\n'})}),"\n",(0,n.jsx)(s.p,{children:"This holds whatever data the user wishes to add to categorize this feed"}),"\n",(0,n.jsx)(s.h3,{id:"application",children:"Application"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Relationship Application As Application [ Cardinality = parent, Inverse = Feeds ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"This defines the relationship to the parent"}),"\n",(0,n.jsx)(s.h3,{id:"items",children:"Items"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Relationship Items As Item [ Cardinality = children, Inverse = Feed ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"This represents the collection of items which makes up the feed"}),"\n",(0,n.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(s.h3,{id:"feedchannelxslt",children:"FeedChannelXSLT"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"XData FeedChannelXSLT\n"})}),"\n",(0,n.jsx)(s.h3,{id:"feeditemsxslt",children:"FeedItemsXSLT"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"XData FeedItemsXSLT\n"})}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method %OnNew(pURL As %String, pTag As %String = "", pTimeout As %Integer = -1, pHttpRequest As %Net.HttpRequest = "") As %Status\n'})}),"\n",(0,n.jsx)(s.h3,{id:"refresh",children:"Refresh"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method Refresh(Output pItemsFiled As %Integer, pPurgeCurrent As %Boolean, pTimeout As %Integer = -1, pHttpRequest As %Net.HttpRequest = "") As %Status\n'})}),"\n",(0,n.jsx)(s.p,{children:"Call this method to refresh the items from the feed"}),"\n",(0,n.jsx)(s.h3,{id:"fetchfromurl",children:"FetchFromURL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FetchFromURL(pURL, Output pStream, pTimeout, pHttpRequest) As %Status [ Private ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Given a URL fetch the contents and present as a stream"}),"\n",(0,n.jsx)(s.h3,{id:"fetchneturl",children:"FetchNetURL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod FetchNetURL(pURL As %Status, Output pStream As %BinaryStream, pTimeout As %Integer = -1, pHttpRequest As %Net.HttpRequest = "") As %Status\n'})}),"\n",(0,n.jsx)(s.p,{children:"Fetch the contents of a net URL"}),"\n",(0,n.jsx)(s.h3,{id:"extractitemsfromresults",children:"ExtractItemsFromResults"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ExtractItemsFromResults(pResults As %ListOfObjects(CLASSNAME="%XML.XPATH.Result"), Output pItems) As %Status\n'})}),"\n",(0,n.jsx)(s.p,{children:"This method extracts the retrieve item objects from the XPATH results"}),"\n",(0,n.jsx)(s.h3,{id:"builditem",children:"BuildItem"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod BuildItem(ByRef pItem As %String) As %ZEN.Mobile.RSS.Item [ CodeMode = expression ]\n"})})]})}function d(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(a,{...e})}):a(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>r,x:()=>c});var n=t(96540);const l={},i=n.createContext(l);function r(e){const s=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:r(e.components),n.createElement(i.Provider,{value:s},e.children)}}}]);