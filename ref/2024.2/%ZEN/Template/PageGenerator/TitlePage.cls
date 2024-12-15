/// PageGenerator class.
/// This is used by the ZEN Page Wizard to create a new Title Page.
Class %ZEN.Template.PageGenerator.TitlePage Extends %ZEN.Template.PageGenerator [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

/// Return caption displayed by Wizard for this Page Generator.
ClassMethod %GetCaption() As %String
{
}

/// Draw the SVG icon displayed within the PageWizard.<br>
/// This should return a set of JS statements that will create a
/// set of SVG elements. These elements should be placed within an
/// SVG container called <var>theGroup</var>.<br>
/// <var>pID</var> is the id that should be assigned to the background
/// SVG element so that mouse handling and highlighting will work.
ClassMethod %RenderSVGIcon(pID As %String) As %Status
{
}

/// Write out the contents of the XDATA Style block for this page.<br>
/// <var>pInfo</var> includes information about the class to be created.
ClassMethod %WriteXDATAStyle(pInfo As %ZEN.Template.PageGeneratorInfo) As %Status
{
}

/// Write out the contents of the XDATA Contents block for this page.<br>
/// <var>pInfo</var> includes information about the class to be created.
ClassMethod %WriteXDATAContents(pInfo As %ZEN.Template.PageGeneratorInfo) As %Status
{
}

}
