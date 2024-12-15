Class %DeepSee.PMML.UI.ModelTester Extends %DeepSee.PMML.UI.AbstractTester [ System = 4 ]
{

Parameter JSINCLUDES = "zenMenusSMP.js";

Parameter PAGENAME = "PMML Model Tester";

Parameter DOCBOOKID = "APMML_testpage";

Property modelName As %ZEN.Datatype.string(ZENURL = "MODEL");

Property dataSource As %ZEN.Datatype.string(ZENURL = "DATASOURCE");

Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

XData dataSourcePane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod openModel() [ Language = javascript ]
{
}

ClientMethod selectModel(model) [ Language = javascript ]
{
}

ClientMethod showTestPage() [ Language = javascript ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod checkDataSource() [ Language = javascript ]
{
}

Method TestModel() As %String [ ZenMethod ]
{
}

Method CheckDataSourceHasIdentifier() As %Boolean [ Internal, ZenMethod ]
{
}

ClassMethod TestModelAsync(pDefinition As %String, pModelName As %String, pDataSource As %String, pSQL As %String) As %Status [ Internal ]
{
}

Method OnSelectModel() As %String [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

Method DrawRowID(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

Method GetExportPackageName() As %String [ ZenMethod ]
{
}

Method OnBuildRowDetailsQuery(Output pSQL As %String) As %Status [ Private ]
{
}

ClientMethod selectDataSource(ds) [ Language = javascript ]
{
}

XData moreContentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod newModel() [ Language = javascript ]
{
}

ClientMethod onUpload() [ Language = javascript ]
{
}

ClassMethod %OnSubmit(pSubmit As %ZEN.Submit) As %Status
{
}

Method DrawRecordDetails(pSeed As %String) As %Status
{
}

XData Style
{
}

}
