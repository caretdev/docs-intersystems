"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[81697],{99438:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>i,default:()=>l,frontMatter:()=>a,toc:()=>c});var t=n(74848),r=n(28453);const a={pagination_prev:null,pagination_next:null},i="%Api.Atelier.v2",c=[{value:"XDatas",id:"xdatas",level:2},{value:"UrlMap",id:"urlmap",level:3},{value:"Methods",id:"methods",level:2},{value:"GetCSPDebugId",id:"getcspdebugid",level:3},{value:"RunDebugger",id:"rundebugger",level:3},{value:"GetDoc",id:"getdoc",level:3},{value:"PutDoc",id:"putdoc",level:3},{value:"CheckSourceControlEdit",id:"checksourcecontroledit",level:3},{value:"GetMacroList",id:"getmacrolist",level:3},{value:"GetMacroSignature",id:"getmacrosignature",level:3},{value:"GetMacroLocation",id:"getmacrolocation",level:3},{value:"GetMacroDefinition",id:"getmacrodefinition",level:3},{value:"GetMacroExpansion",id:"getmacroexpansion",level:3},{value:"Search",id:"search",level:3},{value:"GetSASchemaDefinition",id:"getsaschemadefinition",level:3}];function o(e){const s={a:"a",br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"apiatelierv2",children:"%Api.Atelier.v2"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Api.Atelier.v2 Extends %Api.Atelier.v1\n"})}),"\n",(0,t.jsx)(s.p,{children:"%Api.Atelier.v2 provides version 2 APIs for Atelier"}),"\n",(0,t.jsx)(s.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,t.jsx)(s.h3,{id:"urlmap",children:"UrlMap"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]\n'})}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"getcspdebugid",children:"GetCSPDebugId"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetCSPDebugId() As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method returns an id for use with CSP debugging"}),"\n",(0,t.jsxs)(s.p,{children:["GET ",(0,t.jsx)(s.a,{href:"http://localhost:57772/api/atelier/v2/%25SYS/cspdebugid",children:"http://localhost:57772/api/atelier/v2/%25SYS/cspdebugid"})]}),"\n",(0,t.jsx)(s.p,{children:"HTTP Codes returned:-"}),"\n",(0,t.jsxs)(s.p,{children:["HTTP 200 if OK",(0,t.jsx)(s.br,{}),"\nHTTP 500 if an error occurs (details will be in status error array)"]}),"\n",(0,t.jsxs)(s.p,{children:["Returned content is an integer debug identifier",(0,t.jsx)(s.br,{}),'\n{ "status": { "errors": [], "summary": "" }, "console": [], "result": { "content": { id: NNNNNN } } }']}),"\n",(0,t.jsx)(s.h3,{id:"rundebugger",children:"RunDebugger"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod RunDebugger() As %Status\n"})}),"\n",(0,t.jsx)(s.h3,{id:"getdoc",children:"GetDoc"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetDoc(pNamespace As %String, pDocName As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method returns the text for the named document and namespace."}),"\n",(0,t.jsx)(s.p,{children:"HTTP Codes returned:-"}),"\n",(0,t.jsxs)(s.p,{children:["HTTP 200 if OK",(0,t.jsx)(s.br,{}),"\nHTTP 304 if the document has not been modified (see ",(0,t.jsx)(s.a,{href:"https://en.wikipedia.org/wiki/HTTP%5C_ETag",children:"https://en.wikipedia.org/wiki/HTTP\\_ETag"}),")",(0,t.jsx)(s.br,{}),"\nHTTP 400 if the named resource is not a valid document name",(0,t.jsx)(s.br,{}),"\nHTTP 404 if the document does not exist",(0,t.jsx)(s.br,{}),"\nHTTP 500 if an unxpected error occurs (details will be in status error array)"]}),"\n",(0,t.jsxs)(s.p,{children:["Return content will contain a document object.",(0,t.jsx)(s.br,{}),"\nErrors pertaining to the document will be in the status property of the document object. If source control hooks are enabled for the namespace any console output generated by the hook will be captured and returned as an array of lines in the 'console' array."]}),"\n",(0,t.jsx)(s.p,{children:"The result contains the name of the requested document, the database where it is stored, its timestamp and category (CLS - class, RTN - routine, CSP - csp, OTH - other), as well as the document contents which are returned in an array."}),"\n",(0,t.jsxs)(s.p,{children:["For text documents this will be an array of strings and the 'enc' json field will be set to false.",(0,t.jsx)(s.br,{}),"\nFor binary documents this will be an array of base64 encoded chunks and the 'enc' field will be set to true."]}),"\n",(0,t.jsx)(s.p,{children:"The URL parameter ?binary=1 can be passed to force the document to be encoded as binary."}),"\n",(0,t.jsx)(s.p,{children:"The URL parameter ?storageOnly=1 can be passed to return only the storage portion of a class."}),"\n",(0,t.jsx)(s.p,{children:'The URL parameter ?format= can be passed to specify the source format. The choices are "udl" (the default) or "xml".'}),"\n",(0,t.jsx)(s.p,{children:"If a 'soft' error occurs such as a 'document does not exist', additional information can be found in the 'status' field of the result. Examples of other soft errors are 'file is locked' etc."}),"\n",(0,t.jsx)(s.p,{children:"Here is an example of the result of asking for %Activate.Enum.cls"}),"\n",(0,t.jsx)(s.p,{children:'{   "status": {     "errors": [],     "summary": ""   },   "console": [],   "result": {     "name": "%Activate.Enum.cls",     "db": "IRISLIB",     "ts": "2016-01-04 14:00:04.000",     "cat": "CLS",     "status": "",     "enc": false,     "content": [       "/// This class is the superclass for all enumerated types generated from",       "/// a type library",       "Class %Activate.Enum Extends %Integer [ Not ProcedureBlock, System = 3 ]",       "{",       "",       "}",       ""     ]   } }'}),"\n",(0,t.jsx)(s.p,{children:"and here is the result with ?binary=1"}),"\n",(0,t.jsx)(s.p,{children:'{   "status": {     "errors": [],     "summary": ""   },   "console": [],   "result": {     "name": "%Activate.Enum.cls",     "db": "IRISLIB",     "ts": "2016-01-04 14:00:04.000",     "cat": "CLS",     "status": "",     "enc": true,     "content": [       "Ly8vIFRoaXMgY2xhc3MgaXMgdGhlIHN1cGVyY2xhc3MgZm9yIGFsbCBlbnVtZXJhdGVkIHR5cGVzIGdlbmVyYXRlZCBmcm9tCi8vLyBhIHR5cGUgbGlicmFyeQpDbGFzcyAlQWN0aXZhdGUuRW51bSBFeHRlbmRzICVJbnRlZ2VyIFsgTm90IFByb2NlZHVyZUJsb2NrLCBTeXN0ZW0gPSAzIF0KewoKfQo="     ]   } }'}),"\n",(0,t.jsx)(s.h3,{id:"putdoc",children:"PutDoc"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod PutDoc(pNamespace As %String, pDocName As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method saves the supplied document"}),"\n",(0,t.jsx)(s.p,{children:"HTTP Codes returned:-"}),"\n",(0,t.jsxs)(s.p,{children:["HTTP 201 if created",(0,t.jsx)(s.br,{}),"\nHTTP 400 if the resource name is an invalid document name",(0,t.jsx)(s.br,{}),"\nHTTP 404 if the resource is not found",(0,t.jsx)(s.br,{}),"\nHTTP 409 if a conflict between server and client versions is detected",(0,t.jsx)(s.br,{}),"\nHTTP 415 if not passed text/plain as content type",(0,t.jsx)(s.br,{}),"\nHTTP 425 if the document is locked and cannot be written to",(0,t.jsx)(s.br,{}),"\nHTTP 500 if an error occurs (details will be in status error array)"]}),"\n",(0,t.jsxs)(s.p,{children:["Return content will be a document object.",(0,t.jsx)(s.br,{}),"\nErrors pertaining to the document will be in the status property of the document object."]}),"\n",(0,t.jsxs)(s.p,{children:["The URL parameter ?ignoreConflict=1 can be passed to bypass ETAG checking (see reference",(0,t.jsx)(s.br,{}),"\nabove in 'GetDoc') and force the document to be written on the server."]}),"\n",(0,t.jsxs)(s.p,{children:["Note that if the text on the server is changed during the save process (for example",(0,t.jsx)(s.br,{}),"\nby a source control hook) the new text will be returned in the content array",(0,t.jsx)(s.br,{}),"\nof the returned document."]}),"\n",(0,t.jsx)(s.p,{children:"Here is an example of a PUT for the document xyz.mac"}),"\n",(0,t.jsx)(s.p,{children:'{  "enc": false,  "content": [    "ROUTINE xyz",    "xyz ;",    "   w "hello""    ] }'}),"\n",(0,t.jsx)(s.p,{children:"and the corresponding response :-"}),"\n",(0,t.jsx)(s.p,{children:'{   "status": {     "errors": [],     "summary": ""   },   "console": [   ],   "result": {     "name": "xyz.mac",     "db": "IRISSYS",     "ts": "2016-01-12 17:18:29.332",     "cat": "RTN",     "status": "",     "enc": false,     "content": []   } }'}),"\n",(0,t.jsx)(s.h3,{id:"checksourcecontroledit",children:"CheckSourceControlEdit"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CheckSourceControlEdit(pName As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"getmacrolist",children:"GetMacroList"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetMacroList(pNamespace As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Input request:"}),"\n",(0,t.jsx)(s.p,{children:'{   "docname": "MyClass.cls",   "hash": "XXXX",   "cursor": "XXX",   "superclasses": ["class1",...],   "includes": ["include1",...],   "includegenerators": ["generator1",...],   "imports": ["package1",...],   "mode": "generator" or "" }'}),"\n",(0,t.jsxs)(s.p,{children:['"hash" is a null string or the value returned from a previous call for this document. If the server contents have not changed, the result will be this same hash value and nothing else.',(0,t.jsx)(s.br,{}),'\n"cursor" is a null string or the value returned from the previous call.']}),"\n",(0,t.jsx)(s.p,{children:"Returned content:"}),"\n",(0,t.jsx)(s.p,{children:'{   "status": { "errors": [],  "summary": "" },   "console": [],   "result": {     "content": {       "hash": "XXXX",       "cursor": "XXXX",       "macros": ["macro1",...]     }   } }'}),"\n",(0,t.jsxs)(s.p,{children:['"hash" is a value indicating the current contents of the server. If this value is passed in the next request for this document and the server contents have not changed, nothing needs to be returned.',(0,t.jsx)(s.br,{}),'\n"cursor" will be the null string if the macro list is complete. If it is not null, another call should be made, passing this cursor value, to get the next part of the macro list.']}),"\n",(0,t.jsx)(s.h3,{id:"getmacrosignature",children:"GetMacroSignature"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetMacroSignature(pNamespace As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Input request:"}),"\n",(0,t.jsx)(s.p,{children:'{   "docname": "MyClass.cls",   "macroname": "mymac",   "superclasses": ["class1",...],   "includes": ["include1",...],   "includegenerators": ["generator1",...],   "imports": ["package1",...],   "mode": "generator" or "" }'}),"\n",(0,t.jsx)(s.p,{children:"Returned content:"}),"\n",(0,t.jsx)(s.p,{children:'{   "status": { "errors": [],  "summary": "" },   "console": [],   "result": {     "content": {       "signature": "(arg1,arg2)"     }   } }'}),"\n",(0,t.jsx)(s.h3,{id:"getmacrolocation",children:"GetMacroLocation"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetMacroLocation(pNamespace As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Input request:"}),"\n",(0,t.jsx)(s.p,{children:'{   "docname": "MyClass.cls",   "macroname": "mymac",   "superclasses": ["class1",...],   "includes": ["include1",...],   "includegenerators": ["generator1",...],   "imports": ["package1",...],   "mode": "generator" or "" }'}),"\n",(0,t.jsx)(s.p,{children:"Returned content:"}),"\n",(0,t.jsx)(s.p,{children:'{   "status": { "errors": [],  "summary": "" },   "console": [],   "result": {     "content": {       "document": "name.inc",       "line": lineno     }   } }'}),"\n",(0,t.jsx)(s.h3,{id:"getmacrodefinition",children:"GetMacroDefinition"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetMacroDefinition(pNamespace As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Input request:"}),"\n",(0,t.jsx)(s.p,{children:'{   "docname": "MyClass.cls",   "macroname": "mymac",   "superclasses": ["class1",...],   "includes": ["include1",...],   "includegenerators": ["generator1",...],   "imports": ["package1",...],   "mode": "generator" or "" }'}),"\n",(0,t.jsx)(s.p,{children:"Returned content:"}),"\n",(0,t.jsx)(s.p,{children:'{   "status": { "errors": [],  "summary": "" },   "console": [],   "result": {     "content": {       "definition": ["line1","line2",...]     }   } }'}),"\n",(0,t.jsx)(s.h3,{id:"getmacroexpansion",children:"GetMacroExpansion"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetMacroExpansion(pNamespace As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Input request:"}),"\n",(0,t.jsx)(s.p,{children:'{   "docname": "MyClass.cls",   "macroname": "mymac",   "arguments": "(arg1,arg2,...)",   "superclasses": ["class1",...],   "includes": ["include1",...],   "includegenerators": ["generator1",...],   "imports": ["package1",...],   "mode": "generator" or "" }'}),"\n",(0,t.jsx)(s.p,{children:"Returned content:"}),"\n",(0,t.jsx)(s.p,{children:'{   "status": { "errors": [],  "summary": "" },   "console": [],   "result": {     "content": {       "expansion": ["line1","line2",...]     }   } }'}),"\n",(0,t.jsx)(s.h3,{id:"search",children:"Search"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Search(pNamespace As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"This method searches a set of documents using a Regular Expression or a text string."}),"\n",(0,t.jsx)(s.p,{children:"HTTP Codes returned:-"}),"\n",(0,t.jsxs)(s.p,{children:["HTTP 200 if request is OK",(0,t.jsx)(s.br,{}),"\nHTTP 400 if there are missing arguments"]}),"\n",(0,t.jsx)(s.p,{children:"Input request:"}),"\n",(0,t.jsx)(s.p,{children:"GET localhost:57772/api/atelier/v2/:namespace/action/search?query=expr&documents=list&sys=1&gen=1&regex=1&max=200"}),"\n",(0,t.jsxs)(s.p,{children:["Required arguments are:",(0,t.jsx)(s.br,{}),"\nquery = the search expression, a regular expression or a plain text string",(0,t.jsx)(s.br,{}),"\ndocuments = a comma-separated list of documents or masks with the * wild card"]}),"\n",(0,t.jsxs)(s.p,{children:["Optional arguments are:",(0,t.jsx)(s.br,{}),"\nregex = 0 or 1 (default 1) whether the query string is a regular expression or not",(0,t.jsx)(s.br,{}),"\nsys = 0 or 1 (default 0) include sytem documents in the search",(0,t.jsx)(s.br,{}),"\ngen = 0 or 1 (default 0) include generated documents in the search",(0,t.jsx)(s.br,{}),"\nmax = nnn (default 200) maxinum number of results to return"]}),"\n",(0,t.jsx)(s.p,{children:"The result is returned as the console output of the search and as a JSON array."}),"\n",(0,t.jsx)(s.p,{children:"Example input to search for the word Email in all classes and MAC routines:"}),"\n",(0,t.jsxs)(s.p,{children:["GET localhost:57772/api/atelier/v2/SAMPLES/action/search?query=.",(0,t.jsx)(s.em,{children:"\\bEmail\\b."}),"&documents=",(0,t.jsx)(s.em,{children:".cls,"}),".mac"]}),"\n",(0,t.jsx)(s.p,{children:"Returned content (some is omitted here):"}),"\n",(0,t.jsxs)(s.p,{children:['{   "status": { "errors": [],  "summary": "" },   "console": [     "",     "Searching for \'.',(0,t.jsx)(s.em,{children:"\\bEmail\\b."}),"' in '",(0,t.jsx)(s.em,{children:".cls,"}),'.mac\'",     "Cinema.Utils.cls(SendEmail+28): Quit "Email confirmation has been sent to " _ Addr",     "Wasabi.Data.Employee.cls(Email)[Type]: Wasabi.Common.DT.Email",     "Wasabi.Data.Employee.cls(CopyFrom+26): set ..Email = employee.Email",     "ZAUTHENTICATE.mac(175): Properties("EmailAddress") - Email address",     "Found 11 occurrence/s in 7 file/s."   ],   "result": [     {       "doc": "Cinema.Utils.cls",       "matches": [         {          "member": "SendEmail",          "line": 28,          "text": "Quit "Email confirmation has been sent to " _ Addr"         }       ]     },     {       "doc": "Wasabi.Data.Employee.cls",       "matches": [         {          "member": "Email",          "attr": "Type",          "text": "Wasabi.Common.DT.Email"         },         {          "member": "CopyFrom",          "line": 26,          "text": "set ..Email = employee.Email"         }       ]     },     {       "doc": "ZAUTHENTICATE.mac",       "matches": [         {          "line": "175",          "text": "Properties("EmailAddress") - Email address"         }       ]     }   ] }']}),"\n",(0,t.jsx)(s.h3,{id:"getsaschemadefinition",children:"GetSASchemaDefinition"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetSASchemaDefinition(pNamespace As %String, pUrl As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["This method returns the textual definition of a Studio Assist Schema. Pass the url of the schema namespace to retrieve the definition.",(0,t.jsx)(s.br,{}),"\nIf the definition does not exist an HTTP 404 Not Found will be returned.",(0,t.jsx)(s.br,{}),"\nIf the definition does exist but needs to be recalculated, HTTP 202 Acepted will be returned and the location header will point to the url which should be called in the future to retrieve the value.",(0,t.jsx)(s.br,{}),"\nIf the definition checksum matches the value passed in the IF_NONE_MATCH header, an HTTP 304 Not Modified will be returned.",(0,t.jsx)(s.br,{}),"\nIf the definition is up to date it will be returned as an array of lines in the result and the ETAG header will be set with the current checksum."]}),"\n",(0,t.jsx)(s.p,{children:"Input request:"}),"\n",(0,t.jsxs)(s.p,{children:["GET localhost:57772/api/atelier/v2/%SYS/saschema/",(0,t.jsx)(s.a,{href:"http://www.intersystems.com/urlmap",children:"http://www.intersystems.com/urlmap"})]}),"\n",(0,t.jsx)(s.p,{children:"Returned content:"}),"\n",(0,t.jsx)(s.p,{children:'{   "status": { "errors": [],  "summary": "" },   "console": [],   "result": [...] }'})]})}function l(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>i,x:()=>c});var t=n(96540);const r={},a=t.createContext(r);function i(e){const s=t.useContext(a);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),t.createElement(a.Provider,{value:s},e.children)}}}]);