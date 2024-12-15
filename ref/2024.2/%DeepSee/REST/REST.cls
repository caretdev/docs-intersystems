/// Utilities used in the DeepSee rest services
Class %DeepSee.REST.REST Extends %CSP.REST
{

/// Specifies the default character set for the page.  This can be overriden using the
/// &lt;CSP:CONTENT CHARSET=&gt; tag, or by setting the <b>%response</b>.CharSet property
/// in the <method>OnPreHTTP</method> method.  If this parameter is not specified, then
/// for the default charset is utf-8.
Parameter CHARSET = "utf-8";

/// Specifies the default content type for the page.  This can be overriden using the
/// &lt;CSP:CONTENT TYPE=&gt; tag, or by setting the <b>%response</b>.ContentType property
/// in the <method>OnPreHTTP</method> method.  The default value if this parameter is
/// not set is text/html.
Parameter CONTENTTYPE = "application/json";

/// This parameter influences the CORS support. The default is an empty string meaning 'not specified'.
/// If set to true (1) then CORS processing is ON. If set to false (0) then CORS processing is OFF.
/// If left unset "" then the decision to process CORS is delegated to the setting on the URL map route.
Parameter HandleCorsRequest = 1;

Parameter DOMAIN = "%DeepSee";

/// This method Gets called prior to dispatch of the request. Put any common code here
/// that you want to be executed for EVERY request. If pContinue is set to 0, the
/// request will NOT be dispatched according to the UrlMap. If this case it's the
/// responsibility of the user to return a response.
ClassMethod OnPreDispatch(pUrl As %String, pMethod As %String, ByRef pContinue As %Boolean) As %Status
{
}

/// Perform specific validation for the service that will handle the request. This is used
/// as a callback in each service that extends %DeepSee.REST
ClassMethod %ValidateRequest(pUrl As %String, pMethod As %String) As %Status
{
}

/// Convert a %Status object that contains an error into JSON for transmission back to the client. The error will be located in the same
/// position within the object as with any JSON MDX resultset return. If there is a reported error, the existence of other properties within the return
/// object is not guaranteed.
ClassMethod %ErrorToJSON(pStatus As %Status) As %Status
{
}

/// This consumes an array and attempts to create a dynamic object out of it. This object can then be further
/// augmented or pruned, and can be used as a facility for converting the content to JSON.
ClassMethod %CreateObjectFromArray(ByRef pArray, pMetaData As %List, Output pObject) As %Status
{
}

/// Given an instance of the jsonMDXProvider, begin executing the query and wait for results.
/// Quit early if the value supplied by <var>pTimeout</var> is reached.
ClassMethod %WaitForProviderResults(pProvider As %ZEN.Auxiliary.jsonMDXProvider, pTimeout As %Integer) As %Status
{
}

/// This utility assists in constructing a standardized JSON response object from an array
/// of lists, as commonly returned by %DeepSee utilities.
/// The data in <var>pArray</var> must be organized in the form<br>
///   pArray(index) = $LB(data1,data2,data3)<br>
/// where the contents in each list are converted to name-value pairs using the list of labels provided in
/// <var>pMetaData</var>. The array of objects is placed in the Result section of the dynamic object returned
/// via <var>pResponseObj</var>. The specifc node within the Result section is labeled according to the string
/// supplied in <var>pNodeLabel</var>.<br>
/// For convenience, the method may return an instance of the <class>%ZEN.Auxiliary.jsonMDXProvider</class> used
/// to augment the response object with more dynamic objects or arrays, as well as convert the object to JSON when the
/// response object is complete.
ClassMethod %ConstructResponseFromArray(ByRef pArray, pMetaData As %List = "", pNodeLabel = "ListItems", pFetchStatus As %Status = 1, Output pResponseObj, Output pProvider) As %Status
{
}

/// Create a template response object
ClassMethod %ConstructResponseObject(Output pInfoObj, Output pResultObj, Output pProvider) As %DynamicObject
{
}

/// DeepSee REST APIs permit use of the "/" character in data source names and dimension specs.
/// Given a piece of a <var>pUrl</var> that begins with a data source, this searches for the first valid
/// data source name and returns it. This can be limited by type or a list of types in the comma-delimited
/// list <var>pType</var>. Currently supported datasource types are "kpi" and "cube"<br>
/// The remainder of the URL, if it exists, is returned in the <var>pRemainder</var>.
ClassMethod %ExtractDatasourceName(pUrl = "", pType = "", Output pRemainder As %String, Output pStatus As %Status) As %String
{
}

/// This method sets a request field to its current value as passed in the request.Content section of the POST request or, if that does not exist, sets it to its default value as specified in the method signature in CubeManager.Utils
/// Example: SetRequestField is being invoked to set the value for the field %request.Content.myField
/// <var>pPropertyName</var> is a string values containing the name of the field. For the above example,the <var>pProperty</var> is "myField"
/// <var>pCurrentInput</var> is the current input value for the field in question. For the above example, the <var>pCurrentInput</var> is %request.Content.myField
/// <var>pDefaultValue</var> is the default value for the field in question, as specified in the signature of the corresponding method that the API is designed to call. For the above example, the <var>pDefaultValue</var> could be "5"
/// <var>ans</var> is the variable or object reference in which the populated value is stored
/// <var>pTargetClass</var> is an optional argument that contains the name of the class, that <var>ans</var> should be an object of. This is only passed in when ans is expected to be an object and not a variable. An example of this is "%DeepSee.CubeManager.RegistryMapCube"
ClassMethod %SetRequestField(pPropertyName As %String, pCurrentInput, pDefaultValue, Output ans, pTargetClass As %String) As %Status
{
}

/// Converts a %Status object that contains an error, to a JSON string, but does not cause it to be output to the console (unlike %DeepSee.REST.REST.ErrorToJSON, thus allowing for it to be used as a string wherever required
/// If a non-error status is passed in, an empty string will be returned becuase the underlying method tProvider.%StatusToDynamicObject does not convert $$$OK statuses to dynamic objects
/// May need to be refactored if %Zen is phased out
ClassMethod %ConvertErrorStatusToJSON(pStatus As %Status, ByRef statusAsJSONString As %String = "") As %Status
{
}

/// Converts an objectscript array that may have an arbitrary structure, to a JSON object
/// <var>array</var> is the array to be converted
ClassMethod %Array2JSON(ByRef array)
{
}

}
