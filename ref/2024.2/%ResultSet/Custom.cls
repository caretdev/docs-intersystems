/// <p>
/// <b>This class has been superseded.</b> It will remain for compatibility with existing code and samples.
/// We recommend using <class>%SQL.CustomResultSet</class>.
/// </p>
Class %ResultSet.Custom Extends %Library.IResultSet [ Abstract, System = 4 ]
{

Method %OnNew(ByRef returnError As %SYSTEM.Error, pRuntimeMode As %Integer = {$zu(115,5)}) As %Library.Status [ CodeMode = generator, Final, GenerateAfter = %OpenCursor ]
{
}

/// %Get(colname)
/// 	Get the value of the property whose column name is colname.
Method %Get(colname As %String = "") As %Library.String [ CodeMode = generator, ProcedureBlock = 1 ]
{
}

/// %GetData(<column number>)
///
/// 		Returns the value of the column referenced by colnbr. Object values are not swizzled automatically.
Method %GetData(colnbr As %Integer = 0) As %Library.String [ CodeMode = generator ]
{
}

/// Fetch and send a series of rows for the ODBC/JDBC server. For internal use only.
Method %SendODBC() As %Library.Integer [ CodeMode = generator, ProcedureBlock = 0 ]
{
}

/// Fetch and send a series of rows for the ODBC/JDBC server. For internal use only.
Method %SendObjects() As %Library.Integer [ CodeMode = generator, Internal ]
{
}

Method %ExecuteParametersGet() [ CodeMode = generator, GenerateAfter = %Execute ]
{
}

/// Override the %Metadata property's Get() method.
Method %MetadataGet()
{
}

/// Get the serialized %Metadata property value. Used by both the instance method %MetadataGet and the %PrepareMetaData class method.
ClassMethod %GetSerializedMetaData() [ CodeMode = generator ]
{
}

/// User written code to open the cursor here, you may also add arguments to the method
Method %OpenCursor() As %Library.Status [ Private ]
{
}

/// %Prepare()
///
/// This method is different for each type of result set class. This method has two tasks. First, instantiate the correct
/// concrete result set class. Think of the first parameter, queryId, as being an "index key value" that is used to lookup
/// the correct query implementation. For non-cached (static) queries this is simply the name of the class that implements
/// the query, i.e. the %IResultSet interface. The second task is to prepare the resulting object for data
/// retrieval by the caller which is done in %OnNew. The assumption is that if the query requires any parameters
/// then the actual arguments are all literal or public variables.
///
/// queryId		the concrete subclass of %IResultSet that implements the desired query. For dynamic cached results this value
/// 			is generally the query text that can be parsed, a hashed value computed and the cached result implementation class
/// 			looked up in the query cache index.
/// %returnError	If an error occurs this is returned by reference and is a %SYSTEM.Error object
///                 with properties set to describe information about the error
/// %importPackages	This is a comma delimited list of packages to import. This is only relevant if the result set implementation is
/// 				generated and the query source might include unqualified names. The import packages list is used to resolve package/schema names for
/// 				unqualified names.
ClassMethod %Prepare(queryId As %String(MAXLEN=""), ByRef %returnError As %SYSTEM.Error, %importPackages As %RawString = "", %args...) As %Library.IResultSet [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// %PrepareMetaData is similar to %Prepare except that no result set is instantiated. This
/// method returns a %ResultSet.MetaData object. Be aware that the implementation of this
/// method might cause the result set to be instantiated but that is up to the result set
/// class itself and no result set is actually returned by this method - only metadata.
///
/// class			This is the custom result set class
///
/// returnError		If an error occurs this is returned by reference and is a %SYSTEM.Error object
///                 with properties set to describe information about the error. %returnError.Status contains the %Status value.
/// importPackages	This is a comma delimited list of packages to import. This is only relevant if the result set implementation is
/// 				generated and the query source might include unqualified names. The import packages list is used to resolve package/schema names for
/// 				unqualified names.
ClassMethod %PrepareMetaData(class As %String(MAXLEN=""), ByRef returnError As %SYSTEM.Error = "", importPackages As %RawString = "") As %ResultSet.MetaData [ CodeMode = generator, GenerateAfter = %MetadataGet ]
{
}

}
