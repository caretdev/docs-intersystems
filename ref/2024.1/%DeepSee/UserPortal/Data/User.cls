/// Each instance of this class represents a user within the DeepSee User Portal.
/// Each DeepSee user is assumed be a valid system user. This table is used
/// to track additional information about the user within the current namespace.
Class %DeepSee.UserPortal.Data.User Extends (%Persistent, %XML.Adaptor) [ SqlTableName = UserName, System = 4 ]
{

/// User ID ($UserName value).
Property userId As %String(MAXLEN = 200, XMLPROJECTION = "attribute");

/// Full name of the user.<br>
Property fullName As %String(MAXLEN = 128);

/// User's email address, if any.
Property email As %String(MAXLEN = 500, XMLPROJECTION = "attribute");

/// If true, alerts are enabled for this user-- other users can send alerts to this user.
Property alertsEnabled As %Boolean(XMLPROJECTION = "attribute");

}
