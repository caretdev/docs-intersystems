/// Journal Vector SET/Vector KILL record related API
Class %SYS.Journal.VectorSetKillRecord Extends %SYS.Journal.SetKillRecord [ System = 4 ]
{

Parameter READONLY = 1;

/// Cluster journal sequence number of the record on a clustered system or 0 otherwise
Property ClusterSequence As %Integer [ Calculated ];

/// Directory path of the database updated by the vector operation
Property DatabaseName As %SysPath [ Calculated ];

/// Mirror database name of the database updated by the vector operation if it is a mirrored database
Property MirrorDatabaseName As %String [ Calculated ];

/// Extended global reference of the global holding the node which is the target of the vector operation
Property GlobalReference As %VarString [ Calculated ];

/// Global node holding the vector which is the target of the vector operation (<property>GlobalReference</property> minus the namespace)
Property GlobalNode As %VarString [ Calculated ];

/// Number of data values stored in the record. It can be 0, 1 or 2 depending on
/// whether the record is a Vector SET or Vector KILL and whether it is in a transaction.
Property NumberOfValues As %Integer [ Calculated ];

/// (For Vector SET record only) The value the vector element was set to
Property NewValue As %VarString [ Calculated ];

/// (For <property>InTransaction</property> record only) The value of the vector element prior to the vector operation
Property OldValue As %VarString [ Calculated ];

/// The collation of the subscripts in <property>GlobalNode</property>
Property Collation As %Integer [ Calculated ];

/// The index into the vector for set $vector(gref, index, type)=value or kill $vector(gref, index)
Property VecIndex As %Integer [ Calculated ];

/// The string value representing the type of the vector which is the target of the vector operation </property>
Property VecType As %String [ Calculated ];

Method %LoadData(Offset As %String, flag As %Boolean) As %Status [ Private ]
{
}

Method VecIndexGet() As %Integer
{
}

Method VecTypeGet() As %String
{
}

Method ClusterSequenceGet() As %Integer
{
}

Method DatabaseNameGet() As %String
{
}

Method MirrorDatabaseNameGet() As %String [ CodeMode = expression ]
{
}

Method GlobalReferenceGet() As %String
{
}

Method GlobalNodeGet() As %String
{
}

Method NumberOfValuesGet() As %Integer [ CodeMode = expression ]
{
}

/// TRUE if there is a <property>NewValue</property> (including "") in the record
Method ExistsNewValue() As %Boolean [ CodeMode = expression ]
{
}

/// TRUE if there is an <property>OldValue</property> (including "") in the record
Method ExistsOldValue() As %Boolean [ CodeMode = expression ]
{
}

Method NewValueGet() As %String [ CodeMode = expression ]
{
}

Method OldValueGet() As %String [ CodeMode = expression ]
{
}

Method CollationGet() As %Integer
{
}

/// Restore a Vector SET or a Vector KILL
Method Restore(Detail As %Integer) As %Status
{
}

Method Fetch(ByRef Row As %List, ByRef Columns As %String, Match As %List = "") As %Boolean [ Internal, PublicList = (col, match, Row, Columns) ]
{
}

}
