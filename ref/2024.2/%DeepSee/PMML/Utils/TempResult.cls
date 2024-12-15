Class %DeepSee.PMML.Utils.TempResult Extends (%Persistent, Result) [ StorageStrategy = IRISTemp, System = 4 ]
{

ClassMethod GetNewTestId() As %Integer
{
}

ClassMethod GetCategoryPrecisionMetrics(pTestId As %Integer, pValue As %String, Output pPrecision As %Double, Output pRecall As %Double, pFMeasure As %Double, Output pTruePositive As %Double, Output pTrueNegative As %Double, Output pFalsePositive As %Double, Output pFalseNegative As %Double) As %Status
{
}

ClassMethod GetAggregatePrecisionMetrics(pTestId As %Integer, Output pMacroPrecision As %Double, Output pMicroPrecision As %Double, Output pMacroRecall As %Double, Output pMicroRecall As %Double, Output pMacroFMeasure As %Double, Output pMicroFMeasure As %Double) As %Status
{
}

}
