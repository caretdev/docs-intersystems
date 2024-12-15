Class %CSP.Util.perfbydate Extends %ZEN.Component.page [ DependsOn = %ZEN.Component.tableNavigator, System = 4 ]
{

Parameter PAGETIMING = 1;

Parameter TIMINGSLOTS = 48;

Parameter RESOURCE = "%Development";

Parameter ENCODED = 1;

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this page.
XData Contents
{
}

ClientMethod search() [ Language = javascript ]
{
}

ClientMethod init() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod gotoByPage(pagename) [ Language = javascript ]
{
}

}
