/// %CSP.UI.Component.ApplicationRoles
Class %CSP.UI.Component.ApplicationRoles Extends %CSP.UI.Component.abstractRoleTab [ System = 3 ]
{

/// This Style block contains component-specific CSS style definitions.
XData Style
{
}

ClientMethod doAssignRole(type, grantOption) [ Language = javascript ]
{
}

/// Save both kind of Roles:
/// 1) Roles that will always be added to application
///    NewMatchElement passed is in delimited by ":"
///    MatchRole = ""
/// 2) Matching roles with their associated target roles
///    NewMatchElement passed in is delimited by ":"
///    MatchRole = the MatchRole user selected
Method AssignRole(PID As %String, NewMatchElement As %String, MatchRole As %String) As %String [ ZenMethod ]
{
}

/// Remove All Roles that will always be added to application if Type = "ApplicationRole"
/// Remove All MatchRoles if Type = "MatchRole"
Method RemoveAllRoles(PID As %String, Type As %String) As %String [ ZenMethod ]
{
}

/// Remove a Role from a application
/// ElementID is ",TargetRole" or "MatchRole,TargetRole"
Method RemoveRole(PID As %String, ElementId As %String) As %String [ ZenMethod ]
{
}

///   Return roles that should be loaded
ClassMethod GetRoles(Roles As %String, Output NullRoles As %String, Output MatchRoles As %String) As %Status
{
}

/// The %DrawHTML method draws the initial HTML for this component.
Method %DrawHTML()
{
}

}
