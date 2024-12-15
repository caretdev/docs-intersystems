/// <class>%DocDB.Database</class> implements the DocDB ObjectScript User Database API.  <br> <br>
/// <!doctype html public "-//w3c//dtd html 4.0 transitional//en">
/// <html>
/// <head>
///    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
///    <meta name="GENERATOR" content="Mozilla/4.77 [en] (Windows NT 5.0; U) [Netscape]">
/// 	<style type="text/css">
/// 		table.todo {
/// 				background-color:yellow;
/// 				border:1px solid red;
/// 			}
/// 		table.todo tr td {
/// 				vertical-align:top;
/// 				border:1px solid red;
/// 			}
/// 	</style>
///    <title>DocDB</title>
/// </head>
/// <body>
/// <h1>DocDB ObjectScript User Database API</h1>
/// <p>
/// This class implements the public DocDB ObjectScript User Database API.
/// </p>
/// <p>
/// A Database is a set of Documents, implemented by a objects persistent class that extends <class>%DocDB.Document</class>.
/// </p>
/// <p>
/// Databases are explicitly created by calling <method>%CreateDatabase</method>. A previously created Database can
/// be retrieved by calling the <method>%GetDatabase</method>.
/// </p>
/// <p>
/// A Document is inserted into a Database by executing <method>%SaveDocument</method>, passing in the document value as a string containing a
/// valid serialized document, or an instance of the type class. The default type class is <class>%Library.DynamicAbstractObject</class> and
/// the default serialization is JSON. An existing Document can be replaced by passing in the documentID. If a documentID is provided and that document does
/// not exist then an exception is thrown.
/// </p>
/// <p>
/// %SaveDocument() returns an oref referencing the newly created document. If an error is encountered by %SaveDocument() an exception is thrown.
/// </p>
/// <p>
/// Other methods to access documents are <method>%GetDocument</method> and <method>%DeleteDocument</method>. There are also ByKey versions of %GetDocument, %DeleteDocument and %SaveDocument.
/// </p>
///
/// Database Functions to be implemented:
/// FindDocuments
/// Return a set of all Documents from the Database that match the provided selection criteria. The form of the selection criteria is a list of simple predicates applied to defined properties joined with AND (we may need OR but IN is probably sufficient). The set of predicates supported initially includes Equal, GT, LT, GTE, LTE, and IN.
/// Accepts Database Name, a definition of the structure of the returned documents, and the selection criteria.
/// QueryDatabase(sql-like query spec)
/// Add a new function to allow for SQL-like SELECT query.
Class %DocDB.Database Extends %Library.Persistent [ Final, StorageStrategy = DocSD, System = 3 ]
{

Parameter USEEXTENTSET = 1;

/// The name of the database. This value must be a valid class name but it does not need to be package-qualified.
/// If no package qualifier is present then a system default package, 'ISC.DM', will be used.
Property Name As %String(MAXLEN = "");

/// The name of the class that implements the Database.
Property ClassName As %String(MAXLEN = 220);

/// DocumentType is the type class of the %Doc property or one of (JSON, XML).
/// JSON is the default DocumentType.
Property DocumentType As %String(MAXLEN = "");

/// The Resource required to access this Database.
Property Resource As %String(MAXLEN = "");

/// This is the SQL Schema.Table name as constructed during class compile. If the class is edited directly and later recompiled
/// then this value could be stale. Perhaps add a projection to the %DocDB.Document class to verify this.
Property SqlNameQualified As %String(MAXLEN = 220);

/// Create a new database. If a database with the name <var>databaseName</var> already exists then an exception is thrown. The return
/// value is an OREF referencing the newly created Database instance in memory.
ClassMethod %CreateDatabase(databaseName As %String(MAXLEN=220) = "", documentType As %String = "%Library.DynamicAbstractObject", resource As %String = "") As %DocDB.Database [ PublicList = SQLCODE ]
{
}

/// Retrieve the Database whose name is <var>databaseName</var>. If a Database identified by that name does not exist then an
/// exception is thrown. The return value is an oref referencing the Database object in memory.
ClassMethod %GetDatabase(databaseName) As %DocDB.Database
{
}

/// Return an array (<class>%Library.DynamicArray</class>) containing the names of all of the Databases defined in the current namespace.
ClassMethod %GetAllDatabases() As %Library.DynamicArray
{
}

Method %GetDatabaseDefinition() As %Library.DynamicAbstractObject
{
}

/// <p>
/// WARNING!! This is a destructive call.
/// </p>
/// <p>Drop the Database and remove its extent. User data is deleted.
/// </p>
ClassMethod %DropDatabase(databaseName As %Library.String(MAXLEN=220)) As %Library.Boolean [ PublicList = SQLCODE ]
{
}

/// <p>
/// WARNING!! This is a destructive call.
/// </p>
/// <p>Drop all Databases defined in the current namespace. User data is deleted.
/// </p>
ClassMethod %DropAllDatabases() As %Library.DynamicArray
{
}

/// GetDocument
/// Return the Document from the Database with the specified ID.
/// If no document with that ID is found then an exception is thrown.
Method %GetDocument(documentID As %Integer = "") As %Library.DynamicAbstractObject
{
}

/// GetDocumentByKey
/// Return the Document from the Database that matches the key value provided. Key Property Name, Key Property Value. Returns Document.
Method %GetDocumentByKey(keyName As %String(MAXLEN=220), keyValue As %String(MAXLEN="")) As %Library.DynamicAbstractObject
{
}

/// <p>
/// SaveDocument() accepts a document value and an optional <var>documentID</var>. The document value is either an instance of the DocumentType class
/// or a serialized value in the format expected by the DocumentType class. The default serial format is JSON.
/// If <var>documentID</var> is specified then the document identified by that value is replaced by the provided document value. If a document with
/// that ID does not exist then an exception is thrown. If no <var>documentID</var> then the provided document value is inserted into the Database.
/// This method returns the instance of the Database class that was inserted or replaced.
/// </p>
/// <p>
/// <pre>
/// USER>set car = cars.%SaveDocument({"make":"Ford","model":"Flatbed","year":"1938","location":{"city":"Winslow","state":"Arizona"})
/// </pre>
/// </p>
/// <p>
/// This method throws an exception if an error is encountered.
/// </p>
Method %SaveDocument(request As %RawString, documentID As %Integer = "") As %DocDB.Document
{
}

/// <p>
/// SaveDocumentByKey()
/// </p>
Method %SaveDocumentByKey(request As %RawString, keyName As %String(MAXLEN=220), keyValue As %String(MAXLEN="")) As %DocDB.Document
{
}

/// DeleteDocument
/// Remove a document from the currently visible extent of the Database class. Accepts Database Name, Document ID. Returns the deleted Document.
Method %DeleteDocument(documentID As %Integer)
{
}

/// DeleteDocumentByKey
/// Remove a document identified by KeyPropertyName = KeyValue from the currently visible extent of the Database class. Accepts Database Name, KeyPropertyName and KeyValue. Returns the deleted Document.
Method %DeleteDocumentByKey(keyName As %String(MAXLEN=220), keyValue As %String(MAXLEN=""))
{
}

/// CreateProperty
/// Add a new property to the Database class. Accepts Database Name, Property Name, Property Type, an optional Expression used to derive
/// the property value and an optional UNIQUE indicator. If UNIQUE is specified, then an index to support uniqueness is automatically
/// created if one does not already exist. All properties created through this function will be implicitly indexed.
Method %CreateProperty(propertyName As %String(MAXLEN=220), propertyType As %String(MAXLEN=220), propertyExpression As %String(MAXLEN="") = "", unique = 0)
{
}

Method %GetPropertyDefinition(propertyName As %String(MAXLEN=220)) As %Library.DynamicObject [ CodeMode = expression ]
{
}

/// DropProperty
/// Remove a property from the Database class. Accepts a Property Name. The current Database oref is returned to allow chaining.
Method %DropProperty(propertyName As %String(MAXLEN=220)) As %DocDB.Database
{
}

/// %Clear() - Remove all documents from the current Database. The current Database oref is returned to allow chaining.
Method %Clear(databaseName) As %DocDB.Database
{
}

/// <p>
/// %FromJSON() - accepts a stream, a string containing JSON, a stream oref or a string containing a file URI. The contents of <var>jsonValue</var>
/// are then inserted into the current database. This method return an oref referencing the database to support stringing method calls.
/// </p>
/// <p>
/// If a file URI is passed then a file stream is instantiated and the translation table set to UTF-8. If the file is not encoded as UTF-8 then
/// the user must instantiate a stream object before calling $fromJSON() and set the translation table to the appropriate value.
/// </p>
Method %FromJSON(jsonValue As %RawString) As %DocDB.Database
{
}

/// Serialize the database and its content as JSON. If <var>destination</var> is not passed then the output is either sent to the
/// current device or returned as a string.
/// <p>
/// <b><var>destination</var></b> is optional. There are a number of possibilities:
/// <br>(1) Parameter <b><var>destination</var></b> is not defined and the method is called via 'DO'. In this case the JSON string is written to the current output device.
/// <br>(2) Parameter <b><var>destination</var></b> is not defined and the method is called as an expression. In this case the JSON string becomes the value of the expression.
/// <br>(3) Parameter <b><var>destination</var></b> is defined. If it is %Stream object then the JSON string will be written to the stream. If <var><var>destination</var></var> is not an object
/// and is not null then it is presumed to be a fully qualified file specification. In that case, a <class>%Stream.FileCharacter</class> stream is created, linked to that file
/// and the JSON string is written to that stream. On completion, this stream is saved. The full path to the file must be defined. If <var><var>destination</var></var> is an object but is not
/// an instance of %Stream.Object then an exception will be thrown.
/// <p>
Method %ToJSON(destination As %Stream.Object) As %RawString
{
}

/// Accepts an SQL statement and a variable number of parameter values. Returns a %SQL.StatementResult.
ClassMethod %ExecuteQuery(ByRef sql As %RawString = "", ByRef parameter... As %RawString) As %SQL.StatementResult
{
}

/// <p>
/// Retrieve documents that match the <var>restrictionRequest</var> restriction. The set of properties included in the result is
/// defined by <var>projectionRequest</var>. Find options can be specified in the <var>optionsRequest</var> argument.
///  The format of these arguments is either a <class>%DynamicAbstractObject</class> oref or a string containing JSON.
/// </p>
/// <p>
/// <var>restrictionRequest</var> - This can be either a predicate or an array of predicates. A predicate is an array with three elements, the first
/// is the property to be restricted, the second is the value the property is compared to and an optional third element is the comparison operator. The
/// comparison operator defaults to &quot;=&quot;. The list of supported comparison operators includes =, !=, <, >, <=, >=, <>, %STARTSWITH, IN, NULL, and NOT NULL.
/// When multiple predicates are specified they are combined using AND.
/// Properties included in the restriction must be defined in the Database.
/// </p>
/// <p>
/// <var>projectionRequest</var> - an array of properties to select from the Database. If not specified then the projection will include
/// %DocumentId, %LastModified and %Doc. The properties included in the projectionRequest must be explicitly defined in the Database.
/// </p>
/// <p>
/// <var>optionsRequest</var> - is an object containing the requested options. At this time, the only option supported is limit. If options.limit is specified
/// then it is the maximum number of matching documents retrieved from the database.
/// </p>
/// <p>
/// The return value is a <class>%Library.DynamicArray</class> whose elements correspond to objects as defined by <var>projectionRequest</var>.
/// </p>
/// <p>
/// <pre>
/// 	SAMPLES>set result = db.%FindDocuments(["Name","N","%STARTSWITH"],["Name"],{"limit":5})
///
/// 	SAMPLES>w result.%ToJSON()
/// 	{"sqlcode":100,"message":null,"content":[{"Name":"Nebraska"},{"Name":"Nevada"},{"Name":"New Hampshire"},{"Name":"New Jersey"},{"Name":"New Mexico"}]}
/// </pre>
/// </p>
Method %FindDocuments(restrictionRequest As %DynamicAbstractObject = "", projectionRequest As %DynamicAbstractObject = "", optionsRequest As %DynamicObject = "") As %Library.DynamicAbstractObject
{
}

/// As an optimization we might actually cache this by computing a hash on these three things. For now, generate the SQL SELECT.
/// Instead of accepting a projection (a definition of AET transformation using JPL), we accept a simple SELECT column list.
Method generateFindSQL(restriction As %Library.DynamicAbstractObject, projection As %Library.DynamicAbstractObject, options As %Library.DynamicAbstractObject) As %String(MAXLEN="") [ Internal, ServerOnly = 1 ]
{
}

Method generatePredicate(predicate As %Library.DynamicArray) As %String(MAXLEN="") [ Internal, ServerOnly = 1 ]
{
}

Method createIndex(indexName As %RawString = "", propertyName As %RawString = "", unique As %Integer = 0, collationExpression As %String = "") As %DocDB.Database [ Internal, ServerOnly = 1 ]
{
}

/// dropIndex() - delete an index definition and its structure. This method returns an oref referencing the index definition
/// document that was removed from the index definition database.
/// <br>
/// <pre>
/// SAMPLES>set people = $system.DocDB.GetDatabase("People")
/// SAMPLES>set index = people.%DropIndex("HC")
/// SAMPLES>write index.%ToJSON()
/// {"database":"People","name":"HC","type":"bitmap","class":"%DocDB.Server.Index.Bitmap","key":[["HomeCity","string"]]}
/// </pre>
Method dropIndex(indexName As %RawString = "") As %Library.DynamicAbstractObject [ Internal, ServerOnly = 1 ]
{
}

/// Return the size of the database where size is the number of documents.
Method %Size() As %Integer [ CodeMode = expression ]
{
}

/// This should be private - once basic testing is complete
Method compile() [ Internal, ServerOnly = 1 ]
{
}

/// This should be private - once basic testing is complete
/// Find a unique index on propertyName. This find operation might be enhanced to match
/// collation, and perhaps other refinements. Return NULL if no matching key is found.
Method findKey(propertyName As %String(MAXLEN="")) As %String(MAXLEN="") [ Internal, ServerOnly = 1 ]
{
}

/// This should be private - once basic testing is complete
/// Find a unique index on propertyName. This find operation might be enhanced to match
/// collation, and perhaps other refinements. Return NULL if no matching key is found.
Method findIndex(propertyName As %String(MAXLEN="")) As %String(MAXLEN="") [ Internal, ServerOnly = 1 ]
{
}

Method getAllPropertyDefinitions() As %Library.DynamicArray [ Internal, ServerOnly = 1 ]
{
}

Method getPropertyDefinition(propertyName As %String(MAXLEN=220)) As %Library.DynamicObject [ Internal, ServerOnly = 1 ]
{
}

ClassMethod resultToObject(statementResult As %SQL.StatementResult) As %Library.DynamicAbstractObject [ Internal, ServerOnly = 1 ]
{
}

ClassMethod resultSetToArray(resultSet As %SQL.IResultSet) As %Library.DynamicArray [ Internal, ServerOnly = 1 ]
{
}

ClassMethod resultMetadataToObject(metadata As %SQL.StatementMetadata) As %Library.DynamicObject [ Internal, ServerOnly = 1 ]
{
}

ClassMethod resultColumnsToArray(columns As %Collection.ListOfObj) As %Library.DynamicArray [ Internal, ServerOnly = 1 ]
{
}

ClassMethod resultColumnToObject(column As %SQL.StatementColumn) As %Library.DynamicObject [ Internal, ServerOnly = 1 ]
{
}

ClassMethod resultParametersToArray(parameters As %Collection.ListOfObj) As %Library.DynamicArray [ Internal, ServerOnly = 1 ]
{
}

ClassMethod resultParameterToObject(parameter As %SQL.StatementParameter) As %Library.DynamicObject [ Internal, ServerOnly = 1 ]
{
}

ClassMethod resultObjectsToArray(objects As %Collection.ListOfObj) As %Library.DynamicArray [ Internal, ServerOnly = 1 ]
{
}

ClassMethod resultObjectToObject(object As %SQL.StatementObject) As %Library.DynamicObject [ Internal, ServerOnly = 1 ]
{
}

}
