"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[31412],{88994:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>c,default:()=>o,frontMatter:()=>i,toc:()=>a});var r=s(74848),t=s(28453);const i={pagination_prev:null,pagination_next:null},c="Security.Resource",a=[{value:"Parameters",id:"parameters",level:2},{value:"SOURCECONTROL",id:"sourcecontrol",level:3},{value:"Properties",id:"properties",level:2},{value:"Name",id:"name",level:3},{value:"Permission",id:"permission",level:3},{value:"TheRole",id:"therole",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnValidateObject",id:"onvalidateobject",level:3}];function l(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"securityresource",children:"Security.Resource"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class Security.Resource Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, System = 4 ]\n"})}),"\n",(0,r.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(n.h3,{id:"sourcecontrol",children:"SOURCECONTROL"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/Security/Resource.xml#1 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/02 10:58:11 $"_$c(13,10)_"Changelist #:  $Change: 7247250 $"};\n'})}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"name",children:"Name"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Name As %String(MAXLEN = 64, MINLEN = 1) [ Required ];\n"})}),"\n",(0,r.jsx)(n.p,{children:"Name of the resource."}),"\n",(0,r.jsx)(n.h3,{id:"permission",children:"Permission"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property Permission As Security.Datatype.Permission [ Required ];\n"})}),"\n",(0,r.jsxs)(n.p,{children:["Permission attached to the resource.",(0,r.jsx)(n.br,{}),"\nBit 0 - Read",(0,r.jsx)(n.br,{}),"\nBit 1 - Write",(0,r.jsx)(n.br,{}),"\nBit 2 - Use"]}),"\n",(0,r.jsx)(n.h3,{id:"therole",children:"TheRole"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Relationship TheRole As Security.Roles [ Cardinality = parent, Internal, Inverse = Resources ];\n"})}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnValidateObject() As %Status [ Internal, Private, ProcedureBlock = 1 ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"This callback method is invoked by the %ValidateObject method to provide notification that the current object is being validated."}),"\n",(0,r.jsx)(n.p,{children:"If this method returns an error then %ValidateObject will fail."})]})}function o(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(l,{...e})}):l(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>c,x:()=>a});var r=s(96540);const t={},i=r.createContext(t);function c(e){const n=r.useContext(i);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:c(e.components),r.createElement(i.Provider,{value:n},e.children)}}}]);