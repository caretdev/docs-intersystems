/// Abstract base class for various Document meta-data objects.<br/>
Class %Document.Model.Schema.abstractNode Extends (%RegisteredObject, %XML.Adaptor) [ Abstract, System = 3 ]
{

/// Do not include *this* class in the XML groupings.
Parameter XMLINCLUDEINGROUP = 0;

Parameter XMLIGNORENULL = "inputonly";

Parameter XMLIGNOREINVALIDATTRIBUTE = 0;

/// Generate code needed to recreate this instance.
Method %GenerateCode(pCode As %CharacterStream, pLocalize As %Boolean, pCollection As %String, pLevel As %Integer = 1, pKey As %String = "", pParentVar As %String = "unknown") [ CodeMode = objectgenerator, Internal ]
{
}

/// Take a value string and return a quoted string.
ClassMethod %QuoteValue(pValue As %String) As %String [ CodeMode = expression ]
{
}

/// Take a $List value and return an express to construct it.
ClassMethod %QuoteList(pValue As %List) As %String
{
}

/// Take a value string and return a quoted string wrapped within a
/// $$$Text macro.<br>
/// If value starts and ends with #( )#, then return an expression
ClassMethod %QuoteValueL10N(pValue As %String) As %String
{
}

Method %ConstructClone(deep As %Boolean = 0, ByRef cloned As %String, location As %String) As %RegisteredObject
{
}

Method %NormalizeObject() As %Status
{
}

Method %AddToSaveSet(depth As %Integer = 3, refresh As %Integer = 0, norecurseon As %String = "") As %Status
{
}

Method %RemoveFromSaveSet() As %Status
{
}

Method %ValidateObject(force As %Integer = 0) As %Status
{
}

Method %BindExport(dev As %String, ByRef Seen As %String, RegisterOref As %Boolean, AllowedDepth As %Integer, AllowedCapacity As %Integer) As %Status
{
}

ClassMethod XMLDTD(top As %String, format As %String, input As %Boolean, ByRef dtdlist) As %Status
{
}

/// Apply local overrides of values for this object.<br/>
/// This looks at the ^DeepSee.Override global and applies values to properties
/// within the model object.
Method %ApplyOverrides(pGLVN As %String) [ CodeMode = objectgenerator, Internal ]
{
}

}
