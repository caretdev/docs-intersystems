/// Integrity Check dialog for Management Portal
Class %CSP.UI.Portal.Dialog.Integ Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Dialog.Integ.zen";

Parameter RESOURCE = "%Admin_Operate:USE";

/// Displayed name of this page.
Parameter PAGENAME = "IntegrityCheck";

Parameter AUTONS As BOOLEAN = 0;

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// Type from where we get the selected items from: Class or Routine.
Property FILETYPE As %ZEN.Datatype.string(ZENURL = "FILETYPE");

Property CHECKINTEGALL As %ZEN.Datatype.string(ZENURL = "CHECKINTEGALL");

/// Total number of DBs user selected. If it's 1 then allow to select/unselect globals.
Property TOTALDB As %ZEN.Datatype.integer [ InitialExpression = "0" ];

/// Last Directory user selected
Property Directory As %ZEN.Datatype.string;

/// If user unchecked a global, this is set to 1.
Property GlobalChanged As %ZEN.Datatype.boolean;

/// When Run is clicked then Finished is set to 1, indicating Next and Run buttons should be disabled.
Property Finished As %ZEN.Datatype.boolean [ InitialExpression = "0" ];

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

ClientMethod showGlobals(pickGlobals) [ Language = javascript ]
{
}

/// Now Run Integ.
ClientMethod doRun() [ Language = javascript ]
{
}

/// Return true if this template can go to the next page (i.e., enable
/// the Next button).<br>
ClientMethod canGoNext() [ Language = javascript ]
{
}

/// Return true if this template can go to the previous page (i.e., enable
/// the Back button).<br>
/// This is implemented by subclasses.
ClientMethod canGoBack() [ Language = javascript ]
{
}

/// Return true if this template can Finish (i.e., enable
/// the Finish button).<br>
ClientMethod canFinish() [ Language = javascript ]
{
}

ClientMethod hasMultiplePages() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

/// For Integrity check, if user selected more than one database, then disable the Global button
ClientMethod enableGlobalButton() [ Language = javascript ]
{
}

ClientMethod getDBValues() [ Language = javascript ]
{
}

/// Disable or enable db checkboxes. If globals selected, then disable other DB checkboxes.
/// If user unchecked the only DB they have globals selected, then enable all and lose global selections.
ClientMethod disableDBboxes() [ Language = javascript ]
{
}

ClientMethod changeCheckbox(thisCheckbox) [ Language = javascript ]
{
}

ClientMethod toggleCheckboxes(cbState) [ Language = javascript ]
{
}

ClientMethod toggleDBboxes(cbState) [ Language = javascript ]
{
}

/// gather state of check boxes and update cbState
ClientMethod updateDBValues(cbState) [ Language = javascript ]
{
}

/// Get global checkboxes and save it to temp global for processing.
ClientMethod getGlobals() [ Language = javascript ]
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

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

ClassMethod SaveGlobals(pGlobals) [ ZenMethod ]
{
}

ClassMethod DrawDBs(pSeed) As %Status
{
}

ClassMethod DrawGlobals(pSeed) As %Status
{
}

/// If at least one database is selected, then save it into session
ClassMethod PrepareAction(filetype, selectedRows, GLOBALLIST) As %String [ ZenMethod ]
{
}

Method GetLink() As %String [ ZenMethod ]
{
}

}
