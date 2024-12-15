/// Generator methods for %JSON.Adaptor.<br><br>
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class %JSON.Generator [ Abstract, System = 2 ]
{

ClassMethod GenerateMapping(class As %String, Output mapping) As %Status [ Internal ]
{
}

/// Return member type information about a property
/// <pre>
/// includeProperty is set if passed in as "" which means not specified
/// member cat is defined by
///    <base cat> = "LITERAL" | "OBJPERSISTENT" | "OBJSERIAL" | "OBJREGISTERED" | "CSTREAM" | "BSTREAM"
///    If RELATIONSHIP MANY|CHILDREN, then ListCollectionOBJPERSISTENT
///    If List Of, then { ArrayCollection | ListCollection } <base cat>
///    If %ListOf... or %ArrayOf... { ArrayCollection | ListCollection } <ELEMENTTYPE cat>
///    Otherwis <base cat>
/// type is the type referenced by the property.
ClassMethod GetMemberInfo(class As %String, property As %String, ByRef includeProperty As %Boolean, Output type As %String, Output membercat As %String) [ Internal ]
{
}

/// Return all super classes in sequence of left to right with super class immediately following its child.
ClassMethod LeftSequenceClass(class As %String, ByRef seqArray)
{
}

/// Get the JSON adaptor configuration information  from class and property parameters.
ClassMethod GenerateMappingFromXdata(class As %String, ByRef mapping) As %Status [ Internal ]
{
}

/// Generate mapping based on imported configuration info from Xdata block
ClassMethod GenerateMappingFromClass(class As %String, name As %String, obj As %JSON.Mapping, ByRef mapping) As %Status [ Internal ]
{
}

/// %JSONGenerate creates thee metadata structure and generates the code for all methods.
ClassMethod %JSONGenerate(%mode, %class, %property, %method, %parameter, %codemode, %code, %classmodify, %context) As %Status [ Internal ]
{
}

/// Get the code for the %JSONImportInternal method to actually do the method generation
ClassMethod JSONImportInternal(%mode, %class, %property, %method, %parameter, %codemode, %code, %classmodify, %context) As %Status [ Internal ]
{
}

/// Get the code for the %JSONExportInternal method to actually do the method generation
ClassMethod JSONExportInternal(%mode, %class, %property, %method, %parameter, %codemode, %code, %classmodify, %context) As %Status [ Internal ]
{
}

/// Get the code for the %JSONExportToStringInternal method to actually do the method generation
ClassMethod JSONExportToStringInternal(%mode, %class, %property, %method, %parameter, %codemode, %code, %classmodify, %context) As %Status [ Internal ]
{
}

ClassMethod JSONNew(%mode, %class, %property, %method, %parameter, %codemode, %code, %classmodify, %context) As %Status
{
}

/// Generate the code for the %JSONImportInternal method
ClassMethod GenerateAllImportInternal(class As %String, ByRef mapping As %String) As %Status [ Internal ]
{
}

/// Generate the code for the %JSONImportInternal method for the specified mappingName.
ClassMethod GenerateImportInternal(class As %String, indent As %String, mappingName As %String, ByRef mapping As %String, ByRef needRequired As %Boolean, ByRef needTestInvalidField As %Boolean) As %Status [ Internal ]
{
}

/// Generate code for importing a JSON array as a List collection.
ClassMethod GenImportList(class As %String, propertyMap As %List, indent As %String) As %Boolean [ Internal ]
{
}

/// Generate code for importing an array value from JSON object of the form {"key":value,...}
ClassMethod GenImportArray(class As %String, propertyMap As %List, indent As %String) As %Boolean [ Internal ]
{
}

/// Generate code for importing a single field value.
ClassMethod GenImportField(class As %String, propertyMap As %List, indent As %String, isCollectionValue As %Integer) As %Boolean [ Internal ]
{
}

/// Generate code for importing an object ID and storing the object reference in variable named data.
ClassMethod GenImportID(class As %String, propertyMap As %List, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate code for importing an object OID and storing the object reference in variable named data.
ClassMethod GenImportOID(class As %String, propertyMap As %List, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate code for importing an object GUID and storing the object reference in variable named data.
ClassMethod GenImportGUID(class As %String, propertyMap As %List, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate code for importing a referenced object and storing in variable named data.
ClassMethod GenImportObject(class As %String, propertyMap As %List, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate code for getting the field value from a binary stream and storing in variable named data.
ClassMethod GenImportBinaryStream(class As %String, propertyMap As %List, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate code for getting the field value from a character stream and storing in variable named data.
ClassMethod GenImportCharacterStream(class As %String, propertyMap As %List, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate code for getting the field value and storing in variable named data.
ClassMethod GenImportLiteral(class As %String, propertyMap As %List, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate the code for the %JSONExportInternal method
ClassMethod GenerateAllExportInternal(class As %String, ByRef mapping As %String, useWrite As %Boolean) As %Status [ Internal ]
{
}

/// Generate the code for the specified mapping of %JSONExportInternal method
ClassMethod GenerateExportInternal(class As %String, indent As %String, mappingName As %String, ByRef mapping As %String) As %Status [ Internal ]
{
}

/// Generate code for exporting a List collection as a JSON array.
ClassMethod GenExportList(class As %String, propertyMap As %List, indent As %String) As %Boolean [ Internal ]
{
}

/// Generate code for exporting an array collection value from JSON object of the form {"key":value,...}
ClassMethod GenExportArray(class As %String, propertyMap As %List, indent As %String) As %Boolean [ Internal ]
{
}

/// Generate code for exporting a single field value.
ClassMethod GenExportField(class As %String, propertyMap As %List, fieldName As %String, indent As %String, isCollectionValue As %Integer) As %Integer [ Internal ]
{
}

/// Generate code for exporting an object ID as JSON.
ClassMethod GenExportID(class As %String, propertyMap As %List, fieldName As %String, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate code for exporting an object OID as JSON.
ClassMethod GenExportOID(class As %String, propertyMap As %List, fieldName As %String, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate code for exporting an object GUID as JSON.
ClassMethod GenExportGUID(class As %String, propertyMap As %List, fieldName As %String, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate code for exporting a referenced object as JSON.
ClassMethod GenExportObject(class As %String, propertyMap As %List, fieldName As %String, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate code for exporting a binary stream as JSON.
ClassMethod GenExportBinaryStream(class As %String, propertyMap As %List, fieldName As %String, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate code for exporting a character stream as JSON.
ClassMethod GenExportCharacterStream(class As %String, propertyMap As %List, fieldName As %String, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate code for exporting a literal value as JSON.
ClassMethod GenExportLiteral(class As %String, propertyMap As %List, fieldName As %String, indent As %String, isCollectionValue As %Integer) [ Internal ]
{
}

/// Generate code to write out the field name and value
ClassMethod GenWriteField(fieldName As %String, indent As %String, valueText As %String)
{
}

}
