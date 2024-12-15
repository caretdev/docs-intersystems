/// Specifies the section of the report display that will be used as the body
/// of the report.
Class %ZEN.Report.Display.body Extends category [ Deprecated, System = 4 ]
{

Property foStyle As %ZEN.Datatype.string;

/// Boolean flag to block lst page reference creation
Property blockZENLastPage As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// XPath value to use when generating the last page reference<br>
/// Would normally be used in coordination with an item special that includes an xpath, for instance,
/// <item style="text-align:right" special="page-number-of-with-xpath" field="SalesRep/@name"   />
Property genLastPageIdOn As %ZEN.Datatype.string;

/// Append group id to %ZENLastPage for uniqueness<br>
/// id of body is appended.  Unlike genLastPageIdOn does not use xpath.
Property appendIdToZenLastPage As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean = 0) As %Status
{
}

}
