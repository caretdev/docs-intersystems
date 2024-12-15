/// Represents a Studio Project.
/// <p>Many methods in this class use the <var>qspec</var> argument, which is a list of flags or qualifiers.
/// See <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=ObjectScript+qspec">System Flags and Qualifiers</a>.</p>
Class %Studio.Project Extends (%Persistent, %XML.Adaptor) [ System = 3 ]
{

Parameter SQLPUBLICSECURITY = "{""Project_ProjectItemsList"":""Requires:%Development:USE"",""Project_WatchVariablesList"":""Requires:%Development:USE"",""Project_BreakPointsList"":""Requires:%Development:USE"",""Project_WatchPointsList"":""Requires:%Development:USE""}";

Property Name As %String(MAXLEN = 64, XMLNAME = "name", XMLPROJECTION = "attribute");

Property LastModified As %Studio.TimeStamp(XMLPROJECTION = "attribute");

Property Description As %String(MAXLEN = 4000, XMLNAME = "ProjectDescription", XMLPROJECTION = "element");

Property Target As %String(MAXLEN = 256, XMLPROJECTION = "attribute");

ClassMethod TargetNormalize(val As %String) As %String
{
}

Property TargetType As %Integer(XMLPROJECTION = "attribute");

Property RunInTerminal As %Boolean(XMLPROJECTION = "attribute");

Property HttpServer As %String(MAXLEN = 256, XMLPROJECTION = "attribute");

Property Locked As %Integer(XMLPROJECTION = "none") [ Transient ];

Property TerminalUsername As %String(MAXLEN = 64, XMLPROJECTION = "attribute");

Property TerminalPassword As %String(MAXLEN = 64, XMLPROJECTION = "attribute");

Property TerminalPort As %Integer(XMLPROJECTION = "attribute");

Property Projections As list Of %String(MAXLEN = 128, XMLPROJECTION = "none");

Property Defines As %String(MAXLEN = 4000, XMLPROJECTION = "attribute");

Property DebugStepping As %String(MAXLEN = 64, XMLPROJECTION = "none");

/// Temporary stream for passing information between InterSystems IRIS and client system.
Property Stream As %FileBinaryStream(XMLPROJECTION = "none") [ Transient ];

/// Temporary name of the stream
Property StreamName As %String(MAXLEN = 256, XMLPROJECTION = "none") [ Transient ];

Relationship Items As ProjectItem(XMLITEMNAME = "ProjectItem", XMLPROJECTION = "wrapped") [ Cardinality = children, Inverse = Project ];

Relationship BreakPoints As BreakPoint(XMLITEMNAME = "BreakPoint", XMLPROJECTION = "wrapped") [ Cardinality = children, Inverse = Project ];

Relationship WatchVariables As WatchVariable(XMLITEMNAME = "WatchVariable", XMLPROJECTION = "wrapped") [ Cardinality = children, Inverse = Project ];

Relationship WatchPoints As WatchPoint(XMLITEMNAME = "WatchPoint", XMLPROJECTION = "wrapped") [ Cardinality = children, Inverse = Project ];

Method %OnNew(initvalue) As %Status
{
}

Method %OnOpen() As %Status [ Private ]
{
}

Method %OnBeforeSave(insert As %Boolean) As %Status [ Private ]
{
}

Method %OnAfterSave(insert As %Boolean) As %Status [ Private ]
{
}

Method %OnClose() As %Status [ Private ]
{
}

Method %IsModified() As %Integer
{
}

Method %ObjectModified() As %Integer
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being deleted.
///
/// <P>If this method returns an error then the object will not be deleted.
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Private ]
{
}

/// Return the timestamp the project with <var>name</var> was last updated.
ClassMethod GetDate(name As %String) As %TimeStamp
{
}

Method NameSet(val As %String) As %Status
{
}

ClassMethod NameIsValid(val As %String) As %Status
{
}

/// Delete this project
ClassMethod Delete(id As %String) As %Status
{
}

/// Lock the project.
Method Lock() As %Status
{
}

/// Unlock the project.
Method Unlock() As %Status
{
}

/// Lock a project with the <var>name</var>. If <var>lock</var> is true then it is locked
/// and if it is false then it is unlocked.
ClassMethod LockItem(name As %String, lock As %Boolean) As %Status
{
}

