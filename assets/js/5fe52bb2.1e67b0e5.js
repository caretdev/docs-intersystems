"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[84328],{23115:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>l,default:()=>d,frontMatter:()=>r,toc:()=>a});var s=n(74848),i=n(28453);const r={pagination_prev:null,pagination_next:null},l="%Library.RelationshipObject",a=[{value:"Parameters",id:"parameters",level:2},{value:"CARDINALITY;",id:"cardinality",level:3},{value:"CLASSNAMEINOID",id:"classnameinoid",level:3},{value:"ELEMENTTYPE",id:"elementtype",level:3},{value:"INVERSEPROPERTY;",id:"inverseproperty",level:3},{value:"PERSISTENT",id:"persistent",level:3},{value:"INVERSEPERSISTENT",id:"inversepersistent",level:3},{value:"Properties",id:"properties",level:2},{value:"InverseReference",id:"inversereference",level:3},{value:"Oref",id:"oref",level:3},{value:"RelationshipData",id:"relationshipdata",level:3},{value:"ElementType",id:"elementtype-1",level:3},{value:"Disconnected",id:"disconnected",level:3},{value:"Cardinality",id:"cardinality-1",level:3},{value:"InversePersistent",id:"inversepersistent-1",level:3},{value:"InverseProperty",id:"inverseproperty-1",level:3},{value:"NotLoaded",id:"notloaded",level:3},{value:"Persistent",id:"persistent-1",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"%OnClose",id:"onclose",level:3},{value:"%SetSerial",id:"setserial",level:3},{value:"%GetSerial",id:"getserial",level:3},{value:"%AddToSaveSet",id:"addtosaveset",level:3},{value:"%RollBack",id:"rollback",level:3},{value:"%SerializeObject",id:"serializeobject",level:3},{value:"%OnConstructClone",id:"onconstructclone",level:3},{value:"Clear",id:"clear",level:3},{value:"Count",id:"count",level:3},{value:"FindObject",id:"findobject",level:3},{value:"FindObjectId",id:"findobjectid",level:3},{value:"FindOref",id:"findoref",level:3},{value:"GetAt",id:"getat",level:3},{value:"GetNext",id:"getnext",level:3},{value:"GetObjectAt",id:"getobjectat",level:3},{value:"GetObjectIdAt",id:"getobjectidat",level:3},{value:"GetObjectNext",id:"getobjectnext",level:3},{value:"GetObjectIdNext",id:"getobjectidnext",level:3},{value:"GetObjectPrevious",id:"getobjectprevious",level:3},{value:"GetObjectIdPrevious",id:"getobjectidprevious",level:3},{value:"GetOrefAt",id:"getorefat",level:3},{value:"GetPrevious",id:"getprevious",level:3},{value:"IsDefined",id:"isdefined",level:3},{value:"Load",id:"load",level:3},{value:"IsEmpty",id:"isempty",level:3},{value:"Next",id:"next",level:3},{value:"Previous",id:"previous",level:3},{value:"Insert",id:"insert",level:3},{value:"InsertObject",id:"insertobject",level:3},{value:"InsertObjectId",id:"insertobjectid",level:3},{value:"RemoveAt",id:"removeat",level:3},{value:"Remove",id:"remove",level:3},{value:"RemoveObject",id:"removeobject",level:3},{value:"SetAt",id:"setat",level:3},{value:"SetObjectAt",id:"setobjectat",level:3},{value:"%UnSwizzleAt",id:"unswizzleat",level:3},{value:"Relate",id:"relate",level:3},{value:"UnRelate",id:"unrelate",level:3},{value:"FindExistingObjectId",id:"findexistingobjectid",level:3},{value:"FindExistingOref",id:"findexistingoref",level:3},{value:"GetExistingObjectAt",id:"getexistingobjectat",level:3},{value:"GetExistingObjectNext",id:"getexistingobjectnext",level:3}];function c(e){const t={a:"a",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"libraryrelationshipobject",children:"%Library.RelationshipObject"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Library.RelationshipObject Extends (%SerialObject, %Collection.AbstractIterator) [ Inheritance = right, StorageStrategy = Custom, System = 2 ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"For information on this class"}),", see ",(0,s.jsx)(t.a,{href:"/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Library.RelationshipObject",children:"Defining and Using Relationships"}),"."]}),"\n",(0,s.jsx)(t.p,{children:"Registered relationship class for relationship cardinalities many and children. Instances of this class are used by n-cardinality relationships to manage objects currently related to the container object and also to manage the objects whose relationship with the container object has been removed. Related objects are loaded into this object using a query-like interface that is implemented by the inverse relationship. The order in which related objects are loaded is neither guaranteed or maintained as objects are related or unrelated. This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,s.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(t.h3,{id:"cardinality",children:"CARDINALITY;"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter CARDINALITY;\n"})}),"\n",(0,s.jsx)(t.h3,{id:"classnameinoid",children:"CLASSNAMEINOID"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter CLASSNAMEINOID = 0;\n"})}),"\n",(0,s.jsx)(t.p,{children:"This parameter determines how the collection object stores OID values. If this parameter is set to 0, then partially-formed OID values (containing only an ID number) are used. If this parameter is set to 1, then fully-formed OID values (containing both a class name and an ID number) are used."}),"\n",(0,s.jsx)(t.h3,{id:"elementtype",children:"ELEMENTTYPE"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter ELEMENTTYPE = "%ObjectHandle";\n'})}),"\n",(0,s.jsx)(t.p,{children:"The type (class name) of the elements stored in the collection."}),"\n",(0,s.jsx)(t.h3,{id:"inverseproperty",children:"INVERSEPROPERTY;"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter INVERSEPROPERTY;\n"})}),"\n",(0,s.jsx)(t.h3,{id:"persistent",children:"PERSISTENT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter PERSISTENT = 0;\n"})}),"\n",(0,s.jsx)(t.h3,{id:"inversepersistent",children:"INVERSEPERSISTENT"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter INVERSEPERSISTENT = 0;\n"})}),"\n",(0,s.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(t.h3,{id:"inversereference",children:"InverseReference"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property InverseReference As %RawString;\n"})}),"\n",(0,s.jsx)(t.h3,{id:"oref",children:"Oref"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Oref As %RawString [ MultiDimensional, Private ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Oref is a private property used to hold the related object references in the form i%Oref(key)=oref."}),"\n",(0,s.jsx)(t.h3,{id:"relationshipdata",children:"RelationshipData"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property RelationshipData [ MultiDimensional, Private ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Private property used to hold some relationship data"}),"\n",(0,s.jsx)(t.h3,{id:"elementtype-1",children:"ElementType"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property ElementType As %RawString [ InitialExpression = {..#ELEMENTTYPE} ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"The type (class name) of the elements stored in the collection."}),"\n",(0,s.jsx)(t.h3,{id:"disconnected",children:"Disconnected"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Disconnected As %RawString [ MultiDimensional, Private ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"Private storage area used to hold OREF values for objects no longer related to the container object."}),"\n",(0,s.jsx)(t.h3,{id:"cardinality-1",children:"Cardinality"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Cardinality As %RawString [ InitialExpression = {..#CARDINALITY} ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"The property name of the inverse relationship in the related class."}),"\n",(0,s.jsx)(t.h3,{id:"inversepersistent-1",children:"InversePersistent"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property InversePersistent As %RawString [ InitialExpression = {..#PERSISTENT} ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"TRUE if the ElementType class is a persistent class."}),"\n",(0,s.jsx)(t.h3,{id:"inverseproperty-1",children:"InverseProperty"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property InverseProperty As %RawString [ InitialExpression = {..#INVERSEPROPERTY} ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"The property name of the inverse relationship in the related class."}),"\n",(0,s.jsx)(t.h3,{id:"notloaded",children:"NotLoaded"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property NotLoaded As %Boolean [ InitialExpression = 1, Transient ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"TRUE if related objects have not been retrieved by calling Load()."}),"\n",(0,s.jsx)(t.h3,{id:"persistent-1",children:"Persistent"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property Persistent As %RawString [ InitialExpression = {..#PERSISTENT} ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"TRUE if the container class is a persistent class."}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method %OnNew(initvalue As %String = "") As %Status [ Private ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"%New callback - initializes ElementType, Cardinality, InverseProperty and InverseReference from initvalue parameter."}),"\n",(0,s.jsx)(t.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status [ Private ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"setserial",children:"%SetSerial"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %SetSerial(initvalue As %String) As %Status [ Private ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"getserial",children:"%GetSerial"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetSerial(force As %Integer = 0) As %String [ CodeMode = expression, Private ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"addtosaveset",children:"%AddToSaveSet"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %AddToSaveSet(force As %Integer = 0, refresh As %Integer = 0) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Overrides %SerialObject implementation. Scans objects for modifications in the related list (Element) and the terminated relationship list (DeleteOref). Modified/Scheduled to delete objects are added to the save graph."}),"\n",(0,s.jsx)(t.h3,{id:"rollback",children:"%RollBack"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %RollBack() As %Status [ ProcedureBlock = 1, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This method is called by %TRollBack^%occTransaction when a transaction is rolled back."}),"\n",(0,s.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,s.jsx)(t.h3,{id:"serializeobject",children:"%SerializeObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %SerializeObject(ByRef serial As %Binary, partial As %Integer = 0) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"This method retrieves all of the serial values for referenced objects and places them into the instance variables and then validates, normalizes, and serializes the object (with a save of the persistent image if persistent)."}),"\n",(0,s.jsx)(t.h3,{id:"onconstructclone",children:"%OnConstructClone"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnConstructClone(oref As %RegisteredObject, deep As %Boolean = 0, ByRef cloned As %String) As %Status [ Private ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"clear",children:"Clear"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Clear() As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Clears the contents of the array. Both the OID and OREF values are cleared."}),"\n",(0,s.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,s.jsx)(t.h3,{id:"count",children:"Count"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Count() As %Integer\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns the number of elements contained in the Relationship."}),"\n",(0,s.jsx)(t.h3,{id:"findobject",children:"FindObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method FindObject(oid As %ObjectIdentity, key As %String) As %String [ CodeMode = expression, Final ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Starting from, but not including, position key, ",(0,s.jsx)(t.strong,{children:"FindObject"})," finds the next element in the list whose ID value equals the id from oid ($$$oidPrimary is the id). If key is a null string, ",(0,s.jsx)(t.strong,{children:"FindObject"})," starts at the beginning of the list."]}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"FindObject"}),' returns the position of the found element or null string ("") if no element was found.']}),"\n",(0,s.jsx)(t.h3,{id:"findobjectid",children:"FindObjectId"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method FindObjectId(id As %String, key As %String = "") As %String\n'})}),"\n",(0,s.jsxs)(t.p,{children:["Starting from, but not including, position key, ",(0,s.jsx)(t.strong,{children:"FindObjectId"})," finds the next element in the list whose ID value equals id. If key is a null string, ",(0,s.jsx)(t.strong,{children:"FindObjectId"})," starts at the beginning of the list."]}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"FindObjectId"}),' returns the position of the found element or null string ("") if no element was found.']}),"\n",(0,s.jsx)(t.h3,{id:"findoref",children:"FindOref"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method FindOref(oref As %ObjectHandle, key As %String = "", id As %String) As %String\n'})}),"\n",(0,s.jsx)(t.p,{children:"Starting from, but not including, location key, finds the next element in the array whose Oref value equals oref."}),"\n",(0,s.jsx)(t.p,{children:'If key is a null string (""), the search starts at the beginning of the array.'}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"FindOref"}),' returns the key associated with the found element or null string ("") if no element is found. Unswizzled references are compared to oref.%Oid() and if equal, swizzling will occur.']}),"\n",(0,s.jsx)(t.h3,{id:"getat",children:"GetAt"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetAt(key As %String) As %ObjectHandle\n"})}),"\n",(0,s.jsx)(t.p,{children:"Finds and returns the OREF value referring to the object at position key in the list."}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"GetAt"}),' returns the value of the element at location key or null string ("") if no element is found.']}),"\n",(0,s.jsx)(t.h3,{id:"getnext",children:"GetNext"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetNext(ByRef key As %String) As %ObjectHandle\n"})}),"\n",(0,s.jsx)(t.p,{children:'Finds and returns the OREF value referring to the object at the position after key in the list. If key is a null string (""), it returns the OREF value of the first element in the list.'}),"\n",(0,s.jsx)(t.p,{children:'The value of key, which is passed by reference, is updated to the position value of the returned element or null string ("") if key is at the end of the list.'}),"\n",(0,s.jsx)(t.h3,{id:"getobjectat",children:"GetObjectAt"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method GetObjectAt(key As %String = "", force As %Integer = 0) As %ObjectIdentity\n'})}),"\n",(0,s.jsx)(t.p,{children:"Finds and returns the OID value referring to the object at position key in the list."}),"\n",(0,s.jsx)(t.p,{children:"Returns the value of the element at location key or the null OID if no element is found."}),"\n",(0,s.jsx)(t.h3,{id:"getobjectidat",children:"GetObjectIdAt"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method GetObjectIdAt(key As %String = "", force As %Integer = 0) As %String [ CodeMode = expression ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"Finds and returns the ID value of the element associated with key."}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"GetObjectIdAt"}),' returns the ID value of the element associated with key or null string ("") if no element is found.']}),"\n",(0,s.jsx)(t.h3,{id:"getobjectnext",children:"GetObjectNext"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method GetObjectNext(ByRef key As %String = "") As %ObjectIdentity\n'})}),"\n",(0,s.jsx)(t.p,{children:'Finds and returns the OID value referring to the object at the position after key in the list. If key is a null string (""), it returns the OID value of the first element in the list.'}),"\n",(0,s.jsx)(t.p,{children:"The value of key, which is passed by reference, is updated to the position value of the returned element or the null OID if key is at the end of the list."}),"\n",(0,s.jsx)(t.h3,{id:"getobjectidnext",children:"GetObjectIdNext"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetObjectIdNext(ByRef key As %String) As %String [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(t.p,{children:'Finds and returns the ID value of the element at the location after key in the array. If key is a null string (""), it returns the ID value of the first element in the array.'}),"\n",(0,s.jsx)(t.p,{children:'The value of key, which is passed by reference, is updated to the key value of the returned element or null string ("") if key is at the end of the array.'}),"\n",(0,s.jsx)(t.h3,{id:"getobjectprevious",children:"GetObjectPrevious"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetObjectPrevious(ByRef key As %String) As %ObjectIdentity\n"})}),"\n",(0,s.jsx)(t.p,{children:'Finds and returns the OID value referring to the object at the position before key in the list. If key is a null string (""), it returns the OID value of the last element in the list.'}),"\n",(0,s.jsx)(t.p,{children:"The value of key, which is passed by reference, is updated to the position value of the returned element or the null OID if key is at the beginning of the list."}),"\n",(0,s.jsx)(t.h3,{id:"getobjectidprevious",children:"GetObjectIdPrevious"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetObjectIdPrevious(ByRef key As %String) As %String [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(t.p,{children:'Finds and returns the ID value of the element at the location before key in the array. If key is a null string (""), it returns the ID value of the last element in the array.'}),"\n",(0,s.jsx)(t.p,{children:'The value of key, which is passed by reference, is updated to the key value of the returned element or null string ("") if key is at the beginning of the array.'}),"\n",(0,s.jsx)(t.h3,{id:"getorefat",children:"GetOrefAt"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetOrefAt(key As %String, force As %Integer = 0) As %ObjectHandle [ CodeMode = expression, Final ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This method is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method."}),"\n",(0,s.jsx)(t.p,{children:"Finds and returns the OREF at position key in the list without automatically swizzling the object. Returns $$$NULLOREF if no element is found or if the referenced object hasn't been swizzled."}),"\n",(0,s.jsx)(t.h3,{id:"getprevious",children:"GetPrevious"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetPrevious(ByRef key As %String) As %ObjectHandle\n"})}),"\n",(0,s.jsx)(t.p,{children:'Finds and returns the OREF value referring to the object at the position before key in the list. If key is a null string (""), it returns the OREF value of the last element in the list.'}),"\n",(0,s.jsx)(t.p,{children:"The value of key, which is passed by reference, is updated to the position value of the returned element or the null OREF if key is at the beginning of the list."}),"\n",(0,s.jsx)(t.h3,{id:"isdefined",children:"IsDefined"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method IsDefined(key As %String) As %Boolean [ Final ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns true (1) if a value is defined at location key, otherwise false (0)."}),"\n",(0,s.jsx)(t.h3,{id:"load",children:"Load"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Load() As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Retrieves a list of all objects related to InverseReference and inserts them into array of related objects."}),"\n",(0,s.jsx)(t.h3,{id:"isempty",children:"IsEmpty"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method IsEmpty() As %Boolean\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns true if this collection is empty. To get better performance, if the contents of the collection are not already loaded, then this will run a minimal query to determine if the collection is empty, and will not actually load the contents."}),"\n",(0,s.jsx)(t.h3,{id:"next",children:"Next"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method Next(key As %String = "") As %String [ Final ]\n'})}),"\n",(0,s.jsxs)(t.p,{children:['Finds and returns the key value of the element at the location following key in the array. If key is a null string (""), then ',(0,s.jsx)(t.strong,{children:"Next"})," returns the key value for the first element in the array."]}),"\n",(0,s.jsx)(t.h3,{id:"previous",children:"Previous"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method Previous(key As %String = "") As %String [ Final ]\n'})}),"\n",(0,s.jsxs)(t.p,{children:['Finds and returns the key value of the element at the location preceding key in the array. If key is a null string (""), then ',(0,s.jsx)(t.strong,{children:"Previous"})," returns the key value for the last element in the array."]}),"\n",(0,s.jsx)(t.h3,{id:"insert",children:"Insert"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Insert(oref As %ObjectHandle) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Inserts an element with OREF value oref at the end of the array."}),"\n",(0,s.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,s.jsx)(t.h3,{id:"insertobject",children:"InsertObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method InsertObject(oid As %ObjectIdentity) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Inserts an element with OID value oid at the end of the array."}),"\n",(0,s.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,s.jsx)(t.h3,{id:"insertobjectid",children:"InsertObjectId"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method InsertObjectId(id As %String) As %Status [ CodeMode = expression, Final ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Inserts an element with ID value id at the end of the array."}),"\n",(0,s.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,s.jsx)(t.h3,{id:"removeat",children:"RemoveAt"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method RemoveAt(key As %String) As %ObjectIdentity\n"})}),"\n",(0,s.jsx)(t.p,{children:"Removes the element at position key in the array."}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"RemoveAt"})," returns the OID value of the removed element or the null OID if no element was removed."]}),"\n",(0,s.jsx)(t.h3,{id:"remove",children:"Remove"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Remove(oref As %ObjectHandle) As %ObjectIdentity\n"})}),"\n",(0,s.jsx)(t.p,{children:"Removes the element whose oref is oref."}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"Remove"})," returns the OID value of the removed element or the null OID if no element was removed."]}),"\n",(0,s.jsx)(t.h3,{id:"removeobject",children:"RemoveObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method RemoveObject(oid As %ObjectIdentity) As %ObjectIdentity\n"})}),"\n",(0,s.jsx)(t.p,{children:"Removes the element whose OID is oid."}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"RemoveAt"})," returns the OID value of the removed element or then null OID if no element was removed."]}),"\n",(0,s.jsx)(t.h3,{id:"setat",children:"SetAt"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method SetAt(oref As %ObjectHandle, key As %String) As %Status [ Internal ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Method for ",(0,s.jsx)(t.strong,{children:"INTERNAL USE ONLY"}),", not for public use."]}),"\n",(0,s.jsx)(t.p,{children:"Sets the OREF value of the element associated with key to oref."}),"\n",(0,s.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,s.jsx)(t.h3,{id:"setobjectat",children:"SetObjectAt"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method SetObjectAt(oid As %ObjectIdentity, key As %String) As %Status [ Internal ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Method for",(0,s.jsx)(t.strong,{children:"INTERNAL USE ONLY"}),", not for public use."]}),"\n",(0,s.jsx)(t.p,{children:"Sets the OID value of the element associated with key to oid."}),"\n",(0,s.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,s.jsx)(t.h3,{id:"unswizzleat",children:"%UnSwizzleAt"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %UnSwizzleAt(key As %String, force As %Integer = 0) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Unswizzles (removes from memory) the individual element at position key in the list."}),"\n",(0,s.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,s.jsx)(t.h3,{id:"relate",children:"Relate"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method Relate(oref As %ObjectHandle) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Inserts an element with OREF value oref at the end of the list."}),"\n",(0,s.jsx)(t.p,{children:"Returns a %Status value indicating success or failure. This method should not be invoked directly. It is invoked by the inverse relationship."}),"\n",(0,s.jsx)(t.h3,{id:"unrelate",children:"UnRelate"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method UnRelate(oref As %ObjectHandle) As %Status\n"})}),"\n",(0,s.jsx)(t.p,{children:"Moves an element with OREF value oref from the array of related objects to the list of terminated relationships."}),"\n",(0,s.jsx)(t.p,{children:"Returns a %Status value indicating success or failure. This method should not be invoked directly. It is invoked by the inverse relationship."}),"\n",(0,s.jsx)(t.h3,{id:"findexistingobjectid",children:"FindExistingObjectId"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method FindExistingObjectId(id As %String, key As %String = "") As %String [ Private ]\n'})}),"\n",(0,s.jsx)(t.p,{children:"Like FindObjectId but is private, and will not trigger a Load()"}),"\n",(0,s.jsx)(t.h3,{id:"findexistingoref",children:"FindExistingOref"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method FindExistingOref(oref As %ObjectHandle) As %String [ Private ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Like FindOref but doesn't support key starting point, is private, and will not trigger a Load()"}),"\n",(0,s.jsx)(t.h3,{id:"getexistingobjectat",children:"GetExistingObjectAt"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetExistingObjectAt(key As %String, force As %Integer = 0) As %ObjectIdentity\n"})}),"\n",(0,s.jsx)(t.p,{children:"Finds and returns the OID value referring to the object at position key in the list."}),"\n",(0,s.jsx)(t.p,{children:"Returns the value of the element at location key or the null OID if no element is found."}),"\n",(0,s.jsx)(t.h3,{id:"getexistingobjectnext",children:"GetExistingObjectNext"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetExistingObjectNext(ByRef key As %String) As %ObjectIdentity\n"})}),"\n",(0,s.jsx)(t.p,{children:'Finds and returns the OID value referring to the object at the position after key in the list. If key is a null string (""), it returns the OID value of the first element in the list.'}),"\n",(0,s.jsx)(t.p,{children:"The value of key, which is passed by reference, is updated to the position value of the returned element or the null OID if key is at the end of the list."})]})}function d(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>l,x:()=>a});var s=n(96540);const i={},r=s.createContext(i);function l(e){const t=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:l(e.components),s.createElement(r.Provider,{value:t},e.children)}}}]);