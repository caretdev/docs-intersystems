/// Meta-data object for a DeepSee cube.<br/>
Class %DeepSee.Model.cube Extends (node, %CSP.Portal.AbstractPortalModel) [ System = 3 ]
{

/// Optional. If true, this is the name of another, pre-existing, cube that this cube inherits from.<br/>
/// A cube can only inherit from one base cube; there is no possibility of multiple-inheritance.
Property inheritsFrom As %DeepSee.Datatype.entityName(XMLPROJECTION = "attribute");

/// Optional. If true, then this cube definition is an "abstract" cube. It can be used as
/// a base cube for other cubes, but it cannot be built (loaded with data) or queried against.
Property abstract As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Name of class that provides the original data.<br/>
/// This should either be the name of persistent class or a subclass
/// of <class>%DeepSee.DataConnector</class>.<br/>
/// This is used to generate code that updates the cube from
/// the original data.<br/>
/// It is also used to enable drill-through.
Property sourceClass As %DeepSee.Datatype.className(XMLPROJECTION = "attribute") [ Required ];

/// If a version number is present, on compile this class will generate a new class represetning this version of the cube
/// and compile that. This new version can be built while the previous version is still active. Once activated, a new version
/// will be queried.
Property version As %Integer(XMLPROJECTION = "attribute");

/// Optional. Name of a DeepSee KPI class that provides Dashboard Actions for this cube.<br/>
/// If provided, then a dashboard based on this cube will be able to invoke the actions
/// defined within the given KPI class.
Property actionClass As %DeepSee.Datatype.className(XMLPROJECTION = "attribute");

/// Optional. The resource needed to view or edit this cube:<br/>
/// If defined and the current user holds the USE privilege on this resource, then
/// the user may view (run queries against) this item.<br/>
/// If defined and the current user holds the WRITE privilege on this resource, then
/// the user may modify this item.<br/>
Property resource As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// This is the user name of the owner of this cube.<br/>
/// This is used for determining some privileges for this cube.
Property owner As %DeepSee.Datatype.string(MAXLEN = 250, XMLPROJECTION = "attribute");

/// Optional. If specified, this is the ORDER BY clause applied to the SQL statement
/// used when this cube is initially built (by %BuildCube). It must contain a valid
/// ORDER BY clause, e.g., "DateOfBirth"
/// <br/>
/// This makes it possible to apply an ordering to the initial facts loaded into a cube,
/// which may be useful in some cases.<br/>
/// This property is ignored by cubes that use data connectors.<br/>
/// If this property is defined, then BuildCube will not use parallel processing.
/// This ordering is not applied to incremental updates to the cube.
Property initialBuildOrder As %DeepSee.Datatype.string(MAXLEN = 2000, XMLPROJECTION = "attribute");

/// Optional. If specified, this is placed in the WHERE clause applied to the SQL statement
/// used when this cube is initially built (by %BuildCube). It must contain a valid
/// SQL expression, e.g., "State='WY'"
/// <br/>
/// This makes it possible to apply a restriction to the facts loaded into a cube,
/// which may be useful in some cases.<br/>
/// This property is also used in the SQL queries used to update cubes.
/// This property is ignored by cubes that use data connectors.<br/>
Property buildRestriction As %DeepSee.Datatype.string(MAXLEN = 2000, XMLPROJECTION = "attribute");

/// This is used as the caption text when utilities display this cube.
/// This overrides the displayName property, if it is used.
Property caption As %DeepSee.Datatype.string(MAXLEN = 250, XMLPROJECTION = "attribute");

/// This flag controls how fact numbers are assigned. If true, the compiler will expect
/// that the factNumber is set for measures, levels, and relationships.
Property namedFactNums As %Boolean(XMLPROJECTION = "attribute");

/// Dimensions defined for this cube.
Relationship dimensions As %DeepSee.Model.dimension(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = cube ];

/// Measures defined for this cube.<br/>
Relationship measures As %DeepSee.Model.measure(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = cube ];

/// Relationships defined for this cube.
Relationship relationships As %DeepSee.Model.relationship(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = cube ];

/// Additional indices defined for this cube.<br/>
/// This provides a way to add extra indices to the fact table for the cube.
Relationship indices As %DeepSee.Model.index(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = cube ];

/// Additional expressions defined for this cube.<br/>
/// This provides a way to compute a value that can be used in one or more source expressions when building this cube.
Relationship expressions As %DeepSee.Model.expression(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = cube ];

/// Deprecated.
Property defaultMeasure As %DeepSee.Datatype.entityName(XMLPROJECTION = "attribute") [ Deprecated ];

/// Deprecated.
Property defaultMember As %String(MAXLEN = 200, XMLPROJECTION = "attribute") [ Deprecated ];

/// Optional. If defined, this is used as the display value for
/// any members of any level within this cube whose value is null (missing) and has
/// not has its local <property>nullReplacement</property> property set.
Property nullReplacement As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");

/// Optional. If defined, this is used as the logical name for
/// the built-in %Count measure.
Property countMeasureName As %DeepSee.Datatype.string(XMLPROJECTION = "attribute") [ InitialExpression = "%COUNT" ];

/// Optional. If defined, this is used as the (localized) display value for
/// the built-in %Count measure.
Property countMeasureCaption As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");

/// Calculated members defined for this cube.<br/>
Relationship calculatedMembers As %DeepSee.Model.calculatedMember(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = cube ];

/// Named sets defined for this cube.<br/>
Relationship namedSets As %DeepSee.Model.namedSet(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = cube ];

/// List of available cube time functions.
/// Available when cube is compiled.
Property %timeFunctions As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// Specifies the size of the caching buckets used for this cube.<br/>
/// The bucket size is a number of data blocks, each containing 64000 facts. These
/// are used to cache intermediate results by queries executed against this cube.
/// For example, setting this to 10 would creates caching buckets that each contain 640000 facts.<br/>
/// In some cases, you may want to increase this value if you expect to have a large number of facts
/// and do not expect many updates to older values within the cube.<br/>
/// If you change this value, you must be sure to delete all cached results for this cube.
/// You can do this using the %KillCache method of the cube definition class.<br/>
/// The default value is 8.
Property bucketSize As %Integer(MINVAL = 1, XMLPROJECTION = "attribute") [ InitialExpression = 8 ];

/// Defines how to build indices for this cube.<br/>
/// If true, DeepSee builds its indices using local memory which is a faster
/// means of doing this. For cubes with many indices (dimensions and measures) or dimensions with
/// a *large* number of members, the set of index values might not fit in local memory, leading
/// to a <STORE> error when the cube is built. If this occurs, set this property to false to
/// use a slower, non-local-memory algorithm (the default).
Property bitmapChunkInMemory As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Optional. If specified, this is the name of the listing
/// (in the <property>listing</property> list) that
/// is used as the default RETURN clause for DRILLTHROUGH
/// queries against this cube.
Property defaultListing As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Listings defined for this cube.<br/>
/// If no listings are defined, then the Show Listing feature of the Analyzer will be disabled.
Relationship listings As %DeepSee.Model.listing(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = cube ];

/// Listing fields defined for this cube.<br/>
Relationship listingFields As %DeepSee.Model.listingField(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = cube ];

/// Specify if certain aggregates and counts should be pre-computed when this cube is built.
/// If set to 0, then no precomputation is done. If set 1, counts and aggregates based on 1 level
/// are computed. If set to 2, then combinations of 2 levels are used.<br/>
/// For small cubes (less than 1 million facts) this does not have a very big impact. For larger
/// cubes this can help the initial performance of certain queries, though over time, the cell cache
/// will naturally build up the same set of values that would have been precomputed.<br/>
/// The default value is 0.
Property precompute As %Integer(MAXVAL = 2, MINVAL = 0, XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// If defined, this specifies the maximum number of facts that are initially loaded into this cube
/// by the %BuildCube method.<br/>
/// Note that this does exactly what it says; there may be <i>less</i> than this number loaded. For
/// example, the %OnProcessFact method may be used to skip some records.<br/>
/// This is intended as a diagnostic aid when a cube is initially developed.
Property maxFacts As %Integer(MINVAL = 0, XMLPROJECTION = "attribute");

/// This setting controls whether the cube will accept the use of Listing Groups
/// to define auxiliary listings.
Property disableListingGroups As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Enable use of the special MDX %SQLRESTRICT clause with this cube.
Property enableSqlRestrict As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Build the list of available time functions.
Method %ProcessFunctions() As %Status
{
}

/// Validate this cube model for logical errors.
Method %Validate() As %Status
{
}

/// Resolve inheritance for this cube; combine its model with that of its base cube, if present.
/// JSL4414 : Make this method not internal
Method %ResolveInheritance() As %Status
{
}

/// Resolve any shared dimensions within this cube.
/// Look for shared dimensions and merge their definition into this cube's.
/// There can be no local override of a shared dimension.<br/>
/// Return a list of shared dimensions organized by target cube.
Method %ResolveSharedDimensions(Output pConnections) As %Status [ Internal ]
{
}

/// JSL4414 -- new method
/// Not supported for direct use by customers.
Method %ApplyOverridesForDocumatic()
{
}

/// Produce the structures needed to emit the appropriate JSON and export this item to AtScale
Method %AtScaleExport(pStatus As %Status, ByRef pRefIndex As %DynamicAbstractObject = "") As %DynamicAbstractObject
{
}

/// This Takes the information gathered into the <var>pAuxiliary</var> reference index during
/// the model search and adds the custom SQL and column information to the target dataset.
Method %AtScaleAddCustomSQLToDataset(pDataset, pAuxiliary) As %Status
{
}

/// This Takes the information gathered into the <var>pAuxiliary</var> reference index during
/// the model search and adds the custom SQL and column information to the target dataset.
Method %AtScaleAddColumnsToCalendarDataset(pDataset, pAuxiliary) As %Status
{
}

}
