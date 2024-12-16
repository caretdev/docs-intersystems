"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[76705],{95694:(e,t,a)=>{a.r(t),a.d(t,{contentTitle:()=>i,default:()=>o,frontMatter:()=>r,toc:()=>c});var n=a(74848),s=a(28453);const r={pagination_prev:null,pagination_next:null},i="%DocDB.Database",c=[{value:"Parameters",id:"parameters",level:2},{value:"USEEXTENTSET",id:"useextentset",level:3},{value:"Properties",id:"properties",level:2},{value:"Name",id:"name",level:3},{value:"ClassName",id:"classname",level:3},{value:"DocumentType",id:"documenttype",level:3},{value:"Resource",id:"resource",level:3},{value:"SqlNameQualified",id:"sqlnamequalified",level:3},{value:"Methods",id:"methods",level:2},{value:"%CreateDatabase",id:"createdatabase",level:3},{value:"%GetDatabase",id:"getdatabase",level:3},{value:"%GetAllDatabases",id:"getalldatabases",level:3},{value:"%GetDatabaseDefinition",id:"getdatabasedefinition",level:3},{value:"%DropDatabase",id:"dropdatabase",level:3},{value:"%DropAllDatabases",id:"dropalldatabases",level:3},{value:"%GetDocument",id:"getdocument",level:3},{value:"%GetDocumentByKey",id:"getdocumentbykey",level:3},{value:"%SaveDocument",id:"savedocument",level:3},{value:"%SaveDocumentByKey",id:"savedocumentbykey",level:3},{value:"%DeleteDocument",id:"deletedocument",level:3},{value:"%DeleteDocumentByKey",id:"deletedocumentbykey",level:3},{value:"%CreateProperty",id:"createproperty",level:3},{value:"%GetPropertyDefinition",id:"getpropertydefinition",level:3},{value:"%DropProperty",id:"dropproperty",level:3},{value:"%Clear",id:"clear",level:3},{value:"%FromJSON",id:"fromjson",level:3},{value:"%ToJSON",id:"tojson",level:3},{value:"%ExecuteQuery",id:"executequery",level:3},{value:"%FindDocuments",id:"finddocuments",level:3},{value:"generateFindSQL",id:"generatefindsql",level:3},{value:"generatePredicate",id:"generatepredicate",level:3},{value:"createIndex",id:"createindex",level:3},{value:"dropIndex",id:"dropindex",level:3},{value:"%Size",id:"size",level:3},{value:"compile",id:"compile",level:3},{value:"findKey",id:"findkey",level:3},{value:"findIndex",id:"findindex",level:3},{value:"getAllPropertyDefinitions",id:"getallpropertydefinitions",level:3},{value:"getPropertyDefinition",id:"getpropertydefinition-1",level:3},{value:"resultToObject",id:"resulttoobject",level:3},{value:"resultSetToArray",id:"resultsettoarray",level:3},{value:"resultMetadataToObject",id:"resultmetadatatoobject",level:3},{value:"resultColumnsToArray",id:"resultcolumnstoarray",level:3},{value:"resultColumnToObject",id:"resultcolumntoobject",level:3},{value:"resultParametersToArray",id:"resultparameterstoarray",level:3},{value:"resultParameterToObject",id:"resultparametertoobject",level:3},{value:"resultObjectsToArray",id:"resultobjectstoarray",level:3},{value:"resultObjectToObject",id:"resultobjecttoobject",level:3}];function l(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,s.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"docdbdatabase",children:"%DocDB.Database"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DocDB.Database Extends %Library.Persistent [ Final, StorageStrategy = DocSD, System = 3 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"%DocDB.Database implements the DocDB ObjectScript User Database API."}),"\n  \n",(0,n.jsx)(t.h1,{id:"docdb-objectscript-user-database-api",children:"DocDB ObjectScript User Database API"}),"\n",(0,n.jsx)(t.p,{children:"This class implements the public DocDB ObjectScript User Database API."}),"\n",(0,n.jsx)(t.p,{children:"A Database is a set of Documents, implemented by a objects persistent class that extends %DocDB.Document."}),"\n",(0,n.jsx)(t.p,{children:"Databases are explicitly created by calling %CreateDatabase. A previously created Database can be retrieved by calling the %GetDatabase."}),"\n",(0,n.jsx)(t.p,{children:"A Document is inserted into a Database by executing %SaveDocument, passing in the document value as a string containing a valid serialized document, or an instance of the type class. The default type class is %Library.DynamicAbstractObject and the default serialization is JSON. An existing Document can be replaced by passing in the documentID. If a documentID is provided and that document does not exist then an exception is thrown."}),"\n",(0,n.jsx)(t.p,{children:"%SaveDocument() returns an oref referencing the newly created document. If an error is encountered by %SaveDocument() an exception is thrown."}),"\n",(0,n.jsx)(t.p,{children:"Other methods to access documents are %GetDocument and %DeleteDocument. There are also ByKey versions of %GetDocument, %DeleteDocument and %SaveDocument."}),"\n",(0,n.jsx)(t.p,{children:"Database Functions to be implemented: FindDocuments Return a set of all Documents from the Database that match the provided selection criteria. The form of the selection criteria is a list of simple predicates applied to defined properties joined with AND (we may need OR but IN is probably sufficient). The set of predicates supported initially includes Equal, GT, LT, GTE, LTE, and IN. Accepts Database Name, a definition of the structure of the returned documents, and the selection criteria. QueryDatabase(sql-like query spec) Add a new function to allow for SQL-like SELECT query."}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"useextentset",children:"USEEXTENTSET"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter USEEXTENTSET = 1;\n"})}),"\n",(0,n.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(t.h3,{id:"name",children:"Name"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property Name As %String(MAXLEN = "");\n'})}),"\n",(0,n.jsx)(t.p,{children:"The name of the database. This value must be a valid class name but it does not need to be package-qualified. If no package qualifier is present then a system default package, 'ISC.DM', will be used."}),"\n",(0,n.jsx)(t.h3,{id:"classname",children:"ClassName"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property ClassName As %String(MAXLEN = 220);\n"})}),"\n",(0,n.jsx)(t.p,{children:"The name of the class that implements the Database."}),"\n",(0,n.jsx)(t.h3,{id:"documenttype",children:"DocumentType"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property DocumentType As %String(MAXLEN = "");\n'})}),"\n",(0,n.jsx)(t.p,{children:"DocumentType is the type class of the %Doc property or one of (JSON, XML). JSON is the default DocumentType."}),"\n",(0,n.jsx)(t.h3,{id:"resource",children:"Resource"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property Resource As %String(MAXLEN = "");\n'})}),"\n",(0,n.jsx)(t.p,{children:"The Resource required to access this Database."}),"\n",(0,n.jsx)(t.h3,{id:"sqlnamequalified",children:"SqlNameQualified"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property SqlNameQualified As %String(MAXLEN = 220);\n"})}),"\n",(0,n.jsx)(t.p,{children:"This is the SQL Schema.Table name as constructed during class compile. If the class is edited directly and later recompiled then this value could be stale. Perhaps add a projection to the %DocDB.Document class to verify this."}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"createdatabase",children:"%CreateDatabase"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %CreateDatabase(databaseName As %String(MAXLEN=220) = "", documentType As %String = "%Library.DynamicAbstractObject", resource As %String = "") As %DocDB.Database [ PublicList = SQLCODE ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Create a new database. If a database with the name databaseName already exists then an exception is thrown. The return value is an OREF referencing the newly created Database instance in memory."}),"\n",(0,n.jsx)(t.h3,{id:"getdatabase",children:"%GetDatabase"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetDatabase(databaseName) As %DocDB.Database\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieve the Database whose name is databaseName. If a Database identified by that name does not exist then an exception is thrown. The return value is an oref referencing the Database object in memory."}),"\n",(0,n.jsx)(t.h3,{id:"getalldatabases",children:"%GetAllDatabases"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetAllDatabases() As %Library.DynamicArray\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return an array (%Library.DynamicArray) containing the names of all of the Databases defined in the current namespace."}),"\n",(0,n.jsx)(t.h3,{id:"getdatabasedefinition",children:"%GetDatabaseDefinition"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetDatabaseDefinition() As %Library.DynamicAbstractObject\n"})}),"\n",(0,n.jsx)(t.h3,{id:"dropdatabase",children:"%DropDatabase"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %DropDatabase(databaseName As %Library.String(MAXLEN=220)) As %Library.Boolean [ PublicList = SQLCODE ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"WARNING!! This is a destructive call."}),"\n",(0,n.jsx)(t.p,{children:"Drop the Database and remove its extent. User data is deleted."}),"\n",(0,n.jsx)(t.h3,{id:"dropalldatabases",children:"%DropAllDatabases"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %DropAllDatabases() As %Library.DynamicArray\n"})}),"\n",(0,n.jsx)(t.p,{children:"WARNING!! This is a destructive call."}),"\n",(0,n.jsx)(t.p,{children:"Drop all Databases defined in the current namespace. User data is deleted."}),"\n",(0,n.jsx)(t.h3,{id:"getdocument",children:"%GetDocument"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method %GetDocument(documentID As %Integer = "") As %Library.DynamicAbstractObject\n'})}),"\n",(0,n.jsx)(t.p,{children:"GetDocument Return the Document from the Database with the specified ID. If no document with that ID is found then an exception is thrown."}),"\n",(0,n.jsx)(t.h3,{id:"getdocumentbykey",children:"%GetDocumentByKey"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method %GetDocumentByKey(keyName As %String(MAXLEN=220), keyValue As %String(MAXLEN="")) As %Library.DynamicAbstractObject\n'})}),"\n",(0,n.jsx)(t.p,{children:"GetDocumentByKey Return the Document from the Database that matches the key value provided. Key Property Name, Key Property Value. Returns Document."}),"\n",(0,n.jsx)(t.h3,{id:"savedocument",children:"%SaveDocument"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method %SaveDocument(request As %RawString, documentID As %Integer = "") As %DocDB.Document\n'})}),"\n",(0,n.jsx)(t.p,{children:"SaveDocument() accepts a document value and an optional documentID. The document value is either an instance of the DocumentType class or a serialized value in the format expected by the DocumentType class. The default serial format is JSON. If documentID is specified then the document identified by that value is replaced by the provided document value. If a document with that ID does not exist then an exception is thrown. If no documentID then the provided document value is inserted into the Database. This method returns the instance of the Database class that was inserted or replaced."}),"\n",(0,n.jsx)(t.p,{children:'USER>set car = cars.%SaveDocument({"make":"Ford","model":"Flatbed","year":"1938","location":{"city":"Winslow","state":"Arizona"})'}),"\n",(0,n.jsx)(t.p,{children:"This method throws an exception if an error is encountered."}),"\n",(0,n.jsx)(t.h3,{id:"savedocumentbykey",children:"%SaveDocumentByKey"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method %SaveDocumentByKey(request As %RawString, keyName As %String(MAXLEN=220), keyValue As %String(MAXLEN="")) As %DocDB.Document\n'})}),"\n",(0,n.jsx)(t.p,{children:"SaveDocumentByKey()"}),"\n",(0,n.jsx)(t.h3,{id:"deletedocument",children:"%DeleteDocument"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DeleteDocument(documentID As %Integer)\n"})}),"\n",(0,n.jsx)(t.p,{children:"DeleteDocument Remove a document from the currently visible extent of the Database class. Accepts Database Name, Document ID. Returns the deleted Document."}),"\n",(0,n.jsx)(t.h3,{id:"deletedocumentbykey",children:"%DeleteDocumentByKey"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method %DeleteDocumentByKey(keyName As %String(MAXLEN=220), keyValue As %String(MAXLEN=""))\n'})}),"\n",(0,n.jsx)(t.p,{children:"DeleteDocumentByKey Remove a document identified by KeyPropertyName = KeyValue from the currently visible extent of the Database class. Accepts Database Name, KeyPropertyName and KeyValue. Returns the deleted Document."}),"\n",(0,n.jsx)(t.h3,{id:"createproperty",children:"%CreateProperty"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method %CreateProperty(propertyName As %String(MAXLEN=220), propertyType As %String(MAXLEN=220), propertyExpression As %String(MAXLEN="") = "", unique = 0)\n'})}),"\n",(0,n.jsx)(t.p,{children:"CreateProperty Add a new property to the Database class. Accepts Database Name, Property Name, Property Type, an optional Expression used to derive the property value and an optional UNIQUE indicator. If UNIQUE is specified, then an index to support uniqueness is automatically created if one does not already exist. All properties created through this function will be implicitly indexed."}),"\n",(0,n.jsx)(t.h3,{id:"getpropertydefinition",children:"%GetPropertyDefinition"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetPropertyDefinition(propertyName As %String(MAXLEN=220)) As %Library.DynamicObject [ CodeMode = expression ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"dropproperty",children:"%DropProperty"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DropProperty(propertyName As %String(MAXLEN=220)) As %DocDB.Database\n"})}),"\n",(0,n.jsx)(t.p,{children:"DropProperty Remove a property from the Database class. Accepts a Property Name. The current Database oref is returned to allow chaining."}),"\n",(0,n.jsx)(t.h3,{id:"clear",children:"%Clear"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %Clear(databaseName) As %DocDB.Database\n"})}),"\n",(0,n.jsx)(t.p,{children:"%Clear() - Remove all documents from the current Database. The current Database oref is returned to allow chaining."}),"\n",(0,n.jsx)(t.h3,{id:"fromjson",children:"%FromJSON"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %FromJSON(jsonValue As %RawString) As %DocDB.Database\n"})}),"\n",(0,n.jsx)(t.p,{children:"%FromJSON() - accepts a stream, a string containing JSON, a stream oref or a string containing a file URI. The contents of jsonValue are then inserted into the current database. This method return an oref referencing the database to support stringing method calls."}),"\n",(0,n.jsx)(t.p,{children:"If a file URI is passed then a file stream is instantiated and the translation table set to UTF-8. If the file is not encoded as UTF-8 then the user must instantiate a stream object before calling $fromJSON() and set the translation table to the appropriate value."}),"\n",(0,n.jsx)(t.h3,{id:"tojson",children:"%ToJSON"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %ToJSON(destination As %Stream.Object) As %RawString\n"})}),"\n",(0,n.jsx)(t.p,{children:"Serialize the database and its content as JSON. If destination is not passed then the output is either sent to the current device or returned as a string."}),"\n",(0,n.jsxs)(t.p,{children:[(0,n.jsx)(t.strong,{children:"destination"})," is optional. There are a number of possibilities:",(0,n.jsx)(t.br,{}),"\n(1) Parameter ",(0,n.jsx)(t.strong,{children:"destination"})," is not defined and the method is called via 'DO'. In this case the JSON string is written to the current output device.",(0,n.jsx)(t.br,{}),"\n(2) Parameter ",(0,n.jsx)(t.strong,{children:"destination"})," is not defined and the method is called as an expression. In this case the JSON string becomes the value of the expression.",(0,n.jsx)(t.br,{}),"\n(3) Parameter ",(0,n.jsx)(t.strong,{children:"destination"})," is defined. If it is %Stream object then the JSON string will be written to the stream. If destination is not an object and is not null then it is presumed to be a fully qualified file specification. In that case, a %Stream.FileCharacter stream is created, linked to that file and the JSON string is written to that stream. On completion, this stream is saved. The full path to the file must be defined. If destination is an object but is not an instance of %Stream.Object then an exception will be thrown."]}),"\n",(0,n.jsx)(t.h3,{id:"executequery",children:"%ExecuteQuery"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %ExecuteQuery(ByRef sql As %RawString = "", ByRef parameter... As %RawString) As %SQL.StatementResult\n'})}),"\n",(0,n.jsx)(t.p,{children:"Accepts an SQL statement and a variable number of parameter values. Returns a %SQL.StatementResult."}),"\n",(0,n.jsx)(t.h3,{id:"finddocuments",children:"%FindDocuments"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method %FindDocuments(restrictionRequest As %DynamicAbstractObject = "", projectionRequest As %DynamicAbstractObject = "", optionsRequest As %DynamicObject = "") As %Library.DynamicAbstractObject\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieve documents that match the restrictionRequest restriction. The set of properties included in the result is defined by projectionRequest. Find options can be specified in the optionsRequest argument. The format of these arguments is either a %DynamicAbstractObject oref or a string containing JSON."}),"\n",(0,n.jsx)(t.p,{children:'restrictionRequest - This can be either a predicate or an array of predicates. A predicate is an array with three elements, the first is the property to be restricted, the second is the value the property is compared to and an optional third element is the comparison operator. The comparison operator defaults to "=". The list of supported comparison operators includes =, !=, <, >, <=, >=, <>, %STARTSWITH, IN, NULL, and NOT NULL. When multiple predicates are specified they are combined using AND. Properties included in the restriction must be defined in the Database.'}),"\n",(0,n.jsx)(t.p,{children:"projectionRequest - an array of properties to select from the Database. If not specified then the projection will include %DocumentId, %LastModified and %Doc. The properties included in the projectionRequest must be explicitly defined in the Database."}),"\n",(0,n.jsx)(t.p,{children:"optionsRequest - is an object containing the requested options. At this time, the only option supported is limit. If options.limit is specified then it is the maximum number of matching documents retrieved from the database."}),"\n",(0,n.jsx)(t.p,{children:"The return value is a %Library.DynamicArray whose elements correspond to objects as defined by projectionRequest."}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{children:'SAMPLES>set result = db.%FindDocuments(["Name","N","%STARTSWITH"],["Name"],{"limit":5})  \tSAMPLES>w result.%ToJSON() \t{"sqlcode":100,"message":null,"content":[{"Name":"Nebraska"},{"Name":"Nevada"},{"Name":"New Hampshire"},{"Name":"New Jersey"},{"Name":"New Mexico"}]} \n'})}),"\n",(0,n.jsx)(t.h3,{id:"generatefindsql",children:"generateFindSQL"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method generateFindSQL(restriction As %Library.DynamicAbstractObject, projection As %Library.DynamicAbstractObject, options As %Library.DynamicAbstractObject) As %String(MAXLEN="") [ Internal, ServerOnly = 1 ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"As an optimization we might actually cache this by computing a hash on these three things. For now, generate the SQL SELECT. Instead of accepting a projection (a definition of AET transformation using JPL), we accept a simple SELECT column list."}),"\n",(0,n.jsx)(t.h3,{id:"generatepredicate",children:"generatePredicate"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method generatePredicate(predicate As %Library.DynamicArray) As %String(MAXLEN="") [ Internal, ServerOnly = 1 ]\n'})}),"\n",(0,n.jsx)(t.h3,{id:"createindex",children:"createIndex"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method createIndex(indexName As %RawString = "", propertyName As %RawString = "", unique As %Integer = 0, collationExpression As %String = "") As %DocDB.Database [ Internal, ServerOnly = 1 ]\n'})}),"\n",(0,n.jsx)(t.h3,{id:"dropindex",children:"dropIndex"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method dropIndex(indexName As %RawString = "") As %Library.DynamicAbstractObject [ Internal, ServerOnly = 1 ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"dropIndex() - delete an index definition and its structure. This method returns an oref referencing the index definition document that was removed from the index definition database."}),"\n",(0,n.jsx)(t.p,{children:'SAMPLES>set people = $system.DocDB.GetDatabase("People") SAMPLES>set index = people.%DropIndex("HC") SAMPLES>write index.%ToJSON() {"database":"People","name":"HC","type":"bitmap","class":"%DocDB.Server.Index.Bitmap","key":[["HomeCity","string"]]}'}),"\n",(0,n.jsx)(t.h3,{id:"size",children:"%Size"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %Size() As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the size of the database where size is the number of documents."}),"\n",(0,n.jsx)(t.h3,{id:"compile",children:"compile"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method compile() [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This should be private - once basic testing is complete"}),"\n",(0,n.jsx)(t.h3,{id:"findkey",children:"findKey"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method findKey(propertyName As %String(MAXLEN="")) As %String(MAXLEN="") [ Internal, ServerOnly = 1 ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"This should be private - once basic testing is complete Find a unique index on propertyName. This find operation might be enhanced to match collation, and perhaps other refinements. Return NULL if no matching key is found."}),"\n",(0,n.jsx)(t.h3,{id:"findindex",children:"findIndex"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method findIndex(propertyName As %String(MAXLEN="")) As %String(MAXLEN="") [ Internal, ServerOnly = 1 ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"This should be private - once basic testing is complete Find a unique index on propertyName. This find operation might be enhanced to match collation, and perhaps other refinements. Return NULL if no matching key is found."}),"\n",(0,n.jsx)(t.h3,{id:"getallpropertydefinitions",children:"getAllPropertyDefinitions"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method getAllPropertyDefinitions() As %Library.DynamicArray [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"getpropertydefinition-1",children:"getPropertyDefinition"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method getPropertyDefinition(propertyName As %String(MAXLEN=220)) As %Library.DynamicObject [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"resulttoobject",children:"resultToObject"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod resultToObject(statementResult As %SQL.StatementResult) As %Library.DynamicAbstractObject [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"resultsettoarray",children:"resultSetToArray"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod resultSetToArray(resultSet As %SQL.IResultSet) As %Library.DynamicArray [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"resultmetadatatoobject",children:"resultMetadataToObject"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod resultMetadataToObject(metadata As %SQL.StatementMetadata) As %Library.DynamicObject [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"resultcolumnstoarray",children:"resultColumnsToArray"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod resultColumnsToArray(columns As %Collection.ListOfObj) As %Library.DynamicArray [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"resultcolumntoobject",children:"resultColumnToObject"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod resultColumnToObject(column As %SQL.StatementColumn) As %Library.DynamicObject [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"resultparameterstoarray",children:"resultParametersToArray"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod resultParametersToArray(parameters As %Collection.ListOfObj) As %Library.DynamicArray [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"resultparametertoobject",children:"resultParameterToObject"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod resultParameterToObject(parameter As %SQL.StatementParameter) As %Library.DynamicObject [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"resultobjectstoarray",children:"resultObjectsToArray"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod resultObjectsToArray(objects As %Collection.ListOfObj) As %Library.DynamicArray [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"resultobjecttoobject",children:"resultObjectToObject"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod resultObjectToObject(object As %SQL.StatementObject) As %Library.DynamicObject [ Internal, ServerOnly = 1 ]\n"})})]})}function o(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,t,a)=>{a.d(t,{R:()=>i,x:()=>c});var n=a(96540);const s={},r=n.createContext(s);function i(e){const t=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:i(e.components),n.createElement(r.Provider,{value:t},e.children)}}}]);