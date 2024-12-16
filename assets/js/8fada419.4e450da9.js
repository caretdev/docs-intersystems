"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[10151],{51629:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>l,default:()=>c,frontMatter:()=>i,toc:()=>t});var r=n(74848),a=n(28453);const i={pagination_prev:null,pagination_next:null},l="%SYS.Monitor.Sensor",t=[{value:"Properties",id:"properties",level:2},{value:"Name",id:"name",level:3},{value:"Item",id:"item",level:3},{value:"Description",id:"description",level:3},{value:"ReadingInterval",id:"readinginterval",level:3},{value:"WarningValue",id:"warningvalue",level:3},{value:"CriticalValue",id:"criticalvalue",level:3},{value:"Alert",id:"alert",level:3},{value:"Operator",id:"operator",level:3},{value:"Units",id:"units",level:3},{value:"Owner",id:"owner",level:3},{value:"Function",id:"function",level:3},{value:"Readings",id:"readings",level:3},{value:"Methods",id:"methods",level:2},{value:"Open",id:"open",level:3},{value:"CreateDashboardSensor",id:"createdashboardsensor",level:3},{value:"GetInherited",id:"getinherited",level:3},{value:"DeleteByClass",id:"deletebyclass",level:3},{value:"AllDashboardSensorsExecute",id:"alldashboardsensorsexecute",level:3},{value:"AllDashboardSensorsFetch",id:"alldashboardsensorsfetch",level:3},{value:"AllDashboardSensorsClose",id:"alldashboardsensorsclose",level:3}];function o(e){const s={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"sysmonitorsensor",children:"%SYS.Monitor.Sensor"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SYS.Monitor.Sensor Extends %Persistent\n"})}),"\n",(0,r.jsx)(s.p,{children:"The persistent definition of a System Monitor Dashboard Sensor. This also includes the history of all Sensor Readings."}),"\n",(0,r.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(s.h3,{id:"name",children:"Name"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Name As %String(MAXLEN = 100);\n"})}),"\n",(0,r.jsx)(s.p,{children:"Name of the Sensor"}),"\n",(0,r.jsx)(s.h3,{id:"item",children:"Item"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Property Item As %String(MAXLEN = 500) [ InitialExpression = "-" ];\n'})}),"\n",(0,r.jsx)(s.p,{children:"Some sensors may define multiple values or 'subitems', such disk space for a specific database. If the sensor is only a single value, then this property contains a \"-\" to identify as a single or base level sensor."}),"\n",(0,r.jsx)(s.h3,{id:"description",children:"Description"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Description As %String(MAXLEN = 200);\n"})}),"\n",(0,r.jsx)(s.p,{children:"Text description of the Sensor for documentation."}),"\n",(0,r.jsx)(s.h3,{id:"readinginterval",children:"ReadingInterval"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property ReadingInterval As %String;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Number of seconds between each reading This value is inherited by %SYS.Monitor.Control in all cases, but could be extended so sensors have induvidual reading delays"}),"\n",(0,r.jsx)(s.h3,{id:"warningvalue",children:"WarningValue"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property WarningValue As %String;\n"})}),"\n",(0,r.jsx)(s.p,{children:'Value used to check for warning status. Note that if WarningValue, CriticalValue, and AlertFlag are null for a specific Sensor.Item, then that Item will use the values of the base ("-") Sensor.'}),"\n",(0,r.jsx)(s.h3,{id:"criticalvalue",children:"CriticalValue"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property CriticalValue As %String;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Value used to check for critical/alert status"}),"\n",(0,r.jsx)(s.h3,{id:"alert",children:"Alert"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Alert As %String;\n"})}),"\n",(0,r.jsx)(s.p,{children:'Boolean flag ("0" or "1") to indicate if System Monitor generates an alert on CriticalValue'}),"\n",(0,r.jsx)(s.h3,{id:"operator",children:"Operator"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Property Operator As %String [ InitialExpression = ">" ];\n'})}),"\n",(0,r.jsx)(s.p,{children:'Logical operator used to compare Warning/Critial values. Default is ">", with option of "<".'}),"\n",(0,r.jsx)(s.h3,{id:"units",children:"Units"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Units As %String;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Description of units used, for display and documentation only."}),"\n",(0,r.jsx)(s.h3,{id:"owner",children:"Owner"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Owner As %String(MAXLEN = 220) [ Internal ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Class which created this Sensor, so we can delete if class is unregistered."}),"\n",(0,r.jsx)(s.h3,{id:"function",children:"Function"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Function As %String [ Internal ];\n"})}),"\n",(0,r.jsx)(s.p,{children:'The function or use of this Sensor. Sensors may be grouped by Function so that Subscribers and Notifications can decide how to handle or whether they are interested certain Sensors. Right now only "%Dashboard" is implemented, but we could use this for System or Health Monitor sensors in the future.'}),"\n",(0,r.jsx)(s.h3,{id:"readings",children:"Readings"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Relationship Readings As %SYS.Monitor.Reading [ Cardinality = children, Inverse = Sensor ];\n"})}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"open",children:"Open"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Open(Sensor As %String, Item As %String = "", ByRef Status As %Status) As Sensor\n'})}),"\n",(0,r.jsx)(s.p,{children:"Open an exisiting Sensor for editing Critical and Warning Values or other properties. 'Item' may be \"\" to open a top level Sensor. Setting Critical/Warning Values for a specific Item will override the Values from the top level."}),"\n",(0,r.jsx)(s.p,{children:"Note that internal properties for 'Owner' and 'Function' should not be modified by users."}),"\n",(0,r.jsx)(s.h3,{id:"createdashboardsensor",children:"CreateDashboardSensor"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod CreateDashboardSensor(Sensor As %String, Item As %String = "-", CriticalValue As %String, WarningValue As %String, Alert As %String, Units As %String, Operator As %String, Description As %String, ClassName As %String) As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(s.p,{children:"Called by CreateSensor() in the Dashboard Sensor class. Only creates a new Sensor, does not update an existing one. Properties for existing Sensors (e.g. CriticalValue and WarningValue) can be update using the standard class APIs."}),"\n",(0,r.jsx)(s.h3,{id:"getinherited",children:"GetInherited"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetInherited(Sensor As %String, Item As %String, ByRef Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:'Fetch Properties (as an array) for an Item which can be "inherited" from the top level Sensor. This includes "CriticalValue", "WarningValue", "Alert", "Operator", "Units" and "Description"'}),"\n",(0,r.jsx)(s.h3,{id:"deletebyclass",children:"DeleteByClass"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DeleteByClass(ClassName As %String) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:'Delete all Sensor and Readings associated with a ClassName (i.e. "Owner")'}),"\n",(0,r.jsx)(s.h3,{id:"alldashboardsensorsexecute",children:"AllDashboardSensorsExecute"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AllDashboardSensorsExecute(ByRef qHandle As %Binary) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"A list of all top level Sensor IDs A list of all top level Sensor Names A list of all Sensor.Items for a given Sensor Loop through all registered Namespaces and return all registered Dashboard Sensors. If a Sensor has specific Items, do not include the top-level Sensor definition."}),"\n",(0,r.jsx)(s.h3,{id:"alldashboardsensorsfetch",children:"AllDashboardSensorsFetch"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AllDashboardSensorsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"alldashboardsensorsclose",children:"AllDashboardSensorsClose"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AllDashboardSensorsClose(ByRef qHandle As %Binary) As %Status\n"})})]})}function c(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>l,x:()=>t});var r=n(96540);const a={},i=r.createContext(a);function l(e){const s=r.useContext(i);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function t(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:l(e.components),r.createElement(i.Provider,{value:s},e.children)}}}]);