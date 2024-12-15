/// Datatype class for storing vector content, such as embeddings, in the native $vector format.
/// See also the TO_VECTOR() SQL function to convert user input to the VECTOR datatype
Class %Library.Vector Extends %DataType [ SqlCategory = VECTOR, System = 1 ]
{

/// The datatype of the elements stored in the vector.
/// Default to FLOAT (SQL type, corresponds to 'xf32' in ObjectScript), a significantly more storage-conscious option for Vector Search.
Parameter DATATYPE [ Constraint = ",DOUBLE,DECIMAL,FLOAT,INT,INTEGER,TIMESTAMP,VARCHAR," ] = "FLOAT";

/// The number of elements the vector can contain.
Parameter LEN As INTEGER;

/// The number of elements the vector can contain.
Parameter STORAGEDEFAULT As STRING = "GLOBALNODE";

ClassMethod IsValid(%val As %Vector) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

ClassMethod Normalize(%val As %Vector) As %Vector [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// DisplayToLogical - If this is passed a dynamic array e.g.
/// 'Set dynArray=[1,2,3,4]' then detect this with $isobject(%val)
/// and then if it is an oref then test if it is a dynamic array
/// and if so then walk this turning it into a vector so
///  we can support JSON and dynamic arrays.
///
ClassMethod DisplayToLogical(%val As %String) As %Vector [ CodeMode = generator, ServerOnly = 1 ]
{
}

ClassMethod LogicalToDisplay(%val As %Vector) As %String
{
}

ClassMethod LogicalToOdbc(%val As %Vector) As %String [ ServerOnly = 1 ]
{
}

ClassMethod OdbcToLogical(%val As %String) As %Vector [ CodeMode = generator, ServerOnly = 1 ]
{
}

ClassMethod HandleConversionError(ex As %RawString, conversionInput As %String) [ Internal, PublicList = SQLCODE ]
{
}

ClassMethod CalculateODBCLength(datatype As %String = "FLOAT", len As %Integer = "") [ Internal ]
{
}

}
