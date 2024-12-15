Class %ZEN.Report.Display.common Extends (%RegisteredObject, %XML.Adaptor) [ Deprecated, Inheritance = right, PropertyClass = %ZEN.Report.Display.displayParameters, System = 4 ]
{

/// XML namespace used for Zen Report display definitions.
Parameter NAMESPACE = "http://www.intersystems.com/zen/report/display";

/// If XMLFORMAT="Literal", then only support for literal format import and export is generated.<br>
Parameter XMLFORMAT = "Literal";

/// This is a unique identifier that is used to distinguish this object
/// from other objects within the same Zen Report Display.<br/>
/// You can find an object with a given id value using the node object's
/// <method>getComponentById</method> method.<br>
Property id As %ZEN.Datatype.string;

Property parent As %ZEN.Report.Display.node(XMLPROJECTION = "NONE") [ Internal ];

/// For components that are created as part of a composite(template component,
/// this is a link to the composite that contains this object.
/// Applications should not set this property.
Property composite As composite(XMLPROJECTION = "none") [ Final ];

/// Generate code needed to recreate this instance.
Method %GenerateCode(pCode As %CharacterStream, pLocalize As %Boolean, pCollection As %String, pLevel As %Integer = 1, pKey As %String = "", pParentVar As %String = "unknown", pReturnInParent As %Boolean = 0, pMode As %String = "report") [ CodeMode = objectgenerator, Internal ]
{
}

ClassMethod %QuoteValueEmbedded(pValue As %String)
{
}

/// Take a value string and return a quoted string.
ClassMethod %QuoteValue(pValue As %String) [ CodeMode = expression ]
{
}

/// Take a value string and return a quoted string wrapped within a
/// $$$Text macro.<br>
/// If value starts and ends with #( )#, then return an expression
ClassMethod %QuoteValueL10N(pValue As %String)
{
}

}
