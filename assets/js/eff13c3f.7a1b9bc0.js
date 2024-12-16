"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[10172],{85722:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>i,default:()=>d,frontMatter:()=>l,toc:()=>r});var s=n(74848),a=n(28453);const l={pagination_prev:null,pagination_next:null},i="%ZEN.Component.form",r=[{value:"Parameters",id:"parameters",level:2},{value:"SYSMODULE",id:"sysmodule",level:3},{value:"DEFAULTGROUPCLASS",id:"defaultgroupclass",level:3},{value:"DEFAULTGROUPSTYLE",id:"defaultgroupstyle",level:3},{value:"Properties",id:"properties",level:2},{value:"nextPage",id:"nextpage",level:3},{value:"target",id:"target",level:3},{value:"action",id:"action",level:3},{value:"method",id:"method",level:3},{value:"enctype",id:"enctype",level:3},{value:"autoValidate",id:"autovalidate",level:3},{value:"invalidMessage",id:"invalidmessage",level:3},{value:"readOnlyMessage",id:"readonlymessage",level:3},{value:"noModelMessage",id:"nomodelmessage",level:3},{value:"messageTargetId",id:"messagetargetid",level:3},{value:"onsubmit",id:"onsubmit",level:3},{value:"onreset",id:"onreset",level:3},{value:"ondefault",id:"ondefault",level:3},{value:"onchange",id:"onchange",level:3},{value:"onvalidate",id:"onvalidate",level:3},{value:"oninvalid",id:"oninvalid",level:3},{value:"key",id:"key",level:3},{value:"propagateChanges",id:"propagatechanges",level:3},{value:"OnLoadForm",id:"onloadform",level:3},{value:"OnSubmitForm",id:"onsubmitform",level:3},{value:"autocomplete",id:"autocomplete",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawHTML",id:"drawhtml",level:3},{value:"%OnDrawForm",id:"ondrawform",level:3},{value:"%OnAddToPageAfter",id:"onaddtopageafter",level:3},{value:"%InjectControls",id:"injectcontrols",level:3},{value:"%LoadForm",id:"loadform",level:3},{value:"%BindDataControls",id:"binddatacontrols",level:3},{value:"reload",id:"reload",level:3},{value:"ReloadForm",id:"reloadform",level:3},{value:"getFormElement",id:"getformelement",level:3},{value:"save",id:"save",level:3},{value:"submit",id:"submit",level:3},{value:"reset",id:"reset",level:3},{value:"submitHandler",id:"submithandler",level:3},{value:"controlChangeHandler",id:"controlchangehandler",level:3},{value:"isModified",id:"ismodified",level:3},{value:"clearModified",id:"clearmodified",level:3},{value:"validate",id:"validate",level:3},{value:"setValuesByName",id:"setvaluesbyname",level:3},{value:"getValuesAsObject",id:"getvaluesasobject",level:3},{value:"bindValues",id:"bindvalues",level:3},{value:"getControlList",id:"getcontrollist",level:3},{value:"showMessage",id:"showmessage",level:3},{value:"setProperty",id:"setproperty",level:3},{value:"notifyViewHandler",id:"notifyviewhandler",level:3},{value:"undoAutofill",id:"undoautofill",level:3},{value:"onloadHandler",id:"onloadhandler",level:3}];function o(e){const t={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,a.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"zencomponentform",children:"%ZEN.Component.form"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %ZEN.Component.form Extends (group, dataView) [ Deprecated, System = 3 ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Form component.",(0,s.jsx)(t.br,{}),"\nThis is a specialized type of group that wraps its constituent components within an HTML form element.",(0,s.jsx)(t.br,{}),"\nTypically a form contain a set of controls. These are used to collect input from a user. This input is sent to the server for processing via an HTML submit operation.",(0,s.jsx)(t.br,{}),"\nThe contents of a form can be submitted in two ways: When the user clicks a submit button placed within the form, or by calling the submit of this form object.",(0,s.jsx)(t.br,{}),"\nNote that ZEN automatically handles the details of the submit operation including invoking server callbacks and error processing. All forms are submitted using the HTTP POST submission method."]}),"\n",(0,s.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(t.h3,{id:"sysmodule",children:"SYSMODULE"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter SYSMODULE = "form";\n'})}),"\n",(0,s.jsx)(t.h3,{id:"defaultgroupclass",children:"DEFAULTGROUPCLASS"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter DEFAULTGROUPCLASS = "form";\n'})}),"\n",(0,s.jsx)(t.h3,{id:"defaultgroupstyle",children:"DEFAULTGROUPSTYLE"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter DEFAULTGROUPSTYLE = "padding: 5px;";\n'})}),"\n",(0,s.jsx)(t.p,{children:"Default style for cells within forms"}),"\n",(0,s.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(t.h3,{id:"nextpage",children:"nextPage"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property nextPage As %ZEN.Datatype.uri;\n"})}),"\n",(0,s.jsxs)(t.p,{children:["URL to go to ",(0,s.jsx)(t.em,{children:"after"})," this form is submitted successfully. This value may be overwritten by a specific submit button."]}),"\n",(0,s.jsx)(t.h3,{id:"target",children:"target"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property target As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsx)(t.p,{children:"Specifies the target for the form. (Refer to the HTML form element for details)."}),"\n",(0,s.jsx)(t.h3,{id:"action",children:"action"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property action As %ZEN.Datatype.uri;\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Specifies the action attribute for the form.",(0,s.jsx)(t.br,{}),"\nSetting this will override the default behavior of Zen forms (i.e. the normal submit logic will not be executed). This should only be used for special cases where direct control of the action attribute is required."]}),"\n",(0,s.jsx)(t.h3,{id:"method",children:"method"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property method As %ZEN.Datatype.string(VALUELIST = ",post,get");\n'})}),"\n",(0,s.jsxs)(t.p,{children:["Specifies the method attribute for the form.",(0,s.jsx)(t.br,{}),"\nSetting this will override the default behavior of Zen forms. This should only be used for special cases where direct control of the method attribute is required."]}),"\n",(0,s.jsx)(t.h3,{id:"enctype",children:"enctype"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property enctype As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsx)(t.p,{children:"Specifies the enctype for the form. (Refer to the HTML form element for details)."}),"\n",(0,s.jsx)(t.h3,{id:"autovalidate",children:"autoValidate"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property autoValidate As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"If true (the default), automatically invoke this form's validate whenever this form is submitted."}),"\n",(0,s.jsx)(t.h3,{id:"invalidmessage",children:"invalidMessage"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property invalidMessage As %ZEN.Datatype.caption [ InitialExpression = "This form contains invalid values. Please correct the following field(s) and try again." ];\n'})}),"\n",(0,s.jsxs)(t.p,{children:["Value displayed in alert box by the validate method when the contents of this form are invalid.",(0,s.jsx)(t.br,{}),"\nThis is a localized value."]}),"\n",(0,s.jsx)(t.h3,{id:"readonlymessage",children:"readOnlyMessage"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property readOnlyMessage As %ZEN.Datatype.caption [ InitialExpression = "This data is read only." ];\n'})}),"\n",(0,s.jsxs)(t.p,{children:["Value displayed in alert box by the save method when an attempt is made to save a form bound to readonly data model",(0,s.jsx)(t.br,{}),"\nThis is a localized value."]}),"\n",(0,s.jsx)(t.h3,{id:"nomodelmessage",children:"noModelMessage"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property noModelMessage As %ZEN.Datatype.caption;\n"})}),"\n",(0,s.jsx)(t.p,{children:"Value displayed in the component with id messageTargetId when this form is not connected to a data model; the form is connected to a controller but the controller does not have a data model. This is a localized value."}),"\n",(0,s.jsx)(t.h3,{id:"messagetargetid",children:"messageTargetId"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property messageTargetId As %ZEN.Datatype.id;\n"})}),"\n",(0,s.jsx)(t.p,{children:"If defined, this is the id of a control (which could be anywhere on the page) that will display messages, such as the noModelMessage. The message is displayed by setting the value property of the identified control."}),"\n",(0,s.jsx)(t.h3,{id:"onsubmit",children:"onsubmit"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property onsubmit As %ZEN.Datatype.eventHandler(HANDLER = "");\n'})}),"\n",(0,s.jsxs)(t.p,{children:["onsubmit event handler: This event is fired when this form is about to be submitted. It provides a chance to perform client-side validation of values within the form. If this event handler returns false, then the submit operation will not occur.",(0,s.jsx)(t.br,{}),"\nNote that unlike the HTML onsubmit event, this callback is ",(0,s.jsx)(t.em,{children:"always"})," called when the form is submitted."]}),"\n",(0,s.jsx)(t.h3,{id:"onreset",children:"onreset"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property onreset As %ZEN.Datatype.eventHandler;\n"})}),"\n",(0,s.jsx)(t.p,{children:"onreset event handler: This event is fired when this form is about to be reset."}),"\n",(0,s.jsx)(t.h3,{id:"ondefault",children:"ondefault"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property ondefault As %ZEN.Datatype.eventHandler(HANDLER = "");\n'})}),"\n",(0,s.jsx)(t.p,{children:"ondefault event handler: This is a special event that is fired when the user performs an action that triggers the default action for a form. Typically this is when the user presses the Enter key within a control within the form."}),"\n",(0,s.jsx)(t.h3,{id:"onchange",children:"onchange"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property onchange As %ZEN.Datatype.eventHandler(HANDLER = "");\n'})}),"\n",(0,s.jsxs)(t.p,{children:["onchange event handler: This event is fired when the value of a control on this form is changed by the user or when the modified flags are cleared.",(0,s.jsx)(t.br,{}),"\nWhen fired for a control, the event handler can use an argument called 'control' to get a reference to the modified control. When fired in the case of a call to clearModified, this argument will be null."]}),"\n",(0,s.jsx)(t.h3,{id:"onvalidate",children:"onvalidate"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property onvalidate As %ZEN.Datatype.eventHandler(HANDLER = "");\n'})}),"\n",(0,s.jsx)(t.p,{children:"onvalidate event handler: This event is fired when this form's validate method is called."}),"\n",(0,s.jsx)(t.h3,{id:"oninvalid",children:"oninvalid"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property oninvalid As %ZEN.Datatype.eventHandler(HANDLER = "");\n'})}),"\n",(0,s.jsx)(t.p,{children:"oninvalid event handler: This event is fired when this form's validate method determines that the contents of this form are invalid. This provides the application with a chance to display a custom message."}),"\n",(0,s.jsx)(t.h3,{id:"key",children:"key"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property key As %ZEN.Datatype.string(ZENEXPRESSION = 1);\n"})}),"\n",(0,s.jsxs)(t.p,{children:["(Optional) ID value used by the OnLoadForm method to load data for this form.",(0,s.jsx)(t.br,{}),"\nIf this form is connected to a dataController then this value will be ignored."]}),"\n",(0,s.jsx)(t.h3,{id:"propagatechanges",children:"propagateChanges"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property propagateChanges As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsxs)(t.p,{children:["If true, then programmatic changes, via the control's setValue method, to controls in this form will trigger onchange events and notify a dataController if present.",(0,s.jsx)(t.br,{}),"\nThe default is false. In this case, events are only raised in response to user actions."]}),"\n",(0,s.jsx)(t.h3,{id:"onloadform",children:"OnLoadForm"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property OnLoadForm As %ZEN.Datatype.delegator(FORMALSPEC = "pID:%String,*pValues:%String", RETURNTYPE = "%Status");\n'})}),"\n",(0,s.jsxs)(t.p,{children:["(Optional) Name of Server-side callback method to call to get values for this form.",(0,s.jsx)(t.br,{}),"\nThis must be the name of a server-only method in the page class that contains this form component."]}),"\n",(0,s.jsx)(t.h3,{id:"onsubmitform",children:"OnSubmitForm"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property OnSubmitForm As %ZEN.Datatype.delegator(FORMALSPEC = "pSubmit:%ZEN.Submit", RETURNTYPE = "%Status");\n'})}),"\n",(0,s.jsxs)(t.p,{children:["(Optional) Name of Server-side callback method to call when this form is submitted. If this is not specified, then the page's %OnSubmit method is called instead.",(0,s.jsx)(t.br,{}),"\nThis must be the name of a server-only method in the page class that contains this form component."]}),"\n",(0,s.jsx)(t.h3,{id:"autocomplete",children:"autocomplete"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property autocomplete As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,s.jsxs)(t.p,{children:["(Optional) Indicates whether controls in this form can by default have their values automatically completed by the browser.",(0,s.jsx)(t.br,{}),"\nThis setting can be overridden by an autocomplete attribute on an element belonging to the form."]}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DrawHTML()\n"})}),"\n",(0,s.jsx)(t.h3,{id:"ondrawform",children:"%OnDrawForm"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnDrawForm() As %Status [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This callback gives form subclasses a chance to add additional hidden fields."}),"\n",(0,s.jsx)(t.h3,{id:"onaddtopageafter",children:"%OnAddToPageAfter"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnAddToPageAfter() As %Status\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Called just after this form is added to the page.",(0,s.jsx)(t.br,{}),"\nInvokes the OnLoadForm callback for this form."]}),"\n",(0,s.jsx)(t.h3,{id:"injectcontrols",children:"%InjectControls"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %InjectControls() As %Status [ CodeMode = expression ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Internal method.",(0,s.jsx)(t.br,{}),"\nInject additional controls into this when it is added to the page. This is implmented by subclasses."]}),"\n",(0,s.jsx)(t.h3,{id:"loadform",children:"%LoadForm"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %LoadForm(pKey As %String, pOnLoadForm As %String, ByRef pValues As %String) As %Status [ Internal ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Internal method.",(0,s.jsx)(t.br,{}),"\nInvoke server-side event handler (if defined) to get values for this form."]}),"\n",(0,s.jsx)(t.h3,{id:"binddatacontrols",children:"%BindDataControls"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Method %BindDataControls(pController As %ZEN.Auxiliary.dataController, pGroup As %ZEN.Component.group = "") As %Status [ Private ]\n'})}),"\n",(0,s.jsxs)(t.p,{children:["Internal method.",(0,s.jsx)(t.br,{}),"\nCopies values from a dataController object to the controls that belong to this form."]}),"\n",(0,s.jsx)(t.h3,{id:"reload",children:"reload"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod reload(key) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Reload the contents of this form given a key value ."}),"\n",(0,s.jsx)(t.h3,{id:"reloadform",children:"ReloadForm"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method ReloadForm(pFormIndex As %Integer, pKey As %String) [ ZenMethod ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Internal method.",(0,s.jsx)(t.br,{}),"\nGet values for form from user callback; Apply them to client form."]}),"\n",(0,s.jsx)(t.h3,{id:"getformelement",children:"getFormElement"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getFormElement() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Return the HTML form element associated with this component. This is provided in case there are addition HTML form properties or methods that an application needs access to."}),"\n",(0,s.jsx)(t.h3,{id:"save",children:"save"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod save() [ Language = javascript ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:['If this form is connected to a dataController, then validate the contents of the form and then save the data to the server via the dataController. Return the id value used to save the data or "" if not saved.',(0,s.jsx)(t.br,{}),"\nIf this form is not connected to a dataController, this method does nothing."]}),"\n",(0,s.jsx)(t.h3,{id:"submit",children:"submit"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod submit(action) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Submit the HTML form associated with this component. action if defined, is the action value that is passed on to the server %OnSubmit callback method."}),"\n",(0,s.jsx)(t.h3,{id:"reset",children:"reset"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod reset() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Reset the HTML form associated with this component."}),"\n",(0,s.jsx)(t.h3,{id:"submithandler",children:"submitHandler"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod submitHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Internal method.",(0,s.jsx)(t.br,{}),"\nOnsubmit event handler. This is an internal method used to trap the default action of the form."]}),"\n",(0,s.jsx)(t.h3,{id:"controlchangehandler",children:"controlChangeHandler"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod controlChangeHandler(control, fire) [ Internal, Language = javascript ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Internal method.",(0,s.jsx)(t.br,{}),"\nThis handler is called whenever the value of a control within this form is changed by the user."]}),"\n",(0,s.jsx)(t.h3,{id:"ismodified",children:"isModified"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod isModified() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Test if the contents of the form have been modified. This is done by calling the isModified method for each control on the form."}),"\n",(0,s.jsx)(t.h3,{id:"clearmodified",children:"clearModified"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod clearModified(reset) [ Language = javascript ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Clear the modified state of this form by visiting every control on the form and resetting its orginalValue property to its current value.",(0,s.jsx)(t.br,{}),"\nIf reset is provided and true, then this also sets the value of every control to '';"]}),"\n",(0,s.jsx)(t.h3,{id:"validate",children:"validate"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod validate() [ Language = javascript ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Validate the contents of this form.",(0,s.jsx)(t.br,{}),"\nThis does the following:"]}),"\n",(0,s.jsxs)(t.ul,{children:["\n",(0,s.jsx)(t.li,{children:"Invokes the form-specific onvalidate callback, if present."}),"\n",(0,s.jsx)(t.li,{children:"Calls the validationHandler method for each control within this form.\nIt returns true if the form is valid."}),"\n"]}),"\n",(0,s.jsx)(t.h3,{id:"setvaluesbyname",children:"setValuesByName"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod setValuesByName(values) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Given an associative array of the form values[name] = value, set the value of the controls within this form by control name."}),"\n",(0,s.jsx)(t.h3,{id:"getvaluesasobject",children:"getValuesAsObject"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getValuesAsObject() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Return the current values of all controls in this form as a zenProxy object. The names of the properties within the proxy object are based on the each control's name attribute."}),"\n",(0,s.jsx)(t.h3,{id:"bindvalues",children:"bindValues"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod bindValues(dataBinding, clear) [ Internal, Language = javascript ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Internal client-side method.",(0,s.jsx)(t.br,{}),"\nCopies values from a dataController object to the controls that belong to this form.",(0,s.jsx)(t.br,{}),"\nIf dataBinding is not null, then binding only applies to controls with that dataBinding value.",(0,s.jsx)(t.br,{}),"\nIf clear is true, then clear the cache of any controls (i.e. comboboxes)."]}),"\n",(0,s.jsx)(t.h3,{id:"getcontrollist",children:"getControlList"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getControlList(sortBy) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:'Internal method. Construct an array of references to every control that belongs to this form. If sortBy is defined, it indicates how the controlList should be ordered, "name", "id".'}),"\n",(0,s.jsx)(t.h3,{id:"showmessage",children:"showMessage"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod showMessage(message) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Show a message by setting the value of the control identified by messageTargetId. Returns true if the message was displayed."}),"\n",(0,s.jsx)(t.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Set the value of a named property."}),"\n",(0,s.jsx)(t.h3,{id:"notifyviewhandler",children:"notifyViewHandler"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod notifyViewHandler(reason, data1, data2, data3) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Notification that the dataController associated with this form has raised an event."}),"\n",(0,s.jsx)(t.h3,{id:"undoautofill",children:"undoAutofill"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod undoAutofill() [ Internal, Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Compensate for Chrome's increasingly aggressive autofill behavior by resetting the client-side settings to the server-side originals. This method should be called after page load (and Chrome's auto-fill cycle) but before the user has had a change to start editing things. Optimally this would be done via a setTimeout in the onload method if autofill has been set to false."}),"\n",(0,s.jsx)(t.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"This client event, if present, is fired when the page is loaded."})]})}function d(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(o,{...e})}):o(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>i,x:()=>r});var s=n(96540);const a={},l=s.createContext(a);function i(e){const t=s.useContext(l);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function r(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:i(e.components),s.createElement(l.Provider,{value:t},e.children)}}}]);