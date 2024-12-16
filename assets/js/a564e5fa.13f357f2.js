"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[89902],{6584:(e,n,l)=>{l.r(n),l.d(n,{contentTitle:()=>r,default:()=>o,frontMatter:()=>i,toc:()=>a});var t=l(74848),s=l(28453);const i={pagination_prev:null,pagination_next:null},r="%ZEN.Component.link",a=[{value:"Properties",id:"properties",level:2},{value:"caption",id:"caption",level:3},{value:"title",id:"title",level:3},{value:"href",id:"href",level:3},{value:"style",id:"style",level:3},{value:"target",id:"target",level:3},{value:"disabled",id:"disabled",level:3},{value:"onclick",id:"onclick",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style-1",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawHTML",id:"drawhtml",level:3},{value:"onClickHandler",id:"onclickhandler",level:3},{value:"setProperty",id:"setproperty",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,s.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"zencomponentlink",children:"%ZEN.Component.link"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %ZEN.Component.link Extends component [ Deprecated, System = 3 ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["link component.",(0,t.jsx)(n.br,{}),"\nThis component places a link (HTML anchor element) within a ZEN page."]}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"caption",children:"caption"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property caption As %ZEN.Datatype.caption(ZENEXPRESSION = 1);\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Text to display for the link.",(0,t.jsx)(n.br,{}),"\nThis value is interpreted as text, not HTML."]}),"\n",(0,t.jsx)(n.h3,{id:"title",children:"title"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property title As %ZEN.Datatype.caption(ZENEXPRESSION = 1);\n"})}),"\n",(0,t.jsx)(n.p,{children:"Optional title (tooltip) to display for the link."}),"\n",(0,t.jsx)(n.h3,{id:"href",children:"href"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property href As %ZEN.Datatype.uri(ZENEXPRESSION = 1);\n"})}),"\n",(0,t.jsx)(n.p,{children:"HREF (URL) to use for the link."}),"\n",(0,t.jsx)(n.h3,{id:"style",children:"style"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property style As %ZEN.Datatype.style;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Optional CSS style expression to apply to this link."}),"\n",(0,t.jsx)(n.h3,{id:"target",children:"target"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property target As %ZEN.Datatype.string;\n"})}),"\n",(0,t.jsxs)(n.p,{children:["The HTML target value applied to the link.",(0,t.jsx)(n.br,{}),"\nThis controls where the new document will be displayed when the user clicks on a link. Typically this is the name of a frame.",(0,t.jsx)(n.br,{}),"\nHTML also defines for special values for target:"]}),"\n",(0,t.jsxs)(n.ul,{children:["\n",(0,t.jsx)(n.li,{children:'"_blank" - open the link in a new window.'}),"\n",(0,t.jsx)(n.li,{children:'"_parent" - open the link in our parent window.'}),"\n",(0,t.jsx)(n.li,{children:'"_self" - open the link in current window.'}),"\n",(0,t.jsx)(n.li,{children:'"_top" - open the link in topmost window.'}),"\n"]}),"\n",(0,t.jsx)(n.h3,{id:"disabled",children:"disabled"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property disabled As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsxs)(n.p,{children:["If true, this link is disabled.",(0,t.jsx)(n.br,{}),"\nA disabled link is redisplayed without an anchor tag to ensure that it is truly disabled."]}),"\n",(0,t.jsx)(n.h3,{id:"onclick",children:"onclick"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property onclick As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,t.jsx)(n.p,{children:"onclick event handler: This event is fired when the mouse is clicked on the link."}),"\n",(0,t.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(n.h3,{id:"style-1",children:"Style"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,t.jsx)(n.p,{children:"defines style sheet used by this component"}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %DrawHTML()\n"})}),"\n",(0,t.jsx)(n.h3,{id:"onclickhandler",children:"onClickHandler"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onClickHandler() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Internal method: Handle user click on the link element."}),"\n",(0,t.jsx)(n.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Set the value of a named property."})]})}function o(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,n,l)=>{l.d(n,{R:()=>r,x:()=>a});var t=l(96540);const s={},i=t.createContext(s);function r(e){const n=t.useContext(i);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:r(e.components),t.createElement(i.Provider,{value:n},e.children)}}}]);