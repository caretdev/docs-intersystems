/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.<p>
/// This is a wrapper class used by Studio to manipulate routines.
Class %Library.RoutineMgr Extends %RegisteredObject [ System = 2 ]
{

Parameter SQLPUBLICSECURITY = "{""RoutineMgr_DocumentTypes"":""E"",""RoutineMgr_StudioOpenDialog"":""Requires:%Development:USE"",""RoutineMgr_ImportItemList"":""Requires:%Development:USE""}";

/// The name of the routine associated with this object.
Property Name As %String;

/// The timestamp of the routine associated with this object.
Property TimeStamp As %TimeStamp [ Calculated ];

/// True is this is a CSP/CSR file, else false.
Property IsCSP As %Boolean [ Calculated ];

Method IsCSPGet() As %Boolean [ CodeMode = expression ]
{
}

/// Return the namespace this routine/csp file exists in. Mainly used for CSP file for the Studio.
Property Namespace As %String [ Calculated ];

/// Deprecated
Property Protected As %Boolean [ InitialExpression = 0 ];

Method NamespaceGet() As %String [ CodeMode = expression ]
{
}

Property Generated As %Boolean [ Calculated ];

Method GeneratedGet() As %Boolean
{
}

Property UpToDate As %Boolean [ Calculated ];

Method UpToDateGet() As %Boolean
{
}

/// A stream (<class>%Routine</class> or <class>%CSP.Routine</class>) containing the routine
/// associated with this object.
Property Code As %Routine;

Method %OnNew(name As %String = "") As %Status [ Private ]
{
}

/// Open an instance of <class>%RoutineMgr</class> for routine with name
/// <var>id</var>.
ClassMethod %OpenId(id As %String, concurrency As %Integer = 0) As %String
{
}

/// Save the routine associated with this object.
/// Return <var>Refresh</var>=1 if the save has changed
/// the document so it should be refreshed in the client
Method %Save(Output Refresh As %Boolean) As %Status
{
}

ClassMethod UserType(Name As %String, ByRef Class As %String, ByRef StudioType As %String, ByRef Schema As %String, ByRef StudioIcon As %Integer) As %Boolean
{
}

/// Compile the routine associated with this object.
Method Compile(qspec As %String = "") As %Status
{
}

/// Get the on-disk timestamp for the routine associated with this object.
Method GetCurrentTimeStamp(ByRef compiletime As %TimeStamp, ByRef uptodate As %Boolean) As %TimeStamp
{
}

Method TimeStampGet() As %TimeStamp [ CodeMode = expression ]
{
}

/// Return the timestamp for this item.
/// Also returns two output parameters <var>compiletime</var> is the time when this item was compiled, or null if not compiled.
/// <var>uptodate</var> returns true if the named document is up to date with the compiled version, and false if the named
/// document has been modified but not compiled, or a compiled subitem has been modified.
ClassMethod TS(name As %String, Output compiletime As %TimeStamp, Output uptodate As %Boolean) As %TimeStamp
{
}

Method NameSet(name As %String) As %Status
{
}

Method LanguageModeGet() As %Integer
{
}

Method LanguageModeSet(languagemode As %Integer) As %Status
{
}

/// Return true if this classname is a generated class, and false otherwise
ClassMethod IsClassGenerated(classname As %String) As %Boolean
{
}

/// Return true if this document is generated and false otherwise
ClassMethod IsGenerated(name As %String) As %Boolean
{
}

/// Returns true if this item is server only
ClassMethod IsServerOnly(name As %String) As %Boolean [ Internal ]
{
}

/// Return true if this item is mapped from a database other than the default routine database.
/// Also return the source database in <var>sourcedb</var>.
ClassMethod IsMapped(name As %String, ByRef sourcedb As %String) As %Boolean
{
}

/// Delete the routine <var>name</var>.
ClassMethod Delete(name As %String) As %Status
{
}

/// Used by Studio because it is hard to call %Studio.TemplateMgr directly
ClassMethod UpdateTemplates(qspec As %String) As %Status [ CodeMode = expression ]
{
}

/// Used by Studio to avoid calling %SQL.
ClassMethod CheckSQLIdentifier(ByRef ident As %String) As %Status [ CodeMode = expression ]
{
}

/// Return the port the InterSystems IRIS web server is running on or 0 if the
/// web server is not active. Also returns the server name which is useful if the web server
/// is running on a different machine. It can also
/// return a <var>urlprefix</var> which is added to the url to goto at the start and is required
/// if one web server is serving multiple InterSystems IRIS instances to differential between these versions.
/// It also returns <var>url</var> which is the constructed
/// url as a string, you just need to append the page you are going to request to this.
ClassMethod GetWebServerPort(ByRef port As %Integer, ByRef server As %String, ByRef urlprefix As %String, ByRef url As %String) As %Status [ Internal ]
{
}

/// Try to return the current servers IP address/name
ClassMethod ServerIP() As %String [ Internal, Private ]
{
}

/// Return true if this is item is a file under a CSP application
ClassMethod IsCSPName(name As %String) As %Boolean
{
}

/// Lock this routine, return true if it worked and false if it did not.
Method Lock() As %Status
{
}

/// Unlock this routine, return a status code.
Method Unlock() As %Status [ CodeMode = expression ]
{
}

/// Internal method to construct the correct error code if the item is not editable because
/// of source control hooks
ClassMethod ConstructEditError(name As %String, isinsourcecontrol As %Boolean, ischeckedout As %Boolean, user As %String) As %Status
{
}

/// Internal method to construct a CSP session with current security permissions and return the session id
ClassMethod ConstructCSPSession() As %String [ CodeMode = expression, Internal ]
{
}

/// Deprecated internal method to return the CSP session id of the session constructed with <method>ConstructCSPSession</method>.
/// This is no longer needed as <method>ConstructCSPSession</method> returns the CSP sessionId directly now.
ClassMethod ReturnCSPSessionId(id As %String) As %String [ CodeMode = expression, Deprecated, Internal ]
{
}

/// Return a list of the user document types that are defined
ClassMethod DocumentTypesExecute(ByRef QHandle As %Binary) As %Status
{
}

ClassMethod DocumentTypesClose(ByRef QHandle As %Binary) As %Status
{
}

ClassMethod DocumentTypesFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

/// Return a list of namespaces on this system
ClassMethod NamespaceListExecute(ByRef QHandle As %Binary) As %Status
{
}

ClassMethod NamespaceListClose(QHandle As %Binary) As %Status
{
}

ClassMethod NamespaceListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

/// Given a comma separated list of <var>filename</var> this will return
/// a list of the items that are in these filenames. Along with the name
/// of each item it will also return the timestamp of the item if it is
/// present in InterSystems IRIS already, and -1 if the item is not present. This allows
/// you to decide if you wish to import this item and overwrite the existing
/// item in InterSystems IRIS.
ClassMethod ImportItemListExecute(ByRef QHandle As %Binary, filename As %String(MAXLEN=512) = "", charset As %String = "", ByRef description As %String) As %Status
{
}

ClassMethod ImportItemListClose(QHandle As %Binary) As %Status
{
}

ClassMethod ImportItemListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer) As %Status [ CodeMode = expression ]
{
}

