/// This dialog adds a new item (such as a dimension) to a DeepSee cube definition.<br>
/// Can always add a new Measure;dataDimension;timeDimension<br>
/// But if you want to add a hierarchy, you need to first click a dimension or hierarchy,<br>
/// and if you want to add a new level, you need to first click a hierarchy or level;
Class %DeepSee.UI.Dialog.CubeAddItem Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Cube name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Item type.
Property itemType As %ZEN.Datatype.string(ZENURL = "TYPE") [ InitialExpression = "measure" ];

/// SELECTEDCLASS
Property selectedClass As %ZEN.Datatype.string(ZENURL = "SELECTEDCLASS");

Property newItemCounter As %ZEN.Datatype.string(ZENURL = "NEWITEMCOUNTER");

Property userChangedName As %ZEN.Datatype.boolean [ InitialExpression = "0" ];

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

ClientMethod changeType() [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

ClientMethod loadDimension() [ Language = javascript ]
{
}

ClientMethod selectedDim(ctrl) [ Language = javascript ]
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

/// Return cube list for SharesFrom cube drop-down
Method LoadSharesFromCubes() As %String
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
