/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Template for Mappings popup dialogs Management Portal
Class %CSP.UI.Portal.Mappings.Template Extends %CSP.Portal.standardDialog [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 1;

Parameter EMSSERVICE = "Namespace";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property CPFMapFile As %String;

Property CPFMapName As %String;

Property Namespace As %String(ZENURL = "$ID1");

Property MappingName As %String(ZENURL = "$ID2");

Property IsNew As %Boolean [ InitialExpression = {$G(%request.Data("$ID2",1),"") = ""} ];

Property disabledStyle As %ZEN.Datatype.style [ InitialExpression = "background:darkgray;color:#545454;" ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Override in subclasses
ClientMethod checkFields() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// Apply the value for this dialog and keep it open.
/// Overriding so that we can disable the ok and apply buttons after.
ClientMethod dialogApply() [ Language = javascript ]
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

ClientMethod toggleButtons(flag) [ Language = javascript ]
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

}
