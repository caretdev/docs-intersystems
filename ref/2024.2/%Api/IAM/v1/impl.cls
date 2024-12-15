/// API for managing the IAM License for InterSystems IRIS.<br/>
/// Business logic class defined by OpenAPI in %Api.IAM.v1.spec<br/>
/// Updated Nov 14, 2024 18:21:32
Class %Api.IAM.v1.impl Extends %REST.Impl
{

/// If ExposeServerExceptions is true, then details of internal errors will be exposed.
Parameter ExposeServerExceptions = 1;

/// Get the JSON string of your IAM License Key from your licensed InterSystems IRIS instance.
ClassMethod getLicense() As %DynamicObject
{
}

}
