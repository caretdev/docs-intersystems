/// This page allows the user to create a value expression using drag and drop
Class %DeepSee.UI.Dialog.ExpressionBuilder Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Displayed name of this page.
Parameter PAGENAME = "Expression Builder";

/// Cube name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Name of cube.
Property pivotName As %ZEN.Datatype.string(ZENURL = "PIVOT");

Property valueExpression As %ZEN.Datatype.string(ZENURL = "VALUE");

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Provide contents of the dimension tree.
ClassMethod GetDimensionInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
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

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// User has dropped an item on the textarea.
ClientMethod mdxDrop(textarea, dragData) [ Language = javascript ]
{
}

}
