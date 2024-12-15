/// iKnow Architect helps users create %iKnow.AbstractDomain by manipulating
/// %iKnow.DomainDefinition. To create a iKnow Domain, users could manually
/// create a %iKnow.DomainDefintion class and encapsulate the all kinds of domain
/// settins into the XData section of %iKnow.DomainDefintion in Studio.
/// By %iKnow.UI.Architect, this GUI interface would create the corresponding
/// %iKnow.DomainDefinition based on the users input
Class %iKnow.UI.Architect Extends %iKnow.UI.standardPage [ Deprecated, System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Domain Architect";

/// If this page has multiple views, this is its initial display mode.
Parameter DOCBOOKID;

Property %domain As %iKnow.Model.domain;

Property domainName As %ZEN.Datatype.string;

Property domainDefName As %ZEN.Datatype.string(ZENURL = "DOMAIN");

Property domainId As %String;

Property PageURL As %String;

Parameter DOMAIN = "%iKnow";

Parameter RESOURCE = "%Development";

Property currItem As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// Type of the current selected item.
Property currItemType As %ZEN.Datatype.string;

Property lblExpression As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("(expression)")} ];

Property lblDataLevel As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("Level (type=data)")} ];

Property lblTimeLevel As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("Level (type=time)")} ];

Property lblAgeLevel As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("Level (type=age)")} ];

Property hlpRemove As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Remove this item")} ];

Property hlpMoveUp As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Move this item up")} ];

Property hlpMoveDown As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Move this item down")} ];

Property hlpShowHide As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Hide or show the properties box")} ];

Property msgInvalid As %ZEN.Datatype.caption [ InitialExpression = {$$$FormatText($$$Text("Please click [Open] to select a %1 Domain."),$$$PRODUCT5)} ];

Property msgOpenModel As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Please open a model definition first.")} ];

Property hlpDropTooltip As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Create new %1")} ];

Property manualInput As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Manually Input Group Field")} ];

/// If true, the settings area (property sheet) is visible.
Property settingsExpanded As %Boolean [ InitialExpression = 1, Internal ];

/// Whether to expand all elements under each type. When user clicks Collapse All then this is set to 0. At end of renderTable it is set to 2.
Property expandAll As %Integer [ InitialExpression = 1 ];

/// This Style block contains page-specific CSS style definitions.
XData CSS3Style
{
}

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod renderDictionaryFormat(item) [ Language = javascript ]
{
}

/// Get the (localized) title string for the page.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) name of the page.
Method %OnGetPageName() As %String
{
}

/// Get the product name for the page.
Method %OnGetProductName() As %String
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Draw the contents of the Table Header (the region between the diagram and the table).
Method DrawTableHeader(pSeed As %String) As %Status
{
}

/// Remember the current state in the undo buffer.
ClientMethod addUndoAction() [ Language = javascript ]
{
}

ClientMethod clearUndoAction() [ Language = javascript ]
{
}

ClientMethod alreadySaved() [ Language = javascript ]
{
}

ClientMethod undo() [ Language = javascript ]
{
}

/// return the instance of %iKnow.Model.domain if its corresponding domain definition once compiled successfully
/// Otherwise, we try to load the xdata from domain definition directly.
ClassMethod %GetModel(pDomainDefName As %String, Output pStatus As %Status) As %iKnow.Model.domain
{
}

Method OnGetModelDomain(ByRef pParameters, Output pObject As %RegisteredObject) As %Status [ ZenMethod ]
{
}

Method OnSubmitModelDomain(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, ByRef pResponseObject As %RegisteredObject) As %Status
{
}

/// Adjust sizes of components on the page.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// Adjust sizes of components on the page.
ClientMethod adjustSizes() [ Language = javascript ]
{
}

/// Update the contents of the model table.
ClientMethod updateTable() [ Language = javascript ]
{
}

ClientMethod getModelDomainObject() [ Language = javascript ]
{
}

