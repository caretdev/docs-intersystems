/// This class implements various utility functions for HTTP.
Class %Net.Http [ Abstract ]
{

/// <p>
/// GetJson() is a utility function that accepts a URL and an optional request object.
/// If a request object is supplied then it is expected to be either JSON or an oref.
/// The properties of the request object will be used to populate the HttpRequest before submitting the
/// request. The response is expected to be encoded as JSON.
/// </p>
/// <p>
/// If <var>request</var> is passed then it must either be valid JSON or an oref of type <class>%Library.DynamicAbstractObject</class>. The properties contained in
/// <var>request</var> must be named the same as a property in <class>%Net.HttpRequest</class>. The exception is the <var>url</var> property.
/// Any other property contained in <var>request</var> that is not named the same as a property in <class>%Net.HttpRequest</class> will trigger an exception:
/// <p>
/// If <var>requestURL</var> is not passed or is passed as null then the <var>request</var>.<var>url</var> property is used as the URL.
/// </p>
/// <p>
/// This method is projected as an SQL function and can be invoked in SQL as %Net.GetJson().
/// </p>
ClassMethod GetJson(requestURL As %RawString = "", request As %String(MAXLEN="") = "") As %DynamicAbstractObject [ SqlName = GetJson, SqlProc ]
{
}

ClassMethod %DispatchClassMethod(class As %String, method As %String, args...) As %ObjectHandle
{
}

}