/// Create a clone of this project and then save it with a new name. Note that if the
/// target name already exists then it will be deleted without warning. It is the responsibility
/// of the caller to check if it wishes to overwrite the new name or not.
Method CreateClone(name As %String) As %Status [ ProcedureBlock = 1 ]
{
}

/// Add an item to the project, you can just pass the full name in the <var>name</var> argument and nothing in the
/// <var>type</var> argument and this will add the correct type information automatically.
Method AddItem(name As %String, type As %String = "") As %Status
{
}

Method RemoveItem(name As %String, type As %String = "") As %Status
{
}

Method AddBreakPoint(rtn As %String, offset As %Integer, condition As %String = "", label As %String = "") As %Status
{
}

Method RemoveBreakPoint(rtn As %String, offset As %Integer, label As %String = "") As %Status
{
}

Method RemoveBreakPointsForRoutine(rtn As %String) As %Status
{
}

/// Remove all break points from a project.<br>
Method RemoveAllBreakPoints() As %Status
{
}

Method AddWatchPoint(var As %String, condition As %String = "") As %Status
{
}

Method RemoveWatchPoint(var As %String, condition As %String = "") As %Status
{
}

/// Remove all break points from a project.<br>
Method RemoveAllWatchPoints() As %Status
{
}

Method AddWatchVariable(variable As %String, pane As %Integer) As %Status
{
}

Method RemoveWatchVariable(variable As %String, pane As %Integer) As %Status
{
}

/// Remove all watch variables from a project.<br>
Method RemoveAllWatchVariables() As %Status
{
}

/// Get the on-disk timestamp for the project.
Method GetCurrentTimeStamp() As %TimeStamp
{
}

/// Return comma separated list of items in this project which can be called as web pages
Method ListWebPages(ByRef pages As %String(MAXSTRING=""), qspec As %String = "") As %Status
{
}

/// Compile all the items in this project, using the <var>qspec</var>. The order
/// of compilation is INT, CLS, MAC, CSR, CSP, other.
Method Compile(qspec As %String = "", ByRef %errorlog As %String) As %Status
{
}

/// Compile all the items in itemlist. Used by <method>Compile</method> and <Method>Import</Method>.
ClassMethod realCompile(qstruct, ByRef %errorlog As %String, ByRef itemlist As %String, ByRef updatedlist As %String) As %Status
{
}

ClassMethod compileUserType(name As %String, ByRef qstruct As %String) As %Status [ Private ]
{
}

/// Export this project in XML format to the <var>filename</var>.<p>
/// If the <var>justproject</var> is true then it will only export the project
/// definition, but not any items in this project, otherwise the default behavour
/// is to export all the items in the project to the same XML file.<p>
/// The <var>qspec</var> are the standard cache objects qualifiers.<p>
Method Export(ByRef filename As %String, qspec As %String, justproject As %Boolean, ByRef %errorlog As %String, Charset As %String = "", ShowFilename As %Boolean = 1) As %Status
{
}

/// Check the project so that if any items are do not exist then we will remove them from the project
Method Check() As %Status
{
}

/// Package up this project into a global for deployment. This can be imported using the <method>InstallFromGbl</method>.
/// The qualifiers are used to determine if we should export selectivity information using the /exportselectivity qualifier.
/// Also the /keepsource will determine if we add intermediate compilation files such as User.Test.1.int when you are creating
/// a package containing User.Test.cls. If you pass removesource=1 then it will strip out all source code in the package
/// including class method code, and routines.
Method DeployToGbl(gbl As %String, qspec As %String, removesource As %Boolean = 0) As %Status
{
}

/// Package up this project into a global for deployment and then export this global to the file specified.
/// This can be imported using the <method>InstallFromFile</method>.
/// The qualifiers are used to determine if we should export selectivity information using the /exportselectivity qualifier.
/// Also the /keepsource will determine if we add intermediate compilation files such as User.Test.1.int when you are creating
/// a package containing User.Test.cls. If you pass removesource=1 then it will strip out all source code in the package
/// including class method code, and routines. If the filename ends in .gz or .gzip it will automatically gzip the file.
Method DeployToFile(file As %String, qspec As %String, removesource As %Boolean = 0) As %Status
{
}

/// Export this project to a DAT file or a global for deployment.  The DAT file will be stored in the <var>deploydir</var>
/// directory.<p>
/// The <var>qspec</var> are the standard cache objects qualifiers.<p>
Method Deploy(ByRef deploydir As %String, qspec As %String, ByRef %errorlog As %String, ShowFilename As %Boolean = 1, gbl As %String = "", removesource As %Boolean = 0) As %Status
{
}

