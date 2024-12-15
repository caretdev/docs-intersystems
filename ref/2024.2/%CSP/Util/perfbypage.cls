Class %CSP.Util.perfbypage Extends %ZEN.Component.page [ System = 4 ]
{

Parameter PAGETIMING = 1;

Parameter TIMINGSLOTS = 48;

Parameter ENCODED = 1;

Parameter RESOURCE = "%Development";

Property page As %String(MAXLEN = 256);

Property date As %String(MAXLEN = 256) [ InitialExpression = {$zdate($h,3)} ];

///
/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

///
/// This XML block defines the contents of this page.
XData Contents
{
}

ClientMethod backoneday() [ Language = javascript ]
{
}

ClientMethod forwardoneday() [ Language = javascript ]
{
}

ClientMethod getgraph1(serie As %Integer, size As %Integer) [ Language = javascript ]
{
}

ClientMethod getgraph2(serie As %Integer, size As %Integer) [ Language = javascript ]
{
}

ClientMethod getgraph3(serie As %Integer, size As %Integer) [ Language = javascript ]
{
}

ClientMethod getgraph4(serie As %Integer, size As %Integer) [ Language = javascript ]
{
}

ClientMethod getgraph5(serie As %Integer, size As %Integer) [ Language = javascript ]
{
}

ClientMethod getgraph6(serie As %Integer, size As %Integer) [ Language = javascript ]
{
}

ClassMethod GetGraph(measure As %String, pagename As %String, date As %String) As %ListOfDataTypes [ ZenMethod ]
{
}

///
/// This callback is called after the server-side page
///
/// object and all of its children are created.<br>
///
/// Subclasses can override this to add, remove, or modify
///
/// items within the page object model, or to provide values
///
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

}
