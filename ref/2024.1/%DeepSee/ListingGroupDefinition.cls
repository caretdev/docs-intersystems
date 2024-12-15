/// Subclasses of this class are used to define a DeepSee
/// "listing group" that contain auxiliary detail listings.<br/>
/// The Listings XDATA block defines the contents of a DeepSee listing group
/// as an XML document.
Class %DeepSee.ListingGroupDefinition Extends (%RegisteredObject, %XML.Adaptor) [ Abstract, CompileAfter = (%DeepSee.Model.ListingGroup.listingGroup, %DeepSee.Generator), System = 4 ]
{

/// This projection is used to keep track of when Cubes are
/// compiled or deleted.
/// This XData section provides the definition of the cube.
XData Listings [ XMLNamespace = "http://www.intersystems.com/deepsee/listinggroup" ]
{
}

/// Process the model for this Subject Area and generate meta data.
ClassMethod %Generate() As %Status [ CodeMode = objectgenerator, Final, Internal ]
{
}

/// Return the logical name of the MDX cube defined by this subject area.
ClassMethod %GetListingGroupName() As %String [ CodeMode = objectgenerator, GenerateAfter = %Generate ]
{
}

/// Return the (localized) caption for a given listing within this listing group.
ClassMethod %GetListingCaption(pListing As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// Return the (localized) description for a given listing within this listing group.
ClassMethod %GetListingDescription(pListing As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

}
