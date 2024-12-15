/// Represents an item within a Studio Project.
Class %Studio.ProjectItem Extends (%Persistent, %XML.Adaptor) [ System = 3 ]
{

Relationship Project As Project [ Cardinality = parent, Inverse = Items ];

/// The name of the project item. For example if the class is called 'csp.loop'
/// then this is 'csp.loop'. If the routine is 'TEST.INT' this is 'TEST.INT'.
Property Name As %String(MAXLEN = 512, XMLNAME = "name", XMLPROJECTION = "attribute") [ Required ];

/// Type of item in this project. Can be one of MAC, CSP, CLS, GBL, PKG, DIR
/// or a user defined type.
/// Note that MAC covers all routines types, such as INT, INC, BAS, MVB, MVI and MAC
/// routines, the type of routine is put in the Name, such as 'TEST.INT'.
Property Type As %String(XMLNAME = "type", XMLPROJECTION = "attribute") [ Required ];

Method %OnBeforeSave(insert As %Boolean) As %Status [ Private ]
{
}

Method %OnAddToSaveSet(depth As %Integer = 3, insert As %Integer = 0, callcount As %Integer = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

}
