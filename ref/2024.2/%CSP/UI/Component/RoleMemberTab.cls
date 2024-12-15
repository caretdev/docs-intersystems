/// Component for the "Members" tab on the Role edit page
Class %CSP.UI.Component.RoleMemberTab Extends (%ZEN.Component.component, %CSP.UI.Component.SelectBoxUtils) [ System = 3 ]
{

Parameter DOMAIN [ Internal ] = "%Utility";

/// This is the XML namespace for this component.
Parameter NAMESPACE [ Internal ] = "http://www.intersystems.com/zen";

/// Name of the Application/User being edited
Property PID As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// If true, tables are for display only
Property readOnly As %ZEN.Datatype.boolean(ZENEXPRESSION = 1) [ InitialExpression = 0 ];

/// Users or Roles, depending on which radio button is selected
Property Type As %ZEN.Datatype.string;

Property EscalationOnly As %ZEN.Datatype.boolean;

/// This Style block contains component-specific CSS style definitions.
XData Style
{
}

ClientMethod doAssignRole(grantOption) [ Language = javascript ]
{
}

ClientMethod doChangeGrantOption(roleID, isChecked) [ Language = javascript ]
{
}

ClientMethod doRadioChange(newVal) [ Language = javascript ]
{
}

ClassMethod UpdateType(newVal As %String) As %Status [ ZenMethod ]
{
}

ClientMethod doRemoveRole(roleID, type) [ Language = javascript ]
{
}

ClientMethod doRemoveAllRoles() [ Language = javascript ]
{
}

/// Assign a User or Role to the Role or change the grant option on a User/Role's existing Role
/// PID: Role name
/// MemberList: Comma- or Asterisk-delimited list of users or roles to change
/// GrantOption: 1 - Add grant option, 0 - Remove grant option
Method AssignRoles(PID As %String, MemberList As %String, GrantOption As %Boolean) As %String [ ZenMethod ]
{
}

/// Remove all roles from a user
Method RemoveAllRoles(PID As %String) As %String [ ZenMethod ]
{
}

/// Remove a Role from a User
/// PID: Role name
/// Member: Role or user to remove
/// Type: "USER" or "ROLE"
Method RemoveRole(PID As %String, Member As %String, Type As %String) As %String [ ZenMethod ]
{
}

Method DrawSelectBoxes(ByRef ExcludedItems As %String) As %Status
{
}

/// The %DrawHTML method draws the initial HTML for this component.
Method %DrawHTML()
{
}

}
