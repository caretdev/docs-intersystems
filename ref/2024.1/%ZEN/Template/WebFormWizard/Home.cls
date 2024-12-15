/// Studio Template.<br>
/// Create CSP forms for classes.
Class %ZEN.Template.WebFormWizard.Home Extends %ZEN.Template.WebFormWizard.Template [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "Web Form Wizard";

Parameter TEMPLATETITLE = "Web Form Wizard";

Parameter TEMPLATEDESCRIPTION = "Create a CSP form for a Cache class.";

Parameter TEMPLATETYPE = "cls,csp";

/// What type of template.
Parameter TEMPLATEMODE = "template";

/// Display title of this page <title></title>
Parameter PAGETITLE = "Web Form Wizard";

/// Domain used for localization.
Parameter DOMAIN = "%ZEN";

Property sId As %ZEN.Datatype.string [ InitialExpression = {$select($isObject($get(%session)):%session.SessionId,1:$j)} ];

/// User selected class name
Property FullClassName As %ZEN.Datatype.string;

Property TreeTotal As %ZEN.Datatype.integer;

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of the body pane of this Studio Template.
XData templateBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Moving item in a listbox up and down
ClientMethod moveUpDown(flag) [ Language = javascript ]
{
}

/// Select the entire list from tree to the list, marking tree item style as selected
ClientMethod moveToAll() [ Language = javascript ]
{
}

/// Move item from tree to listbox
ClientMethod moveTo() [ Language = javascript ]
{
}

/// Move item from listbox to tree
ClientMethod moveBackAll() [ Language = javascript ]
{
}

/// Move item from listbox to tree
ClientMethod moveBack() [ Language = javascript ]
{
}

/// User clicked one of the arrows or double clicked.
ClientMethod arrowClicked() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Return true if this template can go to the next page (i.e., enable
/// the Next button).<br>
ClientMethod canGoNext() [ Language = javascript ]
{
}

/// Return true if this template can go to the previous page (i.e., enable
/// the Back button).<br>
/// This is implemented by subclasses.
ClientMethod canGoBack() [ Language = javascript ]
{
}

/// Return true if this template can Finish (i.e., enable
/// the Finish button).<br>
/// This is implemented by subclasses.
ClientMethod canFinish() [ Language = javascript ]
{
}

/// This is called when the template is first displayed;
/// This provides a chance to set focus etc.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

/// Validation handler for form built-into template.
ClientMethod formValidationHandler() [ Language = javascript ]
{
}

ClientMethod hasMultiplePages() [ Language = javascript ]
{
}

/// User clicked a selected property in lstFields on tab3.
/// Fill in caption and determine if the reference radiobuttons should be shown.
ClientMethod lstFieldsClick(ctrl) [ Language = javascript ]
{
}

/// Load selected properties into fields box on tab3
ClientMethod loadFields() [ Language = javascript ]
{
}

/// This is called when the user changes the Location control(s).
ClientMethod locationChange(ctrl) [ Language = javascript ]
{
}

/// Load properties for selected table
ClientMethod loadProperties() [ Language = javascript ]
{
}

/// Go to the next page of the template (if there is one).<br>
/// This is implemented by subclasses.
ClientMethod nextPage() [ Language = javascript ]
{
}

/// Go to the previous page of the template (if there is one).<br>
/// This is implemented by subclasses.
ClientMethod previousPage() [ Language = javascript ]
{
}

/// Return currently selected package and classname
ClientMethod getClassName() [ Language = javascript ]
{
}

/// User selected a Query Name for reference class.
/// Save the selection and load the Query Columns field.
ClientMethod lstQueryNameClick(ctrl) [ Language = javascript ]
{
}

/// User selected a Query Column for reference class.
/// Save the selection and enable fields.
ClientMethod lstQueryColumnClick(ctrl) [ Language = javascript ]
{
}

/// User clicked an item in the tree
ClientMethod treeClick(gonext) [ Language = javascript ]
{
}

/// User changed an attribute field. Save it to temp array.
ClientMethod updateAttribute(ctrl) [ Language = javascript ]
{
}

/// This method is called when the template is complete. Any
/// output to the principal device is returned to the Studio.
Method %OnTemplateAction() As %Status
{
}

/// Provide contents of description component for tab1.
Method %GetDescHTML(pSeed As %String) As %Status
{
}

/// Provide contents of description component for tab2.
Method %GetDescHTML2(pSeed As %String) As %Status
{
}

/// Provide contents of description component for tab3.
Method %GetDescHTML3(pSeed As %String) As %Status
{
}

/// Build tree for class names
ClassMethod PopulateClassList(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Load fields into Available/Selected list boxes.
/// ClassMethod PopulateAttributeList(NAMESPACE, FullClassName, sId) As %Boolean [ ZenMethod ]
ClassMethod PopulateAttributeList(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// User wants to create Drop-down for refclass. Return Query Name choices.
ClassMethod PopulateQueryList(sId, sName) As %String [ ZenMethod ]
{
}

/// User wants to show reference as Pull-down menu and has selected a Query Name.
/// Return Query Column choices.
ClassMethod PopulateRefPropList(sId, sName) As %String [ ZenMethod ]
{
}

/// User wants to show reference as Search button or Hyperlink.
/// Return Query Column choices.
ClassMethod PopulateRefQueryColumn(sId, sName) As %String [ ZenMethod ]
{
}

/// Given property name, decide now what type of attribute we should show.
/// idAttr1 = show reference
/// idAttr2 = show collection or multiline
/// idAttr3 = show image
/// idAttr4 = show Pull-down menu for reference
ClassMethod ShowRef(sName) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod SaveAttribute(sId, sName, sField, sValue) [ ZenMethod ]
{
}

/// Save the selected property list into %session for processing
ClassMethod SavePropList(sId, sValue) As %Boolean [ ZenMethod ]
{
}

/// *************************************************************** ///
/// *  The following methods are for generating code for a form.  * ///
/// *************************************************************** ///
/// Check for JavaScript name identifiers. If invalid characters
/// (including foreign language) exist in a property name,
/// then that property name will not be used in the field name
/// on the new generated form. Instead, a "fieldNN" name will be used
/// where NN is the unique "findex" number.
Method ConvertKeyNameToIntName(Key) As %String
{
}

/// Loop through the selected properties. Add to search list if the property is searchable
Method GetSearchList(sId, clsName) As %String
{
}

/// Build option list based on user's Settings
Method GetOptionsList(Layout) As %String
{
}

/// This module is called to heck if ValueList and DisplayList exist. If yes, build SELECT box.
Method GetParameterList(clsName, sIntName)
{
}

/// Write out HTML code for form header
Method WriteFormHeader(sId, clsName, Layout)
{
}

/// Write out Javascript code for page
Method WriteJS(sId, clsName, Layout)
{
}

/// Write out HTML code: Loop through all selected fields
/// Set indicator (bReq) for whether there is at least one required field for footer.
Method WriteFields(sId, clsName, Layout, bReq)
{
}

/// Write out HTML code: Write out code for individual field
Method WriteConField(clsName, sId, sName, Layout, gsAlign, sBold1, sBold2)
{
}

/// Write out HTML code: form footer and finish
Method WriteFormFooter(clsName, Layout, bReq)
{
}

}
