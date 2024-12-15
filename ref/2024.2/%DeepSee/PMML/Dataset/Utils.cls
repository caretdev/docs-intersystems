Class %DeepSee.PMML.Dataset.Utils [ System = 4 ]
{

/// Calculates the Pearson chi-squared test for the two-dimensional contingency table defined by
/// <var>pField1</var> and <var>pField2</var>. If the probability of this value is low (&lt;0.05),
/// <var>pField1</var> and <var>pField2</var> can be considered independent of one another.
/// http://en.wikipedia.org/wiki/Pearson%27s_chi-squared_test
ClassMethod GetChiSquared(pDataset As %DeepSee.PMML.Dataset, pField1 As %String, pField2 As %String, Output pChiSquared As %Numeric, Output pProbability As %Numeric, ByRef pFilters, pYatesCorrection As %Boolean = 0) As %Status
{
}

}
