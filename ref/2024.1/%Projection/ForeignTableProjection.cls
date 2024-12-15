Class %Projection.ForeignTableProjection Extends %Projection.AbstractProjection
{

/// String of header names for FILE foreign tables to specify column order in the header
Parameter COLUMNS;

/// Types specified in the COLUMNS clause; included for parity with LOAD DATA
Parameter COLUMNSTYPES;

/// Number of columns in the table (IRIS side)
Parameter NUMFIELDS;

/// Does this FT support predicated pushdown; taken from SERVER
Parameter PREDICATEPUSHDOWN;

/// Fully qualified SQL name of the foreign table this projection projects
Parameter PROJECTS;

/// Optional user-specified query to send to the external DB
Parameter QUERY;

/// Name of the server this foreign table belongs to
Parameter SERVER;

/// SQL name given to the FT class query
Parameter SQLQUERYNAME;

/// Name of the table as it exists in the external data source
Parameter TABLE;

/// USING clause at CREATE time
Parameter USING;

/// Comma-delimited string of column names as they exist in the external table
Parameter VALUES;

/// Recreate the associated FT
ClassMethod CreateProjection(classname As %String, ByRef parameters As %String, modified As %String, qstruct) As %Status
{
}

/// Drop the associated FT
ClassMethod RemoveProjection(classname As %String, ByRef parameters As %String, recompile As %Boolean, modified As %String, qstruct) As %Status
{
}

}
