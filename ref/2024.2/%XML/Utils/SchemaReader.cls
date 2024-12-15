/// This class reads an XML schema and builds class definitions from it.<BR>
/// Schema reading works as follows:<BR>
/// First, the Parser class builds a tree structure
/// representing the elements within the schema file,
/// then this class processes the tree to build class definitions.<BR>
///
/// This class is used by the XML Schema Wizard; it is not
/// for direct use within applications except through the Process and Reset methods.
/// Properties which are not marked as internal may be used to control the Process method.
/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.Utils.SchemaReader">Generating Classes from XML Schemas</a>.
Class %XML.Utils.SchemaReader Extends %RegisteredObject [ System = 3 ]
{

/// Input property to control persistence of generated classes.
///  If true(1) create persistent classes, else create registered classes.
///  Default is true.
Property MakePersistent As %Boolean [ InitialExpression = 1 ];

/// Input property to control if generated classes are serial.
///  If true(1) and 'MakePersistent create serial classes, else create registered classes.
///  Default is true.
Property MakeSerial As %Boolean [ InitialExpression = 0 ];

/// Input property to control creation of relationships in generated classes.
///  If true(1), convert list collections of persistent classes to relationships.
///  Default is true.
Property MakeRelationships As %Boolean [ InitialExpression = 1 ];

/// Input property to control nature of relationships in generated classes.
///  The ParentChildRelationship property is only meaningful if MakeRelationships is true(1).
///  If ParentChildRelationship is true(1), the relationships that are created are parent-child relationsips.
///  Otherwise the relationships are many-one.
Property ParentChildRelationship As %Boolean [ InitialExpression = 0 ];

/// Input property to control nature of relationships in generated classes.
///  The IndexRelationship property is only meaningful if MakeRelationships is true(1)
///  and the relationship is many-one (ParentChildRelationship is false(0).
///  If IndexRelationship is true(1), the many-one relationships that are created are indexed.
Property IndexRelationship As %Boolean [ InitialExpression = 0 ];

/// Input property to control if a %OnDelete method is generated for persistent classes
/// in order to cascade deletes.
Property CascadeDeletes As %Boolean [ InitialExpression = 0 ];

/// Input property to control generation of XML namespace information.
///  If true(1), add NAMESPACE parameter to generated classes.
///  Default is false(0) unless there are multiple targetNamespaces in which case the default is true(1).
Property MakeNamespace As %Boolean;

/// Input property to control compilation of created classes.
/// Default is to compile classes.
Property CompileClasses As %Boolean [ InitialExpression = 1 ];

/// Flags to be used for class compiles.
Property CompileFlags As %String [ InitialExpression = "dk" ];

/// Input property to control removal of unused classes with no properties.<br>
///  If true(1), remove unused classes with no properties.<br>
///  Default is false(0).
Property KeepEmptyClasses As %Boolean [ InitialExpression = 0 ];

/// Input property to force creating classes for elements defined by
/// referencing a type.<br>
/// This property is only meant for internal usage by the SOAP wizard.
Property KeepEmptyElements As %Boolean [ InitialExpression = 0, Internal ];

/// Input property to control use of arrays in created classes.<br>
///  If true(1), do not reduce properties to use array of cnostruct.<br>
///  Default is false(0).
Property NoArrayProperties As %Boolean [ InitialExpression = 0 ];

/// Input property to control the generation of the XMLNIL property parameter.
/// If GenerateXMLNIL = 1, then generate property parameter XMLNIL=1 for elements with nillable="true".
Property GenerateXMLNIL As %Boolean;

/// Input property to control the generation of the XMLNILNOOBJECT property parameter.
/// If GenerateXMLNILNOOBJECT = 1, then generate property parameter XMLNILNOOBJECT=1 for elements with nillable="true".
Property GenerateXMLNILNOOBJECT As %Boolean;

/// Input property to optionally add an identity property to persistent classes
///  that contains an ID, OID or GUID.
///  Possible values for AddIdentity are "" (none), "ID", "OID" or "GUID".
Property AddIdentity As %String;

/// User supplied mapping of namespaces to package names which will override the default
/// package used for a specified namespace.<br>
/// The format is PackageMapping(namespace)=package for each mapped namespace<br>
/// If package="", then the client classes are put in the default package.
/// If package begins with a period (.), then the package is appended to the default package.
/// Otherwise the package is used as specified.<br>
/// The PackageMapping property may only be used with the Process method.
Property PackageMapping As %String [ MultiDimensional ];

/// The name of the activated TLS/SSL configuration to use for https requests.
Property SSLConfiguration As %String;

/// When making an SSL connection check the server identity in the server certificate matches the name of the system we are connecting to.
/// This defaults to being on and matches based on the rules layed out in section 3.1 of RFC 2818.
Property SSLCheckServerIdentity As %Boolean;

/// This property should be set to a combination of flags (see %occSAX.inc for details) if
/// the default behavior of the parser is required to be modified.
/// The $$$SAXVALIDATIONPROHIBITDTDS flag is added by default in order to not allow DTDs.
Property SAXFlags As %Integer [ InitialExpression = {$$$SAXFULLDEFAULT+$$$SAXVALIDATIONPROHIBITDTDS} ];

/// This property should be set to an instance of %XML.SAX.EntityResolver OR a user-defined
/// subclass IF the default EntityResolver is not required.
Property EntityResolver As %XML.SAX.EntityResolver;

/// The %Net.HttpRequest instance to be used for all web requests for
/// schema documents.  This property may optionally be set by the caller
/// in order to specify %Net.HttpRequest properties Username, ProxyPort, etc.
Property HttpRequest As %Net.HttpRequest [ Internal ];

/// Control display of debugging info
///  Debug level.  Additional output for levels >0.
///  Default is 0.
Property Debug As %Integer [ InitialExpression = 0 ];

/// Control test mode.
/// If true, make output repeatable for unit test, e.g. no dates.
/// Default is false(0).
Property TestFlag As %Boolean [ InitialExpression = 0 ];

/// Integer tree id within ^IRIS.Temp
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property Tree As %Integer [ Internal ];

/// Number of elements in <property>ElTree</property>.
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property ElCount As %Integer [ InitialExpression = 0, Internal ];

/// Index of named tags used to resolve refs:<BR>
/// ElIndex(name) = elno<BR>
/// This gets built by the Parser
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property ElIndex As %String [ Internal, MultiDimensional ];

/// Index of class XML type to # in class tree
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property TypeIndex As %String [ Internal, MultiDimensional ];

/// Index of class name to # in class tree
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property ClassIndex As %String [ Internal, MultiDimensional, Private ];

/// Count of how many times we've found a given class name
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property ClassCount As %Integer [ Internal, MultiDimensional, Private ];

/// Index of class # in order of who-uses-who
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property ClassOrder As %String [ Internal, MultiDimensional, Private ];

/// List of element sources.  The src field is index into this array.
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property ElementSrc As %String [ Internal, MultiDimensional ];

/// Index into all top level elements.
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property Elements As %Integer [ Internal, MultiDimensional ];

/// Name of current package, if any.
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property CurrentPackage As %String [ Internal, Private ];

/// The current namespace, if any.
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property CurrentNamespace As %String [ Internal, Private ];

/// Name of default package, if any.
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property DefaultPackage As %String [ Internal ];

/// List of elements that have already been processed
/// (used for cycle detection)
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property Visits As %String [ Internal, MultiDimensional, Private ];

/// The output trace file (if any) used for debugging.
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property TraceFile As %String [ Internal, Private ];

/// The subscript used if this schema has been saved to disk.
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property SchemaId As %String [ Internal ];

/// Info on XML namespaces:<BR>
/// NSInfo(#,"uri")= uri<BR>
/// NSInfo(#,"Package")= package<BR>
/// NSInfo(#,"msdata")= 1, if Microsoft dataset in namespace<BR>
/// NSInfo(#,"ElementQualified")= 1, if elementFormDefault  = true<BR>
/// NSInfo(#,"AttributeQualified")= 1, if attributeFormDefault  = true<BR>
/// NSInfo(#,"Prefix") = fixedprefix
/// NSInfo(#,"NoClassPrefix") = 1 if no prefix because default namespace
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property NSInfo As %String [ Internal, MultiDimensional ];

/// Index of Namespace uri to Namespace #:<BR>
/// NSIndex(uri) = num
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property NSIndex As %String [ Internal, MultiDimensional ];

/// Target namespace for the containing Schema
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property TargetNS As %String [ Internal ];

/// True if multiple targetNamepsace's are defined.
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property MultipleTargetNS As %Boolean [ Internal ];

/// List of include files:
/// an array subscripted by filename and namespace;
/// nodes are set to 1 when they are processed<BR>
/// On Windows, the filename subscript is always lower case.
/// ..Includes(filename,ns) = "" or 1 for include
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property Includes As %String [ Internal, MultiDimensional ];

/// Optional prefix (first part of package name--sans dot-- for all generated classes)
/// If we are reading a WSDL, this gets set from the content handler...
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property ClassPrefix As %String [ Internal ];

/// Set NoClassPrefix=1 to prevent setting ClassPrefix from the WSDL.
Property NoClassPrefix As %Boolean [ Internal ];

/// ElementQualified for no namespace
Property NoNamespaceElementQualified As %Boolean [ Internal ];

/// AttributeQualified for no namespace
Property NoNamespaceAttributeQualified As %Boolean [ Internal ];

/// Class names in upper case
Property namesUpper As %Boolean [ Internal, MultiDimensional ];

/// Class names restricted to max unique length
Property names25 As %Boolean [ Internal, MultiDimensional ];

/// Get elementqualified for the specified namespace
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method GetElementQualified(namespace As %String) As %Boolean [ Internal ]
{
}

/// Get attributequalified for the specified namespace
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method GetAttributeQualified(namespace As %String) As %Boolean [ Internal ]
{
}

/// Add a namespace to our list of known namespaces
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method AddNS(uri As %String, prefix As %String, elementQualified As %Boolean, attributeQualified As %Boolean) [ Internal ]
{
}

///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method %OnNew(initvalue As %RawString) As %Status [ Internal, Private ]
{
}

/// Reset this class instance for reuse.
Method Reset()
{
}

///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method %OnClose() As %Status [ Internal, Private ]
{
}

/// Test if element <var>elno</var> has any sub-elements
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method HasSubElements(elno As %Integer) As %Boolean [ Internal, Private ]
{
}

/// Test if sequence <var>elno</var> contains exactly one element
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method HasSingleSubElement(elno As %Integer) As %Boolean [ Internal, Private ]
{
}

/// Deprecated command line interface to Schema Wizard
/// Use Process method
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod ProcessSchema(LocationURL As %String, Package As %String, Debug As %Integer = 0, TestFlag As %Boolean = 0, MakeRelationships As %Boolean = 1, MakeNamespace As %Boolean = 0, Output Reader As SchemaReader, compileFlags As %String) As %Status [ Deprecated, Internal ]
{
}

/// Command line interface to Schema Wizard
/// LocationURL is the filename or the URL of an XML schema.
/// Package is the name of the package in which the method should place the generated classes.
/// Features is a Multidimensional Array to Store Additional Settings.
/// The possible nodes are as follows:<br>
///    Features("DEFAULTSEQUENCE") If this node exists, the wizard does not set the XMLSEQUENCE parameter in the generated classes.<br>
///    Features("JAVA") If this node exists, each class includes a Java projection.<br>
///    Features("NOSEQUENCE") If this node exists, the wizard sets the XMLSEQUENCE parameter to 0 in the generated classes.<br>
///    Features("POPULATE") If this node exists, each class extends %Populate in addition to %XML.Adaptor.<br>
///    Features("SQLCOLUMNS") If this node exists, each class property specifies a value for the SqlColumnNumber keyword, so that the properties have the same order in SQL that they have in the schema.<br>
///    Features("IGNORENULL") If this node is set, the XMLIGNORENULL parameter is set to this value for each class.
///    Features("BINARYASSTREAM") If this node exists, then use %Stream.GlobalBinary for base64Binary type
Method Process(LocationURL As %String, Package As %String = "Test", ByRef Features As %String) As %Status
{
}

/// Command line interface to create an internal XSchema format file from an XML schema.<br>
/// locationURL is the location of the input XML schema.<br>
/// filepath is the file path for the new file containing the XSchema.
Method XSchema(locationURL As %String, filepath As %String) As %Status
{
}

/// Fix classname of element references
/// Cannot set classname until this late to allow class to be created.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method FixElementRefClassName() [ Internal, Private ]
{
}

/// Loop over the initial parsetree and fix up any refs
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method FixReferences() [ Internal, Private ]
{
}

/// Invoked by the Wizard to find all referenced namespaces
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method PreParseSchema(filename As %String, url As %String = "", ByRef multipleNamespace As %Boolean, ByRef noSchema As %Boolean) As %Status [ Internal ]
{
}

/// Invoked by the EnsLib.EDI.XML.SchemaXSD:Import() method...
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method PreParseLocation(location As %String) As %Status [ Internal ]
{
}

/// Invoked by the Wizard to actually create classes...
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ParseSchema(filename As %String, url As %String = "") As %Status [ Internal ]
{
}

/// Process the include and/or import files for this schema
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessIncludes() As %Status [ Internal, Private ]
{
}

///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method Trace(method As %String, elno As %Integer = "", cls As %Integer = "", prop As %Integer = "") [ Internal, Private ]
{
}

///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method TraceMsg(msg As %String, elno As %Integer = "") [ Internal, Private ]
{
}

/// Save the class tree to disk; Returns the SchemaId
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method Save() As %String [ Internal ]
{
}

/// Retreive a class tree from disk
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod Open(id As %String) As SchemaReader [ Internal ]
{
}

/// Setup a class tree after open from disk
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method OpenSetup(id As %String) As SchemaReader [ Internal ]
{
}

/// Delete a class tree from disk
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod Delete(id As %String) [ Internal ]
{
}

/// Set class type for XML Schema Wizard
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method WizardSetClassType(cls As %String, type As %String) [ Internal ]
{
}

/// Add an index to a property for the XML Schema Wizard
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method WizardAddIndex(cls As %String, pname As %String) [ Internal ]
{
}

/// Remove a class from the list of classes
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method RemoveClassFromList(key As %String)
{
}

/// Get element given namespace and element name for WSDL reader
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method GetCacheElement(pNamespace, pTypeName, ByRef pCacheType, ByRef pTypeNamespace As %String, Output elno) As %Status [ Internal ]
{
}

/// Get ObjectScript type given namespace and typename for WSDL reader
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method GetCacheType(pNamespace, pTypeName, ByRef pCacheType, Output key) As %Status [ Internal ]
{
}

/// Check the depth of the ELTree (for debugging)
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method CheckDepth() [ Internal, Private ]
{
}

/// There may be duplicate class definitions; this
/// method will remove the extras.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method RemoveDuplicateClasses() As %Boolean [ Internal, Private ]
{
}

/// Correct names of any potential duplicate classes who were created with a name
/// containing a "/"
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method CorrectClassNames() [ Internal, Private ]
{
}

/// Test if the two classes are duplicate
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method AreClassesDuplicate(clsA As %Integer, clsB As %Integer) As %Boolean [ Internal, Private ]
{
}

/// Process Microsoft .Net datasets
/// Compute Rowspec and remove classes.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessDatasets() [ Internal, Private ]
{
}

/// Remove any empty classes created for elements defined by type reference.
/// For use only by the SOAP wizard
Method RemoveTemporaryClasses() [ Internal ]
{
}

/// Loop over class tree and try to simplify it.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ReduceClasses() [ Internal, Private ]
{
}

/// Loop over class tree and try to simplify pair classes for arrays.
Method ReducePairClasses() [ Internal, Private ]
{
}

/// Loop over potential classes:
/// Fix any class or member names that are too long...
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method FixClassNames(fixTemporary As %Boolean = 0) As %Status [ Internal, Private ]
{
}

/// Fix references to a class
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method FixClassReferences(classKey As %Integer, newClassName As %String) [ Internal, Private ]
{
}

/// Loop over potential classes:
/// Remove NAMESPACE parameter from classes
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method RemoveClassNamespace() As %Status [ Internal, Private ]
{
}

/// Test if a class has any subclasses
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method HasSubClasses(cls As %Integer, tempTest As %Boolean = 0) As %Boolean [ Internal, Private ]
{
}

/// Set class type: persistent, serial or registered
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method SetClassType(cls As %Integer) [ Internal ]
{
}

/// Make property name different than the specified name
Method MakeNameUnique(cls As %Integer, prop As %Integer, ByRef name As %String, ByRef namesUpper)
{
}

/// Loop over classes for final fixups.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method FixupClasses() [ Internal, Private ]
{
}

/// Determine ultimate super type of a datatype class
Method GetSuperDatatype(type As %String, Output hasXSDToLogical) As %String [ Internal ]
{
}

/// Walk the class tree and make sure that all properties are less 32 characters long.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method FixPropertyNames() [ Internal, Private ]
{
}

/// Walk the class tree and change collections into
/// relationships where appropriate.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method FindRelationships(parentChildRelationship As %Boolean, indexRelationship As %Boolean) [ Internal ]
{
}

/// Get a list of all the properties for this class
/// and its super classes
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method FindProperties(cls As %Integer, ByRef proplist, ByRef proporder, removeDuplicates As %Boolean = 0) [ Internal ]
{
}

/// Mark classes with Compile After as required to have datatypes compile first.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method FindCompileAfter() [ Internal, Private ]
{
}

/// Decorate the class tree
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method BuildClassInfo() [ Internal, Private ]
{
}

/// Display classes to console
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ShowClasses() [ Internal ]
{
}

/// Make the class associated with an top element or type be a SOAP header.
/// This entry point is used by %SOAP.WSDL.Reader to build header classes.
///
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method MakeSOAPHeader(elementNamespace As %String, elementName As %String, isType As %Boolean, use As %String, ByRef parameterType As %String) As %Boolean [ Internal ]
{
}

/// Get a top element in the form that may be used to build
/// an argument list in the form:
///     output(i) = &lt;Name&gt;
///     output(i,"type") = &lt;ObjectScript type&gt;
/// This entry point is used by %SOAP.WSDL.Reader to build document/literal methods.
///
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method GetElementProperties(elementNamespace As %String, elementName As %String, ByRef output, ByRef parameterType As %String, ByRef elno As %String, isType As %Boolean) As %Status [ Internal ]
{
}

/// Add a new class entry to the Class<BR>
/// <var>target</var> is optional target namespace (if not default).
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method AddNewClass(elno As %Integer, name As %String, type As %String, ByRef uri As %String, target As %String = "") As %Boolean [ Internal, Private ]
{
}

/// Convert a schema name to a valid class name
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method MakeClassName(name As %String) [ Internal, Private ]
{
}

/// Convert a schema name to a valid property name
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod MakePropName(name As %String, ByRef xmlname) [ Internal ]
{
}

/// Find the class type (persistent, etc.) for
/// class with key <var>key</var>.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method FindClassType(key As %Integer, ByRef visits As %String) As %String [ Internal ]
{
}

/// Convert an XML type to a class name
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method TypeToClass(itype As %String, ByRef isdt As %Boolean, ByRef xmlname) As %String [ Internal ]
{
}

/// Test if this is type xsd:anyType
Method isAnyType(type As %String) As %Boolean [ Internal, Private ]
{
}

/// Test if this is type %String
Method isString(type As %String) As %Boolean [ Internal, Private ]
{
}

/// Test if this uri is the XML Schema uri
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod IsXMLSchemaNS(uri As %String) As %Boolean [ Internal ]
{
}

/// Convert an XSD datatype to an ObjectScript type.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod XSTypeToClass(type As %String) As %String [ Internal, Private ]
{
}

/// Loop over top level of schema
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessTree() [ Internal, Private ]
{
}

/// Check for cycles in schema
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method CycleCheck(elno As %Integer, msg As %String = "") [ Internal, Private ]
{
}

/// Process topmost elements (children of schema)
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessTopElement(elno As %Integer) [ Internal, Private ]
{
}

/// Get the namespace for a member based on the name
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method GetElementNamespace(elno As %Integer) As %String [ Internal, Private ]
{
}

/// Process elements for a sequence
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessSequence(elno As %Integer, cls As %Integer, choice As %Boolean, containerMinOccurs As %Integer = 1, containerMaxOccurs As %String = 1, mixed As %Boolean = 0) [ Internal, Private ]
{
}

/// Process child elements for a suspected class
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessElement(elno As %Integer, cls As %Integer, prop As %String = "", mixed As %Boolean = 0) [ Internal, Private ]
{
}

/// Create dummy property and mark class as a SOAP array
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method MakeSoapArray(cls As %Integer, pno As %Integer, arraytype As %String) [ Internal, Private ]
{
}

/// Process child elements of an attributeGroup
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessAttributeGroup(elno As %Integer, cls As %Integer) [ Internal, Private ]
{
}

/// Process child elements for a simpleType
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessSimpleType(elno As %Integer, cls As %Integer, prop As %String = "") [ Internal, Private ]
{
}

/// Process child elements for an attribute
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessAttribute(elno As %Integer, cls As %Integer, prop As %String = "") [ Internal, Private ]
{
}

/// Process child elements for a simpleContent
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessSimpleContent(elno As %Integer, cls As %Integer, prop As %String = "") [ Internal, Private ]
{
}

/// Process child elements for a complexContent
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessComplexContent(elno As %Integer, cls As %Integer, prop As %String = "") [ Internal, Private ]
{
}

/// Process elements for a restriction
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessRestrictList(elno As %Integer, parentElno As %Integer, cls As %Integer, prop As %String = "", ByRef enumSep As %String) [ Internal, Private ]
{
}

Method DetermineEnumSeparator(elno As %Integer) As %String
{
}

/// Process an annotation element
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method ProcessAnnotation(elno As %Integer, cls As %Integer, prop As %String = "") [ Internal, Private ]
{
}

/// Get package part of class name.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method getPackage(classname As %String) As %String [ CodeMode = expression, Internal, Private ]
{
}

}
