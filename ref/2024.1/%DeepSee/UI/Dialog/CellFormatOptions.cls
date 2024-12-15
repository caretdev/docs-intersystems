/// This dialog lets the user specificy conditional formatting for a pivot table.
Class %DeepSee.UI.Dialog.CellFormatOptions Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 1;

/// Name of color scale in effect.
Property colorScale As %ZEN.Datatype.string(ZENURL = "COLORSCALE");

/// Default Range for new rules.
Property defRange As %ZEN.Datatype.string;

/// List of formatting rules for the table.
Property formatRules As list Of %DeepSee.Component.pivotCondition(XMLNAME = "formatRule", XMLPROJECTION = "ELEMENT");

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Draw contents of color scale icon box.
Method DrawColorScale(pSeed As %String) As %Status
{
}

/// Zen page notification of an HTTP request.
ClassMethod %OnPreHTTP() As %Boolean [ Internal, ServerOnly = 1 ]
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

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// Click on a new color scale.
ClientMethod selectColorScale(type) [ Language = javascript ]
{
}

/// Clear the rules
ClientMethod clearRules() [ Language = javascript ]
{
}

/// Draw contents of rule list box.
Method DrawRuleList(pSeed As %String) As %Status
{
}

/// Add a rule definition.
ClientMethod addRule() [ Language = javascript ]
{
}

/// Edit a rule definition.
ClientMethod editRule(n) [ Language = javascript ]
{
}

/// Remove a rule definition.
ClientMethod removeRule(n) [ Language = javascript ]
{
}

/// Move a rule definition up.
ClientMethod moveRuleUp(n) [ Language = javascript ]
{
}

/// Move a rule definition up.
ClientMethod moveRuleDown(n) [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Change to custom color
ClientMethod ccChange(apply) [ Language = javascript ]
{
}

}
