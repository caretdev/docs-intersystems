/// This is a simple box that dispays a title and an optional
/// subtitle. It is useful for adding a title to a group or menu.
Class %ZEN.Component.titleBox Extends component [ Deprecated, System = 3 ]
{

/// Title of this menu
Property title As %ZEN.Datatype.caption(ZENEXPRESSION = 1);

/// Optional subtitle of this menu
Property subtitle As %ZEN.Datatype.caption(ZENEXPRESSION = 1);

/// Optional style used for titleBox for this menu
Property titleStyle As %ZEN.Datatype.style;

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

}
