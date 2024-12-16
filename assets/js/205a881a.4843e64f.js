"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[74565],{7663:(e,a,s)=>{s.r(a),s.d(a,{contentTitle:()=>l,default:()=>d,frontMatter:()=>i,toc:()=>r});var n=s(74848),t=s(28453);const i={pagination_prev:null,pagination_next:null},l="%DeepSee.Datatype.list",r=[{value:"Parameters",id:"parameters",level:2},{value:"MAXLEN",id:"maxlen",level:3},{value:"LISTTYPE",id:"listtype",level:3},{value:"DELIMITER",id:"delimiter",level:3},{value:"Methods",id:"methods",level:2},{value:"BuildValueArray",id:"buildvaluearray",level:3},{value:"LogicalToDisplay",id:"logicaltodisplay",level:3}];function c(e){const a={a:"a",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(a.header,{children:(0,n.jsx)(a.h1,{id:"deepseedatatypelist",children:"%DeepSee.Datatype.list"})}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Class %DeepSee.Datatype.list Extends %Library.String [ System = 3 ]\n"})}),"\n",(0,n.jsxs)(a.p,{children:["This datatype represents a list of values and supports indexing on each individual value. The list value can be in ",(0,n.jsx)(a.a,{href:"/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION",children:"$List"})," format or be a character-delimited list. The default is comma-delimited."]}),"\n",(0,n.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(a.h3,{id:"maxlen",children:"MAXLEN"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter MAXLEN = 30000;\n"})}),"\n",(0,n.jsx)(a.p,{children:"The maximum number of characters the string can contain."}),"\n",(0,n.jsx)(a.h3,{id:"listtype",children:"LISTTYPE"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter LISTTYPE [ Constraint = ",LIST,PIECE", Flags = ENUMEDIT ] = "PIECE";\n'})}),"\n",(0,n.jsx)(a.p,{children:"This specifies whether the data in $List format (LIST) or character delimited (PIECE)."}),"\n",(0,n.jsx)(a.h3,{id:"delimiter",children:"DELIMITER"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter DELIMITER = ",";\n'})}),"\n",(0,n.jsx)(a.p,{children:'If LISTTYPE is "PIECE", then this specifies the delimiter character.'}),"\n",(0,n.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(a.h3,{id:"buildvaluearray",children:"BuildValueArray"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod BuildValueArray(pDocument As %Binary, ByRef pValueArray As %String) As %Status\n"})}),"\n",(0,n.jsx)(a.p,{children:"Convert the list to an array of values that can be indexed."}),"\n",(0,n.jsx)(a.h3,{id:"logicaltodisplay",children:"LogicalToDisplay"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'ClassMethod LogicalToDisplay(%val = "") As %String\n'})}),"\n",(0,n.jsx)(a.p,{children:"Crude display method."})]})}function d(e={}){const{wrapper:a}={...(0,t.R)(),...e.components};return a?(0,n.jsx)(a,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,a,s)=>{s.d(a,{R:()=>l,x:()=>r});var n=s(96540);const t={},i=n.createContext(t);function l(e){const a=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function r(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:l(e.components),n.createElement(i.Provider,{value:a},e.children)}}}]);