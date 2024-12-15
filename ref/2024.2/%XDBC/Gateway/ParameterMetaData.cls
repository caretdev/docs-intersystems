/// FOR INTERNAL USE - do not invoke directly
Class %XDBC.Gateway.ParameterMetaData Extends %RegisteredObject [ System = 4 ]
{

Parameter PARAMETERMODEUNKNOWN As Integer = 0;

Parameter PARAMETERMODEIN As Integer = 1;

Parameter PARAMETERMODEINOUT As Integer = 2;

Parameter PARAMETERMODEOUT As Integer = 4;

Property %metadata As %List [ Internal, MultiDimensional, Private ];

Method %OnNew(metadata As %List) As %Status
{
}

Method GetParameterCount() As %Integer
{
}

Method IsNullable(param As %Integer) As %String(MAXLEN=220)
{
}

Method GetPrecision(param As %Integer) As %Integer
{
}

Method GetScale(param As %Integer) As %Integer
{
}

Method GetParameterType(param As %Integer) As %Integer
{
}

Method GetParameterTypeName(param As %Integer) As %String(MAXLEN=220)
{
}

Method GetParameterMode(param As %Integer) As %String(MAXLEN=220)
{
}

}
