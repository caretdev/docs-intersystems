/// This page provides a means of exploring the cube relationships that are defined on the system.
Class %DeepSee.UI.ModelBrowser Extends %DeepSee.UI.standardPage [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Analytics Model Browser";

Parameter DOCBOOKID = "D2MODADV_rel_model_browser";

/// Id of current item in the diagram.
Property CurrItemId As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Id of last visited item in the diagram.
Property LastItemId As %ZEN.Datatype.string;

/// Color of the previously selected node
Property LastColor As %String [ InitialExpression = "#A0FFB0;" ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData SVGStyle
{
}

/// This Style block contains page-specific CSS style definitions.
XData CSS3Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData svgContent [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData cubeElements [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// sliderChange
/// User has moved the zoom slider.
ClientMethod sliderChange(slider) [ Language = javascript ]
{
}

/// selectCube
/// User has selected a new cube from the combobox
ClientMethod selectCube(value) [ Language = javascript ]
{
}

/// selectNode
/// Callback for handling selection of a new node
ClientMethod selectNode(node) [ Language = javascript ]
{
}

ClientMethod updateDiagram(node) [ Language = javascript ]
{
}

/// Draw the diagram
/// Return a string to force synchronous call from the client
Method DrawDiagram(pID As %String, pLastID As %String) As %String [ ZenMethod ]
{
}

/// Create an array that describes the model to be diagrammed.
/// model is of the form:<br>
/// 		model("id") = cube name<br>
/// 		model("Name") = cube caption<br>
/// 		model("ch",n) = ""<br>
/// 		model("ch",n,"id") = child cube name<br>
/// 		model("ch",n,"label") = child cube caption<br>
Method CreateModel(pID As %String, Output pModel) As %Status
{
}

/// DrawModel
/// Method that sets the properties of the radialNavigator and
/// adds child nodes to the navigator<br>
/// If pLastID is not empty, the previously selected node will be filled in using LastColor;
Method DrawModel(ByRef pModel, pLastID As %String = "") As %Status
{
}

/// Build sample data for the browser based on all the cubes in this namespace
/// Note that this does not include subject areas<br><br>
Method BuildData() As %Status
{
}

/// Get the (localized) title string for the page.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Decorate the page.
Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Provide contents of the dimension tree.
Method GetDimensionInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

Method PopulateCubeDropDown() As %Status
{
}

/// Subclass need to include the case "switchNamespace" if it is enabling "Switch" next to namespace.<br>
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

}
