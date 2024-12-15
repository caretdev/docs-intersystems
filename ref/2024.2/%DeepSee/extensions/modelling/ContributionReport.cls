Class %DeepSee.extensions.modelling.ContributionReport Extends (%RegisteredObject, Base) [ System = 4 ]
{

Property config As %DeepSee.extensions.modelling.conf.Report;

Property file As %File;

Method setConfig(conf As %DeepSee.extensions.modelling.conf.Report) As %Status
{
}

Method apply() As %Status
{
}

Method report() As %Status
{
}

Method TextReport(attributes As %String, listPos As %List, listNeg As %List) As %Status
{
}

Method PrintList(keywords As %String, list As %List, Output Top) As %Status
{
}

Method getAttributes(Output values As %String) As %Status
{
}

ClassMethod outputText(i As %Integer, k As %Integer, maxlen As %Integer, keyword As %String, w As %Double, ByRef D) As %Status
{
}

ClassMethod outputCSV(file As %File, i As %Integer, maxlen As %Integer, keyword As %String, w As %Double, ByRef D) As %Status
{
}

ClassMethod openHTML(file As %File, conf As %DeepSee.extensions.iKnow.conf.Config) As %Status
{
}

ClassMethod writeHTMLTopTable(file As %File, ByRef Top) As %Status
{
}

ClassMethod writeHTMLTopTableCell(file As %File, ByRef Top) As %Status
{
}

ClassMethod writeHTMLTableLegend(file As %File, target As %String) As %Status
{
}

ClassMethod writeHTMLTableHeader(file As %File, title As %String, target As %String) As %Status
{
}

ClassMethod closeHTML(file As %File) As %Status
{
}

Method outputHTML(i As %Integer, maxlen As %Integer, keyword As %String, w As %Double, ByRef D) As %Status
{
}

Method GetFilteredData(entity As %String, Output D) As %Status
{
}

}