Method addclass(classname As %String) [ Internal, Private ]
{
}

Method createDatabase(ByRef deploydir As %String, ByRef qstruct As %String) As %Status [ Private ]
{
}

Method deployToDatabase(ByRef deploydir As %String, ByRef qstruct As %String, removesource As %Boolean = 0) As %Status [ Private ]
{
}

Method deployGbl(gbl As %String, ByRef qstruct As %String, removesource As %Boolean = 0) As %Status [ Private ]
{
}

ClassMethod packGbls(target, type, name, ByRef gbls) [ Internal ]
{
}

/// Backup the items that will be replaced when installing a deployed set of items to <var>backupgbl</var>
ClassMethod BackupDeployContent(gbl As %String, backupgbl As %String, qspec As %String) As %Status
{
}

/// This will install any routines, classes and globals into the current namespace
/// from a file created with the <method>DeployToFile</method>. The qualifiers respects the
/// /importselectivity item to determine of we should import selectivity information from this package.
/// If you pass in a %Studio.Project in <var>project</var> then this will be returned with all the items
/// in the deployment in <var>gbl</var> added to the project. If <var>listonly</var> is true then nothing
/// will be actually changed in the database, so you can list items. If <var>runinstall</var> is false then
/// if the deployment contains a routine called 'INSTALL' (note not in the database, but in the deployment)
/// then we will not automatically run this after installing the items in this deployment. The default
/// is to run the INSTALL routine if present.
ClassMethod InstallFromFile(file As %String, qspec As %String, runinstall As %Boolean = 1, ByRef project As %Studio.Project, listonly As %Boolean = 0, backupgbl As %String = "", validatesig As %Boolean = 0, transaction As %Boolean = 1)
{
}

/// This will install any routines, classes and globals into the current namespace
/// from a global created with the <method>DeployToGbl</method>. The qualifiers respects the
/// /importselectivity item to determine if we should import selectivity information from this package.
/// If you pass in a %Studio.Project in <var>project</var> then this will be returned with all the items
/// in the deployment in <var>gbl</var> added to the project. If <var>listonly</var> is true then nothing
/// will be actually changed in the database, so you can list items. If <var>runinstall</var> is true then
/// if the deployment contains a routine called 'INSTALL' (note not in the database, but in the deployment)
/// then we will automatically run PRE^INSTALL before the installation and ^INSTALL after installing the items
/// in this deployment. The default is to run the INSTALL routine if present.
/// If <var>backupgbl</var> is defined then any items which will
/// be replaced by items in the package are backed up to this global location first. Also if the deployment contains
/// an INSTALL routine then this will be placed in the backup as UNINSTALL, and if the deployment contains an UNINSTALL
/// routine this will be placed in the backup as INSTALL. So when the backup is installed (do you uninstall this deployment)
/// it will run the PRE^UNINSTALL routine of the original deployment and after it is uninstalled it will run ^UNINSTALL.
/// If <var>transaction</var> is false then we will not use a transaction to allow rolling back the install. If <var>validatesig</var>
/// is true we will validate any code being replaced is the original version installed from InterSystems.
ClassMethod InstallFromGbl(gbl As %String, qspec As %String, runinstall As %Boolean = 1, ByRef project As %Studio.Project, listonly As %Integer = 0, backupgbl As %String = "", validatesig As %Boolean = 0, transaction As %Boolean = 1)
{
}

ClassMethod internalInstall(gbl As %String, qspec As %String, runinstall As %Boolean = 1, ByRef items As %String, listonly As %Integer = 0, transaction As %Boolean = 1) [ Internal, Private ]
{
}

/// Wrapper to <method>Deploy</method> which returns a binary stream in <property>Stream</property>
/// rather than writing to a file.
Method DeployToStream(qspec As %String, ByRef %errorlog As %String) As %Status
{
}

/// Wrapper to <method>Export</method> which returns a stream in <property>Stream</property>
/// rather than writing to a file.
Method ExportToStream(qspec As %String, justproject As %Boolean, ByRef %errorlog As %String, file As %String = "", Charset As %String = "") As %Status
{
}

/// This will try and set the <property>Stream</property> to point to the filename <var>file</var>.
/// This is used by the Studio so the Import method shows the filename the user expects.
Method SetStreamName(file As %String = "") As %Status
{
}

