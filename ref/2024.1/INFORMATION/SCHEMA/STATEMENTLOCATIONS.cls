/// Returns one row location (routine, class) that has an SQL Statement.  This is a child table of INFORMATION_SCHEMA.STATEMENTS as a statement may be found in multiple locations.
Class INFORMATION.SCHEMA.STATEMENTLOCATIONS Extends (%Library.Persistent, %XML.Adaptor) [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = STATEMENT_LOCATIONS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

/// Parent reference to the SQL Statement
Relationship Statement As INFORMATION.SCHEMA.STATEMENTS [ Cardinality = parent, Inverse = Locations ];

/// Routine or classname the SQL Statement reside in
Property Location As %String(MAXLEN = 128) [ Required ];

/// Runtime location of SQL logic, for universal cached queries will be different to <property>Location</property>
Property RuntimeLocation As %String(MAXLEN = 128);

/// Type of location:  Class (CLS), Routine (RTN), etc.
Property Type As %String(MAXLEN = 10);

}
