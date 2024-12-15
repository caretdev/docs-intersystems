/// This class is used to define DeepSee Subject Areas.<br/>
/// Each subclass of this class defines an
/// active Subject Area. A Subject Area is analogous to an
/// SQL view; it is based on an actual DeepSee Cube data model
/// and can serve as the target of queries as if it were an
/// actual cube model.<br/>
/// A Subject Area cannot define additional dimensions or measures
/// but it can define:<br/>
/// <ul>
/// <li>What dimensions and measures can be used in queries.</li>
/// <li>What permissions are needed to query a cube</li>
/// <li>How the data within a cube should be filtered.</li>
/// <li>The default listing for this subject area.</li>
/// </ul>
Class %DeepSee.SubjectArea Extends (%RegisteredObject, %XML.Adaptor) [ CompileAfter = (%DeepSee.Model.SubjectArea.subjectArea, %DeepSee.Generator), System = 4 ]
{

/// This projection is used to keep track of when Subject areas are
/// compiled or deleted.
/// This XData definition defines the SubjectArea.
XData SubjectArea [ XMLNamespace = "http://www.intersystems.com/deepsee/subjectarea" ]
{
}

/// Process the model for this Subject Area and generate meta data.
ClassMethod %Generate() As %Status [ CodeMode = objectgenerator, Final, Internal ]
{
}

/// Return the logical name of the MDX cube defined by this subject area.
ClassMethod %GetCubeName() As %String [ CodeMode = objectgenerator, GenerateAfter = %Generate ]
{
}

/// Return number of facts in the base cube's fact table.
ClassMethod %GetFactCount() As %Integer [ CodeMode = objectgenerator, GenerateAfter = %Generate ]
{
}

/// Notification that a listing (drillthrough) query is about to be executed.<br/>
/// This is called immediately before a listing query is executed.
/// This is useful for cases where additional setup work is required before
/// a listing query can run.<br/>
/// <var>pSQL</var> is the listing query that will be executed.
ClassMethod %OnExecuteListing(pSQL As %String) As %Status [ CodeMode = objectgenerator, GenerateAfter = %Generate ]
{
}

/// Return name of the fact class used by the base cube.
ClassMethod %GetFactClass() As %String [ CodeMode = objectgenerator, GenerateAfter = %Generate ]
{
}

/// Return the caption of the subject area defined by this class.
/// If not defined, the subject area name is returned.
ClassMethod %GetCubeCaption() As %String [ CodeMode = objectgenerator, GenerateAfter = %Generate ]
{
}

/// For a given dimenions, hierarchy, and level return its localized caption.
ClassMethod %GetMemberCaption(pDimName As %String, pHierName As %String = "", pLevelName As %String = "", pPropName As %String = "") As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// For a given dimenions, hierarchy, and level return its localized caption.
ClassMethod %GetMemberDescription(pDimName As %String, pHierName As %String = "", pLevelName As %String = "", pPropName As %String = "") As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// Return the filter spec for this subject area.
ClassMethod %GetFilterSpec() As %String [ Final ]
{
}

/// This callback gives a SubjectArea a chance to programmatically define its filter spec.
ClassMethod %OnGetFilterSpec(pFilterSpec As %String) As %String
{
}

/// Return the name of the default listing for this SubjectArea, if any.
ClassMethod %GetDefaultListing() As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate ]
{
}

/// This callback gives a SubjectArea a chance to programmatically return the name
/// of the listing to use as its default listing.
/// This must be the name of a defined listing within the SubjectArea.
/// Return "" to use the pre-defined default listing.
ClassMethod %OnGetDefaultListing() As %String
{
}

/// Test if this cube supports drill through (listing) queries.
ClassMethod %CanDrillThrough() As %Boolean
{
}

/// Test whether this subject area is abstract or not.
ClassMethod %IsAbstract() As %Boolean [ CodeMode = objectgenerator, GenerateAfter = %Generate ]
{
}

/// Test whether this subject area is compound or not.
ClassMethod %IsCompound(Output pJoinList As %String) As %Boolean [ CodeMode = objectgenerator, GenerateAfter = %Generate ]
{
}

/// Return the (localized) caption for the %COUNT measure used by this cube.
/// Returns "" if this has not been overridden by the cube.
ClassMethod %GetCountCaption() As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// Return the logical name for the %COUNT measure used by this cube.
ClassMethod %GetCountName() As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// Return list of possible actions for this Subject Area.
/// This simply dispatches to the base cube's method.
ClassMethod %GetActionList(ByRef pActions As %List) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// Return the (localized) caption for a given listing within this cube.
ClassMethod %GetListingCaption(pListing As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// Return the (localized) description for a given listing within this cube.
ClassMethod %GetListingDescription(pListing As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// Return the (localized) caption for a given listing field within this cube.
ClassMethod %GetListingFieldCaption(pField As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// Return the (localized) description for a given listing field within this cube.
ClassMethod %GetListingFieldDescription(pField As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// For a pre-defined member within a given level in this cube, return its (localized) caption (display name).
ClassMethod %GetLevelMemberCaption(pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pName As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

/// This callback gives a Cube a chance to programmatically provide a set of
/// members for a computed dimension.<br/>
/// This simply dispatches to the base cube's method.
ClassMethod %OnGetComputedMembers(pDimName As %String, pHierName As %String, pLevelName As %String, ByRef pMemberList, pRollupKey As %String = "", ByRef pRange As %String = "") As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]
{
}

}
