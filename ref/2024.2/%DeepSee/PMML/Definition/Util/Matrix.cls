Class %DeepSee.PMML.Definition.Util.Matrix Extends %DeepSee.PMML.Definition.node [ System = 3 ]
{

Property kind As %DeepSee.PMML.Datatype.String(VALUELIST = ",diagnoal,symmetric,any", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "any" ];

Property nbRows As %DeepSee.PMML.Datatype.IntNumber(XMLPROJECTION = "ATTRIBUTE");

Property nbCols As %DeepSee.PMML.Datatype.IntNumber(XMLPROJECTION = "ATTRIBUTE");

Property Arrays As list Of Array(XMLNAME = "Array", XMLPROJECTION = "ELEMENT");

Property diagDefault As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE");

Property offDiagDefault As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE");

Property Cells As list Of MatCell(XMLNAME = "MatCell", XMLPROJECTION = "ELEMENT");

/// Adds node-specific validation checks
Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

/// Returns the values of this matrix as a two-dimensional array, where pArray(i,j) contains
/// the value of the j'th column on the i'th row of the matrix. the top node of pArray contains
/// $lb(nbOfRows, nbOfColumns)
Method ValuesAsArray(Output pArray) As %Status
{
}

}
