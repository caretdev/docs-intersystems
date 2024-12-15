Class %DeepSee.extensions.components.PCA Extends (%Library.Persistent, %DeepSee.extensions.BlackBox) [ System = 4 ]
{

Property Table As %String;

Property UseSQLUPdate As %Boolean [ InitialExpression = 0 ];

Property InputColumnList As %List;

Property OutputColumnList As %List;

Property Mean [ MultiDimensional ];

Property Loadings [ MultiDimensional ];

Property InputStdDev [ MultiDimensional ];

Property OutputStdDev [ MultiDimensional ];

Property Count As %Integer;

Property Verbose As %Boolean;

Property UseZScores As %Boolean;

/// This callback method is invoked by the <METHOD>%Open</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being opened.
///
/// <P>If this method returns an error then the object will not be opened.
Method %OnOpen() As %Status [ Private, ServerOnly = 1 ]
{
}

Method CalcCovMatrix(Output cov) As %Status
{
}

Method CalcMean() As %Status
{
}

Method GetTransformationMatrix(Output W) As %Status
{
}

Method GetEigenVector(i As %Integer) As %Double
{
}

Method GetAxisMajorContributors(j As %Integer, margin As %Double, Output listPos As %List, Output listNeg As %List) As %Status
{
}

Method GetVectorMajorContributors(ByRef V, margin As %Double, Output listPos As %List, Output listNeg As %List) As %Status
{
}

Method setComponents() As %Status
{
}

Method setComponentsCOS(ByRef W) As %Status
{
}

Method GetEffectiveDimensionality(marginalRate As %Double = 0.9, Output sc As %Status) As %Double
{
}

Method GetModifiedEffectiveDimensionality(marginalRate As %Double = 0.9, Q As %Integer = "", Output sc As %Status) As %Double
{
}

Method execute() As %Status
{
}

Method print() As %Status
{
}

ClassMethod process(table As %String, input As %String, out As %String, Output result As PCA, useZScores As %Boolean = 1, verbose As %Boolean = 0) As %Status
{
}

Method setOutputColumns(out As %String) As %Status
{
}

}
