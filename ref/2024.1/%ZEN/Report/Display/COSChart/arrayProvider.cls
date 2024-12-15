Class %ZEN.Report.Display.COSChart.arrayProvider Extends (%ZEN.Report.Display.node, abstractController) [ Deprecated, System = 4 ]
{

/// The method called has three parameters<br/>
/// ByRef tParameters is parameters passed into the call back <br/>
/// Output tMetaData is a $LB list <br/>
/// Output tData is a $LB list <br/>
Property OnGetArray As %ZEN.Datatype.string;

Property parameters As %ZEN.Datatype.csv;

Method %DrawToHTML(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method GetArray()
{
}

Method getDimSize(dim) As %Integer
{
}

}
