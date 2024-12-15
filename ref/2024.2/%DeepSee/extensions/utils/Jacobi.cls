Class %DeepSee.extensions.utils.Jacobi Extends %RegisteredObject [ System = 4 ]
{

Property s As %Double;

Property c As %Double;

Property n As %Integer;

Property state As %Integer;

Property SS [ MultiDimensional ];

Property e [ MultiDimensional ];

Property EE [ MultiDimensional ];

Property changed [ MultiDimensional ];

Property verbose As %Boolean [ InitialExpression = 0 ];

/// Index of largest off-diagonal element in row k
Method maxind(k As %Integer) As %Integer
{
}

/// Update ek and its status
Method update(k As %Integer, t As %Double) As %Status
{
}

Method rotate(k As %Integer, l As %Integer, i As %Integer, j As %Integer) As %Status
{
}

ClassMethod process(n As %Integer, ByRef S, Output e, Output E) As %Status
{
}

Method execute() As %Status
{
}

ClassMethod test(option As %Integer = 0) As %Status
{
}

ClassMethod test2() As %Status
{
}

ClassMethod solveSystemSym(n As %Integer, ByRef A, ByRef B, ByRef X, verbose As %Boolean = 0) As %Status
{
}

ClassMethod solveSystemIter(n As %Integer, ByRef A, ByRef B, ByRef X, verbose As %Boolean = 0) As %Status
{
}

ClassMethod testSolve() As %Status
{
}

ClassMethod testSolve1() As %Status
{
}

ClassMethod testSolve2() As %Status
{
}

}
