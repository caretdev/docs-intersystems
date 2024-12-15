/// Specialized page that displays a CSS declaration editor.<br>
/// This is used by ZEN utilities.
Class %ZEN.Dialog.cssDeclarationEditor Extends standardDialog [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

/// Show Apply button.
Parameter APPLYBUTTON = 1;

/// What type of CSS declaration: "HTML" or "SVG". Passed in via URL.
Property context As %ZEN.Datatype.string(ZENURL = "context");

/// Selector for the CSS declaration. Passed in via URL.
Property selector As %ZEN.Datatype.string(ZENURL = "selector");

/// Initial value of the CSS declaration. Passed in via URL.
Property declaration As %ZEN.Datatype.string(ZENURL = "declaration");

/// True if result should formatted as multi-line text. Passed in via URL.
Property multiLine As %ZEN.Datatype.boolean(ZENURL = "multiLine") [ InitialExpression = 0 ];

/// Localized message for missing property.
Property msgMissingProp As %ZEN.Datatype.caption [ InitialExpression = "Please enter a property value." ];

/// example of customized style sheet
XData Style
{
}

/// Contents of this dialog pane:
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

/// Provide contents of description component.
Method %GetDescHTML(pSeed As %String) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Return the value that should be returned by this dialog.
ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// User has selected a declaration in the list box.
ClientMethod changeDeclaration(lb) [ Language = javascript ]
{
}

/// User has changed the property or value control
ClientMethod changeProperty(ctrl) [ Language = javascript ]
{
}

/// Remove the current property
ClientMethod removeProperty() [ Language = javascript ]
{
}

/// Get current declaration from property and value controls.
ClientMethod getCurrDeclaration() [ Language = javascript ]
{
}

/// Return an array of possible CSS property values.
ClassMethod GetCSSPropertyList(pContext As %String, Output pList)
{
}

/// Launch the CSS Value Editor popup.
ClientMethod editCSSValue() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

}
