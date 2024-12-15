/// This class is used by CMQL and other MV engines to
/// determine the make up of a class that describes metadata
/// for any particular file that is projected in to the
/// file space.
///
Class %MV.EnumClass Extends %RegisteredObject [ Final, ServerOnly = 1, System = 4 ]
{

/// Returns all information regarding the indexes described by a particuler MV class in a string serialized form that is usable by the CMQL parser
///
ClassMethod Indexes(className As %String, includeNamespace As %Boolean) As %String
{
}

}
