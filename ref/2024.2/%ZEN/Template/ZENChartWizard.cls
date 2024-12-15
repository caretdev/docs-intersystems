/// Studio Template:<br>
/// Inserts a new chart definition within an XData definition.
Class %ZEN.Template.ZENChartWizard Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "Zen Chart Wizard";

Parameter TEMPLATETITLE = "Zen Chart Wizard";

Parameter TEMPLATEDESCRIPTION = "Inserts a Zen chart definition within a Contents document.";

Parameter TEMPLATETYPE = "cls";

/// What type of template.
Parameter TEMPLATEMODE = "template";

/// Domain used for localization.
Parameter DOMAIN = "%ZEN";

Parameter HELPID = "GZEN_chart_wizard";

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

/// Notification that the chart type has changed.
ClientMethod chartTypeChange(cb) [ Language = javascript ]
{
}

/// Create and display the specified chart type.
ClientMethod changeChart(chartType) [ Language = javascript ]
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

/// Callback to provide random data for chart.
ClientMethod getChartData(series) [ Language = javascript ]
{
}

/// Point object inspector to given component.
ClientMethod inspectElement(name) [ Language = javascript ]
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

/// Convert chart to xml representation.
ClassMethod SerializeChart(pChart As %ZEN.SVGComponent.chart) As %String [ ZenMethod ]
{
}

/// This method is called when the template is complete. Any
/// output to the principal device is returned to the Studio.
Method %OnTemplateAction() As %Status
{
}

}
