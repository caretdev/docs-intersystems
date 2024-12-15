/// A work list class that displays a list of filters within a User portal page.
Class %DeepSee.UserPortal.FilterList Extends %DeepSee.UserPortal.WorkList [ System = 4 ]
{

/// Icon (16x16) to display for this work list.
Parameter ICON = "deepsee/ds2_brightness_44.png";

/// Display type: "html" or "group".
Parameter TYPE = "group";

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

}
