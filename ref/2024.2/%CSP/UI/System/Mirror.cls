/// Methods used by mirror pages.
Class %CSP.UI.System.Mirror [ Abstract, System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Activate and/or catchup Mirror DBs.
ClassMethod MirrorActivateCatchupDB(ByRef pParms, ByRef pItems) As %Status
{
}

/// Mount mirrored databases
ClassMethod MirrorMountDB(ByRef pParms, ByRef pItems) As %Status
{
}

/// Remove databases from the mirror
ClassMethod MirrorRemoveDB(ByRef pParms, ByRef pItems) As %Status
{
}

/// Add databases to the mirror
ClassMethod MirrorAddDatabases(ByRef pParms, ByRef pItems) As %Status
{
}

/// Log msg into ^|"%SYS"|IRIS.Temp.MgtPortalTask($J,"ErrorCount") and ^|"%SYS"|IRIS.Temp.MgtPortalTask($J,"Details")
ClassMethod LogMsg(Msg As %String, ERROR As %String = "")
{
}

/// Return DB array for Mirrorred DBs. Sort it so that the ones that need work are on top.<br>
/// In this order: Dismounted; those that need Activate and/or Catchup.
ClassMethod GetDBs(ByRef DBArray, SelectedMirror) As %Integer
{
}

/// Return Mirrorred DBs. Sort it so that the ones that need work are on top.<br>
/// In this order: Dismounted; those that need Activate and/or Catchup.<br>
/// MirrorSetName can be passed in for async members.<br>
/// Action is (M)ount, (A)ctivate, (C)atchup, or (R)emove.<br>
/// Specifying one of these will only return DBs on which that action can currently be performed.
ClassMethod MirroredDatabaseListExecute(ByRef qHandle As %Binary, MirrorSetName As %String = "*", Name As %String = "*", Action As %String = "") As %Status [ Internal ]
{
}

ClassMethod MirroredDatabaseListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = MirroredDatabaseListExecute ]
{
}

ClassMethod MirroredDatabaseListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = MirroredDatabaseListExecute ]
{
}

/// Wrapper for ##class(SYS.Mirror).MemberStatusList() to be used on failover members.<br>
/// It adds columns for Async Type and X.509 DN.
ClassMethod MemberStatusListExecute(ByRef qHandle As %Binary, MirrorName As %String = "") As %Status [ Internal ]
{
}

ClassMethod MemberStatusListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = MemberStatusListExecute ]
{
}

ClassMethod MemberStatusListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = MemberStatusListExecute ]
{
}

/// Return localized text representing the current mirror member status.
ClassMethod MemberStatus() As %String
{
}

}
