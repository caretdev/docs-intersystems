"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[27435],{12709:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>o,default:()=>c,frontMatter:()=>a,toc:()=>i});var r=t(74848),n=t(28453);const a={pagination_prev:null,pagination_next:null},o="%SYS.Monitor.AbstractDashboard",i=[{value:"Properties",id:"properties",level:2},{value:"ReadTime",id:"readtime",level:3},{value:"Methods",id:"methods",level:2},{value:"SetSensor",id:"setsensor",level:3},{value:"CreateSensor",id:"createsensor",level:3},{value:"Alert",id:"alert",level:3},{value:"Purge",id:"purge",level:3}];function l(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"sysmonitorabstractdashboard",children:"%SYS.Monitor.AbstractDashboard"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SYS.Monitor.AbstractDashboard Extends %SYS.Monitor.AbstractSensor\n"})}),"\n",(0,r.jsx)(s.p,{children:"Abstract definition of a Sensor collector for a Dashboard. This a special instance of a Sensor, which will collect the Sensors defined by calling CreateSensor() and then store the collected values in %SYS.Monitor.Sensor.Readings. The graphic Dashboard API will then be able to fetch the Sensor data from there for display."}),"\n",(0,r.jsx)(s.p,{children:"User may implement Dashboard Sensors by inheriting from this class and implementing the Start() method (to create the Sensor definitions) and the GetSensors() method (to store the data)."}),"\n",(0,r.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(s.h3,{id:"readtime",children:"ReadTime"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ReadTime As %TimeStamp;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Time that the collection was started. This may be set by the child class so that all Readings are recorded at the same time. If it's left null, then AddDashboardEntry will fill in the current time for each Sensor/Item recorded."}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"setsensor",children:"SetSensor"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Method SetSensor(Sensor As %String, Value As %String, Item As %String = "") As %Integer [ Internal ]\n'})}),"\n",(0,r.jsx)(s.p,{children:"For Dashboard sensors we just save the sample Value in %SYS.Monitor.Sensor.Reading"}),"\n",(0,r.jsx)(s.h3,{id:"createsensor",children:"CreateSensor"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod CreateSensor(Sensor As %String, Item As %String = "", CriticalValue As %String = "", WarningValue As %String = "", Alert As %String = "", Units As %String = "", Operator As %String = "", Description As %String = "") As %Status\n'})}),"\n",(0,r.jsx)(s.p,{children:"Create (or update) a Dashboard Sensor definition. User-defined Sensors should call this in Start(). See %SYS.Monitor.Sensor for an explanation of each argument (property), but users should call here rather than use the class API so the Sensor is correctly associated with their Dashboard collector Class. This only creates the Sensor if it doesn't already exist. Updating Critical/Warning Values or other properties can be done through the Class API once the Sensor is created."}),"\n",(0,r.jsx)(s.h3,{id:"alert",children:"Alert"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method Alert(Sensor As %String, Item As %String, Value As %String)\n"})}),"\n",(0,r.jsx)(s.p,{children:"Sensors which have reached their CriticalValue will call here to post an Alert. By default this will post a message to messages.log which will trigger an alert by the System Monitor. User-defined Sensors may override that behavior by replacing this method."}),"\n",(0,r.jsx)(s.h3,{id:"purge",children:"Purge"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Purge() [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Check to see if any Dashboard history needs to be purged. This should be called once a day by %SYS.Monitor.Control."})]})}function c(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(l,{...e})}):l(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>o,x:()=>i});var r=t(96540);const n={},a=r.createContext(n);function o(e){const s=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:o(e.components),r.createElement(a.Provider,{value:s},e.children)}}}]);