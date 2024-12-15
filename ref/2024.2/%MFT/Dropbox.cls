/// The %MFT.Dropbox class is the subclass of %MFT.API which implements the APIs using Dropbox.<br>
/// NOTE: Two different kinds of Dropbox applications (and hence two different %SYS.MFT.Connection.Dropbox objects)
/// are needed in order to use the full API in this class.
/// A connection based on a Dropbox User application with Full Dropbox permission is needed to manage files and folders.
/// A connection based on a Dropbox Business application with Team Memeber Management permission is needed to manage users.
Class %MFT.Dropbox Extends %MFT.API [ System = 4 ]
{

/// Get the form of id for a file or folder that is most efficient for subsequent calls.
/// GetRequestId will return either an id of the form "id:<id>" or a full path depending on which is more efficient.
/// This method is included to allow the id for future requests to be saved in the most efficient form.
ClassMethod GetRequestId(connection As %SYS.MFT.Connection.Dropbox, itemInfo As %MFT.ItemInfo) As %String
{
}

/// Return the item info object which describes the specified folder.
/// path may be a folder path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
/// "" May be used as the path to specify the current folder.
/// If a folder does not exist at the specified path, then $$$OK is returned as status and itemInfo is returned as "".<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod GetFolderInfo(connection As %SYS.MFT.Connection.Dropbox, path As %String, Output itemInfo As %MFT.ItemInfo) As %Status
{
}

/// Return the item info object which describes the specified file or folder.
/// "" May be used as the itemPath to specify the current folder.<br>
/// If an item does not exist at the specified path, then $$$OK is returned as status and itemInfo is returned as "".<br>
/// %MFT.Dropbox only supports the file's owner getting information about a file.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod GetItemInfo(connection As %SYS.MFT.Connection.Dropbox, itemPath As %String, Output itemInfo As %MFT.ItemInfo) As %Status [ Internal ]
{
}

/// Create an ItemInfo object from a Dropbox response
ClassMethod CreateItemInfo(response As %DynamicObject) As %MFT.ItemInfo [ Internal ]
{
}

/// Get the external username that corresponds to the specified internal user id.
/// This call only works for files, since Dropbox does not return id of the last user that modified.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod GetUsername(connection As %SYS.MFT.Connection.Dropbox, internalId As %String, Output username As %String) As %Status
{
}

/// Delete the remote folder.
/// path may be a folder path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.<br>
/// If permanent is true, then the folder will be permanently deleted. Otherwise the folder will be moved to trash.<br>
/// The permanent argument is not yet implemented for Dropbox because using the permanently_delete API call
/// requires a different type of connection than that used for files, folders or users.
/// Dropbox support indicates that permanently_delete may be supported in the future for file API.<br>
/// If the remote folder does not exist at the specified path, then $$$OK is returned as status.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod DeleteFolder(connection As %SYS.MFT.Connection.Dropbox, path As %String, permanent As %Boolean = 0) As %Status
{
}

/// Creates the remote folder at the specified folderPath.
/// Each level of the folder path should be created separately if it does not already exist.
/// An %MFT.ItemInfo object is returned for the new folder.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod CreateFolder(connection As %SYS.MFT.Connection.Dropbox, folderPath As %String, Output itemInfo As %MFT.ItemInfo) As %Status
{
}

/// Return the folder contents object for the specified folder.
/// folderPath may be a folder path.
/// folderPath may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
/// "" May be used as the folderPath to specify the current folder.
/// The FolderContents object will include a list of %MFT.ItemInfo objects which contain a file or folder name
/// and some additional simple information.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod GetFolderContents(connection As %SYS.MFT.Connection.Dropbox, folderPath As %String, recursive As %Boolean = 0, Output folderContents As %MFT.FolderContents) As %Status
{
}

/// Return the item info object which describes the specified file.
/// path may be a file path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
/// If a file does not exist at the specified path, then $$$OK is returned as status and itemInfo is returned as "".<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod GetFileInfo(connection As %SYS.MFT.Connection.Dropbox, path As %String, Output itemInfo As %MFT.ItemInfo) As %Status
{
}

/// Delete the remote file.
/// path may be a file path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.<br>
/// If permanent is true, then the file will be permanently deleted. Otherwise the file will be moved to trash.<br>
/// The permanent argument is not yet implemented for Dropbox because using the permanently_delete API call
/// requires a different type of connection than that used for files, folders or users.
/// Dropbox support indicates that permanently_delete may be supported in the future for file API.<br>
/// If the remote file does not exist at the specified path, then $$$OK is returned as status.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod DeleteFile(connection As %SYS.MFT.Connection.Dropbox, path As %String, permanent As %Boolean = 0) As %Status
{
}

/// Update the specified remote file with the contents of the specified local file.
/// filePath must be a file path.  An id may not be specified.
/// If replace is true, then an existing file of the same name will be replaced.
/// The default is to return an error if a replacement is attempted.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod UploadFile(connection As %SYS.MFT.Connection.Dropbox, localFilePath As %String, filePath As %String, replace As %Boolean = 0, Output itemInfo As %MFT.ItemInfo) As %Status
{
}

/// Update the specified remote file with the contents of the specified stream.
/// filePath must be a file path.  An id may not be specified.
/// If replace is true, then an existing file of the same name will be replaced.
/// The default is to return an error if a replacement is attempted.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod UploadStream(connection As %SYS.MFT.Connection.Dropbox, stream As %BinaryStream, filePath As %String, replace As %Boolean = 0, Output itemInfo As %MFT.ItemInfo) As %Status
{
}

/// Download the specified remote file and store at the location given by localFilePath.
/// filePath may be a file path.
/// filePath may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod DownloadFile(connection As %SYS.MFT.Connection.Dropbox, filePath As %String, localFilePath As %String) As %Status
{
}

/// Download the specified remote file and store in the specified stream which must be a %FileBinaryStream or a %GlobalBinaryStream.
/// If stream is not specified, then a %GlobalBinaryStream will be created.
/// filePath may be a file path.
/// filePath may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod DownloadStream(connection As %SYS.MFT.Connection.Dropbox, filePath As %String, ByRef stream As %BinaryStream) As %Status
{
}

/// Share a folder with a list of users pass as a $list.
/// path may be a folder path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
/// The "editor" and "viewer" access levels are supported for all vendors.
/// Any additional Dropbox access levels are also supported.
/// A Dropbox user is specified as the email address associated with the account.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod ShareFolder(connection As %SYS.MFT.Connection.Dropbox, path As %String, accessLevel As %String = "viewer", users As %List) As %Status
{
}

/// Unshare a folder from a specified user.
/// path may be a folder path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
/// A Dropbox user is specified as the email address associated with the account.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod UnshareFolder(connection As %SYS.MFT.Connection.Dropbox, path As %String, User As %String) As %Status
{
}

/// Unshare a folder from all users.
/// path may be a folder path.
/// path may also be specified as an id of the form "id:<id>" which was obtained from a %MFT.ItemInfo object.
/// Passing intemInfo is for iternal use only.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod UnshareFolderAll(connection As %SYS.MFT.Connection.Dropbox, path As %String, itemInfo As %MFT.ItemInfo = "") As %Status
{
}

/// MountFolder is a Dropbox specific method to mount a shared folder that was shared by a different user.
/// MountFolder is needed since folders are not available to a user until he does the mount.
/// Since Dropbox will always share folders at the root of the receiving user, only a folder name is needed.
/// MountFolder must be executed using the connection for the user being shared with, not the owner's connection.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod MountFolder(connection As %SYS.MFT.Connection.Dropbox, folderName As %String) As %Status
{
}

/// UnmountFolder is a Dropbox specific method to unmount a shared folder that was shared by a different user.
/// UnmountFolder is needed since folders need to be mounted before a user different than the owner
/// may access them even if they are shared.
/// Since Dropbox will always share folders at the root of the receiving user, only a folder name is needed.
/// UnmountFolder must be executed using the connection for the user being shared with, not the owner's connection.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod UnmountFolder(connection As %SYS.MFT.Connection.Dropbox, folderName As %String) As %Status
{
}

/// GetMountableFolder is an internal method to get the shared_folder_id for the specified mountable folder.
/// GetMountableFolder sets isMounted to true if the folder is already mounted.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.
ClassMethod GetMountableFolder(connection As %SYS.MFT.Connection.Dropbox, folderName As %String, Output folderId As %String, Output isMounted As %Boolean) As %Status [ Internal ]
{
}

/// Get the internal shared folder id
ClassMethod GetSharedFolderId(itemInfo As %MFT.ItemInfo) As %String [ Internal ]
{
}

/// Unshare a file from all users.<br>
/// This method requires a connection based on a Dropbox User application with Full Dropbox permission.<br>
/// For internal use only.
ClassMethod UnshareFileAll(connection As %SYS.MFT.Connection.Dropbox, ByRef itemInfo As %MFT.ItemInfo = "") As %Status [ Internal ]
{
}

/// Create a new user.
/// The Userid and Detail properties are filled in by CreateUser if it is successful.<br>
/// This method requires a connection based on a Dropbox Business application with Team Memeber Management permission.
ClassMethod CreateUser(connection As %SYS.MFT.Connection.Dropbox, userInfo As %MFT.UserInfo) As %Status
{
}

/// Delete the user that is specified by the id.
/// For Dropbox the user will remain a Dropbox user, but be removed from the team.<br>
/// This method requires a connection based on a Dropbox Business application with Team Memeber Management permission.
ClassMethod DeleteUserById(connection As %SYS.MFT.Connection.Dropbox, userid As %String) As %Status
{
}

/// Delete the user that is specified by the email address (i.e. username).
/// For Dropbox the user will remain a Dropbox user, but be removed from the team.<br>
/// This method requires a connection based on a Dropbox Business application with Team Memeber Management permission.
ClassMethod DeleteUser(connection As %SYS.MFT.Connection.Dropbox, username As %String) As %Status
{
}

/// Common code to get the user information response
ClassMethod DeleteUserCommon(connection As %SYS.MFT.Connection.Dropbox, user As %DynamicObject) As %Status [ Internal ]
{
}

/// Retrieve the %MFT.UserInfo specified by the service defined Userid.
/// If the user does not exist, then $$$OK is returned as status and userInfo is returned as "".<br>
/// This method requires a connection based on a Dropbox Business application with Team Memeber Management permission.
ClassMethod GetUserById(connection As %SYS.MFT.Connection.Dropbox, userid As %String, Output userInfo As %MFT.UserInfo) As %Status
{
}

/// Retrieve the %MFT.UserInfo specified by the username
/// which is the email address for all currently supported services.
/// GetUser is potentially less efficient than GetUserById.
/// If the user does not exist, then $$$OK is returned as status and userInfo is returned as "".<br>
/// This method requires a connection based on a Dropbox Business application with Team Memeber Management permission.
ClassMethod GetUser(connection As %SYS.MFT.Connection.Dropbox, username As %String, Output userInfo As %MFT.UserInfo) As %Status
{
}

/// Common code to get the user information response
ClassMethod GetUserInfo(connection As %SYS.MFT.Connection.Dropbox, member As %DynamicObject, Output userInfo As %MFT.UserInfo) As %Status [ Internal ]
{
}

/// Return the list of all currently defined users for this team or enterprise.<br>
/// This method requires a connection based on a Dropbox Business application with Team Memeber Management permission.
ClassMethod GetUserList(connection As %SYS.MFT.Connection.Dropbox, Output userList As %MFT.UserList) As %Status
{
}

/// Create an UserInfo object from a Dropbox response
ClassMethod CreateUserInfo(response As %DynamicObject) As %MFT.UserInfo [ Internal ]
{
}

}
