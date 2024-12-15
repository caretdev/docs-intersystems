/// This dialog lets the user reorder Dimensions or Measures.<br>
/// The cube's javascript DOM is passed in.
Class %DeepSee.UI.Dialog.ReorderItems Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Cube name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBENAME");

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

/// When we get here, we want to get the cube object from Architect as a native javaScript object
/// "opener" is a pointer to Architect
/// "opener.zenPage" is _Architect's_ DOM
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// User changed type to reorder. Show/hide associated list box.
ClientMethod changeType(type) [ Language = javascript ]
{
}

/// Return updated dataCube object to Architect.
ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// User clicked the Move Up/Down image. Move the field up or down one level in the List box. <br>
/// Switch data in dataCube as well. dir = "up" or "dn".
ClientMethod moveItem(dir) [ Language = javascript ]
{
}

/// Sort list box alphabetically.
ClientMethod doSort(dir) [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

}
