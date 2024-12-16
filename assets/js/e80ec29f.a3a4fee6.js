"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[90999],{87721:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>a,default:()=>c,frontMatter:()=>t,toc:()=>l});var r=s(74848),i=s(28453);const t={pagination_prev:null,pagination_next:null},a="%CSP.CompilerContext",l=[{value:"Properties",id:"properties",level:2},{value:"IsBasic",id:"isbasic",level:3},{value:"PageLanguage",id:"pagelanguage",level:3},{value:"InScript",id:"inscript",level:3},{value:"keyArray",id:"keyarray",level:3},{value:"propArray",id:"proparray",level:3},{value:"qstruct",id:"qstruct",level:3},{value:"Methods",id:"methods",level:2},{value:"Get",id:"get",level:3},{value:"Set",id:"set",level:3},{value:"IsDefined",id:"isdefined",level:3},{value:"Next",id:"next",level:3},{value:"remove",id:"remove",level:3},{value:"clear",id:"clear",level:3},{value:"dump",id:"dump",level:3},{value:"load",id:"load",level:3},{value:"GetByKey",id:"getbykey",level:3},{value:"SetByKey",id:"setbykey",level:3},{value:"RemoveByKey",id:"removebykey",level:3},{value:"IsDefinedByKey",id:"isdefinedbykey",level:3},{value:"NextByKey",id:"nextbykey",level:3}];function o(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"cspcompilercontext",children:"%CSP.CompilerContext"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.CompilerContext Extends %RegisteredObject [ Not ProcedureBlock, System = 3 ]\n"})}),"\n",(0,r.jsx)(n.p,{children:'This class represents the context of the current CSP compile. This class is primarily a set of name/value pairs where the names can be thought of as "properties".'}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"isbasic",children:"IsBasic"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property IsBasic As %Boolean;\n"})}),"\n",(0,r.jsx)(n.p,{children:"IsBasic is true (=1) if the current CSP page is written in either Cache Basic or MV Basic. The IsBasic should not be modified by user code."}),"\n",(0,r.jsx)(n.h3,{id:"pagelanguage",children:"PageLanguage"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property PageLanguage As %String;\n"})}),"\n",(0,r.jsx)(n.p,{children:'PageLanguage is language used to implement the current CSP page. Possible values are "cache", "basic" and "mvbasic". The PageLanguage should not be modified by user code.'}),"\n",(0,r.jsx)(n.h3,{id:"inscript",children:"InScript"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property InScript As %Boolean;\n"})}),"\n",(0,r.jsx)(n.p,{children:"The InScript property is true inside of an unrecognized script tag."}),"\n",(0,r.jsx)(n.h3,{id:"keyarray",children:"keyArray"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property keyArray As %String [ Internal, MultiDimensional, Private ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"This property is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method."}),"\n",(0,r.jsx)(n.h3,{id:"proparray",children:"propArray"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property propArray As %String [ Internal, MultiDimensional ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"This property is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method."}),"\n",(0,r.jsx)(n.h3,{id:"qstruct",children:"qstruct"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property qstruct As %String [ Internal, MultiDimensional ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"This property is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method."}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"get",children:"Get"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method Get(property As %String, default As %String = "") As %String [ CodeMode = expression, Final ]\n'})}),"\n",(0,r.jsx)(n.p,{children:'Return the value of property property. If the property is not defined, returns a null string ("").'}),"\n",(0,r.jsx)(n.h3,{id:"set",children:"Set"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method Set(property As %String, value As %String) [ Final ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Set the value of property property to value."}),"\n",(0,r.jsx)(n.h3,{id:"isdefined",children:"IsDefined"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method IsDefined(property As %String) As %Boolean [ CodeMode = expression, Final ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Tests if property property is defined."}),"\n",(0,r.jsx)(n.h3,{id:"next",children:"Next"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method Next(property As %String) As %String [ CodeMode = expression, Final ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Get the name of the next property."}),"\n",(0,r.jsx)(n.h3,{id:"remove",children:"remove"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method remove(property As %String) [ Final ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Removes property property from this object."}),"\n",(0,r.jsx)(n.h3,{id:"clear",children:"clear"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method clear() [ Final ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Clear the contents of this object."}),"\n",(0,r.jsx)(n.h3,{id:"dump",children:"dump"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method dump() [ Final, Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Display contents of this object to the console. This method is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method."}),"\n",(0,r.jsx)(n.h3,{id:"load",children:"load"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method load(array) [ Final, Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Load this object from the array. This method is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method."}),"\n",(0,r.jsx)(n.h3,{id:"getbykey",children:"GetByKey"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method GetByKey(key As %String, name As %String, default As %String = "") As %String [ CodeMode = expression, Final ]\n'})}),"\n",(0,r.jsx)(n.p,{children:'Return the value associated with key and name. All key\'s used by CSP rules begin with "%". If the value is not defined, returns a null string ("").'}),"\n",(0,r.jsx)(n.h3,{id:"setbykey",children:"SetByKey"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method SetByKey(key As %String, name As %String, value As %String) [ Final ]\n"})}),"\n",(0,r.jsx)(n.p,{children:'Set the value associated with key and name. All key\'s used by CSP rules begin with "%".'}),"\n",(0,r.jsx)(n.h3,{id:"removebykey",children:"RemoveByKey"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method RemoveByKey(key As %String, name As %String) [ Final ]\n"})}),"\n",(0,r.jsx)(n.p,{children:'Remove the value associated with key and name. All key\'s used by CSP rules begin with "%".'}),"\n",(0,r.jsx)(n.h3,{id:"isdefinedbykey",children:"IsDefinedByKey"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method IsDefinedByKey(key As %String, name As %String) As %Boolean [ CodeMode = expression, Final ]\n"})}),"\n",(0,r.jsx)(n.p,{children:'Test if the value associated with key and name is defined. All key\'s used by CSP rules begin with "%".'}),"\n",(0,r.jsx)(n.h3,{id:"nextbykey",children:"NextByKey"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method NextByKey(key As %String, name As %String) As %String [ CodeMode = expression, Final ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Get the next name for key."})]})}function c(e={}){const{wrapper:n}={...(0,i.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>a,x:()=>l});var r=s(96540);const i={},t=r.createContext(i);function a(e){const n=r.useContext(t);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function l(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:a(e.components),r.createElement(t.Provider,{value:n},e.children)}}}]);