/// Return the name of the stream. Used by Studio because it can not access the Stream
/// property directly
Method GetStreamName() As %String
{
}

/// Export a <var>list</var> of items to the <var>filename</var> specified. The list can either be
/// comma delimited such as 'TEST.MAC,Example.CLS,/csp/samples/loop.csp' or a subscripted array
/// with the first subscript being the name of the item to export. The <var>qspec</var> are the standard
/// ObjectScript qualifiers, if the "d" is passed then it will output status information to the current
/// device.
ClassMethod ExportList(ByRef filename As %String, ByRef list As %String, qspec As %String, Charset As %String = "", ShowFilename As %Boolean = 1) As %Status
{
}

/// Wrapper to <method>ExportList</method> which returns a stream in <property>Stream</property>
/// rather than writing to a file.
Method ExportListToStream(ByRef list As %String, qspec As %String, file As %String = "", Charset As %String = "") As %Status
{
}

/// Import the XML description of routines, classes, CSP files, and projects into this namespace.
/// This returns the list of items imported in <var>imported</var> separated by commas.
/// You can pass in the <var>qspec</var> to tell it if it should compile these imported elements as well.
/// If <var>listonly</var> is true then it will just return the list of items to import and not
/// import anything. <var>selecteditems</var> is an optional comma separated list of items, if present
/// then it will only import these items and it will skip any item not in this list.
/// The <var>filename</var> may be a comma separated list of files.
ClassMethod Import(filename As %String, qspec As %String, ByRef %errorlog As %String, ByRef imported As %String, listonly As %Boolean = 0, selecteditems As %String = "", displayname As %String) As %Status [ CodeMode = expression ]
{
}

/// Wrapper to <method>Import</method> which is passed a stream in <property>Stream</property>
/// rather than a file.
Method ImportFromStream(qspec As %String, ByRef %errorlog As %String, ByRef imported As %String, listonly As %Boolean = 0, selecteditems As %String = "") As %Status
{
}

/// Wrapper to ExportCDLList^%apiOBJ which returns a stream in <property>stream</property>
/// rather than writing to a file. You pass this a comma separated list of classes, or an
/// array subscripted by the class name. The <var>file</var> is the filename to output this
/// to without the directory.
Method ExportCDLToStream(classname As %String = "", qspec As %String = "", file As %String = "", Charset As %String = "") As %Status
{
}

/// Wrapper to Export^%apiRTN which returns a stream in <property>stream</property>
/// rather than writing to a file. You pass this a comma separated list of routines or an
/// array subscripted by the routine name. The <var>file</var> is the filename to output this
/// to without the directory.
Method ExportRtnToStream(rtnlist As %String = "", qspec As %String = "", file As %String = "", Charset As %String = "") As %Status
{
}

/// Wrapper to Export^%apiRTN which returns a stream in <property>stream</property>
/// rather than writing to a file. You pass this a comma separated list of routines or an
/// array subscripted by the routine name. The <var>file</var> is the filename to output this
/// to without the directory.
ClassMethod ExportRtn(rtnlist As %String = "", qspec As %String = "", file As %String = "", Charset As %String = "", ShowFilename As %Boolean = 1) As %Status
{
}

ClassMethod sLoadLargeList(filestream As %GlobalCharacterStream, qspec As %String, ByRef errorlog As %String, loadedliststream As %GlobalCharacterStream, listonly As %Boolean, selecteditemstream As %GlobalCharacterStream) As %Status
{
}

Method sLoadStreamLargeList(qspec As %String, ByRef errorlog As %String, loadedliststream As %GlobalCharacterStream, listonly As %Boolean, selecteditemstream As %GlobalCharacterStream) As %Status
{
}

ClassMethod sCompileLargeList(itemliststream As %GlobalCharacterStream, qspec As %String, ByRef errorlog As %String) As %Status
{
}

ClassMethod StreamToArray(stream As %Stream.Object, ByRef array As %String, delim As %String = ",")
{
}

ClassMethod ArrayToStream(ByRef array As %String, stream As %Stream.Object)
{
}

/// List of all projects
/// List of all items for a project
ClassMethod ProjectItemsListExecute(ByRef QHandle As %Binary, project As %String(MAXLEN=512), noexpandpackages As %Boolean = 0) As %Status
{
}

ClassMethod ProjectItemsListClose(QHandle As %Binary) As %Status
{
}

ClassMethod ProjectItemsListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

