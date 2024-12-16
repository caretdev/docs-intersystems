"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[95034],{2170:(e,n,a)=>{a.r(n),a.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>r,toc:()=>i});var t=a(74848),s=a(28453);const r={pagination_prev:null,pagination_next:null},l="%ZEN.Component.tabGroup",i=[{value:"Properties",id:"properties",level:2},{value:"currTab",id:"currtab",level:3},{value:"showTabBar",id:"showtabbar",level:3},{value:"showBody",id:"showbody",level:3},{value:"remember",id:"remember",level:3},{value:"onshowTab",id:"onshowtab",level:3},{value:"onhideTab",id:"onhidetab",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"CSS3Style",id:"css3style",level:3},{value:"Style",id:"style",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawHTML",id:"drawhtml",level:3},{value:"%OnMutateChildren",id:"onmutatechildren",level:3},{value:"getCurrTabNo",id:"getcurrtabno",level:3},{value:"getTabCount",id:"gettabcount",level:3},{value:"getTabBodyElement",id:"gettabbodyelement",level:3},{value:"getTabBarElement",id:"gettabbarelement",level:3},{value:"setBodySize",id:"setbodysize",level:3},{value:"childrenMutated",id:"childrenmutated",level:3},{value:"getTabIndex",id:"gettabindex",level:3},{value:"%GetTab",id:"gettab",level:3},{value:"%SetCurrTab",id:"setcurrtab",level:3},{value:"showTab",id:"showtab",level:3},{value:"ieResizeBody",id:"ieresizebody",level:3},{value:"onRefreshContents",id:"onrefreshcontents",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"onshowTabHandler",id:"onshowtabhandler",level:3},{value:"tabDisabledHandler",id:"tabdisabledhandler",level:3},{value:"onhideTabHandler",id:"onhidetabhandler",level:3},{value:"showNextTab",id:"shownexttab",level:3},{value:"showPreviousTab",id:"showprevioustab",level:3},{value:"setProperty",id:"setproperty",level:3}];function d(e){const n={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"zencomponenttabgroup",children:"%ZEN.Component.tabGroup"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %ZEN.Component.tabGroup Extends group [ Deprecated, System = 3 ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["A specialized group used to enclose a set of overlayed ",(0,t.jsx)(n.em,{children:"tabs"}),". One tab is visible at a time. This group does not support standard layout as it simply overlays each of its children."]}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"currtab",children:"currTab"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property currTab As %ZEN.Datatype.integer(ZENEXPRESSION = 1) [ InitialExpression = 1 ];\n"})}),"\n",(0,t.jsx)(n.p,{children:"Number (1-based) of current tab displayed within tabGroup."}),"\n",(0,t.jsx)(n.h3,{id:"showtabbar",children:"showTabBar"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property showTabBar As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsx)(n.p,{children:"If true, display a set of tab buttons along the top of this group. The default is false."}),"\n",(0,t.jsx)(n.h3,{id:"showbody",children:"showBody"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property showBody As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,t.jsx)(n.p,{children:"If true (the default), render the div containing the tab's bodys. If false, the content will still be rendered, but not contained in a div."}),"\n",(0,t.jsx)(n.h3,{id:"remember",children:"remember"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property remember As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,t.jsx)(n.p,{children:"If true, remember most recent tab in a session cookie."}),"\n",(0,t.jsx)(n.h3,{id:"onshowtab",children:"onshowTab"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property onshowTab As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,t.jsx)(n.p,{children:"onshowTab event handler: This event is fired when a new tab is made visible."}),"\n",(0,t.jsx)(n.h3,{id:"onhidetab",children:"onhideTab"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property onhideTab As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,t.jsx)(n.p,{children:"onhideTab event handler: This event is fired when a new tab is hidden."}),"\n",(0,t.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(n.h3,{id:"css3style",children:"CSS3Style"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"XData CSS3Style\n"})}),"\n",(0,t.jsx)(n.p,{children:"defines style sheet used by this component"}),"\n",(0,t.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,t.jsx)(n.p,{children:"defines style sheet used by this component"}),"\n",(0,t.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(n.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %DrawHTML()\n"})}),"\n",(0,t.jsx)(n.h3,{id:"onmutatechildren",children:"%OnMutateChildren"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnMutateChildren(pAdd As %Boolean) As %Boolean\n"})}),"\n",(0,t.jsx)(n.p,{children:"Notification that children have been added or removed from this group."}),"\n",(0,t.jsx)(n.h3,{id:"getcurrtabno",children:"getCurrTabNo"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getCurrTabNo() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Return index (1-based) of current tab within the tabGroup."}),"\n",(0,t.jsx)(n.h3,{id:"gettabcount",children:"getTabCount"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getTabCount() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Return number of tabs within the tabGroup."}),"\n",(0,t.jsx)(n.h3,{id:"gettabbodyelement",children:"getTabBodyElement"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getTabBodyElement() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Return the HTML DIV element for the tab body."}),"\n",(0,t.jsx)(n.h3,{id:"gettabbarelement",children:"getTabBarElement"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getTabBarElement() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Return the HTML TABLE element for the tab bar."}),"\n",(0,t.jsx)(n.h3,{id:"setbodysize",children:"setBodySize"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setBodySize(height, width) [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Set the size of the tab body and all tabs. width and height are in pixels.",(0,t.jsx)(n.br,{}),"\nYou must override the CSS min-height for the tabBody for this to be effective."]}),"\n",(0,t.jsx)(n.h3,{id:"childrenmutated",children:"childrenMutated"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod childrenMutated() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Notification to subclasses that a child has been added or removed from this group."}),"\n",(0,t.jsx)(n.h3,{id:"gettabindex",children:"getTabIndex"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getTabIndex(tab) [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Look for the given tab object within this tabGroup's set of tabs and return its 1-based index number.",(0,t.jsx)(n.br,{}),"\nReturns -1 if unable to find the tab."]}),"\n",(0,t.jsx)(n.h3,{id:"gettab",children:"%GetTab"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetTab(pIndex As %Integer) [ CodeMode = expression ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Server-only method: Find the specified tab by index number (1-based)."}),"\n",(0,t.jsx)(n.h3,{id:"setcurrtab",children:"%SetCurrTab"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Method %SetCurrTab(pTab As %ZEN.Component.tab)\n"})}),"\n",(0,t.jsx)(n.p,{children:"Server-side method to set current tab of this tabGroup to pTab."}),"\n",(0,t.jsx)(n.h3,{id:"showtab",children:"showTab"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod showTab(tabno) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Display the specified tab (given its 1-based tab number) and hide the current tab."}),"\n",(0,t.jsx)(n.h3,{id:"ieresizebody",children:"ieResizeBody"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod ieResizeBody() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"IE does not properly support the min-height CSS property. This routine forces a correction to the size of the tabBody should it be rendered too small."}),"\n",(0,t.jsx)(n.h3,{id:"onrefreshcontents",children:"onRefreshContents"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onRefreshContents() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Called after refreshContents."}),"\n",(0,t.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,t.jsx)(n.h3,{id:"onshowtabhandler",children:"onshowTabHandler"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onshowTabHandler(tabno) [ Abstract, Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Class-specific notification that a new tab has been selected. Implemented by subclasses."}),"\n",(0,t.jsx)(n.h3,{id:"tabdisabledhandler",children:"tabDisabledHandler"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod tabDisabledHandler(tab) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Called by tabs of this group to notify that they have changed their disabled state."}),"\n",(0,t.jsx)(n.h3,{id:"onhidetabhandler",children:"onhideTabHandler"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onhideTabHandler(tabno) [ Abstract, Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Class-specific notification that a tab has been hidden. Implemented by subclasses."}),"\n",(0,t.jsx)(n.h3,{id:"shownexttab",children:"showNextTab"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod showNextTab(skipDisabled) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Display the next tab in the tabGroup."}),"\n",(0,t.jsx)(n.h3,{id:"showprevioustab",children:"showPreviousTab"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod showPreviousTab(skipDisabled) [ Language = javascript ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"Display the previous tab in the tabGroup."}),"\n",(0,t.jsx)(n.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,t.jsxs)(n.p,{children:["Set the value of a named property.",(0,t.jsx)(n.br,{}),"\nAssume that subclasses that simply wrap HTML controls have named the control 'control' or else have overridden this method."]})]})}function o(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(d,{...e})}):d(e)}},28453:(e,n,a)=>{a.d(n,{R:()=>l,x:()=>i});var t=a(96540);const s={},r=t.createContext(s);function l(e){const n=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:l(e.components),t.createElement(r.Provider,{value:n},e.children)}}}]);