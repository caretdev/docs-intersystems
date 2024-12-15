/// fieldSet group. Enclose a set of controls within an
/// HTML FieldSet.
Class %ZEN.Component.fieldSet Extends group [ Deprecated, System = 3 ]
{

Parameter DEFAULTGROUPCLASS = "fieldset";

Parameter DEFAULTLAYOUT = "vertical";

/// Legend of the fieldSet. This is the caption displayed
/// for the field set.
Property legend As %ZEN.Datatype.caption(ZENEXPRESSION = 1);

/// Title of the fieldSet. This is a popup message displayed
/// for the field set.
Property title As %ZEN.Datatype.caption(ZENEXPRESSION = 1);

XData Style
{
}

Method %DrawHTML()
{
}

/// Notifation that our disabled state has changed.
ClientMethod ondisabledHandler() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
