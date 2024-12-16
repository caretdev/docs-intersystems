"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[14674],{5272:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>a,default:()=>c,frontMatter:()=>s,toc:()=>l});var o=n(74848),r=n(28453);const s={pagination_prev:null,pagination_next:null},a="%ZEN.Component.dynaForm",l=[{value:"Properties",id:"properties",level:2},{value:"defaultGroupId",id:"defaultgroupid",level:3},{value:"injectControls",id:"injectcontrols",level:3},{value:"OnGetPropertyInfo",id:"ongetpropertyinfo",level:3},{value:"Methods",id:"methods",level:2},{value:"%InjectControls",id:"injectcontrols-1",level:3},{value:"%InvokeGetPropertyInfo",id:"invokegetpropertyinfo",level:3},{value:"RecreateForm",id:"recreateform",level:3},{value:"notifyViewHandler",id:"notifyviewhandler",level:3},{value:"onRefreshContents",id:"onrefreshcontents",level:3},{value:"setProperty",id:"setproperty",level:3}];function i(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,r.R)(),...e.components};return(0,o.jsxs)(o.Fragment,{children:[(0,o.jsx)(t.header,{children:(0,o.jsx)(t.h1,{id:"zencomponentdynaform",children:"%ZEN.Component.dynaForm"})}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Class %ZEN.Component.dynaForm Extends form [ Deprecated, System = 3 ]\n"})}),"\n",(0,o.jsxs)(t.p,{children:["A dynaForm (dynamic form) is a specialized type of form that displays form whose controls are drawn automatically based on the contents of dataController associated with the form.",(0,o.jsx)(t.br,{}),"\nFor example:",(0,o.jsx)(t.br,{}),"\n`` In this case, a form will be displayed with controls for each of the properties in the class ZENMVC.Person.",(0,o.jsx)(t.br,{}),"\nIt is also possible to use dynaForm without a dataController. In this case you must provide an OnGetPropertyInfo server-side callback method to specify the list of controls to display."]}),"\n",(0,o.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,o.jsx)(t.h3,{id:"defaultgroupid",children:"defaultGroupId"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property defaultGroupId As %ZEN.Datatype.id;\n"})}),"\n",(0,o.jsx)(t.p,{children:"If defined, this is the id of a group within this form in which the dynamically created controls will be injected."}),"\n",(0,o.jsx)(t.h3,{id:"injectcontrols",children:"injectControls"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:'Property injectControls As %ZEN.Datatype.string(VALUELIST = ",before,after") [ InitialExpression = "after" ];\n'})}),"\n",(0,o.jsx)(t.p,{children:"Specifies where in the form the automatically created controls are placed relative to other controls that have been manually placed within the form:"}),"\n",(0,o.jsxs)(t.ul,{children:["\n",(0,o.jsx)(t.li,{children:'"after" - (default) inject the automatically placed controls after any manually placed controls.'}),"\n",(0,o.jsxs)(t.li,{children:['"before" - inject the automatically placed controls before any manually placed controls.\nThis is useful for cases where the dynaForm may define buttons and other controls in addition to those that are automatically created.',(0,o.jsx)(t.br,{}),"\nIf defaultGroupId is defined, then this is ignored."]}),"\n"]}),"\n",(0,o.jsx)(t.h3,{id:"ongetpropertyinfo",children:"OnGetPropertyInfo"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:'Property OnGetPropertyInfo As %ZEN.Datatype.delegator(FORMALSPEC = "pIndex:%Integer,&pInfo:%String,pModelId:%String", RETURNTYPE = "%Status");\n'})}),"\n",(0,o.jsxs)(t.p,{children:["(Optional) Name of Server-side callback method called just before dynamic components are injected into this form.",(0,o.jsx)(t.br,{}),"\nThis callback method behaves in much the same way as the %OnGetPropertyInfo method of the %ZEN.DataModel.ObjectDataModel class. This must be the name of a server-only method in the page class that contains this form component.",(0,o.jsx)(t.br,{}),"\nFor example: ",(0,o.jsx)(t.code,{children:'Method GetInfo(pIndex As %Integer,ByRef pInfo As %String,pModelId As %String) As %Status { // subscript of pInfo is the logical name of the control // the value of pInfo(name) is the sequence number (ordinal position of the control). // the value of pInfo(name,"%type") is the control type to display Set pInfo("Field1") = pIndex Set pInfo("Field1","%type") = "textarea" // the value of pInfo(name,"label") is the control label to display Set pInfo("Field2") = pIndex + 1 Set pInfo("Field2","label") = "Field 2" Quit $$$OK }'})]}),"\n",(0,o.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,o.jsx)(t.h3,{id:"injectcontrols-1",children:"%InjectControls"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Method %InjectControls() As %Status [ Internal ]\n"})}),"\n",(0,o.jsxs)(t.p,{children:["Internal method.",(0,o.jsx)(t.br,{}),"\nInject additional controls into this when it is added to the page. This is implemented by subclasses."]}),"\n",(0,o.jsx)(t.h3,{id:"invokegetpropertyinfo",children:"%InvokeGetPropertyInfo"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Method %InvokeGetPropertyInfo(pOnGetPropertyInfo As %String, pIndex As %Integer, ByRef pInfo As %String, pModelId As %String) As %Status [ Internal ]\n"})}),"\n",(0,o.jsxs)(t.p,{children:["Internal method.",(0,o.jsx)(t.br,{}),"\nInvoke server-side OnGetPropertyInfo callback."]}),"\n",(0,o.jsx)(t.h3,{id:"recreateform",children:"RecreateForm"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Method RecreateForm(pController As %ZEN.Auxiliary.dataController) As %Boolean [ Internal, ZenMethod ]\n"})}),"\n",(0,o.jsxs)(t.p,{children:["Internal method.",(0,o.jsx)(t.br,{}),"\nThis is called from the client when it needs to recreate the contents of this form because the underlying DataModel has changed."]}),"\n",(0,o.jsx)(t.h3,{id:"notifyviewhandler",children:"notifyViewHandler"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod notifyViewHandler(reason, data1, data2) [ Internal, Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Notification that the dataController associated with this form has raised an event."}),"\n",(0,o.jsx)(t.h3,{id:"onrefreshcontents",children:"onRefreshContents"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onRefreshContents() [ Internal, Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Called after refreshContents, make sure data is bound to the form."}),"\n",(0,o.jsx)(t.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Set the value of a named property."})]})}function c(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,o.jsx)(t,{...e,children:(0,o.jsx)(i,{...e})}):i(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>a,x:()=>l});var o=n(96540);const r={},s=o.createContext(r);function a(e){const t=o.useContext(s);return o.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),o.createElement(s.Provider,{value:t},e.children)}}}]);