/// Contains one row for each system-supplied and each user-defined data type.
Class %TSQL.sys.types Extends %Persistent [ SqlRowIdPrivate, StorageStrategy = TypesStorage, System = 4 ]
{

/// Data type name.
Property name As %String(MAXLEN = 60) [ Required, SqlColumnNumber = 4 ];

/// Physical length of data type
Property length As %Integer [ SqlColumnNumber = 3, SqlComputeCode = { n dtparam,return,type,val

/// User type ID
/// In Sybase this is a SMALLINT, but we'll have it a string because we do not have unique ID numbers for our types and classes.
Property usertype As %String(MAXLEN = 50) [ SqlColumnNumber = 2, SqlComputeCode = { s {*}={name}}, SqlComputed, Transient ];

}
