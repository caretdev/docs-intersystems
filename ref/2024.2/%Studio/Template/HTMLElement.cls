/// Represents an HTML attribute associated with a specific HTML element.<BR>
/// See the <CLASS>Template.HTMLTag</CLASS> class for more information.
/// This class represents one of a list of HTML Tags.
/// This list is used by the Studio CSP Tag Template to provide a
/// list of HTML tags and their associated attributes (which as represented using
/// the related <CLASS>Template.HTMLAttribute</CLASS>).<BR>
/// The data for this set of objects is provided within an XML file,
/// htmltags.xml, that is provided in the dev/studio/templates directory.<BR>
/// To load this file:<BR>
/// <EXAMPLE>Do ##class(%Studio.Template.HTMLElement).Import()</EXAMPLE>
///
Class %Studio.Template.HTMLElement Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock, System = 3 ]
{

Parameter XMLNAME = "element";

/// Represents an HTML attribute associated with a specific HTML element.<BR>
/// See the <CLASS>Template.HTMLTag</CLASS> class for more information.
/// Represents an HTML attribute associated with a specific HTML element.<BR>
/// See the <CLASS>Template.HTMLTag</CLASS> class for more information.
/// Name of an HTML tag
Property Tag As %String(MAXLEN = 256, XMLNAME = "ename", XMLPROJECTION = "attribute");

/// Description of this element.
Property Description As %String(MAXLEN = 4000, XMLNAME = "description", XMLPROJECTION = "element");

/// Description of this element.
Property ShortDescription As %String(MAXLEN = 255, XMLNAME = "edesc", XMLPROJECTION = "attribute");

/// Is this an empty tag?
Property IsEmpty As %Boolean(XMLNAME = "empty", XMLPROJECTION = "attribute");

/// Attributes associated with this tag.
Relationship Attrs As HTMLAttribute(XMLITEMNAME = "attr", XMLNAME = "attrs") [ Cardinality = children, Inverse = Tag ];

/// Get list of attributes used by <var>tag</var>.<BR>
/// Returns true if the element is defined.
ClassMethod GetAttrs(tag As %String, ByRef attrs, ByRef cats) As %Boolean
{
}

/// Load an HTML tags definition file into the
/// HTMLTag extent
ClassMethod Import(filename As %String = "")
{
}

}
