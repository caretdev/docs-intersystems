/// Base class for SVG meter components.<br>
/// A meter is analogous to a control: it has a value
/// as well as upper and lower ranges and thresholds. The
/// display of the value is implemented by subclasses.
Class %ZEN.SVGComponent.meter Extends (svgComponent, %ZEN.Component.dataView) [ Abstract, Deprecated, Inheritance = right, System = 3 ]
{

/// Default viewBoxWidth of this component.
/// This is set to 100 to provide a default, fixed coordinate system for meters.
Parameter DEFAULTVIEWBOXWIDTH = 100;

/// Default viewBoxHeight of this component.
/// This is set to 100 to provide a fixed coordinate system for meters.
Parameter DEFAULTVIEWBOXHEIGHT = 100;

/// Current value of the meter.
Property value As %ZEN.Datatype.string [ InitialExpression = 0 ];

/// Label displayed by the meter.
Property label As %ZEN.Datatype.caption;

/// Optional: CSS style applied to the meter label.
Property labelStyle As %ZEN.Datatype.svgStyle;

/// If defined, this is the target value for the meter.
/// If this value is numeric, then it is used as the target value.
/// If it is a string, then it is used as the name of a property within the
/// data source connected to this meter.<br/>
/// Certain meters may display this value.
Property targetValue As %ZEN.Datatype.string;

/// Represents the lower value of the meter range.
/// If this value is numeric, then it is used as the value.
/// If it is a string, then it is used as the name of a property within the
/// data source connected to this meter.<br/>
Property rangeLower As %ZEN.Datatype.string;

/// Represents the upper value of the meter range.
/// If this value is numeric, then it is used as the value.
/// If it is a string, then it is used as the name of a property within the
/// data source connected to this meter.<br/>
Property rangeUpper As %ZEN.Datatype.string;

/// Represents the lower threshold level for the meter.
/// If this value is numeric, then it is used as the value.
/// If it is a string, then it is used as the name of a property within the
/// data source connected to this meter.<br/>
Property thresholdLower As %ZEN.Datatype.string;

/// Represents the upper threshold level for the meter.
/// If this value is numeric, then it is used as the value.
/// If it is a string, then it is used as the name of a property within the
/// data source connected to this meter.<br/>
Property thresholdUpper As %ZEN.Datatype.string;

/// The displayed value is determined by multiplying the actual
/// value and this scaling factor.
Property scaleFactor As %ZEN.Datatype.float [ InitialExpression = 1 ];

/// If this meter supports animation, then this controls whether the animation
/// is on or off.
Property animate As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true, disable this meter.
Property disabled As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Optional. If this meter is associated with
/// a <class>%ZEN.Auxiliary.dataController</class>, this specifies the name of the property within the dataController
/// that will provide the value for this control.
Property dataBinding As %ZEN.Datatype.string;

/// If true, hide this meter if it is bound to a non-existant data property.
Property showConditionally As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// onchange event handler:
/// For meters that allow user actions to modify their value,
/// this event handler is called when the user changes the value of the slider.
Property onchange As %ZEN.Datatype.eventHandler;

XData SVGStyle
{
}

/// Render the inner SVG contents of this component.
ClientMethod renderContents() [ Final, Language = javascript ]
{
}

/// Render the inner SVG contents of this component.
/// Subclasses should implement this method.
ClientMethod renderMeter() [ Language = javascript ]
{
}

/// Short-cut method to get the current value of this meter.
ClientMethod getValue() [ Language = javascript ]
{
}

/// Short-cut method to set the current value of this meter.
ClientMethod setValue(value) [ Language = javascript ]
{
}

/// Acquire data for this meter.<br/>
/// If the meter is connected to a dataController, then set the
/// value of the meter to the current value of the dataController
/// property specified by <property>dataBinding</property>.
ClientMethod acquireData() [ Language = javascript ]
{
}

/// Create the label displayed by this meter.
/// Subclasses should call this from their <method>render</method
/// method.
/// <var>x</var> and <var>y</var> specify the midpoint of the label.
ClientMethod renderLabel(x, y) [ Language = javascript ]
{
}

/// Return the resolved label to display for this meter.
ClientMethod getLabelText() [ Language = javascript ]
{
}

/// Notification that the dataController associated with this dataView
/// has raised an event.
ClientMethod notifyViewHandler(reason, data1, data2, data3) [ Language = javascript ]
{
}

/// This built-in event handler is called by meters that allow user
/// interaction. It raises notification that the meter's value has changed.
ClientMethod onchangeHandler() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
