/// %SQL.StatementParameter - metadata for a statement parameter. A StatementParameter instance
/// contains the definition of a statement parameter. A statement parameter is a specific type
/// of statement column. That type is defined in the columnType property. SQLRESULTCOL columns are
/// not modeled as StatementParameter instances. Rather, a SQLRESULTCOL column is a StatementColumn
/// instance.
Class %SQL.StatementParameter Extends %SerialObject [ StorageStrategy = rsmdParameter, System = 2 ]
{

Property ODBCType As %Integer;

Property precision As %Integer;

Property scale As %Integer;

Property isNullable As %Boolean;

Property colName As %String(MAXLEN = 255);

/// columnType is the ODBC column type:
/// 	SQLPARAMTYPEUNKNOWN             0
/// 	SQLPARAMINPUT                   1
/// 	SQLPARAMINPUTOUTPUT             2
/// 	SQLRESULTCOL                    3
/// 	SQLPARAMOUTPUT                  4
/// 	SQLRETURNVALUE                  5
///
/// SQLRESULTCOL types are not StatementParameter instances. Rather, SQLRESULTCOL
/// columns are StatementColumn objects.
Property columnType As %Integer(MAXVAL = 5);

/// getColInfo returns an output column descriptor from a parameter definition if the parameter
/// has output direction (types 2,4, and 5)
Method getColInfo() As %Library.List [ Internal ]
{
}

}