/// Returns the next <var>FetchCount</var> rows in the query.
ClassMethod ImportItemListFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status
{
}

/// Return true if the routine/csp/class/project/global/object code exists and false otherwise.
ClassMethod Exists(name As %String) As %Boolean
{
}

/// Get or release a lock on a document.
///  If <parameter>lock</parameter> is true (the default) then it will be locked else it will be unlocked.
ClassMethod LockItem(name As %String, lock As %Boolean = 1, checksource As %Boolean = 1) As %Status
{
}

/// Internal function to return absolute version number
ClassMethod ConvertVersion(name, type, version) As %String
{
}

/// Return the timestamp of this routine/csp/class/project/global/object code if it exists
/// or -1 if it does not exist
ClassMethod GetDate(name As %String) As %TimeStamp [ CodeMode = expression ]
{
}

/// Given a routine name return the name including extension that is most suitable for
/// Studio to open
ClassMethod BestRoutineMatch(name As %String) As %String
{
}

/// For a given source item, this function returns the source item(s) generated
/// from it or from which it was generated (depending on the 'direction' flag).
/// <ul>
/// <li><b>name</b> - string containing name of source item. For example: "Test" or
/// "Sample.Person" There is NO ".MAC" etc in this name.</li>
/// <li><b>type</b> -  string containing type of source item: This can be one of:
/// "INT","MAC","BAS","MVB","MVI","CLS","CSP","CSR","PY"</li>
/// <li><b>direction</b> - direction flag: +1 will go in the direction that files are
/// compiled in, for example MAC to INT or CLS to MAC, -1 will go in the opposite
/// direction, INT to MAC, MAC to CLS etc.</li>
/// </ul>
/// Returns comma-delimited list of source names (including type string appended to the
/// end) or "" if there is no corresponding other. Example:
/// <ul>
/// <li>("Test","INT",-1)  --> "Test.MAC"</li>
/// <li>("Test","MAC",1)  --> "Test.INT"</li>
/// <li>("Sample.Person","CLS",1)  -->  "Sample.Person.1.MAC,Sample.Person.2.MAC"</li>
/// <li>("/csp/samples/menu","CSP",1)  -->  "csp.menu.CLS"</li>
/// <li>("Sample.Person.1","MAC",-1)  -->  "Sample.Person.CLS"</li>
/// </ul><p>
/// Note that for classes the routines shown do not include the method generator routines.<p>
/// The <var>label</var> is of the form 'label+offset', if included then this will return the
/// routine name followed by a ':' and then the offset corresponding to this position
ClassMethod GetOther(name As %String, type As %String, direction As %Integer = 1, label As %String) As %String
{
}

