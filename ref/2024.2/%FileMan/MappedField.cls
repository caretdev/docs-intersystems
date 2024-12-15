/// This class stored information about the mapping of a FileMan field to a property
/// <p>Note: The FileMan toolset is available and fully supported in InterSystems IRIS for existing FileMan users.
/// InterSystems recommends against starting new development projects using FileMan.</p>
Class %FileMan.MappedField Extends %Persistent [ Deprecated, Final, Owner = {_SYSTEM}, SqlRowIdPrivate, System = 4 ]
{

/// The FileMan Field name
Property FMFieldName As %RawString [ Required ];

/// The FileMan Field number
Property FieldNumber As %RawString [ Required ];

/// The Property name the field maps to
Property PropertyName As %RawString [ Required ];

/// The Sql Field name the field maps to
Property SqlFieldName As %RawString [ Required ];

/// Datatype the field mapped to
Property Datatype As %RawString [ Required ];

Relationship MappedFilePackage As %FileMan.MappedFilePackage [ Cardinality = parent, Inverse = MappedFields ];

}
