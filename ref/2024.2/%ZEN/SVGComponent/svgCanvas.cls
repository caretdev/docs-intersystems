/// This is a specialized type of <class>%ZEN.SVGComponent.svgFrame</class> that can
/// contain a set of <class>sprite</class> objects.<br>
/// This provides the basics needed for an svg-based graphical editor.
Class %ZEN.SVGComponent.svgCanvas Extends %ZEN.SVGComponent.svgFrame [ Deprecated, System = 3 ]
{

/// List of connectors on this canvas.
Property connectors As list Of connector(XMLPROJECTION = "NONE");

/// If true, display rulers along the left and top of this canvas.
Property showRulers As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Width of vertical ruler. This value is multiplied
/// with <property>rulerMajor</property> to get the actual size.
Property rulerWidth As %ZEN.Datatype.float [ InitialExpression = 8.5 ];

/// Height of vertical ruler. This value is multiplied
/// with <property>rulerMajor</property> to get the actual size.
Property rulerHeight As %ZEN.Datatype.float [ InitialExpression = 11.0 ];

/// Number of units per major ruler tick mark.
/// This must be a multiple of <property>rulerMinor</property>
/// or no major tick marks will show.
Property rulerMajor As %ZEN.Datatype.integer [ InitialExpression = 100 ];

/// Number of units per minor ruler tick mark.
Property rulerMinor As %ZEN.Datatype.integer [ InitialExpression = 25 ];

/// CSS style used to draw rulers.
Property rulerStyle As %ZEN.Datatype.style [ InitialExpression = "stroke:gray;" ];

/// Create a new sprite on this canvas and return it.
ClientMethod createSprite(type, x, y) [ Language = javascript ]
{
}

/// Create a new connector on this canvas and return it.
ClientMethod createConnector(type) [ Language = javascript ]
{
}

/// Return true if shapes can be dragged on this frame.
ClientMethod canDragShapes() [ Language = javascript ]
{
}

/// Notification that the embedded SVG page is loaded.
ClientMethod svgLoadHandler(win) [ Language = javascript ]
{
}

/// Draw set of rulers.
ClientMethod drawRulers() [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
