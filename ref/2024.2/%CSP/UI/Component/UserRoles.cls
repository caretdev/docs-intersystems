/// Component for editing roles on the User edit page
Class %CSP.UI.Component.UserRoles Extends %CSP.UI.Component.abstractRoleTab [ System = 3 ]
{

/// This Style block contains component-specific CSS style definitions.
XData Style
{
}

ClientMethod doAssignRole(type, grantOption) [ Language = javascript ]
{
}

ClientMethod doChangeGrantOption(roleID, isChecked) [ Language = javascript ]
{
}

/// Assign a Role to a User or change the grant option on a User's existing Role
/// PID: User name
/// RoleList: Comma-delimited list of roles to change
/// In case user selected roles longer than 32K,
/// we break them into 100 items a piece before sending to the server to avoid error
/// GrantOption: 1 - Add grant option, 0 - Remove grant option
Method AssignRoles(PID As %String, RoleList As %String, GrantOption As %Boolean, Type As %String) As %String [ ZenMethod ]
{
}

/// Remove all roles from a user
/// Create a comma-delimited list of the user's roles and send it to RemoveRole()
Method RemoveAllRoles(PID As %String, Type As %String) As %String [ ZenMethod ]
{
}

/// Remove a Role from a User
/// PID: User name
/// RoleList: Comma-delimited list of roles to remove
/// In case user selected roles longer than 32K,
/// we break them into 100 items a piece before sending to the server to avoid error
Method RemoveRole(PID As %String, RoleList As %String, Type As %String) As %String [ ZenMethod ]
{
}

/// The %DrawHTML method draws the initial HTML for this component.
Method %DrawHTML()
{
}

}
