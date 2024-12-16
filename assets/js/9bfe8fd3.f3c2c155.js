"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[96216],{48181:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>a,default:()=>c,frontMatter:()=>r,toc:()=>o});var s=n(74848),i=n(28453);const r={pagination_prev:null,pagination_next:null},a="%Library.RegisteredObject",o=[{value:"Parameters",id:"parameters",level:2},{value:"CAPTION;",id:"caption",level:3},{value:"JAVATYPE;",id:"javatype",level:3},{value:"PROPERTYVALIDATION",id:"propertyvalidation",level:3},{value:"Properties",id:"properties",level:2},{value:"&quot;%%OID&quot;",id:"oid",level:3},{value:"Methods",id:"methods",level:2},{value:"&quot;%%OIDGet&quot;",id:"oidget",level:3},{value:"%Destruct",id:"destruct",level:3},{value:"%ConstructClone",id:"constructclone",level:3},{value:"%ConstructCloneInit",id:"constructcloneinit",level:3},{value:"%IsModified",id:"ismodified",level:3},{value:"%Construct",id:"construct",level:3},{value:"%NormalizeObject",id:"normalizeobject",level:3},{value:"%ObjectModified",id:"objectmodified",level:3},{value:"%BuildObjectGraph",id:"buildobjectgraph",level:3},{value:"%AddToSaveSet",id:"addtosaveset",level:3},{value:"%RemoveFromSaveSet",id:"removefromsaveset",level:3},{value:"%SerializeObject",id:"serializeobject",level:3},{value:"%BindExport",id:"bindexport",level:3},{value:"%ValidateObject",id:"validateobject",level:3},{value:"%OnAddToSaveSet",id:"onaddtosaveset",level:3},{value:"%OnClose",id:"onclose",level:3},{value:"%OnConstructClone",id:"onconstructclone",level:3},{value:"%OnNew",id:"onnew",level:3},{value:"%OnValidateObject",id:"onvalidateobject",level:3}];function l(e){const t={a:"a",br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",strong:"strong",table:"table",tbody:"tbody",td:"td",th:"th",thead:"thead",tr:"tr",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"libraryregisteredobject",children:"%Library.RegisteredObject"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Library.RegisteredObject Extends %Library.Base [ Abstract, ClientDataType = HANDLE, OdbcType = INTEGER, SqlCategory = INTEGER, System = 1 ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:[(0,s.jsx)(t.strong,{children:"For information on this class"}),", see ",(0,s.jsx)(t.a,{href:"/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.RegisteredObject",children:"Working with Registered Objects"}),"."]}),"\n",(0,s.jsx)(t.p,{children:"The %RegisteredObject class provides the core capabilities needed to manage the in-memory version of an object. Specifically, %RegisteredObject provides the ability to create and destroy object references (OREFs) as well as support for polymorphism. The %RegisteredObject class also provides the ability to swizzle other referenced objects (persistent or serial) into memory."}),"\n",(0,s.jsxs)(t.p,{children:["Classes derived directly from %RegisteredObject can be used as ",(0,s.jsx)(t.em,{children:"transient"})," objects; objects that exist in memory-and can be used from client applications-but are not stored in the database."]}),"\n",(0,s.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(t.h3,{id:"caption",children:"CAPTION;"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter CAPTION;\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Optional name used by the ",(0,s.jsx)(t.em,{children:"Form Wizard"})," for a class when generating forms."]}),"\n",(0,s.jsx)(t.h3,{id:"javatype",children:"JAVATYPE;"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter JAVATYPE;\n"})}),"\n",(0,s.jsx)(t.p,{children:"The Java type to be used when exported."}),"\n",(0,s.jsx)(t.h3,{id:"propertyvalidation",children:"PROPERTYVALIDATION"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter PROPERTYVALIDATION As INTEGER [ Constraint = "0,1,2", Flags = ENUM ] = 2;\n'})}),"\n",(0,s.jsx)(t.p,{children:"This parameter controls the default validation behavior for the object."}),"\n",(0,s.jsx)(t.p,{children:"It can take one of the following values:"}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(t.table,{children:[(0,s.jsx)(t.thead,{children:(0,s.jsxs)(t.tr,{children:[(0,s.jsxs)(t.th,{children:["0: ",(0,s.jsx)(t.em,{children:"NoValidate"})]}),(0,s.jsx)(t.th,{children:"Perform no automatic property validation."})]})}),(0,s.jsxs)(t.tbody,{children:[(0,s.jsxs)(t.tr,{children:[(0,s.jsxs)(t.td,{children:["1: ",(0,s.jsx)(t.em,{children:"ValidateOnSet"})]}),(0,s.jsxs)(t.td,{children:["Perform validation (call the property's ",(0,s.jsx)(t.strong,{children:"..IsValid"})," method) every time an attribute value is set."]})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsxs)(t.td,{children:["2: ",(0,s.jsx)(t.em,{children:"ValidateOnSave"})]}),(0,s.jsx)(t.td,{children:"Perform property validation (in the %ValidateObject method)) when the object is saved. This is only applicable to persistent objects."})]})]})]}),"\n",(0,s.jsxs)(t.p,{children:["Note: The use of ",(0,s.jsx)(t.em,{children:"ValidateOnSet"})," is not recommended-it can cause excessive communication between client and server in distributed applications. It is provided for compatability with previous versions."]}),"\n",(0,s.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(t.h3,{id:"oid",children:'"%%OID"'}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property "%%OID" As %RawString [ Internal, Private, Transient ];\n'})}),"\n",(0,s.jsx)(t.p,{children:"Serial value of object or the object identity"}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"oidget",children:'"%%OIDGet"'}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method "%%OIDGet"() As %RawString [ Internal, ServerOnly = 1 ]\n'})}),"\n",(0,s.jsx)(t.h3,{id:"destruct",children:"%Destruct"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %Destruct() As %Status [ CodeMode = generator, Final, GenerateAfter = %OnClose, Internal, Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This method is called by the system when the object is being destroyed"}),"\n",(0,s.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,s.jsx)(t.h3,{id:"constructclone",children:"%ConstructClone"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %ConstructClone(deep As %Integer = 0, ByRef cloned As %String, location As %String) As %RegisteredObject [ ServerOnly = 0 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Clone the current object to a new object. If deep is 1 then this does a deep copy which will also copy any subobjects and if deep is 0 then it will create another reference to any subobjects and increment the reference count appropriately. It returns the new cloned object."}),"\n",(0,s.jsx)(t.p,{children:"Note that even if deep=0 when you clone a parent object in a parent child relationship or a one object of a one to many relationship then it will construct clones of all the child/many objects. This is because a child/many object can only point at a single parent and so if we did not create a clone of these then you would have a relationship with zero items in it. If you really just want to clone the object without these child/many objects then pass deep=-1 to this method."}),"\n",(0,s.jsx)(t.p,{children:"After the clone is constructed it will call %OnConstructClone(object,deep,.cloned) on the clone if it is defined so that you can perform any additional steps e.g. taking out a lock. This works just the same way as %OnNew() does."}),"\n",(0,s.jsx)(t.p,{children:"The object is the oref of the original object that was cloned. The cloned array is just used internally when doing a deep clone to prevent recursive loops, do not pass anything in at all for this parameter on the initial call. If you write a %OnConstructClone and from here you wish to call %ConstructClone on another object pass in the cloned array, e.g. 'Do oref.%ConstructClone(1,.cloned)' so that it can prevent recursive loops."}),"\n",(0,s.jsx)(t.p,{children:"The location is used internally to pass the new location for stream objects."}),"\n",(0,s.jsx)(t.h3,{id:"constructcloneinit",children:"%ConstructCloneInit"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %ConstructCloneInit(object As %RegisteredObject, deep As %Integer = 0, ByRef cloned As %String, location As %String) As %Status [ CodeMode = generator, GenerateAfter = %OnConstructClone, Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.h3,{id:"ismodified",children:"%IsModified"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %IsModified() As %Integer [ CodeMode = generator, ServerOnly = 0 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Returns true (1) if a property of this instance has been modified, otherwise false (0). A TRUE result does not necessarily mean that any property has actually been changed. If %IsModified() returns false then the object has not been modified. There are some situations where we simply cannot efficiently detect a change in value. In these cases we will set the modified status of the property."}),"\n",(0,s.jsx)(t.h3,{id:"construct",children:"%Construct"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %Construct(initvalue As %RawString) As %Status [ CodeMode = generator, Final, GenerateAfter = %OnNew, Internal, Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This method is called by the system when the object is being constructed"}),"\n",(0,s.jsx)(t.p,{children:"Returns a %Status value indicating success or failure."}),"\n",(0,s.jsx)(t.h3,{id:"normalizeobject",children:"%NormalizeObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %NormalizeObject() As %Status [ CodeMode = generator, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Normalizes all of an object's property values by invoking the data type ",(0,s.jsx)(t.strong,{children:"Normalize"})," methods. Many data types may allow many different representations of the same value. Normalization converts a value to its cannonical, or ",(0,s.jsx)(t.em,{children:"normalized"}),", form."]}),"\n",(0,s.jsx)(t.h3,{id:"objectmodified",children:"%ObjectModified"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %ObjectModified() As %Integer [ CodeMode = generator, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This method is somewhat similar to %IsModified but it also checks to see if swizzled references would cause the object to become modified should they be serialized. This works on the assumption that a reference to a persistent object will never be modified if the ID has already been assigned. For references to serial objects, a call to %ObjectModified indicates whether or not the serialized value is different. If the reference to a swizzled object is different from the initial object state then the $$$objModAll macro will already return true. Reference the Set code. Returns true (1) if this instance has been modified, otherwise false (0)."}),"\n",(0,s.jsx)(t.h3,{id:"buildobjectgraph",children:"%BuildObjectGraph"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %BuildObjectGraph(depth As %Integer = 3, root As %Boolean = 1) As %Status [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Build the list of reachable objects and their dependencies"}),"\n",(0,s.jsx)(t.h3,{id:"addtosaveset",children:"%AddToSaveSet"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %AddToSaveSet(depth As %Integer = 3, refresh As %Integer = 0) As %Status [ CodeMode = generator, GenerateAfter = (%OnAddToSaveSet, %OnAfterSave, %OnBeforeSave), PlaceAfter = %SerializeObject, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This method adds the current object to the SaveSet containing objects that are part of the current %Save() for persistent classes or %GetSwizzleObject for serial classes. A queue of objects to be saved or serialized is also constructed. Only modified objects are included in the save queue. The value (OID or serial value in OID form) of each object is also placed in the SaveSet."}),"\n",(0,s.jsx)(t.p,{children:"This method will invoke the %OnAddToSaveSet method if it is implemented. See that method for more information."}),"\n",(0,s.jsx)(t.p,{children:"%AddToSaveSet should not ever be invoked directly except from %OnAddToSaveSet."}),"\n",(0,s.jsx)(t.p,{children:"This method takes these parameters: depth, with these values:"}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(t.table,{children:[(0,s.jsx)(t.thead,{children:(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.th,{children:"1:"}),(0,s.jsx)(t.th,{children:"Include this object in the SaveSet and, if it has not been serialized put it in the save queue and invoke %AddToSaveSet on any objects referenced by this object to the SaveSet with a depth of 1."})]})}),(0,s.jsxs)(t.tbody,{children:[(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.td,{children:"2:"}),(0,s.jsx)(t.td,{children:"Include this object in the SaveSet and save queue. Also invoke %AddToSaveSet on any referenced objects in the SaveSet with a depth of 1."})]}),(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.td,{children:"3:"}),(0,s.jsx)(t.td,{children:"Include this object in the SaveSet and, if modified, the save queue. Also invoke %AddToSaveSet on any referenced objects in the SaveSet with a depth of 3."})]})]})]}),"\n",(0,s.jsx)(t.p,{children:"refresh, with these values:"}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(t.table,{children:[(0,s.jsx)(t.thead,{children:(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.th,{children:"0:"}),(0,s.jsx)(t.th,{children:"Add this object to the save set only if it isn't already included."})]})}),(0,s.jsx)(t.tbody,{children:(0,s.jsxs)(t.tr,{children:[(0,s.jsx)(t.td,{children:"1:"}),(0,s.jsx)(t.td,{children:"Add this object to the SaveSet even if it already exists. This causes object dependencies to be rebuilt. Typically, this value is only passed by %OnAddToSaveSet when it modifies objects other than the current one."})]})})]}),"\n",(0,s.jsx)(t.p,{children:"Note: Swizzled serial objects always have an empty serial value and will always be placed in the save queue and the SaveSet. the value of depth simply gets passed on to its referenced objects."}),"\n",(0,s.jsx)(t.h3,{id:"removefromsaveset",children:"%RemoveFromSaveSet"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %RemoveFromSaveSet() As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This method removes the current object from the SaveSet. If this object is also in the save queue it is removed from there as well."}),"\n",(0,s.jsx)(t.h3,{id:"serializeobject",children:"%SerializeObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %SerializeObject(ByRef serial As %Binary, partial As %Integer = 0) As %Status [ CodeMode = generator, GenerateAfter = (%OnAfterSave, %OnBeforeSave), ServerOnly = 1 ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["This method retrieves all of the serial values for referenced objects and places them into the instance variables, Validates, Normalizes, and serializes the object (with a save of the persistent image if persistent).",(0,s.jsx)(t.br,{}),"\nThis method is not meant to be called directly. It is called by %Save and by %GetSwizzleObject."]}),"\n",(0,s.jsx)(t.h3,{id:"bindexport",children:"%BindExport"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %BindExport(dev As %String, ByRef Seen As %String, RegisterOref As %Boolean, AllowedDepth As %Integer, AllowedCapacity As %Integer) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"##BEGIN EVENT: SAVEDATA END EVENT: SAVEDATA This method is used by Language Binding Engine to send the whole object and all objects it referes to to the client."}),"\n",(0,s.jsx)(t.h3,{id:"validateobject",children:"%ValidateObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %ValidateObject(unused As %Integer = 0, checkserial As %Integer = 1) As %Status [ CodeMode = generator, GenerateAfter = %OnValidateObject, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This method validates an object."}),"\n",(0,s.jsx)(t.p,{children:"The %Save method of a persistent class calls this method before filing any objects in the database. The %ValidateObject of a referencing object can call it. You can also call it explicitly at any time."}),"\n",(0,s.jsx)(t.p,{children:"%ValidateObject does the following:"}),"\n",(0,s.jsxs)(t.ol,{children:["\n",(0,s.jsx)(t.li,{children:"If present, it will call a user-supplied %OnValidateObject method."}),"\n",(0,s.jsx)(t.li,{children:"It checks if any required property values are missing."}),"\n",(0,s.jsxs)(t.li,{children:["If the ",(0,s.jsx)(t.em,{children:"PROPERTYVALIDATION"})," class parameter is set to ValidateOnSave, it validates each non-null property value by calling the property method IsValid on each literal property and the %ValidateObject method for each object-valued embedded object property (properties whose type extend %SerialObject)."]}),"\n",(0,s.jsx)(t.li,{children:"If checkserial is 1, it forces the checking of any embedded object properties by calling their %ValidateObject method after swizzling this property."}),"\n",(0,s.jsx)(t.li,{children:"If checkserial is 2, it forces the checking of any collections of serial types by iterating over those collections and calling their %ValidateObject method after swizzling this property, in addition to the validation that occurs when checkserial is 1."}),"\n"]}),"\n",(0,s.jsx)(t.p,{children:"%ValidateObject returns a %Status indicating success or error. It is up to the caller to process the error value."}),"\n",(0,s.jsx)(t.p,{children:"%ValidateObject does not validate object-valued reference properties (properties whose type extends %Persistent) due to the possibility of circular dependencies between objects. The %Save method of a persistent class automatically detects and handles circular references between objects. If you require the validation of reference properties, you can override this method in a subclass or call %Save directly."}),"\n",(0,s.jsx)(t.h3,{id:"onaddtosaveset",children:"%OnAddToSaveSet"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnAddToSaveSet(depth As %Integer = 3, insert As %Integer = 0, callcount As %Integer = 0) As %Status [ Abstract, Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This callback method is invoked when the current object is added to the SaveSet, either because %Save() was invoked on this object or on an object that references this object. %OnAddToSaveSet can modify the current object. It can also add other objects to the current SaveSet by invoking %AddToSaveSet or remove objects by calling %RemoveFromSaveSet."}),"\n",(0,s.jsx)(t.p,{children:"If this method returns an error status then %Save() will fail and the transaction will be rolled back."}),"\n",(0,s.jsx)(t.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status [ Abstract, Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This callback method is invoked by the %Close method to provide notification that the current object is being closed."}),"\n",(0,s.jsx)(t.p,{children:"The return value of this method is ignored."}),"\n",(0,s.jsx)(t.h3,{id:"onconstructclone",children:"%OnConstructClone"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnConstructClone(object As %RegisteredObject, deep As %Boolean = 0, ByRef cloned As %String) As %Status [ Abstract, Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This callback method is invoked by the %ConstructClone method to provide notification that a clone of an object is being created. It passes in the oref of the object that was cloned in object."}),"\n",(0,s.jsx)(t.p,{children:"If this method returns an error then the object will not be created."}),"\n",(0,s.jsx)(t.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnNew() As %Status [ Abstract, Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This callback method is invoked by the %New method to provide notification that a new instance of an object is being created."}),"\n",(0,s.jsx)(t.p,{children:"If this method returns an error then the object will not be created."}),"\n",(0,s.jsx)(t.p,{children:"It is passed the arguments provided in the %New call. When customizing this method, override the arguments with whatever variables and types you expect to receive from %New(). For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:"}),"\n",(0,s.jsx)(t.p,{children:'Method %OnNew(dob as %Date = "", name as %Name = "") as %Status If instead of returning a %Status code this returns an oref and this oref is a subclass of the current class then this oref will be the one returned to the caller of %New method.'}),"\n",(0,s.jsx)(t.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnValidateObject() As %Status [ Abstract, Private, ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This callback method is invoked by the %ValidateObject method to provide notification that the current object is being validated."}),"\n",(0,s.jsx)(t.p,{children:"If this method returns an error then %ValidateObject will fail."})]})}function c(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(l,{...e})}):l(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>a,x:()=>o});var s=n(96540);const i={},r=s.createContext(i);function a(e){const t=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:a(e.components),s.createElement(r.Provider,{value:t},e.children)}}}]);