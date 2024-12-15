/// This class defines a session to report user map using a user's assigned roles
/// An ExternalUser object will be generated when a user visits %CSP.UI.Portal.ReportServerConfiguration
/// Upon unloading %CSP.UI.Portal.ReportServerConfiguration, all ExternalUser objects for that session without active tokens will be deleted
/// An ExternalUser is issued a token when a user selects to use that role on the ReportServer
/// This ExternalUser will persist until that token is used to authenticate the user to the Logi Report Server
Class Report.ExternalUser Extends %Persistent [ Language = objectscript ]
{

/// CSP Session that is requesting authentication
Property Session As %String;

/// Name of a valid %Report.ServerDefinition that the IRIS User is requesting authentication for
Property ReportServer As %String;

/// External username that IRIS user is requesting authentation as
Property ReportUser As %String;

/// Token to be exchanged with ReportServer for authentication
Property AuthToken As %String;

/// When AuthToken was issued
Property IssueTime As %TimeStamp;

/// The lifetime of AuthToken, in seconds
Property ExpiresIn As %Integer;

/// Creates a new External User, issues it a token, and returns its ID
/// The token will expire in pExpiresIn seconds
ClassMethod IssueToken(pSession As %String, pReportServer As %String, pReportUser As %String, pExpiresIn As %Integer = 30) As %String
{
}

/// Revokes any active AuthToken for Session pSession on ReportServer pServerName
/// Deletes the ExternalUser record
ClassMethod RevokeToken(pServerName As %String, pSession As %String) As %Status
{
}

/// Deletes any expired AuthTokens
ClassMethod CleanTokens() As %Status
{
}

/// Returns a ResultSet with each of the current users' roles on the selected ReportServer as a row
/// Applicable roles are to be formatted as <REPORTSERVER-NAME>_<REPORTSERVER-USER> (for example: TestServer_admin)
/// Where REPORTSERVER-USER is a valid username on <REPORTSERVER-NAME>]]
ClassMethod AllReportRolesExecute(ByRef qHandle As %Binary, pServerName As %String, SSOEnabled As %Boolean) As %Status
{
}

ClassMethod AllReportRolesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = AllReportRolesExecute ]
{
}

ClassMethod AllReportRolesClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = AllReportRolesFetch ]
{
}

}
