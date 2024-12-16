"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[19967],{3072:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>r,default:()=>d,frontMatter:()=>l,toc:()=>i});var n=s(74848),a=s(28453);const l={pagination_prev:null,pagination_next:null},r="%DeepSee.Time.Partial.DayMonthYear",i=[{value:"Parameters",id:"parameters",level:2},{value:"DIMTYPE;",id:"dimtype",level:3},{value:"CALENDAR",id:"calendar",level:3},{value:"Methods",id:"methods",level:2},{value:"%Convert",id:"convert",level:3},{value:"%GetName",id:"getname",level:3},{value:"%KeyToValue",id:"keytovalue",level:3},{value:"%ValueToKey",id:"valuetokey",level:3},{value:"%KeyToBaseRange",id:"keytobaserange",level:3},{value:"%GetLevelMembers",id:"getlevelmembers",level:3},{value:"%GetRelatedKey",id:"getrelatedkey",level:3},{value:"%SupportsNOW",id:"supportsnow",level:3}];function c(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"deepseetimepartialdaymonthyear",children:"%DeepSee.Time.Partial.DayMonthYear"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DeepSee.Time.Partial.DayMonthYear Extends %DeepSee.Time.AbstractLevel [ System = 3 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This class implements a Day level within a time dimension. This is a specific day value that includes month and year."}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"dimtype",children:"DIMTYPE;"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter DIMTYPE;\n"})}),"\n",(0,n.jsx)(t.h3,{id:"calendar",children:"CALENDAR"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter CALENDAR As STRING = "partial";\n'})}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"convert",children:"%Convert"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %Convert(pTime As %DeepSee.Datatype.dateTime, pTimeOffset As %String = "") As %Integer\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Convert a partial date ODBC value to the logical value used for this level. This is used within the computed field logic for properties within a fact table based on this level.",(0,n.jsx)(t.br,{}),"\n. In this case we convert partial date to the form YYYY-MM-DD."]}),"\n",(0,n.jsx)(t.h3,{id:"getname",children:"%GetName"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetName() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the user-visible name of this level."}),"\n",(0,n.jsx)(t.h3,{id:"keytovalue",children:"%KeyToValue"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %KeyToValue(pKey As %Integer, pFormat As %String = "", pTimeOffset As %String = "") As %String\n'})}),"\n",(0,n.jsx)(t.p,{children:"Convert a level key value (yyyy[-mm[-dd]]) to a display value. Partial dates support."}),"\n",(0,n.jsx)(t.h3,{id:"valuetokey",children:"%ValueToKey"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %ValueToKey(pValue As %String, pFormat As %String = "", pOffset As %String = "") As %Integer\n'})}),"\n",(0,n.jsx)(t.p,{children:'Convert a level display value to its corresponding key value. Return "" if there is no corresponding key.'}),"\n",(0,n.jsx)(t.h3,{id:"keytobaserange",children:"%KeyToBaseRange"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %KeyToBaseRange(pKey As %String, Output pStart As %Date, Output pEnd As %Date, pOffset As %String = "") As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"Convert a day of month ($H) into starting and ending base values (in $H format)."}),"\n",(0,n.jsx)(t.h3,{id:"getlevelmembers",children:"%GetLevelMembers"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %GetLevelMembers(Output pList As %List, pCube As %String, pFact As %String, pStartRange As %Date, pEndRange As %Date, pTimeOffset As %String = "", pFormat As %String = "") As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"Return an array of members of this level."}),"\n",(0,n.jsx)(t.h3,{id:"getrelatedkey",children:"%GetRelatedKey"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %GetRelatedKey(Output pRelatedKey As %String, pCube As %String, pFact As %String, pKey As %String, pRelation As %String, pOffset As %Integer = "", pEndKey As %String = "", pTimeOffset As %String = "") As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"Return, via pRelatedKey a key within this level related to pKey."}),"\n",(0,n.jsx)(t.h3,{id:"supportsnow",children:"%SupportsNOW"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %SupportsNOW() As %Boolean\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return true if this level supports a NOW member."})]})}function d(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>r,x:()=>i});var n=s(96540);const a={},l=n.createContext(a);function r(e){const t=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),n.createElement(l.Provider,{value:t},e.children)}}}]);