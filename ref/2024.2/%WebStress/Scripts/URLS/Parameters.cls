Class %WebStress.Scripts.URLS.Parameters Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, Owner = {%Developer}, System = 4 ]
{

Parameter FileTimestamp = "60183,39714";

Relationship URL As %WebStress.Scripts.URLS [ Cardinality = parent, Inverse = Parameters ];

/// The name of the parameter
Property Key As %String(MAXLEN = 10000, TRUNCATE = 1) [ SqlFieldName = Param_Key ];

/// Defines whether the parameter is part of the URL itself or is contained in
/// the form data
Property Type As %String(DISPLAYLIST = ",Form Data,Parameter,Stream", TRUNCATE = 1, VALUELIST = ",F,P,S") [ InitialExpression = "P", SqlFieldName = Param_Type ];

/// The value associated with this key
Property Value As %String(MAXLEN = 10000, TRUNCATE = 1) [ SqlFieldName = Param_Value ];

/// A stream containing the posted file or stream (XML etc)
Property PostStream As %GlobalCharacterStream;

Property PostStreamBoundary As %String(TRUNCATE = 1);

Property PostStreamName As %String(TRUNCATE = 1);

Property PostStreamFilename As %String(TRUNCATE = 1);

Property PostStreamContentType As %String(TRUNCATE = 1);

Property ValueDecode As %String(MAXLEN = 10000, TRUNCATE = 1) [ Calculated, SqlComputeCode = {	new PID

Method ValueDecodeGet() As %String
{
}

}
