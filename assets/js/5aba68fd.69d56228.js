"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[35950],{91397:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>c,default:()=>i,frontMatter:()=>o,toc:()=>l});var r=n(74848),s=n(28453);const o={pagination_prev:null,pagination_next:null},c="%CSP.Portal.SourceControl.Util",l=[{value:"Methods",id:"methods",level:2},{value:"GetFullProjectName",id:"getfullprojectname",level:3},{value:"CreateSourceControl",id:"createsourcecontrol",level:3},{value:"IsEnabled",id:"isenabled",level:3},{value:"SetProjectRequired",id:"setprojectrequired",level:3},{value:"IsProjectRequired",id:"isprojectrequired",level:3},{value:"SetCurrentProject",id:"setcurrentproject",level:3},{value:"GetCurrentProject",id:"getcurrentproject",level:3},{value:"GetSourceControlClass",id:"getsourcecontrolclass",level:3},{value:"LoadClassDefinition",id:"loadclassdefinition",level:3}];function a(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"cspportalsourcecontrolutil",children:"%CSP.Portal.SourceControl.Util"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class %CSP.Portal.SourceControl.Util [ Abstract, System = 4 ]\n"})}),"\n",(0,r.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(t.h3,{id:"getfullprojectname",children:"GetFullProjectName"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetFullProjectName(pProjectName As %String = "") [ CodeMode = expression ]\n'})}),"\n",(0,r.jsx)(t.p,{children:'Return a project\'s full name, including a ".PRJ" extension.'}),"\n",(0,r.jsx)(t.h3,{id:"createsourcecontrol",children:"CreateSourceControl"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CreateSourceControl(Output pSourceControl As %Studio.SourceControl.Base, Output pCreated As %Boolean, Output pUsername As %String, pUserData As %ZEN.proxyObject = "") As %Status\n'})}),"\n",(0,r.jsx)(t.p,{children:"Create an instance of a Source Control object"}),"\n",(0,r.jsx)(t.h3,{id:"isenabled",children:"IsEnabled"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod IsEnabled(pNamespace As %String = {$namespace}) As %Boolean\n"})}),"\n",(0,r.jsx)(t.p,{children:"Determine whether source control is enabled for the Management Portal in the specified namespace. The default is to return the flag for the current namespace."}),"\n",(0,r.jsx)(t.h3,{id:"setprojectrequired",children:"SetProjectRequired"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod SetProjectRequired(pNewValue As %Boolean = 0, Output pOldValue As %Boolean) As %Status\n"})}),"\n",(0,r.jsx)(t.p,{children:"Enable or disable the flag indicating whether the source control class used in the current namespace requires a specific project to be selected for the source control hooks to operate correctly."}),"\n",(0,r.jsx)(t.h3,{id:"isprojectrequired",children:"IsProjectRequired"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod IsProjectRequired() As %Boolean\n"})}),"\n",(0,r.jsx)(t.p,{children:"Helper method to indicate whether the source control hooks in the current production-enabled namespace need a project defined."}),"\n",(0,r.jsx)(t.h3,{id:"setcurrentproject",children:"SetCurrentProject"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod SetCurrentProject(pProjectName As %String, pLoaded As %Boolean = 0) [ ZenMethod ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Helper method to save the name of the current project and whether its OnBeforeLoad() and OnAfterLoad() callbacks have been executed. The data is saved in the current CSP session data, so will be cleaned up when the user logs out."}),"\n",(0,r.jsx)(t.h3,{id:"getcurrentproject",children:"GetCurrentProject"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetCurrentProject(Output pLoaded As %Boolean) As %String [ ZenMethod ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Helper method to retrieve the current project for the CSP session, along with a flag to indicate whether the OnBeforeLoad() and OnAfterLoad() source control hooks have been executed for the project."}),"\n",(0,r.jsx)(t.h3,{id:"getsourcecontrolclass",children:"GetSourceControlClass"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetSourceControlClass() As %String\n"})}),"\n",(0,r.jsx)(t.p,{children:"Return the source control class which is to be used in the current namespace. If source control hooks are not enabled, an empty string is returned."}),"\n",(0,r.jsx)(t.h3,{id:"loadclassdefinition",children:"LoadClassDefinition"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod LoadClassDefinition(pClassname As %String, Output pDefinition As %Dictionary.ClassDefinition, Output pReadOnly As %Boolean, pExclusiveOnly As %Boolean = 0) As %Status [ Private ]\n"})}),"\n",(0,r.jsx)(t.p,{children:"Helper method to load a class definition from disk."})]})}function i(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(a,{...e})}):a(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>c,x:()=>l});var r=n(96540);const s={},o=r.createContext(s);function c(e){const t=r.useContext(o);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:c(e.components),r.createElement(o.Provider,{value:t},e.children)}}}]);