/// This dialog lets you select an item (such as a dimension) from base cube and add to a DeepSee subject area definition.<br>
/// Can always add a new Measure;dataDimension;timeDimension<br>
/// But if you want to add a hierarchy, you need to first click a dimension or hierarchy,<br>
/// and if you want to add a new level, you need to first click a hierarchy or level;
Class %DeepSee.UI.Dialog.SubjectAreaAddItem Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter CSSINCLUDES = "/csp/sys/intersystems.css";

Parameter APPLYBUTTON = 0;

/// Cube name.
Property subjectAreaName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Base Cube name.
Property baseCube As %ZEN.Datatype.string(ZENURL = "BASECUBE");

/// Item type.
Property itemType As %ZEN.Datatype.string;

/// SELECTEDCLASS
Property selectedClass As %ZEN.Datatype.string(ZENURL = "SELECTEDCLASS");

Property numRows As %ZEN.Datatype.integer [ InitialExpression = "0" ];

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

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

ClientMethod timeout() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// For each item that is already on the Subject Area Architect, make it selected an disable the checkbox<br>
/// This method is called each time changeType is accessed.
ClientMethod checkSelected() [ Language = javascript ]
{
}

/// Check measure or listing to see if it is already selected. If yes, make it selected an disable the checkbox
ClientMethod markSelected(item) [ Language = javascript ]
{
}

/// Check Dimension to see if it is already selected. If yes, make it selected an disable the checkbox
ClientMethod markDimSelected(dim) [ Language = javascript ]
{
}

/// Check Dimension and Hier to see if it is already selected. If yes, make it selected an disable the checkbox
ClientMethod markHierSelected(dim, hier) [ Language = javascript ]
{
}

/// Check Dimension&Hier&Level to see if it is already selected. If yes, make it selected an disable the checkbox
ClientMethod markLevelSelected(dim, hier, level) [ Language = javascript ]
{
}

/// Select/Unselect all checkboxes
ClientMethod toggleCheckboxes() [ Language = javascript ]
{
}

ClientMethod getCBValues() [ Language = javascript ]
{
}

/// Start action and server method will pump out result.
Method DrawTable(seed As %String) As %Status
{
}

Method DrawMeasures(baseCube As %String) As %Integer
{
}

Method DrawDimensions(baseCube As %String) As %Integer
{
}

Method DrawListings(baseCube As %String) As %Integer
{
}

}