/// <b>ProjectItemsListFetchRows</b> returns the next <var>FetchCount</var> rows in the query.
ClassMethod ProjectItemsListFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status
{
}

/// List of all break points for a project
/// List of all break points for a project
/// List of all watch variables for a project
/// Find a particular string inside this project.
/// <br><var>String</var> is the string to search for.
/// The list of matches is written to the screen. If <var>WholeWords</var> is true then it will only find whole
/// words and not fragments, it defaults to false. If <var>CaseSensitive</var> is true (the default)
/// then the search is case sensitive, otherwise it is case insensitive.
/// The maximum number of matches it will find can be specified in <var>Max</var>
/// which defaults to 200. If <var>wild</var> is false then the <var>PatternList</var> does not contain
/// any wild cards and so should be treated as a string literal search even the pattern contains ?*\ characters.
Method FindInProject(String As %String, WholeWords As %Boolean = 0, CaseSensitive As %Boolean = 1, Max As %Integer = 200, wild As %Boolean = 1) As %Status
{
}

/// <p>Search a list of files or a project for a string, or using a Regular Expression. Writes matches to the current device.</p>
/// <p>Arguments:</p>
/// <ul>
/// <li><code>pQuery</code> - The string to search for, or a Regular Expression if <code>pRegex</code> is <code>1</code>.</li>
/// <li><code>pRegex</code> - If <code>1</code>, <code>pQuery</code> will be interpreted as a Regular Expression and <code>pWholeWords</code>, <code>pCaseSensitive</code>, and <code>pWildCards</code> will be ignored. Defaults to <code>0</code>.</li>
/// <li><code>pWholeWords</code> - If <code>1</code>, only whole word matches will be returned, not fragments. Ignored if <code>pRegex</code> is <code>1</code>. Defaults to <code>0</code>.</li>
/// <li><code>pCaseSensitive</code> - If <code>1</code>, the search is case sensitive. Ignored if <code>pRegex</code> is <code>1</code>. Defaults to <code>1</code>.</li>
/// <li><code>pWildCards</code> - If <code>0</code>, wild card characters <code>?*\</code> will be treated as literals. Ignored if <code>pRegex</code> is <code>1</code>. Defaults to <code>1</code>.</li>
/// <li><code>pMax</code> - The maximum number of matches to return. Defaults to <code>200</code>.</li>
/// <li><code>pProject</code> - The project to search in. If empty, <code>pDocuments</code>, <code>pSystem</code>, <code>pGenerated</code>, and <code>pMapped</code> will be used to specify the files to search.</li>
/// <li><code>pDocuments</code> - The list of files to search. See the documentation for the <code>Spec</code> parameter of the <code>StudioOpenDialog</code> query in <CLASS>%Library.RoutineMgr</CLASS> for allowed syntax. Ignored if <code>pProject</code> is not empty.</li>
/// <li><code>pSystem</code> - If <code>1</code>, system files will be searched (where source is available). Ignored if <code>pProject</code> is not empty. Defaults to <code>0</code>.</li>
/// <li><code>pGenerated</code> - If <code>1</code>, generated files will be searched. Ignored if <code>pProject</code> is not empty. Defaults to <code>0</code>.</li>
/// <li><code>pMapped</code> - If <code>1</code>, files mapped from other namespaces will be searched. Ignored if <code>pProject</code> is not empty. Defaults to <code>1</code>.</li>
/// <li><code>pIncludeRegex</code> - If a file name matches this Regular Expression, it will be included in the search. The matching is case sensitive and file names are normalized so that the first character and path separator are <code>/</code> (for example, <code>/%Api/Atelier/v6.cls</code> and <code>/csp/user/menu.csp</code>). Defaults to the empty string and no matching is done.</li>
/// <li><code>pExcludeRegex</code> - If a file name matches this Regular Expression, it will be excluded from the search. Follows the same rules as <code>pIncludeRegex</code>. Defaults to the empty string and no matching is done.</li>
/// </ul>
ClassMethod FindInFilesAtelierv6(pQuery As %String, pRegex As %Boolean = 0, pWholeWords As %Boolean = 0, pCaseSensitive As %Boolean = 1, pWildCards As %Boolean = 1, pMax As %Integer = 200, pProject As %String = "", pDocuments As %String(MAXLEN=512) = "", pSystem As %Boolean = 0, pGenerated As %Boolean = 0, pMapped As %Boolean = 1, pIncludeRegex As %String = "", pExcludeRegex As %String = "") As %Status [ Internal ]
{
}

