/// This dialog lets the user create or edit a DeepSee Book Cover filter definition.<br/>
Class %DeepSee.UI.Dialog.BookCoverBuilder Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Cover spec. This is the string that describes the book cover.
Property coverSpec As %ZEN.Datatype.string(ZENURL = "SPEC");

/// Which element is selected.
Property selectedElement As %ZEN.Datatype.string;

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

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// Add cover spec to undo buffer.
ClientMethod addUndo(spec) [ Language = javascript ]
{
}

/// Undo the last change.
ClientMethod undo() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.
ClientMethod ondialogFinish(action) [ Language = javascript ]
{
}

/// Get return value for dialog.
ClientMethod getDialogValue() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Adjust sizes components on the page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// Get list of book covers for JSON provider.
Method GetCoverList(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// Get list of available images.
ClientMethod getCoverImages() [ Language = javascript ]
{
}

/// Get list of images in the covers directory for JSON provider.
ClassMethod GetImageList(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// User click on element button.
ClientMethod selectElement(which, notify) [ Language = javascript ]
{
}

/// Return the physical directory in which cover images files are stored.
ClassMethod %GetImageDirectory() As %String [ CodeMode = expression ]
{
}

/// Get contents of toolbar.
ClientMethod getToolbarData() [ Language = javascript ]
{
}

/// Click on toolbar item.
ClientMethod toolbarSelect(key) [ Language = javascript ]
{
}

/// Change of toolbar value.
ClientMethod toolbarChange(key, value) [ Language = javascript ]
{
}

/// Show the upload image dialog.
ClientMethod uploadImage() [ Language = javascript ]
{
}

/// Clear the cover spec.
ClientMethod clearCover() [ Language = javascript ]
{
}

/// Return an object describing what to display for this level.
ClientMethod getContentForLevel(level, key, value) [ Language = javascript ]
{
}

/// Item selected in navigator.
ClientMethod selectItem(key, value) [ Language = javascript ]
{
}

/// Button clicked in navigator header.
ClientMethod headerButtonClick(key) [ Language = javascript ]
{
}

/// Button clicked in navigator close button.
ClientMethod closeButtonClick(key) [ Language = javascript ]
{
}

/// This is called when a data value within the navigator is changed.
/// <var>key</var> is the key for the item and <var>value</var> is the new value.
/// <var>final</var> is true if this is the final value (controls such as a slider
/// may provide intermediate values as well while the user is actively dragging it).
ClientMethod dataChange(key, value, final) [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

}
