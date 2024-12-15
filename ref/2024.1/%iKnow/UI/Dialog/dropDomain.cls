/// This dialog lets the user Add a new iKnow domain or configuration definition.
Class %iKnow.UI.Dialog.dropDomain Extends %CSP.UI.Portal.Dialog.WizardTemplate [ Deprecated, System = 4 ]
{

Parameter APPLYBUTTON = 0;

Parameter AUTONS As BOOLEAN = 1;

Parameter DOMAIN = "%iKnow";

/// Security requirement
Parameter RESOURCE = "%Development";

/// DOCBOOK Topic Id that offers help for this page.
Parameter HELPID As STRING;

Property domainDefinitionClass As %ZEN.Datatype.string(ZENURL = "DOMAINDEF");

Property returnValue As %ZEN.Datatype.string;

XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method DropDomainDefinition() As %Status [ ZenMethod ]
{
}

ClassMethod DropDomainDefinitionAsync(pClassName As %String) As %Status [ Internal ]
{
}

Method DropDomainData() As %Status [ ZenMethod ]
{
}

ClassMethod DropDomainDataAsync(pClassName As %String) As %Status [ Internal ]
{
}

ClassMethod %OnFinishBackgroundTask(pTaskID As %String)
{
}

Method %OnGetSubtitle() As %String
{
}

Method %OnGetTitle() As %String
{
}

/// Get the value that will be applied when the user presses the OK button.
/// This is implemented by subclasses.
ClientMethod getDialogValue() [ Language = javascript ]
{
}

}
