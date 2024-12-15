/// Table user top level menu names for use with user defined Studio customisation
Class %Studio.Extension.Menu Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, System = 3 ]
{

Property MenuItem As list Of MenuItem(XMLPROJECTION = "ELEMENT");

Relationship MenuBase As MenuBase [ Cardinality = parent, Inverse = Menu ];

/// Resource name of this top level menu item
Property Name As %String(MAXLEN = 128, XMLPROJECTION = "ATTRIBUTE");

/// If the type is 0 then this is a regular top level menu. If the type is 1 then this is a context
/// submenu to be added to all the context menus.
Property Type As %Integer(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "0" ];

}
