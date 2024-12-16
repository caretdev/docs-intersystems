"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[54970],{14684:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>a,default:()=>c,frontMatter:()=>r,toc:()=>l});var n=s(74848),i=s(28453);const r={pagination_prev:null,pagination_next:null},a="%iKnow.Queries.CcWSAPI",l=[{value:"Parameters",id:"parameters",level:2},{value:"NAMESPACE",id:"namespace",level:3},{value:"SERVICENAME",id:"servicename",level:3},{value:"USECLASSNAMESPACES",id:"useclassnamespaces",level:3},{value:"Methods",id:"methods",level:2},{value:"GetByEntities",id:"getbyentities",level:3},{value:"GetByEntityIds",id:"getbyentityids",level:3},{value:"GetCountByEntities",id:"getcountbyentities",level:3},{value:"GetCountByEntityIds",id:"getcountbyentityids",level:3},{value:"GetCountBySource",id:"getcountbysource",level:3},{value:"GetFrequency",id:"getfrequency",level:3},{value:"GetId",id:"getid",level:3},{value:"GetInverse",id:"getinverse",level:3},{value:"GetSpread",id:"getspread",level:3},{value:"GetValue",id:"getvalue",level:3}];function o(e){const t={code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"iknowqueriesccwsapi",children:"%iKnow.Queries.CcWSAPI"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %iKnow.Queries.CcWSAPI Extends %iKnow.Queries.AbstractWSAPI [ Deprecated, System = 4 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This is an automatically generated class, offering a functionally equivalent set of methods and queries as %iKnow.Queries.CcAPI, exposed as WebMethod methods."}),"\n",(0,n.jsx)(t.p,{children:"See the classdocs for %iKnow.Queries.CcAPI for more information."}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Queries/CcWSAPI";\n'})}),"\n",(0,n.jsx)(t.h3,{id:"servicename",children:"SERVICENAME"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter SERVICENAME = "iKnow.Queries.CcWSAPI";\n'})}),"\n",(0,n.jsx)(t.h3,{id:"useclassnamespaces",children:"USECLASSNAMESPACES"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter USECLASSNAMESPACES = 1;\n"})}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"getbyentities",children:"GetByEntities"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByEntities(domainid As %Integer, entitylist As %ListOfDataTypes, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSHT}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, pActualFormOnly As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["This method will return all CC pairs in which any (if ",(0,n.jsx)(t.em,{children:"setop"})," = $$$UNION) or all (if ",(0,n.jsx)(t.em,{children:"setop"})," = $$$INTERSECT) of the entities supplied in the ",(0,n.jsx)(t.em,{children:"entitylist"})," participate, within the boundaries of the supplied domain."]}),"\n",(0,n.jsxs)(t.p,{children:["The scope of this query can be limited through supplying a %iKnow.Filters.Filter object for the ",(0,n.jsx)(t.em,{children:"filter"})," parameter to restrict the result to those CCs occurring in any source satisfying the filter criteria. When using a filter, the ",(0,n.jsx)(t.em,{children:"filtermode"})," parameter will control whether or not the frequency and spread of returned records should be recalculated and whether results should be resorted along these recalculated numbers."]}),"\n",(0,n.jsxs)(t.p,{children:["Specifying a value for ",(0,n.jsx)(t.em,{children:"positionstomatch"})," will limit the result to those CCs in which the supplied entities are on the Head (with ",(0,n.jsx)(t.em,{children:"positionstomatch"})," = $$$USEPOSH) or Tail (with ",(0,n.jsx)(t.em,{children:"positionstomatch"})," = $$$USEPOST) side rather than either of the two (with ",(0,n.jsx)(t.em,{children:"positionstomatch"})," = $$$USEPOSHT, default setting)."]}),"\n",(0,n.jsx)(t.p,{children:"If stemming is enabled for this domain through $$$IKPSTEMMING, CCs containing any actual form of the entities in entityList will be returned. Use pActualFormOnly=1 to retrieve only those CCs containing the actual forms in entitylist. This argument is ignored if stemming is not enabled."}),"\n",(0,n.jsx)(t.h3,{id:"getbyentityids",children:"GetByEntityIds"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetByEntityIds(domainid As %Integer, entityidlist As %ListOfDataTypes, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSHT}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, pActualFormOnly As %Boolean = 0) As %XML.DataSet [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"This method looks up CCs based on a list of Entity IDs."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbyentities",children:"GetCountByEntities"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByEntities(domainid As %Integer, entitylist As %ListOfDataTypes, filter As %String(MAXLEN=32767) = "", positionstomatch As %Integer = {$$$USEPOSHT}, pActualFormOnly As %Boolean = 0) As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"This method returns the number of CC pairs based on a list of entities."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbyentityids",children:"GetCountByEntityIds"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetCountByEntityIds(domainid As %Integer, entityidlist As %ListOfDataTypes, filter As %String(MAXLEN=32767) = "", positionstomatch As %Integer = {$$$USEPOSHT}, pActualFormOnly As %Boolean = 0) As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"This method returns the number of CC pairs based on a list of entity ids."}),"\n",(0,n.jsx)(t.p,{children:"See also GetByEntities for a description of the parameters."}),"\n",(0,n.jsx)(t.h3,{id:"getcountbysource",children:"GetCountBySource"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetCountBySource(domainid As %Integer, sourceidlist As %ListOfDataTypes, setop As %Integer = {$$$UNION}) As %Library.Integer [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the total number of unique CCs appearing in either (if setop = $$$UNION) or all (if setop = $$$INTERSECT) of the sources specified by ID in sourceidlist."}),"\n",(0,n.jsx)(t.p,{children:"To get the unique CCs of a virtual source, only a single virtual source can be supplied using its negative ID value (otherwise, -1 is returned)."}),"\n",(0,n.jsx)(t.h3,{id:"getfrequency",children:"GetFrequency"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetFrequency(domainId As %Integer, ccUniId As %Integer, vSrcId As %Integer = 0, filter As %String(MAXLEN=32767) = "") As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the frequency of the CC corresponding to the supplied crcUniId."}),"\n",(0,n.jsx)(t.p,{children:"When specifying a Virtual Source ID, the frequency within the virtual source will be returned."}),"\n",(0,n.jsx)(t.h3,{id:"getid",children:"GetId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetId(pDomainId As %Integer, pHead As %String, pTail As %String, vSrcId As %Integer = 0) As %Library.Integer [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns, if any, the CC ID for the combination of head and tail specified."}),"\n",(0,n.jsx)(t.p,{children:"When specifying a Virtual Source ID, it will treat the heads and tails as virtual entities, in the context of that vSrcId."}),"\n",(0,n.jsx)(t.h3,{id:"getinverse",children:"GetInverse"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetInverse(domainId As %Integer, ccUniId As %Integer) As %Library.Integer [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:'Returns the "inverse" of a CC pair, which means the CC composed of the same head and tail entity, but at inverted positions.'}),"\n",(0,n.jsx)(t.h3,{id:"getspread",children:"GetSpread"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetSpread(domainId As %Integer, ccUniId As %Integer, filter As %String(MAXLEN=32767) = "") As %Library.Integer [ WebMethod ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Returns the spread of the CC corresponding to the supplied ccUniId."}),"\n",(0,n.jsx)(t.h3,{id:"getvalue",children:"GetValue"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetValue(pDomainId As %Integer, pCcId As %Integer, vSrcId As %Integer = 0) As %Library.List [ WebMethod ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the entity values this CC is composed of."}),"\n",(0,n.jsx)(t.p,{children:"When specifying a Virtual Source ID, it will treat the ccid as a virtual one, in the context of that vSrcId."})]})}function c(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>a,x:()=>l});var n=s(96540);const i={},r=n.createContext(i);function a(e){const t=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:a(e.components),n.createElement(r.Provider,{value:t},e.children)}}}]);