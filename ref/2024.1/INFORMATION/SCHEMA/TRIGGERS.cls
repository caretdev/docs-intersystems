/// Returns one row for each trigger for tables that can be accessed by the current user in the current namespace.
Class INFORMATION.SCHEMA.TRIGGERS Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = TRIGGERS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 20 ];

Property TableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 21 ];

Property TriggerObjName As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 22 ];

/// Is the table a system table (1 or 0)
Property SystemTable As %Integer [ Calculated, Internal, Private, Required, SqlColumnNumber = 23, SqlComputeCode = { set {*}=$s($e({TABLE_SCHEMA})="%"||({TABLE_SCHEMA}="INFORMATION_SCHEMA"):1,1:0) }, SqlComputed ];

/// Table qualifier - always NULL in InterSystems IRIS
Property TABLECATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = TABLE_CATALOG ];

/// Name of schema that contains the table.
Property TABLESCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Calculated, Required, SqlColumnNumber = 3, SqlComputeCode = { set {*}={SchemaExact} }, SqlComputed, SqlFieldName = TABLE_SCHEMA ];

/// Name of the table.
Property TABLENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Calculated, Required, SqlColumnNumber = 4, SqlComputeCode = { set {*}={TableExact} }, SqlComputed, SqlFieldName = TABLE_NAME ];

/// Name of the trigger.
Property TRIGGERNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 5, SqlFieldName = TRIGGER_NAME ];

/// Event for this trigger, typically INSERT, UPDATE, or DELETE
Property EVENTMANIPULATION As %String(MAXLEN = 48) [ SqlColumnNumber = 6, SqlFieldName = EVENT_MANIPULATION ];

/// EVENT_OBJECT_CATALOG is not currently used by InterSystems IRIS, reserved for future use.
Property EVENTOBJECTCATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 7, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = EVENT_OBJECT_CATALOG ];

/// EVENT_OBJECT_SCHEMA is not currently used by InterSystems IRIS, reserved for future use.
Property EVENTOBJECTSCHEMA As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 8, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = EVENT_OBJECT_SCHEMA ];

/// EVENT_OBJECT_TABLE is not currently used by InterSystems IRIS, reserved for future use.
Property EVENTOBJECTTABLE As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 9, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = EVENT_OBJECT_TABLE ];

/// Column's ordinal position within the table.
Property ACTIONORDER As %Integer [ SqlColumnNumber = 10, SqlFieldName = ACTION_ORDER ];

/// ACTION_CONDITION is not currently used by InterSystems IRIS, reserved for future use.
Property ACTIONCONDITION As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 11, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = ACTION_CONDITION ];

/// ACTION_STATEMENT is not currently used by InterSystems IRIS, reserved for future use.
Property ACTIONSTATEMENT As %String(MAXLEN = "") [ SqlColumnNumber = 12, SqlFieldName = ACTION_STATEMENT ];

/// Foreach specification, ROW, ROW/OBJECT, or STATEMENT
Property ACTIONORIENTATION As %String(MAXLEN = 10, VALUELIST = ",ROW,ROW/OBJECT,STATEMENT") [ SqlColumnNumber = 13, SqlFieldName = ACTION_ORIENTATION ];

/// Time, BEFORE or AFTER
/// <br>BEFORE - the trigger's Time is BEFORE
/// <br>AFTER - the trigger's Time is AFTER
Property ACTIONTIMING As %String(MAXLEN = 6, VALUELIST = ",BEFORE,AFTER") [ SqlColumnNumber = 14, SqlFieldName = ACTION_TIMING ];

/// Trigger's old table name
Property ACTIONREFERENCEOLDTABLE As %String(MAXLEN = 128) [ SqlColumnNumber = 15, SqlFieldName = ACTION_REFERENCE_OLD_TABLE ];

/// Trigger's new table name
Property ACTIONREFERENCENEWTABLE As %String(MAXLEN = 128) [ SqlColumnNumber = 16, SqlFieldName = ACTION_REFERENCE_NEW_TABLE ];

/// ACTION_REFERENCE_OLD_ROW is not currently used by InterSystems IRIS, reserved for future use.
Property ACTIONREFERENCEOLDROW As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 17, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = ACTION_REFERENCE_OLD_ROW ];

/// ACTION_REFERENCE_NEW_ROW is not currently used by InterSystems IRIS, reserved for future use.
Property ACTIONREFERENCENEWROW As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 18, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = ACTION_REFERENCE_NEW_ROW ];

/// Time trigger was created
/// This is actually the time the class that defines the table was last changed as the IRIS class metadata cannot account for when the trigger was actually created
Property CREATED As %TimeStamp [ SqlColumnNumber = 19, SqlFieldName = CREATED ];

/// Access Variable {2D1} is the table's extent
}
