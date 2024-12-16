"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[78608],{28165:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>a,default:()=>o,frontMatter:()=>r,toc:()=>l});var i=n(74848),s=n(28453);const r={pagination_prev:null,pagination_next:null},a="%Library.SerialObject",l=[{value:"Parameters",id:"parameters",level:2},{value:"SERIALDELIMITER;",id:"serialdelimiter",level:3},{value:"ODBCDELIMITER",id:"odbcdelimiter",level:3},{value:"VALIDIFNULL",id:"validifnull",level:3},{value:"Methods",id:"methods",level:2},{value:"%Delete",id:"delete",level:3},{value:"%DeleteId",id:"deleteid",level:3},{value:"%IsNull",id:"isnull",level:3},{value:"%OpenId",id:"openid",level:3},{value:"%Open",id:"open",level:3},{value:"%LoadInit",id:"loadinit",level:3},{value:"%GetSwizzleObject",id:"getswizzleobject",level:3},{value:"%GetSerial",id:"getserial",level:3},{value:"%SetSerial",id:"setserial",level:3},{value:"LogicalToOdbc",id:"logicaltoodbc",level:3},{value:"OdbcToLogical",id:"odbctological",level:3},{value:"%OnOpen",id:"onopen",level:3}];function c(e){const t={a:"a",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",strong:"strong",ul:"ul",...(0,s.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(t.header,{children:(0,i.jsx)(t.h1,{id:"libraryserialobject",children:"%Library.SerialObject"})}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Library.SerialObject Extends %SwizzleObject [ Abstract, ClassType = serial, NoExtent, SqlCategory = STRING, System = 2 ]\n"})}),"\n",(0,i.jsxs)(t.p,{children:[(0,i.jsx)(t.strong,{children:"For information on this class"}),", see ",(0,i.jsx)(t.a,{href:"/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.SerialObject",children:"Introduction to Serial Objects"}),"."]}),"\n",(0,i.jsxs)(t.p,{children:["The ",(0,i.jsx)(t.strong,{children:"%SerialObject"})," class builds upon the functionality provided by the %RegisteredObject class and gives an object the ability to serialize itself and be embedded within another object."]}),"\n",(0,i.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(t.h3,{id:"serialdelimiter",children:"SERIALDELIMITER;"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter SERIALDELIMITER;\n"})}),"\n",(0,i.jsxs)(t.p,{children:['This parameter specifies the delimiter character used when created a serialized version of the object. If the parameter is set to null string ("") then a length delimited ($List) string is used which can be manipulated using the ',(0,i.jsx)(t.a,{href:"/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION",children:"$List"})," functions."]}),"\n",(0,i.jsx)(t.h3,{id:"odbcdelimiter",children:"ODBCDELIMITER"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter ODBCDELIMITER = ",";\n'})}),"\n",(0,i.jsx)(t.p,{children:"A serial object is converted to a delimited string containing the object's property values when it is projected via ODBC. ODBCDELIMITER is the delimiter character used to construct the delimited string."}),"\n",(0,i.jsx)(t.h3,{id:"validifnull",children:"VALIDIFNULL"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter VALIDIFNULL As BOOLEAN = 0;\n"})}),"\n",(0,i.jsx)(t.p,{children:"If true, %ValidateObject will return $$$OK for instances that are null as determined by %IsNull(). If FALSE (the default), %ValidateObject will perform a full validation on the instance, even if it is null. This means that if VALIDIFNULL is TRUE then the property constraint, REQUIRED, can be defined without causing failures on null objects. It is important to note that a property with an INITIALEXPRESSION that returns a non-null initial value will cause %IsNull() to return FALSE for a new, otherwise unmodified instance."}),"\n",(0,i.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(t.h3,{id:"delete",children:"%Delete"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %Delete(oid As %ObjectIdentity = "", concurrency As %Integer = -1) As %Status [ CodeMode = generator, Final, GenerateAfter = %OnDelete, ServerOnly = 0 ]\n'})}),"\n",(0,i.jsxs)(t.p,{children:["Deletes streams referenced by this object and calls %Delete on any embedded objects Refer to ",(0,i.jsx)(t.a,{href:"/csp/docbook/DocBook.UI.Page.cls?KEY=GOBJ%5Fconcurrency",children:"Object Concurrency Options"})," for more details on the optional concurrency argument."]}),"\n",(0,i.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,i.jsx)(t.h3,{id:"deleteid",children:"%DeleteId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %DeleteId(id As %String, concurrency As %Integer = -1) As %Status [ Final, ServerOnly = 0 ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Deletes the stored version of the object with ID id from the database."}),"\n",(0,i.jsxs)(t.p,{children:["%DeleteId is identical in operation to the %Delete method except that it uses and Id value instead of an OID value to find an object. Refer to ",(0,i.jsx)(t.a,{href:"/csp/docbook/DocBook.UI.Page.cls?KEY=GOBJ%5Fconcurrency",children:"Object Concurrency Options"})," for more details on the optional concurrency argument."]}),"\n",(0,i.jsx)(t.h3,{id:"isnull",children:"%IsNull"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method %IsNull() As %Boolean [ CodeMode = expression ]\n"})}),"\n",(0,i.jsx)(t.p,{children:'Returns true if this is a "NULL" serial object. Subclasses of %SerialObject are expected to override this method. The default implementation returns 0 (false) indicating that the serial object is not null. The default serialization class will generate an IsNull method that checks each property for null and if all are null then IsNull() is 1 (true).'}),"\n",(0,i.jsx)(t.h3,{id:"openid",children:"%OpenId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %OpenId(initvalue As %String, concurrency As %Integer = -1, ByRef sc As %Status = {$$$OK}) As %ObjectHandle [ CodeMode = expression, Final, ServerOnly = 0 ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Swizzles a serial object from the value passed and returns an OREF referring to the object. initvalue is the Id (serial value, not a full OID) value of the object to swizzle."}),"\n",(0,i.jsx)(t.p,{children:"%OpenId is identical in operation to the %Open method except that it uses and Id value instead of an OID value to find an object instance."}),"\n",(0,i.jsx)(t.p,{children:"%OpenId returns an OREF value that refers to the in-memory object instance."}),"\n",(0,i.jsx)(t.h3,{id:"open",children:"%Open"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %Open(initvalue As %ObjectIdentity, concurrency As %Integer = -1, ByRef sc As %Status = {$$$OK}) As %ObjectHandle [ Final, ServerOnly = 0 ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Creates an instance (in-memory version) of a serial object from the serialized value initvalue. Note that concurrency is not used, the argument is kept to keep the interface consistent with %Library.Persistent. If an error occurrs it is returned by refence in sc."}),"\n",(0,i.jsx)(t.h3,{id:"loadinit",children:"%LoadInit"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method %LoadInit(oid As %ObjectIdentity) As %Status [ CodeMode = generator, Final, Internal, Private ]\n"})}),"\n",(0,i.jsx)(t.h3,{id:"getswizzleobject",children:"%GetSwizzleObject"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetSwizzleObject(force As %Integer = 0, ByRef oid As %ObjectIdentity) As %Status [ CodeMode = generator, GenerateAfter = %OnAddToSaveSet, ServerOnly = 1 ]\n"})}),"\n",(0,i.jsxs)(t.p,{children:[(0,i.jsx)(t.strong,{children:"%GetSwizzleObject()"})," is used to obtain the serial value of the object that can later be used by ",(0,i.jsx)(t.strong,{children:"%SetSerial()"})," to restore the object. It calls ",(0,i.jsx)(t.strong,{children:"%SerializeObject()"})," which returns the serialized state of the object or the OID (for persistent objects). Before calling ",(0,i.jsx)(t.strong,{children:"%GetSerial()"}),", ",(0,i.jsx)(t.strong,{children:"%GetSwizzleObject()"})," calls ",(0,i.jsx)(t.strong,{children:"%AddToSaveSet([force])"})," which will result in calling the ",(0,i.jsx)(t.strong,{children:"%GetSwizzleObject()"})," method of other referenced objects, passing along the value of force."]}),"\n",(0,i.jsx)(t.p,{children:"%GetSwizzleObject automatically detects and handles circular references between objects. For example, %GetSwizzleObject will detect if object A refers to object B and object B likewise refers to object A. In this case it will avoid falling into an infinite, recursive loop."}),"\n",(0,i.jsx)(t.p,{children:"Note that either reference attribute, A to B or B to A, can be specified as being a required attribute but not both of them. If both reference attributes are required then %GetSwizzleObject will fail."}),"\n",(0,i.jsxs)(t.p,{children:["By default %GetSwizzleObject automatically manages transactions. You can enable and disable automatic transaction support using the ",(0,i.jsx)(t.code,{children:"$$SetTransactionMode^%apiOBJ()"})," routine."]}),"\n",(0,i.jsx)(t.p,{children:"When %GetSwizzleObject serializes an object, it initiates one transaction (by calling TSTART) for the entire set of serializations, including the original object and any related objects. If the serialization operation is successful, %GetSwizzleObject will issue a TCOMMIT command to commit the transaction and write the data to the database. If %GetSwizzleObject encounters an error during the transaction it rolls back the entire transaction and performs the following actions:"}),"\n",(0,i.jsxs)(t.ul,{children:["\n",(0,i.jsx)(t.li,{children:"It issues a TROLLBACK command to rollback any changes to the database that may have occurred. (In the case of persistent objects with system assigned ids changes to the on-disk counter value, used to determine the next available object id number, are not rolled back.)"}),"\n",(0,i.jsx)(t.li,{children:'It attempts to restore the in-memory state of all the objects involved in the transaction to their pre-transaction state. This includes restoring any modified flags, and restoring to null ("") any OID values that have been assigned during the course of the transaction. Additional property values changed during the course of the transaction are not restored, however.'}),"\n",(0,i.jsx)(t.li,{children:"It calls the %RollBack method on each object involved with the transaction. The order in which the %RollBack methods are called is undefined. %RollBack will call a user-written %OnRollback method if it is present."}),"\n"]}),"\n",(0,i.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,i.jsx)(t.h3,{id:"getserial",children:"%GetSerial"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetSerial(force As %Integer = 0) As %String [ CodeMode = generator, Private, ServerOnly = 1 ]\n"})}),"\n",(0,i.jsx)(t.h3,{id:"setserial",children:"%SetSerial"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method %SetSerial(val As %String) As %Status [ CodeMode = generator, Private, ServerOnly = 1 ]\n"})}),"\n",(0,i.jsx)(t.h3,{id:"logicaltoodbc",children:"LogicalToOdbc"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod LogicalToOdbc(val As %String = "") As %String [ CodeMode = generator, ServerOnly = 1 ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"Converts the serial state of this serial object to a delimited string using the value of the ODBCDELIMITER parameter as a delimiter."}),"\n",(0,i.jsx)(t.h3,{id:"odbctological",children:"OdbcToLogical"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod OdbcToLogical(val As %String = "") As %String [ CodeMode = generator, ServerOnly = 1 ]\n'})}),"\n",(0,i.jsx)(t.p,{children:"Converts the value of an incoming delimited string to a serialized state using the value of the ODBCDELIMITER parameter as a delimiter."}),"\n",(0,i.jsx)(t.h3,{id:"onopen",children:"%OnOpen"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnOpen() As %Status [ Abstract, Private, ServerOnly = 1 ]\n"})})]})}function o(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,i.jsx)(t,{...e,children:(0,i.jsx)(c,{...e})}):c(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>a,x:()=>l});var i=n(96540);const s={},r=i.createContext(s);function a(e){const t=i.useContext(r);return i.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:a(e.components),i.createElement(r.Provider,{value:t},e.children)}}}]);