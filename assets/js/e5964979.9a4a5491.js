"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[72173],{39870:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>r,default:()=>c,frontMatter:()=>i,toc:()=>l});var n=s(74848),a=s(28453);const i={pagination_prev:null,pagination_next:null},r="Config.Map",l=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"Methods",id:"methods",level:2},{value:"Create",id:"create",level:3},{value:"Default",id:"default",level:3},{value:"MoveToActive",id:"movetoactive",level:3},{value:"WriteSection",id:"writesection",level:3},{value:"InitializeEdits",id:"initializeedits",level:3},{value:"RevertEdits",id:"revertedits",level:3},{value:"Test",id:"test",level:3}];function o(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,a.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"configmap",children:"Config.Map"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class Config.Map Extends %SYSTEM.Help [ Abstract, Final, System = 4 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This class contains helper functions for the various System Management server functions."}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%Utility";\n'})}),"\n",(0,n.jsx)(t.p,{children:"Default Localization Domain"}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"create",children:"Create"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod Create(Namespace As %String, Name As %String, ByRef Properties As %String, CPFFile As %String = "", Flags As %Integer = {$$$CPFSave+$$$CPFWrite+$$$CPFActivate}) [ Internal ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Main routine to import a [Map.*] section.",(0,n.jsx)(t.br,{}),"\nCalled from Config.CPF.Read()."]}),"\n",(0,n.jsx)(t.h3,{id:"default",children:"Default"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod Default(CPFFile As %String, Platform As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"No default section in a CPF file."}),"\n",(0,n.jsx)(t.h3,{id:"movetoactive",children:"MoveToActive"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod MoveToActive(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Move all the mappings from the config database into the ^CONFIG global for all namespaces.",(0,n.jsx)(t.br,{}),"\nParameters:",(0,n.jsx)(t.br,{}),"\n",(0,n.jsx)(t.strong,{children:"Namespace"})," - ignored, used as a placeholder."]}),"\n",(0,n.jsx)(t.h3,{id:"writesection",children:"WriteSection"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod WriteSection(CPFFile As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Write all the mappings for all namespaces to the CPFFile.",(0,n.jsx)(t.br,{}),"\nThis method assumes that the CPF file has been opened and USED.",(0,n.jsx)(t.br,{}),"\nParameters:",(0,n.jsx)(t.br,{}),"\n",(0,n.jsx)(t.strong,{children:"CPFFile"})," - Name of the CPF file to write to."]}),"\n",(0,n.jsx)(t.h3,{id:"initializeedits",children:"InitializeEdits"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod InitializeEdits(Namespaces As %String, Copy As %Boolean = 0) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Initialize storage for Mapping edits in a Namespace. This should be called before any Map edits which use the $$$CPFMappingEdit flag for saving multiple edits before they are activated. This clears anything in the CACHE_MAPPINGSFILE index and copies the current Namespace settings. The edits would then be processed and activated using the DataMove API."}),"\n",(0,n.jsx)(t.p,{children:"Note that this temporary storage area is the same as used by the Management Portal. There is no locking implemented, so care must be taken to not use both at the same time."}),"\n",(0,n.jsx)(t.p,{children:"The 'Copy' argument will create a second copy of the current Mappings for the Namespace, using the CACHE_MAPPINGSFILE_MAPCOPY index. This can later be used to revert any Mapping changes by calling RevertEdits()."}),"\n",(0,n.jsx)(t.h3,{id:"revertedits",children:"RevertEdits"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod RevertEdits(Activate As %Boolean = 1) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"This will Replace and immediately Activate the copy of the original Mappings created with the 'Copy' argument of InitializeEdits(), overwriting the current Namespace Mappings. Make sure you understand the implications of this before calling here."}),"\n",(0,n.jsx)(t.p,{children:'This can be used to recover from a "bad" Mappings update, while the system is still inactive. The caller is responsible for ensuring that no global activity has used the new, editted Mappings.'}),"\n",(0,n.jsx)(t.p,{children:"If 'Activate'=0, then the original Mappings will be copied to the $$$CPFMappingEdit storage, and the user may call the DataMove API to reverse the data copy and do the Activation."}),"\n",(0,n.jsx)(t.h3,{id:"test",children:"Test"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod Test(TestNumber As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Tests for new Mapping Edits API, for MapGlobals, MapRoutines and MapPackages. Use Create, Get, Exists, and Delete methods. ListMapEdits Query. Call CreateFromMapEdits() and display resulting DataMove and any Warnings/Errors. User can then call DataMove.Copy() and Activate() to do the updates.",(0,n.jsx)(t.br,{}),"\n'TestNumber' can be a list of tests to run, e.g. \"1,2,4\""]})]})}function c(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>r,x:()=>l});var n=s(96540);const a={},i=n.createContext(a);function r(e){const t=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),n.createElement(i.Provider,{value:t},e.children)}}}]);