"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[80318],{74108:(e,a,s)=>{s.r(a),s.d(a,{contentTitle:()=>i,default:()=>c,frontMatter:()=>l,toc:()=>r});var n=s(74848),t=s(28453);const l={pagination_prev:null,pagination_next:null},i="%ZEN.Component.tableNavigatorBar",r=[{value:"Parameters",id:"parameters",level:2},{value:"SYSMODULE",id:"sysmodule",level:3},{value:"DOMAIN",id:"domain",level:3},{value:"Properties",id:"properties",level:2},{value:"tablePaneId",id:"tablepaneid",level:3},{value:"maxButtons",id:"maxbuttons",level:3},{value:"maxPageSize",id:"maxpagesize",level:3},{value:"navmaxRows",id:"navmaxrows",level:3},{value:"maxRows",id:"maxrows",level:3},{value:"showFilter",id:"showfilter",level:3},{value:"showPageSize",id:"showpagesize",level:3},{value:"showMaxRows",id:"showmaxrows",level:3},{value:"saveSizeMax",id:"savesizemax",level:3},{value:"msgFilter",id:"msgfilter",level:3},{value:"msgPageSize",id:"msgpagesize",level:3},{value:"msgMaxRows",id:"msgmaxrows",level:3},{value:"msgFound",id:"msgfound",level:3},{value:"msgPage",id:"msgpage",level:3},{value:"msgOf",id:"msgof",level:3},{value:"msgFirstPage",id:"msgfirstpage",level:3},{value:"msgLastPage",id:"msglastpage",level:3},{value:"msgNextPage",id:"msgnextpage",level:3},{value:"msgPreviousPage",id:"msgpreviouspage",level:3},{value:"onfilterChange",id:"onfilterchange",level:3},{value:"onPageSizeChange",id:"onpagesizechange",level:3},{value:"onMaxRowsChange",id:"onmaxrowschange",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawHTML",id:"drawhtml",level:3},{value:"renderContents",id:"rendercontents",level:3},{value:"renderButtons",id:"renderbuttons",level:3},{value:"updateState",id:"updatestate",level:3},{value:"onfilterHandler",id:"onfilterhandler",level:3},{value:"onpageSizeHandler",id:"onpagesizehandler",level:3},{value:"onmaxRowsHandler",id:"onmaxrowshandler",level:3},{value:"gotoPage",id:"gotopage",level:3},{value:"setProperty",id:"setproperty",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"connect",id:"connect",level:3}];function o(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(a.header,{children:(0,n.jsx)(a.h1,{id:"zencomponenttablenavigatorbar",children:"%ZEN.Component.tableNavigatorBar"})}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Class %ZEN.Component.tableNavigatorBar Extends component [ Deprecated, System = 3 ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This composite component displays a navigation bar (paging information and links to pages) for a %ZEN.Component.tablePane."}),"\n",(0,n.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(a.h3,{id:"sysmodule",children:"SYSMODULE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter SYSMODULE = "table";\n'})}),"\n",(0,n.jsx)(a.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%ZEN";\n'})}),"\n",(0,n.jsx)(a.p,{children:"Localization domain"}),"\n",(0,n.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(a.h3,{id:"tablepaneid",children:"tablePaneId"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property tablePaneId As %ZEN.Datatype.id(COMPONENTTYPE = "tablePane");\n'})}),"\n",(0,n.jsxs)(a.p,{children:["id of %ZEN.Component.tablePane component this navigator is associated with.",(0,n.jsx)(a.br,{}),"\nNote: if this component is placed within a composite element, then the tablePane must be within the same composite element."]}),"\n",(0,n.jsx)(a.h3,{id:"maxbuttons",children:"maxButtons"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property maxButtons As %ZEN.Datatype.integer [ InitialExpression = 5 ];\n"})}),"\n",(0,n.jsxs)(a.p,{children:['This is the maximum number of page number "buttons" to display within the navigator. The default is 5.',(0,n.jsx)(a.br,{}),"\nIf set to less than 1, then 1 is used."]}),"\n",(0,n.jsx)(a.h3,{id:"maxpagesize",children:"maxPageSize"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property maxPageSize As %ZEN.Datatype.integer [ InitialExpression = 1000 ];\n"})}),"\n",(0,n.jsx)(a.p,{children:"This is the maximum page size that a user can enter within the navigator. The default is 1000."}),"\n",(0,n.jsx)(a.h3,{id:"navmaxrows",children:"navmaxRows"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property navmaxRows As %ZEN.Datatype.integer [ InitialExpression = 100000 ];\n"})}),"\n",(0,n.jsx)(a.p,{children:"This is the maximum rows that a user can enter within the navigator. The default is 100000. Designer may override this, but end user's entry cannot be greater than this number."}),"\n",(0,n.jsx)(a.h3,{id:"maxrows",children:"maxRows"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property maxRows As %ZEN.Datatype.integer [ InitialExpression = 1000 ];\n"})}),"\n",(0,n.jsx)(a.p,{children:'This is the maximum rows that the associated table can load. Value can be changed from the "Max rows" field. The default is 1000.'}),"\n",(0,n.jsx)(a.h3,{id:"showfilter",children:"showFilter"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property showFilter As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(a.p,{children:"If true, show a filter input box as part of the navigator. This filter box does not do anything on its own, you need to assign an onfilterChange event to make this happen."}),"\n",(0,n.jsx)(a.h3,{id:"showpagesize",children:"showPageSize"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property showPageSize As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(a.p,{children:"If true, let users control the page size of the table pane using the navigator."}),"\n",(0,n.jsx)(a.h3,{id:"showmaxrows",children:"showMaxRows"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property showMaxRows As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(a.p,{children:"If true, let users control the maximum rows of the table pane using the navigator."}),"\n",(0,n.jsx)(a.h3,{id:"savesizemax",children:"saveSizeMax"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property saveSizeMax As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(a.p,{children:"If true, it will invoke user function to save pageSize and maxRows and designer should provide call backs for onPageSizeChange and onMaxRowsChange."}),"\n",(0,n.jsx)(a.h3,{id:"msgfilter",children:"msgFilter"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property msgFilter As %ZEN.Datatype.caption;\n"})}),"\n",(0,n.jsx)(a.p,{children:'Localized "Filter" message.'}),"\n",(0,n.jsx)(a.h3,{id:"msgpagesize",children:"msgPageSize"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property msgPageSize As %ZEN.Datatype.caption;\n"})}),"\n",(0,n.jsx)(a.p,{children:'Localized "page size" message.'}),"\n",(0,n.jsx)(a.h3,{id:"msgmaxrows",children:"msgMaxRows"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property msgMaxRows As %ZEN.Datatype.caption;\n"})}),"\n",(0,n.jsx)(a.p,{children:'Localized "max rows" message.'}),"\n",(0,n.jsx)(a.h3,{id:"msgfound",children:"msgFound"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property msgFound As %ZEN.Datatype.caption;\n"})}),"\n",(0,n.jsx)(a.p,{children:'Localized "Results" message.'}),"\n",(0,n.jsx)(a.h3,{id:"msgpage",children:"msgPage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property msgPage As %ZEN.Datatype.caption;\n"})}),"\n",(0,n.jsx)(a.p,{children:'Localized "Page" message.'}),"\n",(0,n.jsx)(a.h3,{id:"msgof",children:"msgOf"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property msgOf As %ZEN.Datatype.caption;\n"})}),"\n",(0,n.jsx)(a.p,{children:'Localized "of" found message.'}),"\n",(0,n.jsx)(a.h3,{id:"msgfirstpage",children:"msgFirstPage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property msgFirstPage As %ZEN.Datatype.caption;\n"})}),"\n",(0,n.jsx)(a.p,{children:'Localized "first page" message.'}),"\n",(0,n.jsx)(a.h3,{id:"msglastpage",children:"msgLastPage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property msgLastPage As %ZEN.Datatype.caption;\n"})}),"\n",(0,n.jsx)(a.p,{children:'Localized "last page" message.'}),"\n",(0,n.jsx)(a.h3,{id:"msgnextpage",children:"msgNextPage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property msgNextPage As %ZEN.Datatype.caption;\n"})}),"\n",(0,n.jsx)(a.p,{children:'Localized "next page" message.'}),"\n",(0,n.jsx)(a.h3,{id:"msgpreviouspage",children:"msgPreviousPage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property msgPreviousPage As %ZEN.Datatype.caption;\n"})}),"\n",(0,n.jsx)(a.p,{children:'Localized "previous page" message.'}),"\n",(0,n.jsx)(a.h3,{id:"onfilterchange",children:"onfilterChange"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property onfilterChange As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,n.jsx)(a.p,{children:"onfilterChange event handler: This event is fired when the user changes the value in the filter box displayed by this navigator. value is passed to this callback and is the current value of the filter control."}),"\n",(0,n.jsx)(a.h3,{id:"onpagesizechange",children:"onPageSizeChange"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property onPageSizeChange As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,n.jsx)(a.p,{children:'onPageSizeCghange event handler: This event is fired when user changes the value in the "Page size" box displayed by this navigator. value is passed to this callback and is the current value of the "Page size" control.'}),"\n",(0,n.jsx)(a.h3,{id:"onmaxrowschange",children:"onMaxRowsChange"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Property onMaxRowsChange As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,n.jsx)(a.p,{children:'onMaxRowsChange event handler: This event is fired when user changes the value in the "Max rows" box displayed by this navigator. value is passed to this callback and is the current value of the "Max rows" control.'}),"\n",(0,n.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,n.jsx)(a.p,{children:"defines style sheet used by this component"}),"\n",(0,n.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(a.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Method %DrawHTML()\n"})}),"\n",(0,n.jsx)(a.h3,{id:"rendercontents",children:"renderContents"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod renderContents() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Client-side method to render this control."}),"\n",(0,n.jsx)(a.h3,{id:"renderbuttons",children:"renderButtons"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod renderButtons() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Render HTML for paging buttons."}),"\n",(0,n.jsx)(a.h3,{id:"updatestate",children:"updateState"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod updateState() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This method is called from the associated tablePane when it changes state. The navigator responds by updating the state of its controls."}),"\n",(0,n.jsx)(a.h3,{id:"onfilterhandler",children:"onfilterHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onfilterHandler(value) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Event handler for filter box. This method is called when the value of the filter box changes."}),"\n",(0,n.jsx)(a.h3,{id:"onpagesizehandler",children:"onpageSizeHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onpageSizeHandler(ctrl) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Event handler for page size box. This method is called when the value of the page size box changes."}),"\n",(0,n.jsx)(a.h3,{id:"onmaxrowshandler",children:"onmaxRowsHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onmaxRowsHandler(ctrl) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Event handler for maxRows box. This method is called when the value of the maxRows box changes."}),"\n",(0,n.jsx)(a.h3,{id:"gotopage",children:"gotoPage"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod gotoPage(where) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Move to the specified page in the associated tablePane. where can be 'first','last','next','prev' or a page number."}),"\n",(0,n.jsx)(a.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Set the value of a named property."}),"\n",(0,n.jsx)(a.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,n.jsx)(a.h3,{id:"connect",children:"connect"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod connect() [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Connect to table pane."})]})}function c(e={}){const{wrapper:a}={...(0,t.R)(),...e.components};return a?(0,n.jsx)(a,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,a,s)=>{s.d(a,{R:()=>i,x:()=>r});var n=s(96540);const t={},l=n.createContext(t);function i(e){const a=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function r(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:i(e.components),n.createElement(l.Provider,{value:a},e.children)}}}]);