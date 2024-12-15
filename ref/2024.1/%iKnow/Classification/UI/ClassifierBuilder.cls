Class %iKnow.Classification.UI.ClassifierBuilder Extends %DeepSee.UI.standardPage [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%iKnow";

Parameter RESOURCE = "%Development";

Parameter PAGENAME = "Text Classifier Builder";

Property definitionClass As %ZEN.Datatype.string(ZENURL = "CLASS");

Property domain As %ZEN.Datatype.integer;

Property trainingSet As %ZEN.Datatype.string;

Property classifier As %iKnow.Classification.Definition.Classifier [ Private ];

Property treeID As %ZEN.Datatype.integer [ Internal ];

Property pmml As %ZEN.Datatype.string(MAXLEN = "");

Property hideAdvanced As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Property optimizerTask As %ZEN.Datatype.integer [ InitialExpression = 1 ];

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Returned value is used as leaf of breadcrumb
Method %OnGetPageName() As %String
{
}

/// Builds breadcrumb links
Method %GetLocatorLinks(Output pLink) As %Status
{
}

Method %OnGetTitle() As %String
{
}

Method LoadDataSourceFields() As %Status [ ZenMethod ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod confirmLeave() [ Language = javascript ]
{
}

ClientMethod cmdOpen() [ Language = javascript ]
{
}

ClientMethod cmdNew() [ Language = javascript ]
{
}

ClientMethod cmdEditDataSource() [ Language = javascript ]
{
}

ClientMethod cmdBuild() [ Language = javascript ]
{
}

ClientMethod cmdDelete() [ Language = javascript ]
{
}

Method DeleteClassifier() As %Status [ ZenMethod ]
{
}

ClientMethod cmdSave() [ Language = javascript ]
{
}

ClientMethod saveAs(classname) [ Language = javascript ]
{
}

ClientMethod cmdTest() [ Language = javascript ]
{
}

ClientMethod cmdOptimize() [ Language = javascript ]
{
}

ClientMethod cmdExport() [ Language = javascript ]
{
}

ClientMethod refresh() [ Language = javascript ]
{
}

ClientMethod refreshButtons() [ Language = javascript ]
{
}

ClientMethod updateBackgroundInfo(label, show) [ Language = javascript ]
{
}

ClientMethod changeDomain(domain) [ Language = javascript ]
{
}

/// called when selNewDomain changes
Method OnChangeDomain(pDomainId As %Integer) As %Status [ ZenMethod ]
{
}

ClientMethod changeFilter(domain, field, suffix) [ Language = javascript ]
{
}

Method OnChangeFilter(pDomainId As %Integer, pField As %String, pSuffix As %String) As %Status [ ZenMethod ]
{
}

ClientMethod changeFilterOperator(operator) [ Language = javascript ]
{
}

ClientMethod updateModelProp(prop, value) [ Language = javascript ]
{
}

ClientMethod updateMethod(method) [ Language = javascript ]
{
}

Method SetClassname(pClassname As %String) As %String [ ZenMethod ]
{
}

ClientMethod updateClassifier() [ Language = javascript ]
{
}

/// called when btnNewCreate is clicked
ClientMethod createClassifier() [ Language = javascript ]
{
}

ClassMethod SaveClassifierStatic(pDefinitionClass As %String, pXML As %String) As %Status [ Internal ]
{
}

ClassMethod GetBuilderStatic(Output pBuilder As %iKnow.Classification.IKnowBuilder, pXML As %String) As %Status [ Internal, Private ]
{
}

Method OnGetClassifierObject(ByRef Params, Output pObject As %RegisteredObject) As %Status
{
}

Method SubmitClassifier(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, Output pResponseObject As %RegisteredObject) As %Status
{
}

Method GetAsTree(pClassifier As %iKnow.Classification.Definition.Classifier, Output pTree) As %Status [ Private ]
{
}

Method OnGetTree(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

ClientMethod clickTreeNode(tree) [ Language = javascript ]
{
}

ClientMethod dragTreeNode(tree, dragData) [ Language = javascript ]
{
}

ClientMethod updateRuleTerms(model, removedIndex, toIndex) [ Internal, Language = javascript ]
{
}

ClientMethod updateRuleTermsPredicate(predicate, removedIndex, toIndex, parent, parentIdx) [ Internal, Language = javascript ]
{
}

ClientMethod exploreDelayed(id, string) [ Language = javascript ]
{
}

ClientMethod explore(id, string) [ Language = javascript ]
{
}

ClientMethod exploreNext(id, shift) [ Language = javascript ]
{
}

ClientMethod exploreTop(metric) [ Language = javascript ]
{
}

ClientMethod exploreSQL(sql) [ Language = javascript ]
{
}

Method UpdateSQL(pSQL As %String) As %String [ ZenMethod ]
{
}

Method DrawCheckbox(pSeed As %String) As %Status
{
}

ClientMethod toggleElement(id, value) [ Language = javascript ]
{
}

ClientMethod addElements(id, type, individual) [ Language = javascript ]
{
}

ClientMethod addTermEntries(entries, term) [ Internal, Language = javascript, Private ]
{
}

ClientMethod termInArray(termArray, term) [ Internal, Language = javascript ]
{
}

ClientMethod add(string, type, individual) [ Language = javascript ]
{
}

ClientMethod showEditTerm() [ Language = javascript ]
{
}

ClientMethod editTerm() [ Language = javascript ]
{
}

ClientMethod removeTerm(termPos) [ Language = javascript ]
{
}

XData Style
{
}

ClassMethod %OnFinishBackgroundTask(pTaskID As %String)
{
}

ClassMethod %OnMonitorBackgroundTask(pTaskID As %String, pStatus As %String, pPercentComplete As %Float)
{
}

ClassMethod %ShowBackgroundTaskOutput(pTaskID As %String)
{
}

Method Export(pClassname As %String, pOverwrite As %Boolean) As %Status [ ZenMethod ]
{
}

ClassMethod ExportStatic(pDefinitionClass As %String, pDataClass As %String, pOverwrite As %Boolean) As %Status [ Internal ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Get the title string to add to the locator row.
/// This should be implemented in a subclass.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

Method ExecuteResultSet(pRS As %Library.ResultSet, ByRef tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

ClientMethod onunloadHandler() [ Language = javascript ]
{
}

/// Cleanup method
Method OnUnload() As %Status [ Internal, ZenMethod ]
{
}

ClientMethod startOptimizer() [ Language = javascript ]
{
}

Method Optimize(pMetric As %String, pSteps As %Integer, pRemoveRatio As %Double) As %Status [ ZenMethod ]
{
}

ClassMethod OptimizeStatic(pDefinitionClass As %String, pMetric As %String, pSteps As %Integer, pRemoveRatio As %Double, pOptimizerTaskId As %Integer) As %Status [ Internal ]
{
}

ClientMethod editFallback(ruleIndex) [ Language = javascript ]
{
}

ClientMethod renderRule(ruleIndex) [ Language = javascript ]
{
}

ClientMethod generateRuleNodes(svg, pred, level, x, predicateId) [ Language = javascript ]
{
}

ClientMethod getStringForTerm(model, termIndex) [ Language = javascript ]
{
}

ClientMethod drawConnector(svg, fromNode, toNode) [ Language = javascript ]
{
}

ClientMethod dropRule(ruleIndex) [ Language = javascript ]
{
}

ClientMethod showEditRule(ruleIndex) [ Language = javascript ]
{
}

ClientMethod editRule(category, score = 1, fallback = 0) [ Language = javascript ]
{
}

ClientMethod getPredicateForId(model, predId) [ Language = javascript ]
{
}

ClientMethod showEditPredicate(predId, show) [ Language = javascript ]
{
}

ClientMethod editPredicate(end) [ Language = javascript ]
{
}

ClientMethod editPredicateAdd() [ Language = javascript ]
{
}

ClientMethod editPredicateDrop() [ Language = javascript ]
{
}

ClientMethod selectPredicateType(predicate, type) [ Language = javascript ]
{
}

Method PopulateTerms(pMetric As %String, pCount As %Integer) As %Status [ ZenMethod ]
{
}

Method GenerateRuleSet() As %Status [ ZenMethod ]
{
}

///  Defines SVG-specific CSS style sheet used by an object/component.
XData SVGStyle
{
}

Method OnDrawRibbon() As %Status
{
}

ClientMethod toggleAdvancedMode(hide) [ Language = javascript ]
{
}

Method DrawSelectAllNone(pSeed As %String) As %Status
{
}

ClientMethod selectNoTerms(type) [ Language = javascript ]
{
}

ClientMethod selectAllTerms(type) [ Language = javascript ]
{
}

Method DrawOptimizerTerms(pSeed As %String) As %Status
{
}

Method OptimizeLoadTerms(pMode As %String, pSpec As %String) As %Status [ ZenMethod ]
{
}

}
