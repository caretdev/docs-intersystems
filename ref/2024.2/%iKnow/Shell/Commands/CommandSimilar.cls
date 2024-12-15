Class %iKnow.Shell.Commands.CommandSimilar Extends %iKnow.Shell.Command [ Deprecated ]
{

Parameter TYPEENTITY = 1;

Parameter TYPESOURCE = 2;

Method GetCommandName() As %String
{
}

Method Type(option As %String) As %String
{
}

Method Describe(shell As %iKnow.Shell, ByRef description)
{
}

Method DescribeOptions(shell As %iKnow.Shell, ByRef description) [ Private ]
{
}

Method Run(shell As %iKnow.Shell, ByRef args, parentCommand As %iKnow.Shell.Command = "")
{
}

Method RunOptionEntity(shell As %iKnow.Shell, entity As %String, parentCommand As %iKnow.Shell.Command = "") [ Private ]
{
}

Method RunOptionSource(shell As %iKnow.Shell, source As %Integer, parentCommand As %iKnow.Shell.Command = "") [ Private ]
{
}

Method ParseArguments(shell As %iKnow.Shell, ByRef inArgs, ByRef outArgs, type As %Integer) [ Private ]
{
}

}
