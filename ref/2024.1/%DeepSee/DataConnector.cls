/// Subclasses of this class are used to define DeepSee Data Connectors.<br/>
/// A DataConnnector provides a way to connect an input data source (such as
/// the results of running an SQL query) to an output data sink (such as the dataSource for a DeepSee cube).<br/>
/// You can define the input data source by defining a SourceQuery XData block:
/// <example language="cls!member">
/// XData SourceQuery [ XMLNamespace = "http://www.intersystems.com/deepsee/connector/query" ]
/// {
/// <sql>
/// SELECT %ID,Product,AmountOfSale From MyApp.MyTable
/// </sql>
/// }
/// </example>
/// or, alternatively, you can implement the <method>%OnGetSourceResultSet</method> callback
/// method. This method should create, prepare, and execute an <class>%SQL.Statement</class>
/// and return the resulting ResultSet.<br/>
/// <example language="cls!member">
/// Method %OnGetSourceResultSet(ByRef pParameters, Output pResultSet) As %Status
/// {
/// 	Set tSC = $$$OK
/// 	Set pResultSet = ""
/// 	Try {
/// 		Set tStatement = ##class(%SQL.Statement).%New(,"DEFAULT_SCHEMA")
/// 		Set tSC = tStatement.%Prepare("SELECT %ID,Product,AmountOfSale FROM MyApp.MyClass")
/// 		If $$$ISERR(tSC) Quit
///  		Set pResultSet = tStatement.%Execute()
/// 	}
/// 	Catch(ex) {
/// 		Set tSC = ex.AsStatus()
/// 	}
/// 	Quit tSC
/// }
/// </example>
///
/// The output properties of the Data Connector are defined using the <b>Output</b> XData block.
/// This contains an XML document that describes the set of output properties.<br/>
/// For example:<br/>
/// <example language="cls!member">
/// XData Output [ XMLNamespace = "http://www.intersystems.com/deepsee/connector/output" ]
/// {
/// <connector>
/// <property name="%ID" sourceProperty="ID" displayName="Record ID" />
/// <property name="Product" sourceProperty="Product" displayName="Product name"/>
/// <property name="AmountOfSale" sourceProperty="AmountOfSale" displayName="Amount of sale"/>
/// </connector>
/// }
/// </example>
///
/// A DataConnector is used by creating an instance of it and calling its <method>%Execute</method> method.
/// This returns an instance of <class>%SQL.StatementResult</class> that can be used to read data from
/// the DataConnector.<br/>
/// You can test a DataConnector class by calling its <method>%Print</method> method from the command line
/// or you can view the DataConnector class as a web page.<br/>
/// If you are using a DataConnector class to supply data to a DeepSee cube the cube will take care
/// of executing and fetching data from it.<br/>
/// A DataConnector can override the <method>%OnNextRecord</method> method if it wishes to perform
/// additional logic on data flowing through the connector.<br/>
/// Each DataConnector class is also also a %CSP page; if you view it as a Web Page, you can view a test page
/// for the DataConnector (you must hold Developer privileges to do this).
Class %DeepSee.DataConnector Extends (%CSP.Page, %RegisteredObject) [ Abstract, System = 4 ]
{

/// Set this parameter TRUE (1) if this connector supports "idlist" mode.
/// The implementor is responsible for adding the additional query logic to support this mode.
Parameter SUPPORTSIDLIST As BOOL = 0;

/// Set this parameter TRUE (1) if this connector supports "single" mode.
/// The implementor is responsible for adding the additional query logic to support this mode.
Parameter SUPPORTSSINGLE As BOOL = 0;

/// Set this parameter TRUE (1) if this connector uses a linked (external) table.
/// This is used to determine what form the id restriction used for listings ($$$RESTRICT token) should take.
/// For external tables a more conservative approach, with a limit of 1000 records is used.
/// If you know that your data source is based on a local table, you can set this parameter
/// to 0 and more aggressive id restriction is used with no size limit,
Parameter EXTERNALTABLE As BOOL = 1;

/// This is used to pass input parameters to the generated result set.
Property %parameters [ Internal, MultiDimensional ];

/// Output Result Set object that emits the records to the consumer.
/// This is created by the <method>%Execute</method> method.
Property %outputRecord As %SQL.IResultSet [ Private ];

/// Specify what mode this data connector is in.<br/>
/// Options are "all" (fetch all records), "idlist" (fetch record within a given set of ids),
/// or "single" (fetch one record specified by %singleId).
Property %mode As %String [ InitialExpression = "all", Internal ];

/// If we are in "idlist" mode, this is the name of the cube asking for the listing.
Property %listingCube As %String;

/// If we are in "idlist" mode, this is the name of the table containing the list of ids.
Property %listingTable As %String;

/// If we are in "idlist" mode, this is the key value for the table containing the list of ids.
Property %listingKey As %String;

/// Id of single record to fetch in "single" mode.
Property %singleId As %String;

/// This optional XData definition defines the sql query used to supply data to this
/// data connector.<br/>
/// The columns selected by this query should match the sourceProperty names in this connector's
/// Output definition.
XData SourceQuery [ XMLNamespace = "http://www.intersystems.com/deepsee/connector/query" ]
{
}

/// This XData definition defines the DataConnector output specification.<br/>
XData Output [ XMLNamespace = "http://www.intersystems.com/deepsee/connector/output" ]
{
}

/// Test if this connector supports "idlist" mode.
Method %SupportsIdList() As %Boolean
{
}

/// Test if this connector supports "single" mode.
Method %SupportsSingleMode() As %Boolean
{
}

/// The operating mode of this connector.<br/>
/// Options are "all" (fetch all records), "idlist" (fetch records within a set of ids).
Method %SetMode(pMode As %String) As %Status
{
}

/// Set the name of the listing table and value of the key field that contains
/// the list of ids to use in "idlist" mode.<br/>
/// A query of the form,
/// SELECT _DSsourceId FROM *pTableName* WHERE _DSqueryKey = *pKey*
/// will return the set of ids to use.
Method %SetIdList(pTableName As %String, pKey As %String, pCubeName As %String) As %Status
{
}

/// Set the id of one record to fetch. The Connector must support id values.
/// This is used to fetch one record for updating.
Method %SetSingleId(pID As %String) As %Status
{
}

/// This executes the source result set and returns an instance of it to the consumer.
/// This is used to fetch all data from this connector.
Method %Execute(ByRef pParameters, Output pSC As %Status) As %SQL.StatementResult
{
}

/// Return the source result set that provides the data for this connector.
Method %GetSourceResultSet(ByRef pParameters, Output pResultSet) As %Status [ Final, Internal ]
{
}

/// If implemented, this method is responsible for
/// creating an instance of result set that will serve the data for this connector.<br/>
/// This method should test the current value of the <property>%mode</property> property. If
/// <property>%mode</property> is "idlist", the query is responsible for restricting the set
/// of records the ids in the listing table, <property>%listingTable</property>.
Method %OnGetSourceResultSet(ByRef pParameters, Output pResultSet) As %Status
{
}

/// This method is called by the output result set to fetch each record processed by this connector
/// for cases where there is no source result set (if there is a source result set, this method is not called).<br/>
/// Returns 0 if there are no more records to fetch.<br/>
/// This method should fill in the properties of the <property>%outputRecord</property>
/// object with the data that is to be returned.
Method %OnNextRecord(ByRef pSC As %Library.Status = {$$$OK}) As %Library.Integer
{
}

/// If implemented, this method is called for each record processed by this connector
/// before it is returned to the consumer.<br/>
/// <var>pRecord</var> is the current record.<br/>
/// <var>pSkip</var>, if true, indicates that this record should be skipped.<br/>
Method %OnProcessRecord(pRecord As %DeepSee.Connector.ResultSet, Output pSkip As %Boolean = 0) As %Status [ Abstract ]
{
}

/// Update a particular record via the data connector.
/// The actual work is done via the <method>%UpdateRecord</method> callback method, which
/// is implemented within a subclass.
ClassMethod %UpdateRecord(pID As %String, ByRef pValues, Output pMessage As %String) As %Status [ Final ]
{
}

/// Implement this method in order to update a particular record via the data connector.
ClassMethod %OnUpdateRecord(pID As %String, ByRef pValues, Output pMessage As %String) As %Status
{
}

/// Return the class name of the output result set associated with this connector.
ClassMethod %GetResultSetClass() As %String [ CodeMode = objectgenerator, Final ]
{
}

/// Return an array containing information about this connector.
/// This takes the form:<br/>
/// pInfo = $LB(name,displayName)
ClassMethod %GetConnectorInfo(Output pInfo As %List) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %GenerateConnector ]
{
}

