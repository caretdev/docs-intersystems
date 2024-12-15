/// This dialog page displays a file selection window
/// listing directories and files on the <em>server</em>.
/// This is intended for use within server portal pages.<br/>
/// To use this dialog, the current user must hold USE privileges on
/// one of the following resources:<br/>
/// %Admin_Manage,%Admin_Operate,%Admin_Secure,%Development <br/>
/// For an production-enabled namespace, resource %Ens_ViewFileSystem is required.
/// <h3>How to Use This Dialog </h3>
/// <ul>The following arguments maybe passed in:
/// <li><b>Dir:</b> This is the default directory path and optionally with a filename. It is encouraged that you provide a default directory and filename whenever possible.
/// Alternatively you can pass in the filename using a separate argument <b>File</b></li>
/// <li><b>showdirectoryonly:</b> 1 or 0. If 1, then the dialog will show directories only. Default is 0.</li>
/// <li><b>wildcard:</b> a wildcard for "Type of files" to filter the files. Examples:*.xml, *.txt, *.log, etc. Default is *.*, i.e if nothing passed in then files of all types are shown.</li>
/// <li><b>extfilter:</b> only display files whose extension appears in the list. Values should be specified in the same format as <b>wildcard</b>. If this parameter is specified <b>wildcard</b> is ignored.
/// This will remove the option to display all files (*) and files with no extension will never be displayed. Note that on UNIX platforms the extensions are case sensitive.
/// To display files with the extension .TXT or .txt, you should use 'extfilter=*.txt;*.TXT'.</li>
/// </ul>
/// <h4>Example invoking the fileSelect dialog to open in a popup window:</h4>
/// <Example>
/// 	zenLaunchPopupWindow('%ZEN.Dialog.fileSelect.cls?Dir='+encodeURIComponent(Dir)+'&wildcard='+wildcard,'FileSelect','resizable,width=600,height=700');
/// </Example>
/// <p>If <b>Dir</b> is null, then the manager directory is used when the dialog is opened. If <b>Dir</b> contains a partial directory, then the last valid level
/// of directory, if can be found, is used. If <b>Dir</b> contains a filename or a partical name without a directory then the manager directory is used
/// for the filename. When OK is pressed, whatever is shown in the <b>File name</b> field is returned to the calling page.
/// </p>
/// <p>
/// If you are opening the dialog as a popup window such as shown in the above example, then you should have an onPopupAction method defined on the calling page.
/// In the following example, a Zen control "FileName" is defined on your calling page, and upon returning from the fileSelect dialog by clicking "OK",
/// the returned value will be set into your Zen control "FileName":
/// <Example>
/// ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
/// {
/// 	if (action == "ok") {
/// 		if (popupName == "FileSelect") zen("FileName").setValue(value);
/// 	}
/// }
/// </Example>
/// </p>
/// <p>ISC Developers: Please use caution when modifying logic in this class. Your change needs to be tested in Windows, Unix, and VMS for all cases.
/// </p>
Class %ZEN.Dialog.fileSelect Extends %CSP.Portal.standardDialog [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

Parameter VALIDATEXML = 0;

/// Whether to show directory only or with files
Property showdirectoryonly As %ZEN.Datatype.string(ZENURL = "showdirectoryonly");

/// Original Directory path and/or filename passed in. If null is passed in, then manager directory will be used.
Property DirFile As %ZEN.Datatype.string(ZENURL = "Dir");

/// Composed Default Directory path. After much checking, this is the final default directory that is used as default.
Property DefaultDirectory As %ZEN.Datatype.string;

/// Original File name passed in (optional)
Property FileName As %ZEN.Datatype.string(ZENURL = "File");

Property ExtFilter As %ZEN.Datatype.string(ZENURL = "extfilter");

Property isWINDOWS As %Boolean [ InitialExpression = "0" ];

Property isVMS As %Boolean [ InitialExpression = "0" ];

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Zen page notification of an HTTP request.
ClassMethod %OnPreHTTP() As %Boolean [ Internal, ServerOnly = 1 ]
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

/// User selected a different directory from "Lookin" drop-down. If FileName is available, add to the newly selected directory.
ClientMethod changeDrive(thisobj) [ Language = javascript ]
{
}

ClientMethod changeSortOrder(value) [ Language = javascript ]
{
}

ClientMethod reloadLookin(driveobj, tvalue) [ Language = javascript ]
{
}

/// changeView
ClientMethod changeView(viewtype) [ Language = javascript ]
{
}

/// up one level
ClientMethod upOneLevel() [ Language = javascript ]
{
}

/// This method refreshes the contents with the current file type and directory/file name
ClientMethod changeFileType() [ Language = javascript ]
{
}

/// Examine if user hit the Return key. If yes, start the search.
/// This method handles all keydown events on the window.
ClientMethod onkeydownHandler(evt) [ Language = javascript ]
{
}

/// Build file and directory list
Method GetViewContents(ByRef pParms As %String, Output pContents As %String, ByRef pHeader As %String) As %Status
{
}

/// This callback is called after the server-side page
/// object and all of its children are created.<br>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

/// This method builds the list of drives for the "look in" window. It will contain
/// the available drives (mount points), or the user-configured set of available directories.
/// In addition, it will contain the set of parent directories for the specified directory.
Method BuildDrive(Output drives As %String, ByRef drive As %String, Output lastexistingdir As %String)
{
}

/// Given a file path, return the matching root path, or "" if it is invalid.
/// The values must be normalized prior to calling, otherwise this will be
/// vulnerable to directory traversal attacks, and because Windows file paths
/// are case insensitive.
Method FindRoot(path As %String, ByRef roots As %String) As %String [ Private ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// User clicked an item.
/// We put it in the File name field. User can OK it or [Enter] to drill down.
ClientMethod itemClicked(viewobj) [ Language = javascript ]
{
}

/// User has selected a new item (double click).
ClientMethod itemSelected(viewobj) [ Language = javascript ]
{
}

/// Construct new directory given the Look in directory and selected directory from the middle frame
ClassMethod GetSubDir(LookinDir, Dir) As %String [ ZenMethod ]
{
}

/// Construct new directory given the Look in directory and selected directory from the middle frame
Method RebuildLookin(Dir, wildcard) [ ZenMethod ]
{
}

/// Check if user entered directory exists. Return a valid directory.
Method GetDirectory(Dir As %String) As %String [ ZenMethod ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
/// Check FileName value. If user entered a path, then return as is.<br>
/// If user enters something but not including a path, then add selected path in front of it.<br>
/// It is possible that user is entering a sub directory or file, therefore as a curtersey we add the path for them.<br>
/// In addition, if user enters a filename without a file extension, then we add the filetype choice from the drop-down.
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

ClientMethod hasdelimiter(file) [ Language = javascript ]
{
}

/// ****** The Following Methods are Called from UtilFile*.csp Also ******<br>
/// If user enters a directory but without drive, we add the drive here. This overrides the "Look in" directory.
/// For Windows and VMS only.
ClassMethod CheckPath(Path As %String, File As %String, FileType As %String) As %String [ ZenMethod ]
{
}

/// Check if user entered filename ends with ":". If yes, then we should add "/" or [000000] to make valid drive.<br>
/// For Windows: If user enters : without \ then we add it here.<br>
/// For VMS: If user enters : without any [directory] then add [000000] here.<br>
/// If we don't do this then directory would be invalid.
ClassMethod CheckRootDir(File As %String) As %String [ ZenMethod ]
{
}

/// Construct new new file name, if it does not have dir yet
ClassMethod GetDirFile(LookinDir, File, FileType) As %String [ ZenMethod ]
{
}

/// Check if file has extension. If not, add it.
ClassMethod CheckFileExt(File, FileType) As %String [ ZenMethod ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

}
