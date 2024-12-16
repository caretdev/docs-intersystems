"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[52396],{68880:(e,a,l)=>{l.r(a),l.d(a,{contentTitle:()=>n,default:()=>o,frontMatter:()=>i,toc:()=>r});var s=l(74848),t=l(28453);const i={pagination_prev:null,pagination_next:null},n="%MV.Date",r=[{value:"Parameters",id:"parameters",level:2},{value:"FORMAT;",id:"format",level:3},{value:"MAXVAL;",id:"maxval",level:3},{value:"MINVAL;",id:"minval",level:3},{value:"VALUELIST;",id:"valuelist",level:3},{value:"DISPLAYLIST;",id:"displaylist",level:3},{value:"XSDTYPE",id:"xsdtype",level:3},{value:"JSONTYPE",id:"jsontype",level:3},{value:"Methods",id:"methods",level:2},{value:"XSDToLogical",id:"xsdtological",level:3},{value:"LogicalToXSD",id:"logicaltoxsd",level:3},{value:"DisplayToLogical",id:"displaytological",level:3},{value:"Normalize",id:"normalize",level:3},{value:"IsValid",id:"isvalid",level:3},{value:"LogicalToDisplay",id:"logicaltodisplay",level:3},{value:"LogicalToOdbc",id:"logicaltoodbc",level:3},{value:"OdbcToLogical",id:"odbctological",level:3},{value:"DateToLogical",id:"datetological",level:3},{value:"LogicalToDate",id:"logicaltodate",level:3}];function c(e){const a={a:"a",br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,t.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(a.header,{children:(0,s.jsx)(a.h1,{id:"mvdate",children:"%MV.Date"})}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Class %MV.Date Extends %DataType [ ClientDataType = MVDATE, OdbcType = DATE, Not ProcedureBlock, SqlCategory = MVDATE, System = 2 ]\n"})}),"\n",(0,s.jsxs)(a.p,{children:["The ",(0,s.jsx)(a.strong,{children:"%MV.Date"})," data type class represents a MultiValue date."]}),"\n",(0,s.jsxs)(a.p,{children:["The MultiValue start date is 01/01/1968",(0,s.jsx)(a.br,{}),"\nObjectScript date is 01/01/1841"]}),"\n",(0,s.jsxs)(a.p,{children:["To convert an ObjectScript date ($h) to a MultiValue date:",(0,s.jsx)(a.br,{}),"\nMVdate = ObjectScript date - 46385"]}),"\n",(0,s.jsxs)(a.p,{children:["To convert a MultiValue date to an ObjectScript date:",(0,s.jsx)(a.br,{}),"\nObjectScript date = MVdate + 46385"]}),"\n",(0,s.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(a.h3,{id:"format",children:"FORMAT;"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter FORMAT;\n"})}),"\n",(0,s.jsxs)(a.p,{children:["The format specification for the data type's display value. The value of the FORMAT parameter corresponds to the available parameters of the ",(0,s.jsx)(a.code,{children:"$ZDATE"})," and ",(0,s.jsx)(a.code,{children:"$ZDATEH"})," functions, which are used to perform the formatting."]}),"\n",(0,s.jsx)(a.h3,{id:"maxval",children:"MAXVAL;"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter MAXVAL;\n"})}),"\n",(0,s.jsx)(a.p,{children:"The maximum allowed logical value for the data type."}),"\n",(0,s.jsx)(a.h3,{id:"minval",children:"MINVAL;"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter MINVAL;\n"})}),"\n",(0,s.jsx)(a.p,{children:"The minimum allowed logical value for the data type."}),"\n",(0,s.jsx)(a.h3,{id:"valuelist",children:"VALUELIST;"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter VALUELIST;\n"})}),"\n",(0,s.jsx)(a.p,{children:'Used for enumerated (multiple-choice) attributes. VALUELIST is either a null string ("") or a delimiter separated list (where the delimiter is the first character) of logical values. If a non-null value is present, then the attribute is restricted to values in the list, and the validation code simply checks to see if the value is in the list.'}),"\n",(0,s.jsx)(a.h3,{id:"displaylist",children:"DISPLAYLIST;"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter DISPLAYLIST;\n"})}),"\n",(0,s.jsxs)(a.p,{children:["Used for enumerated (multiple-choice) attributes. Used in conjunction with the ",(0,s.jsx)(a.a,{href:"#VALUELIST",children:"VALUELIST"})," parameter for enumerated (multiple-choice) attributes. DISPLAYLIST, if not null, represents the display values for the attribute corresponding with the logical values listed in VALUELIST."]}),"\n",(0,s.jsxs)(a.p,{children:["The display values are returned by the ",(0,s.jsx)(a.a,{href:"#LogicalToDisplay",children:"LogicalToDisplay"})," method."]}),"\n",(0,s.jsx)(a.h3,{id:"xsdtype",children:"XSDTYPE"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter XSDTYPE = "date";\n'})}),"\n",(0,s.jsx)(a.p,{children:"Declares the XSD type used when projecting XML Schemas."}),"\n",(0,s.jsx)(a.h3,{id:"jsontype",children:"JSONTYPE"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter JSONTYPE = "string";\n'})}),"\n",(0,s.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(a.h3,{id:"xsdtological",children:"XSDToLogical"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod XSDToLogical(%val As %String) As %MV.Date [ CodeMode = generator, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Converts the SOAP encoded input date value into a MV Date value."}),"\n",(0,s.jsx)(a.h3,{id:"logicaltoxsd",children:"LogicalToXSD"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod LogicalToXSD(%val As %MV.Date) As %String [ CodeMode = generator, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Converts the MV Date value to the canonical SOAP encoded value."}),"\n",(0,s.jsx)(a.h3,{id:"displaytological",children:"DisplayToLogical"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod DisplayToLogical(%val As %String) As %MV.Date [ CodeMode = generator, ServerOnly = 0 ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Converts the input value %val, which represents a date, into an MV Date format."}),"\n",(0,s.jsx)(a.p,{children:"Returns the logical (MV Date) value of the input string %val."}),"\n",(0,s.jsx)(a.h3,{id:"normalize",children:"Normalize"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod Normalize(%val As %String) As %MV.Date [ CodeMode = expression, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Converts %val to a normalized value."}),"\n",(0,s.jsx)(a.h3,{id:"isvalid",children:"IsValid"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]\n"})}),"\n",(0,s.jsxs)(a.p,{children:["Tests if the logical value %val, which represents a date in MV Date format, is valid. The validation is based on the class parameter settings used for the class attribute this data type is associated with. In this case, ",(0,s.jsx)(a.a,{href:"#MAXVAL",children:"MAXVAL"})," and ",(0,s.jsx)(a.a,{href:"#MINVAL",children:"MINVAL"}),"."]}),"\n",(0,s.jsx)(a.h3,{id:"logicaltodisplay",children:"LogicalToDisplay"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod LogicalToDisplay(%val As %Date) As %String [ CodeMode = generator, ServerOnly = 0 ]\n"})}),"\n",(0,s.jsxs)(a.p,{children:["Converts the value of %val, which is in logical MV Date format, into a display string. The formatting is based on the value of the ",(0,s.jsx)(a.a,{href:"#FORMAT",children:"FORMAT"})," parameter."]}),"\n",(0,s.jsx)(a.p,{children:"Returns the formatted value of %val."}),"\n",(0,s.jsx)(a.h3,{id:"logicaltoodbc",children:"LogicalToOdbc"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'ClassMethod LogicalToOdbc(%val As %MV.Date = "") As %String [ CodeMode = expression, ServerOnly = 1 ]\n'})}),"\n",(0,s.jsx)(a.p,{children:"Converts %val, which represents a date in logical MV Date format, into ODBC date format."}),"\n",(0,s.jsx)(a.p,{children:"Returns the ODBC date string for the logical (MV Date) value %val."}),"\n",(0,s.jsx)(a.h3,{id:"odbctological",children:"OdbcToLogical"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'ClassMethod OdbcToLogical(%val As %String = "") As %MV.Date [ ProcedureBlock = 1, ServerOnly = 1 ]\n'})}),"\n",(0,s.jsx)(a.p,{children:"Converts %val, which represents a date in ODBC format, into MV Date format."}),"\n",(0,s.jsx)(a.p,{children:"Returns the MV Date value of the ODBC date string %val."}),"\n",(0,s.jsx)(a.h3,{id:"datetological",children:"DateToLogical"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod DateToLogical(%val As %Library.Date) As %MV.Date [ CodeMode = expression, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Converts %Library.Date value to %MV.Date value"}),"\n",(0,s.jsx)(a.h3,{id:"logicaltodate",children:"LogicalToDate"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod LogicalToDate(%val As %MV.Date) As %Library.Date [ CodeMode = expression, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Converts logical %MV.Date value to %Library.Date value"})]})}function o(e={}){const{wrapper:a}={...(0,t.R)(),...e.components};return a?(0,s.jsx)(a,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,a,l)=>{l.d(a,{R:()=>n,x:()=>r});var s=l(96540);const t={},i=s.createContext(t);function n(e){const a=s.useContext(i);return s.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function r(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:n(e.components),s.createElement(i.Provider,{value:a},e.children)}}}]);