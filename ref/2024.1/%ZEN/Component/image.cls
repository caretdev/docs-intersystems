/// Simple image control.<br>
/// This can be used to display an image within a page or it can
/// serve as a button by specifying an onclick event.<br>
/// There is no submitted value associated with this control.<br>
/// There are several different ways to specify the image to display:
/// <ol>
/// <li>If provided, <property>src</property> is the URI of the image to display.</li>
/// <li>If provided, <property>streamId</property> is the OID value for a binary stream object containing the image.
/// This OID value will be encrypted and the image will be served via the CSP stream server.</li>
/// <li>If provided, <property>value</property> is an encrypted stream OID value for a binary stream object containing the image.
/// The image will be served via the CSP stream server. This is used when the
/// image is bound to a property within a dataController that contains binary stream data.</li>
/// </ol>
/// Note that the <property>controlClass</property> does not apply to the image component.
Class %ZEN.Component.image Extends control [ Deprecated, System = 3 ]
{

/// URI of image to display.
Property src As %ZEN.Datatype.uri;

/// Alternate text for this image; This is used for the alt attribute
/// of the HTML img element used for this component.
Property alt As %ZEN.Datatype.caption;

/// If defined, URI of image to display when this image is disabled.
Property srcDisabled As %ZEN.Datatype.uri;

/// If defined, URI of image to display when a value for this image is missing;
/// This is used when this image is bound to a property of a dataController and
/// there is no value for the bound property.
Property srcMissing As %ZEN.Datatype.uri;

/// If defined, this is the stream id of a binary stream object on the server
/// that will provide data for this image. This supercedes <property>src</property>
/// if present.
Property streamId As %ZEN.Datatype.string(ZENENCRYPT = 1);

/// If defined, this is an optional text value associated with this image.
/// By default, this is used as a value when this image is the source of
/// a drag and drop operation.
Property text As %ZEN.Datatype.string;

XData Style
{
}

Method %DrawHTML()
{
}

Method %SetDefaultValues()
{
}

/// User click on image; Invoke callback if button is enabled.
ClientMethod imageClick(evt) [ Language = javascript ]
{
}

/// Mouse down handler.
ClientMethod itemMouseDown(evt) [ Internal, Language = javascript ]
{
}

/// Mouse up handler.
ClientMethod itemMouseUp(evt) [ Internal, Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Override default drag behavior.
ClientMethod getDragData(dragData) [ Language = javascript ]
{
}

}
