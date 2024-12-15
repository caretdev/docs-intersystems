Class %SYS.AuditString Extends %Library.String [ System = 4 ]
{

/// Converts the %String value to valid XML, remove $c(1-31) except
/// for 13,10,9 (CR,LF,TAB)
ClassMethod LogicalToXSD(%val As %String) As %String [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

}
