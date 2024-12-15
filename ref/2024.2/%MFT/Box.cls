/// The %MFT.Box class is the subclass of %MFT.API which implements the APIs using Box.<br>
Class %MFT.Box Extends %MFT.API [ System = 4 ]
{

Parameter BOXFIELDS = "name,content_modified_at,modified_at,modified_by,item_status";

/// Get the form of id for a file or folder that is most efficient for subsequent calls.
/// GetRequestId will return either an id of the form "id:<id>" or a full path depending on which is more efficient.
/// This method is included to allow the id for future requests to be saved in the most efficient form.
ClassMethod GetRequestId(connection As %SYS.MFT.Connection.Box, itemInfo As %MFT.ItemInfo) As %String
{
}

/// Return the item info object which describes the specified folder.
/// path may be a folder path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
/// "" May be used as the path to specify the current folder.
/// If a folder does not exist at the specified path, then $$$OK is returned as status and itemInfo is returned as "".
ClassMethod GetFolderInfo(connection As %SYS.MFT.Connection.Box, path As %String, Output itemInfo As %MFT.ItemInfo) As %Status
{
}

/// Return the id and type of the file or folder specified by the input path.
ClassMethod GetItemId(connection As %SYS.MFT.Connection.Box, ByRef path As %String, Output id As %String, Output type As %Integer) As %Status [ Internal ]
{
}

/// Create an ItemInfo object from a Box response
ClassMethod CreateItemInfo(response As %DynamicObject, containerPath As %String = "") As %MFT.ItemInfo [ Internal ]
{
}

/// Get the external username that corresponds to the specified internal user id.
ClassMethod GetUsername(connection As %SYS.MFT.Connection.Box, internalId As %String, Output username As %String) As %Status
{
}

/// Delete the remote folder.
/// path may be a folder path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.<br>
/// If permanent is true, then the folder will be permanently deleted. Otherwise the folder will be moved to trash.<br>
/// If the remote folder does not exist at the specified path, then $$$OK is returned as status and itemInfo is returned as "".
ClassMethod DeleteFolder(connection As %SYS.MFT.Connection.Box, path As %String, permanent As %Boolean = 0) As %Status
{
}

/// Creates the remote folder at the specified folderPath.
/// Each level of the folder path should be created separately if it does not already exist.
/// An %MFT.ItemInfo object is returned for the new folder.
ClassMethod CreateFolder(connection As %SYS.MFT.Connection.Box, folderPath As %String, Output itemInfo As %MFT.ItemInfo) As %Status
{
}

/// Return the folder contents object for the specified folder.
/// folderPath may be a folder path.
/// folderPath may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
/// "" May be used as the folderPath to specify the current folder.
/// The FolderContents object will include a list of %MFT.ItemInfo objects which contain a file or folder name
/// and some additional simple information.
ClassMethod GetFolderContents(connection As %SYS.MFT.Connection.Box, folderPath As %String, recursive As %Boolean = 0, Output folderContents As %MFT.FolderContents) As %Status
{
}

/// Internal method for recursing over subfolders to return the folder contents object for the specified folder.
ClassMethod GetFolderContentsInternal(connection As %SYS.MFT.Connection.Box, folderId As %String, path As %String, recursive As %Boolean = 0, folderContents As %MFT.FolderContents) As %Status [ Internal ]
{
}

/// Return the item info object which describes the specified file.
/// path may be a file path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
/// If a file does not exist at the specified path, then $$$OK is returned as status and itemInfo is returned as "".
ClassMethod GetFileInfo(connection As %SYS.MFT.Connection.Box, path As %String, Output itemInfo As %MFT.ItemInfo) As %Status
{
}

/// Delete the remote file.
/// path may be a file path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.<br>
/// If permanent is true, then the file will be permanently deleted. Otherwise the file will be moved to trash.<br>
/// If the remote file does not exist at the specified path, then $$$OK is returned as status and itemInfo is returned as "".
ClassMethod DeleteFile(connection As %SYS.MFT.Connection.Box, path As %String, permanent As %Boolean = 0) As %Status
{
}

/// Update the specified remote file with the contents of the specified local file.
/// filePath must be a file path.  An id may not be specified.
/// If replace is true, then an existing file of the same name will be replaced.
/// The default is to return an error if a replacement is attempted.
ClassMethod UploadFile(connection As %SYS.MFT.Connection.Box, localFilePath As %String, filePath As %String, replace As %Boolean = 0, Output itemInfo As %MFT.ItemInfo) As %Status
{
}

/// Update the specified remote file with the contents of the specified stream.
/// filePath must be a file path.  An id may not be specified.
/// If replace is true, then an existing file of the same name will be replaced.
/// The default is to return an error if a replacement is attempted.
ClassMethod UploadStream(connection As %SYS.MFT.Connection.Box, stream As %BinaryStream, filePath As %String, replace As %Boolean = 0, Output itemInfo As %MFT.ItemInfo) As %Status
{
}

/// Download the specified remote file and store at the location given by localFilePath.
/// filePath may be a file path.
/// filePath may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
ClassMethod DownloadFile(connection As %SYS.MFT.Connection.Box, filePath As %String, localFilePath As %String) As %Status
{
}

/// Download the specified remote file and store in the specified stream which must be a %FileBinaryStream or a %GlobalBinaryStream.
/// If stream is not specified, then a %GlobalBinaryStream will be created.
/// filePath may be a file path.
/// filePath may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
ClassMethod DownloadStream(connection As %SYS.MFT.Connection.Box, filePath As %String, ByRef stream As %BinaryStream) As %Status
{
}

/// Share a folder with a list of users pass as a $list.
/// path may be a folder path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
/// The "editor" and "viewer" access levels are supported for all vendors.
/// The defined Box roles are supported as access levels.
/// The editor access level becomes the Manager role and the viewer access level becomes the Viewer role.
/// A Box user is specified as the email address associated with the account.
ClassMethod ShareFolder(connection As %SYS.MFT.Connection.Box, path As %String, accessLevel As %String = "viewer", users As %List) As %Status
{
}

/// Unshare a folder from a specified user.
/// path may be a folder path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
/// A Box user is specified as the email address associated with the account.
ClassMethod UnshareFolder(connection As %SYS.MFT.Connection.Box, path As %String, user As %String) As %Status
{
}

/// Unshare a folder from all users.
/// path may be a folder path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
ClassMethod UnshareFolderAll(connection As %SYS.MFT.Connection.Box, path As %String) As %Status
{
}

/// MountFolder is a Dropbox specific method to mount a shared folder that was shared by a different user.
/// MountFolder is treated as a NOP for all other services.
ClassMethod MountFolder(connection As %SYS.MFT.Connection.Box, folderName As %String) As %Status
{
}

/// UnmountFolder is a Dropbox specific method to unmount a shared folder that was shared by a different user.
/// UnmountFolder is treated as a NOP for all other services.
ClassMethod UnmountFolder(connection As %SYS.MFT.Connection.Box, folderName As %String) As %Status
{
}

/// Internal method for getting all collaboration ids by user associated with a folder.
/// The collaborations local array is returned as collaboration(<username>)=<collaboration id>
ClassMethod GetCollaborations(connection As %SYS.MFT.Connection.Box, folderId As %String, Output collaborations As %String) As %Status [ Internal ]
{
}

/// Create a new user.
/// The Userid and Detail properties are filled in by CreateUser if it is successful.
ClassMethod CreateUser(connection As %SYS.MFT.Connection.Box, userInfo As %MFT.UserInfo) As %Status
{
}

/// Delete the user that is specified by the id.
ClassMethod DeleteUserById(connection As %SYS.MFT.Connection.Box, userid As %String) As %Status
{
}

/// Delete the user that is specified by the email address (i.e. username).
ClassMethod DeleteUser(connection As %SYS.MFT.Connection.Box, username As %String) As %Status
{
}

/// Retrieve the %MFT.UserInfo specified by the service defined Userid.
/// If the user does not exist, then $$$OK is returned as status and userInfo is returned as "".
ClassMethod GetUserById(connection As %SYS.MFT.Connection.Box, userid As %String, Output userInfo As %MFT.UserInfo) As %Status
{
}

/// Retrieve the %MFT.UserInfo specified by the username
/// which is the email address for all currently supported services.
/// GetUser is potentially less efficient than GetUserById.
/// If the user does not exist, then $$$OK is returned as status and userInfo is returned as "".
ClassMethod GetUser(connection As %SYS.MFT.Connection.Box, username As %String, Output userInfo As %MFT.UserInfo) As %Status
{
}

/// Return the list of all currently defined users for this team or enterprise.
ClassMethod GetUserList(connection As %SYS.MFT.Connection.Box, Output userList As %MFT.UserList) As %Status
{
}

/// Create an UserInfo object from a Box response
ClassMethod CreateUserInfo(response As %DynamicObject) As %MFT.UserInfo [ Internal ]
{
}

}
