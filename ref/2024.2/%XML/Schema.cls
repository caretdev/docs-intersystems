/// The <class>%XML.Schema</class> controls creation of an XML Schema from InterSystems IRIS.
/// It generates a complete XML document that contains the schema including the &lt;?xml&gt; tag.
/// XML types are added to the schema by using the <method>AddSchemaType</method> method.
/// The schema is build up in an XML DOM by <method>AddSchemaType</method> and may later
/// be output using %XML.Writer.  The <method>DocumentNode</method> or <method>Tree</method> methods of the
/// <class>%XML.Writer</class> class can be used to output the schema.<br>
///
/// XML namespace handling is for the most part automatic.
/// <class>%XML.Schema</class> adds namespaces for which %XML.Writer then automatically
/// creates prefixes for the XML output as needed. The XML namespaces for which schemas
/// are created are listed in the Namespaces property which is a list of strings.
/// The GetSchema method is used to get the XML DOM node for a namespace's schema.<br>
///
/// The following example can be executed in the SAMPLES namespace.<br>
///
/// <example>
/// 	; Get %XML.Schema instance.
/// 	set schema=##class(%XML.Schema).%New()
/// 	set namespace="http://tempuri.org/ISC/Samples"
/// 	set schema.DefaultNamespace=namespace
/// 	; Get %XML.Writer instance.
/// 	set writer=##class(%XML.Writer).%New()
/// 	set writer.Indent=1
/// 	do writer.AddSchemaNamespace()
/// 	do writer.AddNamespace(namespace,"sample")
/// 	; Add Company.  Note that referenced types are also added.
/// 	set status=schema.AddSchemaType("Sample.Company")
/// 	if $system.Status.IsError(status) do $system.Status.DisplayError(status) quit
/// 	; Add Vendor.
/// 	set status=schema.AddSchemaType("Sample.Vendor")
/// 	if $system.Status.IsError(status) do $system.Status.DisplayError(status) quit
/// 	; Verify that we have just our expected namespace.
/// 	; This is included for just for illustration.
/// 	if (schema.Namespaces.Count()'=1) || (schema.Namespaces.GetAt(1)'=namespace) {
/// 		write !,"Unexpected namespace found",!
/// 		write !,"List Of Namespace: ",!
/// 		for i=1:1:schema.Namespaces.Count() {
/// 			write "    ",schema.Namespaces.GetAt(i),!
/// 		}
/// 		write !
/// 		quit
/// 	}
/// 	; Output the schema.
/// 	set status=writer.DocumentNode(schema.GetSchema(namespace))
/// </example>
///
/// %XML.Schema automatically adds import elements to the generated schema.
/// It is the responsibility of the user code to
/// use the DefineLocation method to define the schemaLocation.
/// See the following example of use DefineLocation for multiple namespaces:
///
/// <example>
///   // className is the name of a class which references classes defined in
///   // multiple namespaces.  For example: className="test.A" in namespace "urn:testA",
///   // test.A references test.B (in namespace "urn:testB") and test.C (in namespace "urn:testC").
///   try {
/// 		#; get a schema writer
/// 		set schemaWriter = ##class(%XML.Schema).%New()
/// 		set sc = schemaWriter.AddSchemaType(className)
/// 		if ($$$ISOK(sc)) {
/// 			set namespaces = schemaWriter.Namespaces
/// 			for i=1:1:namespaces.Count() {
/// 				set ns=namespaces.GetAt(i)
/// 				// set file path according to application dependent formula
/// 				set locations(ns)="c:\temp\"_$piece(ns,":",2)_".xml"
/// 				do schemaWriter.DefineLocation(ns,locations(ns))
/// 			}
/// 			for i=1:1:namespaces.Count() {
/// 				set ns=namespaces.GetAt(i)
/// 				set schema = schemaWriter.GetSchema(ns)
/// 				set writer = ##class(%XML.Writer).%New()
/// 				do writer.OutputToFile(locations(ns))
/// 				set writer.Indent = 1
/// 				set sc=writer.DocumentNode(schema)
/// 				If $$$ISERR(sc) do $system.OBJ.DisplayError(sc) Quit
/// 				do writer.Reset()
/// 			}
/// 		} else {
/// 			do $system.OBJ.DisplayError(sc)
/// 		}
/// 	  } catch(tException) {
/// 		do $system.OBJ.DisplayError(tException.AsStatus())
/// 	  }
/// </example>
Class %XML.Schema Extends %RegisteredObject [ System = 3 ]
{

/// <property>DefaultNamespace</property> is the XML namespace to use
/// for any classes that do not have the NAMESPACE parameter
/// specified.  If the NAMESPACE parameter is specified for a class,
/// then the namespace specified in the class is always used.
Property DefaultNamespace As %String;

/// If <property>IncludeDocumentation</property> is true, then the class and property
/// comments are included in the schema as <xs:documentation> elements.
/// The default is to include the documentation.
Property IncludeDocumentation As %Boolean [ InitialExpression = 1 ];

/// If <property>AllowRedundantArrayName</property> is true, then an array name that is used for an ObjectScript list
/// or a pair type name that is used for an ObjectScript array will be allowed to have a type name = to the item name.<br>
/// <br>
/// The normal format of an array name for a List is ArrayOf<item name><type name>.
/// If <item name>=<type name>, then <type name> is not appended unless AllowRedundantArrayName is true.<br>
/// <br>
/// The normal format of an array name for an Array is ArrayOf<item name>PairOf<key name><type name>.
/// If <key name>=<type name>, then <type name> is not appended unless AllowRedundantArrayName is true.
Property AllowRedundantArrayName As %Boolean;

/// suppressDocumentation is a one class only override of IncludeDocumentation.
Property suppressDocumentation As %Boolean [ Internal, Private ];

/// Document to hold the schemas that we are creating.
/// The document consists of a root element that contains all the schemas as it's children.
/// This property should not be set by the caller.
Property Document As %XML.Document [ Internal ];

/// List of referenced namespaces
///    Namespaces = count of namespaces defined
///    Namespaces(namespaceIndex)=namespace
Property Namespaces As %ListOfDataTypes;

/// To suppress namespace handling in the schema, set NoNamespace=1.
/// Used to support old XMLSchema method.
Property NoNamespace As %Boolean [ Internal ];

/// If NoNamespace = true, then optional prefix to use for referenced XML types.
/// Used to support old XMLSchema method.
Property NamespacePrefix As %String [ Internal ];

Method NamespacePrefixSet(namespacePrefix As %String) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// List of XML elments and types defined for namespace.
/// <property>schema</property> defines the portion of the global for this schema.
///    ^||%xmlName(..schema,namespaceIndex,element,name)=$lb(class,encoded,input,summary)
/// namespaceIndex = index for XML namespace
/// index = order of definition within namespace
/// element = true for element with inline complexType, false for complexType
/// class = class name for "c" or "e", otherwise base type.
/// name = name of XML type/element
/// encoded = "e" for encoded or "" for literal
/// input = 1 or 0
/// summary = 1 or 0
Property schema As %Integer [ Internal, Private ];

/// The SOAP service name for a web service with SOAPBINARY=1 specified.
Property ServiceName As %String [ Internal ];

/// Index for each namespace.
/// namespaceIndices(namespace)=namespaceIndex
Property namespaceIndices As %String [ Internal, MultiDimensional, Private ];

/// Schema ElementQualified for each namespace.
/// namespaceElementQualified(namespace)=ElementQualified
Property namespaceElementQualified As %Boolean [ Internal, MultiDimensional, Private ];

/// Schema AttributeQualified for each namespace.
/// namespaceAttributeQualified(namespace)=AttributeQualified
Property namespaceAttributeQualified As %Boolean [ Internal, MultiDimensional, Private ];

/// Schema encoded for each namespace.
/// namespaceEncoded(namespace) = 1 for SOAP 1.1 encoded and 2 for SOAP 1.2 encoded
Property namespaceEncoded As %Integer [ Internal, MultiDimensional, Private ];

/// Schema node for each namespace.
/// namespaceSchema(namespace)=schema node id
Property namespaceSchema As %Integer [ Internal, MultiDimensional, Private ];

/// Namespaces which are imported by each namespace:
///     namespaceImport(namespaceIndex,importNamespace)=location
/// namespaceImport(namespaceIndex)=1 if the schema has already had import ele ments added.
Property namespaceImport As %String [ Internal, MultiDimensional, Private ];

/// Location of import for each namespace:
///     locations(importNamespace)=location
Property locations As %String [ Internal, MultiDimensional, Private ];

/// Initialize schema index and schema document on constuction of object,
/// <property>rootName</property> is the name used for the dummy root element
/// in the schema document.
Method %OnNew(rootName As %String) As %Status [ ServerOnly = 1 ]
{
}

Method %OnClose() As %Status [ ServerOnly = 1 ]
{
}

/// Add a complexType to the schema.
///
/// <var>class</var> is the name of the class which corresponds to the complexType.<br>
///
/// <var>top</var> is the optional override of the type name.<br>
///
/// <var>format</var> is the parameter formatting type ("literal", "encoded" or "encoded12") to
/// be used for this object.  In addition, the value "element" is the same as
/// "literal" formatting with an element at the top level.  The default value for <var>format</var> is ""
/// which currently is the same as the "literal" formatting, but may be a
/// unique encoding in the future.<p>
///
/// <var>summary</var>=true if summary type is to be created.
///
/// <var>input</var>=true means that the schema for the input XML will be generated,
/// otherwise the schema for the output XML will be generated.  The default is
/// <var>input</var>=false.  Normally, this argument is not relevant since the all properties
/// of a class participate in input and output.<br>
///
/// <var>refOnly</var>=true means that only the portions of the schema for
/// referenced types are generated.  The schema for this class is not generated.
/// Default is <var>refOnly</var>=false that generates the entire schema.<br>
Method AddSchemaType(class As %String, top As %String = "", format As %String, summary As %Boolean = 0, input As %Boolean = 0, refOnly As %Boolean = 0) As %Status [ ServerOnly = 1 ]
{
}

/// Define a pair type to be used for ObjectScript arrays
Method SchemaPair(node, type, xsdtype, pairtype, choiceitem, bsummary, object, xmlkeyname, NotSummary, summaryTest, xmlsummary, membercat, namespace, classarray) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// Define a simpleType
Method SchemaSimpleType(node, name, type, xsdtype, valuelist, facets) [ Internal, Private, ServerOnly = 1 ]
{
}

/// Define a property element
Method SchemaElement(node, class, type, property, xmlname, classxmlname, xsdtype, xmlkeyname, choiceitem, substitutiongroup, object, mixed, any, nillable, attributes, xmlsummary, bsummary, valuelist, facets, namespace, elementref, refnamespace, top, summary, ByRef classdata) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// Introduce indirection of element to different namespace via ref attribute
Method RefElement(elementref As %Boolean, node As %XML.Node, refnamespace As %String, refname As %String, class As %String, attributes, ByRef status As %Status) As %Boolean [ Internal, Private, ServerOnly = 1 ]
{
}

/// Introduce indirection of attribute to different namespace via ref attribute
Method RefAttribute(node As %XML.Node, refnamespace As %String, refname As %String, class As %String, ByRef status As %Status) As %Boolean [ Internal, Private, ServerOnly = 1 ]
{
}

/// Add attributes expressed as list of 2 member lists: name and value
Method AddAttributes(node As %XML.Node, attributes) [ Internal, Private, ServerOnly = 1 ]
{
}

/// Return true if an element or complexType is already defined matching the arguments.
/// If a match is found, then status indicates if a duplicate definition
/// error is detected.
/// kind is 0 for complexType, 1 for element, 2 for attribute
Method IsItemDefined(ByRef namespace As %String, kind As %Integer, name As %String, class As %String, input As %Boolean, summary As %Boolean, ByRef status As %Status) As %Boolean [ Internal, Private, ServerOnly = 1 ]
{
}

/// Define an XML namespace, if it is not already defined.
Method DefineNamespace(ByRef namespace As %String, class As %String, encoded As %Boolean, defaultElementQualified As %Boolean, defaultAttributeQualified As %Boolean) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// DefineImport defines that a schema is imported by the current namespace's schema.
/// The current schema is defined by the targetNamespace attribute of the schedma node
/// of the node parameter.
/// The namespace to be imported is defined by the importNamespace parameter.
Method DefineImport(importNamespace As %String) [ Internal, Private, ServerOnly = 1 ]
{
}

/// Get the node for the schema element that corresponds to the specified namespace.
Method GetSchema(namespace As %String) As %XML.Node [ ServerOnly = 1 ]
{
}

/// Define the location for import elements for a schema
Method DefineLocation(namespace As %String, location As %String) [ ServerOnly = 1 ]
{
}

/// Define any additional import elements for a schema
/// The imports array is of the form imports(namespace)=location
Method DefineExtraImports(namespace As %String, ByRef imports) [ ServerOnly = 1 ]
{
}

/// Add the necessary import elements to a schema
Method AddImports(node As %XML.Node, namespaceIndex As %Integer, encoded As %Integer) [ Internal, Private, ServerOnly = 1 ]
{
}

/// Implementation of override of XMLSchemaType for %XML.Dataset.
Method AddDatasetSchemaType(class As %String, node As %XML.Node, top As %String = "", encoded As %Boolean, summary As %Boolean = 0, input As %Boolean = 0, refOnly As %Boolean = 0) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Fix up descriptions created from xs:documentation elements.
ClassMethod FixDocumentation(comment As %String) As %String [ Internal ]
{
}

/// Add property element to identify source of schema element.
Method PropertyAnnotation(node As %XML.Node, property As %String, xmlname As %String) [ Internal ]
{
}

}
