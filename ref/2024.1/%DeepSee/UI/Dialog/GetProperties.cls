/// This dialog lets the user add or edit a list for definition.<br>
/// An existing list (delimited by comma) may be passed in.
Class %DeepSee.UI.Dialog.GetProperties Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Cube name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

Property ELEMENT As %ZEN.Datatype.string(ZENURL = "ELEMENT");

Property Expression As %ZEN.Datatype.string(ZENURL = "VALUE");

Property WHAT As %ZEN.Datatype.string(ZENURL = "WHAT");

Property dataSource As %ZEN.Datatype.string(ZENURL = "DATASOURCE");

Property itemNumber As %ZEN.Datatype.integer [ InitialExpression = "1" ];

Property msgHasEmpty As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("There is at least one empty field. Proceed?")} ];

Property lblProperty As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("Enter a data source Property:")} ];

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

ClientMethod transformToSQLExpression(expr) [ Language = javascript ]
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

Method %OnAfterCreatePage() As %Status
{
}

/// Provide contents of the data source tree.
ClassMethod GetDataSourceInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

}
