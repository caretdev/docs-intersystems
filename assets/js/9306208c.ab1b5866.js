"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[53640],{51695:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>c,toc:()=>a});var s=t(74848),r=t(28453);const c={pagination_prev:null,pagination_next:null},l="%ZEN.Component.objectBrowser",a=[{value:"Properties",id:"properties",level:2},{value:"sourcePage",id:"sourcepage",level:3},{value:"rootObjectId",id:"rootobjectid",level:3},{value:"onselect",id:"onselect",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawHTML",id:"drawhtml",level:3},{value:"update",id:"update",level:3},{value:"renderContents",id:"rendercontents",level:3},{value:"onCreate",id:"oncreate",level:3},{value:"getCurrObject",id:"getcurrobject",level:3},{value:"setCurrObject",id:"setcurrobject",level:3},{value:"renderBrowser",id:"renderbrowser",level:3},{value:"renderObject",id:"renderobject",level:3},{value:"selectObject",id:"selectobject",level:3}];function i(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"zencomponentobjectbrowser",children:"%ZEN.Component.objectBrowser"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %ZEN.Component.objectBrowser Extends component [ Deprecated, System = 3 ]\n"})}),"\n",(0,s.jsxs)(n.p,{children:["Displays the set of active components on a ZEN page within a simple tree.",(0,s.jsx)(n.br,{}),"\nThis is used by ZEN Tools."]}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"sourcepage",children:"sourcePage"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property sourcePage As %ZEN.Component.page;\n"})}),"\n",(0,s.jsx)(n.p,{children:"If defined, this is the page object containing the objects we are browsing."}),"\n",(0,s.jsx)(n.h3,{id:"rootobjectid",children:"rootObjectId"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property rootObjectId As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsx)(n.p,{children:"If defined, this is the id of top-most zen component to display within the object browser."}),"\n",(0,s.jsx)(n.h3,{id:"onselect",children:"onselect"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property onselect As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,s.jsx)(n.p,{children:"onselect event handler: This event is fired when the user selects a component in the browser."}),"\n",(0,s.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,s.jsx)(n.p,{children:"defines style sheet used by this component"}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %DrawHTML()\n"})}),"\n",(0,s.jsx)(n.h3,{id:"update",children:"update"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod update() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Update the values displayed within the browser."}),"\n",(0,s.jsx)(n.h3,{id:"rendercontents",children:"renderContents"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod renderContents() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"this client event is fired when the page is loaded."}),"\n",(0,s.jsx)(n.h3,{id:"oncreate",children:"onCreate"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onCreate() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Initialize additional client-side variables"}),"\n",(0,s.jsx)(n.h3,{id:"getcurrobject",children:"getCurrObject"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getCurrObject() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Return current object."}),"\n",(0,s.jsx)(n.h3,{id:"setcurrobject",children:"setCurrObject"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setCurrObject(obj) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Make given component the current browser selection."}),"\n",(0,s.jsx)(n.h3,{id:"renderbrowser",children:"renderBrowser"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod renderBrowser() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Redraw contents of browser to match current set of client objects"}),"\n",(0,s.jsx)(n.h3,{id:"renderobject",children:"renderObject"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod renderObject(obj, html, level) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get HTML for one object in client object tree."}),"\n",(0,s.jsx)(n.h3,{id:"selectobject",children:"selectObject"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod selectObject(index) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Select the given object within the object browser."})]})}function o(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(i,{...e})}):i(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>l,x:()=>a});var s=t(96540);const r={},c=s.createContext(r);function l(e){const n=s.useContext(c);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),s.createElement(c.Provider,{value:n},e.children)}}}]);