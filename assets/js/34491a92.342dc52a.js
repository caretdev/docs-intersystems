"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[8639],{55213:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>l,default:()=>d,frontMatter:()=>a,toc:()=>i});var t=n(74848),r=n(28453);const a={pagination_prev:null,pagination_next:null},l="%DeepSee.Time.DayNumber",i=[{value:"Methods",id:"methods",level:2},{value:"%SupportsNOW",id:"supportsnow",level:3},{value:"%IsIndependent",id:"isindependent",level:3},{value:"%Convert",id:"convert",level:3},{value:"%Count",id:"count",level:3},{value:"%GetName",id:"getname",level:3},{value:"%KeyToValue",id:"keytovalue",level:3},{value:"%ValueToKey",id:"valuetokey",level:3},{value:"%KeyToBaseRange",id:"keytobaserange",level:3},{value:"%GetLevelMembers",id:"getlevelmembers",level:3},{value:"%GetRelatedKey",id:"getrelatedkey",level:3}];function o(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"deepseetimedaynumber",children:"%DeepSee.Time.DayNumber"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.Time.DayNumber Extends %DeepSee.Time.AbstractLevel [ System = 3 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This class implements a Day number level within a time dimension. This is the day of the month independent of year (1 through 31)."}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"supportsnow",children:"%SupportsNOW"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %SupportsNOW() As %Boolean\n"})}),"\n",(0,t.jsx)(s.p,{children:"Return true if this level supports a NOW member."}),"\n",(0,t.jsx)(s.h3,{id:"isindependent",children:"%IsIndependent"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %IsIndependent() As %Boolean\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Return true if this time level is ",(0,t.jsx)(s.strong,{children:"independent"})," of the actual date."]}),"\n",(0,t.jsx)(s.h3,{id:"convert",children:"%Convert"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %Convert(pTime As %DeepSee.Datatype.dateTime, pTimeOffset As %String = "") As %Integer [ CodeMode = expression ]\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Convert a $H value to the logical value used for this level. This is used within the computed field logic for properties within a fact table based on this level.",(0,t.jsx)(s.br,{}),"\n. In this case, we convert $H to a day-of-month period number: That is convert to a number one through 31."]}),"\n",(0,t.jsx)(s.h3,{id:"count",children:"%Count"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %Count(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Integer\n"})}),"\n",(0,t.jsx)(s.p,{children:"Return the total number of members within this level."}),"\n",(0,t.jsx)(s.h3,{id:"getname",children:"%GetName"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetName() As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Return the user-visible name of this level."}),"\n",(0,t.jsx)(s.h3,{id:"keytovalue",children:"%KeyToValue"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %KeyToValue(pKey As %Integer, pFormat As %String = "", pOffset As %String = "") As %String\n'})}),"\n",(0,t.jsx)(s.p,{children:"Convert a level key value to a display value. E.g., 1 or 30"}),"\n",(0,t.jsx)(s.h3,{id:"valuetokey",children:"%ValueToKey"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %ValueToKey(pValue As %String, pFormat As %String = "", pOffset As %String = "") As %Integer\n'})}),"\n",(0,t.jsx)(s.p,{children:'Convert a level display value to its corresponding key value. Return "" if there is no corresponding key.'}),"\n",(0,t.jsx)(s.h3,{id:"keytobaserange",children:"%KeyToBaseRange"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %KeyToBaseRange(pKey As %String, Output pStart As %Date, Output pEnd As %Date, pOffset As %String = "") As %Status\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Convert a day-of-month number into starting and ending base values (in $H format).",(0,t.jsx)(s.br,{}),"\nAs this dimension is independent of year, we use year 2000 as the basis of calculations."]}),"\n",(0,t.jsx)(s.h3,{id:"getlevelmembers",children:"%GetLevelMembers"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %GetLevelMembers(Output pList As %List, pCube As %String, pFact As %String, pStartRange As %Date, pEndRange As %Date, pTimeOffset As %String = "", pFormat As %String = "") As %Status\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Return an array of members of this level.",(0,t.jsx)(s.br,{}),"\nAs this dimension is independent of year, we use Jan 2000 as the basis of calculations."]}),"\n",(0,t.jsx)(s.h3,{id:"getrelatedkey",children:"%GetRelatedKey"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %GetRelatedKey(Output pRelatedKey As %String, pCube As %String, pFact As %String, pKey As %String, pRelation As %String, pOffset As %Integer = "", pEndKey As %String = "", pTimeOffset As %String = "") As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Return, via pRelatedKey a key within this level related to pKey."})]})}function d(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>l,x:()=>i});var t=n(96540);const r={},a=t.createContext(r);function l(e){const s=t.useContext(a);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),t.createElement(a.Provider,{value:s},e.children)}}}]);