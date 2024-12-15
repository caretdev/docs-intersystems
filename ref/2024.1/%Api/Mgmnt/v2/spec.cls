/// Specification class to define API Management version 2.
Class %Api.Mgmnt.v2.spec Extends %REST.Spec [ System = 4 ]
{

/// This parameter influences the CORS support. The default is an empty string meaning 'not specified'.
/// If set to true (1) then CORS processing is ON. If set to false (0) then CORS processing is OFF.
/// If left unset "" then the decision to process CORS is delegated to the setting on the URL map route.
Parameter HandleCorsRequest = 1;

XData OpenAPI [ MimeType = application/json ]
{
}

}
