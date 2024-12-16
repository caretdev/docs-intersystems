"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[59083],{19939:(e,n,i)=>{i.r(n),i.d(n,{contentTitle:()=>r,default:()=>o,frontMatter:()=>t,toc:()=>a});var l=i(74848),s=i(28453);const t={pagination_prev:null,pagination_next:null},r="%ZEN.Component.menuCell",a=[{value:"Properties",id:"properties",level:2},{value:"caption",id:"caption",level:3},{value:"link",id:"link",level:3},{value:"target",id:"target",level:3},{value:"image",id:"image",level:3},{value:"imageWidth",id:"imagewidth",level:3},{value:"imageHeight",id:"imageheight",level:3},{value:"disabled",id:"disabled",level:3},{value:"onclick",id:"onclick",level:3},{value:"help",id:"help",level:3},{value:"linkResource",id:"linkresource",level:3},{value:"secureLink",id:"securelink",level:3},{value:"secureCallback",id:"securecallback",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawMenuCell",id:"drawmenucell",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,s.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(n.header,{children:(0,l.jsx)(n.h1,{id:"zencomponentmenucell",children:"%ZEN.Component.menuCell"})}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Class %ZEN.Component.menuCell [ Abstract, Deprecated, System = 3 ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"This is an internal, abstract class that is used to provide some commonality between menu and menuItem."}),"\n",(0,l.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(n.h3,{id:"caption",children:"caption"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property caption As %ZEN.Datatype.caption;\n"})}),"\n",(0,l.jsx)(n.p,{children:"Value to display for menu item."}),"\n",(0,l.jsx)(n.h3,{id:"link",children:"link"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property link As %ZEN.Datatype.uri;\n"})}),"\n",(0,l.jsx)(n.p,{children:"URL to go to when menu item is chosen. This can contain a ZENEXPRESSION."}),"\n",(0,l.jsx)(n.h3,{id:"target",children:"target"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property target As %ZEN.Datatype.string;\n"})}),"\n",(0,l.jsxs)(n.p,{children:["The HTML target value applied to the link for this menu item.",(0,l.jsx)(n.br,{}),"\nThis controls where the new document will be displayed when the user clicks on a link. Typically this is the name of a frame.",(0,l.jsx)(n.br,{}),"\nHTML also defines for special values for target:"]}),"\n",(0,l.jsxs)(n.ul,{children:["\n",(0,l.jsx)(n.li,{children:'"_blank" - open the link in a new window.'}),"\n",(0,l.jsx)(n.li,{children:'"_parent" - open the link in our parent window.'}),"\n",(0,l.jsx)(n.li,{children:'"_self" - open the link in current window.'}),"\n",(0,l.jsx)(n.li,{children:'"_top" - open the link in topmost window.'}),"\n"]}),"\n",(0,l.jsx)(n.h3,{id:"image",children:"image"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property image As %ZEN.Datatype.uri;\n"})}),"\n",(0,l.jsx)(n.p,{children:"Optional uri of image to display for this menuItem."}),"\n",(0,l.jsx)(n.h3,{id:"imagewidth",children:"imageWidth"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property imageWidth As %ZEN.Datatype.length [ InitialExpression = 16 ];\n"})}),"\n",(0,l.jsx)(n.p,{children:"Width of image in pixels."}),"\n",(0,l.jsx)(n.h3,{id:"imageheight",children:"imageHeight"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property imageHeight As %ZEN.Datatype.length [ InitialExpression = 16 ];\n"})}),"\n",(0,l.jsx)(n.p,{children:"Height of image in pixels."}),"\n",(0,l.jsx)(n.h3,{id:"disabled",children:"disabled"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property disabled As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,l.jsx)(n.p,{children:"If true, this menuItem is disabled."}),"\n",(0,l.jsx)(n.h3,{id:"onclick",children:"onclick"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property onclick As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,l.jsxs)(n.p,{children:["onclick event handler: This event is fired when the mouse is clicked on the menuItem. Use this instead of link if you want to execute code when a menu is invoked.",(0,l.jsx)(n.br,{}),"\nIf defined, the link is ignored."]}),"\n",(0,l.jsx)(n.h3,{id:"help",children:"help"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property help As %ZEN.Datatype.caption;\n"})}),"\n",(0,l.jsx)(n.p,{children:"(Optional) Help message associated with this menu item."}),"\n",(0,l.jsx)(n.h3,{id:"linkresource",children:"linkResource"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property linkResource As %ZEN.Datatype.resource;\n"})}),"\n",(0,l.jsx)(n.p,{children:"(Optional) If specified, user must hold this resource or this item is disabled."}),"\n",(0,l.jsx)(n.h3,{id:"securelink",children:"secureLink"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property secureLink As %ZEN.Datatype.string [ Internal ];\n"})}),"\n",(0,l.jsx)(n.h3,{id:"securecallback",children:"secureCallback"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property secureCallback As %ZEN.Datatype.string [ Internal ];\n"})}),"\n",(0,l.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(n.h3,{id:"drawmenucell",children:"%DrawMenuCell"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %DrawMenuCell(pShowArrow As %Boolean = 0)\n"})}),"\n",(0,l.jsx)(n.p,{children:"Draw contents of menu cell"})]})}function o(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,l.jsx)(n,{...e,children:(0,l.jsx)(c,{...e})}):c(e)}},28453:(e,n,i)=>{i.d(n,{R:()=>r,x:()=>a});var l=i(96540);const s={},t=l.createContext(s);function r(e){const n=l.useContext(t);return l.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:r(e.components),l.createElement(t.Provider,{value:n},e.children)}}}]);