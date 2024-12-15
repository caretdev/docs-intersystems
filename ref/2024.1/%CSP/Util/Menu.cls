/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Defines a menu for a CSP Menu page.
Class %CSP.Util.Menu Extends (%SerialObject, %XML.Adaptor) [ Inheritance = right, ServerOnly = 1, System = 4 ]
{

Parameter XMLIGNORENULL = 1;

/// Title of this menu
Property Title As %String(MAXLEN = 100, XMLNAME = "title", XMLPROJECTION = "attribute");

/// Optional subtitle of this menu
Property Subtitle As %String(MAXLEN = 100, XMLNAME = "subtitle", XMLPROJECTION = "attribute");

/// Background color for the menu title
Property Background As %String(MAXLEN = 100, XMLNAME = "background", XMLPROJECTION = "attribute");

/// Defines the menu items for this menu
Property Items As list Of MenuItem(XMLNAME = "MenuItem", XMLPROJECTION = "ELEMENT");

/// Utility method to generate code for this object
Method GenerateCode() As %String
{
}

}
