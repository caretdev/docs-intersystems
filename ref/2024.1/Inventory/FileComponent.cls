/// <class>FileComponent</class> is a subclass of <class>Component</class>.
/// An instance represents an operating system file.
/// <p>It contains properties representing the file's name, last modified date,
/// size, and a SHA1 hash of the file's contents.
Class Inventory.FileComponent Extends (Component, Hashable) [ Inheritance = right ]
{

/// The element name used in the XML representation of the component.
Parameter XMLNAME = "FileComponent";

/// The identifier used to distinguish the type of this component in the XML representation.
Parameter XMLTYPE = "FileComponent";

/// The last modified date of of the file referenced by this <class>FileComponent</class>.
Property DateModified As %TimeStamp;

/// The unqualified filename, i.e., without its directory component, of the file referenced by this <class>FileComponent</class>.
Property Filename As %String(MAXLEN = 256) [ Required ];

/// The size, in bytes, of the file referenced by this <class>FileComponent</class>.
Property Size As %Integer;

/// Initializes and saves this <class>FileComponent</class>, recording <var>scan</var>
/// as the <property>Scan</property> property, and scanning <var>fileName</var> for
/// its size, last modified date, and SHA1 hash.
/// <p>The saved <class>FileComponent</class> is returned.
Method Init(scan As Scan, fileName As %String) As FileComponent
{
}

}