/// Find a particular string inside a list of files.
/// <br><var>String</var> is the string to search for.
/// The <var>PatternList</var> is the list of items to search. Typically this will
/// be '*.*' but you can specify just MAC and INC files with '*.mac,*.inc' or a
/// list of individual files with 'abc.mac,def.cls'. The acceptable extensions at this
/// time are int,mac,inc,bas,cls,csp,csr,prj,mvm,bam,mvb.
/// The list of matches is written to the screen. If <var>pSystem</var> is true then it also
/// searches system routines and classes (where the source is available) when searching the
/// entire namespace. If <var>WholeWords</var> is true then it will only find whole
/// words and not fragments, it defaults to false. If <var>CaseSensitive</var> is true (the default)
/// then the search is case sensitive, otherwise it is case insensitive.
/// The maximum number of matches it will find can be specified in <var>Max</var>
/// which defaults to 200. If <var>wild</var> is false then the <var>String</var> does not contain
/// any wild cards and so should be treated as a string literal search even if it contains ?*\ characters.
ClassMethod FindInFiles(String As %String, PatternList As %String, pSystem As %Boolean = 0, WholeWords As %Boolean = 0, CaseSensitive As %Boolean = 1, Max As %Integer = 200, Filter As %String(MAXLEN=512) = "", wild As %Boolean = 1, pGenerated As %Boolean = 1, pMapped As %Boolean = 1) As %Status
{
}

ClassMethod pattern(pattern As %String, wholewords As %Boolean = 0, ByRef wild As %Boolean) As %String [ Internal ]
{
}

/// Search this specific item for the string
ClassMethod searchItem(pattern As %String, Name As %String, ByRef Found As %Integer = 0, wild As %Boolean = 0, CaseSensitive As %Boolean = 1, Max As %Integer = 200, Pattern As %String, WholeWords As %Boolean = 0) As %Boolean [ Private ]
{
}

/// Search this class for the string
ClassMethod searchClassNode(Name As %String, ref As %String, type As %String, NewName As %String, pattern As %String, ByRef Found As %Integer, Tree As %String, CaseSensitive As %Boolean = 1, Max As %Integer = 200, Wild As %Boolean = 0) [ Private ]
{
}

/// Search a list of files, using a Regular Expression.
/// <br><var>Regex</var> is the Regular Expression for the search.
/// The <var>ItemList</var> is the list of items to search. Typically this will
/// be '*.*' but you can specify just MAC and INC files with '*.mac,*.inc' or a
/// list of individual files with 'abc.mac,def.cls'. The acceptable extensions at this
/// time are int,mac,inc,bas,cls,csp,csr,prj,mvm,bam,mvb.
/// <br>
/// The list of matches is written to the current device.
/// <br>
/// If <var>pSystem</var> is true then it also
/// searches system routines and classes (where the source is available).
/// If <var>pGenerated</var> is true then it also searches generated items.
/// The maximum number of matches it will find can be specified in <var>Max</var>
/// which defaults to 200.
ClassMethod FindInFilesRegex(Regex As %String, ItemList As %String, pSystem As %Boolean = 0, pGenerated As %Boolean = 0, Max As %Integer = 200, pMapped As %Boolean = 1) As %Status
{
}

/// Search this specific item for the string
ClassMethod searchItemRegex(Matcher As %Regex.Matcher, Name As %String, ByRef Found As %Integer, Max As %Integer = 200) As %Boolean [ Private ]
{
}

/// Search this class for the string
ClassMethod searchClassNodeRegex(Matcher As %Regex.Matcher, Name As %String, ref As %String, type As %String, NewName As %String, ByRef Found As %Integer, Tree As %String, Max As %Integer = 200) [ Private ]
{
}

ClassMethod DeleteItem(name As %String)
{
}

/// Normalize the name passed in and determine its type
ClassMethod NormalizeName(ByRef name As %String, ByRef type As %String = "", skiptype As %Boolean = 0) As %Status
{
}

ClassMethod Normalize() As %Status
{
}

/// Internal method to determine if all classes in this project are up to date.
/// The <var>uptodate</var> is returned as a %Boolean value to indicate if everything is up to date or not.
/// If some items are not up to date then the items in question are returned in a comma separated list in <var>notuptodate</var>.
Method IsUpToDate(ByRef uptodate As %Boolean, ByRef notuptodate As %String = "") As %Status [ Internal ]
{
}

}
