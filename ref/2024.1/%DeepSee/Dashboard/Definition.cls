/// This persistent class represents the contents of a user-defined DeepSee dashboard.<br/>
/// APIs for dealing with Dashboard definitions are in the <class>%DeepSee.Dashboard.Utils</class> class.<br/>
/// The logic for converting definitions into visible items is in
/// the <class>%DeepSee.UserPortal.DashboardViewer</class> class.<br/>
Class %DeepSee.Dashboard.Definition Extends %DeepSee.UserLibrary.FolderItem [ System = 4 ]
{

Parameter XMLNAME = "dashboard";

Parameter ITEMTYPE = "dashboard";

Parameter ICON = "deepsee/ds2_dashboard_22.png";

Parameter LARGEICON = "deepsee/ds2_dashboard_44.png";

/// Name of color scheme to use for this dashboard.
Property scheme As %String(MAXLEN = 100, XMLPROJECTION = "attribute");

/// Number of worklist boxes to display on the page.
Property worklistCount As %Integer(MAXVAL = 2, MINVAL = 0, XMLPROJECTION = "attribute") [ InitialExpression = 2 ];

/// Set of visual widgets displayed on this dashboard.
Property widgets As list Of Widget(XMLNAME = "widget", XMLPROJECTION = "element");

/// Dashboard is in "snap to grid" mode.
Property snapTo As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Dashboard uses the new snapGrid layout mode.
Property snapGrid As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Number of rows when using the new snapGrid layout mode.
Property gridRows As %Integer(XMLPROJECTION = "attribute") [ InitialExpression = 10 ];

/// Number of columns when using the new snapGrid layout mode.
Property gridCols As %Integer(XMLPROJECTION = "attribute") [ InitialExpression = 10 ];

/// User can move and resize widgets.
Property canResize As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// User can change widget definitions.
Property canModify As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// Display widget title bars.
Property showTitleBar As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// Specify opacity of title bars.
Property titleBarOpacity As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

/// Specify color of title bars.
Property titleBarColor As %ZEN.Datatype.color(XMLPROJECTION = "attribute");

/// Specify opacity of title bars.
Property selectedTitleBarOpacity As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

/// Specify color of title bars.
Property selectedTitleBarColor As %ZEN.Datatype.color(XMLPROJECTION = "attribute");

/// Specify color of title bars.
Property titleBarTextColor As %ZEN.Datatype.color(XMLPROJECTION = "attribute");

/// Specify color of title bar text for selected widgets.
Property selectedTitleBarTextColor As %ZEN.Datatype.color(XMLPROJECTION = "attribute");

/// Specify font of title bar text
Property titleBarFont As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Local override of company name.
Property companyName As %String(MAXLEN = 512, XMLPROJECTION = "attribute");

/// Local override of company logo.
Property companyLogo As %String(MAXLEN = 512, XMLPROJECTION = "attribute");

/// Local override of company style.
Property companyStyle As %String(MAXLEN = 1000, XMLPROJECTION = "attribute");

/// background color of dashboard
Property backgroundColor As %ZEN.Datatype.color [ InitialExpression = "white" ];

/// background image of dashboard
Property backgroundImage As %ZEN.Datatype.string [ InitialExpression = "none" ];

/// background image of dashboard
Property backgroundRepeat As %ZEN.Datatype.string [ InitialExpression = "no-repeat" ];

/// background image of dashboard
Property backgroundSize As %ZEN.Datatype.string [ InitialExpression = "100% 100%" ];

/// background opacity of dashboard
Property backgroundOpacity As %ZEN.Datatype.float [ InitialExpression = 1.0 ];

/// border of widgets in dashboard
Property widgetBorders As %ZEN.Datatype.string [ InitialExpression = "1px solid #F0F0F0" ];

/// Whether border is none, inherit or "width style color"
Property widgetBordersSwitch As %ZEN.Datatype.string [ InitialExpression = "edit" ];

/// color of widgets border
Property widgetBordersColor As %ZEN.Datatype.string [ InitialExpression = "#F0F0F0" ];

/// style of widgets border, e.g. solid, dashed, dotted
Property widgetBordersStyle As %ZEN.Datatype.string [ InitialExpression = "solid" ];

/// width of widgets border
Property widgetBordersWidth As %ZEN.Datatype.string [ InitialExpression = "1" ];

/// Whether borders of widgets are on or off
Property widgetBordersToggle As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Return the URL for this item.
Method %GetURL() As %String
{
}

/// Return the localized type name for this item.
Method %GetTypeName() As %String
{
}

/// Return a list of all other folder items (including cubes or kpis) that this item depends upon.
Method %GetDependencies(pList As %String) As %Status
{
}

Method %CopyToDao(ByRef pDynamicObj As %DynamicObject = {$$$NULLOREF}) As %Status
{
}

/// Diagnostic method: display contents of this folder item to the console.
Method %Dump() As %Status
{
}

}
