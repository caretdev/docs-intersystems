"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[28716],{40727:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>r,default:()=>d,frontMatter:()=>o,toc:()=>i});var n=s(74848),a=s(28453);const o={pagination_prev:null,pagination_next:null},r="%MFT.Box",i=[{value:"Parameters",id:"parameters",level:2},{value:"BOXFIELDS",id:"boxfields",level:3},{value:"Methods",id:"methods",level:2},{value:"GetRequestId",id:"getrequestid",level:3},{value:"GetFolderInfo",id:"getfolderinfo",level:3},{value:"GetItemId",id:"getitemid",level:3},{value:"CreateItemInfo",id:"createiteminfo",level:3},{value:"GetUsername",id:"getusername",level:3},{value:"DeleteFolder",id:"deletefolder",level:3},{value:"CreateFolder",id:"createfolder",level:3},{value:"GetFolderContents",id:"getfoldercontents",level:3},{value:"GetFolderContentsInternal",id:"getfoldercontentsinternal",level:3},{value:"GetFileInfo",id:"getfileinfo",level:3},{value:"DeleteFile",id:"deletefile",level:3},{value:"UploadFile",id:"uploadfile",level:3},{value:"UploadStream",id:"uploadstream",level:3},{value:"DownloadFile",id:"downloadfile",level:3},{value:"DownloadStream",id:"downloadstream",level:3},{value:"ShareFolder",id:"sharefolder",level:3},{value:"UnshareFolder",id:"unsharefolder",level:3},{value:"UnshareFolderAll",id:"unsharefolderall",level:3},{value:"MountFolder",id:"mountfolder",level:3},{value:"UnmountFolder",id:"unmountfolder",level:3},{value:"GetCollaborations",id:"getcollaborations",level:3},{value:"CreateUser",id:"createuser",level:3},{value:"DeleteUserById",id:"deleteuserbyid",level:3},{value:"DeleteUser",id:"deleteuser",level:3},{value:"GetUserById",id:"getuserbyid",level:3},{value:"GetUser",id:"getuser",level:3},{value:"GetUserList",id:"getuserlist",level:3},{value:"CreateUserInfo",id:"createuserinfo",level:3}];function l(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"mftbox",children:"%MFT.Box"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %MFT.Box Extends %MFT.API [ System = 4 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"The %MFT.Box class is the subclass of %MFT.API which implements the APIs using Box."}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"boxfields",children:"BOXFIELDS"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter BOXFIELDS = "name,content_modified_at,modified_at,modified_by,item_status";\n'})}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"getrequestid",children:"GetRequestId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetRequestId(connection As %SYS.MFT.Connection.Box, itemInfo As %MFT.ItemInfo) As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:'Get the form of id for a file or folder that is most efficient for subsequent calls. GetRequestId will return either an id of the form "id:" or a full path depending on which is more efficient. This method is included to allow the id for future requests to be saved in the most efficient form.'}),"\n",(0,n.jsx)(t.h3,{id:"getfolderinfo",children:"GetFolderInfo"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetFolderInfo(connection As %SYS.MFT.Connection.Box, path As %String, Output itemInfo As %MFT.ItemInfo) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:'Return the item info object which describes the specified folder. path may be a folder path. path may also be specified as an id of the form "id:" which was obtained from a %MFT.ItemInfo object. "" May be used as the path to specify the current folder. If a folder does not exist at the specified path, then $$$OK is returned as status and itemInfo is returned as "".'}),"\n",(0,n.jsx)(t.h3,{id:"getitemid",children:"GetItemId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetItemId(connection As %SYS.MFT.Connection.Box, ByRef path As %String, Output id As %String, Output type As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the id and type of the file or folder specified by the input path."}),"\n",(0,n.jsx)(t.h3,{id:"createiteminfo",children:"CreateItemInfo"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod CreateItemInfo(response As %DynamicObject, containerPath As %String = "") As %MFT.ItemInfo [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Create an ItemInfo object from a Box response"}),"\n",(0,n.jsx)(t.h3,{id:"getusername",children:"GetUsername"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetUsername(connection As %SYS.MFT.Connection.Box, internalId As %String, Output username As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Get the external username that corresponds to the specified internal user id."}),"\n",(0,n.jsx)(t.h3,{id:"deletefolder",children:"DeleteFolder"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DeleteFolder(connection As %SYS.MFT.Connection.Box, path As %String, permanent As %Boolean = 0) As %Status\n"})}),"\n",(0,n.jsxs)(t.p,{children:['Delete the remote folder. path may be a folder path. path may also be specified as an id of the form "id:" which was obtained from a %MFT.ItemInfo object.',(0,n.jsx)(t.br,{}),"\nIf permanent is true, then the folder will be permanently deleted. Otherwise the folder will be moved to trash.",(0,n.jsx)(t.br,{}),'\nIf the remote folder does not exist at the specified path, then $$$OK is returned as status and itemInfo is returned as "".']}),"\n",(0,n.jsx)(t.h3,{id:"createfolder",children:"CreateFolder"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CreateFolder(connection As %SYS.MFT.Connection.Box, folderPath As %String, Output itemInfo As %MFT.ItemInfo) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Creates the remote folder at the specified folderPath. Each level of the folder path should be created separately if it does not already exist. An %MFT.ItemInfo object is returned for the new folder."}),"\n",(0,n.jsx)(t.h3,{id:"getfoldercontents",children:"GetFolderContents"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetFolderContents(connection As %SYS.MFT.Connection.Box, folderPath As %String, recursive As %Boolean = 0, Output folderContents As %MFT.FolderContents) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:'Return the folder contents object for the specified folder. folderPath may be a folder path. folderPath may also be specified as an id of the form "id:" which was obtained from a %MFT.ItemInfo object. "" May be used as the folderPath to specify the current folder. The FolderContents object will include a list of %MFT.ItemInfo objects which contain a file or folder name and some additional simple information.'}),"\n",(0,n.jsx)(t.h3,{id:"getfoldercontentsinternal",children:"GetFolderContentsInternal"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetFolderContentsInternal(connection As %SYS.MFT.Connection.Box, folderId As %String, path As %String, recursive As %Boolean = 0, folderContents As %MFT.FolderContents) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Internal method for recursing over subfolders to return the folder contents object for the specified folder."}),"\n",(0,n.jsx)(t.h3,{id:"getfileinfo",children:"GetFileInfo"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetFileInfo(connection As %SYS.MFT.Connection.Box, path As %String, Output itemInfo As %MFT.ItemInfo) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:'Return the item info object which describes the specified file. path may be a file path. path may also be specified as an id of the form "id:" which was obtained from a %MFT.ItemInfo object. If a file does not exist at the specified path, then $$$OK is returned as status and itemInfo is returned as "".'}),"\n",(0,n.jsx)(t.h3,{id:"deletefile",children:"DeleteFile"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DeleteFile(connection As %SYS.MFT.Connection.Box, path As %String, permanent As %Boolean = 0) As %Status\n"})}),"\n",(0,n.jsxs)(t.p,{children:['Delete the remote file. path may be a file path. path may also be specified as an id of the form "id:" which was obtained from a %MFT.ItemInfo object.',(0,n.jsx)(t.br,{}),"\nIf permanent is true, then the file will be permanently deleted. Otherwise the file will be moved to trash.",(0,n.jsx)(t.br,{}),'\nIf the remote file does not exist at the specified path, then $$$OK is returned as status and itemInfo is returned as "".']}),"\n",(0,n.jsx)(t.h3,{id:"uploadfile",children:"UploadFile"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod UploadFile(connection As %SYS.MFT.Connection.Box, localFilePath As %String, filePath As %String, replace As %Boolean = 0, Output itemInfo As %MFT.ItemInfo) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Update the specified remote file with the contents of the specified local file. filePath must be a file path. An id may not be specified. If replace is true, then an existing file of the same name will be replaced. The default is to return an error if a replacement is attempted."}),"\n",(0,n.jsx)(t.h3,{id:"uploadstream",children:"UploadStream"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod UploadStream(connection As %SYS.MFT.Connection.Box, stream As %BinaryStream, filePath As %String, replace As %Boolean = 0, Output itemInfo As %MFT.ItemInfo) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Update the specified remote file with the contents of the specified stream. filePath must be a file path. An id may not be specified. If replace is true, then an existing file of the same name will be replaced. The default is to return an error if a replacement is attempted."}),"\n",(0,n.jsx)(t.h3,{id:"downloadfile",children:"DownloadFile"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DownloadFile(connection As %SYS.MFT.Connection.Box, filePath As %String, localFilePath As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:'Download the specified remote file and store at the location given by localFilePath. filePath may be a file path. filePath may also be specified as an id of the form "id:" which was obtained from a %MFT.ItemInfo object.'}),"\n",(0,n.jsx)(t.h3,{id:"downloadstream",children:"DownloadStream"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DownloadStream(connection As %SYS.MFT.Connection.Box, filePath As %String, ByRef stream As %BinaryStream) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:'Download the specified remote file and store in the specified stream which must be a %FileBinaryStream or a %GlobalBinaryStream. If stream is not specified, then a %GlobalBinaryStream will be created. filePath may be a file path. filePath may also be specified as an id of the form "id:" which was obtained from a %MFT.ItemInfo object.'}),"\n",(0,n.jsx)(t.h3,{id:"sharefolder",children:"ShareFolder"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod ShareFolder(connection As %SYS.MFT.Connection.Box, path As %String, accessLevel As %String = "viewer", users As %List) As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:'Share a folder with a list of users pass as a $list. path may be a folder path. path may also be specified as an id of the form "id:" which was obtained from a %MFT.ItemInfo object. The "editor" and "viewer" access levels are supported for all vendors. The defined Box roles are supported as access levels. The editor access level becomes the Manager role and the viewer access level becomes the Viewer role. A Box user is specified as the email address associated with the account.'}),"\n",(0,n.jsx)(t.h3,{id:"unsharefolder",children:"UnshareFolder"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod UnshareFolder(connection As %SYS.MFT.Connection.Box, path As %String, user As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:'Unshare a folder from a specified user. path may be a folder path. path may also be specified as an id of the form "id:" which was obtained from a %MFT.ItemInfo object. A Box user is specified as the email address associated with the account.'}),"\n",(0,n.jsx)(t.h3,{id:"unsharefolderall",children:"UnshareFolderAll"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod UnshareFolderAll(connection As %SYS.MFT.Connection.Box, path As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:'Unshare a folder from all users. path may be a folder path. path may also be specified as an id of the form "id:" which was obtained from a %MFT.ItemInfo object.'}),"\n",(0,n.jsx)(t.h3,{id:"mountfolder",children:"MountFolder"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod MountFolder(connection As %SYS.MFT.Connection.Box, folderName As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"MountFolder is a Dropbox specific method to mount a shared folder that was shared by a different user. MountFolder is treated as a NOP for all other services."}),"\n",(0,n.jsx)(t.h3,{id:"unmountfolder",children:"UnmountFolder"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod UnmountFolder(connection As %SYS.MFT.Connection.Box, folderName As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"UnmountFolder is a Dropbox specific method to unmount a shared folder that was shared by a different user. UnmountFolder is treated as a NOP for all other services."}),"\n",(0,n.jsx)(t.h3,{id:"getcollaborations",children:"GetCollaborations"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetCollaborations(connection As %SYS.MFT.Connection.Box, folderId As %String, Output collaborations As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Internal method for getting all collaboration ids by user associated with a folder. The collaborations local array is returned as collaboration()="}),"\n",(0,n.jsx)(t.h3,{id:"createuser",children:"CreateUser"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CreateUser(connection As %SYS.MFT.Connection.Box, userInfo As %MFT.UserInfo) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Create a new user. The Userid and Detail properties are filled in by CreateUser if it is successful."}),"\n",(0,n.jsx)(t.h3,{id:"deleteuserbyid",children:"DeleteUserById"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DeleteUserById(connection As %SYS.MFT.Connection.Box, userid As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Delete the user that is specified by the id."}),"\n",(0,n.jsx)(t.h3,{id:"deleteuser",children:"DeleteUser"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DeleteUser(connection As %SYS.MFT.Connection.Box, username As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Delete the user that is specified by the email address (i.e. username)."}),"\n",(0,n.jsx)(t.h3,{id:"getuserbyid",children:"GetUserById"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetUserById(connection As %SYS.MFT.Connection.Box, userid As %String, Output userInfo As %MFT.UserInfo) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:'Retrieve the %MFT.UserInfo specified by the service defined Userid. If the user does not exist, then $$$OK is returned as status and userInfo is returned as "".'}),"\n",(0,n.jsx)(t.h3,{id:"getuser",children:"GetUser"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetUser(connection As %SYS.MFT.Connection.Box, username As %String, Output userInfo As %MFT.UserInfo) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:'Retrieve the %MFT.UserInfo specified by the username which is the email address for all currently supported services. GetUser is potentially less efficient than GetUserById. If the user does not exist, then $$$OK is returned as status and userInfo is returned as "".'}),"\n",(0,n.jsx)(t.h3,{id:"getuserlist",children:"GetUserList"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetUserList(connection As %SYS.MFT.Connection.Box, Output userList As %MFT.UserList) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the list of all currently defined users for this team or enterprise."}),"\n",(0,n.jsx)(t.h3,{id:"createuserinfo",children:"CreateUserInfo"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CreateUserInfo(response As %DynamicObject) As %MFT.UserInfo [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Create an UserInfo object from a Box response"})]})}function d(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(l,{...e})}):l(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>r,x:()=>i});var n=s(96540);const a={},o=n.createContext(a);function r(e){const t=n.useContext(o);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),n.createElement(o.Provider,{value:t},e.children)}}}]);