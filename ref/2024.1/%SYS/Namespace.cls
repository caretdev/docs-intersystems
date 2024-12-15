Class %SYS.Namespace Extends %Persistent [ Abstract, System = 4 ]
{

/// Returns True if a namespace is enabled, that is, if its default directory is
/// reachable.<br>
/// This method will implicitly mount a database which has not yet been accessed
/// by the system. If the database has been explicitly dismounted, or is not mountable,
/// then the method will return false.
ClassMethod Enabled(NamespaceName As %String) As %Boolean [ Internal ]
{
}

ClassMethod Exists(NamespaceName As %String) As %Boolean [ CodeMode = expression ]
{
}

/// Return information about a namespaces default global database.<br>
/// Parameters:<br>
/// Namespace - Namespace to obtain information about. Can be either a real namespace
///             or an implied namespace. Real namespace must be in uppercase.<br>
/// DontConnect - If the namespace's default database is a remote database mounted across ECP,
/// then if set to 1, and the remote database is not mounted, we will not try to mount it (default = 0).<br><br>
///
/// Return Values:<br>
/// Returns an array of information about the default global database.<br>
/// Info("System") - name of system default global directory resides on.<br>
/// Info("Directory") - Name of default global directory.<br>
/// Info("Resource") - Name of resource attached to the directory.<br>
/// Info("ReadOnly") - 0/1 is the database mounted read only.<br>
/// Info("Mounted") - 0/1 is the database mounted.<br>
/// Info("Status") - 1 = Success, %Status if any kind of error.<br><br>
/// This also returns a second level of subscript with the same values, but
/// subscripted by "GlobalDB" and "RoutineDB". This allows us to return info about
/// the default Routine database for the namespace e.g.<br>
/// Info("GlobalDB","System") <br>
/// Info("RoutineDB","System") <br>
/// If an implied namespace is passed in, ^SERVER^DIR, and the SERVER is the local
/// system, then the database is treated as a local database, and Info("System") will
/// be returned as "".
///
ClassMethod GetNSInfo(Namespace As %String, ByRef Info As %String, DontConnect As %Boolean = 0)
{
}

/// Return information about a namespaces default global and routine database
/// On Input:
/// Namespace - Namespace to obtain information about. Can be either a real namespace
///             or an implied namespace
/// DontConnect - If the namespace's default database is a remote database mounted across ECP,
/// then if set to 1, and the remote database is not mounted, we will not try to mount it (default = 0).<br><br>
///
/// Returns an array of information about the default global and routine databases.
/// Info("GlobalDB","System") - name of system default global directory resides on.
/// Info("GlobalDB","Directory") - Name of default global directory.
/// Info("GlobalDB","Resource") - Name of resource attached to the directory.
/// Info("GlobalDB","ReadOnly") - 0/1 is the database mounted read only.
/// Info("GlobalDB","Mounted") - 0/1 is the database mounted.
/// Info("GlobalDB","Status") - 1 = Success, %Status if any kind of error.
/// Info("RoutineDB","System") - name of system default routine directory resides on.
/// Info("RoutineDB","Directory") - Name of default routine directory.
/// Info("RoutineDB","Resource") - Name of resource attached to the directory.
/// Info("RoutineDB","ReadOnly") - 0/1 is the database mounted read only.
/// Info("RoutineDB","Mounted") - 0/1 is the database mounted.
/// Info("RoutineDB","Status") - 1 = Success, %Status if any kind of error.
ClassMethod GetAllNSInfo(Namespace As %String, ByRef Info As %String, DontConnect As %Boolean = 0)
{
}

/// Returns the system^directory where ^[Namespace]Global(Subscript) is mapped to.
/// If Subscript is missing, it returns the location for ^[Namespace]Global.
/// If Global is missing, it returns the default global location for Namespace.<br>
/// This API support multi-level subscripts mapping, for example, pass "abc",1,2 in Subscript will check
/// the destination of Global("abc",1,2).<br>
/// If the system is the same as the local system, then system is set to "".
ClassMethod GetGlobalDest(Namespace As %String = {$namespace}, Global As %String = "^", Subscript As %String = "") As %String
{
}

/// Returns the system^directory where Routine is mapped to in this Namespace.
/// If Routine is missing, it returns the default routine location for Namespace.
/// The allowed types are: INC, INT, MAC and OBJ.
/// If the system is the same as the local system, then system is set to "".
ClassMethod GetRoutineDest(Namespace As %String = {$namespace}, Routine As %String = "", Type As %String = "INT") As %String
{
}

/// Returns the system^directory where Package is mapped to in this Namespace.
/// If Package is missing, it returns the default package location for Namespace.
/// If the system is the same as the local system, then system is set to "".
ClassMethod GetPackageDest(Namespace As %String = "", Package As %String = "") As %String
{
}

/// The <b>ListAll</b> method quickly returns a list of all the
/// namespaces in the current process.
/// The parameter <b>array</b> is a local array
/// name passed by reference.  On return from <b>ListAll</b>, the subscripts
/// of the <b>array</b> parameter will be the namespace names of
/// the current process.  Each subscripted entry in <b>array</b>
/// will contain the empty string.
/// When <b>ConvertImplicit</b> is true, it will convert the '@' in implicit namespace to '^'.
/// The default value of <b>ConvertImplicit</b> is true when it is not specified.
/// <p>
/// Each explicit namespace is returned using the local namespace name as
/// the subscript string.
/// Each implicit namespace is returned using a subscript string that contains a
/// caret ^, followed by the system name, followed by another caret ^,
/// followed by the name of directory containing the database file.  If
/// the implicit namespace is local then the system name is the empty string
/// and the subscript string starts with two adjacent carets ^^.
///
ClassMethod ListAll(Output array, ConvertImplicit As %Boolean = 1) As %Status
{
}

ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListExecute(ByRef qHandle As %Binary, Remote As %Boolean = 0, DontConnect As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

/// Returns a list of namespaces defined on the system.<br>
/// Parameters:<br>
/// Remote - 0/1 whether to return any remotely mapped namespaces or not.<br>
/// DontConnect - 0/1 whether to connect to remote system or not if a connection
/// has not been made yet.<br>
/// Return values:<br>
/// Status - (0/1) Whether the namespace is available or not.<br>
/// If the Status returned is 1, the default global database for the namespace is
/// either mounted, or not mounted yet. If 0, then the database has been dismounted.<br>
/// Remote -  (0/1) Whether the namespace is mapped to a remote ECP system.<br>
}
