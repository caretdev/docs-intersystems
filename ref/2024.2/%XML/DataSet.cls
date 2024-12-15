/// <p>This class represents a .NET DataSet, which is an XML-enabled dataset that you can use in
/// SOAP messages when both the web service and client are based on InterSystems IRIS or when one
/// side uses .NET. Other SOAP vendors do not support datasets and cannot process a WSDL generated
/// by a web service that uses them.</p>
///
/// <p>The <class>%XML.DataSet</class> only needs to be instantiated using <method>%New</method>
/// and then returned as the result of a WebService.  The Execute method should not be called.
/// The values of the result set will automatically be retrieved by the WebService
/// mechanism and formatted in XML as a .NET DataSet. </p>
///
/// <p>If arguments must be passed to the query for its proper execution, then the <method>SetArgs</method>
/// method may be used.</p>
///
/// <p>The query for the DataSet may be specified either at runtime or at compile time as parameters of a subclass of
/// %XML.DataSet.  If the query is specified at runtime, then a .NET untyped DataSet is returned by the SOAP support.
/// If the query is specified by a compile time parameter, then a .NET typed DataSet is returned by the
/// SOAP support.</p>
///
/// <p>If you use this class as the value returned by a web method, note that this class is designed to work only
/// with SoapBindingStyle=document and SoapBodyUse=literal, so be sure to set those keywords.</p>
///
/// <p>Untyped DataSet</p>
/// <p>You can return a <class>%XML.DataSet</class> object as an untyped DataSet from a WebService as follows:</p>
/// <example language="CLS!MEMBER">
/// ClassMethod GetByName(prefix As %String) As %XML.DataSet [ WebMethod ]
/// {
///     // Return the results of the Person class' ByName query.
///     Set result=##class(%XML.DataSet).%New("Sample.Person:ByName")
///     Do result.SetArgs(prefix)
///     Quit result
/// }
/// </example>
/// <p>Note you can bind a <class>%XML.DataSet</class> object to a query by either
/// a) setting the <property>ClassName</property> and <property>QueryName</property>
/// properties or b) passing a string containing the class name and query name (separated
/// by a <b>:</b>) to the <nobr><b>%New</b></nobr> method.
///
/// <p>Dynamic SQL
/// <p>You can use the <class>%XML.DataSet</class> class to execute dynamic SQL queries
/// using the system-provided <nobr><var>%DynamicQuery:SQL</var></nobr> query. In this case, use the
/// <method>Prepare</method> method to supply the text of the query. For example, execute the
/// following to return an untyped DataSet:
///
/// <example language="CLS!MEMBER">
/// ClassMethod GetBySalary(salary As %Integer) As %XML.DataSet [ WebMethod ]
/// {
///     Set result=##class(%XML.DataSet).%New()
///     Do result.Prepare("SELECT ID, Name, Salary FROM Employee WHERE Salary > ?")
///     Do result.SetArgs(salary)
///     Quit result
/// }
/// </example>
///
/// <p>Typed DataSet
/// <p>To return a typed DataSet, create a subclass of <class>%XML.DataSet</class> with the NAMESPACE,
/// CLASS and QUERY parameters specified.  Assume that the subclass is called MyTypedDataSet, then
/// the following code returns a typed DataSet:
///
/// <example language="CLS!MEMBER">
/// ClassMethod GetByName(prefix As %String) As MyTypedDataSet [ WebMethod ]
/// {
///     // Return the results of the Person class' ByName query.
///     Set result=##class(MyTypedDataSet).%New()
///     Do result.SetArgs(prefix)
///     Quit result
/// }
/// </example>
///
Class %XML.DataSet Extends (%Library.ResultSet, %CSP.Page, %XML.Adaptor) [ Inheritance = right, System = 3 ]
{

/// Use "DefaultDataSet" as the default DataSet name for untyped DataSets.
/// Use the subclass name as the default DataSet name for typed DataSets.
Parameter XMLNAME;

/// Use "DataSet" as the type.
Parameter XMLTYPE;

/// The XML namespace for typed DataSets
Parameter NAMESPACE;

/// The class name that contains the query for typed DataSet
Parameter CLASSNAME;

/// The query name for typed DataSet
Parameter QUERYNAME;

/// LOCATION - Should be the URL which is the location of the DataSet schema.
/// The url may be absolute or relative to the schema request URL..
Parameter LOCATION;

/// Defines the content type of the http schema request
/// Should not be overridden.
Parameter CONTENTTYPE [ Internal ] = "text/xml";

/// If DATAONLY is set to true (=1), then the schema and diffgram will
/// not be included in dataset XML output.
Parameter DATAONLY = 0;

/// The name of the DataSet being returned.  Default set in %OnNew.
Property DataSetName As %String(TRUNCATE = 1);

/// True if the data set is to be written in Microsoft DiffGram format.
Property DiffGram As %Boolean [ InitialExpression = 1 ];

/// True if the data set is to be written preceded by its schema.
/// Default is 1 for diffgram, else 0.
Property NeedSchema As %Boolean;

/// True if the dataset is to contain only a diffgram element if there are no rows.
/// The default is to have an empty element with the name of the dataset inside the diffgram element.
Property WriteEmptyDiffgram As %Boolean;

/// CaseSensitive is Boolean property which corresponds to the Microsoft CaseSensitive dataset property.
Property CaseSensitive As %Boolean [ InitialExpression = 0 ];

/// Tree containing Import DataSet
Property ImportTree As %Integer [ Internal, Private ];

/// Container node of Import DataSet
Property ImportNode As %String [ Internal, Private ];

/// Childlist for container node of Import DataSet
Property ImportNodeChildlist As %String [ Internal, Private ];

/// Current child record of Import DataSet
Property ImportChild As %String [ Internal, Private ];

/// Chikdkist for current child record of Import DataSet
Property ImportChildlist As %String [ Internal, Private ];

/// First child record of Import DataSet
Property ImportTopChild As %String [ Private ];

/// Child list for first child record of Import DataSet
Property ImportTopChildlist As %String [ Private ];

/// The %XML.Document that holds the XML document tree.
/// Reference kept here to prevent the tree from being deleted
///   while this dataset is still processing the XML tree.
Property Handler As %XML.Document [ Internal, Private ];

/// Column information the following form indexed by column number:<br>
///   $lb(name,xsdType,columnClass,columnProperty,clientType,ignoreNull)
Property Cols [ Internal, MultiDimensional ];

/// XSDToLogical and LogicalToXSD existence by xsdType as HasXSDMethods(xsdType,methodName)
Property HasXSDMethods [ Internal, MultiDimensional ];

/// Argument for %ResultSet.Execute method.
/// Use of this property by SetArgs is deprecated.
Property ExecuteArgs [ Internal, MultiDimensional, Private ];

/// Namespace for typed DataSet or "" if untyped.
Property Namespace As %String(TRUNCATE = 1) [ Internal ];

/// Indicates that this is a typed dataset
Property IsTypedDataset As %Boolean [ Internal, Private ];

/// Count row number for import.
Property RowNum As %Integer [ Internal, Private ];

Method %OnNew(initvalue As %String) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

/// Set the arguments to be used for the %ResultSet.Execute.
Method SetArgs(args...) [ ServerOnly = 1 ]
{
}

/// Write the xml schema for the typed DataSet.
ClassMethod OnPage() As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Get the import elements required for a schema.  XMLGetSchemaImports is used to get the
/// import elements needed for %XML.DataSet in a WSDL file.<br>
/// The <var>schema</var> is is returned as a local array of where each node represents a
/// required import:<br>
///     imports(schemaNamespace)=schemaLocation<br>
/// where schemaLocation may be "" for commonly known schemas such as http://www.w3.org/2001/XMLSchema
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.<br><br>
ClassMethod XMLGetSchemaImports(ByRef imports, ByRef classes) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

/// Write the XML schema for the data rows.
Method WriteSchema() As %Status [ ServerOnly = 1 ]
{
}

/// Write the data rows as XML with optional preceding schema.
Method WriteXML(top As %String, diffGram As %Boolean = "", writeSchema As %Boolean = "", namespaces As %XML.Namespaces, local As %Boolean, ignoreNull As %Boolean) As %Status [ ServerOnly = 1 ]
{
}

/// No DTD available for DataSet
ClassMethod XMLDTD(top As %String, format As %String, input As %Boolean, ByRef dtdlist) As %Status [ ServerOnly = 1 ]
{
}

/// Suppress normal XML meta data
Parameter XMLNOMETADATA [ Internal ] = 1;

/// Suppress normal XML meta data<p>
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
ClassMethod %XMLGenerate() [ Internal, ServerOnly = 1 ]
{
}

/// Export data rows preceded by a schema that describes the rows.
/// Serialize an XML enabled class as an XML document and write
/// it to the current device.<br>
/// Call XMLExport that is inherited from %XML.Adaptor in order to export daatset as XML.<br>
///
/// <var>top</var> is the optional tag to be used for the top-level tag.<p>
/// **********<br>
/// **********<br>
/// All the other arguments are for internal use only and may change<br>
/// **********<br>
/// **********<br>
Method XMLExportInternal() As %Status [ Internal, ProcedureBlock = 0, ServerOnly = 1 ]
{
}

/// Import of a .Net format dataSet used by %XML.Reader and SOAP support.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.<br><br>
Method XMLImportInternal() As %Status [ Internal, ProcedureBlock = 0, ServerOnly = 1 ]
{
}

/// Import of a .Net format dataSet used by %XML.Reader and SOAP support.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.<br><br>
Method ReadXML(handler As %XML.Document, node As %Integer, ignoreNull As %Boolean) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Internal method to parse the schema contained in a .Net format dataset.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.<br><br>
Method ParseSchema(tree As %Integer, node As %String, nodeChildlist As %String, ByRef colnames, ByRef types, ByRef clientTypes) As %Status [ Internal ]
{
}

/// Advance the result set cursor to the next row in the XML tree.
/// Returns 0 if the cursor is at the end of the result set.
Method Next(ByRef sc As %Status) As %Integer [ ServerOnly = 1 ]
{
}

/// Returns the number of columns in the result set.
/// Each row may be different for %XML.DataSet
Method GetColumnCount() As %Integer [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Returns the name of column <var>n</var> in the result set.
/// Each row may be different for %XML.DataSet
Method GetColumnName(n As %Integer) As %String [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Returns the column header for column <var>n</var> in the result set.
/// Each row may be different for %XML.DataSet
Method GetColumnHeader(n As %Integer) As %String [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Returns the type of column <var>n</var> in the result set where type is an integer (CLIENTDATATYPEENUM) associated with
/// the client datatype. Reference %occName for an explanation of the integer values.
/// If the type cannot be determined, 0 (zero) is returned
Method GetColumnType(n As %Integer) As %Integer [ CodeMode = expression, ProcedureBlock = 1 ]
{
}

/// If this query contains an object Id then this method opens an object with this Id
/// and returns the object reference.  Otherwise it returns a null object reference.
Method GetObject() As %RegisteredObject [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Resets the current result set cursor to the beginning of the dataset.
/// This method only works for datasets which have been created by reading XML input.
Method ResetXML() As %Status [ ServerOnly = 1 ]
{
}

/// Closes the current result set cursor.
Method Close() As %Status [ ServerOnly = 1 ]
{
}

/// Generate hard coded schema that is used for DataSet
ClassMethod XMLSchema(top As %String, format As %String, namespacePrefix As %String = "", input As %Boolean, refOnly As %Boolean, ByRef schema) As %Status [ ServerOnly = 1 ]
{
}

/// Override for %XML.DataSet to indicate that the schema type will be in the
/// namespace of the referencing class.
ClassMethod XMLSchemaNamespace() As %String [ Internal ]
{
}

/// Override for %XML.DataSet to add a complexType to the schema that is respresented by an <class>%XML.Schema</class> instance.<br>
/// <var>schemaInstance</var> is the %XML.Schema class instance that is used to build the schema.
ClassMethod XMLSchemaType(schemaInstance As %XML.Schema, node As %XML.Node, top As %String = "", encoded As %Boolean, summary As %Boolean = 0, input As %Boolean = 0, refOnly As %Boolean = 0) As %Status [ Internal ]
{
}

/// Fill in Cols property with a node per column: $lb(name,xsdType,columnClass,columnProperty,clientType,ignoreNull)
Method SetColTypeInfo(ignoreNull As %Boolean = 1) [ Internal, Private ]
{
}

/// Call property method (logicalToXSD or XSDToLogical) for the specified column.
/// Column is specified by a column list: $lb(name,xsdType,columnClass,columnProperty,ignoreNull)
Method RunPropertyMethod(col As %List, method As %String, value As %String) As %String
{
}

}
