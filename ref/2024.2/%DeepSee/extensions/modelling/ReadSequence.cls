Class %DeepSee.extensions.modelling.ReadSequence Extends Base [ System = 4 ]
{

Property config As %DeepSee.extensions.modelling.conf.Sequence;

Property RS As %IResultSet;

Method setConfig(conf As %DeepSee.extensions.modelling.conf.Sequence) As %Status
{
}

Method setResultSet(rs As %IResultSet) As %Status
{
}

Method populate() As %Status
{
}

Method PrepareRS(attrs As %List, Output idCol As %String, Output attrCol As %String, Output vCol As %String, Output outColIn As %String, Output outColOut As %String) As %Status
{
}

Method newRow(id As %String, Output row) As %Status
{
}

Method getFk(table As %String, col As %String, attrs As %List, Output map) As %Status
{
}

}
