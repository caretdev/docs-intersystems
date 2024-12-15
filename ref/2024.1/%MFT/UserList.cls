/// %MFT.UserList lists all users defined for this enterprise or team.
/// Note: Even though this class is in IRISLIB, the storage is in the namespace which creates the instance.
Class %MFT.UserList Extends (%Persistent, %XML.Adaptor) [ System = 4 ]
{

/// Users is a list of users.
Property Users As list Of %MFT.UserInfo;

}
