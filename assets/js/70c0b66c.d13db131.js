"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[39050],{5287:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>a,default:()=>d,frontMatter:()=>i,toc:()=>l});var n=t(74848),r=t(28453);const i={pagination_prev:null,pagination_next:null},a="%DeepSee.ComputedDimension.Base",l=[{value:"Parameters",id:"parameters",level:2},{value:"DIMTYPE",id:"dimtype",level:3},{value:"CACHECOMPUTEDBITSET",id:"cachecomputedbitset",level:3},{value:"BEHAVIOR",id:"behavior",level:3},{value:"Properties",id:"properties",level:2},{value:"%cube",id:"cube",level:3},{value:"%baseCube",id:"basecube",level:3},{value:"%factNumber",id:"factnumber",level:3},{value:"%factName",id:"factname",level:3},{value:"%dimNumber",id:"dimnumber",level:3},{value:"%hierNumber",id:"hiernumber",level:3},{value:"%levelNumber",id:"levelnumber",level:3},{value:"Methods",id:"methods",level:2},{value:"%GetDimType",id:"getdimtype",level:3},{value:"%GetBehavior",id:"getbehavior",level:3},{value:"%Count",id:"count",level:3},{value:"%GetLevelNumber",id:"getlevelnumber",level:3},{value:"%Create",id:"create",level:3},{value:"%FindComputedMemberByName",id:"findcomputedmemberbyname",level:3},{value:"%FindComputedMemberByKey",id:"findcomputedmemberbykey",level:3},{value:"%GetAllMembers",id:"getallmembers",level:3},{value:"%GetPredefinedMembers",id:"getpredefinedmembers",level:3},{value:"%GetComputedMembers",id:"getcomputedmembers",level:3},{value:"%OnGetComputedMembers",id:"ongetcomputedmembers",level:3},{value:"%OnGetComputedMembersFiltered",id:"ongetcomputedmembersfiltered",level:3},{value:"%ComputeIndexKey",id:"computeindexkey",level:3},{value:"%ComputeBitset",id:"computebitset",level:3},{value:"%OnComputeBitset",id:"oncomputebitset",level:3},{value:"%CreateIndexFromSQL",id:"createindexfromsql",level:3},{value:"%CreateIndexFromSearchableMeasure",id:"createindexfromsearchablemeasure",level:3},{value:"%GetFactTable",id:"getfacttable",level:3},{value:"%GetSourceTable",id:"getsourcetable",level:3},{value:"%MemberSearch",id:"membersearch",level:3},{value:"%ResolveKey",id:"resolvekey",level:3},{value:"%ProcessSQL",id:"processsql",level:3},{value:"%Eval",id:"eval",level:3},{value:"%GetCurrentQuery",id:"getcurrentquery",level:3},{value:"%OnKillFacts",id:"onkillfacts",level:3},{value:"%GetMemberSpec",id:"getmemberspec",level:3},{value:"%MemberSearchByMembers",id:"membersearchbymembers",level:3},{value:"%MemberSearchByIndex",id:"membersearchbyindex",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"deepseecomputeddimensionbase",children:"%DeepSee.ComputedDimension.Base"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.ComputedDimension.Base Extends %RegisteredObject [ System = 3 ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["This is the base class for DeepSee computed dimension classes.",(0,n.jsx)(s.br,{}),"\nA computed dimension class defines the behavior for a level within a hierarchy within a DeepSee computed dimension."]}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"dimtype",children:"DIMTYPE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DIMTYPE As STRING = "text";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Type reported back to the UI. This determines what type of control to display for filters based on this class."}),"\n",(0,n.jsx)(s.h3,{id:"cachecomputedbitset",children:"CACHECOMPUTEDBITSET"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter CACHECOMPUTEDBITSET As STRING [ Constraint = ",NEVER,CHECK", Flags = ENUM ] = "NEVER";\n'})}),"\n",(0,n.jsx)(s.p,{children:'Controls whether results of %OnComputeBitset can be reused Available values are "NEVER", "CHECK", with NEVER (default) meaning no values are cached and CHECK meaning the timestamp of previous %OnComputeBitset results is compared to the cube\'s latest update timestamp.'}),"\n",(0,n.jsx)(s.h3,{id:"behavior",children:"BEHAVIOR"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter BEHAVIOR As STRING [ Constraint = ",BITSET,MDX", Flags = ENUM ] = "BITSET";\n'})}),"\n",(0,n.jsxs)(s.p,{children:['Controls the run-time behavior of the dimension. Available values are "BITSET", and "MDX".',(0,n.jsx)(s.br,{}),"\nBITSET (default) indicates that this class will compute a set of bits that define membership within a given dimension member.",(0,n.jsx)(s.br,{}),"\nMDX indicates that this class will return a set of valid MDX expressions that will be used to resolve the members of the dimension."]}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"cube",children:"%cube"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %cube As %DeepSee.Datatype.string;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Name of the cube the computed level belongs to."}),"\n",(0,n.jsx)(s.h3,{id:"basecube",children:"%baseCube"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %baseCube As %DeepSee.Datatype.string;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Name of the base cube the computed level belongs to, if ..%cube is a subject area. Otherwise, this property is set to the same value as ..%cube."}),"\n",(0,n.jsx)(s.h3,{id:"factnumber",children:"%factNumber"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %factNumber As %Integer;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Fact # of the computed level."}),"\n",(0,n.jsx)(s.h3,{id:"factname",children:"%factName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %factName As %String;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Fact Name associated with the computed level. This is the name of the fact that contains the default search data."}),"\n",(0,n.jsx)(s.h3,{id:"dimnumber",children:"%dimNumber"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %dimNumber As %Integer;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Dimension # of the computed level."}),"\n",(0,n.jsx)(s.h3,{id:"hiernumber",children:"%hierNumber"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %hierNumber As %Integer;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Hierarchy # of the computed level."}),"\n",(0,n.jsx)(s.h3,{id:"levelnumber",children:"%levelNumber"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property %levelNumber As %Integer;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Level # of the computed level."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"getdimtype",children:"%GetDimType"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetDimType() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return the type of this class (used by UI components)."}),"\n",(0,n.jsx)(s.h3,{id:"getbehavior",children:"%GetBehavior"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetBehavior() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return the behavior of this class."}),"\n",(0,n.jsx)(s.h3,{id:"count",children:"%Count"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %Count(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Integer\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return number of members."}),"\n",(0,n.jsx)(s.h3,{id:"getlevelnumber",children:"%GetLevelNumber"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetLevelNumber(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelName As %String) As %Integer\n"})}),"\n",(0,n.jsx)(s.p,{children:'Given a level name, pLevelName, return the corresponding level number. Return "" if there is no level with the name.'}),"\n",(0,n.jsx)(s.h3,{id:"create",children:"%Create"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %Create(pCube As %String, pFactNo As %Integer, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %DeepSee.ComputedDimension.Base\n"})}),"\n",(0,n.jsx)(s.p,{children:"Create a instance of this dimension class."}),"\n",(0,n.jsx)(s.h3,{id:"findcomputedmemberbyname",children:"%FindComputedMemberByName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %FindComputedMemberByName(pName As %String, Output pFlag As %Boolean, Output pMemberKey As %String, Output pMemberId As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Test if pName is a valid member name."}),"\n",(0,n.jsx)(s.h3,{id:"findcomputedmemberbykey",children:"%FindComputedMemberByKey"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %FindComputedMemberByKey(pKey As %String, Output pFlag As %Boolean, Output pMemberName As %String, Output pMemberId As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Find the member with the given key value."}),"\n",(0,n.jsx)(s.h3,{id:"getallmembers",children:"%GetAllMembers"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GetAllMembers(ByRef pMemberList, pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Return the set of all members (pre-defined and run-time) for this dimension. Sort them according to the sort options in the cube meta data.",(0,n.jsx)(s.br,{}),"\npMemberList returns a set of members defined in the cube model:",(0,n.jsx)(s.br,{}),"\npMemberList(n) = $LB(id,caption,key,[format])"]}),"\n",(0,n.jsx)(s.h3,{id:"getpredefinedmembers",children:"%GetPredefinedMembers"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetPredefinedMembers(ByRef pMemberList, pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Return the set of pre-defined members for this dimension. These will be in the cube meta data.",(0,n.jsx)(s.br,{}),"\npMemberList returns a set of members defined in the cube model: pMemberList(n) = $LB(id,caption,key,[format])"]}),"\n",(0,n.jsx)(s.h3,{id:"getcomputedmembers",children:"%GetComputedMembers"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method %GetComputedMembers(ByRef pMemberList, pRollupKey As %String = "", ByRef pRange As %String = "") As %Status [ Final ]\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Find the set of members for this computed dimension object.",(0,n.jsx)(s.br,{}),"\npMemberList may contain a set of members defined in the cube model: pMemberList(n) = $LB(id,name,key,[format])",(0,n.jsx)(s.br,{}),"\nIf so, use this list, otherwise compute one."]}),"\n",(0,n.jsx)(s.p,{children:"pRollupKey and pRange can be used to filter the computed members returned, if applicable for this computed dimension."}),"\n",(0,n.jsx)(s.h3,{id:"ongetcomputedmembers",children:"%OnGetComputedMembers"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnGetComputedMembers(ByRef pMemberList) As %Status [ Deprecated ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Find the set of members for this computed dimension object.",(0,n.jsx)(s.br,{}),"\npMemberList(n) = $LB(id,name,key)",(0,n.jsx)(s.br,{}),"\nThis can be implemented by subclasses."]}),"\n",(0,n.jsx)(s.p,{children:"This method is deprecated, implement %OnGetComputedMembersFiltered instead."}),"\n",(0,n.jsx)(s.h3,{id:"ongetcomputedmembersfiltered",children:"%OnGetComputedMembersFiltered"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method %OnGetComputedMembersFiltered(ByRef pMemberList, pRollupKey As %String = "", ByRef pRange As %String = "") As %Status\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Find the set of members for this computed dimension object satisfying pRollupKey and pRange (if applicable for this implementation).",(0,n.jsx)(s.br,{}),"\npMemberList(n) = $LB(id,name,key)",(0,n.jsx)(s.br,{}),"\nThis can be implemented by subclasses."]}),"\n",(0,n.jsx)(s.h3,{id:"computeindexkey",children:"%ComputeIndexKey"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ComputeIndexKey(pMemberKey As %String) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Compute a hash key for a given member member."}),"\n",(0,n.jsx)(s.h3,{id:"computebitset",children:"%ComputeBitset"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ComputeBitset(pSpec As %String, Output pIndexKey As %String) As %Status [ CodeMode = objectgenerator, Final, ForceGenerate ]\n"})}),"\n",(0,n.jsx)(s.p,{children:'Build the bitset that corresponds to the given computed dimension "spec".'}),"\n",(0,n.jsx)(s.h3,{id:"oncomputebitset",children:"%OnComputeBitset"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnComputeBitset(pSpec As %String, pIndexKey As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Do the actual work of building the bitset. Implemented in subclasses."}),"\n",(0,n.jsx)(s.h3,{id:"createindexfromsql",children:"%CreateIndexFromSQL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method %CreateIndexFromSQL(pSQL As %String, pIndexKey As %String, pRS As %SQL.StatementResult = "", pTranslateIds As %Boolean = 0) As %Status\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Utility method. Prepare and execute the given SQL statement and build an index from it.",(0,n.jsx)(s.br,{}),"\nIf optional pRS is supplied, use it to fetch ID values (result set must have an ID column).",(0,n.jsx)(s.br,{}),"\nIf pTranslateIds is true, then translate source id value to fact ids."]}),"\n",(0,n.jsx)(s.h3,{id:"createindexfromsearchablemeasure",children:"%CreateIndexFromSearchableMeasure"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method %CreateIndexFromSearchableMeasure(pSearchMeasureIndex As %String = "", pComparison As %String, pValue As %Numeric, pIndexKey As %String = "") As %Status\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Utility method. Build an index directly from a comparison on a searchable measure. The comparison is supplied by the arguments",(0,n.jsx)(s.br,{}),"\npSearchMeasureIndex - The name of the searchable index on the searchable measure",(0,n.jsx)(s.br,{}),"\npComparison - The comparison operator; legal values are SQL numeric comparisons: <,<=,=,=>,>,<>",(0,n.jsx)(s.br,{}),"\npValue - The target value of the comparison. This must be numeric",(0,n.jsx)(s.br,{}),"\npIndexKey - The key of the new index being constructed out of the searchable measure"]}),"\n",(0,n.jsx)(s.h3,{id:"getfacttable",children:"%GetFactTable"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GetFactTable() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return the (SQL) name of the fact table for the current cube."}),"\n",(0,n.jsx)(s.h3,{id:"getsourcetable",children:"%GetSourceTable"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GetSourceTable() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return the (SQL) name of the source table for the current cube."}),"\n",(0,n.jsx)(s.h3,{id:"membersearch",children:"%MemberSearch"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %MemberSearch(pSearchKey As %String, Output pList As %List) As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Execute a search for members.",(0,n.jsx)(s.br,{}),"\nReturn a list of the form:",(0,n.jsx)(s.br,{}),"\npList(n) = $LB(value,key)"]}),"\n",(0,n.jsx)(s.h3,{id:"resolvekey",children:"%ResolveKey"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ResolveKey(pSpec As %String, Output pRKey As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Resolve any special tokens or expression in a key value and return the result."}),"\n",(0,n.jsx)(s.h3,{id:"processsql",children:"%ProcessSQL"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ProcessSQL(pSQL As %String, ByRef pSubstList, Output pFirstToken As %String, Output pErrorMsg As %String) As %String\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Apply substitutions to an SQL query string used within a computed dimension expression.",(0,n.jsx)(s.br,{}),"\npSubstList is an array of $$$ substitution values, e.g.:",(0,n.jsx)(s.br,{}),'\npSubstList("TABLE") = table name',(0,n.jsx)(s.br,{}),'\npSubstList("FACT") = fact name',(0,n.jsx)(s.br,{}),"\n{} can be used to enclose an ObjectScript expression that is evaluated and whose results become part of the SQL text of the query.",(0,n.jsx)(s.br,{}),"\n[dim].[mbr] can be used to refer to a specific cube element (such as a measure). This is replaced with the fact name that corresponds to the element."]}),"\n",(0,n.jsx)(s.h3,{id:"eval",children:"%Eval"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %Eval(pExpr As %String, Output pErrorMsg As %String) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Evaluate the given ObjectScript expression."}),"\n",(0,n.jsx)(s.h3,{id:"getcurrentquery",children:"%GetCurrentQuery"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GetCurrentQuery() As %DeepSee.Query.query [ Private ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns the %DeepSee.Query.query object for the current query context, if any"}),"\n",(0,n.jsx)(s.h3,{id:"onkillfacts",children:"%OnKillFacts"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %OnKillFacts(pCubeName As %String, pFactNo As %Integer, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Status [ CodeMode = objectgenerator, ForceGenerate ]\n"})}),"\n",(0,n.jsx)(s.p,{children:'Notifies the computed dimension all facts of a cube referencing are being killed. This method should erase any temporary or cached data the computed dimension implementation has written as part of its "lifetime" for the given cube and dimension coordinates. Indices cached as part of the CACHECOMPUTEDBITSET setting are taken care of by the default implementation of this method.'}),"\n",(0,n.jsx)(s.h3,{id:"getmemberspec",children:"%GetMemberSpec"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetMemberSpec(pMemberId As %String, pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %String [ Internal ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Return the member specification for the given member.",(0,n.jsx)(s.br,{}),"\nImplement this so that %GetFiltersForCellRange will work!"]}),"\n",(0,n.jsx)(s.h3,{id:"membersearchbymembers",children:"%MemberSearchByMembers"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %MemberSearchByMembers(pSearchKey As %String, Output pList As %List) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Helper method; execute a member search using the set of defined (and run-time) members."}),"\n",(0,n.jsx)(s.h3,{id:"membersearchbyindex",children:"%MemberSearchByIndex"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %MemberSearchByIndex(pSearchKey As %String, Output pList As %List) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Helper method; execute a member search using the contents of the fact index."})]})}function d(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>a,x:()=>l});var n=t(96540);const r={},i=n.createContext(r);function a(e){const s=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),n.createElement(i.Provider,{value:s},e.children)}}}]);