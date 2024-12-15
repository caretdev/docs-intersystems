/// This dialog adds (or edits) a new formatting rule definition to a DeepSee pivot.
Class %DeepSee.UI.Dialog.PivotEditRule Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Index of rule within parent dialog list or "" for new.
Property ruleNumber As %ZEN.Datatype.string(ZENURL = "NUMBER");

/// Name of icon in effect.
/// Names starting with "@" are user-defined names from the user icon list.
Property cellIcon As %ZEN.Datatype.string(ZENURL = "ICON");

/// Url of current icon.
Property sampleIcon As %ZEN.Datatype.string;

/// Range of cells for which this rule applies.
Property range As %ZEN.Datatype.string(ZENURL = "RANGE");

/// Condition operator.
Property operator As %ZEN.Datatype.string(ZENURL = "OPERATOR");

/// Value (or values) to test.
/// For IN and BETWEEN this is a comma-delimited list.
Property value As %ZEN.Datatype.csv(ZENURL = "VALUE");

/// CSS style to apply to cells that match this condition.
Property style As %ZEN.Datatype.style(ZENURL = "STYLE");

/// If defined, replace value with this text.
Property text As %ZEN.Datatype.string(ZENURL = "TEXT");

/// Icon.
Property icon As %ZEN.Datatype.uri(ZENURL = "ICON");

/// Icon count.
Property iconCount As %ZEN.Datatype.integer(ZENURL = "ICONCOUNT");

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

/// Draw contents of cell icon box.
Method DrawCellIcons(pSeed As %String) As %Status
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// Update the sample.
ClientMethod updateSample() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Click on a new cell icon.
ClientMethod selectIcon(type, href) [ Language = javascript ]
{
}

/// Click on clear range button.
ClientMethod clearRange() [ Language = javascript ]
{
}

/// Click on a new operator value.
ClientMethod updateOperator(type) [ Language = javascript ]
{
}

}
