/// DeepSee Quality Measure manager page.
Class %DeepSee.UI.QualityMeasures Extends (%DeepSee.UI.standardPage, %CSP.Portal.SourceControl.Base) [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Quality Measures Manager";

/// If this page has multiple views, this is its initial display mode.
Parameter DEFAULTVIEWMODE;

Parameter DOCBOOKID = "D2MODADV_ch_qualmeas";

Parameter RESOURCE = "%DeepSee_PortalEdit";

/// Name of Quality Measure we are looking at (without extension).
Property qmsrName As %ZEN.Datatype.string(ZENURL = "QMSR");

/// Name of class that defines the Quality Measure.
Property qmsrClass As %ZEN.Datatype.string;

/// If true, then show edit controls.
Property editMode As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, then show list of catalogs etc.
Property browseMode As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Local copy of qmsr model object.
Property %model As %DeepSee.Model.QualityMeasure.qualityMeasure;

/// This Style block contains page-specific CSS 3 style definitions.
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

/// Return JSON array of qmeasures.
Method GetQMsrList(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// Get QMsr definition for JSON provider.
Method GetQMsrDefinition(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

/// Draw the quality measures details pane.
Method DrawNavigator(pSeed As %String) As %Status
{
}

/// Draw the "help" pane. This displays help on the current selection.
Method DrawHelp(pSeed As %String) As %Status
{
}

/// Return the internal name of the current document, including the three letter
/// extension in upper-case. For example, MyPackage.MyClass.CLS would be the internal name
/// for the class MyPackage.MyClass.
Method GetInternalName() As %String
{
}

/// Return the current name of the class/object being modified.
ClientMethod getCurrentName() [ Language = javascript ]
{
}

/// Get the title string to add to the locator row.
/// This should be implemented in a subclass.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

/// Get the jsonProvider object on the client.
ClientMethod getClientModel() [ Language = javascript ]
{
}

/// Callback method invoked after we have successfully loaded the current document.
ClientMethod onDocumentLoadComplete() [ Language = javascript ]
{
}

/// This callback is called at the end of the HTML HEAD section of the page.<br/>
Method %OnDrawHTMLHead() As %Status
{
}

/// Draw additional stuff in the ribbon bar
Method OnDrawRibbon() As %Status
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

/// Launch the quality measure finder dialog.
ClientMethod changeMeasure() [ Language = javascript ]
{
}

/// Launch the subject area finder dialog.
ClientMethod changeSubjectArea() [ Language = javascript ]
{
}

/// Launch the master quality measure finder dialog.
ClientMethod changeLinkedTo() [ Language = javascript ]
{
}

/// Add check to ensure that we correctly load documents on the client when source control hooks are in use.
/// Also set up a timer to ensure we don't hit timeouts while editing documents in Studio, as well as
/// When in Studio mode, also detect whether we are running IE10, as we need to save documents differently if that
/// is the case.
ClientMethod onloadHandler() [ Language = javascript ]
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

/// This class method callback is called just before the server-side page
/// object is created.
Method %OnAfterCreatePage() As %Status
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Display a different measure.
ClientMethod loadMeasure(name, force) [ Language = javascript ]
{
}

/// Set content of title bar.
ClientMethod setTitleText() [ Language = javascript ]
{
}

/// Test if the user has write privilege.
ClientMethod canUserModify() [ Language = javascript ]
{
}

/// Change in search box value. Can be overridden by subclasses.
ClientMethod searchBoxHandler(searchKey) [ Language = javascript ]
{
}

/// Update the details pane.
ClientMethod updateList() [ Language = javascript ]
{
}

/// Set browse mode.
ClientMethod browse() [ Language = javascript ]
{
}

/// Start/stop edit mode.
ClientMethod editMeasure() [ Language = javascript ]
{
}

/// Create a new quality measure.
ClientMethod newMeasure() [ Language = javascript ]
{
}

/// Save measure.
ClientMethod saveMeasure(showDialog) [ Language = javascript ]
{
}

/// Delete measure.
ClientMethod deleteMeasure() [ Language = javascript ]
{
}

/// Find the class name for the qmsr.
ClassMethod GetClassName(pName As %String) As %String [ ZenMethod ]
{
}

/// Delete the given qmsr.
ClassMethod DeleteQMeasure(pName As %String) As %String [ ZenMethod ]
{
}

/// Object submit handler JSON provider.
/// This is called when the client submits the qmsr definition.
Method SubmitQMsr(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, ByRef pResponseObject As %RegisteredObject) As %Status
{
}

/// Edit the given value.
ClientMethod editValue(id) [ Language = javascript ]
{
}

/// Delete the given item.
ClientMethod deleteItem(id) [ Language = javascript ]
{
}

/// Move the given item.
ClientMethod moveItem(id, up) [ Language = javascript ]
{
}

/// Add an item to the model.
ClientMethod addItem(id, idx) [ Language = javascript ]
{
}

/// Apply change from dialog
ClientMethod applyChange() [ Language = javascript ]
{
}

/// Draw details using JSON model.
ClientMethod renderDetails() [ Language = javascript ]
{
}

/// Draw qmsr catalog using JSON list.
ClientMethod renderCatalog() [ Language = javascript ]
{
}

/// method used by Source Control to set the value of the readOnly flag.
ClientMethod setReadOnly(readOnly) [ Language = javascript ]
{
}

/// Test for additional resources.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

}