/// Create a clone of the given object.
ClientMethod cloneObject(obj, clone) [ Language = javascript ]
{
}

ClientMethod declareMetadata() [ Language = javascript ]
{
}

ClientMethod findMetadataIndex() [ Language = javascript ]
{
}

/// Update the contents of the model table.
ClientMethod renderTable() [ Language = javascript ]
{
}

ClientMethod addIKnowElementWrapper(type, disclosure) [ Language = javascript ]
{
}

ClientMethod addIKnowElement(type, parent) [ Language = javascript ]
{
}

ClientMethod createModelMetadata() [ Language = javascript ]
{
}

Method getMDOPEQUAL() As %String [ ZenMethod ]
{
}

Method getMDDTSTRING() As %String [ ZenMethod ]
{
}

ClientMethod createModelMetadataField() [ Language = javascript ]
{
}

ClientMethod createModelData() [ Language = javascript ]
{
}

ClientMethod createModelProcessor() [ Language = javascript ]
{
}

ClientMethod createModelConverter() [ Language = javascript ]
{
}

ClientMethod getMetadataMapColumns() [ Language = javascript ]
{
}

ClientMethod getMetadataMapFields() [ Language = javascript ]
{
}

/// maintain a stack which holds the left brace or quotes,
/// when meeting comman(sep), if the size of stack > 0, then this comman is invalid.
ClientMethod metadataColParser(cols, sep) As %String [ Language = javascript ]
{
}

ClientMethod updateUserDictionary(json) [ Language = javascript ]
{
}

ClientMethod getUserDictionary() [ Language = javascript ]
{
}

ClientMethod refreshMetadataMap() [ Language = javascript ]
{
}

Method ClearMetadataMap() As %Status [ ZenMethod ]
{
}

ClientMethod toggleCustomizableField(field) [ Language = javascript ]
{
}

ClientMethod revertCustomizableField(field) [ Language = javascript ]
{
}

ClientMethod toggleOrApply(field) [ Language = javascript ]
{
}

ClientMethod adjustGroupFieldValue(groupField, val) [ Language = javascript ]
{
}

Method CreateMetadataMapField(pIndex As %Integer, pField As %String, pValueList As %String) As %Status [ ZenMethod ]
{
}

ClientMethod createModelList(option) [ Language = javascript ]
{
}

ClientMethod parseQuery(query) [ Language = javascript ]
{
}

ClientMethod createModelParameter() [ Language = javascript ]
{
}

ClientMethod createMatching() [ Language = javascript ]
{
}

ClientMethod createDictionary() [ Language = javascript ]
{
}

ClientMethod createDictionaryItem() [ Language = javascript ]
{
}

ClientMethod createDictionaryTerm() [ Language = javascript ]
{
}

ClientMethod createModelConfig(configName) [ Language = javascript ]
{
}

ClientMethod associateConfigToDomain(domain, configMacro) [ Language = javascript ]
{
}

ClientMethod appendModelDomain(domain) [ Language = javascript ]
{
}

ClientMethod commitChanges(pCommand As %String) [ Language = javascript ]
{
}

ClientMethod saveDomain(pCommand As %String) [ Language = javascript ]
{
}

ClientMethod compileDomain(pCommand As %String) [ Language = javascript ]
{
}

ClientMethod gotoPortal(page) [ Language = javascript ]
{
}

ClientMethod buildDomain(pCommand As %String) [ Language = javascript ]
{
}

ClientMethod adjustIKnowListerFields(type) [ Language = javascript ]
{
}

ClientMethod createNameForLister(type) [ Language = javascript ]
{
}

ClientMethod getIKnowListerType(lister) [ Language = javascript ]
{
}

ClientMethod getIKnowListerRep(lister) [ Language = javascript ]
{
}

ClientMethod isClosed(cube, item) [ Language = javascript ]
{
}

/// user clicked Expand All (flag=1) or Collapsed All (flag=0).
ClientMethod toggleExpand(flag) [ Language = javascript ]
{
}

