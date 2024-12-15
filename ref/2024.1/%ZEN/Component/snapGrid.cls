/// %ZEN.Component.snapGrid is a dynamic layout control designed to organize
/// dragGroups in a tiled layout with an automatic snap to grid feature.
/// The underlying grid is defined by the number of rows and columns requested.
/// The resulting gird is a normalized space where, for example a four column layout
/// would result in each column being 25% of the total width wide.<p/>
/// The grid itself does not scroll, however the dragGroups themselves may.<p/>
/// The layout may be further refined into portrait and landscape modes such that
/// the number of columns and rows may change if the geometry of the widget itself
/// becomes taller than it is wide (or vise versa).  This is particularly useful
/// for adapting layouts on tablet devices such as the iPad.
Class %ZEN.Component.snapGrid Extends abstractDragGroupMgr [ Deprecated, LegacyInstanceContext, System = 3 ]
{

Parameter INCLUDEFILES = "zenSnapGrid.js";

/// If defined, this is used to define the number of columns used for both
/// portrait and landscape layouts
Property cols As %ZEN.Datatype.integer [ InitialExpression = 3 ];

/// If defined, this is used to define the number of columns when the rendered
/// width of the widget is greater than or equal to its height
Property colsLandscape As %ZEN.Datatype.integer;

/// If defined, this is used to define the number of columns when the rendered
/// width of the widget is less than its height
Property colsPortrait As %ZEN.Datatype.integer;

/// If defined, this is used to define the number of rows used for both
/// portrait and landscape layouts
Property rows As %ZEN.Datatype.integer [ InitialExpression = 2 ];

/// If defined, this is used to define the number of rows when the rendered
/// width of the widget is greater than or equal to its height
Property rowsLandscape As %ZEN.Datatype.integer;

/// If defined, this is used to define the number of rows when the rendered
/// width of the widget is less than its height
Property rowsPortrait As %ZEN.Datatype.integer;

/// The logical name of the manager with respect to the external JavaScript
/// code that actually manages the space
Property groupName As %ZEN.Datatype.string [ InitialExpression = "snapGrid" ];

XData Style
{
}

Method %DrawHTML()
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
