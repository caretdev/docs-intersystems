Class %DeepSee.XMLA.EnumerationsRowset Extends %Persistent [ System = 4 ]
{

Property EnumName As String;

Property EnumDescription As String;

Property EnumType As String [ InitialExpression = "string" ];

Property ElementName As String;

Property ElementDescription As String;

Property ElementValue As String;

ClassMethod Populate()
{
}

}
