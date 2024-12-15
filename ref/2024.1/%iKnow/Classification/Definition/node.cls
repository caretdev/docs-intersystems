Class %iKnow.Classification.Definition.node Extends (%RegisteredObject, %XML.Adaptor) [ Abstract, Deprecated, System = 3 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/iknow/classification";

Parameter XMLINCLUDEINGROUP = 1;

Parameter XMLIGNOREINVALIDATTRIBUTE = 0;

/// Some basic XML formatting
/// Note: this expects nicely formatted attribute content and no surprises in CDATA !
ClassMethod FormatXML(pString As %String) As %String [ Internal ]
{
}

}
