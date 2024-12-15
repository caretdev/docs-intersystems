/// <class>Component</class> is a superclass of all types of components discoverable in an
/// inventory scan. A component represents a named object in a system installation
/// such as a file, database or routine.
/// <p>Components maintain a relationship with an optional parent component and any sub-components.
/// For example, files are subcomponents of directories.
/// <p>Component data is stored in the %SYS database, and may be exported into an XML
/// representation.
Class Inventory.Component Extends (%Persistent, %XML.Adaptor) [ Inheritance = right ]
{

/// The element name used in the XML representation of the component.
Parameter XMLNAME = "Component";

/// The identifier used to distinguish the type of this component in the XML representation.
Parameter XMLTYPE = "Component";

/// The name of this component, which distinguishes it from other components of the same type.
Property Name As %String(COLLATION = "EXACT", MAXLEN = 512);

/// The parent component of this component.
Relationship ParentComponent As Inventory.Component [ Cardinality = one, Inverse = SubComponents ];

/// The <class>Scan</class> which found this component.
Property Scan As Scan(XMLREFERENCE = "ID") [ Required ];

/// The subcomponents of this component.
Relationship SubComponents As Component [ Cardinality = many, Inverse = ParentComponent ];

}
