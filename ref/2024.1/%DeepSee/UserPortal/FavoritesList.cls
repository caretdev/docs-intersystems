/// A work list class that provides a list of favorite items within a User portal page.
Class %DeepSee.UserPortal.FavoritesList Extends %DeepSee.UserPortal.WorkList [ System = 4 ]
{

/// Icon (16x16) to display for this work list.
Parameter ICON = "deepsee/ds2_star_44.png";

/// Return the localized display name for this work list.
ClassMethod %GetName() As %String
{
}

/// Return the localized title for this work list.
ClassMethod %GetTitle() As %String
{
}

/// Return an optional tool tip to display.
ClassMethod %GetToolTip() As %String
{
}

/// Draw the contents of the worklist.<br/>
/// <var>pPanelNo</var> is the worklist panel number.
ClassMethod %DrawWorkList(pPanelNo As %Integer) As %Status
{
}

}