/// /// Representation of a subject area within the registry map
Class %DeepSee.CubeManager.RegistryMapSubjectArea Extends (%RegisteredObject, %XML.Adaptor, %JSON.Adaptor) [ System = 4 ]
{

Relationship BaseCube As %DeepSee.CubeManager.RegistryMapCube [ Cardinality = parent, Inverse = SubjectAreas ];

/// Normalized internal storage key for the subject area
Property SAName As %ZEN.Datatype.string;

/// Display name for the subject area
Property SADisplayName As %ZEN.Datatype.string(%JSONINCLUDE = "OUTPUTONLY") [ Calculated ];

/// Flag do denote if this is a compound cube
Property IsCompound As %ZEN.Datatype.boolean(%JSONINCLUDE = "OUTPUTONLY") [ Calculated ];

/// Last modification date of this subject area definition
Property LastModDate As %String(%JSONINCLUDE = "OUTPUTONLY", XMLPROJECTION = "NONE") [ Calculated ];

Method SADisplayNameGet() As %String
{
}

Method IsCompoundGet() As %String
{
}

Method LastModDateGet() As %String
{
}

}
