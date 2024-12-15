/// Represents a specific variable to put in the watch list for debugging.
Class %Studio.WatchVariable Extends (%Persistent, %XML.Adaptor) [ System = 3 ]
{

Relationship Project As Project [ Cardinality = parent, Inverse = WatchVariables ];

Property Variable As %String(MAXLEN = 256, XMLPROJECTION = "attribute") [ SqlComputeCode = {set {*}=$replace({VariableESC},"__","||")}, SqlComputed, SqlComputeOnChange = VariableESC ];

Method VariableGet() As %String
{
}

Method VariableSet(val As %String) As %Status
{
}

Property VariableESC As %String(MAXLEN = 256) [ Private, SqlComputeCode = {set {*}=$replace({Variable},"||","__")}, SqlComputed, SqlComputeOnChange = Variable ];

Method VariableESCGet() As %String [ Private ]
{
}

Property Pane As %Integer(XMLPROJECTION = "attribute");

}
