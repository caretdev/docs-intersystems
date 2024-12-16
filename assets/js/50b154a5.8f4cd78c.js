"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[59090],{11680:(e,t,a)=>{a.r(t),a.d(t,{contentTitle:()=>o,default:()=>d,frontMatter:()=>i,toc:()=>l});var n=a(74848),s=a(28453);const i={pagination_prev:null,pagination_next:null},o="%iKnow.Tables.Utils",l=[{value:"Methods",id:"methods",level:2},{value:"CreateDomainTables",id:"createdomaintables",level:3},{value:"CustomizeTables",id:"customizetables",level:3},{value:"DropDomainTables",id:"dropdomaintables",level:3},{value:"SyncDictionaryMatchCustomizations",id:"syncdictionarymatchcustomizations",level:3},{value:"SyncCustomizations",id:"synccustomizations",level:3},{value:"CreateClass",id:"createclass",level:3},{value:"AddProperty",id:"addproperty",level:3},{value:"AddParameter",id:"addparameter",level:3},{value:"AddIndex",id:"addindex",level:3},{value:"AddFK",id:"addfk",level:3},{value:"AddBVA",id:"addbva",level:3}];function r(e){const t={a:"a",blockquote:"blockquote",br:"br",code:"code",domain:"domain",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",ul:"ul",...(0,s.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"iknowtablesutils",children:"%iKnow.Tables.Utils"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Tables.Utils [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the ",(0,n.jsx)(t.a,{href:"https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW",children:"product documentation"})," for more detail."]}),"\n",(0,n.jsxs)(t.p,{children:["This class is used to generate and manage SQL projections of iKnow data structures for a particular domain. The easiest way to generate these SQL projections is by setting the objectsPackage attribute on the ",(0,n.jsxs)(t.domain,{children:[" element in a Domain Definition.",(0,n.jsx)(t.br,{}),"\nThese projections can be customized in any of the following ways:"]})]}),"\n",(0,n.jsxs)(t.ol,{children:["\n",(0,n.jsxs)(t.li,{children:["New properties for metadata can be added to any table. they can be either writeable properties (such as source-level metadata) or computed/calculated fields to denormalize the schema. Non-computed fields should be set using regular UPDATE calls in SQL or set commands in COS. Computed fields (with the SqlComputed flag on) will be populated automatically when either of the following conditions is met:\n",(0,n.jsxs)(t.ol,{children:["\n",(0,n.jsx)(t.li,{children:"The computed property has the SqlComputeOnChange attribute set to one or more custom fields: the value is updated when one of those is updated"}),"\n",(0,n.jsx)(t.li,{children:"The computed property is based on built-in fields (for example to denormalize the schema, such as adding a SourceId property to the Parts table): the value is updated (set) automatically when the domain is being built. Note that computed fields are built in a specific order and particular dependencies may not be satisfied, in which case the condition below applies. The build order is Sources, [EntityUnique, StemUnique, CrcUnique, CcUniqe], Sentence, Path, Part, CrcOccurrence, with the [] indicating that these are built in parallel."}),"\n",(0,n.jsx)(t.li,{children:"The table's %BuildCustomFields() method is called. Note that this is called automatically as part of loading / updating a domain. Iow, this method only needs to be called explicitly when a computed property depends on a custom field and its SqlComputeOnChange is not set appropriately, or when it has non-trivial dependencies on other tables and the automated call to %BuildCustomFields() does not cover them."}),"\n"]}),"\n"]}),"\n",(0,n.jsx)(t.li,{children:"Existing properties (created as part of the default mapping) that are marked as Calculated and SqlComputed can be marked SqlComputed only (not Calculated). These properties' values will then be persisted rather than calculated on-the-fly, which may benefit query performance. See above for the policy on when computed fields' values are updated."}),"\n",(0,n.jsx)(t.li,{children:"New indices can be added on existing or custom properties, regardless of whether their values are simply persisted, computed-persisted or calculated. These indices will be updated automatically when loading/updating a domain or when updating writeable fields as added in option 1."}),"\n",(0,n.jsx)(t.li,{children:"Custom methods, optionally serving to populate indices (like *BuildValueArray()) can be added to the existing tables."}),"\n"]}),"\n",(0,n.jsx)(t.p,{children:"The CustomAnnotations table is special in the sense that it's the only table that can be written to directly. It allows users to specify custom annotations for specific sentence parts (Part table), which will be available through the Annotations property of that Part table, next to attributes and matching results."}),"\n",(0,n.jsx)(t.p,{children:"The following modifications are NOT supported:"}),"\n",(0,n.jsxs)(t.ul,{children:["\n",(0,n.jsx)(t.li,{children:"modifying the definition of any property marked as ReadOnly, other than turning calculated fields into computed ones as described above."}),"\n",(0,n.jsx)(t.li,{children:"modifying the definition of any index or foreign key whose name starts with a % sign"}),"\n",(0,n.jsx)(t.li,{children:"modifying or overriding any *Get() or *BuildValueArray() method for a ReadOnly property provided in the generated classes or its superclasses"}),"\n",(0,n.jsx)(t.li,{children:"dropping any of the generated tables"}),"\n",(0,n.jsx)(t.li,{children:"INSERT and DELETE operations on any of the generated tables, except CustomAnnotations. Note that there are triggers that should prevent this."}),"\n",(0,n.jsx)(t.li,{children:"UPDATE operations on any non-custom fields. Note that this should be prevented by the ReadOnly attributes of those fields."}),"\n"]}),"\n",(0,n.jsx)(t.p,{children:"These table projections and any associated data will be dropped when dropping the domain."}),"\n",(0,n.jsx)(t.p,{children:"It is important to note that the generated projections include a number of denormalizations, such as calculated fields providing convenience access to data stored in another table. For example, the EntityValue property of the Part table is a calculated field based on the string value of the corresponding EntityUnique record. This means filtering or grouping by such denormalized columns directly may lead to valid but not necessarily efficient SQL. Therefore, it is recommend to check query plans and, when adopting the queries for production use (or when implementing a query generation utility), ensure appropriate indices will be used, either custom (as explained earlier) or default ones by adding a query subclause."}),"\n",(0,n.jsx)(t.p,{children:"When generating these tables, the actual classes, properties and indices generated will be based on the Build Flag settings and some domain parameters (most importantly $$$IKPSTEMMING). If these would change (which already assumes the domain is empty), the GenerateDomainTables() method should be re-invoked."}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"createdomaintables",children:"CreateDomainTables"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CreateDomainTables(pDomainId As %Integer, pPackageName As %String, pRefClass As %String = "", pMetadata As %List = "", ByRef pAdditionalIndices, pGlobalPrefix As %String = "", pOverWrite As %Boolean = 0, pQueue As %Boolean = 0) As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"Creates a set of tables representing the data in domain pDomainId in package pPackageName. If pOverWrite=1, existing table definitions will be overwritten, which may therefore no longer preserve non-calculated custom field values."}),"\n",(0,n.jsx)(t.p,{children:'If pRefClass is non-null, a "Ref" property of that type will be added to the Source class, initialized with the value of its LocalReference property (ie, the ID field used when loading from a SQL table).'}),"\n",(0,n.jsx)(t.p,{children:"Any metadata fields referenced in pMetadata will be added to the Source class as calculated fields, along with indices mapping the corresponding iKnow data structures where possible."}),"\n",(0,n.jsx)(t.p,{children:"A list of additional indices to be created can be supplied through pIndices in the following format:"}),"\n",(0,n.jsxs)(t.blockquote,{children:["\n",(0,n.jsxs)(t.p,{children:['pIndices("',(0,n.jsx)(t.em,{children:"TableName"}),'", "idx", "',(0,n.jsx)(t.em,{children:"IndexName"}),'") = $lb("',(0,n.jsx)(t.em,{children:"Properties"}),'", "',(0,n.jsx)(t.em,{children:"IndexType"}),'")']}),"\n"]}),"\n",(0,n.jsx)(t.p,{children:"For the Source table, these can be references to pRefClass columns by using arrow syntax."}),"\n",(0,n.jsx)(t.h3,{id:"customizetables",children:"CustomizeTables"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CustomizeTables(pDomainId As %Integer = "", pPackageName As %String, ByRef pCustomziations, pCompile As %Boolean = 1) As %Status [ Internal, Private ]\n'})}),"\n",(0,n.jsx)(t.h3,{id:"dropdomaintables",children:"DropDomainTables"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DropDomainTables(pPackageName As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Drops any classes generated by CreateDomainTables in package pPackageName and associated customization data (field values & indices)"}),"\n",(0,n.jsx)(t.h3,{id:"syncdictionarymatchcustomizations",children:"SyncDictionaryMatchCustomizations"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod SyncDictionaryMatchCustomizations(pDomainId As %Integer = "", pPackageName As %String = "", pAutoPurge As %Boolean = 1, pStartSrcId As %Integer = "", pEndSrcId As %Integer = "", pFilter As %iKnow.Filters.Filter = "") As %Status\n'})}),"\n",(0,n.jsx)(t.h3,{id:"synccustomizations",children:"SyncCustomizations"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod SyncCustomizations(pDomainId As %Integer = "", pPackageName As %String = "", pAutoPurge As %Boolean = 1, pStartSrcId As %Integer = "", pEndSrcId As %Integer = "", ByRef pRanges) As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"Either pDomainId or pPackageName has to be passed in, or both if they are known"}),"\n",(0,n.jsx)(t.h3,{id:"createclass",children:"CreateClass"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CreateClass(Output pClassDef As %Dictionary.ClassDefinition, pFQName As %String, pDataLocation As %String, pIndexLocation As %String, pOverWrite As %Boolean, pSuper As %String = "AbstractTable") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.h3,{id:"addproperty",children:"AddProperty"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod AddProperty(pClassDef As %Dictionary.ClassDefinition, pName As %String, pType As %String, ByRef pParams, pStoragePos As %Integer = 0, pReadOnly As %Boolean = 1, pCalculated As %Boolean = 0, pComputeCode As %String = "", pInternal As %Boolean = 0, pSqlFieldName As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.h3,{id:"addparameter",children:"AddParameter"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod AddParameter(pClassDef As %Dictionary.ClassDefinition, pName As %String, pValue As %String = "", pInternal As %Boolean = 0) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.h3,{id:"addindex",children:"AddIndex"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod AddIndex(pClassDef As %Dictionary.ClassDefinition, pName As %String, pProperties As %String = "", pUnique As %Boolean = 0, pType As %String = "", pGlobal As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.h3,{id:"addfk",children:"AddFK"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod AddFK(pClassDef As %Dictionary.ClassDefinition, pName As %String, pProperties As %String, pTarget As %String, pTargetKey As %String = "", pNoCheck As %Boolean = 1) As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.h3,{id:"addbva",children:"AddBVA"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod AddBVA(pClassDef As %Dictionary.ClassDefinition, pPropName As %String, pValueCode As %String = "", pAcceptZero As %Boolean = 1) As %Status [ Internal ]\n'})})]})}function d(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(r,{...e})}):r(e)}},28453:(e,t,a)=>{a.d(t,{R:()=>o,x:()=>l});var n=a(96540);const s={},i=n.createContext(s);function o(e){const t=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:o(e.components),n.createElement(i.Provider,{value:t},e.children)}}}]);