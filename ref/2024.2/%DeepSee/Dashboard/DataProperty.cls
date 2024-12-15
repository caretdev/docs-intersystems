/// This class defines a how a specific dataProperty is displayed within a user-defined DeepSee dashboard widget.
/// Many of the properties are only used by specific widget types.
/// This is what is saved to disk, not part of the actual visual component.
Class %DeepSee.Dashboard.DataProperty Extends (%SerialObject, %XML.Adaptor) [ System = 4 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee/library";

Parameter XMLNAME = "dataProperty";

Parameter XMLIGNORENULL = 1;

/// Identifying name for this dataProperty. This is used to logically identify it.
Property name As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Label displayed for this item within the widget.
Property label As %ZEN.Datatype.caption(XMLPROJECTION = "attribute");

/// Width of column within the widget if appropriate.
Property width As %ZEN.Datatype.length(XMLPROJECTION = "attribute");

/// Alignment of column within the widget if appropriate.
Property align As %String(MAXLEN = 25, XMLPROJECTION = "attribute");

/// For some widget types, such as meters, this lets an individual meter override the overall subtype.
Property subtype As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Style to apply to this property if appropriate.<br>
/// This is a CSS style string: e.g., "color: red;"
Property style As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// Specify what to display for this property.
Property display As %ZEN.Datatype.string(VALUELIST = ",itemNo,label,title,value,arrow,lamp,trendLine,plotBox,hidden", XMLPROJECTION = "attribute");

/// Specify how to format the value for this property.
Property format As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Specify how to display values for this property (when displayed in a scoreCard).<br/>
/// If "value" then the value for the property is displayed.<br/>
/// If "conditional" then the value for the property is displayed if the property exists.<br/>
/// If "sum" then the total of all values for the property is displayed.<br/>
/// If "target" then the target value is displayed.<br/>
/// If "target%" then the value as a percentage of the target is displayed.<br/>
/// If "sum%" then the value as a percentage of the sum is displayed.<br/>
Property showAs As %ZEN.Datatype.string(VALUELIST = ",value,conditional,sum,target,target%,sum%", XMLPROJECTION = "attribute");

/// If true, then this column supplies the logical value used to identify a row
/// within the score card. This may be used to tie actions to the scorecard.
Property valueColumn As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute");

/// Type of summary to display for this column.<br/>
/// If "", then no summary is displayed.<br/>
/// "sum" computes and displays the sum of the values within the column.<br/>
/// "avg" computes and displays the average of the values within the column.<br/>
/// "min" finds and displays the minimum of the values within the column.<br/>
/// "max" finds and displays the maximum of values within the column.<br/>
/// "value" evaluates and displays the value of the <property>summaryValue</property> property.<br/>
Property summary As %ZEN.Datatype.string(VALUELIST = ",sum,avg,min,max,value", XMLPROJECTION = "attribute");

/// Value to use for the summary of the column (if <property>summary</property> is "value").<br/>
/// This can be a literal number, a literal string (enclosed within ""),
/// the name of the property in data source that supplies the value for this column,
/// or an expression (starting with =).
Property summaryValue As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Value used for this property.
/// This can be a number or the name of the property in data source that supplies the value for this column.
/// It can also contain a DeepSee formula (starting with "=").
Property dataValue As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Optional. Target value for this property.
/// This is used for columns that display a target value. If this is not supplied,
/// the default target value for the data source is used.<br>
/// This can contain an actual value (numeric) or the name of a property within the dataSource.
Property targetValue As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Optional. Lower threshold value for this property.
/// If this is not supplied, the default value for the data source is used.<br>
/// This can contain an actual value (numeric) or the name of a property within the dataSource.
Property thresholdLower As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Optional. Upper threshold value for this property.
/// If this is not supplied, the default value for the data source is used.<br>
/// This can contain an actual value (numeric) or the name of a property within the dataSource.
Property thresholdUpper As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Optional. Lower range value for this property.
/// If this is not supplied, the default value for the data source is used.<br>
/// This can contain an actual value (numeric) or the name of a property within the dataSource.
Property rangeLower As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Optional. Upper range value for this property.
/// If this is not supplied, the default value for the data source is used.<br>
/// This can contain an actual value (numeric) or the name of a property within the dataSource.
Property rangeUpper As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Optional. Base value for this property.
/// This can contain an actual value (numeric) or the name of a property within the dataSource.
Property baseValue As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Optional. Style override for this property.
/// This is an object state (as JSON) for the client object that visualizes this property.
Property override As %ZEN.Datatype.string(MAXLEN = 32000, XMLPROJECTION = "attribute");

/// Copy contents of this data property to <var>pTarget</var>.
Method %CopyTo(ByRef pTarget) As %Status
{
}

/// Copy the contents of this definition to an Dao.
Method %CopyToDao(ByRef pTarget As %DynamicObject = {$$$NULLOREF}) As %Status
{
}

/// Copy contents to a structured DataProperty definition
Method %CopyToDef(ByRef pTarget As %DeepSee.Dashboard.DataProperty) As %Status
{
}

}
