/// File upload control.<br>
/// This is a simple wrapper around the HTML input=file control.
Class %ZEN.Component.fileUpload Extends control [ Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "fileUpload";

/// Size of the input area for this control.
Property size As %ZEN.Datatype.integer(MINVAL = 0);

/// Optional comma-separated list of MIME types that can be uploaded.
/// This is used as the ACCEPT attribute for the HTML INPUT element used
/// for this component.
Property accept As %ZEN.Datatype.csv;

/// Allow multiple fileuploads at once. Default is false. Requires HTML5 to work.
Property multiple As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Maximum number of characters allowed within the control.
Property maxlength As %ZEN.Datatype.integer(MINVAL = 0);

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
