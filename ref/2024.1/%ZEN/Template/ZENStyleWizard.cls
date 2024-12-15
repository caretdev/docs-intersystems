/// Studio Template:<br>
/// Override a style declaration within a Style block.
Class %ZEN.Template.ZENStyleWizard Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "Zen Style Wizard";

Parameter TEMPLATETITLE = "Zen Style Wizard";

Parameter TEMPLATEDESCRIPTION = "Inserts a CSS Style declaration within a Style block.";

Parameter TEMPLATETYPE = "cls";

/// What type of template.
Parameter TEMPLATEMODE = "template";

/// Domain used for localization.
Parameter DOMAIN = "%ZEN";

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of the body pane of this Studio Template.
XData templateBody
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Draw descriptive text for page 1.
Method %GetDescHTML1(pSeed As %String = "") As %Status
{
}

/// Draw descriptive text for page 2.
Method %GetDescHTML2(pSeed As %String = "") As %Status
{
}

/// Draw html to show in Sample box.
Method %GetSampleHTML(pSeed As %String = "") As %Status
{
}

/// Draw set of styles for Style HTML table.
Method %GetStyleTableHTML(pSeed As %String = "") As %Status
{
}

/// User has clicked on a row in the style table
ClientMethod rowClick(row) [ Language = javascript ]
{
}

/// Notification that a new tab was selected.
ClientMethod tabChange(tabGroup) [ Language = javascript ]
{
}

/// Launch property editor.
ClientMethod showStyleEditor() [ Language = javascript ]
{
}

/// Update the sample div.
ClientMethod updateSample() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
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

}
