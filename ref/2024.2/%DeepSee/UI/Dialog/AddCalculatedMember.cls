/// This dialog adds a new Calculated Member to a DeepSee pivot (or cube) definition.<br>
Class %DeepSee.UI.Dialog.AddCalculatedMember Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Name of cube.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Name of cube.
Property pivotName As %ZEN.Datatype.string(ZENURL = "PIVOT");

/// Index of member that launched this dialog.
Property memberIndex As %ZEN.Datatype.integer(ZENURL = "INDEX");

/// Dimension.
Property dimension As %ZEN.Datatype.string(ZENURL = "DIMENSION");

/// Member.
Property memberName As %ZEN.Datatype.string(ZENURL = "MEMBER");

/// Expression.
Property valueExpression As %ZEN.Datatype.string(ZENURL = "EXPR");

/// List of locally defined calculated dimensions.
Property dimList As %ZEN.Datatype.string(ZENURL = "DIMLIST");

/// Format string.
Property formatString As %ZEN.Datatype.string(ZENURL = "FORMAT");

/// Solve order.
Property solveOrder As %ZEN.Datatype.integer(ZENURL = "SOLVEORDER");

/// Storage option
Property storeWithPivot As %ZEN.Datatype.boolean(ZENURL = "LOCAL") [ InitialExpression = 1 ];

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

/// Change of type.
ClientMethod changeType() [ Language = javascript ]
{
}

/// Change dimension
ClientMethod changeDimension() [ Language = javascript ]
{
}

/// Change dimension: update selLevel contents
Method OnChangeDimension(pValue As %String) As %Status [ ZenMethod ]
{
}

/// Change level
ClientMethod changeLevel() [ Language = javascript ]
{
}

/// Change level: update srcMbrs contents
Method OnChangeLevel(pValue As %String) As %Status [ ZenMethod ]
{
}

/// Turn srcMbrs value into a filter spec
ClientMethod selectMembers() [ Language = javascript ]
{
}

/// Launch format dialog.
ClientMethod editFormatString() [ Language = javascript ]
{
}

/// Launch format dialog.
ClientMethod buildExpression() [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Save a named filter.
ClassMethod SaveSharedCalcMbr(pCube As %String = "", pCalcMbrName As %String = "", pDimension, pValueExpression, pFormatString, pSolveOrder) As %String [ ZenMethod ]
{
}

}
