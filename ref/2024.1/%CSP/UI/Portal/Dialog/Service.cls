/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Edit Service Popup Dialog for Management Portal
Class %CSP.UI.Portal.Dialog.Service Extends (%CSP.UI.Portal.Dialog.WizardTemplate, %CSP.UI.Component.SelectBoxUtils) [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Dialog.Service.zen";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS = 0;

/// Displayed name of this page.
Parameter PAGENAME = "ServiceEdit";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Parameter EMSSERVICE = "Security";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

/// When editing a service this is passed in as the service name.
Property PID As %ZEN.Datatype.string(ZENURL = "PID");

Property AuthList As %ZEN.Datatype.list(DELIMITER = ";");

Property EnableClientSystem As %Boolean [ InitialExpression = 0 ];

Property FromPage As %ZEN.Datatype.string(ZENURL = "from");

Property OldUnauthenticated As %Boolean;

Property ServiceOK As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Property ECPLink As %String [ InitialExpression = {..Link("/csp/sys/mgr/%25CSP.UI.Portal.ECP.zen")} ];

Property MonitorLink As %String [ InitialExpression = {..Link("/csp/sys/mgr/%25CSP.UI.Portal.Monitoring.zen")} ];

Property ShadowLink As %String [ InitialExpression = {..Link("/csp/sys/mgr/%25CSP.UI.Portal.Shadows.zen")} ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML block defines the contents of this pane.
XData incomingConnectionPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onstartHandler() [ Language = javascript ]
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

ClientMethod validate() [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

/// refresh the allowed incoming connections table and return whether there are now two or more clients listed
ClientMethod refreshConnectionTable() [ Language = javascript ]
{
}

ClientMethod showRoles(index, ip) [ Language = javascript ]
{
}

ClientMethod hideRoles() [ Language = javascript ]
{
}

ClientMethod saveRoles() [ Language = javascript ]
{
}

ClientMethod deleteIndex(DeleteIndex, ip, ncli) [ Language = javascript ]
{
}

ClientMethod deleteAll() [ Language = javascript ]
{
}

ClientMethod doAddIP() [ Language = javascript ]
{
}

Method DrawConnectionTable(pSeed As %String) As %Status
{
}

ClassMethod ValidateIP(IP As %String) As %String [ ZenMethod ]
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

/// This callback is called after the server-side page
/// object and all of its children are created.<br/>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

ClassMethod DrawCSPLink(pSeed As %String) As %Status
{
}

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

}
