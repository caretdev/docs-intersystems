/// OAuth2.Metadata is the base class for OAuth 2.0 client and server metadata classes.
/// The main function of this class is implement an appropriate method to output JSON.
Class OAuth2.Metadata Extends %RegisteredObject [ Abstract, System = 4 ]
{

/// Note that the WriteJSON method will only handle the property types currently used
/// by the OAuth2.Client.Metadata and OAuth2.Server.Metadata methods.
/// The ExportJSON method will need to be extended to support additional types as they are required.
Method ExportJSON() As %String [ CodeMode = generator, Internal ]
{
}

/// Note that the ImportJSON method will only handle the property types currently used
/// by the OAuth2.Client.Metadata and OAuth2.Server.Metadata methods.
/// The WriteJSON method will need to be extended to support additional types as they are required.
Method ImportJSON(obj As %DynamicAbstractObject) [ CodeMode = generator, Internal ]
{
}

/// Query to return defined name/value pairs for this set of metadata.
ClassMethod ListPropertiesExecute(ByRef qHandle As %Binary, id As %String) As %Status [ Internal ]
{
}

ClassMethod ListPropertiesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListServicesExecute ]
{
}

ClassMethod ListPropertiesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListServicesExecute ]
{
}

}
