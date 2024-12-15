/// This page renders an MDX statement in a printer friendly manner.
///
Class %DeepSee.UI.MDXPrint Extends %ZEN.Component.page [ System = 4 ]
{

Parameter PAGENAME = "Print-Friendly Output";

/// Domain used for localization.
Parameter DOMAIN = "%DeepSee";

/// All DeepSee pages require %DeepSee_Portal USE.
Parameter RESOURCE = "%DeepSee_Portal";

/// Define the title that will be displayed within subclasses
Property StdTitle As %ZEN.Datatype.string [ InitialExpression = {..#PAGENAME} ];

/// !!!
Property mdx As %ZEN.Datatype.string(ZENURL = "MDX");

/// Name of cube the query is based on (used with queryKey).
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Key for the query.
Property queryKey As %ZEN.Datatype.string(ZENURL = "KEY");

XData Style
{
}

/// This XML defines the contents of this page.
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method DrawHTML(pSeed As %String) As %Status
{
}

/// Print out the contents (as HTML) of the given MDX result set.
Method %PrintResults(pRS As %DeepSee.ResultSet) As %Status
{
}

}
