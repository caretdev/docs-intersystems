/// This class contains APIs for managing Listing Groups.
/// A listing group porvides the ability to define DeepSee listings
/// outside of the cube and subject area definitions.
Class %DeepSee.ListingGroup Extends %RegisteredObject [ System = 4 ]
{

/// Returns a list of listing groups currently stored. The return structure is <br>
/// <var>pList(GroupID,counter)</var> = $LB(GroupID,Name,Caption,CubeList,Class).
/// If the setting <var>pCompiled</var> = 1 is used, only listing groups that have successfully
/// been compiled will be returned. Otherwise, all models currently saved will be returned.
ClassMethod %GetListingGroups(Output pList, pCompiled = 1, pRequestCube = "*")
{
}

/// Look up the storage class for a given listing group. The parameter
/// <var>pCompiled</var> = 1 indicates only the available metadata should be returned.
/// <var>pCompiled</var> = 0 returns all listing definition classes defined in the namespace.
ClassMethod %GetClassName(pListingGroupName = "", pCompiled = 1) As %String
{
}

/// Utility method to delete a listing group definition. This will delete both compiled
/// and uncompiled definitions.
ClassMethod %DeleteListingGroup(pListingGroup) As %Status [ Internal ]
{
}

/// Utility method for saving a listing group object to its class.
ClassMethod %SaveListingGroup(pGroupObject As %DeepSee.Model.ListingGroup.listingGroup, pClassName = "") As %Status
{
}

ClassMethod %ListingGroupExists(pListGroupName = "", pCompiled = 1) As %Boolean
{
}

/// Serialize the listing group model stored in the class <var>pClassName</var>.
ClassMethod %GetModel(pClassName = "", Output pStatus As %Status) As %DeepSee.Model.ListingGroup.listingGroup [ Internal ]
{
}

/// Return an array of all currently defined DeepSee ListingGroups
/// in a format that can be used by a finderDialog.
ClassMethod %GetListingGroupArray(ByRef pParameters, Output pMetaData, Output %pData) As %Status [ Final, Internal ]
{
}

}
