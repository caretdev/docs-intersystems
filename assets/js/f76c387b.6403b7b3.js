"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[76321],{66833:(e,a,s)=>{s.r(a),s.d(a,{contentTitle:()=>r,default:()=>d,frontMatter:()=>l,toc:()=>i});var n=s(74848),t=s(28453);const l={pagination_prev:null,pagination_next:null},r="%CSP.UI.Portal.UtilsNav",i=[{value:"Properties",id:"properties",level:2},{value:"Filter",id:"filter",level:3},{value:"TablePageSize",id:"tablepagesize",level:3},{value:"TableMaxRows",id:"tablemaxrows",level:3},{value:"Methods",id:"methods",level:2},{value:"UpdateTableNavState",id:"updatetablenavstate",level:3},{value:"navPageSizeChanged",id:"navpagesizechanged",level:3},{value:"navMaxRowsChanged",id:"navmaxrowschanged",level:3},{value:"%GetNavTableState",id:"getnavtablestate",level:3}];function o(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(a.header,{children:(0,n.jsx)(a.h1,{id:"cspuiportalutilsnav",children:"%CSP.UI.Portal.UtilsNav"})}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.UtilsNav [ Abstract, System = 4 ]\n"})}),"\n",(0,n.jsxs)(a.p,{children:["This class contains Properties and Methods in support of component tableNavBar in SMP.",(0,n.jsx)(a.br,{}),"\nThe purpose is to remember the last Page size and Maximum rows of the tableNavBar If you want to remember these, then do the following:",(0,n.jsx)(a.br,{}),"\nExtend your page to this class and add to the :"]}),"\n",(0,n.jsxs)(a.ul,{children:["\n",(0,n.jsx)(a.li,{children:'(1) saveSizeMax="true"'}),"\n",(0,n.jsx)(a.li,{children:'(2) onPageSizeChange="zenPage.navPageSizeChanged(value);" if you want to remember page size'}),"\n",(0,n.jsx)(a.li,{children:'(3) onMaxRowsChange="zenPage.navMaxRowsChanged(value);" if you want to remember max rows'}),"\n",(0,n.jsxs)(a.li,{children:["In %OnAfterCreatePage() of your page, add: Do ..%GetNavTableState()\nExample pages:",(0,n.jsx)(a.br,{}),"\n- use %CSP.UI.Portal.Utils as super class: %CSP.UI.Portal.Processes, %CSP.UI.Portal.ClassList",(0,n.jsx)(a.br,{}),"\n- use %CSP.UI.Portal.Template as super class: %CSP.UI.Portal.Namespaces, %CSP.UI.Portal.Users (with Filter=true)"]}),"\n"]}),"\n",(0,n.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(a.h3,{id:"filter",children:"Filter"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property Filter As %ZEN.Datatype.string [ InitialExpression = "*" ];\n'})}),"\n",(0,n.jsx)(a.p,{children:'Filter value user entered into the "Filter" field in the table navigator. This value is saved and reloaded for this page.'}),"\n",(0,n.jsx)(a.h3,{id:"tablepagesize",children:"TablePageSize"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property TablePageSize As %Integer [ InitialExpression = "0" ];\n'})}),"\n",(0,n.jsx)(a.p,{children:'Page size value user entered into the "Page size" field in the table navigator. This value is saved and reloaded for this page.'}),"\n",(0,n.jsx)(a.h3,{id:"tablemaxrows",children:"TableMaxRows"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Property TableMaxRows As %Integer [ InitialExpression = "1000" ];\n'})}),"\n",(0,n.jsx)(a.p,{children:'Max rows value user entered into the "Max rows" field in the table navigator. This value is saved and reloaded for this page.'}),"\n",(0,n.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(a.h3,{id:"updatetablenavstate",children:"UpdateTableNavState"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod UpdateTableNavState(pFilter As %String, pPageSize As %Integer, pMaxRows As %Integer) [ ZenMethod ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Used to Save TableNavigatorBar Values."}),"\n",(0,n.jsx)(a.h3,{id:"navpagesizechanged",children:"navPageSizeChanged"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod navPageSizeChanged(value) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Maybe overriden by subclass."}),"\n",(0,n.jsx)(a.h3,{id:"navmaxrowschanged",children:"navMaxRowsChanged"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod navMaxRowsChanged(value) [ Language = javascript ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Maybe overriden by subclass."}),"\n",(0,n.jsx)(a.h3,{id:"getnavtablestate",children:"%GetNavTableState"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Method %GetNavTableState(pPageName As %String = "") As %Status\n'})}),"\n",(0,n.jsxs)(a.p,{children:["Call this method from %OnAfterCreatePage to load the last saved values for tableNavBar.",(0,n.jsx)(a.br,{}),"\nPass in a special name you used for this page if differ from ..%GetPageName.",(0,n.jsx)(a.br,{}),'\nFor example Mappings is used for Global/Routine/Package Mappings, so the name used for save has MapType in it to distinguish. If tableId is not "table" then pass it in as the second piece delimited by "^" (example: %CSP.UI.Portal.SQL.TuneTable).']})]})}function d(e={}){const{wrapper:a}={...(0,t.R)(),...e.components};return a?(0,n.jsx)(a,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,a,s)=>{s.d(a,{R:()=>r,x:()=>i});var n=s(96540);const t={},l=n.createContext(t);function r(e){const a=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function i(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:r(e.components),n.createElement(l.Provider,{value:a},e.children)}}}]);