/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Defines an item within a Menu for a CSP Menu page.
Class %CSP.Util.MenuItem Extends (%SerialObject, %XML.Adaptor) [ Inheritance = right, ServerOnly = 1, System = 4 ]
{

/// Value to display for menu item
Property Caption As %String(MAXLEN = 100, XMLNAME = "caption", XMLPROJECTION = "attribute");

/// URL to go to when menu item is chosen
Property HREF As %String(MAXLEN = 100, XMLNAME = "link", XMLPROJECTION = "attribute");

/// Help to display for menu item
Property Help As %String(MAXLEN = 400, XMLNAME = "help", XMLPROJECTION = "attribute");

/// (Optional) Resource required in order to use this link
Property Resource As %String(MAXLEN = 100, XMLNAME = "resource", XMLPROJECTION = "attribute");

/// (Optional) A COS expression that must evaluate true in order to use this link
Property Condition As %String(MAXLEN = 255, XMLNAME = "condition", XMLPROJECTION = "attribute");

/// What type of action to perform:<br>
/// link: link to another page (default).<br>
/// popup: launch a popup window.<br>
Property Type As %String(VALUELIST = ",link,popup", XMLNAME = "type", XMLPROJECTION = "attribute");

/// Utility method to generate code for this object
Method GenerateCode() As %String
{
}

}
