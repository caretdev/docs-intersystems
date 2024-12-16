"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[7027],{24539:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>a,default:()=>l,frontMatter:()=>s,toc:()=>c});var i=n(74848),r=n(28453);const s={pagination_prev:null,pagination_next:null},a="%iKnow.Matching.DictionaryAPI",c=[{value:"Parameters",id:"parameters",level:2},{value:"DropDictionaryEXP",id:"dropdictionaryexp",level:3},{value:"DropDictionaryItemEXP",id:"dropdictionaryitemexp",level:3},{value:"DropDictionaryTermEXP",id:"dropdictionarytermexp",level:3},{value:"GetDictionariesRT",id:"getdictionariesrt",level:3},{value:"GetDictionaryItemsRT",id:"getdictionaryitemsrt",level:3},{value:"GetDictionaryItemsAndTermsRT",id:"getdictionaryitemsandtermsrt",level:3},{value:"GetDictionaryTermsByItemRT",id:"getdictionarytermsbyitemrt",level:3},{value:"DropAllDictionaryDataEXP",id:"dropalldictionarydataexp",level:3},{value:"GetTermElementsRT",id:"gettermelementsrt",level:3},{value:"GetItemsByNameRT",id:"getitemsbynamert",level:3},{value:"GetTermsByNameRT",id:"gettermsbynamert",level:3},{value:"Methods",id:"methods",level:2},{value:"CreateDictionary",id:"createdictionary",level:3},{value:"CreateDictionaryInternal",id:"createdictionaryinternal",level:3},{value:"GetDictionaryId",id:"getdictionaryid",level:3},{value:"HasDictionaries",id:"hasdictionaries",level:3},{value:"DropDictionary",id:"dropdictionary",level:3},{value:"CreateDictionaryItem",id:"createdictionaryitem",level:3},{value:"GetDictionaryItemIdByURI",id:"getdictionaryitemidbyuri",level:3},{value:"DropDictionaryItem",id:"dropdictionaryitem",level:3},{value:"CreateDictionaryItemAndTerm",id:"createdictionaryitemandterm",level:3},{value:"CreateDictionaryTerm",id:"createdictionaryterm",level:3},{value:"DropDictionaryTerm",id:"dropdictionaryterm",level:3},{value:"CreateDictionaryFormat",id:"createdictionaryformat",level:3},{value:"CreateRegularExpression",id:"createregularexpression",level:3},{value:"CreateDictionaryTermFormat",id:"createdictionarytermformat",level:3},{value:"CreateDictionaryElement",id:"createdictionaryelement",level:3},{value:"GetDictionaries",id:"getdictionaries",level:3},{value:"GetDictionaryItems",id:"getdictionaryitems",level:3},{value:"GetDictionaryItemsAndTerms",id:"getdictionaryitemsandterms",level:3},{value:"GetDictionaryTermsByItem",id:"getdictionarytermsbyitem",level:3},{value:"DropAllDictionaryData",id:"dropalldictionarydata",level:3},{value:"ContainsFormat",id:"containsformat",level:3},{value:"GetTermElements",id:"gettermelements",level:3},{value:"GetFormatDetails",id:"getformatdetails",level:3},{value:"GetDictionaryCount",id:"getdictionarycount",level:3},{value:"GetItemCount",id:"getitemcount",level:3},{value:"GetTermCount",id:"gettermcount",level:3},{value:"GetTermCountByItem",id:"gettermcountbyitem",level:3},{value:"GetItemsByName",id:"getitemsbyname",level:3},{value:"GetTermsByName",id:"gettermsbyname",level:3},{value:"GetDictElemStringId",id:"getdictelemstringid",level:3}];function d(e){const t={a:"a",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(t.header,{children:(0,i.jsx)(t.h1,{id:"iknowmatchingdictionaryapi",children:"%iKnow.Matching.DictionaryAPI"})}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Matching.DictionaryAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]\n"})}),"\n",(0,i.jsxs)(t.p,{children:["The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the ",(0,i.jsx)(t.a,{href:"https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW",children:"product documentation"})," for more detail."]}),"\n",(0,i.jsx)(t.p,{children:"Main entry point for managing Dictionary contents to be used by the Matching APIs"}),"\n",(0,i.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(t.h3,{id:"dropdictionaryexp",children:"DropDictionaryEXP"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter DropDictionaryEXP [ Internal ] = 1;\n"})}),"\n",(0,i.jsx)(t.h3,{id:"dropdictionaryitemexp",children:"DropDictionaryItemEXP"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter DropDictionaryItemEXP [ Internal ] = 1;\n"})}),"\n",(0,i.jsx)(t.h3,{id:"dropdictionarytermexp",children:"DropDictionaryTermEXP"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter DropDictionaryTermEXP [ Internal ] = 1;\n"})}),"\n",(0,i.jsx)(t.h3,{id:"getdictionariesrt",children:"GetDictionariesRT"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetDictionariesRT = "dictId:%Integer,name:%String,description:%String,defaultLanguage:%String";\n'})}),"\n",(0,i.jsx)(t.h3,{id:"getdictionaryitemsrt",children:"GetDictionaryItemsRT"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetDictionaryItemsRT = "dictItemId:%Integer,name:%String,URI:%String,defaultLanguage:%String";\n'})}),"\n",(0,i.jsx)(t.h3,{id:"getdictionaryitemsandtermsrt",children:"GetDictionaryItemsAndTermsRT"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetDictionaryItemsAndTermsRT = "dictItemId:%Integer,name:%String,URI:%String,dictTermId:%Integer,string:%String,language:%String,isProcessed:%Boolean";\n'})}),"\n",(0,i.jsx)(t.h3,{id:"getdictionarytermsbyitemrt",children:"GetDictionaryTermsByItemRT"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetDictionaryTermsByItemRT = "dictTermId:%Integer,string:%String,language:%String,isProcessed:%Boolean";\n'})}),"\n",(0,i.jsx)(t.h3,{id:"dropalldictionarydataexp",children:"DropAllDictionaryDataEXP"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter DropAllDictionaryDataEXP [ Internal ] = 1;\n"})}),"\n",(0,i.jsx)(t.h3,{id:"gettermelementsrt",children:"GetTermElementsRT"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetTermElementsRT [ Internal ] = "dictElemId:%Integer,type:%Integer,valueId:%Integer,value:%String,position:%Integer,role:%Integer,minMatchScore:%Numeric,scoreMultiplier:%Numeric";\n'})}),"\n",(0,i.jsx)(t.h3,{id:"getitemsbynamert",children:"GetItemsByNameRT"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetItemsByNameRT = "dictId:%Integer,dictName:%String,itemId:%Integer,itemName:%String,URI:%String,language:%String";\n'})}),"\n",(0,i.jsx)(t.h3,{id:"gettermsbynamert",children:"GetTermsByNameRT"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter GetTermsByNameRT = "dictId:%Integer,dictName:%String,itemId:%Integer,itemName:%String,URI:%String,termId:%Integer,term:%String,language:%String";\n'})}),"\n",(0,i.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(t.h3,{id:"createdictionary",children:"CreateDictionary"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CreateDictionary(domainId As %Integer, name As %String, description As %String = "", defaultLanguage As %String = "en", defaultProfileId As %Integer = "", Output sc As %Status = {$$$OK}) As %Integer\n'})}),"\n",(0,i.jsx)(t.p,{children:"Creates a Dictionary and returns its ID."}),"\n",(0,i.jsx)(t.h3,{id:"createdictionaryinternal",children:"CreateDictionaryInternal"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CreateDictionaryInternal(domainId As %Integer, name As %String, description As %String = "", defaultLanguage As %String = "en", defaultProfileId As %Integer = "", mgrClass As %String = "", Output sc As %Status = {$$$OK}) As %Integer [ Internal ]\n'})}),"\n",(0,i.jsx)(t.h3,{id:"getdictionaryid",children:"GetDictionaryId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetDictionaryId(domainId As %Integer, name As %String, Output sc As %Status = {$$$OK}) As %Integer\n"})}),"\n",(0,i.jsx)(t.p,{children:"Looks up the Dictionary ID corresponding to the supplied Dictionary name."}),"\n",(0,i.jsx)(t.h3,{id:"hasdictionaries",children:"HasDictionaries"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod HasDictionaries(pDomainId As %Integer) As %Boolean\n"})}),"\n",(0,i.jsx)(t.p,{children:"Returns whether or not there are any dictionaries in the domain"}),"\n",(0,i.jsx)(t.h3,{id:"dropdictionary",children:"DropDictionary"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DropDictionary(domainId As %Integer, dictId As %Integer) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Deletes a Dictionary and all related items, terms, elements and matches."}),"\n",(0,i.jsx)(t.h3,{id:"createdictionaryitem",children:"CreateDictionaryItem"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CreateDictionaryItem(domainId As %Integer, dictId As %Integer, name As %String, ByRef URI As %String, defaultLanguage As %String = "en", Output sc As %Status = {$$$OK}) As %Integer\n'})}),"\n",(0,i.jsx)(t.p,{children:"Creates a Dictionary Item and returns its ID."}),"\n",(0,i.jsx)(t.h3,{id:"getdictionaryitemidbyuri",children:"GetDictionaryItemIdByURI"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetDictionaryItemIdByURI(domainId As %Integer, URI As %String, Output sc As %Status = {$$$OK}) As %Integer\n"})}),"\n",(0,i.jsx)(t.p,{children:"Looks up the Dictionary Item ID corresponding to the supplied Dictionary Item URI."}),"\n",(0,i.jsx)(t.h3,{id:"dropdictionaryitem",children:"DropDictionaryItem"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DropDictionaryItem(domainId As %Integer, dictItemId As %Integer) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Deletes a Dictionary Item with all related terms, elements and matches."}),"\n",(0,i.jsx)(t.h3,{id:"createdictionaryitemandterm",children:"CreateDictionaryItemAndTerm"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CreateDictionaryItemAndTerm(domainId As %Integer, dictId As %Integer, name As %String, ByRef URI As %String, language As %String = "en", Output sc As %Status = {$$$OK}) As %Integer\n'})}),"\n",(0,i.jsx)(t.p,{children:"Shorthand method for creating a Dictionary Item and Term using the Item's name. Returns the Items ID."}),"\n",(0,i.jsx)(t.h3,{id:"createdictionaryterm",children:"CreateDictionaryTerm"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CreateDictionaryTerm(domainId As %Integer, dictItemId As %Integer, string As %String, language As %String = "en", Output sc As %Status = {$$$OK}, isProcessed As %Boolean = 0) As %Integer\n'})}),"\n",(0,i.jsx)(t.p,{children:"Creates a Dictionary Term and returns its ID."}),"\n",(0,i.jsx)(t.p,{children:"If isProcessed is 1 (default 0), the term will be marked as processed upon creation and no Dictionary Elements will be created. This parameter is for internal use only and deprecated in 2013.1."}),"\n",(0,i.jsx)(t.h3,{id:"dropdictionaryterm",children:"DropDictionaryTerm"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DropDictionaryTerm(domainId As %Integer, dictTermId As %String) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Drops a single Dictionary Term and its matching results"}),"\n",(0,i.jsx)(t.h3,{id:"createdictionaryformat",children:"CreateDictionaryFormat"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CreateDictionaryFormat(domainId As %Integer, formatClass As %String, formatParams As %List = "", Output sc As %Status = {$$$OK}) As %Integer\n'})}),"\n",(0,i.jsxs)(t.p,{children:["Creates a Dictionary Format instance of the supplied ",(0,i.jsx)(t.em,{children:"formatClass"})," and returns its ID."]}),"\n",(0,i.jsx)(t.h3,{id:"createregularexpression",children:"CreateRegularExpression"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CreateRegularExpression(pDomainId As %Integer, pDictItemId As %Integer, pRegularExpression As %String, pReplace As %String = "", Output pSC As %Status) As %Integer\n'})}),"\n",(0,i.jsx)(t.p,{children:"Shorthand method to create a Dictionary Term composed of a single Dictionary Format of type %iKnow.Matching.Formats.RegularExpression, matching pRegularExpression and optionally producing output by replacing the matched parts of an entity with pReplace."}),"\n",(0,i.jsx)(t.h3,{id:"createdictionarytermformat",children:"CreateDictionaryTermFormat"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CreateDictionaryTermFormat(domainId As %Integer, dictItemId As %Integer, formatClass As %String, formatParams As %List = "", Output sc As %Status = {$$$OK}) As %Integer\n'})}),"\n",(0,i.jsx)(t.p,{children:"Creates a Dictionary Term composed of a single Dictionary Format and returns the Terms ID."}),"\n",(0,i.jsx)(t.h3,{id:"createdictionaryelement",children:"CreateDictionaryElement"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CreateDictionaryElement(domainId As %Integer, type As %String = {$$$DETERM}, dictTermId As %Integer, value As %String, position As %Integer = {$$$DMPOSUNDEFINED}, role As %Integer = {$$$DMROLEUNDEFINED}, matchScore As %Integer = {$$$DMSCOREUNDEFINED}, nbOfEntries As %Integer = -1, useTransaction As %Boolean = 1, elementWeight As %Numeric = 1, Output sc As %Status = {$$$OK}) As %Integer [ Internal ]\n"})}),"\n",(0,i.jsx)(t.p,{children:'Creates a Dictionary Element NOTE: if $$$IKPSTANDARDIZEDFORM="Stem", the input is assumed to be stemmed already'}),"\n",(0,i.jsx)(t.h3,{id:"getdictionaries",children:"GetDictionaries"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetDictionaries(ByRef result, domainId As %Integer, page As %Integer = 1, pageSize As %Integer = 10, pIncludeCrossDomain As %Boolean = 0) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:'Returns all Dictionaries in this domain. If pIncludeCrossDomain = 1, any cross-domain dictionaries registered in "domain 0" are also included in the result, using a negative value for their ID.'}),"\n",(0,i.jsx)(t.h3,{id:"getdictionaryitems",children:"GetDictionaryItems"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetDictionaryItems(ByRef result, domainId As %Integer, dictId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Returns all Dictionary Items for the given Dictionary ID."}),"\n",(0,i.jsx)(t.h3,{id:"getdictionaryitemsandterms",children:"GetDictionaryItemsAndTerms"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetDictionaryItemsAndTerms(ByRef result, domainId As %Integer, dictId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Returns all Dictionary Items and their Terms for the given Dictionary ID."}),"\n",(0,i.jsx)(t.h3,{id:"getdictionarytermsbyitem",children:"GetDictionaryTermsByItem"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetDictionaryTermsByItem(ByRef result, domainId As %Integer, dictItemId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Returns all the Dictionary Terms for the given Dictionary Item ID."}),"\n",(0,i.jsx)(t.h3,{id:"dropalldictionarydata",children:"DropAllDictionaryData"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DropAllDictionaryData(domainId As %Integer) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Drops all dictionary data, including matching results. This method will fail if there are managed dictionaries in this domain."}),"\n",(0,i.jsx)(t.h3,{id:"containsformat",children:"ContainsFormat"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ContainsFormat(pDomainId As %Integer, pTermId As %Integer, Output pSC As %Status = {$$$OK}) As %Boolean [ Internal ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Returns whether or not a given Dictionary Term pTermId contains at least one Dictionary Format element."}),"\n",(0,i.jsx)(t.h3,{id:"gettermelements",children:"GetTermElements"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetTermElements(ByRef pResult, pDomainId As %Integer, pDictionaryTermId As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Retrieves the elements corresponding to a given pDictionaryTermId."}),"\n",(0,i.jsx)(t.h3,{id:"getformatdetails",children:"GetFormatDetails"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetFormatDetails(pDomainId As %Integer, pDictionaryFormatId As %Integer, Output pFormatClass As %String, Output pFormatParams As %List) As %Status\n"})}),"\n",(0,i.jsx)(t.p,{children:"Retrieves the Dictionary format class and parameters for a given pDictionaryFormatId"}),"\n",(0,i.jsx)(t.h3,{id:"getdictionarycount",children:"GetDictionaryCount"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetDictionaryCount(pDomainId As %Integer, Output pSC As %Status = {$$$OK}) As %Integer\n"})}),"\n",(0,i.jsx)(t.h3,{id:"getitemcount",children:"GetItemCount"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetItemCount(pDomainId As %Integer, pDictIds As %List = "", Output pSC As %Status) As %Integer\n'})}),"\n",(0,i.jsx)(t.h3,{id:"gettermcount",children:"GetTermCount"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTermCount(pDomainId As %Integer, pDictIds As %List = "", Output pSC As %Status = {$$$OK}) As %Integer\n'})}),"\n",(0,i.jsx)(t.h3,{id:"gettermcountbyitem",children:"GetTermCountByItem"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTermCountByItem(pDomainId As %Integer, pDictItemIds As %List = "", Output pSC As %Status = {$$$OK}) As %Integer\n'})}),"\n",(0,i.jsx)(t.h3,{id:"getitemsbyname",children:"GetItemsByName"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetItemsByName(ByRef pResult, pDomainId As %Integer, pString As %String, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %iKnow.Filters.Filter = "", pDictIds As %List = "", pMode As %Integer = {$$$USEPARTS}, pCheck As %String(VALUELIST="NAME,URI") = "NAME", pLang As %String = "en") As %Status\n'})}),"\n",(0,i.jsx)(t.p,{children:"Note: pFilter is ignored when looking at cross-domain dictionaries"}),"\n",(0,i.jsx)(t.h3,{id:"gettermsbyname",children:"GetTermsByName"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTermsByName(ByRef pResult, pDomainId As %Integer, pString As %String, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %iKnow.Filters.Filter = "", pDictIds As %List = "", pMode As %Integer = {$$$USEPARTS}, pLang As %String = "en") As %Status\n'})}),"\n",(0,i.jsx)(t.p,{children:"Note: pFilter is ignored when looking at cross-domain dictionaries"}),"\n",(0,i.jsx)(t.h3,{id:"getdictelemstringid",children:"GetDictElemStringId"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetDictElemStringId(pDomainId As %Status, pString As %String, Output pSC As %Status = {$$$OK}) As %Integer [ Internal ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Returns an identifier for the string value pString of a dictionary element. If this string exists as a real Unique Entity, the corresponding entUniId is returned. Otherwise, the string is added to ^IRIS.IK.Mat.DictElemStringId (if it didn't exist already) and the corresponding dictElemStringId is returned. In either case, a lookup entry in ^IRIS.IK.Mat.DictElemString is added if it didn't exist already."})]})}function l(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,i.jsx)(t,{...e,children:(0,i.jsx)(d,{...e})}):d(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>a,x:()=>c});var i=n(96540);const r={},s=i.createContext(r);function a(e){const t=i.useContext(s);return i.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),i.createElement(s.Provider,{value:t},e.children)}}}]);