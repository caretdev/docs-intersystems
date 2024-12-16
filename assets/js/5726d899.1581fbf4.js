"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[49565],{5188:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>c,default:()=>o,frontMatter:()=>a,toc:()=>i});var r=s(74848),t=s(28453);const a={pagination_prev:null,pagination_next:null},c="%Library.SQLConnection",i=[{value:"Properties",id:"properties",level:2},{value:"Name",id:"name",level:3},{value:"DSN",id:"dsn",level:3},{value:"Usr",id:"usr",level:3},{value:"pwd",id:"pwd",level:3},{value:"ReverseOJ",id:"reverseoj",level:3},{value:"isJDBC",id:"isjdbc",level:3},{value:"useCAST",id:"usecast",level:3},{value:"useCASTCHAR",id:"usecastchar",level:3},{value:"useCOALESCE",id:"usecoalesce",level:3},{value:"URL",id:"url",level:3},{value:"driver",id:"driver",level:3},{value:"xadriver",id:"xadriver",level:3},{value:"classpath",id:"classpath",level:3},{value:"properties",id:"properties-1",level:3},{value:"nodefq",id:"nodefq",level:3},{value:"noconcat",id:"noconcat",level:3},{value:"nofnconv",id:"nofnconv",level:3},{value:"needlongdatalen",id:"needlongdatalen",level:3},{value:"nvl",id:"nvl",level:3},{value:"bUnicodeStream",id:"bunicodestream",level:3},{value:"tpw",id:"tpw",level:3},{value:"bEncode",id:"bencode",level:3},{value:"bindTSasString",id:"bindtsasstring",level:3},{value:"OnConnectStatement",id:"onconnectstatement",level:3},{value:"disconnectOnClose",id:"disconnectonclose",level:3},{value:"Methods",id:"methods",level:2},{value:"setEncode",id:"setencode",level:3},{value:"ConnExists",id:"connexists",level:3},{value:"%OnBeforeSave",id:"onbeforesave",level:3},{value:"%OnAfterSave",id:"onaftersave",level:3}];function l(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"librarysqlconnection",children:"%Library.SQLConnection"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Library.SQLConnection Extends (%Persistent, %XML.Adaptor) [ Not ProcedureBlock, SqlTableName = sys_SQLConnection, StorageStrategy = StorageSpec, System = 4 ]\n"})}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"name",children:"Name"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property Name As %String(CAPTION = "Connection Name") [ Required, SqlFieldName = Connection_Name ];\n'})}),"\n",(0,r.jsx)(n.p,{children:"Index for property Name"}),"\n",(0,r.jsx)(n.h3,{id:"dsn",children:"DSN"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property DSN As %String(CAPTION = "DSN", MAXLEN = 256);\n'})}),"\n",(0,r.jsx)(n.h3,{id:"usr",children:"Usr"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property Usr As %String(CAPTION = "User");\n'})}),"\n",(0,r.jsx)(n.h3,{id:"pwd",children:"pwd"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property pwd As %CSP.Util.Passwd(CAPTION = "Password", MAXLEN = "");\n'})}),"\n",(0,r.jsx)(n.h3,{id:"reverseoj",children:"ReverseOJ"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property ReverseOJ As %Boolean(CAPTION = "Legacy Sybase outer join syntax");\n'})}),"\n",(0,r.jsx)(n.h3,{id:"isjdbc",children:"isJDBC"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property isJDBC As %Boolean(CAPTION = "Is JDBC connection");\n'})}),"\n",(0,r.jsx)(n.h3,{id:"usecast",children:"useCAST"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property useCAST As %Boolean(CAPTION = "Use CAST as VARCHAR");\n'})}),"\n",(0,r.jsx)(n.h3,{id:"usecastchar",children:"useCASTCHAR"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property useCASTCHAR As %Boolean(CAPTION = "Use CAST as CHAR");\n'})}),"\n",(0,r.jsx)(n.h3,{id:"usecoalesce",children:"useCOALESCE"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property useCOALESCE As %Boolean(CAPTION = "Use COALESCE") [ InitialExpression = 1 ];\n'})}),"\n",(0,r.jsx)(n.h3,{id:"url",children:"URL"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property URL As %String(CAPTION = "URL", MAXLEN = 4096);\n'})}),"\n",(0,r.jsx)(n.h3,{id:"driver",children:"driver"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property driver As %String(CAPTION = "driver", MAXLEN = 256);\n'})}),"\n",(0,r.jsx)(n.h3,{id:"xadriver",children:"xadriver"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property xadriver As %String(CAPTION = "driver", MAXLEN = 256);\n'})}),"\n",(0,r.jsx)(n.h3,{id:"classpath",children:"classpath"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property classpath As %Library.String(CAPTION = "Class Path", MAXLEN = 4096);\n'})}),"\n",(0,r.jsx)(n.h3,{id:"properties-1",children:"properties"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property properties As %Library.String(CAPTION = "Properties", MAXLEN = 256);\n'})}),"\n",(0,r.jsx)(n.h3,{id:"nodefq",children:"nodefq"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property nodefq As %Boolean(CAPTION = "Do not use delimited identifiers by default");\n'})}),"\n",(0,r.jsx)(n.h3,{id:"noconcat",children:"noconcat"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property noconcat As %Boolean(CAPTION = "Do not generate {fn concat()}");\n'})}),"\n",(0,r.jsx)(n.h3,{id:"nofnconv",children:"nofnconv"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property nofnconv As %Boolean(CAPTION = "Do not generate {fn conv ...} by default");\n'})}),"\n",(0,r.jsx)(n.h3,{id:"needlongdatalen",children:"needlongdatalen"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property needlongdatalen As %Boolean(CAPTION = "Needs long data length");\n'})}),"\n",(0,r.jsx)(n.h3,{id:"nvl",children:"nvl"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property nvl As %Boolean(CAPTION = "Use NVL() instead of IFNULL()");\n'})}),"\n",(0,r.jsx)(n.h3,{id:"bunicodestream",children:"bUnicodeStream"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property bUnicodeStream As %Boolean(CAPTION = "Supports Unicode Streams") [ InitialExpression = 1 ];\n'})}),"\n",(0,r.jsx)(n.h3,{id:"tpw",children:"tpw"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property tpw As %String [ Private, Transient ];\n"})}),"\n",(0,r.jsx)(n.h3,{id:"bencode",children:"bEncode"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Property bEncode As %Boolean [ InitialExpression = 1, Private, Transient ];\n"})}),"\n",(0,r.jsx)(n.h3,{id:"bindtsasstring",children:"bindTSasString"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property bindTSasString As %Boolean(CAPTION = "Bind TIMESTAMP parameters as VARCHAR") [ InitialExpression = 0 ];\n'})}),"\n",(0,r.jsx)(n.p,{children:"Bind TIMESTAMP type parmaters as VARCHAR. When binding parameter values via the GateWay, some remote systems consider TIMESTAMP as a special structure that does not match the the %TimeStamp datatype format of YYYY-MM-DD HH24:MI;SS[.ssssss]. Setting this property to 1 will bind TIMESTAMP parameters as VARCHARs instead of TIMESTAMP. You might need this setting when binding TIMESTAMP parameters to Oracle, depending on the Oracle driver used."}),"\n",(0,r.jsx)(n.h3,{id:"onconnectstatement",children:"OnConnectStatement"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property OnConnectStatement As %String(CAPTION = "Statement to execute upon connection", MAXLEN = 4096);\n'})}),"\n",(0,r.jsx)(n.p,{children:"Statement to execute on remote system immediately after connection. This is only for a Gateway conenction through %Library.GTWConnection.Connect() method. An example usage of this would be to set a session parameter on an Oracle connection: ALTER SESSION SET NLS_TIMESTAMP_FORMAT = 'YYYY-MM-DD HH24:MI:SS.FF6'"}),"\n",(0,r.jsx)(n.h3,{id:"disconnectonclose",children:"disconnectOnClose"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property disconnectOnClose As %Boolean(CAPTION = "Close the connection after each user of the connection in one process closes") [ InitialExpression = 0 ];\n'})}),"\n",(0,r.jsx)(n.p,{children:"This property determines whether or not to close the gateway connection after all users of this connection (linked table queries or %SQLGatewayConnection objects) have closed. This is tracked per-process."}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"setencode",children:"setEncode"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method setEncode(val As %Boolean)\n"})}),"\n",(0,r.jsx)(n.h3,{id:"connexists",children:"ConnExists"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod ConnExists(nm As %String) As %Boolean\n"})}),"\n",(0,r.jsx)(n.h3,{id:"onbeforesave",children:"%OnBeforeSave"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnBeforeSave(insert As %Boolean) As %Status [ Private ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Lookup by Connection name Lookup by Connection name without input parameter This callback method is invoked by the %Save method to provide notification that the object is being saved. It is called before any data is written to disk."}),"\n",(0,r.jsx)(n.p,{children:"insert will be set to 1 if this object is being saved for the first time."}),"\n",(0,r.jsx)(n.p,{children:"If this method returns an error then the call to %Save will fail."}),"\n",(0,r.jsx)(n.h3,{id:"onaftersave",children:"%OnAfterSave"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterSave(insert As %Boolean) As %Status [ Private ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"This callback method is invoked by the %Save method to provide notification that the object is being saved. It is called after the object's data has been successfully written to disk."}),"\n",(0,r.jsx)(n.p,{children:"insert will be set to 1 if this object is being saved for the first time."}),"\n",(0,r.jsx)(n.p,{children:"If this method returns an error then the call to %Save will fail."})]})}function o(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(l,{...e})}):l(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>c,x:()=>i});var r=s(96540);const t={},a=r.createContext(t);function c(e){const n=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function i(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:c(e.components),r.createElement(a.Provider,{value:n},e.children)}}}]);