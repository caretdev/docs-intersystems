/// This file stores the descriptive information for all fields in a file for a FileMan managed database.
/// <p>Note: The FileMan toolset is available and fully supported in InterSystems IRIS for existing FileMan users.
/// InterSystems recommends against starting new development projects using FileMan.</p>
Class %FileMan.Field Extends %Persistent [ Deprecated, Owner = {_SYSTEM}, SqlRowIdPrivate, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Property CHARACTERISTICS As %String;

Property DESCRIPTION As list Of %String [ SqlListType = SUBNODE ];

Property NAME As %String;

Property NUMBER As %Numeric;

Relationship FILE As %FileMan.File [ Cardinality = parent, Inverse = FIELDS ];

}
