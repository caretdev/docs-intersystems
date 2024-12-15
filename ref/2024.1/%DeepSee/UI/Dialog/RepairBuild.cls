/// This extends the build dialog to build the set of dependent cubes
/// needed to "Repair" a given cube's integrity
Class %DeepSee.UI.Dialog.RepairBuild Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Cube name.
Property cubeList As %ZEN.Datatype.string(ZENURL = "CUBELIST");

/// Group Name, for repair and group modes we can use
/// "pseudo group" 1
Property group As %ZEN.Datatype.string(ZENURL = "GROUP");

/// Mode options are:<br>
/// all - Initiate a full build of all groups in the registry<br>
/// group - Inititate a full build of a single group in the registry<br>
/// repair - Inititate a build of a single cube, along with the minimal set of cubes dependent upon it.
Property mode As %ZEN.Datatype.string(ZENURL = "MODE");

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

/// Lock the Build List button and display an error indicating there is a problem.
ClassMethod %LockWithError(pError) As %Status
{
}

/// Start the index build.
ClientMethod startBuild() [ Language = javascript ]
{
}

/// Start the repair build process in the background
/// Return the ID of the child process for tracking
/// Start the build cube process in the background.
/// Return the tracking id.
ClassMethod RepairBuild(pCubeName As %String) As %String [ ZenMethod ]
{
}

ClassMethod BuildOneRegisteredGroup(pGroupName As %String) As %String [ ZenMethod ]
{
}

ClassMethod BuildAllRegisteredGroups() As %String [ ZenMethod ]
{
}

/// Get the current status of the background task.
ClassMethod CheckCompletedStatus(pTrackingId As %String, pCubeName As %String) As %String [ ZenMethod ]
{
}

/// Update the status area.
ClientMethod updateStatus(cubeName, final) [ Language = javascript ]
{
}

ClientMethod cleanup() [ Language = javascript ]
{
}

ClassMethod ClearTracking(pTrackingId As %String) [ ZenMethod ]
{
}

}
