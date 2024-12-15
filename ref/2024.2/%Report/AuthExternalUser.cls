/// This class allows a report server to validate a token provided by IRIS
Class %Report.AuthExternalUser Extends %RegisteredObject [ Language = objectscript ]
{

/// For external use, enables report server to authenticate IRIS-authenticated users
/// If a valid user on the report server is returned, the user will be authenticated
/// Anything else will prompt a Unauthorized response and direct users to the manual login page
ClassMethod ValidateToken(PID As %String, pAuthToken As %String) As %String
{
}

}
