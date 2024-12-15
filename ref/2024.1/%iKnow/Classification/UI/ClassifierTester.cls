Class %iKnow.Classification.UI.ClassifierTester Extends (%DeepSee.PMML.UI.AbstractTester, TestUtils) [ Deprecated, System = 4 ]
{

Parameter JSINCLUDES = "zenMenusSMP.js";

Parameter DOMAIN = "%iKnow";

Parameter PAGENAME = "Text Classifier Tester";

Property domain As %ZEN.Datatype.integer;

Property testset As %ZEN.Datatype.string;

Property categoryField As %ZEN.Datatype.string;

Property dataSourceType As %ZEN.Datatype.string [ InitialExpression = "SQL" ];

Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

XData dataSourcePane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData rowLevelTracePane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod openClassifier() [ Language = javascript ]
{
}

ClientMethod showTestPage() [ Language = javascript ]
{
}

Method TestModel() As %String [ ZenMethod ]
{
}

ClassMethod TestClassifierAsync(pDefinition As %String, pDomainId As %Integer, pSpec As %String, pMetaField As %String = "") As %Status [ Internal ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnGetPageName() As %String
{
}

/// Get the title string to add to the locator row.
/// This should be implemented in a subclass.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

Method %GetLocatorLinks(Output pLink) As %Status
{
}

ClientMethod showText(id) [ Language = javascript ]
{
}

Method DrawRowID(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

Method GetClassifierClass() As %String [ Private ]
{
}

Method GetDetailInput(Output pText As %String, Output pConfig As %String, Output pDomainId As %Integer, Output pSrcId As %Integer) As %Status [ Private ]
{
}

Method GetExportPackageName() As %String [ ZenMethod ]
{
}

XData Style
{
}

ClientMethod onRefresh() [ Language = javascript ]
{
}

Method CheckDataSourceHasIdentifier() As %Boolean [ Internal, ZenMethod ]
{
}

Method OnBuildRowDetailsQuery(Output pSQL As %String) As %Status [ Private ]
{
}

ClientMethod changeDomain(domain) [ Language = javascript ]
{
}

/// called when selDSDomain changes
Method OnChangeDomain(pDomainId As %Integer, pAlertOnError As %Boolean = 1) As %Status [ ZenMethod ]
{
}

ClientMethod changeFilter(field) [ Language = javascript ]
{
}

Method OnChangeFilter(pField As %String) As %Status [ ZenMethod ]
{
}

ClientMethod checkDataSource() [ Language = javascript ]
{
}

Method CheckTestFilter(pField As %String, pOperator As %String, pValue As %String) As %Status [ ZenMethod ]
{
}

}
