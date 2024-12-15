Class %WebStress.Utils.Version Extends %Persistent [ Owner = {%Developer}, System = 4 ]
{

/// This is the date that the data was changed/saved on.
Property SavedDate As %Date [ Final ];

/// This is the time that the data was changed/saved on.
Property SavedTime As %Time [ Final ];

/// This is the version number of the saved object. This is used to synchronise across systems
Property Version As %Integer;

/// This property is used to ensure that the version is not incremented when synchronisation takes place
Property SyncSave As %Boolean [ Transient ];

Method %OnAddToSaveSet(depth As %Integer = 3, insert As %Integer = 0, callcount As %Integer = 0) As %Status [ CodeMode = generator, Private, ProcedureBlock = 1 ]
{
}

}
