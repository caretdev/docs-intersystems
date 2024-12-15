Class %DeepSee.PMML.Definition.Util.InlineTable Extends TableIdentifier [ System = 3 ]
{

Property Content As %Stream.TmpCharacter(CONTENT = "MIXED", XMLPROJECTION = "CONTENT");

/// Returns the contents of this Inline Table as two-dimensional array:
/// 		pRows(rowNumber, columnName) = columnValue
Method %GetRows(Output pRows) As %Status
{
}

/// Adds node-specific validation checks
Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

}
