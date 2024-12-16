"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[42362],{66050:(e,s,i)=>{i.r(s),i.d(s,{contentTitle:()=>a,default:()=>l,frontMatter:()=>r,toc:()=>d});var n=i(74848),t=i(28453);const r={pagination_prev:null,pagination_next:null},a="%iKnow.Utils.MaintenanceWSAPI",d=[{value:"Parameters",id:"parameters",level:2},{value:"NAMESPACE",id:"namespace",level:3},{value:"SERVICENAME",id:"servicename",level:3},{value:"USECLASSNAMESPACES",id:"useclassnamespaces",level:3},{value:"Methods",id:"methods",level:2},{value:"AddEntityToSkipList",id:"addentitytoskiplist",level:3},{value:"AddStringToSkipList",id:"addstringtoskiplist",level:3},{value:"AddUserDictionaryEntry",id:"adduserdictionaryentry",level:3},{value:"ClearSkipList",id:"clearskiplist",level:3},{value:"CreateSkipList",id:"createskiplist",level:3},{value:"CreateUserDictionary",id:"createuserdictionary",level:3},{value:"DropSkipList",id:"dropskiplist",level:3},{value:"DropUserDictionary",id:"dropuserdictionary",level:3},{value:"GetSkipListElements",id:"getskiplistelements",level:3},{value:"GetSkipListId",id:"getskiplistid",level:3},{value:"GetSkipLists",id:"getskiplists",level:3},{value:"GetUserDictionaries",id:"getuserdictionaries",level:3},{value:"GetUserDictionaryEntries",id:"getuserdictionaryentries",level:3},{value:"GetUserDictionaryId",id:"getuserdictionaryid",level:3},{value:"HasSkipLists",id:"hasskiplists",level:3},{value:"RemoveEntityFromSkipList",id:"removeentityfromskiplist",level:3},{value:"RemoveStringFromSkipList",id:"removestringfromskiplist",level:3},{value:"RemoveUserDictionaryEntry",id:"removeuserdictionaryentry",level:3},{value:"SkipListContainsElement",id:"skiplistcontainselement",level:3},{value:"SkipListContainsString",id:"skiplistcontainsstring",level:3}];function o(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"iknowutilsmaintenancewsapi",children:"%iKnow.Utils.MaintenanceWSAPI"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %iKnow.Utils.MaintenanceWSAPI Extends %iKnow.Queries.AbstractWSAPI [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This is an automatically generated class, offering a functionally equivalent set of methods and queries as %iKnow.Utils.MaintenanceAPI, exposed as WebMethod methods."}),"\n",(0,n.jsx)(s.p,{children:"See the classdocs for %iKnow.Utils.MaintenanceAPI for more information."}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Utils/MaintenanceWSAPI";\n'})}),"\n",(0,n.jsx)(s.h3,{id:"servicename",children:"SERVICENAME"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter SERVICENAME = "iKnow.Utils.MaintenanceWSAPI";\n'})}),"\n",(0,n.jsx)(s.h3,{id:"useclassnamespaces",children:"USECLASSNAMESPACES"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter USECLASSNAMESPACES = 1;\n"})}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"addentitytoskiplist",children:"AddEntityToSkipList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AddEntityToSkipList(domainId As %Integer, skipListId As %Integer, entUniId As %Integer) As %Boolean [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Adds an existing entity (by ID) to a SkipList. For cross-domain SkipLists, use AddStringToSkipList"}),"\n",(0,n.jsx)(s.h3,{id:"addstringtoskiplist",children:"AddStringToSkipList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AddStringToSkipList(domainId As %Integer, skipListId As %Integer, string As %String) As %Boolean [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Adds a string to a SkipList, adding it as an entity if it didn't exist in the domain before."}),"\n",(0,n.jsx)(s.h3,{id:"adduserdictionaryentry",children:"AddUserDictionaryEntry"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AddUserDictionaryEntry(userDictId As %Integer, rewriteFrom As %String, rewriteTo As %String, position As %Integer = 0) As %Boolean [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Adds a single entry to a User Dictionary at position. If position <= 0 (default), it is added at the bottom of the list, otherwise at the requested position, shifting existing entries down if it was already taken."}),"\n",(0,n.jsxs)(s.p,{children:[(0,n.jsx)(s.strong,{children:"Deprecated"}),": please use AddEntry() in %iKnow.UserDictionary"]}),"\n",(0,n.jsx)(s.h3,{id:"clearskiplist",children:"ClearSkipList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ClearSkipList(pDomainId As %Integer, pSkipListId As %Integer) As %Boolean [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Clears the contents of a single SkipList."}),"\n",(0,n.jsx)(s.h3,{id:"createskiplist",children:"CreateSkipList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod CreateSkipList(domainId As %Integer, name As %String, description As %String = "") As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Create a new SkipList with the given name and description"}),"\n",(0,n.jsx)(s.h3,{id:"createuserdictionary",children:"CreateUserDictionary"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod CreateUserDictionary(name As %String, description As %String = "") As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"This method creates a User Dictionary with a given name and optional description and returns the created user dictionary ID afterwards. This method will return -1 if an error occurred, which is passed by reference as sc."}),"\n",(0,n.jsxs)(s.p,{children:[(0,n.jsx)(s.strong,{children:"Deprecated"}),": please use %New() in %iKnow.UserDictionary"]}),"\n",(0,n.jsx)(s.h3,{id:"dropskiplist",children:"DropSkipList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DropSkipList(domainId As %Integer, skipListId As %Integer) As %Boolean [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Drops a SkipList (entities part of the list will not be deleted from the domain)"}),"\n",(0,n.jsx)(s.h3,{id:"dropuserdictionary",children:"DropUserDictionary"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DropUserDictionary(userDictId As %Integer) As %Boolean [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"This method drops the User Dictionary identified by the supplied userDictId, including all its entries."}),"\n",(0,n.jsxs)(s.p,{children:[(0,n.jsx)(s.strong,{children:"Deprecated"}),": please use %DeleteId() in %iKnow.UserDictionary"]}),"\n",(0,n.jsx)(s.h3,{id:"getskiplistelements",children:"GetSkipListElements"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetSkipListElements(domainId As %Integer, skipListId As %Integer) As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Retrieves a list of all the strings in the specified SkipList"}),"\n",(0,n.jsx)(s.h3,{id:"getskiplistid",children:"GetSkipListId"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetSkipListId(domainId As %Integer, name As %String) As %Library.Integer [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Finds the SkipList ID corresponding to the supplied name."}),"\n",(0,n.jsx)(s.h3,{id:"getskiplists",children:"GetSkipLists"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetSkipLists(domainId As %Integer, pIncludeCrossDomain As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Retrieves a list of all the SkipLists registered in this domain."}),"\n",(0,n.jsx)(s.h3,{id:"getuserdictionaries",children:"GetUserDictionaries"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetUserDictionaries() As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns a list of all the User Dictionaries in this namespace."}),"\n",(0,n.jsxs)(s.p,{children:[(0,n.jsx)(s.strong,{children:"Deprecated"}),": please use %iKnow.UserDictionary"]}),"\n",(0,n.jsx)(s.h3,{id:"getuserdictionaryentries",children:"GetUserDictionaryEntries"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetUserDictionaryEntries(userDictId As %Integer) As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns the contents of a User Dictionary."}),"\n",(0,n.jsxs)(s.p,{children:[(0,n.jsx)(s.strong,{children:"Deprecated"}),": please use GetEntries() in %iKnow.UserDictionary"]}),"\n",(0,n.jsx)(s.h3,{id:"getuserdictionaryid",children:"GetUserDictionaryId"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetUserDictionaryId(name As %String) As %Library.Integer [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns the ID corresponding to the supplied User Dictionary name."}),"\n",(0,n.jsxs)(s.p,{children:[(0,n.jsx)(s.strong,{children:"Deprecated"}),": please use NameIndexOpen() %iKnow.UserDictionary"]}),"\n",(0,n.jsx)(s.h3,{id:"hasskiplists",children:"HasSkipLists"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HasSkipLists(pDomainId As %Integer) As %Library.Boolean [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns whether or not there are any SkipLists in the domain"}),"\n",(0,n.jsx)(s.h3,{id:"removeentityfromskiplist",children:"RemoveEntityFromSkipList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod RemoveEntityFromSkipList(domainId As %Integer, skipListId As %Integer, entUniId As %Integer) As %Boolean [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Removes an entity (by ID) from a SkipList (but not from the domain) For cross-domain SkipLists, use RemoveStringFromSkipList"}),"\n",(0,n.jsx)(s.h3,{id:"removestringfromskiplist",children:"RemoveStringFromSkipList"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod RemoveStringFromSkipList(domainId As %Integer, skipListId As %Integer, string As %String) As %Boolean [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Removes a string from a SkipList (but not from the domain)"}),"\n",(0,n.jsx)(s.h3,{id:"removeuserdictionaryentry",children:"RemoveUserDictionaryEntry"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod RemoveUserDictionaryEntry(userDictId As %Integer, position As %Integer) As %Boolean [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Removes the User Dictionary entry registered at position. This method will not impact the order or position of any remaning entries."}),"\n",(0,n.jsxs)(s.p,{children:[(0,n.jsx)(s.strong,{children:"Deprecated"}),": please use RemoveEntry() in %iKnow.UserDictionary"]}),"\n",(0,n.jsx)(s.h3,{id:"skiplistcontainselement",children:"SkipListContainsElement"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SkipListContainsElement(domainId As %Integer, skipListId As %Integer, entUniId As %Integer) As %Library.Boolean [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns whether or not the SkipList identified by skipListId contains the supplied entity."}),"\n",(0,n.jsx)(s.h3,{id:"skiplistcontainsstring",children:"SkipListContainsString"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SkipListContainsString(domainId As %Integer, skipListId As %Integer, entity As %String) As %Library.Boolean [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns whether or not the SkipList identified by skipListId contains the supplied entity."})]})}function l(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,s,i)=>{i.d(s,{R:()=>a,x:()=>d});var n=i(96540);const t={},r=n.createContext(t);function a(e){const s=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function d(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),n.createElement(r.Provider,{value:s},e.children)}}}]);