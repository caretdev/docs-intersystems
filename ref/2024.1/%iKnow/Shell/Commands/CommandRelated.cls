Class %iKnow.Shell.Commands.CommandRelated Extends %iKnow.Shell.Command [ Deprecated ]
{

Parameter TYPEENTITY = 1;

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

Method RunOptionEntity(shell As %iKnow.Shell, entity As %Integer, parentCommand As %iKnow.Shell.Command = "") [ Private ]
{
}

Method ParseArguments(shell As %iKnow.Shell, ByRef inArgs, ByRef outArgs, type As %Integer) [ Private ]
{
}

}