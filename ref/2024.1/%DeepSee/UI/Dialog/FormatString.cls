/// This dialog lets the user edit or add Format String for measure definition.
Class %DeepSee.UI.Dialog.FormatString Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Cube name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

Property measureName As %ZEN.Datatype.string(ZENURL = "ELEMENT");

Property formatString As %ZEN.Datatype.string(ZENURL = "VALUE");

Property msgCube As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a Cube Name.")} ];

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

/// Value returned is delimited first by "^" then by ";". The first piece of "^" is the String value, the second piece is the Color value.<br>
/// The String values and Color values are each delimited by ";".
ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// Apply a format string value to the associated example
ClientMethod showExample(value, id) As %Boolean [ Language = javascript ]
{
}

/// Apply a style value to the associated example
ClientMethod showStyle(value, id) As %Boolean [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Return example display value given user entered format string.
ClassMethod GetDisplayValue(format As %String) As %String [ ZenMethod ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
