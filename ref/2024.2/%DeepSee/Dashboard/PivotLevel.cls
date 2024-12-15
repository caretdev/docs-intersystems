/// This class defines a level within a DeepSee saved pivot.<br/>
/// This is used to fill in the values of a pivotLevel within a DeepSee pivot table.
Class %DeepSee.Dashboard.PivotLevel Extends (%SerialObject, %XML.Adaptor) [ System = 4 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee/library";

Parameter XMLNAME = "pivot";

Parameter XMLIGNORENULL = 1;

/// This specifies the dimension level displayed for this level
/// of the pivot table.<br/>
/// For example, "[Product]" or "[Time].[Year]"
Property spec As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");

/// Key value of the current dimension level.<br/>
/// This can be a comma-delimited list of keys:
/// "14,25"
Property key As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");

/// Internal property used to track order in which filters are displayed.
Property position As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ Internal ];

/// Used to track the dimension number for a filter.
Property filterDim As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ Internal ];

/// Used to track the hierarchy number for a filter.
Property filterHier As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ Internal ];

/// Name value of the current dimension level.<br/>
/// This can be a comma-delimited list of delimited values:
/// "[2005],[2006]"
Property value As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");

/// Optional display name for this level. This is the text displayed by the pivot table
/// when a level is used a filter, for example.
Property text As %ZEN.Datatype.caption(MAXLEN = "", XMLPROJECTION = "attribute");

/// Children of this level.
Property childLevels As list Of PivotLevel(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT");

/// If true, apply the HEAD function to this level.
Property headEnabled As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Count argument for HEAD function.
Property headCount As %ZEN.Datatype.integer(XMLPROJECTION = "attribute");

/// If true, apply the FILTER function to this level.
Property filterEnabled As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Filter expression for FILTER function.
Property filterExpression As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");

/// If true, apply the ORDER function to this level.
Property orderEnabled As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Sort expression for ORDER function.
Property orderExpression As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");

/// Direction argument for ORDER function.
Property orderDirection As %ZEN.Datatype.string(XMLPROJECTION = "attribute") [ InitialExpression = "BDESC" ];

/// If true, apply the Aggregate function to this level.
Property aggEnabled As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Aggregate function.
Property aggFunction As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Aggregate function parameter.
Property aggFunctionParm As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Optional caption to apply to this element.
Property levelCaption As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");

/// Optional format to apply to this element.
Property levelFormat As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Optional summary to apply to this element.
Property levelSummary As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Type of member to use for this element.
Property levelType As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Drill-level at which this level was defined.
Property drillLevel As %ZEN.Datatype.integer(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// If true, this is an advanced filter.
Property advanced As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Optional style to apply to this element.
Property levelStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// Optional style to apply to this element's header.
Property levelHeaderStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// If true, apply the 80/20 suppression to this level.
Property suppress8020 As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// If defined, this is a ^-delimited list of MDX expressions to use when drilling (double-clicking) on a member
/// defined by this level.
Property drilldownSpec As %ZEN.Datatype.string(MAXLEN = "", XMLPROJECTION = "attribute");

/// If true, this level is enabled. Only applies to filters at this time.
Property enabled As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// Copy the contents of this pivot level definition to pivot table level <var>pLevel</var>.
Method %CopyToComponent(pLevel As %DeepSee.Component.pivotLevel) As %Status [ Internal ]
{
}

/// Set the contents of this pivot level definition from pivot table level <var>pLevel</var>.
Method %CopyFromComponent(pLevel As %DeepSee.Component.pivotLevel) As %Status [ Internal ]
{
}

/// Copy the contents of this pivot level definition to an Dao.
Method %CopyToDao(Output pLevelJSON As %DynamicObject) As %Status [ Internal ]
{
}

}
