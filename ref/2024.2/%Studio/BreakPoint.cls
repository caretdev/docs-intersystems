/// Represents a specific breakpoint for a Studio Project.
Class %Studio.BreakPoint Extends (%Persistent, %XML.Adaptor) [ System = 3 ]
{

Relationship Project As Project [ Cardinality = parent, Inverse = BreakPoints ];

Property Condition As %String(MAXLEN = 256, XMLPROJECTION = "attribute");

Property Routine As %String(MAXLEN = 64, XMLPROJECTION = "attribute");

Property Offset As %String(MAXLEN = 256, XMLPROJECTION = "attribute");

}
