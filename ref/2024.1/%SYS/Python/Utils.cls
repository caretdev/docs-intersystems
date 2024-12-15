///
/// Python Runtime Utils
///
Class %SYS.Python.Utils Extends %RegisteredObject [ System = 4 ]
{

Parameter "LOCK_SHARED" As %String = "S";

Parameter "LOCK_ESCALATING" As %String = "E";

Parameter "LOCK_IMMEDIATE" As %String = "I";

Parameter "LOCK_DEFERRED" As %String = "D";

///
/// Lock
///
ClassMethod lock(ref As %String = "", timeout As %Integer = "", mode As %String = "") As %Boolean [ CodeMode = expression ]
{
}

///
/// Unlock
///
ClassMethod unlock(ref As %String = "", timeout As %Integer = "", mode As %String = "") As %Boolean
{
}

///
/// Helper for locking
///
ClassMethod lockit(op As %String, ref As %String, timeout As %Integer, mode As %String) As %Boolean [ Internal, Private ]
{
}

}
