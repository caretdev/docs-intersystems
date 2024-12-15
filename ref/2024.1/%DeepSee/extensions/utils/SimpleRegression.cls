Class %DeepSee.extensions.utils.SimpleRegression Extends %RegisteredObject [ System = 4 ]
{

Property N As %Integer;

Property Sx As %Double;

Property Sx2 As %Double;

Property Sy As %Double;

Property Sy2 As %Double;

Property Sxy As %Double;

Property Slope As %Double;

Property Intercept As %Double;

Property R As %Double;

Method %OnNew(initvalue As %RawString) As %Status [ Private, ServerOnly = 1 ]
{
}

Method add(x As %Double, y As %Double) As %Status
{
}

Method result(Output b As %Double, Output y0 As %Double, Output r As %Double) As %Status
{
}

ClassMethod test(b As %Double = 1, a As %Double = 3, e As %Double = 0.1, n As %Integer = 100) As %Status
{
}

}
