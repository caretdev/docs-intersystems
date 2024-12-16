"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[45700],{20867:(e,n,i)=>{i.r(n),i.d(n,{contentTitle:()=>l,default:()=>d,frontMatter:()=>r,toc:()=>c});var t=i(74848),s=i(28453);const r={pagination_prev:null,pagination_next:null},l="%DeepSee.CubeManager.CubeRegistry",c=[{value:"Properties",id:"properties",level:2},{value:"CubeKey",id:"cubekey",level:3},{value:"MgmtGroup",id:"mgmtgroup",level:3},{value:"NaturalBuildOrder",id:"naturalbuildorder",level:3},{value:"CustomBuildOrder",id:"custombuildorder",level:3},{value:"UpdatePlan",id:"updateplan",level:3},{value:"Disabled",id:"disabled",level:3},{value:"BuildFrequency",id:"buildfrequency",level:3},{value:"BuildTimeUnit",id:"buildtimeunit",level:3},{value:"SynchFrequency",id:"synchfrequency",level:3},{value:"SynchTimeUnit",id:"synchtimeunit",level:3}];function a(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(n.header,{children:(0,t.jsx)(n.h1,{id:"deepseecubemanagercuberegistry",children:"%DeepSee.CubeManager.CubeRegistry"})}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.CubeManager.CubeRegistry Extends (%Persistent, %ZEN.DataModel.Adaptor) [ System = 4 ]\n"})}),"\n",(0,t.jsx)(n.p,{children:"This class keeps track of how each cube is to be used in production. Properties of this class are accessed by various tasks to determine when a given cube should be built or synched."}),"\n",(0,t.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(n.h3,{id:"cubekey",children:"CubeKey"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property CubeKey As %DeepSee.Datatype.entityName [ Required ];\n"})}),"\n",(0,t.jsx)(n.p,{children:"This is the ALL CAPS cube name, to match DeepSee metadata."}),"\n",(0,t.jsx)(n.h3,{id:"mgmtgroup",children:"MgmtGroup"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property MgmtGroup As %DeepSee.Datatype.entityName;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Cubes can be grouped together in user-defined management groups. By default each cube belongs to its own group."}),"\n",(0,t.jsx)(n.h3,{id:"naturalbuildorder",children:"NaturalBuildOrder"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property NaturalBuildOrder As %Integer;\n"})}),"\n",(0,t.jsx)(n.p,{children:"This is the build order for this cube within the group. For cube relationship networks this is calculated automatically. This can be set for independent cubes within a group."}),"\n",(0,t.jsx)(n.h3,{id:"custombuildorder",children:"CustomBuildOrder"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property CustomBuildOrder As %Integer;\n"})}),"\n",(0,t.jsx)(n.p,{children:"This determines when the current MgmtGroup will be built in relation to other defined groups. This is entirely configurable by the user."}),"\n",(0,t.jsx)(n.h3,{id:"updateplan",children:"UpdatePlan"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property UpdatePlan As %DeepSee.Datatype.entityName(DISPLAYLIST = ",Manual,Build Only,Build and Synch,Synch Only", VALUELIST = ",Manual,Build,BuildSynch,Synch");\n'})}),"\n",(0,t.jsx)(n.p,{children:"Plan for how the cube is to be managed by the build/synch tasks."}),"\n",(0,t.jsx)(n.h3,{id:"disabled",children:"Disabled"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property Disabled As %Boolean;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Disabled = 1 will block all automatic updates while leaving the cube visible in the registry."}),"\n",(0,t.jsx)(n.h3,{id:"buildfrequency",children:"BuildFrequency"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property BuildFrequency As %Integer;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Indicates how often the cube is to be built, in units of BuidTimeUnit"}),"\n",(0,t.jsx)(n.h3,{id:"buildtimeunit",children:"BuildTimeUnit"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property BuildTimeUnit As %DeepSee.Datatype.entityName(DISPLAYLIST = ",Day,Week,Month", VALUELIST = ",Day,Week,Month");\n'})}),"\n",(0,t.jsx)(n.p,{children:"Base unit of time for cube builds."}),"\n",(0,t.jsx)(n.h3,{id:"synchfrequency",children:"SynchFrequency"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:"Property SynchFrequency As %Integer;\n"})}),"\n",(0,t.jsx)(n.p,{children:"Indicates how often the cube is to be synched, in units of SynchTimeUnit"}),"\n",(0,t.jsx)(n.h3,{id:"synchtimeunit",children:"SynchTimeUnit"}),"\n",(0,t.jsx)(n.pre,{children:(0,t.jsx)(n.code,{className:"language-objectscript-class",children:'Property SynchTimeUnit As %DeepSee.Datatype.entityName(DISPLAYLIST = ",Minute,Hour,Day", VALUELIST = ",Minute,Hour,Day");\n'})}),"\n",(0,t.jsx)(n.p,{children:"Base unit of time for cube synchs."})]})}function d(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,t.jsx)(n,{...e,children:(0,t.jsx)(a,{...e})}):a(e)}},28453:(e,n,i)=>{i.d(n,{R:()=>l,x:()=>c});var t=i(96540);const s={},r=t.createContext(s);function l(e){const n=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function c(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:l(e.components),t.createElement(r.Provider,{value:n},e.children)}}}]);