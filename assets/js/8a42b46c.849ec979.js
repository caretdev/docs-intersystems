"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[42283],{68992:(e,a,s)=>{s.r(a),s.d(a,{contentTitle:()=>r,default:()=>o,frontMatter:()=>c,toc:()=>i});var n=s(74848),t=s(28453);const c={pagination_prev:null,pagination_next:null},r="%Studio.SASchemaUtil",i=[{value:"Parameters",id:"parameters",level:2},{value:"DELIMITER",id:"delimiter",level:3},{value:"Methods",id:"methods",level:2},{value:"getSchemaDefinition",id:"getschemadefinition",level:3},{value:"getSchemaDefinitionIntoCacheTemp",id:"getschemadefinitionintocachetemp",level:3},{value:"loadSchema",id:"loadschema",level:3},{value:"isSchemaUpToDate",id:"isschemauptodate",level:3},{value:"%GenerateSchema",id:"generateschema",level:3},{value:"getSchemaMoniker",id:"getschemamoniker",level:3},{value:"returnCorrelated",id:"returncorrelated",level:3},{value:"readSASchemaFromStream",id:"readsaschemafromstream",level:3},{value:"purge",id:"purge",level:3},{value:"purgeAll",id:"purgeall",level:3}];function l(e){const a={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(a.header,{children:(0,n.jsx)(a.h1,{id:"studiosaschemautil",children:"%Studio.SASchemaUtil"})}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"Class %Studio.SASchemaUtil Extends %RegisteredObject [ System = 3 ]\n"})}),"\n",(0,n.jsxs)(a.p,{children:["This class is used internally by InterSystems IRIS.",(0,n.jsx)(a.br,{}),"\nThis internal utility class provides an API for serving StudioAssist Schemas (SASchema) for use by Studio."]}),"\n",(0,n.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(a.h3,{id:"delimiter",children:"DELIMITER"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter DELIMITER = ":";\n'})}),"\n",(0,n.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(a.h3,{id:"getschemadefinition",children:"getSchemaDefinition"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod getSchemaDefinition(pSchemaNameSpace As %String, Output pOutput As %String) As %Status\n"})}),"\n",(0,n.jsx)(a.h3,{id:"getschemadefinitionintocachetemp",children:"getSchemaDefinitionIntoCacheTemp"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod getSchemaDefinitionIntoCacheTemp(pSchemaNameSpace As %String, pIndex As %String) As %Status\n"})}),"\n",(0,n.jsx)(a.p,{children:"return the SASchema definition to the Studio"}),"\n",(0,n.jsx)(a.h3,{id:"loadschema",children:"loadSchema"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod loadSchema(pSchemaNameSpace As %String, pForce As %Boolean = 0, pForeground As %Boolean = 0, ByRef pIsSpawned As %Boolean = 0) As %Status\n"})}),"\n",(0,n.jsx)(a.p,{children:"load the SASchema into the ^IRIS.SASchema global"}),"\n",(0,n.jsx)(a.h3,{id:"isschemauptodate",children:"isSchemaUpToDate"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod isSchemaUpToDate(pSchemaNameSpace As %String) As %Boolean\n"})}),"\n",(0,n.jsx)(a.p,{children:"returns if the SASchema is up-to-date"}),"\n",(0,n.jsx)(a.h3,{id:"generateschema",children:"%GenerateSchema"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod %GenerateSchema(pSchemaNameSpace As %String, pMonikerName As %String, pMonikerData As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Do the actual work of generating Schema information."}),"\n",(0,n.jsx)(a.h3,{id:"getschemamoniker",children:"getSchemaMoniker"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod getSchemaMoniker(pSchemaSpec As %String, Output pMonikerType, pMonikerName, pMonikerData, Output pRootClasses As %String) As %String\n"})}),"\n",(0,n.jsx)(a.h3,{id:"returncorrelated",children:"returnCorrelated"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod returnCorrelated(xdata As %Dictionary.XDataDefinition, ByRef sc As %Status) As %RegisteredObject [ Internal ]\n"})}),"\n",(0,n.jsx)(a.p,{children:"Used to return the correlated object from an Xdata block"}),"\n",(0,n.jsx)(a.h3,{id:"readsaschemafromstream",children:"readSASchemaFromStream"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod readSASchemaFromStream(pStream, pSchemaNameSpace, pChecksum) As %Status\n"})}),"\n",(0,n.jsx)(a.h3,{id:"purge",children:"purge"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod purge(pSchemaNameSpace As %String) As %Status\n"})}),"\n",(0,n.jsx)(a.p,{children:"Purge the cached SASchema information for the given schema namespace."}),"\n",(0,n.jsx)(a.h3,{id:"purgeall",children:"purgeAll"}),"\n",(0,n.jsx)(a.pre,{children:(0,n.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod purgeAll() As %Status\n"})}),"\n",(0,n.jsx)(a.p,{children:"Purge all cached SASchema information"})]})}function o(e={}){const{wrapper:a}={...(0,t.R)(),...e.components};return a?(0,n.jsx)(a,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,a,s)=>{s.d(a,{R:()=>r,x:()=>i});var n=s(96540);const t={},c=n.createContext(t);function r(e){const a=n.useContext(c);return n.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function i(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:r(e.components),n.createElement(c.Provider,{value:a},e.children)}}}]);