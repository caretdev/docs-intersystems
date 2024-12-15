/// This dialog lets the user save a DeepSee QualityMeasure definition.
Class %DeepSee.UI.Dialog.QualityMeasureSave Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Quality Measure name (catalog/set/id).
Property qmsrName As %ZEN.Datatype.string(ZENURL = "QMSR");

/// Quality Measure class name.
Property qmsrClass As %ZEN.Datatype.string(ZENURL = "QMSRCLASS");

/// New Quality Measure?.
Property isNew As %ZEN.Datatype.boolean(ZENURL = "NEW") [ InitialExpression = 0 ];

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

/// Test if the given quality measure already exists.
ClassMethod QMsrExists(pName As %String) As %Integer [ ZenMethod ]
{
}

/// Test if the given class name is valid.
ClassMethod IsValidClassName(pClassName As %String) As %Boolean [ ZenMethod ]
{
}

}
