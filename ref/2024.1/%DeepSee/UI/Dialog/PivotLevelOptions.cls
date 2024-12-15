/// This dialog lets the user change the properties of a level within a DeepSee pivot table.
Class %DeepSee.UI.Dialog.PivotLevelOptions Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Mode ("axis" -- options for entire axis, "level", or "measures").
Property mode As %ZEN.Datatype.string(ZENURL = "MODE") [ InitialExpression = "level" ];

/// Type of member specified (determined from spec).
Property memberType As %ZEN.Datatype.string [ InitialExpression = "mbr" ];

/// Subject Area.
Property subjectArea As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Saved pivot (if present).
/// Used to get local calculated members.
Property pivotName As %ZEN.Datatype.string(ZENURL = "PIVOTNAME");

/// Index of component that launched this dialog.
Property compIndex As %ZEN.Datatype.integer(ZENURL = "INDEX");

/// Text of current member.
Property memberText As %ZEN.Datatype.string(ZENURL = "TEXT");

/// Spec of current member.
Property memberSpec As %ZEN.Datatype.string(ZENURL = "SPEC");

/// If true, apply the HEAD function to this level.
Property headEnabled As %ZEN.Datatype.boolean(ZENURL = "HEAD");

/// Count argument for HEAD function.
Property headCount As %ZEN.Datatype.integer(ZENURL = "HEADCOUNT");

/// If true, apply the FILTER function to this level.
Property filterEnabled As %ZEN.Datatype.boolean(ZENURL = "FILTER");

/// Filter expression for FILTER function.
Property filterExpression As %ZEN.Datatype.string(ZENURL = "FILTEREXPR");

/// If true, apply the ORDER function to this level.
Property orderEnabled As %ZEN.Datatype.boolean(ZENURL = "ORDER");

/// Sort expression for ORDER function.
Property orderExpression As %ZEN.Datatype.string(ZENURL = "ORDEREXPR");

/// Direction argument for ORDER function.
Property orderDirection As %ZEN.Datatype.string(ZENURL = "ORDERDIR");

/// If true, apply an aggregate function to this level.
Property aggEnabled As %ZEN.Datatype.boolean(ZENURL = "AGG");

/// If enabled, aggregate function for this level.
Property aggFunction As %ZEN.Datatype.string(ZENURL = "AGGFUNC");

/// If enabled, aggregate function parameter for this level.
Property aggFunctionParm As %ZEN.Datatype.string(ZENURL = "AGGFUNCPARM");

/// Optional caption to apply to this element.
Property levelCaption As %ZEN.Datatype.string(ZENURL = "LEVELCAPTION");

/// Optional format to apply to this element.
Property levelFormat As %ZEN.Datatype.string(ZENURL = "LEVELFORMAT");

/// Optional style to apply to this element.
Property levelStyle As %ZEN.Datatype.string(ZENURL = "LEVELSTYLE");

/// Optional style to apply to this element.
Property levelHeaderStyle As %ZEN.Datatype.string(ZENURL = "LEVELHEADERSTYLE");

/// Optional summary aggregate for this element.
Property levelSummary As %ZEN.Datatype.string(ZENURL = "LEVELSUMMARY");

/// For row/column options, indicates the type of member defined.
Property levelType As %ZEN.Datatype.string(ZENURL = "LEVELTYPE");

/// Value of this option (for mdx and value types).
Property levelValue As %ZEN.Datatype.string(ZENURL = "VALUE");

/// If true, apply the 80/20 suppression to this level.
Property suppress8020 As %ZEN.Datatype.boolean(ZENURL = "SUPPRESS");

/// Value of the drilldown spec option.
Property drilldownSpec As %ZEN.Datatype.string(ZENURL = "DRILLDOWNSPEC");

/// Value for measureLocation.
Property measureLocation As %ZEN.Datatype.string(ZENURL = "MEASURELOCATION");

/// Value for hideMeasures.
Property hideMeasures As %ZEN.Datatype.string(ZENURL = "HIDEMEASURES");

/// Create an isCalculated property with 0 as default:
Property isCalculated As %Integer [ InitialExpression = 0 ];

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

ClientMethod getPivotObject() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// Update state of controls on this page.
ClientMethod updateState(which, flag) [ Language = javascript ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// Disable/enable drilldown.
ClientMethod disableDrilldown() [ Language = javascript ]
{
}

/// Launch format dialog.
ClientMethod buildExpression() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Launch format dialog.
ClientMethod editFormatString() [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// This client event is fired when user selects a type radio button choice.
ClientMethod changeType(clear) [ Language = javascript ]
{
}

/// Change in style control.
ClientMethod applyChange(deltaId, target) [ Language = javascript ]
{
}

/// Make style controls match current style.
ClientMethod updateStyleControls() [ Language = javascript ]
{
}

/// Reset styles.
ClientMethod reset(which) [ Language = javascript ]
{
}

}
