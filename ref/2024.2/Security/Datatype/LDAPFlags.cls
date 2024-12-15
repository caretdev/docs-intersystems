Class Security.Datatype.LDAPFlags Extends %Integer [ OdbcType = VARCHAR, System = 4 ]
{

Parameter DOMAIN = "%Utility";

/// Convert internal LDAPFlags bit string to external name.
/// <br>
ClassMethod LogicalToDisplay(LDAPFlags As %Integer) As %String [ CodeMode = objectgenerator, Internal ]
{
}

/// Convert internal LDAPFlags bit string to external name.
/// <br>
ClassMethod LogicalToOdbc(LDAPFlags As %Integer) As %String [ Internal ]
{
}

}
