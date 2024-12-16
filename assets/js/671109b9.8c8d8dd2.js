"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[29618],{32425:(e,t,r)=>{r.r(t),r.d(t,{contentTitle:()=>i,default:()=>c,frontMatter:()=>a,toc:()=>o});var s=r(74848),n=r(28453);const a={pagination_prev:null,pagination_next:null},i="%ZEN.Auxiliary.jsonMDXProvider",o=[{value:"Properties",id:"properties",level:2},{value:"OnGetMDX",id:"ongetmdx",level:3},{value:"OnCreateResultSet",id:"oncreateresultset",level:3},{value:"OnExecuteResultSet",id:"onexecuteresultset",level:3},{value:"recordCount",id:"recordcount",level:3},{value:"pivotTable",id:"pivottable",level:3},{value:"mdxQuery",id:"mdxquery",level:3},{value:"queryKey",id:"querykey",level:3},{value:"cubeKey",id:"cubekey",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawJSON",id:"drawjson",level:3},{value:"%Execute",id:"execute",level:3},{value:"%WriteJSONFromMDX",id:"writejsonfrommdx",level:3},{value:"%WriteJSONStreamFromMDX",id:"writejsonstreamfrommdx",level:3},{value:"%WriteJSONFromPivot",id:"writejsonfrompivot",level:3},{value:"%WriteJSONStreamFromPivot",id:"writejsonstreamfrompivot",level:3},{value:"%OnGetMDX",id:"ongetmdx-1",level:3},{value:"%OnCreateResultSet",id:"oncreateresultset-1",level:3},{value:"%OnExecuteResultSet",id:"onexecuteresultset-1",level:3},{value:"%ConstructNewDynamicArray",id:"constructnewdynamicarray",level:3},{value:"%ConstructNewDynamicObject",id:"constructnewdynamicobject",level:3},{value:"%StatusToDynamicObject",id:"statustodynamicobject",level:3},{value:"%OnNew",id:"onnew",level:3},{value:"redirects",id:"redirects",level:3},{value:"%ObjectToJSON",id:"objecttojson",level:3}];function l(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"zenauxiliaryjsonmdxprovider",children:"%ZEN.Auxiliary.jsonMDXProvider"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %ZEN.Auxiliary.jsonMDXProvider Extends (%ZEN.Auxiliary.altJSONProvider, %DeepSee.Component.pivotTable) [ Deprecated ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["A version of the JSON provider that can use an MDX query or the full name of a stored pivot table to supply data that is served to the client in JSON format. This can be used in the same manner as the jsonProvider component.",(0,s.jsx)(t.br,{}),"\nFor example, placing this within your page definition: `` would cause the given MDX statement to execute when the page is requested and the results of the query to be written to the page in JSON format: ",(0,s.jsx)(t.code,{children:'o.content = { "AxesInfo": { }, "Info": { "ColCount":0, "Cube":"HOLEFOODS", "CubeKey":"HOLEFOODS", "Error": { "ErrorCode":"", "ErrorMessage":"" }, "ListingSource":"", "MDXText":"SELECT FROM HOLEFOODS", "QueryKey":"en558256763", "QueryType":"SELECT", "ResultsComplete":1, "RowCount":0, "TimeStamp":"2015-05-12 13:23:58" }, "Result": { "Axes":[ ], "CellData":[ { "%ID":"Cell_1", "Format":"", "ValueFormatted":"1,000", "ValueLogical":1000 } ] } };'})," The JSON content object will contain three major branches AxesInfo, Info, and Result, each of which contain an array of objects that correspond to query structure, metadata, and actual results as returned by the MDX statement.",(0,s.jsx)(t.br,{}),"\nIf you need more control over the MDX query, you can use the OnGetMDX callback method.",(0,s.jsx)(t.br,{}),"\nThis component ignores all of the data source callback methods inherited from the jsonProvider class."]}),"\n",(0,s.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(t.h3,{id:"ongetmdx",children:"OnGetMDX"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property OnGetMDX As %ZEN.Datatype.delegator(FORMALSPEC = "&pParameters:%String,&pMDX:%String,pCriteria:%ZEN.proxyObject,&pPagingInfo:%String", RETURNTYPE = "%Status");\n'})}),"\n",(0,s.jsx)(t.p,{children:"This specifies a callback method that returns an MDX query (string) that will drive this provider. This is identical in behavior to (and replaces) the mdx property. The method can make it easier to create queries based on parameter values or search criteria passed via the criteria property."}),"\n",(0,s.jsx)(t.h3,{id:"oncreateresultset",children:"OnCreateResultSet"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property OnCreateResultSet As %ZEN.Datatype.delegator(FORMALSPEC = "*tSC:%Status,&pParms:%String", RETURNTYPE = "%DeepSee.ResultSet");\n'})}),"\n",(0,s.jsxs)(t.p,{children:["(optional) Name of Server-side callback method to call to create a %DeepSee.ResultSet object.",(0,s.jsx)(t.br,{}),"\nThis must be the name of a server-only method in the page class that contains this component."]}),"\n",(0,s.jsx)(t.h3,{id:"onexecuteresultset",children:"OnExecuteResultSet"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property OnExecuteResultSet As %ZEN.Datatype.delegator(FORMALSPEC = "pRS:%DeepSee.ResultSet,*tSC:%Status,&pParms:%String", RETURNTYPE = "%Boolean");\n'})}),"\n",(0,s.jsxs)(t.p,{children:["(optional) Name of Server-side callback method to call to execute the %DeepSee.ResultSet object.",(0,s.jsx)(t.br,{}),"\nThis must be the name of a server-only method in the page class that contains this table pane."]}),"\n",(0,s.jsx)(t.h3,{id:"recordcount",children:"recordCount"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property recordCount As %ZEN.Datatype.integer;\n"})}),"\n",(0,s.jsx)(t.p,{children:"If the provider is using server-side data paging, this is the total number of records."}),"\n",(0,s.jsx)(t.h3,{id:"pivottable",children:"pivotTable"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property pivotTable As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsx)(t.p,{children:"If defined, the provider can generate JSON results from a stored pivot definition"}),"\n",(0,s.jsx)(t.h3,{id:"mdxquery",children:"mdxQuery"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property mdxQuery As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsx)(t.p,{children:"If defined, the provider can generate JSON results from MDX query text"}),"\n",(0,s.jsx)(t.h3,{id:"querykey",children:"queryKey"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property queryKey As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsx)(t.p,{children:"If defined along with cubeKey, the provider can prepare a resultset of a query already in progress."}),"\n",(0,s.jsx)(t.h3,{id:"cubekey",children:"cubeKey"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property cubeKey As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsx)(t.p,{children:"If defined along with queryKey, the provider can prepare a resultset of a query already in progress."}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"drawjson",children:"%DrawJSON"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DrawJSON(pExecute = 1) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Draw JSON output."}),"\n",(0,s.jsx)(t.h3,{id:"execute",children:"%Execute"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %Execute() As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Execute the MDX query or pre-defined pivot table"}),"\n",(0,s.jsx)(t.h3,{id:"writejsonfrommdx",children:"%WriteJSONFromMDX"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %WriteJSONFromMDX(pVar As %String = "", pMDX As %String, pReturnStatus As %Boolean = 0, tProvider As %ZEN.Auxiliary.jsonMDXProvider = "") As %String\n'})}),"\n",(0,s.jsxs)(t.p,{children:["Utility method to allow direct use of JSON from a non-ZEN context (such as a CSP page).",(0,s.jsx)(t.br,{}),"\nThe JSON notation is written out to the current device. pVar is the optional name of the client-side javascript variable that refers to the JSON notation.",(0,s.jsx)(t.br,{}),"\npMDX is the MDX statement that is executed and provides the JSON content. Supported query types are SELECT, DRILLTHOUGH, DRILLFACTS.",(0,s.jsx)(t.br,{}),"\nFrom a CSP page, you could invoke the method as follows:",(0,s.jsx)(t.br,{}),"\n",(0,s.jsx)(t.code,{children:'#(##class(%ZEN.Auxiliary.jsonMDXProvider).%WriteJSONFromMDX("json","SELECT NON EMPTY [Channel].[H1].[Channel Name].Members ON 0 FROM [HOLEFOODS]"))#'})," pReturnStatus controls whether the method will return the execution status. By default this is set to 0 to quit an empty string for compatibility with the #()# syntax.",(0,s.jsx)(t.br,{}),"\ntProvider allows parameters to be passed in by creating an instance of the jsonMDXProvider and passing it into the method. The value of pMDX will be ignored in this case."]}),"\n",(0,s.jsx)(t.h3,{id:"writejsonstreamfrommdx",children:"%WriteJSONStreamFromMDX"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %WriteJSONStreamFromMDX(ByRef pStream As %Stream.Object, pMDX As %String, pRewindStream As %Boolean = 0, tProvider As %ZEN.Auxiliary.jsonMDXProvider = "") As %Status [ ProcedureBlock = 0 ]\n'})}),"\n",(0,s.jsxs)(t.p,{children:["Utility method to allow JSON output generated by the MDX query defined in pMDX to be written to the stream supplied in pStream from a general non-ZEN context. Note that pStream will be created if not supplied, hence the ByRef designation.",(0,s.jsx)(t.br,{}),"\npRewindStream controls whether the stream should be rewound after the data is written to it.",(0,s.jsx)(t.br,{}),"\ntProvider allows parameters to be passed in by creating an instance of the jsonMDXProvider and passing it into the method. The value of pMDX will be ignored in this case."]}),"\n",(0,s.jsx)(t.h3,{id:"writejsonfrompivot",children:"%WriteJSONFromPivot"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %WriteJSONFromPivot(pVar As %String = "", pPivot As %String, pReturnStatus As %Boolean = 0, tProvider As %ZEN.Auxiliary.jsonMDXProvider = "") As %String\n'})}),"\n",(0,s.jsxs)(t.p,{children:["Utility method to allow direct use of JSON from a non-ZEN context (such as a CSP page).",(0,s.jsx)(t.br,{}),"\nThe JSON notation is written out to the current device. pVar is the optional name of the client-side javascript variable that refers to the JSON notation.",(0,s.jsx)(t.br,{}),"\npPivot is the full name of a stored pivot that is executed and provides the JSON content.",(0,s.jsx)(t.br,{}),"\nFrom a CSP page, you could invoke the method as follows:",(0,s.jsx)(t.br,{}),"\n",(0,s.jsx)(t.code,{children:'#(##class(%ZEN.Auxiliary.jsonMDXProvider).%WriteJSONFromPivot(,"Use In Dashboards/ProductInfo"))#'})," pReturnStatus controls whether the method will return the execution status. By default this is set to 0 to quit an empty string for compatibility with the #()# syntax.",(0,s.jsx)(t.br,{}),"\ntProvider allows parameters to be passed in by creating an instance of the jsonMDXProvider and passing it into the method. The value of pPivot will be ignored in this case."]}),"\n",(0,s.jsx)(t.h3,{id:"writejsonstreamfrompivot",children:"%WriteJSONStreamFromPivot"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %WriteJSONStreamFromPivot(ByRef pStream As %Stream.Object, pPivot As %String, pRewindStream As %Boolean = 0, tProvider As %ZEN.Auxiliary.jsonMDXProvider = "") As %Status [ ProcedureBlock = 0 ]\n'})}),"\n",(0,s.jsxs)(t.p,{children:["Utility method to allow JSON output generated by the stored pivot table defined in pPivot to be written to the stream supplied in pStream from a general non-ZEN context. Note that pStream will be created if not supplied, hence the ByRef designation.",(0,s.jsx)(t.br,{}),"\npRewindStream controls whether the stream should be rewound after the data is written to it.",(0,s.jsx)(t.br,{}),"\ntProvider allows parameters to be passed in by creating an instance of the jsonMDXProvider and passing it into the method. The value of pPivot will be ignored in this case."]}),"\n",(0,s.jsx)(t.h3,{id:"ongetmdx-1",children:"%OnGetMDX"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnGetMDX(ByRef pParms, ByRef pMDX) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Invoke the OnGetMDX callback."}),"\n",(0,s.jsx)(t.h3,{id:"oncreateresultset-1",children:"%OnCreateResultSet"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnCreateResultSet(Output pRS As %DeepSee.ResultSet, ByRef pParms) As %Status\n"})}),"\n",(0,s.jsxs)(t.p,{children:["This callback is invoked when a provider is about to create a result set.",(0,s.jsx)(t.br,{}),"\nIf the callback creates a %DeepSee.ResultSet object and returns it via pRS, then the pivot table will use this result set to display results."]}),"\n",(0,s.jsx)(t.h3,{id:"onexecuteresultset-1",children:"%OnExecuteResultSet"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnExecuteResultSet(pRS As %DeepSee.ResultSet, Output tSC As %Status, ByRef pParms) As %Boolean\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Internal method.",(0,s.jsx)(t.br,{}),"\nSubclasses can override this to execute the %ResultSet object used to by this component.",(0,s.jsx)(t.br,{}),"\nReturn true (1) if the result set has been executed.",(0,s.jsx)(t.br,{}),"\nThe default implementation is to call the page method specified by the onExecuteResultSet property, if defined."]}),"\n",(0,s.jsx)(t.h3,{id:"constructnewdynamicarray",children:"%ConstructNewDynamicArray"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %ConstructNewDynamicArray() As %DynamicArray\n"})}),"\n",(0,s.jsx)(t.p,{children:"Constructor for a dynamic array."}),"\n",(0,s.jsx)(t.h3,{id:"constructnewdynamicobject",children:"%ConstructNewDynamicObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %ConstructNewDynamicObject() As %DynamicObject\n"})}),"\n",(0,s.jsx)(t.p,{children:"Constructor for a dynamic object."}),"\n",(0,s.jsx)(t.h3,{id:"statustodynamicobject",children:"%StatusToDynamicObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %StatusToDynamicObject(pStatus As %Status) As %RegisteredObject\n"})}),"\n",(0,s.jsx)(t.p,{children:"Convert a %Status object into an object that can be emitted as JSON"}),"\n",(0,s.jsx)(t.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"redirects",children:"redirects"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod redirects() [ Internal, Private, ProcedureBlock = 0 ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"objecttojson",children:"%ObjectToJSON"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %ObjectToJSON(pObject As %RegisteredObject, ByRef pVisited, pLevel As %Integer = 0, pFormat As %String = "aeloqstw") As %Status\n'})}),"\n",(0,s.jsx)(t.p,{children:"Override this method for this provider to override the format and suppress the default inclusion of the class in the JSON output."})]})}function c(e={}){const{wrapper:t}={...(0,n.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(l,{...e})}):l(e)}},28453:(e,t,r)=>{r.d(t,{R:()=>i,x:()=>o});var s=r(96540);const n={},a=s.createContext(n);function i(e){const t=s.useContext(a);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:i(e.components),s.createElement(a.Provider,{value:t},e.children)}}}]);