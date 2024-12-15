/// Meta-data object for a DeepSee subjectArea.<br/>
Class %DeepSee.Model.ListingGroup.listingGroup Extends (node, %CSP.Portal.AbstractPortalModel) [ System = 3 ]
{

/// Name of the class where this model was defined
/// Only used for XML transport
Property className As %String(MAXLEN = 30000, XMLPROJECTION = "attribute");

/// Name of the cube(s) which can access listings defined in this group.<br/>
/// This may contain a csv list of cubes.
Property targetCubes As %DeepSee.Datatype.string(MAXLEN = 30000, XMLPROJECTION = "attribute");

/// This is used as the caption text when utilities display this listing group.
Property caption As %DeepSee.Datatype.string(MAXLEN = 250, XMLPROJECTION = "attribute");

/// The resource needed to view or edit this cube:<br/>
/// If defined and the current user holds the USE privilege on this resource, then
/// the user may view (run queries against) this item.<br/>
/// If defined and the current user holds the WRITE privilege on this resource, then
/// the user may modify this item.<br/>
Property resource As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// If defined, this will serve as the default resource for all listings
/// in this group. Resources defined in individual listings will override
/// this setting.
Property defaultResource As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Listings defined for this subject area.<br/>
Relationship listings As %DeepSee.Model.ListingGroup.listing(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = listingGroup ];

/// Validate this model for logical errors.
Method %Validate() As %Status
{
}

/// Serializes the current Registry structure into XML inside the
/// XData block in the relevant Registry class.
Method %SaveToClass(pClassName = "") As %Status [ Internal ]
{
}

/// Deserialize the XML from the Listings XData block into a listingGroup model object.
ClassMethod %LoadFromClass(pClassname As %String, Output pStatus As %Status) As %DeepSee.CubeManager.RegistryMap [ Internal ]
{
}

}
