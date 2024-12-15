/// Studio Template: New Web Service/Client Configuration.
Class %ZEN.Template.WebServicePolicyWizard Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "Web Service/Client Configuration";

Parameter TEMPLATETITLE = "Web Service/Client Configuration Wizard";

Parameter TEMPLATEDESCRIPTION = "Create a new Web Service/Client Configuration.";

Parameter TEMPLATETYPE = "cls";

/// What type of template.
Parameter TEMPLATEMODE = "new";

Parameter TEMPLATEGROUP = "General";

/// Domain used for localization.
Parameter DOMAIN = "%ZEN";

Parameter HELPID = "GSOAPSEC_wsp_creating_policies";

/// If NumSOAPClasses is greater than 1, then the Config Class field and Finish button are disabled.<br/>
/// If NumSOAPClasses is 1, then the Config Class is set to the first piece of ConfigId found, and modification of it is not allowed.<br/>
/// Else the Config Class is set to TargetClass_"Config"
Property NumSOAPClasses As %ZEN.Datatype.integer [ InitialExpression = 0 ];

Property ConfigClass As %ZEN.Datatype.string;

Property IsClient As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property lblNONE As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("(No security is required.)")} ];

Property lblSEC As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("(Click [Next] to specify more policy details.)")} ];

Property FINALRESULTS As %String;

XData CSS3Style
{
}

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of the body pane of this Studio Template.
XData templateBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// user changed SERVER <=> CLIENT. need to reset any policy selection back to NONE.
ClientMethod changeService(CLASS) [ Language = javascript ]
{
}

/// prepare for tab 2.
ClientMethod changeType(type, targetclass) [ Language = javascript ]
{
}

/// load, show/hide fiels based on policy selected.
ClientMethod changePolicy(policy) [ Language = javascript ]
{
}

/// enable/disable DERIVEDKEYS based on Secure Conversation
ClientMethod changeSecConv(flag) [ Language = javascript ]
{
}

/// This is called when the template is first displayed;
/// This provides a chance to set focus etc.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

/// This is called when the template is finished - gather selected values and put into hidden Zen fields for %OnTemplateAction.<br/>
/// The extra work is needed because most policy specific fields are html controls rather than Zen controls.
ClientMethod onfinishHandler() [ Language = javascript ]
{
}

/// Return value of the given html field name and type.
ClientMethod getFinalValue(fieldName, fieldType) [ Language = javascript ]
{
}

ClientMethod hasMultiplePages() [ Language = javascript ]
{
}

/// Return true if this template can go to the next page (i.e., enable
/// the Next button).<br>
ClientMethod canGoNext() [ Language = javascript ]
{
}

/// Go to the next page of the template (if there is one).<br>
ClientMethod nextPage() [ Language = javascript ]
{
}

/// Go to the previous page of the template (if there is one).<br>
ClientMethod previousPage() [ Language = javascript ]
{
}

/// Return true if this template can go to the previous page (i.e., enable
/// the Back button).<br>
ClientMethod canGoBack() [ Language = javascript ]
{
}

/// Return true if this template can Finish (i.e., enable
/// the Finish button).<br>
ClientMethod canFinish() [ Language = javascript ]
{
}

/// Validation handler for form built-into template.
ClientMethod formValidationHandler() [ Language = javascript ]
{
}

ClientMethod showMsg(msg) [ Language = javascript ]
{
}

ClientMethod resetMsg() [ Language = javascript ]
{
}

ClassMethod validateConfigurationName(classname As %String, replace As %Boolean) As %String [ ZenMethod ]
{
}

/// Return Services and Clients valueList to be loaded into drop-downs.
ClassMethod LoadList(Output Services) As %String
{
}

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

/// This method is processed when user selects a CLASS type and clicks Next. TargetClass is passed in.
ClassMethod DrawNumSOAPClasses(pSeed As %String) As %Status
{
}

ClassMethod GetPolicyMessage(pCode As %String) As %String
{
}

/// Passing in code or policy type, display description of it.
ClassMethod DrawMessage(pSeed As %String) As %Status
{
}

/// This method draws policy detailed content.
ClassMethod DrawDetailsContent(code As %String) As %Status
{
}

/// code passed in is the Security Policy code.
ClassMethod GetSSLInfo(code As %String)
{
}

/// code passed may contain code_R_ or code_I (if IsClient).
ClassMethod GetX509Info(code As %String, desc As %String)
{
}

ClassMethod GetProtectionInfo(code As %String)
{
}

ClassMethod GetSymmetricInfo(code As %String)
{
}

ClassMethod GetMutualInfo(code As %String)
{
}

/// This method is called when the template is complete. Any
/// output to the principal device is returned to the Studio.
Method %OnTemplateAction() As %Status
{
}

}
