/// Represents a specific watchpoint for a Studio Project.
Class %Studio.WatchPoint Extends (%Persistent, %XML.Adaptor) [ System = 3 ]
{

Relationship Project As Project [ Cardinality = parent, Inverse = WatchPoints ];

Property Condition As %String(MAXLEN = 256, XMLPROJECTION = "attribute");

Property Variable As %String(MAXLEN = 64, XMLPROJECTION = "attribute");

}
