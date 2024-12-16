"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[16304],{83519:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>r,default:()=>c,frontMatter:()=>l,toc:()=>a});var n=s(74848),i=s(28453);const l={pagination_prev:null,pagination_next:null},r="%DeepSee.UI.FolderItemDocument",a=[{value:"Parameters",id:"parameters",level:2},{value:"EXTENSION",id:"extension",level:3},{value:"Methods",id:"methods",level:2},{value:"Load",id:"load",level:3},{value:"Save",id:"save",level:3},{value:"ImportStream",id:"importstream",level:3},{value:"Delete",id:"delete",level:3},{value:"TimeStamp",id:"timestamp",level:3},{value:"CompileTime",id:"compiletime",level:3},{value:"Exists",id:"exists",level:3},{value:"ListExecute",id:"listexecute",level:3},{value:"ListFetch",id:"listfetch",level:3},{value:"ListClose",id:"listclose",level:3},{value:"ExportToXML",id:"exporttoxml",level:3},{value:"ImportFromXML",id:"importfromxml",level:3},{value:"ChangeXMLStreamEncoding",id:"changexmlstreamencoding",level:3},{value:"ChangeXMLEncoding",id:"changexmlencoding",level:3}];function o(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"deepseeuifolderitemdocument",children:"%DeepSee.UI.FolderItemDocument"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Class %DeepSee.UI.FolderItemDocument Extends %Studio.AbstractDocument [ ClassType = "", ProcedureBlock, System = 4 ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Abstract Document used to load a folder item (e.g. dashboard) definition into Studio."}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"extension",children:"EXTENSION"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter EXTENSION = ".DFI";\n'})}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"load",children:"Load"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method Load() As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Load the folder item definition into the stream Code"}),"\n",(0,n.jsx)(t.h3,{id:"save",children:"Save"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method Save() As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Save the folder item definition document."}),"\n",(0,n.jsx)(t.h3,{id:"importstream",children:"ImportStream"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ImportStream(pName As %String, pStream As %GlobalCharacterStream) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Save the folder item definition document from stream to global."}),"\n",(0,n.jsx)(t.h3,{id:"delete",children:"Delete"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod Delete(name As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Delete the folder item definition name."}),"\n",(0,n.jsx)(t.h3,{id:"timestamp",children:"TimeStamp"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod TimeStamp(name As %String) As %TimeStamp\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the timestamp of folder item 'name' in %TimeStamp format, i.e. $zdatetime($horolog,3). This is used to determine if the folder item has been updated on the server and so needs reloading into Studio. So the format should be $zdatetime($horolog,3), or \"\" if the folder item does not exist."}),"\n",(0,n.jsx)(t.h3,{id:"compiletime",children:"CompileTime"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CompileTime(name As %String) As %TimeStamp [ CodeMode = expression ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the compile time of routine 'name' in %TimeStamp format. The format should be $zdatetime($horolog,3), or \"\" if the routine does not exist."}),"\n",(0,n.jsx)(t.h3,{id:"exists",children:"Exists"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod Exists(name As %String) As %Boolean\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return 1 if the given folder item document exists and 0 if it does not."}),"\n",(0,n.jsx)(t.h3,{id:"listexecute",children:"ListExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod ListExecute(ByRef qHandle As %Binary, Directory As %String = "", Flat As %Boolean = "", System As %Boolean = "", pShowAll As %Boolean = 1, pFolderClass As %String = "") As %Status\n'})}),"\n",(0,n.jsx)(t.h3,{id:"listfetch",children:"ListFetch"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = ListExecute ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"listclose",children:"ListClose"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = ListFetch ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"exporttoxml",children:"ExportToXML"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method ExportToXML(flags As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Export this document to the current device in XML format"}),"\n",(0,n.jsx)(t.h3,{id:"importfromxml",children:"ImportFromXML"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method ImportFromXML(stream As %RegisteredObject, flags As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Import from the stream in XML format"}),"\n",(0,n.jsx)(t.h3,{id:"changexmlstreamencoding",children:"ChangeXMLStreamEncoding"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod ChangeXMLStreamEncoding(pSource As %CharacterStream, pEncoding As %String = "", ByRef pTarget As %CharacterStream = "", Output pStatus) As %CharacterStream [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Copied from Ens.Util.XML.Reader"}),"\n",(0,n.jsx)(t.h3,{id:"changexmlencoding",children:"ChangeXMLEncoding"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod ChangeXMLEncoding(pString As %String, pEncoding As %String = "") As %String [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Copied from Ens.Util.XML.Reader"})]})}function c(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>r,x:()=>a});var n=s(96540);const i={},l=n.createContext(i);function r(e){const t=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:r(e.components),n.createElement(l.Provider,{value:t},e.children)}}}]);