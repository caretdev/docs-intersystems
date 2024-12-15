/// Superclass for "assign role" components for User and Application edit pages
Class %CSP.UI.Component.abstractRoleTab Extends (%ZEN.Component.component, %CSP.UI.Component.SelectBoxUtils) [ System = 3 ]
{

Parameter DOMAIN [ Internal ] = "%Utility";

/// This is the XML namespace for this component.
Parameter NAMESPACE [ Internal ] = "http://www.intersystems.com/zen";

/// Name of the Application/User being edited
Property PID As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// If true, tables are for display only
Property readOnly As %ZEN.Datatype.boolean(ZENEXPRESSION = 1) [ InitialExpression = 0 ];

/// Type of roles this component affects
Property type As %ZEN.Datatype.string(VALUELIST = ",ApplicationRole,MatchRole,UserRole,UserEscalationRole,RoleRole");

/// This Style block contains component-specific CSS style definitions.
XData Style
{
}

ClientMethod doRemoveRole(roleID) [ Language = javascript ]
{
}

ClientMethod doRemoveAllRoles(type) [ Language = javascript ]
{
}

Method DrawSelectBoxes(ByRef ExcludedItems As %String, Type As %String = "") As %Status
{
}

}
