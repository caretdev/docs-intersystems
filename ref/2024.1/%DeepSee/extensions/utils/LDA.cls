/// This code serves for calculating a linear discriminant analysis (LDA)
Class %DeepSee.extensions.utils.LDA Extends (%Library.Persistent, %DeepSee.extensions.BlackBox) [ System = 4 ]
{

Property GroupMean As %Double [ MultiDimensional ];

Property PooledInverseCovariance As %Double [ MultiDimensional ];

Property Probability As %Double [ MultiDimensional ];

Property Groups [ MultiDimensional ];

Property Confusion [ MultiDimensional ];

Property NGroups As %Integer;

Property Dim As %Integer;

Property UseMahalanobisDistance As %Boolean [ InitialExpression = 0 ];

Property Name As %String(MAXLEN = 256);

/// This callback method is invoked by the <METHOD>%Open</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being opened.
///
/// <P>If this method returns an error then the object will not be opened.
Method %OnOpen() As %Status [ Private, ServerOnly = 1 ]
{
}

Method Create(N As %Integer, M As %Integer, ByRef data As %Double, ByRef groups As %Integer, p As %Boolean) As %Status
{
}

Method getConfusionMatrixForTestSet(rs As %ResultSet, i1 As %Integer, dim As %Integer, Output C, Output r As %Double) As %Status
{
}

Method printConfusionMatrix(ByRef confusion = "") As %Status
{
}

Method getSensitivity(g, Output sc As %Status, ByRef confusion = "") As %Double
{
}

Method getSpecificity(g, Output sc As %Status, ByRef confusion = "") As %Double
{
}

Method GetDF(ByRef x, Output fv, verobse As %Boolean = 1) As %Status
{
}

Method getCovector(target As %String, Output V) As %Status
{
}

Method GetMajorContributors(targetPos As %String, targetNeg As %String, margin As %Double, Output listPos As %List, Output listNeg As %List) As %Status
{
}

Method predict(ByRef x, Output sc As %Status, Output maxf As %Double, Output f) As %String
{
}

Method GetMahalanobisDistance(ByRef x, Output fv, verobse As %Boolean = 0) As %Status
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
/// <p>It is passed the arguments provided in the %New call.
/// When customizing this method, override the arguments with whatever variables and types you expect to receive from %New().
/// For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:
/// <p>Method %OnNew(dob as %Date = "", name as %Name = "") as %Status
/// If instead of returning a %Status code this returns an oref and this oref is a subclass of the current
/// class then this oref will be the one returned to the caller of %New method.
Method %OnNew(name As %String) As %Status [ Private, ServerOnly = 1 ]
{
}

ClassMethod Test()
{
}

}
