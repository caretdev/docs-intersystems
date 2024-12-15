/// The <class>%SYSTEM.OBJ</class> class provides an interface for managing
/// class definitions.
/// <p>You can use it via the special <b>$system</b> object:
/// <example>
/// Do $system.OBJ.Load("MyFile.xml","ck")
/// </example>
/// <p>Many methods in this class use the <var>qspec</var> argument, which is a list of flags or qualifiers.
/// See <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=ObjectScript+qspec">System Flags and Qualifiers</a>.</p>
Class %SYSTEM.OBJ Extends Help [ Abstract, System = 4 ]
{

/// Create a new object instance.
/// <p>Create a new object instance of type <var>ClassName</var> and
/// return a reference (OREF) to it.
/// <p>Using this method, you can dynamically create objects, that is
/// you can determine what type of object to create at run-time.
/// <p>For example:
/// <example>
/// Set obj = $System.OBJ.New("Person")
/// </example>
ClassMethod New(ClassName As %String = "") As %ObjectHandle [ CodeMode = expression ]
{
}

/// Open a persistent object instance.
/// <p>Load a persistent object instance of type <var>ClassName</var> and
/// with OID value <var>oid</var> from disk and return a reference (OREF) to it.
/// <p>For example:
/// <example>
/// Set person = $System.OBJ.Open("Person",oid)
/// </example>
ClassMethod Open(ClassName As %String = "", oid As %String = "") As %ObjectHandle [ CodeMode = expression ]
{
}

/// Open a persistent object instance.
/// <p>Load a persistent object instance of type <var>ClassName</var> and
/// with ID value <var>id</var> from disk and return a reference (OREF) to it.
/// <p>For example:
/// <example>
/// Set person = $System.OBJ.OpenId("Person",22)
/// </example>
ClassMethod OpenId(ClassName As %String = "", id As %String = "") As %ObjectHandle [ CodeMode = expression ]
{
}

/// Dump an object to the console.
/// <p>Write the in-memory state of a object referred to by
/// <var>oref</var> to the console (the current device).
/// <example>
/// Set person = ##class(Person).%OpenId(22)
/// Do $system.OBJ.Dump(person)
/// </example>
ClassMethod Dump(oref As %String = "") As %Status
{
}

/// Decode and display an object error message to the console.
/// If <var>err</var> is omitted, display the last generated object error.
ClassMethod DisplayError(err As %Status = {$get(%objlasterror)}) As %Status [ CodeMode = expression ]
{
}

/// Load a file from disk.
/// <p>Load, and optionally compile (if 'c' flag is present), class definitions, CSP pages, routines, or globals from the
/// file <var>file</var>. <var>file</var> may be a list of files to load separated with '*' symbols.</p>
/// <p>You can import files exported in XML format, %RO format, CDL format, UDL format, %GOF, and CSR/CSP files.</p>
/// <p>A comma-separated list of the items it loaded is returned in <var>loadedlist</var>. If the list is too long to fit
/// in the variable, it is terminated with '...'. Items loaded are always returned as subscripts of the multidimensional <var>loadedlist</var> array.<br>
/// <p>If you pass <var>listonly</var> as true, the method does not
/// import anything, but instead just lists the items that exist in <var>file</var>.</p>
/// <p>If <var>selecteditems</var> is defined, then this must contain either a comma-separated list
/// of items to import or a multidimensional array. The method imports only items that are in this list from the file
/// provided, so this provides a way to limit which items get imported.</p>
/// <p><var>qspec</var> is a list of flags or qualifiers which can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// and 'Do $system.OBJ.ShowFlags()'.</p>
/// <p>When loading a %RO file, the <var>description</var> variable is filled in
/// with the description from the %RO file, if there is one present.</p>
/// <p><var>errorlog</var> is a multidimensional array of the <class>%Status</class> return
/// values from this call.</p>
/// <p>The <var>displayname</var> is normally not provided. If present,
/// it changes the 'load file XYZ' name from the filename to the displayname. This is useful when loading a stream where the
/// stream filename is not the name of the file the user knows from a client system and we want to present a meaningful name.
/// If the filename ends in .gzip or .gz, the method uses ungzip to decompress this file before loading it.</p>
ClassMethod Load(file As %String = "", qspec As %String = "", ByRef errorlog As %String, ByRef loadedlist As %String, listonly As %Boolean, selecteditems As %String, displayname As %String, charset As %String = "", ByRef description As %String) As %Status
{
}

/// Load a stream.
/// <p>Load and, optionally compile (if 'c' flag is present), class definitions, CSP pages, routines or globals from the
/// stream <var>stream</var>. Returns, by reference, a multidimensional array of the items
/// it loaded in <var>loadedlist</var>. If you pass <var>listonly</var> as true, then it does not
/// import anything but instead just lists the items that exist in the stream that you supply.<br>
/// If <var>selecteditems</var> is defined, then this must contain a comma-separated list
/// of items to import (or a multidimensional array). It imports only items that are in this list from the stream
/// provided, so this provides a way to limit which items get imported.
/// <p><var>qspec</var> is a list of flags or qualifiers which can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// and 'Do $system.OBJ.ShowFlags()'.</p>
ClassMethod LoadStream(stream As %AbstractStream, qspec As %String = "", ByRef errorlog As %String, ByRef loadedlist As %String, listonly As %Boolean, selecteditems As %String, displayname As %String, charset As %String = "") As %Status
{
}

/// Load all class definitions in a directory.
/// <p>Load and optionally compile (if 'c' flag is present) all class definitions within
/// directory <var>dir</var>, this includes all .XML files.
/// If the <var>recurse</var> is true, then it includes subdirectories.
/// Returns a comma-separated list of the items it loaded in <var>loadedlist</var> and the same
/// data also as loadedlist(name)="" in case the comma list is more than 32k. Note that this method
/// compiles only *classes* found in these XML files and no other types. If you want to be able to compile
/// anything, instead use the <method>ImportDir</method>.<br>
/// <p><var>qspec</var> is a list of flags or qualifiers which can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// and 'Do $system.OBJ.ShowFlags()'.</p>
ClassMethod LoadDir(dir As %String = "", qspec As %String = "", ByRef errorlog As %String, recurse As %Boolean, ByRef loadedlist As %String) As %Status
{
}

/// Import and optionally compile all items in a directory.
/// <p>This imports all files found in a directory using the <method>Load</method> method so it should be
/// able to detect most common formats. If you pass it the compile flag ('c'), after loading it also compiles
/// all these items. The other flags are the same as found in <method>Load</method> except for the <var>dir</var>
/// which is the directory to load and the <var>recurse</var> which determines if this looks into subdirectories or not.<br>
/// You can limit the items it imports by specifying a <var>wildcards</var> value. For example '*.xml' imports only
/// files that end in XML.
/// <p><var>qspec</var> is a list of flags or qualifiers which can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// and 'Do $system.OBJ.ShowFlags()'.</p>
ClassMethod ImportDir(dir As %String = "", wildcards As %String, qspec As %String = "", ByRef errorlog As %String, recurse As %Boolean = 0, ByRef imported As %String, listonly As %Boolean, ByRef selectedlist As %String)
{
}

/// Compile a class.
/// <p>Compiles the class or classes specified by the <var>classes</var> argument, which can be a single class name, a comma-separated list of class names, or a
/// multidimensional array of class names. You can also use ? or * wildcards. If you
/// wish to exclude items, pass ' before the item name; this syntax also supports wildcards, e.g. "User.*,'User.T*".
/// <p>If <var>recurse</var> is true, then do not output the initial 'compiling'
/// message or the compile report as this is being called inside another compile loop.</p>
/// <p><var>qspec</var> is a list of flags or qualifiers, which can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// and 'Do $system.OBJ.ShowFlags()'.</p>
ClassMethod Compile(ByRef classes As %String = "", qspec As %String = "", ByRef errorlog As %String, recurse As %Boolean = 0) As %Status [ CodeMode = expression ]
{
}

/// Compile a list of items specified in 'list' and separated by commas, or a multidimensional array ("item.MAC")="". You can also use ? or * wildcards. If you
/// wish to exclude items, pass ' before the item name; this syntax also supports wildcards, e.g. "User.*.cls,'User.T*.cls".
/// <p>Each item on the list is suffixed by the type of item it is, so to compile a class
/// and a routine, you could specify 'class.cls,routine.mac'</p>
/// <p>The order of compilation is INT, CLS, MAC, CSR, CSP.</p>
/// <p><var>qspec</var> is a list of flags or qualifiers which can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// and 'Do $system.OBJ.ShowFlags()'.
/// Note that while /mapped=0 qualifier applies to the pattern passed in by only searching
/// the default routine database, however any compile is done in the current namespace. So it is possible a routine/class
/// found with /mapped=0 may not be visible in the current namespace or may be a different version if there are complicated
/// package mappings.
ClassMethod CompileList(ByRef list As %String = "", qspec As %String = "", ByRef errorlog As %String, ByRef updatedlist As %String) As %Status
{
}

/// Invoke $system.OBJ.CompileAll() for all the namespaces.
/// <br>
/// <p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>errorlog</td>
/// 		<td>
/// 			<p>
/// 				<var>errorlog</var> is a multidimensional array of the <class>%Status</class> error values encountered during the execution of this
/// 				method. Each status value is in the format returned by $system.Status.DecomposeStatus().
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod CompileAllNamespaces(qspec As %String = "", ByRef errorlog As %String) As %Status [ CodeMode = expression ]
{
}

/// Compile all classes within this namespace.
/// <p>By default, the method does not compile classes mapped from another database unless the qualifier '/mapped=1' is provided.</p>
/// <p><var>qspec</var> is a list of flags or qualifiers which can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// and 'Do $system.OBJ.ShowFlags()'.</p>
ClassMethod CompileAll(qspec As %String = "", ByRef errorlog As %String) As %Status [ CodeMode = expression ]
{
}

/// Compile all classes within the specified package.
/// <br>
/// <p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>package</td>
/// 		<td>
/// 			<p>
/// 				You can pass one or more comma-separated packages in <var>package</var> argument.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>errorlog</td>
/// 		<td>
/// 			<p>
/// 				<var>errorlog</var> is a multidimensional array of the <class>%Status</class> error values encountered during the execution of this
/// 				method. Each status value is in the format returned by $system.Status.DecomposeStatus.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod CompilePackage(package As %String = "", qspec As %String = "", ByRef errorlog As %String) As %Status [ CodeMode = expression ]
{
}

/// Compile all entries in this project.
/// <br>
/// <p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>project</td>
/// 		<td>
/// 			<p>
/// 				The name of the package to be compiled.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>errorlog</td>
/// 		<td>
/// 			<p>
/// 				<var>errorlog</var> is a multidimensional array of the <class>%Status</class> error values encountered during the execution of this
/// 				method. Each status value is in the format returned by $system.Status.DecomposeStatus().
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod CompileProject(project As %String = "", qspec As %String = "", ByRef errorlog As %String) As %Status
{
}

/// Delete a class.
/// <p>Delete the definition of the given class or classes, specified by the <var>classes</var> argument from this namespace.
/// This argument can be a single class name, a comma-separated list of class names, or a
/// multidimensional array of class names. You can also use ? or * wildcards. If you
/// wish to exclude items, pass ' before the item name; this syntax also supports wildcards, e.g. "User.*,'User.T*".</p>
/// <p>If the class to delete is persistent,
/// include the 'e' flag or '/deleteextent' qualifier to delete the extent data
/// and extent metadata. Refer to <class>%ExtentMgr.Util</class> for more information
/// on extent metadata.
/// <br>
/// <p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>classes</td>
/// 		<td>
/// 			<p>
/// 				The class, a comma-separated list of classes, or a multidimensional array of class names. Wildcards may be specified.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>errorlog</td>
/// 		<td>
/// 			<p>
/// 				<var>errorlog</var> is a multidimensional array of the <class>%Status</class> error values encountered during the execution of this
/// 				method. Each status value is in the format returned by $system.Status.DecomposeStatus.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod Delete(ByRef classes As %String = "", qspec As %String = "", ByRef errorlog As %String) As %Status [ CodeMode = expression ]
{
}

/// Delete all the classes within the specified package.
/// Note that this ignores the '/mapped' qualifier as if you know the exact package name it is assumed
/// you wish to delete it even if the package is mapped from another database.
/// <br>
/// <p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>package</td>
/// 		<td>
/// 			<p>
/// 				You can pass one or more comma-separated packages in <var>package</var> argument.
/// 				If <var>package</var> is '*' then all classes are deleted.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod DeletePackage(package As %String = "", qspec As %String = "") As %Status [ CodeMode = expression ]
{
}

/// Delete all the classes in this namespace.
/// <br>
/// <p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod DeleteAll(qspec As %String = "") As %Status [ CodeMode = expression ]
{
}

/// Delete the named project from this namespace.
/// <br>
/// <p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>project</td>
/// 		<td>
/// 			<p>
/// 				The name of the project to delete.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod DeleteProject(project As %String = "", qspec As %String = "") As %Status [ CodeMode = expression, ProcedureBlock = 1 ]
{
}

/// Export items as an XML file.
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>items</td>
/// 		<td>
/// 			<p>
/// 				The items to export.
/// 			</p>
/// 			<p>
/// 				Each of the <var>items</var> must have a type determined by an extension
/// 				selected from the following list of basic types, additional types are
/// 				supported under the abstract routine interface, so this list is not exhaustive.
/// 				<ul>
/// 				<li>CLS - Classes</li>
/// 				<li>CSP - Server Pages</li>
/// 				<li>CSR - Rule files</li>
/// 				<li>MAC - Macro routines</li>
/// 				<li>INT - Non-macro routines</li>
/// 				<li>BAS - Basic routines</li>
/// 				<li>INC - Include files</li>
/// 				<li>GBL - Globals</li>
/// 				<li>PRJ - Projects</li>
/// 				<li>OBJ - Compiled object code</li>
/// 				<li>PKG - Package definitions</li>
/// 				</ul>
/// 				If exporting multiple items, separate them with commas or pass the items("item")="" as a multidimensional array.
/// 				For example, you can define the items argument as a comma-separated list as follows:
/// 				<pre>set items="PackageOne.ClassA.cls,PackageTwo.ClassB.cls,PackageThree.ClassC.cls"</pre>
/// 				Then you could invoke the Export method as follows:
/// 				<pre>do $system.OBJ.Export(items,myfilename)</pre>
/// 				Or you could define the items argument as a multidimensional array as follows:
/// 				<pre>
/// 				set items("PackageOne.ClassA.cls")=""
/// 				set items("PackageTwo.ClassB.cls")=""
/// 				set items("PackageThree.ClassC.cls")=""
/// 				</pre>
/// 				In this case, you must pass the items argument by reference as follows:
/// 				<pre>do $system.OBJ.Export(.items,myfilename)</pre>
/// 				You can also use ? or * wildcards. If you
///                 wish to exclude items, pass ' before the item name; this syntax also supports wildcard, e.g. "User.*.cls,'User.T*.cls".
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>filename</td>
/// 		<td>
/// 			<p>
/// 				If the output filename is empty, matching items are exported to the current device.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.
/// 			</p>
/// 			<br>
/// 				If you pass qualifier '/recursive=1', the method also exports any related, e.g. include files included by
/// 				a class or a superclass, the idea being that this will be a compilable set of items.
/// 				If the filename ends in .gz or .gzip, the method automatically compresses the file with gzip.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>errorlog</td>
/// 		<td>
/// 			<p>
/// 				<var>errorlog</var> is a multidimensional array of the <class>%Status</class> error values encountered during the execution of this
/// 				method. Each status value is in the format returned by $system.Status.DecomposeStatus.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>Charset</td>
/// 		<td>
/// 			<p>
/// 				The character set to use for this export. If this argument is not specified, the method uses 'utf-8'.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// </table>
/// </p>
ClassMethod Export(ByRef items As %String = "", ByRef filename As %String = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "") As %Status [ CodeMode = expression ]
{
}

/// Export items in XML format to a stream
/// <br>
/// <p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>items</td>
/// 		<td>
/// 			<p>
/// 				The items to export.
/// 			</p>
/// 			<p>
/// 				Each of the <var>items</var> must have a type determined by an extension
/// 				selected from the following list of basic types, additional types are
/// 				supported under the abstract routine interface so this list is not exhaustive.
/// 				<ul>
/// 				<li>CLS - Classes</li>
/// 				<li>CSP - Cache Server Pages</li>
/// 				<li>CSR - Cache Rule files</li>
/// 				<li>MAC - Macro routines</li>
/// 				<li>INT - Non-macro routines</li>
/// 				<li>BAS - Basic routines</li>
/// 				<li>INC - Include files</li>
/// 				<li>GBL - Globals</li>
/// 				<li>PRJ - Studio projects</li>
/// 				<li>OBJ - Compiled object code</li>
/// 				<li>PKG - Package definitions</li>
/// 				</ul>
/// 				If exporting multiple items, separate them with commas, pass the items("item")="" as a multidimensional array. You can also use ? or * wildcards. If you
///                 wish to exclude items, pass ' before the item name; this syntax also supports wildcard, e.g. "User.*.cls,'User.T*.cls".
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>stream</td>
/// 		<td>
/// 			<p>
/// 				The stream in which to place exported items.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.
/// 			</p>
/// 			<br>
/// 				If you pass qualifier '/recursive=1', the method also exports any related, e.g. include files included by
/// 				a class or a superclass, the idea being that this will be a compilable set of items.
/// 				If the filename ends in .gz or .gzip, the method automatically compresses the file with gzip.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>errorlog</td>
/// 		<td>
/// 			<p>
/// 				<var>errorlog</var> is a multidimensional array of the <class>%Status</class> error values encountered during the execution of this
/// 				method. Each status value is in the format returned by $system.Status.DecomposeStatus.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>Charset</td>
/// 		<td>
/// 			<p>
/// 				The character set to use for this export. Note that if you pass in a <var>Charset</var> and also pass in a character
/// 				stream, the method does not use the Charset argument unless the stream is a file character stream. The reason for this is a character
/// 				stream deals with characters so Charset is only about binary representations of character data. In this specific
/// 				case of a file character stream, the method sets the TranslateTable property of the file stream to the Charset argument.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod ExportToStream(items As %String = "", ByRef stream As %Stream.Object = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "") As %Status
{
}

/// Export all items matching a pattern to an XML file
/// <p>If you pass a pattern of '*.cls', the method exports all classes in this namespace.
/// If you pass a pattern of 'a*.mac', the method exports all MAC routines that start with the letter 'a'.
/// If the filename ends in .gz or .gzip, the method automatically compresses the file with gzip.</p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>pattern</td>
/// 		<td>
/// 			<p>
/// 				The pattern used to construct a list of items to be exported.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>filename</td>
/// 		<td>
/// 			<p>
/// 				If the output filename is empty, matching items are exported to the current device.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.
/// 			</p>
/// 			<br>
/// 				If you pass qualifier '/recursive=1', the method also exports any related, e.g. include files included by
/// 				a class or a superclass, the idea being that this will be a compilable set of items.
/// 				If the filename ends in .gz or .gzip, the method automatically compresses the file with gzip.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>errorlog</td>
/// 		<td>
/// 			<p>
/// 				<var>errorlog</var> is a multidimensional array of the <class>%Status</class> error values encountered during the execution of this
/// 				method. Each status value is in the format returned by $system.Status.DecomposeStatus.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>Charset</td>
/// 		<td>
/// 			<p>
/// 				The character set to use for this export. If this argument is not specified, the method uses 'utf-8'.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// </table>
/// </p>
ClassMethod ExportPattern(pattern As %String = "", ByRef filename As %String = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "") As %Status [ CodeMode = expression ]
{
}

/// Export all items matching a pattern in XML format to a stream
/// <p>If you pass a pattern of '*.cls', the method exports all classes in this namespace.
/// If you pass a pattern of 'a*.mac', the method exports all MAC routines that start with the letter 'a'.
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>pattern</td>
/// 		<td>
/// 			<p>
/// 				The pattern used to construct a list of items to be exported.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>stream</td>
/// 		<td>
/// 			<p>
/// 				If <var>stream</var> is passed in then the data is appended to this stream. If it is "" when called, the method
/// 				creates a stream and returns this.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.
/// 			</p>
/// 			<br>
/// 				If you pass qualifier '/recursive=1', the method also exports any related, e.g. include files included by
/// 				a class or a superclass, the idea being that this will be a compilable set of items.
/// 				If the filename ends in .gz or .gzip, the method automatically compresses the file with gzip.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>errorlog</td>
/// 		<td>
/// 			<p>
/// 				<var>errorlog</var> is a multidimensional array of the <class>%Status</class> error values encountered during the execution of this
/// 				method. Each status value is in the format returned by $system.Status.DecomposeStatus.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>Charset</td>
/// 		<td>
/// 			<p>
/// 				The character set to use for this export. If this argument is not specified, the method uses 'utf-8'.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// </table>
/// </p>
ClassMethod ExportPatternToStream(pattern As %String = "", ByRef stream As %Stream.Object = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "") As %Status
{
}

/// Export a class to a Java file.
/// <p>Export class <var>classname</var> to a
/// Java file in directory <var>dirname</var>.
ClassMethod ExportJava(classname As %String = "", dirname As %String = "", qspec As %String = "", ByRef errorlog As %String, ByRef paths = "", ByRef Seen) As %Status
{
}

/// Export classes in this package to Java.
/// <p>Search for classes in the <var>package</var> and export them. The search for classes respects
/// the <var>qspec</var> passed. If the <var>package</var> is "*", the method
/// searches for all classes in this namespace.
/// <p>Export class <var>package</var> to a
/// Java file in directory <var>dirname</var>.
ClassMethod ExportJavaPackage(Package As %String = "", dirname As %String = "", qspec As %String = "", ByRef errorlog As %String, ByRef paths = "") As %Status
{
}

/// Export a class to C++ files.
/// <p>Export class <var>classname</var> to
/// C++ files in directory <var>dirname</var>.
ClassMethod ExportCPP(classname As %String = "", dirname As %String = "", qspec As %String = "", ByRef errorlog As %String) As %Status [ CodeMode = expression ]
{
}

ClassMethod ExportDynCPP(classname As %String = "", dirname As %String = "", proplist As %String = "", methodlist As %String = "", qspec As %String, ByRef errorlog As %String) As %Status [ CodeMode = expression ]
{
}

/// Export a class to ODL file.
/// <p>Export class <var>classname</var> to
/// ODL file with file name <var>filename</var>.
ClassMethod ExportODL(classname As %String = "", filename As %String = "", qspec As %String = "", ByRef errorlog As %String) As %Status [ CodeMode = expression ]
{
}

/// Export a class or routine in UDL format.
/// <p>Export document <var>itemname</var> to file <var>filename</var> in UDL format.
ClassMethod ExportUDL(itemname As %String = "", filename As %String = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "") As %Status [ CodeMode = expression ]
{
}

/// Export a set of classes in a package as an XML file.
/// <p>Export package <var>package</var> to an
/// XML file with name <var>filename</var>.
ClassMethod ExportPackage(package As %String = "", ByRef filename As %String = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "") As %Status [ CodeMode = expression ]
{
}

/// Export a set of classes in a package in XML format to a stream.
/// <p>Export package <var>package</var> to an XML file with name <var>filename</var>.
/// If <var>stream</var> is passed in, then the data is appended to this stream. If it is "" when called, the method
/// creates a stream and returns this.
ClassMethod ExportPackageToStream(package As %String = "", ByRef stream As %Stream.Object = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "") As %Status
{
}

/// Export all the classes in this namespace as one large XML file.
/// <p>This method loops through all the classes, exporting them
/// to the file <var>filename</var>. It restricts which classes are
/// exported based on the <var>qspec</var> parameter.</p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>filename</td>
/// 		<td>
/// 			<p>
/// 				The file to which data is exported.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.
/// 			</p>
/// 			<br>
/// 				If you pass qualifier '/recursive=1', the method also exports any related, e.g. include files included by
/// 				a class or a superclass, the idea being that this will be a compilable set of items.
/// 				If the filename ends in .gz or .gzip, the method automatically compresses the file with gzip.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>errorlog</td>
/// 		<td>
/// 			<p>
/// 				<var>errorlog</var> is a multidimensional array of the <class>%Status</class> error values encountered during the execution of this
/// 				method. Each status value is in the format returned by $system.Status.DecomposeStatus.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>Charset</td>
/// 		<td>
/// 			<p>
/// 				The character set to use for this export. If this argument is not specified, the method uses 'utf-8'.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// </table>
/// </p>
ClassMethod ExportAllClasses(ByRef filename As %String = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "") As %Status [ CodeMode = expression ]
{
}

/// Export all the classes in this namespace to a stream.
/// <p>This method loops through all the classes, exporting them
/// to a stream. It restricts the classes that are exported based on the <var>qspec</var> parameter.
/// </p>
/// <br>
/// <p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>stream</td>
/// 		<td>
/// 			<p>
/// 				If <var>stream</var> is passed in, then the data is appended to this stream. If it is null when called, the method
/// 				creates a stream and returns this.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.  See <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=ObjectScript+qspec">System Flags and Qualifiers</a>.
/// 			</p>
/// 			<br>
/// 				If you pass qualifier '/recursive=1', the method also exports any related, e.g. include files included by
/// 				a class or a superclass, the idea being that this will be a compilable set of items.
/// 				If the filename ends in .gz or .gzip, the method automatically compresses the file with gzip.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>errorlog</td>
/// 		<td>
/// 			<p>
/// 				<var>errorlog</var> is a multidimensional array of the <class>%Status</class> error values encountered during the execution of this
/// 				method. Each status value is in the format returned by $system.Status.DecomposeStatus.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>Charset</td>
/// 		<td>
/// 			<p>
/// 				The character set to use for this export. If this argument is not specified, the method uses 'utf-8'.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// </table>
ClassMethod ExportAllClassesToStream(ByRef stream As %Stream.Object = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "") As %Status
{
}

/// Export all the classes as individual XML files to a directory.
/// <p>This method loops through all the classes, exporting each one as an individual XML file
/// named after the classname to the directory <var>dirname</var>. If you specify a <var>Package</var>, then
/// it exports only this package. If <var>SubDir</var> is true,, the method exports sub-packages as subdirectories.
/// </p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>dirname</td>
/// 		<td>
/// 			<p>
/// 				The directory where exported files will be placed.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>qspec</td>
/// 		<td>
/// 			<p>
/// 				<var>qspec</var> is a list of flags and qualifiers that can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// 				and 'Do $system.OBJ.ShowFlags()'.
/// 			</p>
/// 			<br>
/// 				If you pass qualifier '/recursive=1', the method also exports any related, e.g. include files included by
/// 				a class or a superclass, the idea being that this will be a compilable set of items.
/// 				If the filename ends in .gz or .gzip, the method automatically compresses the file with gzip.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>errorlog</td>
/// 		<td>
/// 			<p>
/// 				<var>errorlog</var> is a multidimensional array of the <class>%Status</class> error values encountered during the execution of this
/// 				method. Each status value is in the format returned by $system.Status.DecomposeStatus.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>Charset</td>
/// 		<td>
/// 			<p>
/// 				The character set to use for this export. If this argument is not specified, the method uses 'utf-8'.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>Package</td>
/// 		<td>
/// 			<p>
/// 				If you specify a <var>Package</var>, the method exports only this package.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>Subdir</td>
/// 		<td>
/// 			<p>
/// 				If <var>SubDir</var> is true, the method exports sub-packages as subdirectories.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// </table>
/// </p>
ClassMethod ExportAllClassesIndividual(dirname As %String = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "", Package As %String = "*", SubDir As %Boolean = 0) As %Status [ CodeMode = expression ]
{
}

/// Return, by reference, a multidimensional array of classes in this package.
/// <p>Search for classes in the <var>package</var> and put their names
/// into the local array <var>items</var>. If the <var>package</var> is "*", then the method
/// returns all classes in this namespace; this does not include mapped packages (see the comments on qspec).
/// <p><var>qspec</var> is a list of flags or qualifiers which can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// and 'Do $system.OBJ.ShowFlags()'.
/// For example, to search mapped packages, include the qualifier /mapped within the
/// <var>qspec</var> argument. Similarly, to search subpackages, include the qualifier
/// /includesubpackages within the <var>qspec</var> argument.</p>
/// <p>For example, the following code returns (within myitems), a multidimensional array
/// of the classes within the Test package, including any mapped items and all subpackages: <p>
/// <example>
///  do $system.OBJ.GetPackageList(.myitems,"Test","/mapped/includesubpackages")
/// </example>
ClassMethod GetPackageList(ByRef items As %String, package As %String, qspec As %String = "") As %Status
{
}

/// Return, by reference, a multidimensional array of classes in this namespace.
/// <p>Search for classes in this namespace and put their names
/// into the multidimensional array <var>items</var>. </p>
/// <p><var>qspec</var> is a list of flags or qualifiers which can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// and 'Do $system.OBJ.ShowFlags()'. The search for classes respects
/// the <var>qspec</var> passed. It uses the following qualifiers:</p>
/// <ul>
/// <li>/application=1/0 - Include application classes</li>
/// <li>/system=1/0 - Include system classes (ones with class attribute 'system' set to something other than zero)</li>
/// <li>/percent=1/0 - Include percent classes</li>
/// <li>/mapped=1/0 - Include classes mapped from other databases or just classes in default databases</li></ul>
ClassMethod GetClassList(ByRef items As %String, qspec As %String = "") As %Status
{
}

/// Make a class or classes deployed.
/// <var>classes</var> can be a single class, a comma-separated list, a
/// multidimensional array of class names. You can also use ? or * wildcards. If you
/// wish to exclude items, pass ' before the item name; this syntax also supports wildcard, e.g. "User.*,'User.T*".
/// This deletes all the source code of the class from the disk.
/// Once a class is in deployed mode, it cannot be edited or exported or recompiled.
/// You can still create subclasses of a deployed class and compile these.
/// <p><var>qspec</var> is a list of flags or qualifiers which can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// and 'Do $system.OBJ.ShowFlags()'.</p>
/// <p>If <var>fulldeploy</var> is true, the method attempts to remove pretty much the entire class definition, leaving just
/// the minimum so the class is runnable. This does not work on persistent, serial, datatype, or XML-enabled classes as these require
/// access to the class definition at runtime in order to function. </p>
/// <p>Note that for a class to be deployed, it must be compiled; if you try to deploy a class which is not compiled it
/// will report an error.</p>
ClassMethod MakeClassDeployed(ByRef classes As %String = "", qspec As %String = "", fulldeploy As %Boolean = 0) As %Status [ CodeMode = expression ]
{
}

/// Uncompile a class or classes.
/// <p><var>classes</var> can be a single class, a comma-separated list, a
/// multidimensional array of class names. You can also use ? or * wildcards. If you
/// wish to exclude items, pass ' before the item name; this syntax also supports wildcard, e.g. "User.*,'User.T*".</p>
/// <p><var>qspec</var> is a list of flags or qualifiers which can be displayed with 'Do $system.OBJ.ShowQualifiers()'
/// and 'Do $system.OBJ.ShowFlags()'.</p>
ClassMethod UnCompile(ByRef classes As %String = "", qspec As %String = "") As %Status [ CodeMode = expression ]
{
}

/// Write all classes defined in this namespace to the console.
/// <p>The optional <var>qspec</var> argument is a qualifier string containing
/// any of the following options:
/// <table cols=2 cellpadding=5>
/// <tr><td>/detail</td><td>Show details.</td></tr>
/// <tr><td>/hidden</td><td>Show hidden classes.</td></tr>
/// <tr><td>/mapped</td><td>Show mapped classes.</td></tr>
/// </table>
/// <p>For example:
/// <example>
/// Do $System.OBJ.ShowClasses("/detail")
/// </example>
ClassMethod ShowClasses(qspec As %String = "") As %Status
{
}

/// Write all object instances in this process to the console.
/// Note that some of the objects displayed may be process-specific singleton objects such
/// as classes in the %SYSTEM.Context package or oref's that these singleton objects themselves hold.
/// <p>The optional <var>qspec</var> argument is a string containing
/// any of the following characters:
/// <table cols=2 cellpadding=5>
/// <tr><td>/detail=1</td><td>Show details.</td></tr>
/// </table>
/// <p>For example:
/// <example>
/// Do $System.OBJ.ShowObjects("/detail=1")
/// </example>
ClassMethod ShowObjects(qspec As %String = "") As %Status
{
}

/// Deprecated method; to close objects, let them go out of scope.
ClassMethod CloseObjects() As %Status [ CodeMode = expression, Deprecated ]
{
}

/// Save all instances of %Library.Persistent in the process. Returns a status value.
ClassMethod SaveObjects() As %Status
{
}

/// Return the version number of the current object library.
ClassMethod Version() As %String [ CodeMode = expression ]
{
}

///
/// Display the list of flags used by the compiler.
/// Should use <method>ShowQualifiers</method> as flags have been superseded by qualifiers.
ClassMethod ShowFlags()
{
}

/// Display the list of qualifiers defined in the system.
/// This method also shows the default qualifiers defined at system level and at namespace levels.
/// The argument <var>group</var> has been deprecated.
ClassMethod ShowQualifiers(group As %String = "")
{
}

/// Display a list of all variables that contain a reference to this <var>oref</var>.
/// <p>If <var>chkObj</var> is 1, the properties of any varibles that contain an object
/// reference are also searched and displayed.
/// Otherwise only non-object variables are searched.</p>
/// <p>The list has the base $STACK level of the variable, the internal stack level
/// (as shown by the %STACK utility), and the variable name.</p>
ClassMethod ShowReferences(oref As %String, chkObj As %Boolean = 0) [ PublicList = arr ]
{
}

/// Display the list of supported macros defined in the system.
ClassMethod ShowMacros()
{
}

/// Set the default flags for this namespace or this system. See <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=ObjectScript+qspec">System Flags and Qualifiers</a>.
/// <p>If <var>system</var> is true, this method sets the default flags for this system; otherwise
/// it sets the default flags for the current namespace. If <var>flags</var> are set for this
/// namespace, these override any set for the system. These flags are combined with
/// the built-in defaults to create the defaults used.</p>
/// <p> This method returns the new defaults after this change.</p>
ClassMethod SetFlags(flags As %String, system As %Boolean = 0) As %String
{
}

/// Set the default qualifiers for this namespace or this system. See <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=ObjectScript+qspec">System Flags and Qualifiers</a>.
/// If <var>system</var> is true, the method sets the default qualifiers for this system, otherwise
/// it sets the default qualifiers for this namespace. If qualifiers are set for this
/// namespace, these override any set for the system. These qualifiers are combined with
/// the built in defaults to create the defaults used.
/// The argument <var>group</var> has been deprecated.
ClassMethod SetQualifiers(qspec As %String = "", system As %Boolean = 0, group As %String) As %Status
{
}

/// Get the default qualifiers for this namespace or this system.
/// If <var>system</var> is true, the method gets the default qualifiers for this system; otherwise
/// it gets the default qualifiers for the current namespace.
ClassMethod GetQualifiers(system As %Boolean = 0) As %String
{
}

/// This query returns a list of all object instances currently
/// in memory within the current process.
ClassMethod ObjectListExecute(ByRef QHandle As %Binary) As %Status
{
}

ClassMethod ObjectListClose(QHandle As %Binary) As %Status
{
}

ClassMethod ObjectListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

/// Upgrade the class definition database in one namespace.
/// Pass in <var>qspec</var> /mapped=1 to upgrade databases mapped into current namespace or if you pass in
/// <var>classname</var>, the method upgrades the database associated with this specific class.
ClassMethod Upgrade(qspec As %String = "", ByRef errorlog As %String, classname As %String) As %Status [ CodeMode = expression ]
{
}

/// Upgrade the class definition database in all the namespaces.
/// Pass in <var>qspec</var> /mapped=1 to upgrade databases mapped into current namespace.
ClassMethod UpgradeAll(qspec As %String = "", ByRef errorlog As %String) As %Status [ CodeMode = expression ]
{
}

/// Import the system messages for the specified language from ...\mgr\Locale\allmessages_[language].xml
/// and make this the current language.
/// If language is not specified, then Upgrade the Object locale and
/// import the current language.
ClassMethod LoadLanguage(language As %String = "", qspec As %String = "") As %Status
{
}

/// Return $$OK if this class name is valid, or an error message if it is not.
/// If it is invalid it is typically because it contains characters that are
/// not allowed in a class name or because it clashes with a class that already
/// exists (different case in package, for example).
ClassMethod IsValidClassname(class As %String) As %Status
{
}

/// For classes in a read/write database, return 1 if this <var>class</var> is up to date (or 0 if it is not).
/// If <var>log</var> is true, the method displays a log of what it is checking.
/// The <var>type</var> determines *what* it checks to make the determination:
/// <ul><li>0 - Check timestamps on class, so even if a description was modified this
/// shows the class as out of date.</li>
/// <li>1 - Ignore changes to descriptions in checking up to date status, this is the default
/// and is what the class compiler typically uses.</li>
/// <li>2 - Ignore changes to descriptions and method code in checking up-to-date status, this
/// is useful to see if the class has 'structurally' changed in a way that would require a class
/// referencing this via SQL to be recompiled</li>
/// </ul>
/// This method returns 1 if the class is in a read-only database.
ClassMethod IsUpToDate(class As %String, log As %Boolean = 0, type As %Integer = 1) As %Boolean
{
}

/// This returns, as output, a list of classes the class compiler will include if the listed classes are compiled.
/// The <var>class</var> argument can be a single class name, a comma-separated list of class names, or a
/// multidimensional array of class names. You can also use ? or * wildcards. If you
/// wish to exclude items, pass ' before the item name; this syntax also supports wildcards, e.g. "User.*,'User.T*".
/// This method returns the list of classes that will be compiled
/// in the <var>included</var> argument, based on the compile <var>qspec</var> argument.
ClassMethod GetDependencies(ByRef class As %String, Output included As %String, qspec As %String) As %Status
{
}

/// Set the object transaction mode for the current process to a new value.
/// Valid values are:
/// <table cols=2 cellpadding=5>
/// <tr><td>0</td><td>No transactions used for Object filing</td></tr>
/// <tr><td>1</td><td>Use transactions for Object filing</td></tr>
/// </table>
/// If a valid value is passed in, then the transaction mode for the current process is set to that value and the previous transaction mode value is returned.
/// Otherwise the transaction mode setting is left unchanged and <var>pStatus</var> contains a %Status
/// value describing the error and the current transaction mode value is returned.
ClassMethod SetTransactionMode(value As %Integer = 1, ByRef pStatus As %Library.Status) As %Integer
{
}

/// Return the current object transaction mode.
ClassMethod GetTransactionMode() As %Integer [ CodeMode = expression ]
{
}

/// Set the Object concurrency mode for the current process to a new value.
/// Valid values are:
/// <p>
/// <table cols=2 cellpadding=5>
/// <tr><td>0</td><td>No concurrency controls</td></tr>
/// <tr><td>1</td><td>Atomic</td></tr>
/// <tr><td>2</td><td>Shared</td></tr>
/// <tr><td>3</td><td>Shared retained</td></tr>
/// <tr><td>4</td><td>Exclusive</td></tr>
/// </table>
/// If a valid value is passed in then the concurrency mode for the current process is set to that value and the previous concurrency mode value is returned.
/// Otherwise the concurrency mode setting is left unchanged and <var>pStatus</var> contains a %Status
/// value describing the error and the current concurrency mode value is returned.
ClassMethod SetConcurrencyMode(value As %Integer = 1, ByRef pStatus As %Library.Status) As %Integer
{
}

/// Return the current object concurrency mode.
ClassMethod GetConcurrencyMode() As %Integer [ CodeMode = expression ]
{
}

/// <p>
/// The Extent Index is an index on all persistent classes that are runnable in the current namespace. It is currently used by %BuildIndices, %KillExtent,
/// and the %FindGUID utility method in <class>%Library.GUID</class>. Other uses may be added at a later time.
/// </p>
/// <p>
/// The index is maintained in the globals database in the current namespace. If the globals database in the current namespace is readonly, then an
/// error is returned. The class compiler automatically maintains this index for classes compiled in the namespace. Classes mapped
/// from other namespaces are not automatically added to or removed from the index when mapping changes or changes to
/// the class runtime occur in the original namespace. Such changes must be updated in the local namespace's extent index
/// by running a utility method. There are two methods: this method rebuilds the index
/// completely and <method>RebuildExtentIndexOne</method> rebuilds the index entries for only the specified class.
/// </p>
/// <p>
/// This method returns a status value indicating success or failure.
/// </p>
/// <p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>updateMode</td>
/// 		<td>
/// 			<p>
/// 				If zero then the extent index is purged and rebuilt completely. Otherwise, the existing
/// 				index is checked against existing defintions and only changed classes are rebuilt.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>lockMode</td>
/// 		<td>
/// 				<p>
/// 				Specifies the type of locking to be used while modifying the index. If the requested locks cannot be obtained then an error is reported to the caller.
/// 			</p>
/// 			<p>
/// 				<table>
/// 					<tr>
/// 						<td>0</td><td>No locking; </td>
/// 					</tr>
/// 					<tr>
/// 						<td>1</td><td>Exclusive lock on the entire extent index, released immediately on completion; </td>
/// 					</tr>
/// 					<tr>
/// 						<td>2</td><td>The nodes for each class in the extent index are locked during update, released immediately when class's index entries are built; </td>
/// 					</tr>
/// 					<tr>
/// 						<td>3</td><td>Shared lock on the entire extent index, released immediately on completion. </td>
/// 					</tr>
/// 					<tr>
/// 				</table>
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod RebuildExtentIndex(updateMode As %Boolean = 0, lockMode As %Integer = 1) As %Status
{
}

/// <p>
/// This method updates the extent index for the specified class in the current namespace. If the globals database in the current namespace is readonly, then an error is
/// returned. Call this method to rebuild the extent index for a single class in the current namespace. Refer to <method>RebuildExtentIndex</method> for
/// more information.
/// </p>
/// <p>
/// This method returns a status value indicating success or failure.
/// </p>
/// <p>
/// <h4>Parameters</h4>
/// <table border="1" title="Parameters">
/// 	<tr>
/// 		<th>Name</th><th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>className</td>
/// 		<td>
/// 			<p>
/// 				The name of the class to be indexed.
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>lockMode</td>
/// 		<td>
/// 				<p>
/// 				Specifies the type of locking to be used. If the requested locks cannot be obtained then an error is reported to the caller.
/// 			</p>
/// 			<p>
/// 				<table>
/// 					<tr>
/// 						<td>0</td><td>No locking; </td>
/// 					</tr>
/// 					<tr>
/// 						<td>1</td><td>The nodes for each class in the extent index are locked during update, released immediately when class's index entries are built; </td>
/// 					</tr>
/// 					<tr>
/// 						<td>2</td><td>The nodes for each class in the extent index are locked during update, released immediately when class's index entries are built; </td>
/// 					</tr>
/// 					<tr>
/// 						<td>3</td><td>Shared lock on the class nodes in the extent index, released immediately on completion. </td>
/// 					</tr>
/// 					<tr>
/// 				</table>
/// 			</p>
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>
/// 			<p>
/// 				The return value is a %Status value indicating success or failure.
/// 			</p>
/// 		</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod RebuildExtentIndexOne(className, lockMode As %Integer = 1) As %Status
{
}

/// Turn output redirection on and off in the binding server.
ClassMethod RedirectBindSrvUserOutput(val As %Boolean)
{
}

/// Given a <var>class</var> this returns the <var>version</var> of InterSystems IRIS this was compiled on and the <var>compiletime</var> of this class.
ClassMethod CompileInfoClass(class As %String, Output version As %String, Output compiletime As %String) As %Status
{
}

/// Query to return version and time when classes were compiled.
/// This only returns compiled classes, so classes not compiled are skipped. The <var>sortorder</var>
/// can be one of:<ul>
/// <li>0 - Time class was compiled (default)</li>
/// <li>1 - Classname</li>
/// <li>2 - InterSystems IRIS version</li></ul>
ClassMethod CompileInfoExecute(ByRef QHandle As %Binary, sortorder As %Integer = 0) As %Status
{
}

ClassMethod CompileInfoClose(QHandle As %Binary) As %Status
{
}

ClassMethod CompileInfoFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

ClassMethod CompileInfoFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status
{
}

/// Allows updating a CONFIGVALUE parameter type.
/// <p>If you have defined a <var>parameter</var> in the <var>classname</var> which is specified as 'CONFIGVALUE'
/// in the type keyword then this method allows this to be updated from the original value to a
/// new value. </p>
/// <p>Note that this should be a rare event and not be used for any value that needs to be
/// updated a lot, a global should be used for a rapidly updating value. The advantage of using a class
/// parameter for a configuration value is that a very large number of processes can access this value
/// using 'Set val=##class(ClassName).#ParamName' faster than access to a global.</p>
ClassMethod UpdateConfigParam(classname As %String, parameter As %String, value As %String) As %Status
{
}

/// Validate indices for a class
/// <br><br>
/// <b>Parameters:</b>
/// <dl>
/// <dt><i>classname</i>
/// <dd>Name of the persistent class to validate indices for.
/// <dt><i>idxList</i>
/// <dd>Optional.  "" to check all indices, or specify a $list of index names to check.  Default=""
/// <dt><i>autoCorrect</i>
/// <dd>Optional.  If true, correct any errors found.  Default=0
/// <dt><i>lockOption</i>
/// <dd>Optional.  Default = 1
///      0 - No locking is performed at all
///      1 - Shared locking as each row is checked
///      2 - exclusive lock on entire table for duration of the run
/// <dt><i>multiProcess</i>
/// <dd>Optional.  If true, parts of %ValidateIndices() use parallel processing when possible.  Default=0
/// <dt><i>verbose</i>
/// <dd>Optional.  If true, display output to the current device.  Default=1.  When called for a sharded class, <i>verbose</i> is force to 0.
/// <dt><i>errors</i>
/// <dd>Optional.  Passed by reference.  Returns a multidimensional array of errors found in the index(es) validated.  If autoCorrect=1, this is a multidimensional array of issues corrected.
/// </dl>
/// <p><b>Returns:</b>
/// <dd>Status Code</dd>
/// </p>
/// <p><b>Example</b>:
/// <li>Do $SYSTEM.OBJ.ValidateIndices("Sample.Person","",1,2)</li>
/// <li>Do $SYSTEM.OBJ.ValidateIndices("Sample.Company",$lb("NameIdx"),1,1)</li>
/// </p>
/// <p><b>Note:</b>:
/// <br>Indices may also be validated by calling the class method <i>##class(classname).%ValidateIndices(idxList,autoCorrect,lockOption,verbose)</i>.
/// <br>There is one main difference between validating indices through <i>$SYSTEM.OBJ.ValidateIndices()</i> and <i>##class(classname).%ValidateIndices()</i>.
/// <br><i>$SYSTEM.OBJ.ValidateIndices()</i> validates the indices for a table, and also validates any indices in collection child tables for that table.
/// <br>When using <i>##class(classname).%ValidateIndices()</i>, collection child table indices must be checked with separate calls.
/// <br>Also, when calling <i>$SYSTEM.OBJ.ValidateIndices()</i>, multiProcess default is 0. When calling <i>##class(classname).%ValidateIndices()</i>, multiProcess default is 1.
/// </p>
ClassMethod ValidateIndices(classname As %Library.String, idxList As %String = "", autoCorrect As %Boolean = 0, lockOption As %Integer = 1, multiProcess As %Boolean = 0, verbose As %Boolean = 1, ByRef errors As %String) As %Library.Status [ PublicList = mapList ]
{
}

/// Generate embedded SQL cached queries (UCQ) for all routines that match the <var>list</var> passed in.
/// This can be a pattern such as 'A*' to mean all runnable code that starts with 'A'. The <var>qspec</var>
/// uses /mapped to determine if patterns should include mapped items or just local ones. Specify 1 for <var>delete</var>
/// to delete the UCQ found for the routines in <var>list</var>.
ClassMethod GenerateEmbedded(ByRef list As %String = "", qspec As %String = "", ByRef errorlog As %String, delete As %Boolean = 0) As %Status
{
}

/// Set the specified Macro Pre-Processor (MPP) Configuration Settings 'optionName' to the specified 'optionValue'
/// <p style="display: block; white-space: pre; font-family: 'Courier New';">
/// -------------------------------------------------------------------------------
/// Method:       SetMPPOption
/// Definition:   This method sets the specified Macro Pre-Processor (MPP)
///               Configuration Settings 'optionName' to the specified
///               'optionValue'.
///               This method also returns the original value via the PBR
///               'oldValue' parameter, along with the invocation status
///               via the method's return value.
///
/// Options:      The following is a list of currently supported Macro
///               Pre-Processor Configuration Settings Options:
///
///                  optionName/optionValue     Description
///                  -------------------------  -----------------------------------
///                  MPPParsingMode           - The MPP's Parsing Mode
///                     {1 | 2}
///                      1 - Standard Macro Pre-Processor Parsing  [$$$MPPParsingModeStandard]
///                      2 - Enhanced Macro Pre-Processor Parsing  [$$$MPPParsingModeEnhanced]
///                          This mode supports $$$MACRO[(args)] Recursion Parsing
///                                             [DEFAULT: 1 = $$$MPPParsingModeDefault]
///                  MacroMaxRecursionNoArg   - The maximum allowed sub-string
///                                             repetitions between $$$MACRO
///                                             references (without arguments) of
///                                             the same name
///                     {3...n}
///                      3 - The minimum number to determine $$$MACRO Recursive
///                          Referencing or Self-Referencing
///                      n - This number can be increased, but should never need
///                          to be for $$$MACRO references without arguments
///                                             [DEFAULT: 3 = $$$MacroMaxRecursionNoArgDefault]
///                  MacroMaxRecursionGotArg  - The maximum allowed sub-string
///                                             repetitions between $$$MACRO(...)
///                                             references (with arguments) of
///                                             the same name
///                     {10...n}
///                      10 - The minimum number to determine $$$MACRO(...)
///                           Recursive Referencing or Self-Referencing
///                       n - This number can be increased for $$$MACRO(...)
///                           references (with arguments) that may exceed 10
///                           nesting levels, but this should be very rare
///                              Example: $$$A($$$A($$$A(...)))
///                                             [DEFAULT: 10 $$$MacroMaxRecursionGotArgDefault]
///
/// Restriction:  You must have the "USE" permission on the %Admin Manage Resource
///               in order to change this MPP Configuration Setting.
///
/// Notes:        - Changing this MPP Configuration Setting affects all
///                 processes immediately.
///               - This is a system-wide setting.
///
/// Invocation:   This method can be invoked in the following ways:
///                  ObjectScript: $SYSTEM.OBJ.SetMPPOption(...)
///                           SQL: N/A
///
/// Examples:     The following examples shows the use of this method:
///
///    #1         Set the 'MPPParsingMode' option of the Macro Pre-Processor
///               to the value two (2), which specifies the use of the Enhanced
///               Parsing to check for $$$MACRO[(args)] Recursion:
///
///               set tSC=$SYSTEM.OBJ.SetMPPOption("MPPParsingMode",2,.oldVal)
///
/// Data Storage: ^%SYS("MPP","Parsing") & ^%SYS("MPP","MacroRecursion")
///
/// Parameters:
///    optionName     - The Pre-Processor (MPP) Configuration Settings
///                     'option' name.
///                     The following is a list of currently supported Macro
///                     Pre-Processor Configuration Settings Options:
///                        - MPPParsingMode
///                        - MacroMaxRecursionNoArg
///                        - MacroMaxRecursionGotArg
///    optionValue    - The value to set for the specified 'optionName'
///    oldValue       - A Pass By Reference (PBR) parameter which returns
///                     the old MPP Configuration Setting value
///
/// RETURN Value: The status from the invocation of this method
/// -------------------------------------------------------------------------------
/// </p>
ClassMethod SetMPPOption(optionName As %String = "", optionValue As %Integer = "", ByRef oldValue As %String) As %Status
{
}

/// Get the current value for the specified Macro Pre-Processor (MPP) Configuration Settings 'optionName'
/// <p style="display: block; white-space: pre; font-family: 'Courier New';">
/// -------------------------------------------------------------------------------
/// Method:       GetMPPOption
/// Definition:   This method returns the current value for the specified
///               Macro Pre-Processor (MPP) Configuration Settings 'optionName'
///
/// Options:      The following is a list of currently supported Macro
///               Pre-Processor Configuration Settings Options:
///
///                  optionName                 Description
///                  -------------------------  -----------------------------------
///                  MPPParsingMode           - The MPP's Parsing Mode
///                                                {1 | 2}
///                  MacroMaxRecursionNoArg   - The maximum allowed sub-string
///                                             repetitions between $$$MACRO
///                                             references (without arguments) of
///                                             the same name
///                                                {3...n}
///                  MacroMaxRecursionGotArg  - The maximum allowed sub-string
///                                             repetitions between $$$MACRO(...)
///                                             references (with arguments) of
///                                             the same name
///                                                {10...n}
///                  ALL                        Get all 'optionName' values
///
/// Notes:        - See the 'SetMPPOption(...)' method for specific details
///                 about each of the 'optionName' values
///
/// Invocation:   This method can be invoked in the following ways:
///                  ObjectScript: $SYSTEM.OBJ.GetMPPOption(...)
///                           SQL: N/A
///
/// Examples:     The following examples shows the use of this method:
///
///    #1         Get the current value for the 'MPPParsingMode' option of
///               the Macro Pre-Processor Configuration Settings
///
///               set optVal=$SYSTEM.OBJ.GetMPPOption("MPPParsingMode",.tSC)
///
/// Data Storage: ^%SYS("MPP","Parsing") & ^%SYS("MPP","MacroRecursion")
///
/// Parameters:
///    optionName     - The Pre-Processor (MPP) Configuration Settings
///                     'option' name.
///                     The following is a list of currently supported Macro
///                     Pre-Processor Configuration Settings Options:
///                        - MPPParsingMode
///                        - MacroMaxRecursionNoArg
///                        - MacroMaxRecursionGotArg
///                        - ALL  (Get all 'optionName' values)
///    tSC            - A Pass By Reference (PBR) parameter which returns
///                     the status from the invocation of this method
///    getGloValue    - 0 = Don't retrieve the value from the System-Global  [DEFAULT]
///                     1 = Retrieve the value from the System-Global
///                       NOTE: This parameter should be used for
///                             internal purposes only!
///
/// RETURN Value: The current value of the specified Macro Pre-Processor (MPP)
///               Configuration Settings 'optionName'.
///               NOTE: If 'optionName' is passed the value "ALL", then return
///                     a $LIST(...) of a $LIST(...) of the following values for
///                     each of the valid 'optionName' values:
///                        $LIST($LIST(optionName,optionValue,tSC),...)
/// -------------------------------------------------------------------------------
/// </p>
ClassMethod GetMPPOption(optionName As %String = "", ByRef tSC As %Status, getGloValue As %Integer = 0) As %Status
{
}

}
