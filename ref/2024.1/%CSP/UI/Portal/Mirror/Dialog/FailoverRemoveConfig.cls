Class %CSP.UI.Portal.Mirror.Dialog.FailoverRemoveConfig Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Mirror.Dialog.FailoverRemoveConfig.zen";

/// Displayed name of this page.
Parameter PAGENAME = "RemoveConfig";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property IsNotInitialized As %Boolean [ InitialExpression = {$SYSTEM.Mirror.GetInfo()["NOTINIT"} ];

Property IsPrimary As %Boolean [ InitialExpression = {$SYSTEM.Mirror.GetInfo()[$$$Primary} ];

Property DescText1 As %String [ InitialExpression = {$$$Text("Delete the mirror journal files except files in journal.log")} ];

Property DescText2 As %String [ InitialExpression = {$$$Text("Delete the mirror configuration information")} ];

Property RestartRequired As %Boolean [ InitialExpression = 0 ];

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the Cancel button.
/// If this returns false, then the dialog is not cancelled.
ClientMethod ondialogCancel() [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

ClientMethod doClearFlag() [ Language = javascript ]
{
}

ClientMethod doRemove() [ Language = javascript ]
{
}

ClassMethod ClearFlag() As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
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

Method %OnAfterCreatePage() As %Status
{
}

}
