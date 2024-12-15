/// The class responsible for organizing the information about the registered state of all cubes on the system.
Class %DeepSee.CubeManager.RegistryMap Extends (%RegisteredObject, %XML.Adaptor, %JSON.Adaptor) [ System = 4 ]
{

/// The collection of groups that are defined in the overall sysem registry map
Relationship Groups As %DeepSee.CubeManager.RegistryMapGroup [ Cardinality = many, Inverse = Map ];

/// The hour of the acceptable build window for the day,
/// used to construct the timestamp that defines the window when builds may be started.
Property BuildStartHour As %String(VALUELIST = ",00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23") [ InitialExpression = "21" ];

/// The quater hour of the acceptable build window for the day,
/// used to construct the timestamp that defines the window when builds may be started.
Property BuildStartMinute As %String(VALUELIST = ",00,15,30,45") [ InitialExpression = "00" ];

/// <var>Disabled</var> = true will suspend the automated Build and Synch tasks for this namespace.
Property Disabled As %ZEN.Datatype.boolean;

/// Controls whether cubes within a group are synchronized based on the relationship dependency (the default)
/// or if it synchronizes solely based on schedule.
Property IndependentSync As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If this property is set to 1, the updater tasks will not job off the group update code
/// and will instead run all updates in a single process.
Property SerialUpdates As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// When this is loaded into memory, this stores the name of the class
/// the map was loaded from.
Property StorageClass As %String(XMLPROJECTION = "NONE");

/// Description of this registry definition.
Property Description As %String(MAXLEN = 2500);

/// This is a flag that can be set in the stored registry to prevent users from being able to adjust the
/// Disabled setting and prevents builds from this item in the registry.
Property UserUpdatesLocked As %ZEN.Datatype.boolean [ Internal ];

/// Diagnostic method, prints information about the current map.
Method Print()
{
}

/// Converts the current map into an array. If this is the full
/// {registered}U{unregistered} map, the first three arrays will match those returned using the call<br>
/// <method>%DeepSee.CubeManager.Utils.GetCubeGroups</method>(.pGroups,.pCubes,.pBuildOrders)<br>
/// This method also returns a special lookup index which can be used to quickly reference the group or
/// cube objects contained in the current map object.
/// <example>
/// Set CubeName = "HOLEFOODS"
/// Set Map = ##class(%DeepSee.CubeManager.Utils).BuildRegistryMap()
/// Do Map.ToArray(.Groups,.Cubes,.BuildOrders,.Lookup)
/// Set GroupIdx = $LG(Lookup("cubes",CubeName),1)
/// Set CubeIdx = $LG(Lookup("cubes",CubeName),2)
/// Set Cube = Map.Groups.GetAt(GroupIdx).Cubes.GetAt(CubeIdx)
/// </example>
Method ToArray(ByRef pGroups, ByRef pCubes, ByRef pBuildOrders, ByRef pLookup) As %Status
{
}

/// Definition for the table view of the overall cube list,
/// as used by the Cube Registry page
/// This does the actual work of building the rows of the
/// Cube Registry table view.
ClassMethod RegistryMapTableViewExecute(ByRef pResults As %Binary, pSearchKey As %String = "") As %Status [ Internal ]
{
}

/// Fetch method to retrieve a given row from the Cube Registry
/// table representation.
ClassMethod RegistryMapTableViewFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = RegistryMapTableViewExecute ]
{
}

ClassMethod RegistryMapTableViewClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = RegistryMapTableViewExecute ]
{
}

/// Serializes the current Registry structure into XML inside the
/// XData block in the relevant Registry class.
Method SaveToClass(pClassName = "") As %Status
{
}

/// Deserialize the XML from the Registry XData block into a RegistryMap model.
ClassMethod LoadFromClass(pClassname As %String, Output pStatus As %Status) As %DeepSee.CubeManager.RegistryMap
{
}

/// Return the current build time in hh:mm:ss format.
Method CreateMapTimeStamp() As %String
{
}

/// Perform validation on the Map object to determine if it is ready for save.
Method Validate() As %Status
{
}

}
