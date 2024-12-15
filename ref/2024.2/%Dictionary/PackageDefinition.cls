/// This class represents a specific <i>package</i> description contained within the
/// <i>Class Dictionary.</i>
Class %Dictionary.PackageDefinition Extends (%Persistent, %Dictionary.PackageDefinitionQuery) [ Inheritance = right, StorageStrategy = custom, System = 2 ]
{

/// A string containing the name of the package.
Property Name As %RawString;

/// A string containing the client name for the package.
Property ClientName As %RawString;

/// A string containing the description of the package.
Property Description As %RawString;

/// A string containing the global prefix of the package, used for data, id, and index locations.
Property GlobalPrefix As %RawString;

/// A string containing the Owner's name of the package.
Property OwnerName As %RawString;

/// A string containing the routine prefix of the package.
Property RtnPrefix As %RawString;

/// A string containing the SQL name of the package.
Property SQLName As %RawString;

Property list As %ListOfDataTypes [ Transient ];

Method %OnNew(initvalue As %String) As %Status [ Private ]
{
}

Method %LoadData(id As %String) As %Status [ Private ]
{
}

Method %SaveData(id As %String) As %Status [ Private ]
{
}

ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private ]
{
}

Method %OnValidateObject() As %Status [ Private ]
{
}

ClassMethod GetPackageList() As %ListOfDataTypes
{
}

}