ClassMethod builtInGetOther(name As %String, type As %String, direction As %Integer = 1) As %String [ Internal, Private ]
{
}

ClassMethod getClassesFromCSR(name As %String) As %String [ Internal, Private ]
{
}

ClassMethod getClassesFromCSRType(name As %String, prefix As %String, ByRef items As %String) [ Internal, Private ]
{
}

ClassMethod getRoutinesFromClass(class As %String, type As %Integer = 0) As %String
{
}

/// For internal use only
ClassMethod CompileClass(class As %String, qspec As %String, ByRef Reload As %Boolean) As %Status
{
}

/// Internal method to determine if we should display a directory or not
ClassMethod showDir(location As %String, ByRef w As %String) As %Boolean [ Internal, Private ]
{
}

/// Used to provide autocomplete in the open dialog, you pass in the <var>name</var> the user
/// has entered and the <var>mask</mask> which is the current pattern mask and it will return
/// null if it can not find a match or the next name that does match.
ClassMethod AutoComplete(name As %String(MAXLEN=512), mask As %String = "", ByRef complete As %String(MAXLEN=512), generated As %Boolean = 1, directory As %String = "", saveas As %Boolean = 0) As %Status
{
}

/// This query is used by the Studio open dialog to provide a list of the types
/// that can be opened. It will list all the items that match the <var>Spec</var>
/// ordered by the <var>OrderBy</var>.
/// The <var>Dir</var> specifies the direction to search in, 1 is
/// in ascending order (the default) and -1 is in descending order.
/// <p><var>Spec</var> may contain both * and ? as wildcards. It may also
/// consist of more than one, comma-delimited selections. If you wish to exclude items
/// then prefix the pattern with ' symbol.
/// <var>OrderBy</var> is one of:<ul>
/// <li>1 - Name of the file (the default), case insensitive</li>
/// <li>2 - Date/Time the file was saved</li>
/// <li>3 - Size of the file</li>
/// <li>4 - Type of the file ie. INT, MAC, INC, BAS, MVB</li>
/// <li>5 - Name of the file sorted case sensitively</li></ul>
/// The query returns the name of the item, a delimiter to use to constructing paths with
/// this item, if not specified it defaults to '.'. For example if the
/// delimiter is '.' and you put in the pattern 'package/*' then when you select this
/// a directory it should change the selection to 'package.newpackage/*'. Note that
/// it always assumes that there is a '/' after the directory before the pattern, so
/// for a CSP application where the delimiter returned is '/' if the spec was
/// '/csp/samples/*' and you click on a directory 'cinema' you should construct the
/// spec '/csp/samples/cinema/*'.
/// The type of the item which can be one of:<ul>
/// <li>0  - MAC file, a routine containing macros</li>
/// <li>1  - INT file, a standard routine</li>
/// <li>2  - INC file, an include file</li>
/// <li>3  - BAS file, a Cache Basic routine</li>
/// <li>4  - CLS, a class</li>
/// <li>5  - CSP, a Cache Server Page or another file in this directory</li>
/// <li>7  - GBL, a Global</li>
/// <li>8  - PRJ, a Project</li>
/// <li>9  - a Package</li>
/// <li>10 - a CSP application</li>
/// <li>11 - MVB file, a MultiValue Basic macro routine</li>
/// <li>12 - MVI file, a MultiValue Basic routine</li>
/// <li>13 - OBJ, object code</li>
/// </ul>Further numbers are reserved for future use.
/// It also returns the routine size and the date it was last saved.<p>
/// The <var>SystemFiles</var> is true the results will include '%' items and INFORMATION.SCHEMA items in the search. If false (the default), results will only include non-percent items and no INFORMATION.SCHEMA items.
/// <br>If <var>Flat</var> is true then it does not display directories but displays everything at the root level.
/// <br>If <var>NotStudio</var> is true then it will display globals and OBJ routines as well, for Studio we exclude these types.
/// <br>The <var>ShowGenerated</var> controls if this query includes items that are generated from another item, such as INT code that is generated from a class compilation.
/// <br>The <var>Filter</var> if specified allows additional restrictions on the items being returned by specifying the WHERE clause of an SQL statement on the
/// <class>%Studio.OpenDialogItems</class>, refer to this for a list of fields that can be referenced.
ClassMethod StudioOpenDialogExecute(ByRef QHandle As %Binary, Spec As %String(MAXLEN=512) = "", Dir As %Integer = 1, OrderBy As %Integer = 1, SystemFiles As %Boolean = 0, Flat As %Boolean = 0, NotStudio As %Boolean = 0, ShowGenerated As %Boolean = 1, Filter As %String(MAXLEN=512), RoundTime As %Boolean = 0, Mapped As %Boolean = 1) As %Status
{
}

