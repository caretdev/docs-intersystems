/// used by dsFormulaParser
Class %ZEN.Report.Display.COSChart.parseTreeNode Extends %RegisteredObject [ Deprecated ]
{

Property children As array Of %ZEN.Report.Display.COSChart.parseTreeNode;

Property type As %String;

Property value As %String;

Property inParens As %Boolean;

Method %OnNew(type, value) As %Status
{
}

Method dumpTree()
{
}

}
