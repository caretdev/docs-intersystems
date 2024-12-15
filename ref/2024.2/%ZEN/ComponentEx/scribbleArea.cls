/// Free pen input control.<br>
/// This input control is intended for capturing free pen gestures such as signatures and "initial here" marks
Class %ZEN.ComponentEx.scribbleArea Extends %ZEN.Component.control [ Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "text";

Parameter INCLUDEFILES = "zenCSLM.js";

Property controlClass As %ZEN.Datatype.cssClass [ InitialExpression = "scribbleArea" ];

/// The level of post processing smoothing to apply to the input curve.  A setting of
/// zero indicate no smoothing. Smoothing is achieved by applying weighted averages to the
/// sampled data points in an effort to reduce jitter resulting from certain input devices.
/// When set to a small value (1 or 2) this can help curves entered with a bulky device (such
/// as an optical mouse) more closely approximate those of a more precise input device (such
/// as a tablet).  This is, however, only an approximation and the original data is lost in
/// the conversion.
Property smoothness As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// The level of post processing culling to apply to the input curve.  A setting of zero indicates
/// that all non-colinear data points should be retained.  Higher values allow the system to cull
/// additional points based on how much information they actually contain (information in this case
/// being a function of change in slope of the curve at the given point)  Raising the culling level
/// reduces the memory requirements for the control's value but does so at the risk of exaggerating
/// cusps and jitter.
Property culling As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// The thickness of the virtual pen point. The higher the nib number the bolder the input curve
/// will appear.
Property nib As %ZEN.Datatype.integer [ InitialExpression = 2 ];

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

ClientMethod supportsCanvasAPI() [ Language = javascript ]
{
}

ClientMethod initialize() [ Language = javascript ]
{
}

ClientMethod extractInkColor(div) [ Language = javascript ]
{
}

ClientMethod clearCanvas() [ Language = javascript ]
{
}

ClientMethod clear() [ Language = javascript ]
{
}

ClientMethod showSource() [ Language = javascript ]
{
}

ClientMethod smoothSignature(s) [ Language = javascript ]
{
}

ClientMethod trimSignature(s, cull) [ Language = javascript ]
{
}

/// Render the given curve using HTML 5 canvas tag methods
ClientMethod renderSignatureCVS(s) [ Language = javascript ]
{
}

/// Render the given curve using IE's VML technology
ClientMethod renderSignatureVML(s) [ Language = javascript ]
{
}

/// Render the given curve, s, in the drawing area
ClientMethod renderSignature(s, smoothingLevel, compressionLevel) [ Language = javascript ]
{
}

/// Return the structure of the given curve, s, as a JSON object
ClientMethod exportSignature(s, smoothingLevel, compressionLevel) [ Language = javascript ]
{
}

/// Return the structure of the given curve, s, as a turtle graphics-ish path string where
/// data points take the form of penCommand x y.  The penCommand is either moveTo (m)
/// or lineTo (l). The x value is measured with respect to the left-most side of the
/// control's bounds and increases to the right.  The y value is measured with respect
/// to the top edge of the control and increases down the screen.  This format is also
/// used as the nominal value of the control.
ClientMethod exportAsPath(s, smoothingLevel, compressionLevel, showSize) [ Language = javascript ]
{
}

/// Add a line segment to the drawing area
ClientMethod addLine(sx, sy, ex, ey) [ Language = javascript ]
{
}

/// Start or extend a given stroke for the current curve
ClientMethod addStroke(c, x, y) [ Language = javascript ]
{
}

/// Track pointer gestures and generate curve data
ClientMethod track(who, event) [ Language = javascript ]
{
}

ClientMethod touchStart(node, event) [ Language = javascript ]
{
}

/// Track touch gestures and generate curve data for mobile devices
ClientMethod touchMove(node, event) [ Language = javascript ]
{
}

/// Commit the latest gesture to the signature curve
ClientMethod touchEnd(node, event) [ Language = javascript ]
{
}

/// Extract current rendering information and abstract it into the nominal value
/// of this control
ClientMethod updateControlValue() [ Language = javascript ]
{
}

/// Parse a new nominal value into the graphical context
ClientMethod parseValue() [ Language = javascript ]
{
}

ClientMethod onRefreshContents() [ Language = javascript ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Override to get current value of control.
ClientMethod getProperty(property, key) As %String [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Export the vector description of the scribble to an external file
/// The data stream, vector, may be either a JSON string (as returned
/// from exportSignature() or in the internal format returned by
/// exportAsPath().  The provided filename should be a fully qualified
/// path-filename where the directory is either the temp directory for the
/// instance or one of the custom whitelisted directories given in
/// ^%SYS("ZEN","fsDirectoryWhitelist")
ClassMethod Export(fileName As %ZEN.Datatype.string, vector As %ZEN.Datatype.string) As %ZEN.Datatype.integer [ ZenMethod ]
{
}

ClassMethod ValidateDestination(fileName As %ZEN.Datatype.string) As %Boolean
{
}

ClassMethod ValidateDataStream(vector As %ZEN.Datatype.string) As %Boolean
{
}

}
