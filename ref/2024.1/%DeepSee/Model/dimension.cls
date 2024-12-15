/// Meta-data for a dimension within a DeepSee cube.
/// Subclasses of this class are used to implement specific
/// types of dimension.
Class %DeepSee.Model.dimension Extends node [ System = 3 ]
{

/// Cube that this dimension belongs to.
Relationship cube As %DeepSee.Model.cube(XMLPROJECTION = "none") [ Cardinality = one, Inverse = dimensions ];

/// Optional. If true, this is the name of another, pre-existing, cube that this
/// dimension shares from. This means that the other cube has a dimension of the same name
/// and that the dimensional tables of the other cube are used to track members of the dimension
/// in *this* cube.
Property sharesFrom As %DeepSee.Datatype.entityName(XMLPROJECTION = "attribute");

/// Indicates whether this dimension has an "All" level.<br/>
/// The default is true.
Property hasAll As %Library.Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// Optional. Specifies the name used for the All level for this dimension.
/// If not provided, then "All" + dimension name is used.
Property allCaption As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");

/// Optional. Specifies the localized name used for the All level for this dimension.
/// If defined, this is the text displayed by DeepSee applications,
/// otherwise the <property>allCaption</property> is used.
Property allDisplayName As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");

/// Name of the property in the source data that provides the
/// value for this element.<br/>
/// If specified, this is used as a default value for any
/// level within this dimension that does not explicitly define
/// a sourceProperty.<br/>
/// For time dimensions, this property must be defined.<br/>
/// Using dot syntax, it is possible to refer to a property within
/// a related class, for example "City.Name" or "City.State.Name".
Property sourceProperty As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");

/// Optional expression used to get the value of this member.<br/>
/// This can refer to properties of the source table using the
/// syntax: "%source.Property".
Property sourceExpression As %ZEN.Datatype.expression(LANGUAGE = "OBJECTSCRIPT", XMLPROJECTION = "attribute");

/// For shared dimensions, this is used to track a local override of this property on the
/// sharing side.
Property localSourceProperty As %DeepSee.Datatype.string(XMLPROJECTION = "none") [ Internal ];

/// For shared dimensions, this is used to track a local override of this property on the
/// sharing side.
Property localSourceExpression As %ZEN.Datatype.expression(LANGUAGE = "OBJECTSCRIPT", XMLPROJECTION = "none") [ Internal ];

/// Specifies what type of dimension this is.<br/>
/// The type can be one of the following:
/// <ul>
/// <li>"measures" - reserved.</li>
/// <li>"data" - this dimension is based on data values supplied from a source property or expression.
/// One or more dimension tables are generated to hold the set of possible values.</li>
/// <li>"time" - this dimension is based on time values. No dimension tables are generated, instead
/// the hierarchy of time classes are used to process the values for this dimension.</li>
/// <li>"age" - similar to "time" except that
/// the hierarchy of age classes are used to process the values for this dimension.</li>
/// <li>"computed" - a computed dimension that uses a special dimension class (<property>dimensionClass</property>) to process its values.</li>
/// <li>"iKnow" - a dimension that makes use of text processed by the iKnow Smart Indexing API. This must be linked to
/// an "iKnow" measure (<property>iKnowMeasure</property>) which supplies the values for this dimension.</li>
/// </ul>
/// If not specified, then the type will be set to "data".<br/>
Property type As %DeepSee.Datatype.string(VALUELIST = ",measures,data,time,age,computed,iKnow", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "data" ];

/// Specifies which calendar is to be used if this is a time dimension
Property calendar As %DeepSee.Datatype.string(VALUELIST = ",gregorian,partial,hijriTabular,hijriObserved", XMLPROJECTION = "ATTRIBUTE");

/// Optional. For "computed" dimensions, this is the name of the class that provides the dimension
/// computation logic. This is an advanced feature that requires some expertise.<br/>
/// If the package name is omitted, then the "%DeepSee.ComputedDimension" package is used.
Property dimensionClass As %DeepSee.Datatype.string(XMLPROJECTION = "attribute") [ Internal ];

/// Optional. For "iKnow" dimensions, this is the name of the "iKnow" measure that provides the
/// data for this dimension.
Property iKnowMeasure As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");

/// Optional. For "iKnow" dimensions, this provides a way to define the specific way in which
/// iKnow works with this dimension.
Property iKnowType As %DeepSee.Datatype.string(VALUELIST = ",entity,dictionary", XMLPROJECTION = "attribute");

/// Set of hierarchies defined for this dimension.<br/>
/// Via a set of levels, a hierarchy defines a way in which this dimension can roll up.
Relationship hierarchies As %DeepSee.Model.hierarchy(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = dimension ];

/// If true, this dimension is hidden. That is, it will not be listed among the
/// cube's members within the various DeepSee utilities.<br/>
/// It can still be used within MDX queries and expressions.
Property hidden As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// If "true", then always display this dimension's hierarchies within the Analyzer.
/// If "false", then never display hierarchies. If "default", then only show hierarchies if
/// there is more than one hierarchy.<br/>
/// This has no effect on the operation of the cube.
Property showHierarchies As %DeepSee.Datatype.string(VALUELIST = ",true,false,default", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "default" ];

/// Test if this dimension's definition is valid.
Method %Validate() As %Status
{
}

/// Return the SQL table name for the given class name.
ClassMethod %GetSQLTableName(pClass As %String) As %String [ CodeMode = expression ]
{
}

/// Returns the SQL name of property <var>pProp</var> for class <var>pClass</var>.
ClassMethod %GetSQLColumnName(pClass As %String, pProp As %String) As %String [ Final ]
{
}

/// Produce the structures needed to emit the appropriate JSON and export this item to AtScale
Method %AtScaleExport(pStatus As %Status = {$$$OK}, ByRef pAuxiliaryIndex As %DynamicAbstractObject = {$$$NULLOREF}) As %DynamicAbstractObject
{
}

}
