/// Contains one row for every column in every table and view, and a row for each parameter in a stored procedure.
Class %TSQL.sys.constraints Extends %Persistent [ SqlRowIdPrivate, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

/// Name of the schema the column resides in
Property schema As %String(MAXLEN = 128) [ SqlColumnNumber = 9 ];

/// Parent Object name
/// Object name of the parent_obj.
Property parentobjname As %String(MAXLEN = 128) [ SqlColumnNumber = 10, SqlFieldName = parent_obj_name ];

/// Object ID of the constraint
Property constrid As %Integer [ SqlColumnNumber = 3 ];

/// Column number in the table
Property colid As %TinyInt [ SqlColumnNumber = 2 ];

/// ID of the table on which the constraint is declared
Property tableid As %Integer [ SqlColumnNumber = 4 ];

/// The type of constraint:
///  0x0040 = a referential constraint
///  0x0080 = a check constraint
Property status As %Integer [ SqlColumnNumber = 6 ];

}
