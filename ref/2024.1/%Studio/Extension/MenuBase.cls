/// Table of user defined menus for use with Studio customisation
Class %Studio.Extension.MenuBase Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, System = 3 ]
{

Relationship Menu As Menu(XMLPROJECTION = "ELEMENT") [ Cardinality = children, Inverse = MenuBase ];

/// Classname of the source control class associated with these menus
Property Name As %String(MAXLEN = 128, XMLPROJECTION = "ATTRIBUTE");

}
