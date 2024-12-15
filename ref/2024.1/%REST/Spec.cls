/// This superclass is used as a known entry point for OpenAPI REST API Models.
/// Subclasses of this class should override the XData OpenAPI block for storing custom API descriptions.
Class %REST.Spec [ Abstract, System = 3 ]
{

/// The name of the XData block which contains the OpenAPI 2.0 specification
Parameter XDataName = "OpenAPI";

/// If Strict=0 (false), then only the swagger properties which are needed for code generation are checked during compile.
/// If Strict=1 (true), then all swagger properties are checked during compile.
Parameter Strict As STRING = 1;

/// Create a REST application.
/// If the REST application already exists, then it will be replaced.
/// The swagger argument contains the OpenAPI 2.0 swagger document for the application.
/// If xdataStream="", then the RESTSpec will be empty.<br/>
/// If the request body is empty, the addPing feature determines if a ping method should be added to the empty swagger spec.
/// The REST application package containing 3 classes:<br/>
/// The specification class (.spec) which is created with the specified OpenAPI XData block.<br/>
/// The dispatch class (.disp) which is deleted for a new application and will be created by compile<br/>
/// The implementation class (.impl) which is updated as needed with other contents unchanged.
ClassMethod %CreateRESTApplication(applicationName As %String, swagger = "", ByRef features, Output newApplication As %Boolean) As %Status [ Internal ]
{
}

/// Create a parameter
ClassMethod CreateParameter(classDef As %Dictionary.ClassDefinition, name As %String, value As %String, desc As %String) As %Status [ Internal ]
{
}

/// Delete a new REST application including the implementation class.
ClassMethod %DeleteRESTApplication(applicationName As %String, Output newApplication As %Boolean) As %Status [ Internal ]
{
}

ClassMethod %RemoveXDataBlock(cDef, blockName) [ Internal ]
{
}

ClassMethod %OnCompile() [ CodeMode = objectgenerator, Internal ]
{
}

/// Storage space for the swagger document.
XData OpenAPI [ MimeType = application/json ]
{
}

}
