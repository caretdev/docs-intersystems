/// Base class for DeepSee dialog pages.
Class %DeepSee.UI.Dialog.standardDialog Extends %CSP.Portal.standardDialog [ System = 4 ]
{

Parameter JSINCLUDES = "zenCSLM.js,zenESVG.js,DeepSee.js";

Parameter DOMAIN = "%DeepSee";

/// All DeepSee pages require %DeepSee_Portal USE.
Parameter RESOURCE = "%DeepSee_Portal,%DeepSee_PortalEdit";

Parameter APPLYBUTTON = 1;

XData Style
{
}

/// Contents of this page:
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Strip beginning and ending whitespaces from a given string.
ClientMethod stripWhitespaces(string As %String) As %String [ Language = javascript ]
{
}

ClientMethod getOpener() [ Language = javascript ]
{
}

Method %OnDrawHTMLMeta() As %Status
{
}

}
