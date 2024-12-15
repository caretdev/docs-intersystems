/// contains one row for each primary, foreign, or common key.
Class %TSQL.sys.keys Extends %Persistent [ SqlRowIdPrivate, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

/// Name of the schema the column resides in
Property schema As %String(MAXLEN = 128) [ SqlColumnNumber = 13 ];

/// Parent Object name
/// Object name of the parent_obj.
Property parentobjname As %String(MAXLEN = 128) [ SqlColumnNumber = 14, SqlFieldName = parent_obj_name ];

/// Number of non-NULL keys
Property keycnt As %Integer [ SqlColumnNumber = 4 ];

/// Column ID
Property key1 As %Integer [ SqlColumnNumber = 5 ];

/// Column ID
Property key2 As %Integer [ SqlColumnNumber = 6 ];

/// Column ID
Property key3 As %Integer [ SqlColumnNumber = 7 ];

/// Column ID
Property key4 As %Integer [ SqlColumnNumber = 8 ];

/// Column ID
Property key5 As %Integer [ SqlColumnNumber = 9 ];

/// Column ID
Property key6 As %Integer [ SqlColumnNumber = 10 ];

/// Column ID
Property key7 As %Integer [ SqlColumnNumber = 11 ];

/// Column ID
Property key8 As %Integer [ SqlColumnNumber = 12 ];

/// Object ID of the table this key belongs to
Property id As %Integer [ SqlColumnNumber = 2 ];

/// Object ID of the constraint this key belongs to
Property constrid As %Integer [ SqlColumnNumber = 15, SqlFieldName = constr_id ];

/// Record type
Property type As %SmallInt [ SqlColumnNumber = 3 ];

}
