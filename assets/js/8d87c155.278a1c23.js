"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[12150],{50335:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>c,default:()=>o,frontMatter:()=>a,toc:()=>i});var n=t(74848),r=t(28453);const a={pagination_prev:null,pagination_next:null},c="SYS.WSMon.Service",i=[{value:"Parameters",id:"parameters",level:2},{value:"SERVICENAME",id:"servicename",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"USECLASSNAMESPACES",id:"useclassnamespaces",level:3},{value:"Methods",id:"methods",level:2},{value:"GetSystem",id:"getsystem",level:3},{value:"GetDashboard",id:"getdashboard",level:3},{value:"GetGlobal",id:"getglobal",level:3},{value:"GetDisk",id:"getdisk",level:3},{value:"GetRoutine",id:"getroutine",level:3},{value:"GetECPAppSvr",id:"getecpappsvr",level:3},{value:"GetECPDataSvr",id:"getecpdatasvr",level:3},{value:"EnumDatabase",id:"enumdatabase",level:3},{value:"EnumProcess",id:"enumprocess",level:3},{value:"EnumWriteDaemon",id:"enumwritedaemon",level:3},{value:"EnumBuffer",id:"enumbuffer",level:3},{value:"EnumResource",id:"enumresource",level:3},{value:"EventSubscribe",id:"eventsubscribe",level:3},{value:"EventCancel",id:"eventcancel",level:3}];function l(e){const s={a:"a",br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"syswsmonservice",children:"SYS.WSMon.Service"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class SYS.WSMon.Service Extends %SOAP.WebService [ System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"A Web Service class to support remote monitoring of a InterSystems IRIS instance."}),"\n",(0,n.jsx)(s.p,{children:"Each of the following Web Methods may be called to gather information about a InterSystems IRIS instance. See the SYS.WSMon.ws* or the SYS.Stats.* classes for details about the classes and properties which can be accessed."}),"\n",(0,n.jsx)(s.p,{children:'The services are generally in 3 categories. There are "Get" services which return single instances of classes and their propeties, e.g. GetSystem(). There are "Enum" services which enumerate multiple instances and return %XML.DataSet collections, e.g. EnumDatabase(). And there are EventSubscribe() and EventCancel() methods, which let you register your own version of a CacheEventSink() Web method to receive and process alerts. See the SYS.WSMon.EventSink class for an example and more details on Events.'}),"\n",(0,n.jsxs)(s.p,{children:["The class SYS.WSMon.Client provides client methods to call these services from InterSystems IRIS. For example: ",(0,n.jsx)(s.code,{children:'s server="myserver:57772" s client=##class(SYS.WSMon.Client).%New() s client.Location="http://"_server_"/csp/sys/SYS.WSMon.Service.cls" s client.Timeout=10 s sysref=client.GetSystem() w !,"InterSystems IRIS instance ",sysref.Name," has ",sysref.CurrentUsers," current users."'}),(0,n.jsx)(s.br,{}),"\nNOTE: Executing the Web Services requires READ access to the %DB_IRISSYS resource. If the InterSystems IRIS instance which provides the Web Services has security enabled, then you need to grant this access for the CSP processes which execute the Web Services. This can be done in the configuration in a few different ways, e.g. modifying the CSP application. Or, you can add a username/password token (for a user with the appropriate role) to the client request: ",(0,n.jsx)(s.code,{children:'s usertoken=##class(%SOAP.Security.UsernameToken).Create("wsmon","wsmon") d client.SecurityOut.AddToken(usertoken)'})]}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"servicename",children:"SERVICENAME"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter SERVICENAME = "CacheMonitorService";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Name of the WebService."}),"\n",(0,n.jsx)(s.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE = "http://www.intersystems.com/cache/wsmon/1";\n'})}),"\n",(0,n.jsx)(s.p,{children:"SOAP Namespace for the WebService"}),"\n",(0,n.jsx)(s.h3,{id:"useclassnamespaces",children:"USECLASSNAMESPACES"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter USECLASSNAMESPACES = 1;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Namespaces of referenced classes will be used in the WSDL."}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"getsystem",children:"GetSystem"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetSystem() As SYS.WSMon.wsSystem [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Fetch System (InterSystems IRIS instance) information"}),"\n",(0,n.jsx)(s.h3,{id:"getdashboard",children:"GetDashboard"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetDashboard() As SYS.Stats.Dashboard [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Fetch general system metrics and status"}),"\n",(0,n.jsx)(s.h3,{id:"getglobal",children:"GetGlobal"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetGlobal() As SYS.Stats.Global [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Fetch Global metrics for this instance"}),"\n",(0,n.jsx)(s.h3,{id:"getdisk",children:"GetDisk"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetDisk() As SYS.Stats.Disk [ Deprecated, WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Fetch metrics of Disk usage for globals for this instance DEPRECATED: the system no longer captures the statistics that this class represents. All values will report zero."}),"\n",(0,n.jsx)(s.h3,{id:"getroutine",children:"GetRoutine"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetRoutine() As SYS.Stats.Routine [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Fetch Routine metrics for this instance"}),"\n",(0,n.jsx)(s.h3,{id:"getecpappsvr",children:"GetECPAppSvr"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetECPAppSvr() As SYS.Stats.ECPAppSvr [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Fetch ECP Application Server metrics for this instance"}),"\n",(0,n.jsx)(s.h3,{id:"getecpdatasvr",children:"GetECPDataSvr"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetECPDataSvr() As SYS.Stats.ECPDataSvr [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Fetch ECP Database Server metrics for this instance"}),"\n",(0,n.jsx)(s.h3,{id:"enumdatabase",children:"EnumDatabase"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method EnumDatabase() As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Enumerate all databases for this instance Returned as a Data Set of SYS.WSMon.wsDatabase.List() query"}),"\n",(0,n.jsx)(s.h3,{id:"enumprocess",children:"EnumProcess"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method EnumProcess(sort As %String, number As %Integer) As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Enumerate the 'top' processes for this instance. Returned as a Data Set of SYS.WSMon.wsProcess.List() query."}),"\n",(0,n.jsxs)(s.p,{children:['\'sort\' may be either "COMMANDS" (default) or "GLOREFS"',(0,n.jsx)(s.br,{}),"\n'number' specifies the count of processes to return (default is 10)"]}),"\n",(0,n.jsx)(s.p,{children:"See the List() query documentation for details about the 'top' process list."}),"\n",(0,n.jsx)(s.h3,{id:"enumwritedaemon",children:"EnumWriteDaemon"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method EnumWriteDaemon() As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Enumerate stats for all Write Daemons Returned as a Data Set of SYS.Stats.WriteDaemon.Sample() query"}),"\n",(0,n.jsx)(s.h3,{id:"enumbuffer",children:"EnumBuffer"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method EnumBuffer() As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Enumerate stats for all buffer sizes Returned as a Data Set of SYS.Stats.Buffer.Sample() query"}),"\n",(0,n.jsx)(s.h3,{id:"enumresource",children:"EnumResource"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method EnumResource() As %XML.DataSet [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:'Enumerate stats for all system resource "seizes" Returned as a Data Set of SYS.Stats.Resource.Sample() query'}),"\n",(0,n.jsx)(s.h3,{id:"eventsubscribe",children:"EventSubscribe"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method EventSubscribe(location) As %String [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Subscribe to Events from this InterSystems IRIS instance Register a CacheEventSink Web service to receive Events. The Web Service must follow the example and WSDL of the SYS.WSMon.EventSink.CacheEventSink() Web method."}),"\n",(0,n.jsxs)(s.p,{children:["'location' is the Web service URL for invoking the EventSink method including the system, port, CSP application, and Web service name: e.g. \"",(0,n.jsx)(s.a,{href:"http://localhost:57773/csp/sys/SYS.WSMon.EventSink.cls",children:"http://localhost:57773/csp/sys/SYS.WSMon.EventSink.cls"}),'"']}),"\n",(0,n.jsx)(s.p,{children:'InterSystems IRIS will attempt to call this Web Service for each "event" with a wsEvent instance. The return value is an ID string that can be used to cancel the subscription.'}),"\n",(0,n.jsx)(s.h3,{id:"eventcancel",children:"EventCancel"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method EventCancel(id) As %Integer [ WebMethod ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Cancel an Event subscription Return the ID string from the Event Subscription to cancel the subscription"})]})}function o(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>c,x:()=>i});var n=t(96540);const r={},a=n.createContext(r);function c(e){const s=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:c(e.components),n.createElement(a.Provider,{value:s},e.children)}}}]);