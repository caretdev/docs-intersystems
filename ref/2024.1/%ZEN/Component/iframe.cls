/// This is a simple wrapper for the HTML IFRAME component.
Class %ZEN.Component.iframe Extends component [ Deprecated, System = 3 ]
{

/// URI of frame content.
Property src As %ZEN.Datatype.uri;

/// Link to the long description of the iframe.
Property longdesc As %ZEN.Datatype.uri;

/// The align value used for the iframe.
Property frameAlign As %ZEN.Datatype.align;

/// The frameborder value used for the iframe.
Property frameBorder As %ZEN.Datatype.boolean;

/// The scrolling value used for the iframe.
Property scrolling As %ZEN.Datatype.string(VALUELIST = ",auto,yes,no");

Method %DrawHTML()
{
}

/// Get the zenPage object for the document within the iframe
/// (if there is one).
ClientMethod getPage() [ Language = javascript ]
{
}

/// Get the html document object within the iframe
/// (if there is one).
ClientMethod getDocument() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
