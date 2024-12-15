/// This dialog lets the user Add a new iKnow domain or configuration definition.
Class %iKnow.UI.Dialog.addDomain Extends %CSP.UI.Portal.Dialog.WizardTemplate [ Deprecated, System = 4 ]
{

Parameter APPLYBUTTON = 0;

Parameter AUTONS As BOOLEAN = 1;

Parameter DOMAIN = "%iKnow";

/// Security requirement
Parameter RESOURCE = "%Development";

/// DOCBOOK Topic Id that offers help for this page.
Parameter HELPID As STRING;

Property mode As %ZEN.Datatype.string(ZENURL = "MODE") [ InitialExpression = "domain" ];

/// use this to indicate adding a domain or configuration
Property msgDomain As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a Domain name.")} ];

/// use this to indicate adding a domain or configuration
Property msgDomainDef As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a Domain Definition name.")} ];

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onChangeDomainName(name) [ Language = javascript ]
{
}

Method ValidateDomainName(pName As %String = "") As %String [ ZenMethod ]
{
}

Method ValidateDomainDefName(pName As %String = "") As %Status [ ZenMethod ]
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// Show definition based on type
ClientMethod changeType() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

ClassMethod SaveDomain(pDomainDefName, pDomainName, pDisabled, pAllowCustomUpdate) As %String [ ZenMethod ]
{
}

/// Save a configuration.
/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
