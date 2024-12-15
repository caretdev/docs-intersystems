/// Studio Template:<br>
/// Inserts a new tablePane definition within an XData definition.
Class %ZEN.Template.ZENTablePaneWizard Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "Zen TablePane Wizard";

Parameter TEMPLATETITLE = "Zen TablePane Wizard";

Parameter TEMPLATEDESCRIPTION = "Inserts a Zen tablePane definition within a Contents document.";

Parameter TEMPLATETYPE = "cls";

/// What type of template.
Parameter TEMPLATEMODE = "template";

/// Domain used for localization.
Parameter DOMAIN = "%ZEN";

/// %session.CSPSessionCookie passed as CSPCHD for Browse dialog
Property CSPSessionCookie As %String [ InitialExpression = {%session.CSPSessionCookie} ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of the body pane of this Studio Template.
XData templateBody
{
}

/// Provide contents of description component.
Method %GetDescHTML(pSeed As %String) As %Status
{
}

/// Provide contents of description component.
Method %GetDescHTML2(pSeed As %String) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// This client event, if present, is fired when the page
/// is first loaded or whenever it is resized.<br>
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// Notification that the columns list has changed.
ClientMethod columnChange(ta) [ Language = javascript ]
{
}

/// Notification that the data source has changed.
ClientMethod dataSourceChange(rb) [ Language = javascript ]
{
}

/// Notification that a new tab was selected.
ClientMethod tabChange(tabGroup) [ Language = javascript ]
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

/// User has pressed edit button in the objectInspector.
ClientMethod editProperty() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// This is called when the template is first displayed;
/// This provides a chance to set focus etc.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

/// This is called when the template is finished;
ClientMethod onfinishHandler() [ Language = javascript ]
{
}

/// Convert table to xml representation.
ClassMethod SerializeTable(pTable As %ZEN.Component.tablePane) As %String [ ZenMethod ]
{
}

/// This method is called when the template is complete. Any
/// output to the principal device is returned to the Studio.
Method %OnTemplateAction() As %Status
{
}

/// Return encrypted table name or query name
ClassMethod GetEncName(pTableName) As %String [ ZenMethod ]
{
}

}
