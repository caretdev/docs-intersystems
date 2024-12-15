/// System Management Portal - System Operations - Manage Locks
Class %CSP.UI.Portal.Locks Extends %CSP.UI.Portal.LocksView [ System = 4 ]
{

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Locks.zen";

Parameter HELPADDRESS = "Home,Locks";

/// Displayed name of this page.
Parameter PAGENAME = "Manage Locks";

/// Store translated targetCol linkCaption for <condition>
Property colProcess As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Remove_all_locks_for_process")} ];

Property colRemoteClient As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Remove_all_locks_from_remote_client")} ];

Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String [ CodeMode = expression ]
{
}

/// To remove all remote add "C" as preface.
ClientMethod doRemoveRemote(DeleteID, RemoveAll, RemoteOwner) [ Language = javascript ]
{
}

/// Remove a lock. If "RemoveAll" is 1 then all locks for that process is removed.
/// If RemoveAll is 0, then DeleteID is the lock reference.
/// If RemoveAll is 1, then DeleteID is the Pid/Client or Owner.
ClientMethod doRemove(DeleteID, RemoveAll, RemoteOwner) [ Language = javascript ]
{
}

/// This method is called to check whether a local lock is currently in an option transaction.
ClassMethod InTransaction(DeleteID) As %String [ ZenMethod ]
{
}

/// Remove locks from server. If RemoveAllLocksForProcess, then DeleteID is PID. OW DeleteID contains three pieces lock reference delimited by comma.
ClassMethod RemoveLocks(DeleteID, RemoveAllLocksForProcess) As %ZEN.proxyObject [ ZenMethod ]
{
}

}
