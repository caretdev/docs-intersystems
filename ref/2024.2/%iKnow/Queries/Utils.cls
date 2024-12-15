///  <p>Utility class grouping some utility and informative methods complementing the iKnow
///  Query APIs.</p>
Class %iKnow.Queries.Utils Extends %RegisteredObject [ Deprecated, System = 4 ]
{

///  <p>Returns a list of the columns returned by the query identified by the <var>queryClass</var> and
///  <var>queryName</var> parameters in the following format: columns(index) = $lb(name,type). If the
///  supplied parameters do not correspond to a known query, an error is returned.</p>
ClassMethod GetQueryResultColumns(queryClass As %String, queryName As %String, Output columns) As %Status
{
}

///  <p>Returns a displayable name for most query parameter names in use. If no more readable
///  form is available (for example if it's too trivial), <var>paramName</var> itself is returned.</p>
ClassMethod GetParameterDisplayName(paramName As %String) As %String
{
}

///  <p>Returns a list of the possible parameter values for a number of common query parameters in a
///  variable containing key-displayValue pairs: values(i) = $lb(key, value). The %Boolean returned
///  expresses whether this is a known parameter for which a meaningful list of values can be returned.</p>
///  <p>The optional <var>queryClass</var> and <var>queryName</var> parameters
///  will in some cases limit the possible values to the allowed ones supported by that particular query.</p>
///  <p><b>Note:</b> for the "pageSize" parameter, this method will return a limited number of possible values
///  to make this method more useful for internal purposes, but obviously any positive numeric value will do.</p>
ClassMethod GetParameterValues(paramName As %String, Output values, queryClass As %String = "", queryName As %String = "") As %Boolean
{
}

///  <p>This utility method executes a query of one of the primary iKnow query APIs (with the *API suffix),
///  as identified by <var>pQueryClass</var> and <var>pQueryName</var>, and writes the output as a
///  CSV file to <var>pFilename</var>. This will overwrite the output file if it already exists and
///  the output will include a header line containing column names and types.</p>
///  <p><var>pQueryParams...</var> is to contain all the parameters you would normally supply
///  to the query, except for its ByRef <var>result</var> parameter, which is taken care of by
///  this utility.</p>
///  <p>For example, a query defined as <pre>User.MyAPI.GetXByY(ByRef result, domainId As %Integer, x As %String,
///  y As %String)</pre> will be called as follows:</p>
///  <blockQuote><pre>do ##class(%iKnow.Queries.Utils).DumpQueryResult("C:\temp\myFile.csv",
///  "User.MyAPI", "GetXByY", domainId, x, y)</pre></blockQuote>
ClassMethod DumpQueryResult(pFilename As %String, pQueryClass As %String, pQueryName As %String, pQueryParams...) As %Status
{
}

}
