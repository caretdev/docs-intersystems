/// Configuration Management XML Reader
///
/// This class is used while importing Configuration Items.
/// Do not use this class directly.
Class %XML.Exchange.Reader Extends %XML.Reader [ System = 4 ]
{

/// The filename used as an XML source.
Property Filename As %String;

/// ResolveElement() returns the class name corresponding to an element name
/// within the current XMLReader context.
Method ResolveElement(element As %String, defaultNamespace As %String) As %String [ Internal ]
{
}

/// Get and return the next object.<p>
/// <method>Next</method> returns 1 (true), if the next object matching one of the Correlate criteria
/// is found and successfully imported.<br>
/// <method>Next</method> returns 0 (false) and a %Status of $$$OK in sc
/// after all objects have been imported.<br>
/// <method>Next</method> returns 0 (false) and an error %Status in sc,
/// if an error has occurred importing this object.<p>
/// The <var>namespace</var> argument indicates the default namespace
/// for this XML file.
Method Next(ByRef oref As %ObjectHandle, ByRef sc As %Status, namespace As %String = "", ByRef qstruct As %String) As %Integer
{
}

/// Import XML source from a file using %XML.Document.
Method OpenFile(xmlsource As %String, format As %String) As %Status
{
}

}
