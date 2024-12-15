Class %Dictionary.CompiledXData Extends (%Persistent, %Dictionary.CompiledXDataQuery) [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.CompiledClass [ Cardinality = parent, Inverse = XDatas ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// The data stream.
Property Data As %Stream.TmpCharacter;

/// True if this XDATA is deprecated.
Property Deprecated As %Boolean;

/// Specifies a description of the XData.
Property Description As %RawString;

/// If true, then do not display this item in automatic documentation.
Property Internal As %Boolean;

/// KeywordError
Property KeywordError As %Boolean;

/// KeywordModified
Property KeywordModified As %Boolean;

/// Mime type of XData block.
Property MimeType As %RawString;

/// The name of the xData block.
Property Name As %Dictionary.Identifier [ Required ];

/// Origin
Property Origin As %RawString;

/// The schema definition of the data.
Property SchemaSpec As %RawString;

/// SequenceNumber
Property SequenceNumber As %Integer;

/// The default XML NameSpace for the XDATA.
Property XMLNamespace As %RawString;

Parameter SQLENABLED = 1;

Trigger OnInsertUpdate [ Event = INSERT/UPDATE ]
{
}

Trigger OnDelete [ Event = DELETE ]
{
}

Method %OnNew(name As %String) As %Status [ Private ]
{
}

/// The object representation of this XData block after correlating the XML and importing it
Property Object As %RegisteredObject [ Calculated ];

Method ObjectGet() As %RegisteredObject
{
}

ClassMethod %LockId(id As %String, shared As %Boolean = 0, timeout As %Integer) As %Status
{
}

ClassMethod %UnlockId(id As %String, shared As %Boolean = 0, immediate As %Boolean = 0) As %Status
{
}

ClassMethod %Exists(oid As %ObjectIdentity) As %Boolean
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

Method DeprecatedSet(value As %String = "") As %Status
{
}

Method DeprecatedReset()
{
}

Method DeprecatedIsDefined() As %Boolean
{
}

Method DescriptionSet(value As %String = "") As %Status
{
}

Method DescriptionReset()
{
}

Method DescriptionIsDefined() As %Boolean
{
}

Method InternalSet(value As %String = "") As %Status
{
}

Method InternalReset()
{
}

Method InternalIsDefined() As %Boolean
{
}

Method MimeTypeSet(value As %String = "") As %Status
{
}

Method MimeTypeReset()
{
}

Method MimeTypeIsDefined() As %Boolean
{
}

Method NameSet(value As %String = "") As %Status
{
}

Method NameReset()
{
}

Method NameIsDefined() As %Boolean
{
}

Method SchemaSpecSet(value As %String = "") As %Status
{
}

Method SchemaSpecReset()
{
}

Method SchemaSpecIsDefined() As %Boolean
{
}

Method SequenceNumberSet(value As %String = "") As %Status
{
}

Method SequenceNumberReset()
{
}

Method SequenceNumberIsDefined() As %Boolean
{
}

Method XMLNamespaceSet(value As %String = "") As %Status
{
}

Method XMLNamespaceReset()
{
}

Method XMLNamespaceIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
