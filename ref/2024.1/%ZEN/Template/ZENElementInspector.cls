/// Studio Template:<br>
/// Insert a new ZEN Element within an XData definition.
Class %ZEN.Template.ZENElementInspector Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "Zen Element Wizard";

Parameter TEMPLATETITLE = "Zen Element Wizard";

Parameter TEMPLATEDESCRIPTION = "Inserts a Zen XML element within a Contents document.";

Parameter TEMPLATETYPE = "cls";

/// What type of template.
Parameter TEMPLATEMODE = "template";

/// Domain used for localization.
Parameter DOMAIN = "%ZEN";

/// Localized label for edit button.
Property editLabel As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Edit...")} ];

/// Portion of selected text *before* the target element.
Property preText As %ZEN.Datatype.string;

/// Portion of selected text *after* the target element.
Property postText As %ZEN.Datatype.string;

/// Name of the target element from selectedText.
Property elName As %ZEN.Datatype.string;

/// Array of attributes and values from the target element.
Property attrs As array Of %ZEN.Datatype.string;

/// Class name of selected element.
Property currElementClass As %ZEN.Datatype.string;

/// Name of selected element.
Property currElementName As %ZEN.Datatype.string;

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of the body pane of this Studio Template.
XData templateBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Provide contents of description component.
Method %GetDescHTML(pSeed As %String) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Notification that the element combo has changed.
ClientMethod elementChange(cb) [ Language = javascript ]
{
}

/// htmlRefreshHandler
/// This is called when the HTML help component is refreshed from the server.
ClientMethod htmlRefreshHandler() [ Language = javascript ]
{
}

/// Provide contents of element help component.
Method %GetElementHelpHTML(pSeed As %String = "") As %Status
{
}

/// Notification that a new tab was selected.
ClientMethod tabChange(tabGroup) [ Language = javascript ]
{
}

/// called when cell is about to be drawn in dynaGrid
ClientMethod drawPropCell(grid, data) [ Language = javascript ]
{
}

/// Launch property editor.
/// <var>propNo</var> is index of property in dataSet.
ClientMethod showValueEditor(propNo) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Return csv-list of properties for the given element.
ClassMethod GetElementInfo(pClass As %String) As %String [ ZenMethod ]
{
}

/// Convert the value within the property grid to something
/// we can submit!
ClientMethod computeGridValue(grid) [ Language = javascript ]
{
}

/// Validation handler for form built-into template.
ClientMethod formValidationHandler() [ Language = javascript ]
{
}

ClientMethod hasMultiplePages() [ Language = javascript ]
{
}

/// Return true if this template can go to the next page (i.e., enable
/// the Next button).<br>
ClientMethod canGoNext() [ Language = javascript ]
{
}

/// Return true if this template can go to the previous page (i.e., enable
/// the Back button).<br>
ClientMethod canGoBack() [ Language = javascript ]
{
}

/// Go to the next page of the template (if there is one).<br>
ClientMethod nextPage() [ Language = javascript ]
{
}

/// Go to the previous page of the template (if there is one).<br>
ClientMethod previousPage() [ Language = javascript ]
{
}

/// This is called when the template is first displayed;
/// This provides a chance to set focus etc.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

/// This method is called when the template is complete. Any
/// output to the principal device is returned to the Studio.
Method %OnTemplateAction() As %Status
{
}

/// Create the result set used by the Element dataCombo.
Method CreateElementRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

}
