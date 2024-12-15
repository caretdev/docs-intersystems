Class %iKnow.UI.Dialog.buildDomain Extends %ZEN.Dialog.standardDialog [ Deprecated, System = 4 ]
{

Parameter APPLYBUTTON = 0;

Parameter CANCELBUTTON = 0;

Parameter DOMAIN = "%iKnow";

Parameter RESOURCE = "%Development";

/// Domain Definition class
Property domainDefinition As %ZEN.Datatype.string(ZENURL = "DOMAINDEF");

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
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

/// Test if the given class name is valid.
ClassMethod IsValidClassName(pClassName As %String) As %Boolean [ ZenMethod ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method BuildDomain() As %Status [ ZenMethod ]
{
}

ClassMethod BuildDomainAsync(pDomainDefClass As %String = "") As %Status [ Internal ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.
ClientMethod ondialogFinish(action) [ Language = javascript ]
{
}

/// This server-side callback method is called whenever the client
/// calls to monitor the current background task and the task is complete.
/// Typically a subclass uses this to send back JavaScript to update
/// the page.
ClassMethod %OnFinishBackgroundTask(pTaskID As %String)
{
}

/// This server-side callback method is called whenever the client
/// calls to monitor the current background task.
/// Typically a subclass uses this to send back JavaScript to update
/// a progress bar.
ClassMethod %OnMonitorBackgroundTask(pTaskID As %String, pStatus As %String, pPercentComplete As %Float)
{
}

}
