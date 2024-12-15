/// This class is the base class for Studio Assist schema generators that
/// are based on XML-enabled class definitions.
Class %Studio.SASchemaClass Extends %Studio.SASchema [ Abstract, System = 3 ]
{

/// This is the namespace value used to identify this SA schema.
/// This corresponds to the XMLNamespace keyword of a Studio XData block.
Parameter XMLNAMESPACE As STRING;

/// This is a comma-separated list of the classes whose xml elements
/// can be used as the root level element of a document separated with a ':' and the
/// XML tag name to correlate this with e.g. "User.Person:person,User.Company:company".
Parameter ROOTCLASSES As STRING;

/// Optional. This is a comma-separated list of category names. If specified,
/// only classes that contain an SACATEGORY parameter included in the list will be added to
/// the schema. This provides a way to create a subset of a larger set of components.
Parameter SACATEGORY As STRING;

/// Output SASchema definition into a stream
ClassMethod OutputToStream(pStream As %Stream.Object, Output pChecksum As %String, pParameter As %String) As %Status
{
}

ClassMethod IsUpToDate(pChecksum As %String, pParameter As %String) As %Boolean
{
}

/// Internal method.
/// Given an array of class names, that correspond to the top-level elements
/// within an XML document, find the simplified SASchema used by the Studio
/// Assistant.<br>
/// <var>ppDefaultNS</var> is the default XML namespace for the schema.
ClassMethod GetSchemaForClasses(ByRef pClassList As %String) As %Status [ Private ]
{
}

/// Given a class (and default namespace) find the list of XML elements
/// it can contain.
/// This list of the form: ^List(el) = class<br/>
ClassMethod GetElementsForClass(pClass As %String, Output pElementList, Output pReferencedClasses) As %Status
{
}

/// Given a class (and default namespace) find the list of XML attributes
/// it can contain.
ClassMethod GetAttrsForClass(pClass As %String, Output pAttrList) As %Status
{
}

/// Return an array of XML element names that could be used within a
/// document wherever <var>pClass</var> is expected.
ClassMethod GetXMLElementsForClass(pClass As %String, Output pElements) As %Status
{
}

/// Return the XML name for the given class (or "" if there is none).
/// If the class is not in the default namespace, its namespace will
/// be prepended to the XML name.
ClassMethod GetXMLNameForClass(pClass As %String) As %String
{
}

/// Take an element and make sure it has the correct namespace prefix
/// to match the given local namespace context.
ClassMethod XMLName2DisplayName(pName As %String, pCurrentNS As %String) As %String
{
}

ClassMethod XMLName2NameSpace(pName) As %String [ CodeMode = expression ]
{
}

ClassMethod XMLName2ShortName(pName) As %String [ CodeMode = expression ]
{
}

/// Loop through the global to generate the output for the Studio.
ClassMethod loopGlobal(pStream As %Stream.Object) As %Status [ Private ]
{
}

/// Convert a schema name to a reasonable "prefix".
ClassMethod SchemaToPrefix(pSchema As %String) As %String
{
}

}
