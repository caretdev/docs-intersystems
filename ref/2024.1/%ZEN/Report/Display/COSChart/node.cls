Class %ZEN.Report.Display.COSChart.node Extends %RegisteredObject [ Deprecated, System = 4 ]
{

Property children As list Of %ZEN.Report.Display.COSChart.node;

Property attributes As %String [ Internal, MultiDimensional ];

Property name As %String;

Property content As %String;

Property id As %Integer;

Property parent As node;

Property displayed As %Boolean [ InitialExpression = 0 ];

Property %index As %Integer;

Property %angle As %Double;

Method setText(content As %String)
{
}

Method setAttribute(property As %String, value As %String)
{
}

Method getAttribute(property As %String)
{
}

Method createElementSVG(name As %String)
{
}

ClassMethod newElementSVG(name As %String)
{
}

Method appendChild(node As %ZEN.Report.Display.COSChart.node) As %Status
{
}

Method removeChild(node As %ZEN.Report.Display.COSChart.node)
{
}

Method insertBefore(newNode As node, existingNode As node)
{
}

Method clearChildren()
{
}

Method firstChild()
{
}

Method findSVGElement(id As %String)
{
}

Method Display(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream)
{
}

}
