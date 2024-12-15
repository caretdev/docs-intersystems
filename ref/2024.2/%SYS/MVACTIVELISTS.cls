Class %SYS.MVACTIVELISTS Extends %Persistent [ SqlTableName = MVACTIVELISTS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Property Item As %Integer [ Required ];

Property PieceCounter As %Integer [ Required ];

Property RecId As %String(TRUNCATE = 1) [ Required ];

}
