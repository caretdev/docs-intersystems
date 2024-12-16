"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[63042],{58352:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>i,default:()=>c,frontMatter:()=>o,toc:()=>a});var r=n(74848),s=n(28453);const o={pagination_prev:null,pagination_next:null},i="Config.ECP",a=[{value:"Parameters",id:"parameters",level:2},{value:"EMSSERVICE",id:"emsservice",level:3},{value:"Properties",id:"properties",level:2},{value:"ClientReconnectDuration",id:"clientreconnectduration",level:3},{value:"ClientReconnectInterval",id:"clientreconnectinterval",level:3},{value:"ServerTroubleDuration",id:"servertroubleduration",level:3},{value:"Methods",id:"methods",level:2},{value:"Load",id:"load",level:3}];function l(e){const t={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,s.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"configecp",children:"Config.ECP"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class Config.ECP Extends (%Persistent, Config.CommonSingleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]\n"})}),"\n",(0,r.jsxs)(t.p,{children:["This class allows you to modify and view the [ECP] section of the CPF file through programatic APIs. While properties are usually modified through the System Management portal, there may be some occasion where modifying them through the API's is best for your system. In all the Config methods, if you do not specify the CPFFile parameter, the currently active CPF file is used. If you wish to modify a CPF file which is not the currently active one, then specify the CPFFile you wish to modify in the method call.",(0,r.jsx)(t.br,{}),"\nThe Flags parameter does not normally need to be specified; the defaults are usually sufficient for most cases.",(0,r.jsx)(t.br,{}),"\nYou can use either the provided API's (Get/Modify) to modify the properties by passing in the correct parameters, or use Object syntax to open and directly manipulate the config objects."]}),"\n",(0,r.jsx)(t.p,{children:"EXAMPLE:"}),"\n",(0,r.jsxs)(t.p,{children:['; Use class methods to modify properties %SYS>s Status=##Class(Config.ECP).Get(.Properties) %SYS>i \'Status w !,"Error="',(0,r.jsx)(t.em,{children:'$SYSTEM.Status.GetErrorText(Status) %SYS>zw Properties Properties("ClientReconnectDuration")=1200 Properties("ClientReconnectInterval")=5 Properties("ServerTroubleDuration")=60 %SYS>s Properties("ServerTroubleDuration")=90 %SYS>s Status=##Class(Config.ECP).Modify(.Properties) %SYS>i \'Status w !,"Error="'}),'$SYSTEM.Status.GetErrorText(Status) ; Now use Objects to modify properties %SYS>s Obj=##Class(Config.ECP).Open() %SYS>w Obj.ServerTroubleDuration 90 %SYS>s Obj.ServerTroubleDuration=120 %SYS>s Status=Obj.%Save() %SYS>i \'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)']}),"\n",(0,r.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(t.h3,{id:"emsservice",children:"EMSSERVICE"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter EMSSERVICE [ Internal ] = "Namespace";\n'})}),"\n",(0,r.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(t.h3,{id:"clientreconnectduration",children:"ClientReconnectDuration"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property ClientReconnectDuration As %Integer(MAXVAL = 65535, MINVAL = 10) [ InitialExpression = 1200 ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"How long a client should keep trying to re-establish a connection before giving up or declaring connection failed (in seconds)."}),"\n",(0,r.jsx)(t.h3,{id:"clientreconnectinterval",children:"ClientReconnectInterval"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property ClientReconnectInterval As %Integer(MAXVAL = 60, MINVAL = 1) [ InitialExpression = 5 ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"When a server is not available, how long to wait between each reconnection attempt (in seconds)."}),"\n",(0,r.jsx)(t.h3,{id:"servertroubleduration",children:"ServerTroubleDuration"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Property ServerTroubleDuration As %Integer(MAXVAL = 65535, MINVAL = 20) [ InitialExpression = 60 ];\n"})}),"\n",(0,r.jsx)(t.p,{children:"Duration a connection will stay in troubled state (in seconds). Once this period of time has elapsed, the server will declare the connection dead and presume recovery is not possible."}),"\n",(0,r.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(t.h3,{id:"load",children:"Load"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]\n'})}),"\n",(0,r.jsxs)(t.p,{children:["Load the parameters into memory and activate.",(0,r.jsx)(t.br,{}),"\nParameters:",(0,r.jsx)(t.br,{}),"\n",(0,r.jsx)(t.strong,{children:"Obj"}),' = Handle to the object which caused the load. If "", then load everything, only called from STU.',(0,r.jsx)(t.br,{}),"\n",(0,r.jsx)(t.strong,{children:"Flags"})," = Type of modification.",(0,r.jsx)(t.br,{}),"\n0 - Modify",(0,r.jsx)(t.br,{}),"\n1 - Create/Insert"]})]})}function c(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(l,{...e})}):l(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>i,x:()=>a});var r=n(96540);const s={},o=r.createContext(s);function i(e){const t=r.useContext(o);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),r.createElement(o.Provider,{value:t},e.children)}}}]);