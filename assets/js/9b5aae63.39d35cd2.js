"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[86731],{43808:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>a,default:()=>d,frontMatter:()=>i,toc:()=>l});var s=t(74848),r=t(28453);const i={pagination_prev:null,pagination_next:null},a="%Net.DB.Iris",l=[{value:"Properties",id:"properties",level:2},{value:"schemas",id:"schemas",level:3},{value:"context",id:"context",level:3},{value:"Connection",id:"connection",level:3},{value:"Methods",id:"methods",level:2},{value:"Get",id:"get",level:3},{value:"GetBoolean",id:"getboolean",level:3},{value:"GetNext",id:"getnext",level:3},{value:"Set",id:"set",level:3},{value:"Kill",id:"kill",level:3},{value:"Increment",id:"increment",level:3},{value:"IsDefined",id:"isdefined",level:3},{value:"ClassMethodValue",id:"classmethodvalue",level:3},{value:"ClassMethodVoid",id:"classmethodvoid",level:3},{value:"Function",id:"function",level:3},{value:"Procedure",id:"procedure",level:3},{value:"Lock",id:"lock",level:3},{value:"Unlock",id:"unlock",level:3},{value:"ReleaseAllLocks",id:"releasealllocks",level:3},{value:"TStart",id:"tstart",level:3},{value:"TCommit",id:"tcommit",level:3},{value:"TRollback",id:"trollback",level:3},{value:"TRollbackOne",id:"trollbackone",level:3},{value:"GetTLevel",id:"gettlevel",level:3},{value:"GetObject",id:"getobject",level:3},{value:"GetSchema",id:"getschema",level:3},{value:"GetRecordMetadata",id:"getrecordmetadata",level:3},{value:"%OnNew",id:"onnew",level:3},{value:"%OnClose",id:"onclose",level:3},{value:"GetRows",id:"getrows",level:3},{value:"CopyGlobal",id:"copyglobal",level:3},{value:"StopSYSIO",id:"stopsysio",level:3},{value:"flushContext",id:"flushcontext",level:3},{value:"pushContext",id:"pushcontext",level:3},{value:"popContext",id:"popcontext",level:3},{value:"deserializeObject",id:"deserializeobject",level:3},{value:"deserializeValue",id:"deserializevalue",level:3},{value:"deserializeLogical",id:"deserializelogical",level:3},{value:"deserializeArray",id:"deserializearray",level:3},{value:"deserializeMap",id:"deserializemap",level:3},{value:"deserializeEnum",id:"deserializeenum",level:3},{value:"deserializeNamed",id:"deserializenamed",level:3},{value:"deserializeRecord",id:"deserializerecord",level:3},{value:"deserializeRecordList",id:"deserializerecordlist",level:3},{value:"getTypeCategory",id:"gettypecategory",level:3},{value:"isPrimitive",id:"isprimitive",level:3},{value:"isLogicalType",id:"islogicaltype",level:3},{value:"SendRequest",id:"sendrequest",level:3}];function c(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",table:"table",tbody:"tbody",td:"td",th:"th",thead:"thead",tr:"tr",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"netdbiris",children:"%Net.DB.Iris"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Net.DB.Iris Extends %RegisteredObject [ Final ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This class implements the primary set of functions IRIS Native API for Object Script. The only other members of the IRIS Native API that are not implemented by this class are implemented by %Net.DB.DataSource and %Net.DB.Connection. This class should never be instantiated directly. The proper way to instantiate this class is to invoke the CreateIris() method using an instance of %Net.DB.Connection."}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"schemas",children:"schemas"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property schemas As %Library.RawString [ Internal, MultiDimensional ];\n"})}),"\n",(0,s.jsx)(n.p,{children:"---- internal schema cache - used by GetObject"}),"\n",(0,s.jsx)(n.h3,{id:"context",children:"context"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property context As %RawString [ Internal, MultiDimensional ];\n"})}),"\n",(0,s.jsx)(n.p,{children:"---- internal context stack - used by GetObject"}),"\n",(0,s.jsx)(n.h3,{id:"connection",children:"Connection"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property Connection As %Net.DB.Connection [ Internal ];\n"})}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"get",children:"Get"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Get(globalName As %String(MAXLEN=220), subscripts...) As %RawString\n"})}),"\n",(0,s.jsx)(n.p,{children:"Return the value of a global array node. The global array node reference is defined by a globalName and a variable number of subscripts."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception if the global array node is not defined."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"globalName"}),(0,s.jsx)(n.th,{children:"input"}),(0,s.jsx)(n.th,{children:"The name of the global array."})]})}),(0,s.jsxs)(n.tbody,{children:[(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"subscripts"}),(0,s.jsx)(n.td,{children:"input..."}),(0,s.jsx)(n.td,{children:"The subscripts to the global named by the first parameter. Together with the global name they form the full global reference."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"return"}),(0,s.jsx)(n.td,{children:"The value of the global array node."}),(0,s.jsx)(n.td,{})]})]})]}),"\n",(0,s.jsx)(n.h3,{id:"getboolean",children:"GetBoolean"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetBoolean(globalName As %String(MAXLEN=220), subscripts...) As %Boolean [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Return the boolean value of a global array node. The global array node reference is defined by a globalName and a variable number of subscripts."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception if the global array node is not defined."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"globalName"}),(0,s.jsx)(n.th,{children:"input"}),(0,s.jsx)(n.th,{children:"The name of the global array."})]})}),(0,s.jsxs)(n.tbody,{children:[(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"subscripts"}),(0,s.jsx)(n.td,{children:"input..."}),(0,s.jsx)(n.td,{children:"The subscripts to the global named by the first parameter. Together with the global name they form the full global reference."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"return"}),(0,s.jsx)(n.td,{children:"The value of the global array node."}),(0,s.jsx)(n.td,{})]})]})]}),"\n",(0,s.jsx)(n.h3,{id:"getnext",children:"GetNext"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetNext(returnSubscript As %Boolean = 1, returnValue As %Boolean = 0, isReversed As %Boolean = 0, globalName As %String(MAXLEN=220), subscripts...) As %RawString\n"})}),"\n",(0,s.jsx)(n.p,{children:"Iterates to the next subscript in the $ORDER sense and returns the subscript, the value or both based on returnSubscript and returnValue flags. The global array node reference is defined by a globalName and a variable number of subscripts."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"returnSubscript"}),(0,s.jsx)(n.th,{children:"input"}),(0,s.jsx)(n.th,{children:"If true, the value of the subscript is returned, defaults to 1 (true)."})]})}),(0,s.jsxs)(n.tbody,{children:[(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"returnValue"}),(0,s.jsx)(n.td,{children:"input"}),(0,s.jsx)(n.td,{children:"If true, the value of the global array node at the position defined by subscripts... is returned, defaults to 0 (false)."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"isReveresed"}),(0,s.jsx)(n.td,{children:"input"}),(0,s.jsx)(n.td,{children:"If true, the iteration is in reverse order, defaults to 0 (forward)."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"globalName"}),(0,s.jsx)(n.td,{children:"input"}),(0,s.jsx)(n.td,{children:"The name of the global array."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"subscripts"}),(0,s.jsx)(n.td,{children:"input..."}),(0,s.jsx)(n.td,{children:"The subscripts to the global named by the first parameter. Together with the global name they form the full global reference."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"return"}),(0,s.jsx)(n.td,{children:"The subscript and/or value of the global array node at the position defined by $order of the subscripts.... If both the value and the subscript are returned then a $list with the subscript in element position 1 and the value in element position 2 is returned. If the $order advances to the end and there are no further subscripts defined then the return value is null."}),(0,s.jsx)(n.td,{})]})]})]}),"\n",(0,s.jsx)(n.h3,{id:"set",children:"Set"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Set(value As %RawString, globalName As %String(MAXLEN=220), subscripts...) As %RawString\n"})}),"\n",(0,s.jsx)(n.p,{children:"Set the value of a global array node. The global array node reference is defined by a globalName and a variable number of subscripts."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"value"}),(0,s.jsx)(n.th,{children:"input"}),(0,s.jsx)(n.th,{children:"The value to be stored."})]})}),(0,s.jsxs)(n.tbody,{children:[(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"globalName"}),(0,s.jsx)(n.td,{children:"input"}),(0,s.jsx)(n.td,{children:"The name of the global array."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"subscripts"}),(0,s.jsx)(n.td,{children:"input..."}),(0,s.jsx)(n.td,{children:"The subscripts to the global named by the first parameter. Together with the global name they form the full global reference."})]})]})]}),"\n",(0,s.jsx)(n.h3,{id:"kill",children:"Kill"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Kill(globalName As %String(MAXLEN=220), subscripts...)\n"})}),"\n",(0,s.jsx)(n.p,{children:"Kill the value of a global array node, including any descendants."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"globalName"}),(0,s.jsx)(n.th,{children:"input"}),(0,s.jsx)(n.th,{children:"The name of the global array."})]})}),(0,s.jsx)(n.tbody,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"subscripts"}),(0,s.jsx)(n.td,{children:"input..."}),(0,s.jsx)(n.td,{children:"The subscripts to the global named by the first parameter. Together with the global name they form the full global reference."})]})})]}),"\n",(0,s.jsx)(n.h3,{id:"increment",children:"Increment"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Increment(value, globalName As %String(MAXLEN=220), subscripts...) As %Integer\n"})}),"\n",(0,s.jsx)(n.p,{children:"Increments a global node by the given integer value. Returns the new value of the node."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"value"}),(0,s.jsx)(n.th,{children:"input"}),(0,s.jsx)(n.th,{children:"The value by which to increment the global array node."})]})}),(0,s.jsxs)(n.tbody,{children:[(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"globalName"}),(0,s.jsx)(n.td,{children:"input"}),(0,s.jsx)(n.td,{children:"The name of the global array."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"subscripts"}),(0,s.jsx)(n.td,{children:"input..."}),(0,s.jsx)(n.td,{children:"The subscripts to the global named by the first parameter. Together with the global name they form the full global reference."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"return"}),(0,s.jsx)(n.td,{children:"The value of the global array node after incremented it by value."}),(0,s.jsx)(n.td,{})]})]})]}),"\n",(0,s.jsx)(n.h3,{id:"isdefined",children:"IsDefined"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method IsDefined(globalName As %String(MAXLEN=220), subscripts...) As %Integer\n"})}),"\n",(0,s.jsx)(n.p,{children:"Checks if a a global contains data ($DATA)."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"globalName"}),(0,s.jsx)(n.th,{children:"input"}),(0,s.jsx)(n.th,{children:"The name of the global array."})]})}),(0,s.jsxs)(n.tbody,{children:[(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"subscripts"}),(0,s.jsx)(n.td,{children:"input..."}),(0,s.jsx)(n.td,{children:"The subscripts to the global named by the first parameter. Together with the global name they form the full global reference."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"return"}),(0,s.jsx)(n.td,{children:"0 if the node is undefined, 1 if the global node exists and contains data, 10 if it's an array element that has descendants, 11 has data and descendants."}),(0,s.jsx)(n.td,{})]})]})]}),"\n",(0,s.jsx)(n.h3,{id:"classmethodvalue",children:"ClassMethodValue"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method ClassMethodValue(className, methodName, args...) As %RawString\n"})}),"\n",(0,s.jsx)(n.p,{children:"Calls a class method, passing zero or more arguments and returning the method's return value. Trailing arguments may be omitted, causing default values to be used for those arguments."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"className"}),(0,s.jsx)(n.th,{children:"input"}),(0,s.jsx)(n.th,{children:"The name of the class that implements the method to be called."})]})}),(0,s.jsxs)(n.tbody,{children:[(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"methodName"}),(0,s.jsx)(n.td,{children:"input"}),(0,s.jsx)(n.td,{children:"The name of the method to be called."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"args"}),(0,s.jsx)(n.td,{children:"input..."}),(0,s.jsx)(n.td,{children:"The arguments to be passed to the method."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"return"}),(0,s.jsx)(n.td,{children:"The value returned by the methodName method."}),(0,s.jsx)(n.td,{})]})]})]}),"\n",(0,s.jsx)(n.h3,{id:"classmethodvoid",children:"ClassMethodVoid"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method ClassMethodVoid(className, methodName, args...)\n"})}),"\n",(0,s.jsx)(n.p,{children:"Calls a class method with no return value, passing zero or more arguments. Trailing arguments may be omitted, causing default values to be used for those arguments."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"className"}),(0,s.jsx)(n.th,{children:"input"}),(0,s.jsx)(n.th,{children:"The name of the class that implements the method to be called."})]})}),(0,s.jsxs)(n.tbody,{children:[(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"methodName"}),(0,s.jsx)(n.td,{children:"input"}),(0,s.jsx)(n.td,{children:"The name of the method to be called."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"args"}),(0,s.jsx)(n.td,{children:"input..."}),(0,s.jsx)(n.td,{children:"The arguments to be passed to the method."})]})]})]}),"\n",(0,s.jsx)(n.h3,{id:"function",children:"Function"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Function(routineName, functionName, args...) As %RawString\n"})}),"\n",(0,s.jsx)(n.p,{children:"Calls a function (label^routine), passing zero or more arguments and returning the function's return value. Trailing arguments may be omitted, causing default values to be used for those arguments."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"routineName"}),(0,s.jsx)(n.th,{children:"input"}),(0,s.jsx)(n.th,{children:"The name of the routine that implements the function to be called."})]})}),(0,s.jsxs)(n.tbody,{children:[(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"functionName"}),(0,s.jsx)(n.td,{children:"input"}),(0,s.jsx)(n.td,{children:"The name of the function to be invoked."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"args"}),(0,s.jsx)(n.td,{children:"input..."}),(0,s.jsx)(n.td,{children:"The arguments to be passed to the method."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"return"}),(0,s.jsx)(n.td,{children:"The value returned by the functionName function."}),(0,s.jsx)(n.td,{})]})]})]}),"\n",(0,s.jsx)(n.h3,{id:"procedure",children:"Procedure"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Procedure(routineName, procedureName, args...)\n"})}),"\n",(0,s.jsx)(n.p,{children:"Calls a procedure (label^routine) with no return value, passing zero or more arguments. Trailing arguments may be omitted, causing default values to be used for those arguments."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n",(0,s.jsx)(n.p,{children:"routineName"}),"\n",(0,s.jsx)(n.p,{children:"input"}),"\n",(0,s.jsx)(n.p,{children:"The name of the routine that implements the function to be called."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"functionName"}),(0,s.jsx)(n.th,{children:"input"}),(0,s.jsx)(n.th,{children:"The name of the function to be invoked."})]})}),(0,s.jsx)(n.tbody,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"args"}),(0,s.jsx)(n.td,{children:"input..."}),(0,s.jsx)(n.td,{children:"The arguments to be passed to the method."})]})})]}),"\n",(0,s.jsx)(n.h3,{id:"lock",children:"Lock"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Lock(lockMode, timeout, globalName As %String(MAXLEN=220), subscripts...) As %Boolean\n"})}),"\n",(0,s.jsx)(n.p,{children:"Lock the global node, returns true on success. Note that this method performs an incremental lock and not the implicit unlock before lock feature that is also offered in COS."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"lockMode"}),(0,s.jsx)(n.th,{children:"input"}),(0,s.jsx)(n.th,{children:"A combination of the following chars, S for shared lock, E for escalating lock, default is empty string (exclusive and non-escalating)."})]})}),(0,s.jsxs)(n.tbody,{children:[(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"timeout"}),(0,s.jsx)(n.td,{children:"input"}),(0,s.jsx)(n.td,{children:"The number of seconds to wait to acquire the lock. -1 means infinite (no) timeout."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"globalName"}),(0,s.jsx)(n.td,{children:"input"}),(0,s.jsx)(n.td,{children:"The name of the global array."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"subscripts"}),(0,s.jsx)(n.td,{children:"input..."}),(0,s.jsx)(n.td,{children:"The subscripts to the global named by the first parameter. Together with the global name they form the full global reference."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"return"}),(0,s.jsx)(n.td,{children:"1 (true) if the lock is successfully acquired."}),(0,s.jsx)(n.td,{})]})]})]}),"\n",(0,s.jsx)(n.h3,{id:"unlock",children:"Unlock"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Unlock(lockMode, globalName As %String(MAXLEN=220), subscripts...)\n"})}),"\n",(0,s.jsx)(n.p,{children:"Unlock the global node. Note that this method performs an incremental unlock and not the implicit unlock before lock feature that is also offered in COS."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"lockMode"}),(0,s.jsx)(n.th,{children:"input"}),(0,s.jsx)(n.th,{children:"A combination of the following chars, S for shared lock, E for escalating lock, I for immediate unlock, D for deferred unlock. default is empty string (exclusive and non-escalating)."})]})}),(0,s.jsxs)(n.tbody,{children:[(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"globalName"}),(0,s.jsx)(n.td,{children:"input"}),(0,s.jsx)(n.td,{children:"The name of the global array."})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"subscripts"}),(0,s.jsx)(n.td,{children:"input..."}),(0,s.jsx)(n.td,{children:"The subscripts to the global named by the first parameter. Together with the global name they form the full global reference."})]})]})]}),"\n",(0,s.jsx)(n.h3,{id:"releasealllocks",children:"ReleaseAllLocks"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method ReleaseAllLocks() As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Release all locks associated with the session."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n",(0,s.jsx)(n.h3,{id:"tstart",children:"TStart"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method TStart()\n"})}),"\n",(0,s.jsx)(n.p,{children:"Start/open a transaction. This is equivalent to executing TSTART in a InterSystems IRIS terminal."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n",(0,s.jsx)(n.h3,{id:"tcommit",children:"TCommit"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method TCommit() As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Commit the current transaction. This is equivalent to executing TCOMMIT in a InterSystems IRIS terminal."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n",(0,s.jsx)(n.h3,{id:"trollback",children:"TRollback"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method TRollback()\n"})}),"\n",(0,s.jsx)(n.p,{children:"Roll back all open transactions in the session. This is equivalent to executing TROLLBACK in a InterSystems IRIS terminal."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n",(0,s.jsx)(n.h3,{id:"trollbackone",children:"TRollbackOne"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method TRollbackOne()\n"})}),"\n",(0,s.jsx)(n.p,{children:"Roll back the current level transaction only. If this is a nested transaction, any higher-level transactions will not be rolled back. This is equivalent to executing TROLLBACK 1 in a InterSystems IRIS terminal."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n",(0,s.jsx)(n.h3,{id:"gettlevel",children:"GetTLevel"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetTLevel() As %Integer\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the level of the current nested transaction. Returns 1 if there is only a single transaction open. Returns 0 if there are no transactions open. This is equivalent to fetching the value of the $TLEVEL special variable."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n",(0,s.jsx)(n.h3,{id:"getobject",children:"GetObject"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method GetObject(className As %String(MAXLEN=220) = "", id) As %Library.DynamicAbstractObject\n'})}),"\n",(0,s.jsx)(n.p,{children:"GetObject returns an object from the connected data source. This method accepts the name of the persistent class in the remote IRIS namespace and the ID of the requested object. The return value is an instance of %Library.DynamicAbstractObject. All properties defined in the requested class will be present in the result object except streams and relationships are not yet supported. The remote class must have a unified schema defined. Any properties whose type class is a subclass of %Library.SerialObject must also have a defined unified schema. Unified schemas are instances of %FOI.Schema."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n",(0,s.jsx)(n.h3,{id:"getschema",children:"GetSchema"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetSchema(schemaName As %String(MAXLEN=220)) As %Library.DynamicAbstractObject\n"})}),"\n",(0,s.jsx)(n.p,{children:"%FOI.Schema instances are specific to a connection - url, port, and namespace. Remote schemas are cached by the Connection instance (client? or is that a bad word?). The cache only lasts as long as the Connection instance."}),"\n",(0,s.jsx)(n.p,{children:"There are no checks for stale cache entries at this time."}),"\n",(0,s.jsx)(n.p,{children:"If a schema for the requested class or any of the embedded properties defined by that class does not exist then an exception is thrown. There is no database first feature implemented yet."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n",(0,s.jsx)(n.h3,{id:"getrecordmetadata",children:"GetRecordMetadata"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetRecordMetadata(schemaName As %String(MAXLEN=220)) As %Library.DynamicAbstractObject\n"})}),"\n",(0,s.jsx)(n.p,{children:"%FOI.Schema instances are specific to a connection - url, port, and namespace. Remote schemas are cached by the Native instance (client? or is that a bad word?). The cache only lasts as long as the Native instance."}),"\n",(0,s.jsx)(n.p,{children:"This method throws an exception when an error condition is encountered."}),"\n",(0,s.jsx)(n.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnNew(connection) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"------------- Constructor, Destructor -------------- Note that there is no connect when this instance is created. You have to call Connect on the connection object, not via this class."}),"\n",(0,s.jsx)(n.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Note that there is no disconnect when this instance is killed. You have to call Disconnect on the connection object, not via this class."}),"\n",(0,s.jsx)(n.h3,{id:"getrows",children:"GetRows"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetRows(Output reply, returnSubscripts As %Boolean = 0, returnValues As %Boolean = 1, globalName As %String(MAXLEN=220), subscripts...) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Iterates over all subscripts in the $ORDER sense and produces a $List of rows."}),"\n",(0,s.jsx)(n.h3,{id:"copyglobal",children:"CopyGlobal"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method CopyGlobal(globalName As %String(MAXLEN=220), rootName = "") As %Status [ Internal ]\n'})}),"\n",(0,s.jsx)(n.p,{children:'Copies an entire global and resurrects it as a local or global variable. The globalName argument is required. It\'s name of the global on the remote server that you want to copy. It can include the "^" or not. The rootName argument is optional. It\'s the name of the local or global variable that you want to copy to. It must include the "^" to save it in a global, otherwise it will save it in a local variable. If you don\'t pass this argument or pass the empty string, then the global is copied into a global of the same name.'}),"\n",(0,s.jsx)(n.h3,{id:"stopsysio",children:"StopSYSIO"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method StopSYSIO() As %Status [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"------------- Debug Methods ------------- The new $system.IO protocol now uses the same 14-byte header as the old $zobjexport protocol. So the DBSRV routine will delegate to $system.IS.Execute accordingly depending on the opcode value, and we no longer need a separate message just to stop/exit the $system.IO kernel-level loop. The method is left here just in case it becomes useful in future debugging to be able to explicitly break out of the kernel-level loop."}),"\n",(0,s.jsx)(n.h3,{id:"flushcontext",children:"flushContext"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method flushContext() [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"pushcontext",children:"pushContext"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method pushContext(schemaname) [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"popcontext",children:"popContext"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method popContext() As %RawString [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"deserializeobject",children:"deserializeObject"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method deserializeObject(recordmd As %Library.DynamicObject, global As %Library.RawString, ByRef subscripts) As %Library.RawString [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.p,{children:'outermost deserializer for an IRIS Object. Accepts global reference and subscripts. This method iterates over fields and retrieves data from the connection as indicated by the fields in the record metadata. From that point on, all values are extracted from the object\'s data and dispatched to value deserializers. schema is the record metadata object and it is needed to retrieve named types. Sample test commands: set native = ##class(%Net.DB.DataSource).GetConnection(,51774,"DEV","danp","SYS") set obj = native.GetObject("Sample.Person",1)'}),"\n",(0,s.jsx)(n.h3,{id:"deserializevalue",children:"deserializeValue"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method deserializeValue(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.RawString [ Internal, Private ]\n'})}),"\n",(0,s.jsx)(n.h3,{id:"deserializelogical",children:"deserializeLogical"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method deserializeLogical(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.RawString [ Internal, Private ]\n'})}),"\n",(0,s.jsx)(n.h3,{id:"deserializearray",children:"deserializeArray"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method deserializeArray(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.RawString [ Internal, Private ]\n'})}),"\n",(0,s.jsx)(n.h3,{id:"deserializemap",children:"deserializeMap"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method deserializeMap(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.RawString [ Internal, Private ]\n'})}),"\n",(0,s.jsx)(n.h3,{id:"deserializeenum",children:"deserializeEnum"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method deserializeEnum(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.RawString [ Internal, Private ]\n'})}),"\n",(0,s.jsx)(n.h3,{id:"deserializenamed",children:"deserializeNamed"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method deserializeNamed(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.RawString [ Internal, Private ]\n'})}),"\n",(0,s.jsx)(n.p,{children:'type here is not record metadata, it is the type category with category = \'named\' and name = type name. this method is only ever called with type = {"category":"named","name":,"namespace":}. "namespace" is optional but "name" is not. But, just for completeness, type can be passed as a literal string that is a name.'}),"\n",(0,s.jsx)(n.h3,{id:"deserializerecord",children:"deserializeRecord"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method deserializeRecord(type As %Library.RawString = "", ByRef value As %Library.RawString) As %Library.DynamicAbstractObject [ Internal, Private ]\n'})}),"\n",(0,s.jsx)(n.h3,{id:"deserializerecordlist",children:"deserializeRecordList"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method deserializeRecordList(type As %Library.RawString = "", target As %Library.DynamicAbstractObject, list As %Library.RawString) As %Library.DynamicAbstractObject [ Internal, Private ]\n'})}),"\n",(0,s.jsx)(n.h3,{id:"gettypecategory",children:"getTypeCategory"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method getTypeCategory(type As %Library.DynamicAbstractObject) As %Library.DynamicAbstractObject [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"isprimitive",children:"isPrimitive"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod isPrimitive(type As %String) As %Boolean [ CodeMode = expression, Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"islogicaltype",children:"isLogicalType"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method isLogicalType(type As %Library.DynamicObject) As %Boolean [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"sendrequest",children:"SendRequest"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method SendRequest(arguments...) [ Internal, Private ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"------------- Low-level Send, Receive Methods ------------- Sends the request and reads the reply header. This method uses the connection device and leaves it as the current device. That is, the calling device is Not preserved. Throws exception on error"})]})}function d(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>a,x:()=>l});var s=t(96540);const r={},i=s.createContext(r);function a(e){const n=s.useContext(i);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function l(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),s.createElement(i.Provider,{value:n},e.children)}}}]);