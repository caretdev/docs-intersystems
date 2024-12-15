/// Represent the package information used by the class compiler.
Class %Studio.Package Extends %Persistent [ System = 3 ]
{

/// Lock an individual package definition.
/// If <var>lock</var> is true it is locked and if it is false then
/// it is unlocked.
ClassMethod LockItem(name As %String, lock As %Boolean = 1) As %Status
{
}

/// Return true if this package information already exists and false otherwise
ClassMethod Exists(name As %String) As %Boolean
{
}

}