ClassMethod StudioOpenDialogClose(QHandle As %Binary) As %Status
{
}

/// <b>Fetch</b> returns the next row in the query.
ClassMethod StudioOpenDialogFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

/// <b>StudioOpenDialogFetchRows</b> returns the next <var>FetchCount</var> rows in the query.
ClassMethod StudioOpenDialogFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status
{
}

/// User defined document types
ClassMethod getUserDocument(idx As %Integer, ByRef w As %String, ext As %String, directory As %String, sort As %Integer, system As %Boolean, flat As %Boolean, ShowGenerated As %Boolean, Mapped As %Boolean) As %Status [ Private ]
{
}

/// Add the list of backup items that match these patterns
ClassMethod getBackupList(idx As %Integer, ByRef w As %String, directory As %String, sort As %Integer, bkpstart As %String, bkpend As %String) [ Private ]
{
}

/// Fill up the list of globals that match the pattern in <var>w</var>.
ClassMethod getGlobalList(idx As %Integer, ByRef w As %String, directory As %String, sort As %Integer, SystemFiles As %Boolean) As %Status [ Private, PublicList = globaldir ]
{
}

/// Fill up the list of projects that match the pattern in <var>w</var>.
ClassMethod getProjectList(idx As %Integer, ByRef w As %String, directory As %String, sort As %Integer, RoundTime As %Boolean = 0) [ Private ]
{
}

