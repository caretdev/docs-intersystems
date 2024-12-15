Class %Compiler.LG.JavaIndexDef Extends %SerialObject [ System = 4 ]
{

Property Condition As %RawString;

Property Data As %RawString;

Property Description As %RawString;

Property Extent As %Boolean [ InitialExpression = 0 ];

Property IdKey As %Boolean [ InitialExpression = 0 ];

Property Internal As %Boolean [ InitialExpression = 0 ];

Property Name As %String(MAXLEN = 512);

Property Parameters As array Of %RawString;

Property PrimaryKey As %Boolean [ InitialExpression = 0 ];

Property Properties As %RawString;

Property SequenceNumber As %Integer [ InitialExpression = 0 ];

Property SqlName As %RawString;

Property Type As %RawString;

Property Unique As %Boolean [ InitialExpression = 0, SqlFieldName = _Unique ];

Property ObjectName As %RawString;

Property Runnable As %Integer [ InitialExpression = 0 ];

Property IndexColumns As %List;

Property ColumnNumberList As list Of %Integer;

}
