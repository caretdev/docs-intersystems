/// The <b>%CSP.Rule</b> class is the super class of all rule
/// generated classes that represent elements within the DOM model.
Class %CSP.Rule Extends %CSP.AbstractAtom [ System = 3 ]
{

/// A string specifying the rule family.
Property Family As %String;

/// A string specifying the rule name.
Property Rule As %String;

/// An array of strings containing the HTML properties associated with
/// this tag. The array is indexed by property name and contains property values.
Property TagAttributes As array Of %String;

/// A boolean value specifying whether this element has an end tag.
Property HasEndTag As %Boolean [ InitialExpression = 0 ];

/// A boolean value specifying whether this element is self-closed.
Property Closed As %Boolean [ InitialExpression = 0 ];

/// A integer value specifying how tags are to be handled within
/// the body content of this tag:
/// TextOnly=0  Normal parsing of tags
/// TextOnly=1  Tags are ignored in the body content and
/// always treated as text.
/// TextOnly=2  Tags are processed only if a matching rule is found.
/// Otherwise the tag is treated as text.
Property TextOnly As %Integer [ InitialExpression = 0 ];

/// If not "", this rule will start a new section named NewSection.
Property NewSection As %String;

/// This attribute speficies the line number on which this tag starts.
Property LineNumber As %Integer;

/// A list of any sub-items contained within this element.
Property Children As list Of %CSP.AbstractAtom;

/// This attribute always returns "".  Is it to be called by parent classes' InnerText() method.
Property Text As %String;

/// New method can set TagName property.
Method %OnNew(initval As %String = "") As %Status
{
}

/// Generate internal name to be used for a new attribute
/// whose name is given by a CSP expression.
Method NewExprName() As %String [ Internal, Private ]
{
}

/// Set the HTML attribute <var>name</var> for this element to <var>value</var>.
Method InitAttribute(name As %String, value As %String, order As %Integer = 0, quote As %String = "")
{
}

/// Set the HTML attribute <var>name</var> for this element to <var>value</var>.
Method SetAttribute(name As %String, value As %String)
{
}

/// Get the value of the HTML attribute <var>name</var> for this element.
/// The value will have ##( )## and ##' '## resolved.
Method GetAttribute(name As %String, default As %String = "") As %String
{
}

/// Get the value of the HTML attribute <var>name</var> for this element.
/// Return the value as a quoted string with #()#, ##( )## and ##' '## resolved.
Method QuoteAttribute(name As %String, default As %String = "") As %String
{
}

/// Return all the parameters in a ordered array.
Method GetAttributesOrdered(ByRef paramsordered)
{
}

/// Indicate if HTML attribute <var>name</var> is defined.
Method IsDefined(name As %String) As %Boolean
{
}

/// Indicate if HTML attribute <var>name</var> has a value.
Method HasValue(name As %String) As %Boolean
{
}

/// Add an child atom to this element.
Method AddChildElement(atom As %CSP.AbstractAtom) As %Status
{
}

/// Validate that rule attributes are valid.
Method ValidateTag() As %Status
{
}

/// Get the children of this tag as text
Method InnerText() As %String
{
}

/// Exposes default rendering of tag without needing to use ##super.
/// Writes code into the routine builder object that will do the
/// default rendering for a begin tag.
Method RenderDefaultStartTag() As %Status
{
}

/// Exposes default rendering of tag without needing to use ##super.
/// Writes code into the routine builder object that will do the
/// default rendering for an end tag.
Method RenderDefaultEndTag() As %Status
{
}

/// Render a single attribute of this CSP tag.
Method RenderOneAttribute(name, value, quote, sep) As %String [ Internal, Private ]
{
}

/// Default OnMatch method for rules is to do nothing.
/// OnMatch may be overridden by user rules.
ClassMethod OnMatch(rule As %CSP.Rule) As %Status
{
}

/// Default rendering of the start tag is to just continue
/// RenderStartTag may be overridden by user rules.
Method RenderStartTag() As %Status
{
}

/// Default rendering of the end tag is a no operation
/// RenderEndTag may be overridden by user rules.
Method RenderEndTag() As %Status
{
}

}