/// Fill up the list of CSP applications and files that match the pattern in <var>w</var>.
ClassMethod getCSPList(idx As %Integer, ByRef w As %String, directory As %String, sort As %Integer, flat As %Boolean, ByRef visited As %String, origdir As %String) [ Private ]
{
}

/// Fill up the list of class that match the pattern in <var>w</var>.
ClassMethod getClassList(idx As %Integer, ByRef work As %String, directory As %String, sort As %Integer, clsStart As %String, clsEnd As %String, SystemFiles As %Boolean = 0, flat As %Boolean, ShowGenerated As %Boolean, RoundTime As %Boolean = 0) [ Private ]
{
}

/// Fill up the list of packages for this directory.
ClassMethod getPackageList(idx As %Integer, directory As %String, SystemFiles As %Boolean, namespace As %String = {$namespace}, ByRef work As %String)
{
}

/// Fill up the list of packages for this directory.
ClassMethod getRoutineList(idx As %Integer, ByRef work As %String, directory As %String, sort As %Integer, rtnStart As %String, rtnEnd As %String, SystemFiles As %Boolean, flat As %Boolean, ShowGenerated As %Boolean, notlist As %Boolean = 0, RoundTime As %Boolean = 0) [ Private ]
{
}

ClassMethod getRoutineBlock(idx As %Integer, ByRef w As %String, directory As %String, sort As %Integer, rtnStart As %String, rtnEnd As %String, SystemFiles As %Boolean, flat As %Boolean, number As %Integer, ShowGenerated As %Boolean, RoundTime As %Boolean = 0) [ Private ]
{
}

/// Passed a pattern match this returns an COS style pattern and a start and stop point.
ClassMethod genPattern(pSpec As %String, ByRef prAS As %String, ByRef prAE As %String, ByRef prPattern As %String, pFlag As %Integer) [ Private ]
{
}

/// Given a CSP path create the associated directory.
ClassMethod CreateCSPDirectory(directory) As %Status
{
}

/// Method implemented for Studio
ClassMethod FeatureBits(bit As %Integer = "") As %Binary [ Internal ]
{
}

ClassMethod OnPageCode(language As %String, xml As %Boolean = 0) As %String
{
}

ClassMethod CheckDeveloperRole() As %Status [ Internal ]
{
}

ClassMethod KillProcess(pid As %String) As %Status [ Internal ]
{
}

ClassMethod NormalizeName(name As %String) As %String
{
}

/// Used to delete the files associated with a directory from the open dialog
ClassMethod DeletePackage(package) As %Status
{
}

/// Calculates the names of all documents that are not up-to-date with their compiled code and returns their names as a subscripted array.<p>
/// Arguments:
/// <ul>
/// <li><b>pDocumentList</b> - A subscripted array of document names with the format pDocumentList("User.Test.cls")="". Can be used as the first argument to <b>$SYSTEM.OBJ.CompileList()</b>.</li>
/// <li><b>pSpec</b>         - Check documents that match this spec. May contain both * and ? as wildcards.
///   It may also consist of more than one, comma-delimited selections. If you wish to exclude items
///   then prefix the pattern with ' symbol.</li>
/// <li><b>pSystem</b>       - Check system documents.</li>
/// <li><b>pGenerated</b>    - Check generated documents.</li>
/// <li><b>pMapped</b>       - Check documents that are mapped from another code database.</li>
/// </ul>
ClassMethod OutOfDateDocuments(Output pDocumentList As %String, pSpec As %String(MAXLEN=512) = "*", pSystem As %Boolean = 0, pGenerated As %Boolean = 0, pMapped As %Boolean = 1) As %Status
{
}

}
