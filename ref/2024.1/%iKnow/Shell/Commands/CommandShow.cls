Class %iKnow.Shell.Commands.CommandShow Extends %iKnow.Shell.Command [ Deprecated ]
{

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

Method RunOption(shell As %iKnow.Shell, option As %String, ByRef arguments, parentCommand As %iKnow.Shell.Command = "") [ Private ]
{
}

Method RunOptionDevice(shell As %iKnow.Shell, parentCommand As %iKnow.Shell.Command = "") [ Private ]
{
}

Method RunOptionDomain(shell As %iKnow.Shell, parentCommand As %iKnow.Shell.Command = "") [ Private ]
{
}

Method RunOptionFilter(shell As %iKnow.Shell, parentCommand As %iKnow.Shell.Command = "") [ Private ]
{
}

Method RunOptionMetadata(shell As %iKnow.Shell, source As %String, field As %String = "", parentCommand As %iKnow.Shell.Command = "") [ Private ]
{
}

Method RunOptionPage(shell As %iKnow.Shell, parentCommand As %iKnow.Shell.Command = "") [ Private ]
{
}

Method RunOptionPagesize(shell As %iKnow.Shell, parentCommand As %iKnow.Shell.Command = "") [ Private ]
{
}

Method RunOptionSource(shell As %iKnow.Shell, source As %String, parentCommand As %iKnow.Shell.Command = "") [ Private ]
{
}

Method RunOptionSummary(shell As %iKnow.Shell, source As %String, length As %Integer, parentCommand As %iKnow.Shell.Command = "") [ Private ]
{
}

Method ParseArguments(shell As %iKnow.Shell, ByRef inArgs, ByRef outArgs) [ Private ]
{
}

}
