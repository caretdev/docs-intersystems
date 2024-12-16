"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[54665],{74375:(e,a,r)=>{r.r(a),r.d(a,{contentTitle:()=>n,default:()=>c,frontMatter:()=>l,toc:()=>o});var t=r(74848),s=r(28453);const l={pagination_prev:null,pagination_next:null},n="%XML.XSLT2.Transformer",o=[{value:"Methods",id:"methods",level:2},{value:"StartGateway",id:"startgateway",level:3},{value:"StopGateway",id:"stopgateway",level:3},{value:"TransformFile",id:"transformfile",level:3},{value:"TransformFileWithCompiledXSL",id:"transformfilewithcompiledxsl",level:3},{value:"TransformStream",id:"transformstream",level:3},{value:"TransformStreamWithCompiledXSL",id:"transformstreamwithcompiledxsl",level:3},{value:"TransformStringWithCompiledXSL",id:"transformstringwithcompiledxsl",level:3},{value:"BuildParams",id:"buildparams",level:3},{value:"SetupErrorHandler",id:"setuperrorhandler",level:3},{value:"SetupOutput",id:"setupoutput",level:3},{value:"ClearEvaluateCache",id:"clearevaluatecache",level:3},{value:"SetEvaluateCacheSize",id:"setevaluatecachesize",level:3},{value:"AddToEvaluateCacheFilterList",id:"addtoevaluatecachefilterlist",level:3},{value:"RemoveFromEvaluateCacheFilterList",id:"removefromevaluatecachefilterlist",level:3},{value:"ClearEvaluateCacheFilterList",id:"clearevaluatecachefilterlist",level:3},{value:"SetCacheEverythingBoolean",id:"setcacheeverythingboolean",level:3},{value:"DumpEvaluateCacheToList",id:"dumpevaluatecachetolist",level:3},{value:"LoadEvaluateCacheFromList",id:"loadevaluatecachefromlist",level:3}];function i(e){const a={a:"a",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,s.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(a.header,{children:(0,t.jsx)(a.h1,{id:"xmlxslt2transformer",children:"%XML.XSLT2.Transformer"})}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"Class %XML.XSLT2.Transformer Extends %RegisteredObject\n"})}),"\n",(0,t.jsxs)(a.p,{children:[(0,t.jsx)(a.strong,{children:"For details on using this class"}),", see ",(0,t.jsx)(a.a,{href:"/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.XSLT2.Transformer",children:"Performing XSLT Transformations"}),"."]}),"\n",(0,t.jsx)(a.p,{children:"Implements an interface to the XSLT 2.0 Parser. XML contained in a file or binary stream may be transformed"}),"\n",(0,t.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(a.h3,{id:"startgateway",children:"StartGateway"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod StartGateway(Output gateway As %Net.Remote.Gateway = {$$$NULLOREF}, useSharedMemoryIfPossible As %Boolean = 0) As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"This method starts a gateway if there's not already one started, connects to it, and returns the gateway by reference. This method does not change the current device."}),"\n",(0,t.jsx)(a.h3,{id:"stopgateway",children:"StopGateway"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod StopGateway(gateway As %Net.Remote.Gateway) As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"This method disconnects from the gateway. It does not stop the gateway."}),"\n",(0,t.jsx)(a.h3,{id:"transformfile",children:"TransformFile"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod TransformFile(pSource As %String, pXSL As %String, pOutput As %String, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"This method transforms a source file according to an XSL stylesheet and writes the output to the specified output file. If errors occur during processing, callbacks will be made to the supplied error handler. If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler. The pParams argument is either a CoS array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables."}),"\n",(0,t.jsx)(a.h3,{id:"transformfilewithcompiledxsl",children:"TransformFileWithCompiledXSL"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod TransformFileWithCompiledXSL(pSource As %String, pXSL As %XML.XSLT2.CompiledStyleSheet, pOutput As %String, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"This method transforms a source file according to an XSL stylesheet and writes the output to the specified output file. If errors occur during processing, callbacks will be made to the supplied error handler. If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler. The pParams argument is either a CoS array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables."}),"\n",(0,t.jsx)(a.h3,{id:"transformstream",children:"TransformStream"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod TransformStream(pSource As %Stream.Object, pXSL As %Stream.Object, ByRef pOutput As %BinaryStream = {$$$NULLOREF}, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"This method transforms a source stream according to an XSL stylesheet and writes the output to the supplied binary stream. If errors occur during processing, callbacks will be made to the supplied error handler. If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler. The pParams argument is either a CoS array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables. Note that that the XSLT transform engine will produce a stream with line terminator $c(10), regardless of the line terminator of the input stream. If an existing output stream is passed to this method, its LineTerminator property will be set to $c(10), so anything written to the stream before calling this method should also use $c(10) as its line terminator."}),"\n",(0,t.jsx)(a.h3,{id:"transformstreamwithcompiledxsl",children:"TransformStreamWithCompiledXSL"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod TransformStreamWithCompiledXSL(pSource As %Stream.Object, pXSL As %XML.XSLT2.CompiledStyleSheet, ByRef pOutput As %BinaryStream = {$$$NULLOREF}, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"This method transforms a source stream according to an XSL stylesheet and writes the output to the supplied binary stream. If errors occur during processing, callbacks will be made to the supplied error handler. If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler. The pParams argument is either a CoS array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables. Note that that the XSLT transform engine will produce a stream with line terminator $c(10), regardless of the line terminator of the input stream. If an existing output stream is passed to this method, its LineTerminator property will be set to $c(10), so anything written to the stream before calling this method should also use $c(10) as its line terminator."}),"\n",(0,t.jsx)(a.h3,{id:"transformstringwithcompiledxsl",children:"TransformStringWithCompiledXSL"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'ClassMethod TransformStringWithCompiledXSL(pSource As %String, pXSL As %XML.XSLT2.CompiledStyleSheet, ByRef pOutput As %String = "", pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, ByRef pParams = {$$$NULLOREF}, pCallbackHandler = {$$$NULLOREF}, pResolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status\n'})}),"\n",(0,t.jsx)(a.p,{children:"This method transforms a source string according to an XSL stylesheet and returns the output to the supplied string. If errors occur during processing, callbacks will be made to the supplied error handler. If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler. The pParams argument is either a CoS array, or %ArrayOfDataTypes of name/value pairs to be passed as $ variables."}),"\n",(0,t.jsx)(a.h3,{id:"buildparams",children:"BuildParams"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod BuildParams(ByRef pParams) As %List [ Private ]\n"})}),"\n",(0,t.jsx)(a.h3,{id:"setuperrorhandler",children:"SetupErrorHandler"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SetupErrorHandler(ByRef errorHandler As %XML.XSLT.ErrorHandler) As %Status\n"})}),"\n",(0,t.jsx)(a.h3,{id:"setupoutput",children:"SetupOutput"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SetupOutput(ByRef output As %BinaryStream, Output translateTable As %ObjectHandle) As %Status\n"})}),"\n",(0,t.jsx)(a.h3,{id:"clearevaluatecache",children:"ClearEvaluateCache"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod ClearEvaluateCache(pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"This method clears the evaluate cache. If errors occur during processing, callbacks will be made to the supplied error handler. If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler."}),"\n",(0,t.jsx)(a.h3,{id:"setevaluatecachesize",children:"SetEvaluateCacheSize"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SetEvaluateCacheSize(size As %Integer = 1000, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"This method sets the maximum size of the evaluate cache. The default size is 1000. If errors occur during processing, callbacks will be made to the supplied error handler. If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler."}),"\n",(0,t.jsx)(a.h3,{id:"addtoevaluatecachefilterlist",children:"AddToEvaluateCacheFilterList"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'ClassMethod AddToEvaluateCacheFilterList(filterListEntry As %String = "", pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status\n'})}),"\n",(0,t.jsx)(a.p,{children:"This method adds a function name to the evaluate cache filter list. Note that this does not limit the cache size in any way. There may be any number of calls to the same function, but with different arguments and return values. Each combination of function name + arguments would be a separate entry in the cache. If errors occur during processing, callbacks will be made to the supplied error handler. If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler."}),"\n",(0,t.jsx)(a.h3,{id:"removefromevaluatecachefilterlist",children:"RemoveFromEvaluateCacheFilterList"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'ClassMethod RemoveFromEvaluateCacheFilterList(filterListEntry As %String = "", pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status\n'})}),"\n",(0,t.jsx)(a.p,{children:"This method removes a function name from the evaluate cache filter list. If errors occur during processing, callbacks will be made to the supplied error handler. If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler."}),"\n",(0,t.jsx)(a.h3,{id:"clearevaluatecachefilterlist",children:"ClearEvaluateCacheFilterList"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod ClearEvaluateCacheFilterList(pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"This method clears the evaluate cache filter list. If errors occur during processing, callbacks will be made to the supplied error handler. If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler."}),"\n",(0,t.jsx)(a.h3,{id:"setcacheeverythingboolean",children:"SetCacheEverythingBoolean"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SetCacheEverythingBoolean(cacheEverything As %Boolean = 0, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"This method sets the cache everything boolean for the evaluate cache. This overrides the filter list and allows calls to all functions to be cached. If errors occur during processing, callbacks will be made to the supplied error handler. If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler."}),"\n",(0,t.jsx)(a.h3,{id:"dumpevaluatecachetolist",children:"DumpEvaluateCacheToList"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod DumpEvaluateCacheToList(Output evaluateCache As %List, pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status\n"})}),"\n",(0,t.jsx)(a.p,{children:"This method dumps the evaluate cache to a list, with the following format: total number of cache entries for each entry: total number of evaluate arguments = function name + up to 9 arguments all evaluate arguments evaluate value If errors occur during processing, callbacks will be made to the supplied error handler. If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler."}),"\n",(0,t.jsx)(a.h3,{id:"loadevaluatecachefromlist",children:"LoadEvaluateCacheFromList"}),"\n",(0,t.jsx)(a.pre,{children:(0,t.jsx)(a.code,{className:"language-objectscript-class",children:'ClassMethod LoadEvaluateCacheFromList(evaluateCache As %List = "", pErrorHandler As %XML.XSLT.ErrorHandler = {$$$NULLOREF}, gateway As %Net.Remote.Gateway = {$$$NULLOREF}) As %Status\n'})}),"\n",(0,t.jsx)(a.p,{children:"This method loads (or pre-populates) the evaluate cache from a list, with the following format: total number of cache entries for each entry: total number of evaluate arguments = function name + up to 9 arguments all evaluate arguments evaluate value If errors occur during processing, callbacks will be made to the supplied error handler. If an error handler is not supplied then the default is to use a newly created instance of %XML.XSLT.ErrorHandler."})]})}function c(e={}){const{wrapper:a}={...(0,s.R)(),...e.components};return a?(0,t.jsx)(a,{...e,children:(0,t.jsx)(i,{...e})}):i(e)}},28453:(e,a,r)=>{r.d(a,{R:()=>n,x:()=>o});var t=r(96540);const s={},l=t.createContext(s);function n(e){const a=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function o(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:n(e.components),t.createElement(l.Provider,{value:a},e.children)}}}]);