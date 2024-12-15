/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25ExtentMgr.Util">Extents</a>.</p>
/// <p>The sample class mentioned here (Sample.Person) is part of <a target="_top" href="https://github.com/intersystems/Samples-Data">https://github.com/intersystems/Samples-Data.</a>
/// See <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=landing+githubsamples">Downloading Samples</a>.</p>
/// <p>
/// The Extent Manager maintains extent definitions and globals registered for use by those extents.
/// Extent definitions most commonly originate from compiling a persistent class but can also be
/// defined outside of any class. The Util class provides a public interface for deleting extent
/// definitions and registering the extents of all managedextent classes or a single class.
/// </p>
/// <p>
/// In addition to the public interface implemented here, the %ExtentMgr tables are visible to SQL and
/// can be queried directly. There are two examples implemented in %ExtentMgr.Util - <method>GlobalUses</method> and
/// <method>GlobalsUsed</method>. Both are public class methods that return a single result set and both are projected
/// as stored procedures and can be invoked by dynamic SQL, embedded SQL or through an xDBC client. These
/// methods are more important as examples of how the %ExtentMgr tables can be queried. The primary global
/// registry is modeled by %ExtentMgr.GlobalRegistry. That class contains just a few properties of interest:
/// GlobalName, GlobalReference and UsedBy. The GlobalName is the unsubscripted global name, GlobalReference
/// is the full global reference of the root global reference that is used by the UsedBy extent. Querying this
/// class is trivial. UsedBy is a reference to <class>%ExtentMgr.Catalog.Extent</class>. The IDKEY of %ExtentMgr.Catalog.Extent
/// is the extent name. The extent name is almost always the same as the class name followed by the extent type of ".cls".
/// The GlobalsUsed method includes a sample query that returns all of the globals registered for use by a
/// specified extent.
/// </p>
Class %ExtentMgr.Util [ Abstract, System = 4 ]
{

/// DEPRECATED - refer to <method>DeleteExtentDefinition</method>. Maintained for backward compatibility only.
ClassMethod DeleteExtent(extent As %String(MAXLEN=""), extentType As %String = "cls") As %Status [ Deprecated ]
{
}

/// DeleteExtentDefinition() will delete the extent metadata from the Extent Manager and remove all global registry
/// entries that are registered for use by this extent. This method does not delete the extent data. Only the extent
/// metadata is deleted.
ClassMethod DeleteExtentDefinition(extent As %String(MAXLEN=""), extentType As %String = "cls") As %Status
{
}

ClassMethod DeleteExtentDefinitionIfExists(extent As %String(MAXLEN=""), extentType As %String = "cls") As %Status [ CodeMode = expression ]
{
}

/// This method deletes all extent definitions from the catalog. No data is affected.
/// If <var>display</var> is true then status messages will be displayed on the current
/// device.
ClassMethod DeleteAllExtentDefinitions(display As %Integer = 0) As %Status
{
}

/// This method registers the extents all classes in the current namespace.
/// If <var>display</var> is true then status messages will be displayed on the current
/// device.
ClassMethod RegisterAllClasses(display As %Integer = 0) As %Status
{
}

/// 	This method registers the extent of <var>pClassName</var> in the Extent Manager Catalog.
/// 	If the extent has been previously registered and the new extent definition is compatible with the
/// 	existing extent then the extent is updated.
ClassMethod RegisterClass(pClassName As %String(MAXLEN=""), ByRef pGlobalRef As %String) As %Status
{
}

/// <p>This method registers an extent that is not necessarily an extent of a persistent class. It can be either the
/// extent of a persistent class that does not use default storage or it can simply be an extent that exists with
/// no class definition. It can be used to simply register global references so that those globals cannot be used for any
/// conflicting purpose.</p>
/// <p>This method accepts an extent name, extent type and an array of global references that are used by the extent.</p>
/// <p><var>pExtentType</var> is expected to be "cls" for the extent of a class. The extent type is always converted
/// to lower case.
/// 	</p>
/// <p>
/// <table border=1>
/// <th>
/// Parameters
/// </th>
/// <tr>
/// 		<td>pExtentName</td>
/// 		<td>Input</td>
/// 		<td>
/// 			The name of the entity whose extent is to be registered. This name is normally a class name of a persistent class but
/// 				for custom extents this name can be anything that does not conflict with another extent name. This name
/// 				and the <var>pExtentType</var> form the extent name that is registered in the Extent Catalog.
/// 				For example, "SampleCustomGlobals" with a <var>pExtentType</var> = "gbl" might be a custom extent name used to register globals used
/// 				directly in the Sample applications, forming an extent name of "SampleCustomGlobals.gbl".
/// 		</td>
/// </tr>
/// <tr>
/// 		<td>pExtentType</td>
/// 		<td>Input</td>
/// 		<td>
/// 			The extent type. "cls" is the type for persistent extents. For custom extents, this can be anything
/// 				but it should be descriptive. For example, "gbl" might be used to register globals used directly by
/// 				and application.
/// 		</td>
/// </tr>
/// <tr>
/// 		<td>pGlobalRef</td>
/// 		<td>ByRef</td>
/// 		<td>
/// 			An array of global references to be registered as used by this extent. This array is expected to be defined
/// 				as pGlobalRef(<var>subscript</var>)=<var>global_reference</var> where <var>subscript</var> is normally a simple
/// 				integer and <var>global_reference</var> is the global reference to be registered for use by this extent. The number
/// 				of entries is not limited but there are practical limits.
/// 		</td>
/// </tr>
/// </table>
/// </p>
/// <br>
/// 	<p>
/// 	<b>Return value</b>: This method returns a %Status value indicating success or failure.
/// 	</p>
ClassMethod RegisterCustomExtent(pExtentName, ByRef pExtentType As %String = "", ByRef pGlobalRef As %String) As %Status
{
}

/// <p>This method registers a global reference in the global registry for use by the
/// requested <var>pExtentName</var> extent. If no incompatible uses are found then the method succeeds.
/// Otherwise, an error message indicating the conflict and type of conflict is returned.</p>
/// <p>
/// <table border=1>
/// <th>
/// Parameters
/// </th>
/// <tr>
/// 		<td>pExtentName</td>
/// 		<td>Input</td>
/// 		<td>
/// 			The name of the entity that uses the reference to be registered. This name is
/// 				normally a class name of a persistent class but for custom extents this name can be anything
/// 				that does not conflict with another extent name. This name and the <var>pExtentType</var> form
/// 				the extent name that is registered in the Extent Catalog.
/// 				For example, "SampleCustomGlobals.gbl" might be a custom extent name used to register globals used
/// 				directly in the Sample applications.
/// 		</td>
/// </tr>
/// <tr>
/// 		<td>pExtentType</td>
/// 		<td>Input</td>
/// 		<td>
/// 			The extent type. "cls" is the type for persistent extents. For custom extents, this can be anything
/// 				but it should be descriptive. For example, "gbl" might be used to register globals used directly by
/// 				and application.
/// 		</td>
/// </tr>
/// <tr>
/// 		<td>pReference</td>
/// 		<td>Input</td>
/// 		<td>
/// 			The global reference to be registered.
/// 		</td>
/// </tr>
/// <tr>
/// 		<td>pExisting</td>
/// 		<td>Output</td>
/// 		<td>
/// 			Returns 1 to indicate that the reference registered was already registered.
/// 		</td>
/// </tr>
/// </table>
/// </p>
/// <br>
/// 	<p>
/// 	<b>Return value</b>: This method returns a %Status value indicating success or failure.
/// 	</p>
ClassMethod RegisterGlobalReference(pExtentName As %String, pExtentType As %String = "cls", pReference As %String, Output pExisting As %Integer) As %Status
{
}

/// 	DeleteGlobalReference will delete a registered global reference from the GlobalRegistry. If the reference was previously registered
/// 	then it is deleted, the name of the extent it was registered for use by is returned in <var>pUsedBy</var>
/// 	and the method succeeds. Otherwise, a failure status is returned.</p>
ClassMethod DeleteGlobalReference(pReference As %String(MAXLEN="") = "", Output pUsedBy As %ExtentMgr.Catalog.Extent) As %Status
{
}

/// GlobalUses is a class method that returns a result set in a context object. This method is easily invoked as
/// an SQL procedure. The single result set contains the global name, global reference and extent name that is using
/// the global reference for the global reference passed in as the single argument.</p>
/// <p>
/// <pre>
/// SAMPLES>d ##class(%ExtentMgr.Util).GlobalUses("^Sample")
///
/// SAMPLES>d %sqlcontext.%Display()
///
///
/// Dumping result #1
/// GlobalName	GlobalReference	UsedByExtent
/// ^Sample.CompanyD	^Sample.CompanyD	Sample.Company.cls
/// ^Sample.CompanyI	^Sample.CompanyI("NameIdx")	Sample.Company.cls
/// ^Sample.CompanyI	^Sample.CompanyI("TaxIDIdx")	Sample.Company.cls
/// ^Sample.PersonD	^Sample.PersonD	Sample.Person.cls
/// ^Sample.PersonI	^Sample.PersonI("$Employee")	Sample.Employee.cls
/// ^Sample.PersonI	^Sample.PersonI("$Person")	Sample.Person.cls
/// ^Sample.PersonI	^Sample.PersonI("NameIDX")	Sample.Person.cls
/// ^Sample.PersonI	^Sample.PersonI("SSNKey")	Sample.Person.cls
/// ^Sample.PersonI	^Sample.PersonI("ZipCode")	Sample.Person.cls
///
/// 9 Rows(s) Affected
/// SAMPLES>
///
/// </pre>
ClassMethod GlobalUses(pGlobalReference As %String(MAXLEN="") = "") [ ReturnResultsets, SqlName = GlobalUses, SqlProc ]
{
}

/// <p>GlobalsUsed is a class method that returns a result set in a context object. This method is easily invoked as
/// an SQL procedure. The single result is a result set containing the extent name, global name and global reference
/// for each global reference registered for use by the extent name passed in as the single argument.</p>
/// <p>SAMPLES>set st=##class(%SQL.Statement).%New()</p>
/// 	<p>SAMPLES>write st.%Prepare("call %ExtentMgr.GlobalsUsed(?)")</p>
/// 	<p>1</p>
/// 	<p>SAMPLES>set rs=st.%Execute("Sample.Person.cls")</p>
/// 	<p></p>
/// 	<p>SAMPLES>do rs.%Display()</p>
/// 	<p></p>
/// 	<table>
/// 	<thead><tr><th>UsedByExtent</th><th>GlobalName</th><th>GlobalReference</th></tr></thead>
/// 	<tbody>
/// 	<tr>
/// 	<td>Sample.Person.cls</td>
/// 	<td>^Sample.PersonD</td>
/// 	<td>^Sample.PersonD</td>
/// 	</tr>
/// 	<tr>
/// 	<td>Sample.Person.cls</td>
/// 	<td>^Sample.PersonI</td>
/// 	<td>^Sample.PersonI("$Person")</td>
/// 	</tr>
/// 	<tr>
/// 	<td>Sample.Person.cls</td>
/// 	<td>^Sample.PersonI</td>
/// 	<td>^Sample.PersonI("NameIDX")</td>
/// 	</tr>
/// 	<tr>
/// 	<td>Sample.Person.cls</td>
/// 	<td>^Sample.PersonI</td>
/// 	<td>^Sample.PersonI("SSNKey")</td>
/// 	</tr>
/// 	<tr>
/// 	<td>Sample.Person.cls</td>
/// 	<td>^Sample.PersonI</td>
/// 	<td>^Sample.PersonI("ZipCode")</td>
/// 	</tr>
/// 	</tbody>
/// 	</table>
///
ClassMethod GlobalsUsed(pExtentName As %String(MAXLEN="") = "") [ ReturnResultsets, SqlName = GlobalsUsed, SqlProc ]
{
}

/// <table border=1>
/// <th>
/// Parameters
/// </th>
/// <tr>
/// 		<td>namespace</td>
/// 		<td>Input</td>
/// 		<td>
/// 			The namespace in which to correlate the global reference. SQL tables exist only in the context of namespaces.
/// 		</td>
/// </tr>
/// <tr>
/// 		<td>global</td>
/// 		<td>Input</td>
/// 		<td>
/// 			The global variable name (with or without subscripts) to correlate. Providing an extended global reference will return "".
/// 		</td>
/// </tr>
/// <tr>
/// 		<td>pSC</td>
/// 		<td>Output</td>
/// 		<td>
/// 			If the return value is "", this <code>%Status</code> will indicate whether it was due to some issue (e.g. insufficient privileges or
/// 			incorrigible inputs) or if the provided <code>global</code> is not associated with a SQL table.
/// 		</td>
/// </tr>
/// </table>
/// </p>
/// <br>
/// <p>
/// 	<b>Return value</b>: A fully qualified SQL table (<schema>.<tablename>) corresponding to the global provided.
/// </p>
ClassMethod GlobalToSqlTable(namespace As %String = "", global As %String = "", Output pSC As %Status) As %String [ Internal, ServerOnly = 1 ]
{
}

/// GetRowVersion returns the current ROWVERSION counter for this database.
/// The rowversion counter is used by classes with a property of type %Library.RowVersion.
ClassMethod GetRowVersion() As %Library.BigInt
{
}

}
