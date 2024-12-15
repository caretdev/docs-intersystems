/// This dialog lets the user add or edit Range Expression for level definition.
Class %DeepSee.UI.Dialog.RangeExpression Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Cube name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

Property levelName As %ZEN.Datatype.string(ZENURL = "ELEMENT");

Property rangeExpression As %ZEN.Datatype.string(ZENURL = "VALUE");

Property itemNumber As %ZEN.Datatype.integer [ InitialExpression = "1" ];

Property msgHasEmpty As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("There is at least one empty 'Replacement Value'. Replacement without a value will not be saved. Proceed?")} ];

Property msgHasNan As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("There is at least one value that is not numeric where it should be. Please correct and try again.")} ];

Property msgReset As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("This will discard all changes and reload the form. Proceed?")} ];

Property titleBtnE As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Exclusive. Click to change to Inclusive.")} ];

Property titleBtnI As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Inclusive. Click to change to Exclusive.")} ];

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User changed the form of original values (this is only available if user has not "Added" any new item.
/// Convert what's been defined to the new form.
ClientMethod changeForm(value) [ Language = javascript ]
{
}

/// Add a new row. <br>
/// formType = 0 means user selected "Strings" to be the form of original values.
/// formType = 1 means user selected "Numeric ranges" to be the form of original values.
ClientMethod addItem() [ Language = javascript ]
{
}

/// Discard whatever user entered and reload form
ClientMethod resetForm() [ Language = javascript ]
{
}

ClientMethod btnChange(itemId) [ Language = javascript ]
{
}

ClientMethod clearItem(itemNumber) [ Language = javascript ]
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

ClientMethod validateKey(string) [ Language = javascript ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

}
