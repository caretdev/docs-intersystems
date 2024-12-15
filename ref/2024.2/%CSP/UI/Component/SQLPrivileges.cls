/// Component for editing SQL Privileges on the User and Role edit pages
Class %CSP.UI.Component.SQLPrivileges Extends (%ZEN.Component.component, %CSP.UI.Component.SelectBoxUtils) [ System = 3 ]
{

Parameter DOMAIN [ Internal ] = "%Utility";

/// This is the XML namespace for this component.
Parameter NAMESPACE [ Internal ] = "http://www.intersystems.com/zen";

Property namespace As %ZEN.Datatype.string;

Property nsDisplayList As %ZEN.Datatype.string;

Property nsValueList As %ZEN.Datatype.string;

/// Name of the User/Role being edited
Property PID As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// If true, tables are for display only
Property readOnly As %ZEN.Datatype.boolean(ZENEXPRESSION = 1) [ InitialExpression = 0 ];

/// This Style block contains component-specific CSS style definitions.
XData Style
{
}

ClientMethod changeNS(sel) [ Language = javascript ]
{
}

ClientMethod doAssignPriv(grantOption) [ Language = javascript ]
{
}

ClientMethod doChangeGrantOption(priv, isChecked) [ Language = javascript ]
{
}

ClientMethod doRemovePriv(priv) [ Language = javascript ]
{
}

ClientMethod doRemoveAllPrivs() [ Language = javascript ]
{
}

/// Assign a Role to a User or change the grant option on a User's existing Role
/// PID: User name
/// RoleList: Comma-delimited list of roles to change
/// In case user selected roles longer than 32K,
/// we break them into 100 items a piece before sending to the server to avoid error
/// GrantOption: 1 - Add grant option, 0 - Remove grant option
Method AssignPrivs(PID As %String, Privs As %String, GrantOption As %Boolean, Namespace As %String) As %String [ ZenMethod ]
{
}

/// Remove all roles from a user
/// Create a comma-delimited list of the user's roles and send it to RemoveRole()
Method RemoveAllPrivs(PID As %String, Namespace As %String) As %String [ ZenMethod ]
{
}

/// Remove a Role from a User
/// PID: User name
/// RoleList: Comma-delimited list of roles to remove
/// In case user selected roles longer than 32K,
/// we break them into 100 items a piece before sending to the server to avoid error
Method RemovePriv(PID As %String, Privs As %String, Namespace As %String) As %String [ ZenMethod ]
{
}

/// The %DrawHTML method draws the initial HTML for this component.
Method %DrawHTML()
{
}

}
