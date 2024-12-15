/// Meta-data object for a DeepSee KPI.<br/>
Class %DeepSee.Model.KPI.kpi Extends node [ System = 3 ]
{

/// Specify how the data for this KPI is provided.<br/>
Property sourceType As %DeepSee.Datatype.string(VALUELIST = ",mdx,sql,manual", XMLPROJECTION = "attribute");

/// This is used as the caption text for this KPI.
Property caption As %DeepSee.Datatype.string(MAXLEN = 250, XMLPROJECTION = "attribute");

/// SQL statement used if sourceType is "sql"
Property sql As %DeepSee.Datatype.string(MAXLEN = 4000, XMLPROJECTION = "attribute");

/// MDX statement used if sourceType is "mdx"
Property mdx As %DeepSee.Datatype.string(MAXLEN = 4000, XMLPROJECTION = "attribute");

/// Represents the lower value for meters connected to this KPI.
Property rangeLower As %ZEN.Datatype.float;

/// Represents the upper value for meters connected to this KPI.
Property rangeUpper As %ZEN.Datatype.float;

/// Represents the lower threshold level for meters connected to this KPI.
Property thresholdLower As %ZEN.Datatype.float;

/// Represents the upper threshold level for meters connected to this KPI.
Property thresholdUpper As %ZEN.Datatype.float;

/// Properties defined for this KPI.
Relationship properties As %DeepSee.Model.KPI.property(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = kpi ];

/// Actions defined for this KPI.
Relationship actions As %DeepSee.Model.KPI.action(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = kpi ];

/// Filters defined for this KPI.
Relationship filters As %DeepSee.Model.KPI.filter(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = kpi ];

/// Optional. Name of an additional DeepSee KPI class that provides additional Dashboard Actions for this kpi.<br/>
Property actionClass As %DeepSee.Datatype.className(XMLPROJECTION = "attribute");

/// Validate this model for logical errors.
Method %Validate() As %Status
{
}

}
