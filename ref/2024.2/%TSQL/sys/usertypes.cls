/// Contains one row for each user-defined data type.
Class %TSQL.sys.usertypes Extends %Persistent [ Final, SqlRowIdName = usertype, System = 4 ]
{

Property name As %String [ Required ];

Property type As %String [ Required ];

Property ident As %TinyInt;

Property allownulls As %Boolean;

/// Physical length of data type
Property length As %Integer [ SqlComputeCode = {

Property uid As %String;

ClassMethod GetIRISDatatype(systype As %String, ByRef identity As %TinyInt, allownulls As %TinyInt) As %String [ Final, Language = objectscript ]
{
}

}
