Class %iKnow.Shell.Command Extends %RegisteredObject [ Deprecated ]
{

Parameter COMMAND = "Command";

Parameter QUERYENTITY = "QueryEntity";

Parameter QUERYCRC = "QueryCrc";

Parameter QUERYCC = "QueryCc";

Parameter QUERYPATH = "QueryPath";

Parameter QUERYSENTENCE = "QuerySentence";

Parameter QUERYSOURCE = "QuerySource";

Property ChildResult [ MultiDimensional ];

Method GetCommandName() As %String
{
}

Method Type(option As %String) As %String
{
}

Method Describe(shell As %iKnow.Shell, ByRef description)
{
}

Method Run(shell As %iKnow.Shell, ByRef args, parentCommand As %iKnow.Shell.Command = "")
{
}

Method SetResult(ByRef result) [ Final ]
{
}

Method RTToHeader(rtDesc As %String) As %List [ Final ]
{
}

}