/// Find the row number in the table for the given model item.
/// This must be called after the table has been rendered.
ClientMethod findRowForItem(item) [ Language = javascript ]
{
}

/// This class method callback is called just before the server-side page
/// object is created.
Method %OnAfterCreatePage() As %Status
{
}

ClassMethod getEncodings() As %String
{
}

ClassMethod getMetadataDataTypes() As %String
{
}

ClientMethod getStorageName(index) [ Language = javascript ]
{
}

ClassMethod getMetadataStorages() As %String
{
}

Method GetDomainName(DDName As %String) As %String [ ZenMethod ]
{
}

/// Return the current selected item.
ClientMethod getSelectedItem() [ Language = javascript ]
{
}

/// Do the actual work of updating the view to match the current view mode.
ClientMethod setViewModeHandler(mode) [ Language = javascript ]
{
}

ClientMethod parseDomainDefName(ddName) [ Language = javascript ]
{
}

/// dName should be the child class of %iKnow.DomainDefition
ClassMethod GetDomainId(dName) As %String [ ZenMethod ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod newDomain() [ Language = javascript ]
{
}

ClientMethod openDomain() [ Language = javascript ]
{
}

ClientMethod addUDEntry() [ Language = javascript ]
{
}

ClientMethod dropDomain() [ Language = javascript ]
{
}

/// Helper method: select an item, make sure it is visible
/// and give focus to the details panel.
ClientMethod selectNewItem(newItem, newType) [ Language = javascript ]
{
}

ClassMethod getIKnowParameterName() As %String [ ZenMethod ]
{
}

ClientMethod assignDefaultConfig(domain) [ Language = javascript ]
{
}

/// The reason we need this helper is beacuse all the %iknow.model.configuationas and %iknow.model.parameters are all configure
/// through Domain setting section, the table could only store %iknow.model.configuations object.
ClientMethod fillUpParameters(domain) [ Language = javascript ]
{
}

ClientMethod applyParameters(domain) [ Language = javascript ]
{
}

/// User click on a row in the table.
ClientMethod rowClick(type, row) [ Language = javascript ]
{
}

/// Select a row in the table.
ClientMethod selectItem(type, row, force) [ Language = javascript ]
{
}

/// Find the css class for the given row type.
ClientMethod getCSSForType(type) [ Language = javascript ]
{
}

Method getColumnNames(sql) As %String [ ZenMethod ]
{
}

Method applyTabletoFields(table) As %String [ ZenMethod ]
{
}

Method applySQLtoFields(sql) As %String [ ZenMethod ]
{
}

ClientMethod getCustomizableFieldValue(id) As %String [ Language = javascript ]
{
}

ClientMethod findDefaultValue(id, value) [ Language = javascript ]
{
}

ClientMethod setCustomizableFieldValue(id, value) As %String [ Language = javascript ]
{
}

ClientMethod applyDetails(trigger) [ Language = javascript ]
{
}

/// Enable/disable a row in the table.
ClientMethod enableItem(row, flag) [ Language = javascript ]
{
}

ClientMethod moveItemUp(type, row, index, hier, level, prop) [ Language = javascript ]
{
}

ClientMethod moveItemDown(type, row, index, hier, level, prop) [ Language = javascript ]
{
}

/// Remove a row from the table.
ClientMethod removeItem(type, row, index, hier, level, prop) [ Language = javascript ]
{
}

/// User click on disclosure icon in table.
ClientMethod toggleDisclosure2(domain, key, forceOpen = 0) [ Language = javascript ]
{
}

/// Toggle display of settings (property tabs) box.
ClientMethod toggleSettings() [ Language = javascript ]
{
}

ClientMethod rowMouseOver(element, div) [ Language = javascript ]
{
}

/// method for when mouse out
ClientMethod rowMouseOut(div) [ Language = javascript ]
{
}

Method retreiveSchemas() As %String [ ZenMethod ]
{
}

Method retreiveTables(pSchema As %String) As %String [ ZenMethod ]
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

}
