"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[39362],{95913:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>a,default:()=>c,frontMatter:()=>l,toc:()=>i});var n=r(74848),t=r(28453);const l={pagination_prev:null,pagination_next:null},a="%CSP.DwxUtils",i=[{value:"Methods",id:"methods",level:2},{value:"GetMemberInfo",id:"getmemberinfo",level:3},{value:"GetReferenceInfo",id:"getreferenceinfo",level:3},{value:"GetValueExpression",id:"getvalueexpression",level:3},{value:"GetSetCode",id:"getsetcode",level:3},{value:"GetLogicalValue",id:"getlogicalvalue",level:3},{value:"HasD2L",id:"hasd2l",level:3},{value:"HasL2D",id:"hasl2d",level:3},{value:"GetElementChildren",id:"getelementchildren",level:3},{value:"EscapeStream",id:"escapestream",level:3},{value:"ListToDisplay",id:"listtodisplay",level:3},{value:"GetHTMLForField",id:"gethtmlforfield",level:3},{value:"Test",id:"test",level:3},{value:"IsMethod",id:"ismethod",level:3},{value:"GetPropertyType",id:"getpropertytype",level:3},{value:"IsPropertyRequired",id:"ispropertyrequired",level:3},{value:"IsPropertyReadOnly",id:"ispropertyreadonly",level:3},{value:"IsPropertyStream",id:"ispropertystream",level:3},{value:"IsPropertySearchable",id:"ispropertysearchable",level:3},{value:"GetPropertyMaxLen",id:"getpropertymaxlen",level:3},{value:"GetPropertyCollection",id:"getpropertycollection",level:3},{value:"GetPropertyCaption",id:"getpropertycaption",level:3},{value:"GetPropertyParam",id:"getpropertyparam",level:3}];function o(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",table:"table",tbody:"tbody",td:"td",th:"th",thead:"thead",tr:"tr",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"cspdwxutils",children:"%CSP.DwxUtils"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.DwxUtils [ Abstract, Not ProcedureBlock, System = 3 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,n.jsx)(s.p,{children:"This class provides utility methods for CSPBIND related tools."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"getmemberinfo",children:"GetMemberInfo"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetMemberInfo(class As %String, member As %String, ByRef mtype As %String) As %String [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns information about what kind of member member is."}),"\n",(0,n.jsx)(s.p,{children:"Upon return, mtype contains either a property type, in the case of a property, or a return type in the case of a method. Possible return values include:"}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,n.jsxs)(s.table,{children:[(0,n.jsx)(s.thead,{children:(0,n.jsxs)(s.tr,{children:[(0,n.jsx)(s.th,{children:(0,n.jsx)(s.strong,{children:"LITERAL"})}),(0,n.jsx)(s.th,{children:"A literal property"})]})}),(0,n.jsxs)(s.tbody,{children:[(0,n.jsxs)(s.tr,{children:[(0,n.jsx)(s.td,{children:(0,n.jsx)(s.strong,{children:"MULTIDIM"})}),(0,n.jsx)(s.td,{children:"A multidimensional property"})]}),(0,n.jsxs)(s.tr,{children:[(0,n.jsx)(s.td,{children:(0,n.jsx)(s.strong,{children:"PERSISTENT"})}),(0,n.jsx)(s.td,{children:"A reference property"})]}),(0,n.jsxs)(s.tr,{children:[(0,n.jsx)(s.td,{children:(0,n.jsx)(s.strong,{children:"SERIAL"})}),(0,n.jsx)(s.td,{children:"A serial property"})]}),(0,n.jsxs)(s.tr,{children:[(0,n.jsx)(s.td,{children:(0,n.jsx)(s.strong,{children:"METHOD"})}),(0,n.jsx)(s.td,{children:"A method"})]}),(0,n.jsxs)(s.tr,{children:[(0,n.jsx)(s.td,{children:(0,n.jsx)(s.strong,{children:"ID"})}),(0,n.jsx)(s.td,{children:"The %Id() method"})]}),(0,n.jsxs)(s.tr,{children:[(0,n.jsx)(s.td,{children:(0,n.jsx)(s.strong,{children:"STREAM"})}),(0,n.jsx)(s.td,{children:"A stream attribute"})]}),(0,n.jsxs)(s.tr,{children:[(0,n.jsx)(s.td,{children:(0,n.jsx)(s.strong,{children:"BSTREAM"})}),(0,n.jsx)(s.td,{children:"A binary stream attribute"})]}),(0,n.jsxs)(s.tr,{children:[(0,n.jsx)(s.td,{children:(0,n.jsx)(s.strong,{children:"LIST"})}),(0,n.jsx)(s.td,{children:"A list of datatypes attribute"})]}),(0,n.jsxs)(s.tr,{children:[(0,n.jsx)(s.td,{children:(0,n.jsx)(s.strong,{children:"LISTOBJ"})}),(0,n.jsx)(s.td,{children:"A list of objects attribute"})]}),(0,n.jsxs)(s.tr,{children:[(0,n.jsx)(s.td,{children:(0,n.jsx)(s.strong,{children:'""'})}),(0,n.jsx)(s.td,{children:"Not a member"})]})]})]}),"\n",(0,n.jsx)(s.h3,{id:"getreferenceinfo",children:"GetReferenceInfo"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetReferenceInfo(class As %String, member As %String, ByRef mtype As %String, ByRef mname As %String, ByRef mcontainer As %String) As %String [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This returns the same information as getMemberInfo except that the information pertains to the member referenced by member."}),"\n",(0,n.jsx)(s.p,{children:"mname is the referenced member name."}),"\n",(0,n.jsx)(s.p,{children:"mcontainer is name of the class containing the member. (equal to class if member is not an extended reference."}),"\n",(0,n.jsx)(s.h3,{id:"getvalueexpression",children:"GetValueExpression"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetValueExpression(class As %String, member As %String, oref As %String, mode As %String = "HTML", listmode As %String = "S", pagelanguage As %String = "cache", js As %Boolean = 0) As %String [ Internal, ProcedureBlock = 1 ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Used by form tag to get the value of the VALUE attribute for an HTML control bound to this member. oref is the name of the oref variable."}),"\n",(0,n.jsx)(s.h3,{id:"getsetcode",children:"GetSetCode"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetSetCode(class As %String, member As %String, oref As %String, varname As %String, caption As %String, testcode As %String = "", listmode As %String = "") As %String [ Internal ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Used by form tag to return a code snippet containing a code snippet to set the value of the specified class member. oref is the name of the oref variable. varname is the name of the variable containing the value to set into the member. caption is name used in the generated error message."}),"\n",(0,n.jsx)(s.p,{children:"As caption is used to create a JavaScript message, it needs to have any special characters quoted accordingly."}),"\n",(0,n.jsx)(s.h3,{id:"getlogicalvalue",children:"GetLogicalValue"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetLogicalValue(class As %String, member As %String, value As %String, varname As %String) As %String [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Used by the csp:search tag to return a code snippet to retrieve the logical value of the specified class member. Constructs a command to convert the display value in the variable named varname to a logical value and save it in the variable named value."}),"\n",(0,n.jsx)(s.h3,{id:"hasd2l",children:"HasD2L"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HasD2L(class As %String, prop As %String) As %Boolean [ CodeMode = expression, Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns true if property prop has a DisplayToLogical method."}),"\n",(0,n.jsx)(s.h3,{id:"hasl2d",children:"HasL2D"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HasL2D(class As %String, prop As %String) As %Boolean [ CodeMode = expression, Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns true if property prop has a LogicalToDisplay method."}),"\n",(0,n.jsx)(s.h3,{id:"getelementchildren",children:"GetElementChildren"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetElementChildren(parent As %CSP.Element, ByRef children) [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Recursively builds an array of orefs to all the children of element parent. Text atoms are not included."}),"\n",(0,n.jsx)(s.h3,{id:"escapestream",children:"EscapeStream"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod EscapeStream(stream As %AbstractStream, mode As %String = "HTML") As %String [ Internal, ProcedureBlock = 1 ]\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Writes out the contents of the stream as quoted text.",(0,n.jsx)(s.br,{}),"\nmode can be HTML or JS."]}),"\n",(0,n.jsx)(s.h3,{id:"listtodisplay",children:"ListToDisplay"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ListToDisplay(list As %Collection.ListOfDT, delim As %String = {$char(13,10)}, mode As %String = "HTML") As %String [ Internal, ProcedureBlock = 1 ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Gets the contents of a list of datatypes as a delimiter separated string"}),"\n",(0,n.jsx)(s.h3,{id:"gethtmlforfield",children:"GetHTMLForField"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetHTMLForField(class As %String, bind As %String, readonly As %Boolean = 0, precaption As %String = "<b>", postcaption As %String = ":</b>") As %String [ Internal ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Returns the HTML (as a table row) for a control for the specified binding. !!! pass in query/field for reference combo!"}),"\n",(0,n.jsx)(s.h3,{id:"test",children:"Test"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Test() [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Test method"}),"\n",(0,n.jsx)(s.h3,{id:"ismethod",children:"IsMethod"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsMethod(class As %String, prop As %String) As %String [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:'Does the string prop represent a method? If not return "", if so return the name of the method.'}),"\n",(0,n.jsx)(s.h3,{id:"getpropertytype",children:"GetPropertyType"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetPropertyType(class As %String, prop As %String) As %String [ CodeMode = expression, Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return a string containing the data type (class name) for property prop of class class."}),"\n",(0,n.jsx)(s.h3,{id:"ispropertyrequired",children:"IsPropertyRequired"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsPropertyRequired(class As %String, prop As %String) As %Boolean [ CodeMode = expression, Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns whether property prop of class class is a required field."}),"\n",(0,n.jsx)(s.h3,{id:"ispropertyreadonly",children:"IsPropertyReadOnly"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsPropertyReadOnly(class As %String, prop As %String) As %Boolean [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns whether property prop of class class is read only."}),"\n",(0,n.jsx)(s.h3,{id:"ispropertystream",children:"IsPropertyStream"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsPropertyStream(class As %String, prop As %String) As %Boolean [ CodeMode = expression, Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns whether property prop of class class is a stream."}),"\n",(0,n.jsx)(s.h3,{id:"ispropertysearchable",children:"IsPropertySearchable"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsPropertySearchable(class As %String, prop As %String) As %Boolean [ Internal, ProcedureBlock = 1 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns whether property prop of class class has an index defined."}),"\n",(0,n.jsx)(s.h3,{id:"getpropertymaxlen",children:"GetPropertyMaxLen"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetPropertyMaxLen(class As %String, prop As %String) As %String [ CodeMode = expression, Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:'Return the value of the MAXLEN parameter (or "" if not defined) for property prop of class class.'}),"\n",(0,n.jsx)(s.h3,{id:"getpropertycollection",children:"GetPropertyCollection"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetPropertyCollection(class As %String, prop As %String) As %String [ CodeMode = expression, Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return a string indicating whether property prop of class class is a collection."}),"\n",(0,n.jsx)(s.h3,{id:"getpropertycaption",children:"GetPropertyCaption"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetPropertyCaption(class As %String, prop As %String) As %String [ CodeMode = expression, Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return a string containing the caption for property prop of class class."}),"\n",(0,n.jsx)(s.h3,{id:"getpropertyparam",children:"GetPropertyParam"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetPropertyParam(class As %String, prop As %String, param As %String) As %String [ CodeMode = expression, Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return a string containing value of parameter param for property prop of class class."})]})}function c(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>a,x:()=>i});var n=r(96540);const t={},l=n.createContext(t);function a(e){const s=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),n.createElement(l.Provider,{value:s},e.children)}}}]);