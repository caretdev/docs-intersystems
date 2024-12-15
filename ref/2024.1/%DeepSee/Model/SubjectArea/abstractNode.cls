/// Abstract base class for various DeepSee SubjectArea meta-data objects.<br/>
Class %DeepSee.Model.SubjectArea.abstractNode Extends (%RegisteredObject, %XML.Adaptor) [ Abstract, Inheritance = right, System = 3 ]
{

/// Do not include *this* class in the XML groupings.
Parameter XMLINCLUDEINGROUP = 0;

Parameter XMLIGNORENULL = "inputonly";

Parameter XMLIGNOREINVALIDATTRIBUTE = 0;

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

}
