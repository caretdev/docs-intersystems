/// <p>This class is used internally by Cach&eacute;. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Settings dialog for SQL PTools in Management Portal.
Class %CSP.UI.Portal.SQL.QButtons.RuntimeStatsSettings Extends (%CSP.UI.Portal.Dialog.WizardTemplate, %CSP.UI.Portal.SQL.QButtons.Utils) [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.SQL.QButtons.RuntimeStatsSettings.zen";

Parameter RESOURCE = "%Development:USE";

/// Displayed name of this page.
Parameter PAGENAME = "RuntimeStatsSettings";

Parameter AUTONS As BOOLEAN = 1;

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Property msgPurgeQueryDone As %ZEN.Datatype.string [ InitialExpression = {$$$TextJS("Purge all cached queries done.")} ];

Property msgPurgeQuery As %ZEN.Datatype.string [ InitialExpression = {$$$TextJS("Purge all cached queries failed.")} ];

Property warningImage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/broker/images/warning.png")} ];

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

ClientMethod validate(ctl) [ Language = javascript ]
{
}

ClientMethod changeOption(newOption) [ Language = javascript ]
{
}

ClientMethod changeTimeoutOption() [ Language = javascript ]
{
}

/// Check if user hit [Enter].
ClientMethod keyUp(zenEvent, ctl) [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
///
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

ClassMethod SaveSQLStats(actionFlag, timeoutOption, hours, minutes, ExpirationDate, resetOption) As %String [ ZenMethod ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
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

}
