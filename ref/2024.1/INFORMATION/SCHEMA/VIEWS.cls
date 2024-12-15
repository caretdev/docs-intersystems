/// Returns one row for each view in the current namespace for which the current user has privileges
Class INFORMATION.SCHEMA.VIEWS Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = VIEWS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 20 ];

Property TableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 21 ];

/// Is the table a system table (1 or 0)
Property SystemView As %Integer [ Calculated, Internal, Private, Required, SqlColumnNumber = 22, SqlComputeCode = { set {*}=$s($e({TABLE_SCHEMA})="%"||({TABLE_SCHEMA}="INFORMATION_SCHEMA"):1,1:0) }, SqlComputed ];

/// Table qualifier - always NULL in InterSystems IRIS.
Property TABLECATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = TABLE_CATALOG ];

/// Name of schema that contains the table.
Property TABLESCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 3, SqlFieldName = TABLE_SCHEMA ];

/// Name of the view.
Property TABLENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = TABLE_NAME ];

/// The view's query expression.  If longer than 1048576 characters, only the first 1048573 characters of the query are returned followed by "...".
Property VIEWDEFINITION As %String(MAXLEN = 1048576) [ SqlColumnNumber = 5, SqlFieldName = VIEW_DEFINITION ];

/// The view's check option setting.
/// <br>Values of CHECK_OPTION have the following meanings:
/// <br><ul>
/// 	<li>CASCADED - The view has the CASCADED check option specified.</li>
/// 	<li>LOCAL - The view has the LOCAL check option specified.</li>
/// 	<li>NONE - The view has no check option specified.</li>
/// </ul>
Property CHECKOPTION As %String(MAXLEN = 8, VALUELIST = ",CASCADED,LOCAL,NONE") [ Calculated, SqlColumnNumber = 6, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = CHECK_OPTION ];

/// Returns YES if the view is updatable, otherwise NO.
Property ISUPDATABLE As %String(MAXLEN = 3) [ SqlColumnNumber = 7, SqlFieldName = IS_UPDATABLE ];

/// Reserved for future use.  For InterSystems IRIS, IS_TRIGGER_UPDATABLE is always NULL.
Property ISTRIGGERUPDATABLE As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 8, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = IS_TRIGGER_UPDATABLE ];

/// Reserved for future use.  For InterSystems IRIS, IS_TRIGGER_DELETABLE is always NULL.
Property ISTRIGGERDELETABLE As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 9, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = IS_TRIGGER_DELETABLE ];

/// Reserved for future use.  For InterSystems IRIS, IS_TRIGGER_INSERTABLE_INTO is always NULL.
Property ISTRIGGERINSERTABLEINTO As %String(MAXLEN = 3) [ Calculated, SqlColumnNumber = 10, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = IS_TRIGGER_INSERTABLE_INTO ];

/// Description for the class that projects the view definition, or if the view is projected from a class query, the class query description.
Property DESCRIPTION As %String(MAXLEN = 1024) [ Calculated, SqlColumnNumber = 11, SqlComputeCode = {

/// Timestamp for when the class projecting the view definition was created.
Property DATECREATED As %TimeStamp [ Calculated, SqlColumnNumber = 12, SqlComputeCode = {

/// Timestamp for when the class projecting the view definition was last modified.
Property DATEMODIFIED As %TimeStamp [ Calculated, SqlColumnNumber = 13, SqlComputeCode = {

/// Name of the class that projected the view definition
Property Classname As %String(MAXLEN = 254) [ Calculated, SqlColumnNumber = 14, SqlComputeCode = { set {*}=$lg($g(^rINDEXSQL("rv",$zconvert({TABLE_SCHEMA},"u"),$zconvert({TABLE_NAME},"u"))),1) }, SqlComputed, SqlFieldName = CLASSNAME ];

/// View's owner
Property Owner As %String(MAXLEN = 254) [ Calculated, SqlColumnNumber = 15, SqlComputeCode = { set {*}=$lg($g(^rINDEXSQL("rv",$zconvert({TABLE_SCHEMA},"u"),$zconvert({TABLE_NAME},"u"))),6) }, SqlComputed, SqlFieldName = OWNER ];

/// If projected from a class query, name of the query
Property Queryname As %String(MAXLEN = 254) [ Calculated, SqlColumnNumber = 16, SqlComputeCode = {

}
