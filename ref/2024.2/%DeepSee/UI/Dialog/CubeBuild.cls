/// This dialog builds facts and indices for a DeepSee cube and displays the output.
/// !!! % complete, view log file, show errors, make non-modal!!!
Class %DeepSee.UI.Dialog.CubeBuild Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Cube class name.
Property cubeClass As %ZEN.Datatype.string(ZENURL = "CLASS");

/// Cube name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// The maximum number of records for be built defined for the selected cube
Property maxFacts As %ZEN.Datatype.string(ZENURL = "maxFacts");

/// A list may be supplied to indicate that a known list of dimensions has been modified. This can be used to pre-set
/// selected build lists.
Property factsModifiedList As %ZEN.Datatype.string(ZENURL = "MODIFIED");

/// The maximum number of records to be built for the the selected cube in this session (overrides maxFacts)
Property TempMaxFacts As %ZEN.Datatype.string;

/// Id used to track progress.
Property trackingId As %ZEN.Datatype.string;

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

/// Fill in the details of the update checklists based on the current cube definition.
Method %SetCheckLists(pDefaultSelected = 0) As %Status
{
}

/// Start the index build.
ClientMethod startBuild() [ Language = javascript ]
{
}

/// Start the build cube process in the background.
/// Return the tracking id.
ClassMethod BuildCube(pCubeName As %String, pTempMaxFacts As %Integer, pFactList As %String = "") As %String [ ZenMethod ]
{
}

/// Get the current status of the background task.
ClassMethod CheckStatus(pCubeName As %String) As %String [ ZenMethod ]
{
}

/// Formats the date and time for the previous build
ClassMethod FormatPrevBuild(pCubeName As %String) As %String [ ZenMethod ]
{
}

/// Update the status area.
ClientMethod updateStatus() [ Language = javascript ]
{
}

/// Toggle the display of the fact checklists.
ClientMethod toggleDimSelection(setting) [ Language = javascript ]
{
}

/// Set the disable value for all build selection controls in the dialog.
ClientMethod setDimSelectionDisabled(value) [ Language = javascript ]
{
}

/// Pull the values from the checklists to assemble a factList selection.
ClientMethod getFactList() [ Language = javascript ]
{
}

/// Set every checkBox in the checkLists to <var>value</var>.
ClientMethod setAllCheckLists(value) [ Language = javascript ]
{
}

/// Look at the current selection and make sure the Build button is only enabled if something is selected.
ClientMethod changeDimSelection() [ Language = javascript ]
{
}

}
