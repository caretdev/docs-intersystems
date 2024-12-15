/// Aggregate for the percentile of a set of numerical data.
Class %ZEN.Report.Aggregate.Percentile Extends %ZEN.Report.CustomAggregate [ Deprecated, System = 4 ]
{

/// Algorithm taken from Head First Statistics by Dawn Griffiths, page 99
/// XML namespace used for Zen Report definitions.
Parameter NAMESPACE = "http://www.intersystems.com/zen/report/definition";

Parameter XMLIGNORENULL = 1;

/// By setting this to 0, we disallow use of invalid attribute names in Zen Report XML documents.
Parameter XMLIGNOREINVALIDATTRIBUTE = 0;

/// If XMLFORMAT="Literal", then only support for literal format import and export is generated.<br>
Parameter XMLFORMAT = "Literal";

Parameter XMLNAME = "percentile";

/// Array of processed values
Property RawValues [ MultiDimensional ];

Property Values As array Of %Integer;

/// Number of values processed
Property Count As %Integer [ InitialExpression = 0 ];

Property percentile As %ZEN.Datatype.float;

/// Processes each new Values.
Method ProcessValue(pValue As %Float) As %Status
{
}

/// Returns the percentile. Returns "" for an empty data set.
Method GetResult() As %String
{
}

}
