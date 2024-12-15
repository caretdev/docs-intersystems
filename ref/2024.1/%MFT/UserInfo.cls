/// %MFT.UserInfo is a detailed description of a user
/// Note: Even though this class is in IRISLIB, the storage is in the namespace which creates the instance.
Class %MFT.UserInfo Extends (%Persistent, %XML.Adaptor) [ System = 4 ]
{

/// Username is the unique username for this user.
/// It is currently the user's email address for all supported services.
Property Username As %Library.Username;

/// Name is the name of the user.
Property Name As %String(MAXLEN = 256);

/// UserId is the internal user id for this user.
Property Userid As %String;

/// Details is the service specific dynamic object containing specialized information for this user converted to JSON.
Property Details As %String(MAXLEN = "");

}
