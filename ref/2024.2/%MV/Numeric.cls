/// Data type class to handle the MultiValue masked decimal (MD) conversion codes
Class %MV.Numeric Extends %Numeric [ ClientDataType = NUMERIC, OdbcType = NUMERIC, Not ProcedureBlock, SqlCategory = NUMERIC, System = 2 ]
{

/// The number of decimal place to shift (as with the MultiValue MD conversion)
Parameter DESCALE;

ClassMethod LogicalToStorage(%val As %MV.Numeric) As %String [ CodeMode = generator ]
{
}

ClassMethod StorageToLogical(%val As %String) As %MV.Numeric [ CodeMode = generator ]
{
}

}
