///
Class %ZEN.Report.reportLauncher Extends %CSP.Page [ Abstract, Deprecated, System = 4 ]
{

Parameter REPORTCLASS As STRING;

Parameter HOST As STRING = "localhost";

Parameter PORT As STRING = 57772;

Parameter URL As STRING = "csp/samples";

ClassMethod OnPage() As %Status
{
}

ClassMethod GenerateInputTextAreas() As %Status [ CodeMode = objectgenerator, Internal ]
{
}

}
