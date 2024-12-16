"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[24205],{21643:(e,n,a)=>{a.r(n),a.d(n,{contentTitle:()=>i,default:()=>c,frontMatter:()=>t,toc:()=>o});var l=a(74848),s=a(28453);const t={pagination_prev:null,pagination_next:null},i="%ZEN.Component.menu",o=[{value:"Parameters",id:"parameters",level:2},{value:"DEFAULTLAYOUT",id:"defaultlayout",level:3},{value:"DEFAULTGROUPCLASS",id:"defaultgroupclass",level:3},{value:"Properties",id:"properties",level:2},{value:"onactivate",id:"onactivate",level:3},{value:"onshowHelp",id:"onshowhelp",level:3},{value:"subMenuActive",id:"submenuactive",level:3},{value:"subMenuLevel",id:"submenulevel",level:3},{value:"layout",id:"layout",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawHTML",id:"drawhtml",level:3},{value:"showSubMenu",id:"showsubmenu",level:3},{value:"onStartModalHandler",id:"onstartmodalhandler",level:3},{value:"onEndModalHandler",id:"onendmodalhandler",level:3},{value:"onActionHandler",id:"onactionhandler",level:3},{value:"onItemActionHandler",id:"onitemactionhandler",level:3},{value:"onShowHelpHandler",id:"onshowhelphandler",level:3},{value:"onItemShowHelpHandler",id:"onitemshowhelphandler",level:3}];function r(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(n.header,{children:(0,l.jsx)(n.h1,{id:"zencomponentmenu",children:"%ZEN.Component.menu"})}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Class %ZEN.Component.menu Extends (group, menuCell) [ Deprecated, Inheritance = right, System = 3 ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Specialized group for defining menus."}),"\n",(0,l.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(n.h3,{id:"defaultlayout",children:"DEFAULTLAYOUT"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter DEFAULTLAYOUT = "horizontal";\n'})}),"\n",(0,l.jsx)(n.h3,{id:"defaultgroupclass",children:"DEFAULTGROUPCLASS"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter DEFAULTGROUPCLASS = "menuTable";\n'})}),"\n",(0,l.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(n.h3,{id:"onactivate",children:"onactivate"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property onactivate As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,l.jsx)(n.p,{children:"onactivate event handler: If this menu is a submenu, then this event is fired just before the submenu is made visible."}),"\n",(0,l.jsx)(n.h3,{id:"onshowhelp",children:"onshowHelp"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property onshowHelp As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,l.jsx)(n.p,{children:"onshowHelp event handler: This event is fired when the user moves the mouse over this menu item."}),"\n",(0,l.jsx)(n.h3,{id:"submenuactive",children:"subMenuActive"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property subMenuActive As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,l.jsx)(n.p,{children:"Internal property used to keep track of state on client"}),"\n",(0,l.jsx)(n.h3,{id:"submenulevel",children:"subMenuLevel"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Property subMenuLevel As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0 ];\n'})}),"\n",(0,l.jsx)(n.p,{children:"Internal property used to indicate if this is a submenu and, if so, how many level deep."}),"\n",(0,l.jsx)(n.h3,{id:"layout",children:"layout"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property layout As %ZEN.Datatype.string(MAXLEN = 250, ZENENCRYPT = 0) [ InitialExpression = {..#DEFAULTLAYOUT} ];\n"})}),"\n",(0,l.jsx)(n.p,{children:'Specifies how components within this group should be layed out. (VALUELIST = ",vertical,horizontal")'}),"\n",(0,l.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,l.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,l.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(n.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %DrawHTML()\n"})}),"\n",(0,l.jsx)(n.h3,{id:"showsubmenu",children:"showSubMenu"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod showSubMenu() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Display the submenu."}),"\n",(0,l.jsx)(n.h3,{id:"onstartmodalhandler",children:"onStartModalHandler"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onStartModalHandler(zindex) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Notification that this component is about to become modal."}),"\n",(0,l.jsx)(n.h3,{id:"onendmodalhandler",children:"onEndModalHandler"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onEndModalHandler(zindex) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Notification that this component is about to stop being modal."}),"\n",(0,l.jsx)(n.h3,{id:"onactionhandler",children:"onActionHandler"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onActionHandler() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"This callback is invoked just before this menu (acting as a menuItem) fires its action."}),"\n",(0,l.jsx)(n.h3,{id:"onitemactionhandler",children:"onItemActionHandler"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onItemActionHandler(depth) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"This callback is invoked just after a menuItem within this menu fires its action. depth indicated how many submenu levels down this event originated. If 1, then it came from *this* menu."}),"\n",(0,l.jsx)(n.h3,{id:"onshowhelphandler",children:"onShowHelpHandler"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onShowHelpHandler(mode) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"This callback is invoked when the mouse moves over (true) or out of (false) this menu item."}),"\n",(0,l.jsx)(n.h3,{id:"onitemshowhelphandler",children:"onItemShowHelpHandler"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onItemShowHelpHandler(mode, item) [ Language = javascript ]\n"})})]})}function c(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,l.jsx)(n,{...e,children:(0,l.jsx)(r,{...e})}):r(e)}},28453:(e,n,a)=>{a.d(n,{R:()=>i,x:()=>o});var l=a(96540);const s={},t=l.createContext(s);function i(e){const n=l.useContext(t);return l.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function o(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),l.createElement(t.Provider,{value:n},e.children)}}}]);