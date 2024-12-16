"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[63846],{11187:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>i,default:()=>c,frontMatter:()=>a,toc:()=>l});var r=n(74848),s=n(28453);const a={pagination_prev:null,pagination_next:null},i="%XML.Exchange.Adaptor",l=[{value:"Parameters",id:"parameters",level:2},{value:"GUIDENABLED",id:"guidenabled",level:3},{value:"XMLDEFAULTREFERENCE",id:"xmldefaultreference",level:3},{value:"Properties",id:"properties",level:2},{value:"GUID",id:"guid",level:3},{value:"Triggers",id:"triggers",level:2},{value:"ChangeControlBeforeInsert",id:"changecontrolbeforeinsert",level:3},{value:"ChangeControlAfterInsert",id:"changecontrolafterinsert",level:3},{value:"ChangeControlBeforeUpdate",id:"changecontrolbeforeupdate",level:3},{value:"ChangeControlAfterUpdate",id:"changecontrolafterupdate",level:3},{value:"ChangeControlBeforeDelete",id:"changecontrolbeforedelete",level:3},{value:"ChangeControlAfterDelete",id:"changecontrolafterdelete",level:3},{value:"Methods",id:"methods",level:2},{value:"GUIDGet",id:"guidget",level:3},{value:"GUIDSet",id:"guidset",level:3},{value:"XMLGetElement",id:"xmlgetelement",level:3},{value:"XMLExchangeName",id:"xmlexchangename",level:3},{value:"XMLExchangePath",id:"xmlexchangepath",level:3},{value:"XMLNew",id:"xmlnew",level:3},{value:"XMLLoadGUID",id:"xmlloadguid",level:3},{value:"XMLClear",id:"xmlclear",level:3},{value:"%OnDelete",id:"ondelete",level:3},{value:"%OnAfterDelete",id:"onafterdelete",level:3},{value:"%OnBeforeSave",id:"onbeforesave",level:3},{value:"%OnAfterSave",id:"onaftersave",level:3},{value:"%OnOpen",id:"onopen",level:3}];function o(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"xmlexchangeadaptor",children:"%XML.Exchange.Adaptor"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class %XML.Exchange.Adaptor Extends %XML.Adaptor [ Abstract, System = 3 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"XML Exchange Adaptor Sub-classes of %XML.Exchange.Adaptor are included in Configuration Management. Configuration Mangement is used to export and import Exchange Items. The items are written in XML such that the data is readable and different revisions of the item may be compared to identify changes."}),"\n",(0,r.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(t.h3,{id:"guidenabled",children:"GUIDENABLED"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter GUIDENABLED = 1;\n"})}),"\n",(0,r.jsx)(t.p,{children:"If this parameter is set to 1 then a GUID will be assigned (to the %GUID property) to each new object. When the object is saved for the first time this GUID value will be recorded in a namespace index which will allow GUID to be resolved to OIDs."}),"\n",(0,r.jsx)(t.h3,{id:"xmldefaultreference",children:"XMLDEFAULTREFERENCE"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter XMLDEFAULTREFERENCE As STRING = "GUID";\n'})}),"\n",(0,r.jsx)(t.p,{children:"Default value of XMLREFERENCE that specifies how to project references to XML. XMLREFERENCE may be overridden for each property. SUMMARY indicates that only the summary properies of the referenced class are used to represent the reference. SUMMARY is the default. Note that by default all properties are of the referenced class are in the summary. COMPLETE indicates that all properties of the referenced class are used to represent the reference. ID indicates that the id of a persistent or serial class is used to represent the reference. OID indicates that the oid of a persistent or serial class is used to represent the reference. The form of the oid will be classname,id. GUID indicates the the GUID of a persistent class is used to represent the reference."}),"\n",(0,r.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(t.h3,{id:"guid",children:"GUID"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Property GUID As %RawString(XMLPROJECTION = "ATTRIBUTE") [ Transient ];\n'})}),"\n",(0,r.jsx)(t.h2,{id:"triggers",children:"Triggers"}),"\n",(0,r.jsx)(t.h3,{id:"changecontrolbeforeinsert",children:"ChangeControlBeforeInsert"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Trigger ChangeControlBeforeInsert [ Event = INSERT ]\n"})}),"\n",(0,r.jsx)(t.h3,{id:"changecontrolafterinsert",children:"ChangeControlAfterInsert"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Trigger ChangeControlAfterInsert [ Event = INSERT, Order = 9, Time = AFTER ]\n"})}),"\n",(0,r.jsx)(t.h3,{id:"changecontrolbeforeupdate",children:"ChangeControlBeforeUpdate"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Trigger ChangeControlBeforeUpdate [ Event = UPDATE ]\n"})}),"\n",(0,r.jsx)(t.h3,{id:"changecontrolafterupdate",children:"ChangeControlAfterUpdate"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Trigger ChangeControlAfterUpdate [ Event = UPDATE, Order = 9, Time = AFTER ]\n"})}),"\n",(0,r.jsx)(t.h3,{id:"changecontrolbeforedelete",children:"ChangeControlBeforeDelete"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Trigger ChangeControlBeforeDelete [ Event = DELETE ]\n"})}),"\n",(0,r.jsx)(t.h3,{id:"changecontrolafterdelete",children:"ChangeControlAfterDelete"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Trigger ChangeControlAfterDelete [ Event = DELETE, Order = 9, Time = AFTER ]\n"})}),"\n",(0,r.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(t.h3,{id:"guidget",children:"GUIDGet"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method GUIDGet() As %RawString [ ServerOnly = 1 ]\n"})}),"\n",(0,r.jsx)(t.h3,{id:"guidset",children:"GUIDSet"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method GUIDSet(Arg As %RawString) As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,r.jsx)(t.h3,{id:"xmlgetelement",children:"XMLGetElement"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod XMLGetElement(id As %String, Object As %RegisteredObject = {$$$NULLOREF}) As %String [ CodeMode = generator, GenerateAfter = %GenerateParameters ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Return the Oid of the Exchange Item that contains this object."}),"\n",(0,r.jsx)(t.h3,{id:"xmlexchangename",children:"XMLExchangeName"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod XMLExchangeName(id As %String) As %String [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Returns an value to identify the object. This method may be overriden to return a code or description."}),"\n",(0,r.jsx)(t.h3,{id:"xmlexchangepath",children:"XMLExchangePath"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod XMLExchangePath(id As %String) As %String [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"For very large tables it is necessary to break the records down into sub-directories. This method returns the sub-directory name to be used for the given id."}),"\n",(0,r.jsx)(t.p,{children:"The sub-directory returned is then appended to the path using ##class(%File).SubDirectoryName()"}),"\n",(0,r.jsx)(t.h3,{id:"xmlnew",children:"XMLNew"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod XMLNew(document As %XML.Document, node As %Integer, containerOref As %RegisteredObject = "") As %RegisteredObject [ ProcedureBlock = 0, ServerOnly = 1 ]\n'})}),"\n",(0,r.jsx)(t.p,{children:"Get an instance of an XML enabled class."}),"\n",(0,r.jsxs)(t.p,{children:["You may override this method to do custom processing (such as initializing the object instance) before returning an instance of this class. However, this method should not be called directly from user code.",(0,r.jsx)(t.br,{}),"\nArguments:",(0,r.jsx)(t.br,{}),"\ndocument is the document with %XML.Node or macros in %xmlDOM.inc.",(0,r.jsx)(t.br,{}),"\nnodeId is a node id of the node which defines this object. An %XML.Node object may be obtained for this node using document.GetNode(nodeId)",(0,r.jsx)(t.br,{}),'\ncontainerOref is the containing object instance when called from XMLImport and is "" when called from %XML.Reader for Correlate\'d objects.']}),"\n",(0,r.jsx)(t.h3,{id:"xmlloadguid",children:"XMLLoadGUID"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod XMLLoadGUID(document As %XML.Document, node As %Integer, containerOref As %RegisteredObject = "") As %RegisteredObject [ CodeMode = generator, ProcedureBlock = 0 ]\n'})}),"\n",(0,r.jsx)(t.p,{children:"Returns a matching object based on unique indices"}),"\n",(0,r.jsx)(t.h3,{id:"xmlclear",children:"XMLClear"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method XMLClear() [ CodeMode = generator ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Clear propety values in preparation for the values from XML import"}),"\n",(0,r.jsx)(t.h3,{id:"ondelete",children:"%OnDelete"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"This callback method is invoked by the %Delete method to provide notification that the object specified by oid is being deleted."}),"\n",(0,r.jsx)(t.p,{children:"If this method returns an error then the object will not be deleted."}),"\n",(0,r.jsx)(t.h3,{id:"onafterdelete",children:"%OnAfterDelete"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %OnAfterDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"This callback method is invoked by the %Delete method to provide notification that the object specified by oid has been deleted. The callback occurs immediately after %DeleteData has been called. If %DeleteData returns an error then %OnAfterDelete is not called."}),"\n",(0,r.jsx)(t.p,{children:"If %OnAfterDelete returns an error (%Status) then the transaction is rolled back."}),"\n",(0,r.jsx)(t.h3,{id:"onbeforesave",children:"%OnBeforeSave"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnBeforeSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"This callback method is invoked by the %Save method to provide notification that the object is being saved. It is called before any data is written to disk."}),"\n",(0,r.jsx)(t.p,{children:"insert will be set to 1 if this object is being saved for the first time."}),"\n",(0,r.jsx)(t.p,{children:"If this method returns an error then the call to %Save will fail."}),"\n",(0,r.jsx)(t.h3,{id:"onaftersave",children:"%OnAfterSave"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnAfterSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"This callback method is invoked by the %Save method to provide notification that the object is being saved. It is called after the object's data has been successfully written to disk."}),"\n",(0,r.jsx)(t.p,{children:"insert will be set to 1 if this object is being saved for the first time."}),"\n",(0,r.jsx)(t.p,{children:"If this method returns an error then the call to %Save will fail."}),"\n",(0,r.jsx)(t.h3,{id:"onopen",children:"%OnOpen"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnOpen() As %Status [ Private, ServerOnly = 1 ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"This callback method is invoked by the %Open method to provide notification that the object specified by oid is being opened."}),"\n",(0,r.jsx)(t.p,{children:"If this method returns an error then the object will not be opened."})]})}function c(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>i,x:()=>l});var r=n(96540);const s={},a=r.createContext(s);function i(e){const t=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),r.createElement(a.Provider,{value:t},e.children)}}}]);