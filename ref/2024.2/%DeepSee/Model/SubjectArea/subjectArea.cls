/// Meta-data object for a DeepSee subjectArea.<br/>
Class %DeepSee.Model.SubjectArea.subjectArea Extends (node, %CSP.Portal.AbstractPortalModel) [ System = 3 ]
{

/// Name of the cube(s) this subject area is based on.<br/>
/// This may contain a csv list of cubes. If so, then this subjectArea is a "compound cube"
/// that forms the logical union of all the cubes in the list. The first cube is the
/// "primary" base cube.
Property baseCube As %DeepSee.Datatype.string(MAXLEN = 30000, XMLPROJECTION = "attribute");

/// If this is a "compound cube" then this is a csv list of zero or more shared dimension levels
/// that are used to "join" records between cubes when a query contains a reference to a non-shared
/// dimension.<br/>
/// Each level must include dimension, hierarchy, and level.
/// For example: "[DateOfSale].[H1].[MonthSold]"<br/>
/// This feature can have a serious performance impact and should be used with caution.
Property connectsBy As %DeepSee.Datatype.string(MAXLEN = 30000, XMLPROJECTION = "attribute");

/// This is used as the caption text when utilities display this subject area.
Property caption As %DeepSee.Datatype.string(MAXLEN = 250, XMLPROJECTION = "attribute");

/// The resource needed to view or edit this cube:<br/>
/// If defined and the current user holds the USE privilege on this resource, then
/// the user may view (run queries against) this item.<br/>
/// If defined and the current user holds the WRITE privilege on this resource, then
/// the user may modify this item.<br/>
Property resource As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// This is the user name of the owner of this subject area.<br/>
/// This is used for determining some privileges for this cube.
Property owner As %DeepSee.Datatype.string(MAXLEN = 250, XMLPROJECTION = "attribute");

/// Dimensions defined for this subject area.
Relationship dimensions As %DeepSee.Model.SubjectArea.dimension(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = subjectArea ];

/// Measures defined for this subject area.<br/>
Relationship measures As %DeepSee.Model.SubjectArea.measure(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = subjectArea ];

/// Listings defined for this subject area.<br/>
Relationship listings As %DeepSee.Model.SubjectArea.listing(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = subjectArea ];

/// Relationships defined for this subject area.
Relationship relationships As %DeepSee.Model.SubjectArea.relationship(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = subjectArea ];

/// Optional. Name of the default measure for this subject area.
/// This should simple be the name of a measure within the base cube.
/// This measure is used when no other measure is explicitly in context.
Property defaultMeasure As %DeepSee.Datatype.entityName(XMLPROJECTION = "attribute");

/// Optional. Specification of the default member for this subject area.
/// This is used in queries that do not specify enough axis
/// information to be executed.<br/>
/// This should contain an MDX expression:
/// e.g., "[Product].[All Products]"
Property defaultMember As %String(MAXLEN = 200, XMLPROJECTION = "attribute");

/// Optional. This defines a filter applied to this subject area.<br/>
/// This should contain an MDX expression:
/// e.g., "[Product].[Toaster]"
Property filterSpec As %String(MAXLEN = 10000, XMLPROJECTION = "attribute");

/// Calculated members defined for this subject area.<br/>
Relationship calculatedMembers As %DeepSee.Model.SubjectArea.calculatedMember(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = subjectArea ];

/// Named sets defined for this subject area.<br/>
Relationship namedSets As %DeepSee.Model.SubjectArea.namedSet(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = subjectArea ];

/// Optional. If specified, this is the name of the listing
/// (in the <property>listing</property> list) that
/// is used as the default RETURN clause for DRILLTHROUGH
/// queries against this cube.
Property defaultListing As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Optional. If defined, this is used as the (localized) display value for
/// the built-in %Count measure.
Property countMeasureCaption As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");

/// Optional. If defined, this is used as the logical name for
/// the built-in %Count measure.
Property countMeasureName As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");

/// This setting controls whether the subject area will accept the use of Listing Groups
/// to define auxiliary listings.
Property disableListingGroups As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Validate this model for logical errors.
Method %Validate() As %Status
{
}

}
