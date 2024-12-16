"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[60385],{15674:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>i,default:()=>o,frontMatter:()=>t,toc:()=>r});var a=n(74848),l=n(28453);const t={pagination_prev:null,pagination_next:null},i="%Library.EnumString",r=[{value:"Parameters",id:"parameters",level:2},{value:"COLLATION",id:"collation",level:3},{value:"MAXLEN",id:"maxlen",level:3},{value:"MINLEN",id:"minlen",level:3},{value:"PATTERN;",id:"pattern",level:3},{value:"TRUNCATE",id:"truncate",level:3},{value:"VALUELIST;",id:"valuelist",level:3},{value:"DISPLAYLIST;",id:"displaylist",level:3},{value:"CONTENT",id:"content",level:3},{value:"ESCAPE",id:"escape",level:3},{value:"XSDTYPE",id:"xsdtype",level:3},{value:"JSONTYPE",id:"jsontype",level:3},{value:"Methods",id:"methods",level:2},{value:"DisplayToLogical",id:"displaytological",level:3},{value:"OdbcToLogical",id:"odbctological",level:3},{value:"Normalize",id:"normalize",level:3},{value:"IsValid",id:"isvalid",level:3},{value:"LogicalToDisplay",id:"logicaltodisplay",level:3},{value:"LogicalToOdbc",id:"logicaltoodbc",level:3}];function c(e){const s={a:"a",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,l.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(s.header,{children:(0,a.jsx)(s.h1,{id:"libraryenumstring",children:"%Library.EnumString"})}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Library.EnumString Extends %DataType [ System = 2 ]\n"})}),"\n",(0,a.jsxs)(s.p,{children:["The ",(0,a.jsx)(s.strong,{children:"%EnumString"})," data type class represents a string. This is a specialized type of ",(0,a.jsx)(s.strong,{children:"%String"})," that allows you to define an enumerated set of possible values (using the DISPLAYLIST and VALUELIST parameters). Unlike the regular ",(0,a.jsx)(s.strong,{children:"%String"})," class, the display values for this property are used when columns of this type are queried via ODBC."]}),"\n",(0,a.jsxs)(s.p,{children:["The logical value of the ",(0,a.jsx)(s.strong,{children:"%EnumString"})," data type is a string."]}),"\n",(0,a.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(s.h3,{id:"collation",children:"COLLATION"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter COLLATION [ Constraint = ",ALPHAUP,EXACT,MINUS,MVR,PLUS,SPACE,SQLSTRING,SQLUPPER,STRING,TRUNCATE,UPPER", Flags = ENUMEDIT ];\n'})}),"\n",(0,a.jsx)(s.p,{children:"The default collation value used for this data type. Note that if you specify a truncation length and also a VALUELIST then your truncation length must be longer or equal to your longest VALUELIST value"}),"\n",(0,a.jsx)(s.h3,{id:"maxlen",children:"MAXLEN"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter MAXLEN As INTEGER = 50;\n"})}),"\n",(0,a.jsx)(s.p,{children:"The maximum number of characters the string can contain."}),"\n",(0,a.jsx)(s.h3,{id:"minlen",children:"MINLEN"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter MINLEN As INTEGER;\n"})}),"\n",(0,a.jsx)(s.p,{children:"The minimum number of characters the string can contain."}),"\n",(0,a.jsx)(s.h3,{id:"pattern",children:"PATTERN;"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter PATTERN;\n"})}),"\n",(0,a.jsx)(s.p,{children:"A pattern which the string should match."}),"\n",(0,a.jsx)(s.p,{children:"The value of PATTERN should be a valid ObjectScript pattern match expression."}),"\n",(0,a.jsx)(s.h3,{id:"truncate",children:"TRUNCATE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter TRUNCATE As BOOLEAN = 0;\n"})}),"\n",(0,a.jsx)(s.p,{children:"Determines whether to truncate the string to MAXLEN characters."}),"\n",(0,a.jsx)(s.h3,{id:"valuelist",children:"VALUELIST;"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter VALUELIST;\n"})}),"\n",(0,a.jsx)(s.p,{children:'Used for enumerated (multiple-choice) attributes. VALUELIST is either a null string ("") or a delimiter separated list (where the delimiter is the first character) of logical values. If a non-null value is present, then the attribute is restricted to values in the list, and the validation code simply checks to see if the value is in the list.'}),"\n",(0,a.jsx)(s.h3,{id:"displaylist",children:"DISPLAYLIST;"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter DISPLAYLIST;\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Used for enumerated (multiple-choice) attributes. Used in conjunction with the ",(0,a.jsx)(s.a,{href:"#VALUELIST",children:"VALUELIST"})," parameter for enumerated (multiple-choice) attributes. DISPLAYLIST, if not null, represents the display values for the attribute corresponding with the logical values listed in VALUELIST."]}),"\n",(0,a.jsxs)(s.p,{children:["The display values are returned by the ",(0,a.jsx)(s.a,{href:"#LogicalToDisplay",children:"LogicalToDisplay"})," method."]}),"\n",(0,a.jsx)(s.h3,{id:"content",children:"CONTENT"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CONTENT [ Constraint = "MIXED,STRING,ESCAPE,ESCAPE-C14N", Flags = ENUM ] = "STRING";\n'})}),"\n",(0,a.jsx)(s.p,{children:'XML element content "MIXED" for mixed="true" and "STRING" or "ESCAPE" for mixed="false". If CONTENT="STRING" (default) XML special characters are put in a CDATA section during XML export. If CONTENT="ESCAPE" XML special characters are escaped during XML export. If CONTENT="ESCAPE-C14N" XML special characters are escaped during XML export using the translate table, XMLC, specified for XML Canonicalizaton. The main difference is that CR is escaped as\r'}),"\n",(0,a.jsx)(s.h3,{id:"escape",children:"ESCAPE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter ESCAPE [ Constraint = "HTML,XML", Flags = ENUM ] = "XML";\n'})}),"\n",(0,a.jsx)(s.p,{children:'Controls the translate table used to escape content when CONTENT="MIXED" is specified.'}),"\n",(0,a.jsx)(s.h3,{id:"xsdtype",children:"XSDTYPE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter XSDTYPE = "string";\n'})}),"\n",(0,a.jsx)(s.p,{children:"Declares the XSD type used when projecting XML Schemas."}),"\n",(0,a.jsx)(s.h3,{id:"jsontype",children:"JSONTYPE"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter JSONTYPE = "string";\n'})}),"\n",(0,a.jsx)(s.p,{children:"JSONTYPE is JSON type used for this datatype."}),"\n",(0,a.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(s.h3,{id:"displaytological",children:"DisplayToLogical"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DisplayToLogical(%val As %String) As %String [ CodeMode = generator, ServerOnly = 0 ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Converts the input value %val, which is a string, into the logical string format. Returns the logical value of the input string %val."}),"\n",(0,a.jsx)(s.h3,{id:"odbctological",children:"OdbcToLogical"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OdbcToLogical(%val As %String) As %String [ CodeMode = generator, ServerOnly = 1 ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Converts the input value %val, which is a string, into the logical string format. Converts DISPLAYLIST entries to their cooresponding VALUELIST value. If there is no entry specified for the given value in the DISPLAYLIST, the input value is returned. If this input value does not match a value in the VALUELIST a validation error will probably be returned upon filing or saving."}),"\n",(0,a.jsx)(s.p,{children:"Returns the logical value of the input string %val."}),"\n",(0,a.jsx)(s.h3,{id:"normalize",children:"Normalize"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Normalize(%val As %RawString) As %String [ CodeMode = generator, ServerOnly = 1 ]\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Truncates value %val to ",(0,a.jsx)(s.a,{href:"#MAXLEN",children:"MAXLEN"}),", characters."]}),"\n",(0,a.jsx)(s.h3,{id:"isvalid",children:"IsValid"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsValid(%val As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Tests if the logical value %val, which is a string, is valid. The validation is based on the class parameter settings used for the class attribute this data type is associated with. In this case, ",(0,a.jsx)(s.a,{href:"#MINLEN",children:"MINLEN"}),", ",(0,a.jsx)(s.a,{href:"#MAXLEN",children:"MAXLEN"}),", ",(0,a.jsx)(s.a,{href:"#VALUELIST",children:"VALUELIST"}),", and ",(0,a.jsx)(s.a,{href:"#PATTERN",children:"PATTERN"}),"."]}),"\n",(0,a.jsx)(s.h3,{id:"logicaltodisplay",children:"LogicalToDisplay"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod LogicalToDisplay(%val As %String) As %String [ CodeMode = generator, ServerOnly = 0 ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Converts the value of %val, which is in logical format, into a display string. Removes all the null characters from the string."}),"\n",(0,a.jsx)(s.p,{children:"Returns the string value of %val."}),"\n",(0,a.jsx)(s.h3,{id:"logicaltoodbc",children:"LogicalToOdbc"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod LogicalToOdbc(%val As %String) As %String [ CodeMode = generator, ServerOnly = 1 ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Converts the value of %val, which is in logical format, into a display string. Converts VALUELIST entries to their cooresponding DISPLAYLIST value."}),"\n",(0,a.jsx)(s.p,{children:"Returns the string value of %val."})]})}function o(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,a.jsx)(s,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>i,x:()=>r});var a=n(96540);const l={},t=a.createContext(l);function i(e){const s=a.useContext(t);return a.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function r(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),a.createElement(t.Provider,{value:s},e.children)}}}]);