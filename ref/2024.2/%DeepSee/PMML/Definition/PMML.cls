Class %DeepSee.PMML.Definition.PMML Extends node [ System = 4 ]
{

Property version As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE", XSDTYPE = "xs:string") [ Required ];

Property Header As Header(XMLPROJECTION = "ELEMENT");

Property MiningBuildTask As list Of MiningBuildTask(XMLPROJECTION = "ELEMENT");

Property DataDictionary As DataDictionary(XMLPROJECTION = "ELEMENT") [ Required ];

Property TransformationDictionary As TransformationDictionary(XMLPROJECTION = "ELEMENT");

Property Models As list Of %DeepSee.PMML.Definition.Models.AbstractModel(XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");

Property Extension As list Of %DeepSee.PMML.Definition.Extension(XMLPROJECTION = "ELEMENT");

/// Adds node-specific validation checks
Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

ClassMethod %Create(pVersion As %String, pDescription As %String = "", pApplication As %String = "") As PMML
{
}

Method %ToString(Output pString As %String, pFormatted As %Boolean = 1) As %Status
{
}

ClassMethod %FromString(Output pModel As %DeepSee.PMML.Definition.PMML, pString As %String) As %Status
{
}

Method %SaveToClass(pClassName As %String, pOverwriteExisting As %Boolean = 1, pVerbose As %Boolean = 0) As %Status
{
}

/// Some basic XML formatting
/// Note: this expects nicely formatted attribute content and no surprises in CDATA !
ClassMethod FormatXML(pString As %String) As %String [ Internal, Private ]
{
}

}
