/// This class manages and contains the list of class defintions
/// that are created from an XML Schema. This class is intended for internal use by the
/// XML Schema Wizard.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class %XML.Utils.SchemaResult Extends %RegisteredObject [ System = 3 ]
{

/// Messages for localization of XML Schema Wizard result.
Parameter DOMAIN = "%TemplateMessages";

/// A multi-dimensional array of class names<BR>
/// Classes(name) = key (in original ClassTree)
Property Classes As %String [ MultiDimensional ];

/// SchemaReader that created this result
Property Reader As SchemaReader;

/// Array of feature codes for generated classes:
/// The possible nodes are as follows:<br>
///    Features("DEFAULTSEQUENCE") If this node exists, the wizard does not set the XMLSEQUENCE parameter in the generated classes.<br>
///    Features("JAVA") If this node exists, each class includes a Java projection.<br>
///    Features("NOSEQUENCE") If this node exists, the wizard sets the XMLSEQUENCE parameter to 0 in the generated classes.<br>
///    Features("POPULATE") If this node exists, each class extends %Populate in addition to %XML.Adaptor.<br>
///    Features("SQLCOLUMNS") If this node exists, each class property specifies a value for the SqlColumnNumber keyword, so that the properties have the same order in SQL that they have in the schema.<br>
///    Features("IGNORENULL") If this node is set, the XMLIGNORENULL parameter is set to this value for each class.
///    Features("BINARYASSTREAM") If this node exists, then use %Stream.GlobalBinary for base64Binary type
///    Features("XMLFORMAT") If this node is set, the XMLFORMAT parameter is set to this value for each class.
Property Features As %String [ MultiDimensional ];

/// Integer tree id within ^IRIS.Temp
Property Tree As %Integer;

/// Index for creating namespace prefixes.
Property PrefixIndex As %Integer [ InitialExpression = 0 ];

/// Create a Schema Result given a SchemaReader
ClassMethod CreateResult(pReader As SchemaReader, pPackage As %String = "", ByRef pFeatures As %String) As SchemaResult
{
}

/// Setup a new Schema Result given a SchemaReader
Method SetupResult(pReader As SchemaReader, pPackage As %String = "", ByRef pFeatures As %String) As SchemaResult
{
}

/// Create a class definition for an entry in the class tree.
Method CreateClassDef(pClassName As %String, test As %Boolean = 0, ByRef pCDef As %Dictionary.ClassDefinition) As %Status
{
}

/// If Delete trigger needed, then create it now.
ClassMethod AddOnDeleteMethod(cdef As %Dictionary.ClassDefinition, persistentProperties, tSeqNo As %Integer) [ Internal ]
{
}

/// Get number of properties in super classes
Method SuperPropertyCount(pClassName As %String) As %Integer [ Internal ]
{
}

/// Save all the class definitions in this result to the database.
Method SaveClasses(verbose As %Boolean = 0, test As %Boolean = 0) As %Status
{
}

Method SaveClass(cdef As %Dictionary.ClassDefinition, verbose As %Boolean = 0) As %Status
{
}

/// Compile all the class definitions in this result
Method CompileClasses(verbose As %Boolean = 0, CompileFlags As %String = "dk") As %Status
{
}

/// !!!Test if name is a valid class name
ClassMethod IsValidClassName(%val As %Binary) As %Boolean
{
}

/// Test if name is an SQL reserved word
ClassMethod IsSQLWord(name As %String) As %Boolean
{
}

/// List all the classes in this Result.
Method DisplayClasses()
{
}

/// Write out a formatted version of a class definition
ClassMethod DisplayClass(cdef As %Dictionary.ClassDefinition) As %Status
{
}

/// Provide an HTML list of classes (for Wizard)
Method DisplayClassesHTML() As %Status
{
}

Method DisplayClassHTML(row As %Integer, cdef As %Dictionary.ClassDefinition) As %Status
{
}

/// Output an XSchema format file based on the parsed XML schema.
Method XSchemaToFile(filepath As %String) As %Status
{
}

/// Add top level elements to the XSchema data structure
Method ElementsToXSchema() As %Status
{
}

/// Create the XSchema data Structure for one class
Method AddToXSchema(classname As %String) As %Status
{
}

Method GetTypeRef(ns As %Integer, key As %Integer, ByRef nsno As %Integer, ByRef localname As %String) As %String
{
}

/// Output the XSchema data structure to a file
Method OutputXSchema(nsno As %Integer)
{
}

}