/// Return the SQL statement defined by the SourceQuery XData block, if any.
ClassMethod %GetSQLText() As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GenerateConnector ]
{
}

/// Return an array containing information on the properties of this connector.
/// This takes the form:<br/>
/// pInfo(n) = $LB(name,displayName,type,idKey)<br/>
/// This is used by utilities to discover information about this connector.
ClassMethod %GetPropertyInfo(Output pInfo As %List) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %GenerateConnector ]
{
}

/// If implemented, this method is called by the %GetPropertyInfo method.<br/>
ClassMethod %OnGetPropertyInfo(ByRef pInfo As %String) As %Status [ Abstract, Internal ]
{
}

/// Return an array containing information on the id key field(s) for this connector, if any.
/// This takes the form:<br/>
/// pKeys(FieldName) = SourceField<br/>
/// This is used by utilities to discover information about this connector.
ClassMethod %GetKeyFields(Output pKeys As %String) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %GenerateConnector ]
{
}

/// Process the model for this connector and create code and additional classes.
ClassMethod %GenerateConnector() As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %OnProcessRecord, Internal ]
{
}

/// Diagnostic method.<br/>
/// Create, execute, and display the data provided by this connector
/// to the terminal.<br/>
/// <var>pParameters</var> is an array of parameters passed along to the <method>%Execute</method> method.
/// <var>pMaxRows</var>, if not "", is the maximum number of records to display. The default is 100.<br/>
ClassMethod %Print(ByRef pParameters, pMaxRows As %Integer = 100) As %Status
{
}

/// Return a checksum based on the current definition of this connector.
/// This allows consumers of this connector to detect if there have been structural changes to it.
ClassMethod %GetVersion() As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GetPropertyInfo, Internal ]
{
}

/// Return an SQL expression that tests the current idlist restrictions, if any.
/// This expression can be used within an SQL WHERE statement.
/// This is used to substitute any $$$RESTRICT values within a connector SQL statement.
Method %GetRestrictionClause(Output pClause As %String) As %Status
{
}

/// Draw the test page.
ClassMethod OnPage() As %Status
{
}

/// Write out all data in JSON format.
ClassMethod %ToJSON(ByRef pParameters) As %Status
{
}

}
