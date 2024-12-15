/// This utility class is used by the ZEN Page Wizard to provide
/// a set of sample pages for the user to choose from.
Class %ZEN.Template.ZENPageList Extends %RegisteredObject [ Abstract, Deprecated, System = 4 ]
{

/// Return an array of page generator classes.
ClassMethod %GetPageGenerators(Output pPages) As %Status [ Final ]
{
}

/// Return the caption that should be used for the page.
ClassMethod %GetPageCaption(pClass As %String) As %String
{
}

/// Draw the SVG icon for the given page.
/// <var>pClass</var> is a generator class name
ClassMethod %GetPageSVG(pClass As %String) As %Status
{
}

/// Get generator class to write out methods for the new class.
ClassMethod %WriteMethods(pClass As %String, pInfo As %ZEN.Template.PageGeneratorInfo) As %Status
{
}

/// Get generator class to write out the XDATA Contents block for the new class.
ClassMethod %WriteXDATAContents(pClass As %String, pInfo As %ZEN.Template.PageGeneratorInfo) As %Status
{
}

/// Get generator class to write out the XDATA Style block for the new class.
ClassMethod %WriteXDATAStyle(pClass As %String, pInfo As %ZEN.Template.PageGeneratorInfo) As %Status
{
}

}
