/// This dialog window displays a finder-style file selection window.
/// This is intended for use within server portal pages.<br/>
/// To launch the finder use the zenLaunchPopupWindow function:<br/>
/// <example language="javascript">
/// zenLaunchPopupWindow('%ZEN.Dialog.finderDialog.cls?MODE=classes',
/// 	'DataSource',
/// 	'status,scrollbars,resizable=yes,width=800,height=600');
/// </example>
/// <br/>
/// Set URL parameter <var>MODE</var> to the type of thing you wish to display.
/// Refer to the <property>mode</property> for a list of possible values.
/// <br/>
/// Set URL parameter <var>SUPER</var> to limit the finder to showing classes that inherit
/// from a specified class. In this case, <var>MODE</var> is ignored.
/// <br/>
/// The return value of this dialog is of the form "name.type", where type is "cls" or "int" etc.
/// To process the return value:<br/>
/// <example language="cls!member">
/// ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
/// {
/// 	switch(popupName) {
/// 	case 'DataSource':
/// 			if (value != '') {
/// 				// value is name plus extension
/// 				// pull extension off of name
/// 				var s = value.toString().split('.');
/// 				if ('cls' == s[s.length-1]) {
/// 					s.length = s.length-1;
/// 					var className = (s.join('.');
/// 				}
/// 			}
/// 			break;
/// 		}
/// 	}
/// </example>
/// To use this dialog, the current user must hold USE privileges on
/// one of the following resources:<br/>
/// %Admin_Manage,%Admin_Operate,%Admin_Secure,%Development,%Ens_Portal
Class %ZEN.Dialog.finderDialog Extends standardDialog [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

/// If this page has multiple views, this is its initial display mode.
Parameter DEFAULTVIEWMODE = "columns";

/// If this page has multiple categories, this is its initial value.
/// Note: the "local" value has meaning only for "classes" mode. Other modes should set a different default category.
/// See %OnAfterCreatePage() for where these defaults are set for each mode.
Parameter DEFAULTCATEGORY = "local";

/// AUTOLOGOUT is disabled for the finder dialog as we expect it to be called as a soft modal,
/// and the timeout behaviour should thus be controlled by the opening page.
Parameter AUTOLOGOUT = 0;

Parameter USESESSIONLANG As BOOLEAN = 1;

/// This value is passed in by the caller of this dialog. It indicates
/// what things to display. The default is "classes".
/// <p>
/// In "classes" mode the finderDialog supports four different sub-modes (stored in the currCategory
/// property) which are chosen by the user clicking on an icon in the left-hand column of the finder.
/// <p>
/// The "local" sub-mode sets SYSTEM=0 and PERCENT=0 and PRODUCT=0. This is the default sub-mode for "classes".<br/>
/// The "persistent" sub-mode sets PERSISTENT=1 and, if they are undefined, SYSTEM=0, PERCENT=0, and PRODUCT=0. <br/>
/// The "datatype" sub-mode sets DATATYPE=1.
/// The "system" sub-mode sets SYSTEM=1 and PERCENT=1 and PRODUCT=1.
/// <p>
/// Any URL parameter for the finderDialog that is not set by a "classes" sub-mode
/// as described above may be used effectively with "classes" mode.
/// <p>
/// Other mode options are:<br/>
/// "classes" -- show class finder.<br/>
/// "persistent" -- show persistent class finder. Do not use DATATYPE or CONTEXT modifiers with this mode.<br/>
/// "datatype" -- show datatype class finder. Do not use DATATYPE or CONTEXT modifiers with this mode.<br/>
/// "cubes" -- show DeepSee cube finder.<br/>
/// "bpl" -- show BPL business process finder.<br/>
/// "bplplus" -- show business process finder: BPL and non-BPL.<br/>
/// "dtl" -- show DTL data transformation finder.<br/>
/// "dtlplus" -- show DTL data transformation finder: DTL and non-DTL.<br/>
/// "request" -- show all message request classes.<br/>
/// "response" -- show all message response classes.<br/>
/// "allmessages" -- show all message classes, grouped into categories.<br/>
/// "rules" -- show rules finder.<br/>
/// "nms" -- show production-enabled namespaces.<br/>
/// "vdocclass" -- show VDoc or persistent classes.<br/>
/// "vdocschema" -- show VDoc schema categories for one or all VDoc families.<br/>
/// "vdoctype" -- show DocType structures. CATEGORY indicates the doc class.<br/>
/// "vdoccontents" -- show the contents of an VDoc structure. CATEGORY indicates the VDoc class and the DocType in the following format: CATEGORY=VDocClass|DocType.<br/>
/// "vdocsegtype" -- show segment types. CATEGORY indicates the VDoc class.<br/>
/// "vdocsegcontents" -- show property paths for a given segment. CATEGORY indicates the VDoc class and the DocType in the following format: CATEGORY=VDocClass|DocType.<br/>
/// "configurations" -- show configuration items for all Productions.<br/>
/// "folderitems" -- show DeepSee folder items.<br/>
/// "services" -- show all Business Service classes.<br/>
/// "operations" -- show all Business Operation classes.<br/>
/// "lookups" -- show all defined lookup tables.<br/>
/// "sqlstored" -- show all stored procedures.<br/>
/// "queries" -- show all stored procedures that return resultSets except default extent queries.</br>
/// "allqueries" -- show all stored procedures that return resultSets.</br>
/// "views" -- show all SQL views.<br/>
/// "querycontext" -- alternately show queries, allqueries or view. </br>
/// "prjfiles" -- show all Studio project files.<br/>
/// "production" -- show productions which are allowed in the namespace.<br/>
/// "datasettings" -- show all Deployable Settings Documents.<br/>
Property mode As %ZEN.Datatype.string(ZENURL = "MODE") [ InitialExpression = "classes" ];

/// Value to be returned by this dialog.
Property returnValue As %ZEN.Datatype.string;

/// If this page has "views", this is the current view type.
Property currViewMode As %ZEN.Datatype.string [ InitialExpression = {..#DEFAULTVIEWMODE} ];

/// Current Category.
Property currCategory As %ZEN.Datatype.string [ InitialExpression = {..#DEFAULTCATEGORY} ];

/// Current sort mode for this page.
Property currSortMode As %ZEN.Datatype.string [ InitialExpression = "name" ];

/// If defined, then use this as the extension for items returned by the finder (e.g., "bpl").
Property extension As %ZEN.Datatype.string;

/// Current search (filter) key value.
Property searchKey As %ZEN.Datatype.string;

/// Current super class filter value. If set, this overrides the mode behavior.
Property superKey As %ZEN.Datatype.string(ZENURL = "SUPER");

/// Current super class filter value which does not include the superclass in the output.
/// If set, this overrides the mode behaviour. Note that <property>superKey</property> takes precedence
/// if both properties are specified.
Property subKey As %ZEN.Datatype.string(ZENURL = "SUB");

/// Category used by some modes.
Property category As %ZEN.Datatype.string(ZENURL = "CATEGORY");

/// Page calling page might populate e.g dtleditor
Property caller As %ZEN.Datatype.string(ZENURL = "CALLER");

/// Include system items. Used by some modes.
/// Note that passing in the empty string when in "classes" mode and "local" category
/// will include both system and non-system classes.
Property includeSystem As %ZEN.Datatype.boolean(ZENURL = "SYSTEM");

/// Used with mode "classes". Include or do not include classes whose names include the % character.
Property includePercent As %ZEN.Datatype.boolean(ZENURL = "PERCENT");

/// Used with mode "classes". Include or do not include classes that are mapped to product databases, e.g. IRISSYS, IRISLIB, ENSLIB, HSLIB
Property includeProduct As %ZEN.Datatype.boolean(ZENURL = "PRODUCT");

/// Used with mode "classes". Include or do not include classes that are generated.
Property includeGenerated As %ZEN.Datatype.boolean(ZENURL = "GENERATED");

/// Used with mode "classes". Include or do not include classes that are datatypes.
Property includeDatatype As %ZEN.Datatype.boolean(ZENURL = "DATATYPE");

/// Used with mode "classes" for the business process context.
/// Include or do not include classes that are either persistent, serial, or datatype.
/// If true, accept any of these types. If false, accept none of them.
/// As you can see in %ZEN.FinderUtils, the value for includeContext overrides any value for includeDatatype.
/// The value for includeContext will also override mode "persistent" so they should not be used together.
/// Use includeContext only with mode "classes".
Property includeContext As %ZEN.Datatype.boolean(ZENURL = "CONTEXT");

/// Include abstract classes. Used by some modes.
Property includeAbstract As %ZEN.Datatype.boolean(ZENURL = "ABSTRACT") [ InitialExpression = 1 ];

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Zen page notification of an HTTP request.
ClassMethod %OnPreHTTP() As %Boolean [ Internal, ServerOnly = 1 ]
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

/// Provide the source data (as an array) that will drive the finder.
Method GetFinderArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// Return the icon for the item in "icons" mode.
ClientMethod getItemIcon(item) [ Language = javascript ]
{
}

/// Provide HTML for details on selected item in finder.
ClientMethod drawDetails(item, finder, index) [ Language = javascript ]
{
}

/// Look up additional information for a given class.
ClassMethod GetClassInfo(pClassName As %String) As %ZEN.proxyObject [ Internal, ZenMethod ]
{
}

/// Look up additional information for a given item.
ClassMethod GetItemInfo(pMode As %String, pItemName As %String, pItemCategory As %String = "") As %ZEN.proxyObject [ Internal, ZenMethod ]
{
}

/// Item double-clicked within the Finder.
ClientMethod itemDoubleClick(item) [ Language = javascript ]
{
}

/// User clicked on super class link.
ClientMethod openSuper(superclass) [ Language = javascript ]
{
}

/// Item selected within the Finder.
ClientMethod itemSelected(item) [ Language = javascript ]
{
}

/// Adjust size and position of components on this page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// Draw the contents of the tool ribbon.
/// This is displayed if a subclass implements the <method>OnGetRibbonInfo</method>
/// callback.
Method DrawRibbon(pSeed As %String) As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String) As %Status
{
}

/// Change the current display mode for this page.
/// This is called by the icon buttons on the ribbon.
/// This will call the <method>setViewModeHandler</method> within a subclass.
ClientMethod setViewMode(mode) [ Language = javascript ]
{
}

/// Do the actual work of updating the view to match the current view mode.
ClientMethod setViewModeHandler(mode, oldmode) [ Language = javascript ]
{
}

/// Change the current category for this page.
ClientMethod setCategory(cat) [ Language = javascript ]
{
}

/// Do the actual work of applying the new category selection.
ClientMethod setCategoryHandler(category) [ Language = javascript ]
{
}

/// Change the current sort mode for the page.
ClientMethod setSortMode(mode) [ Language = javascript ]
{
}

/// Do the actual work of applying the new sort option.
ClientMethod setSortModeHandler(mode) [ Language = javascript ]
{
}

/// User has changed search key value.
ClientMethod searchKeyChange(key) [ Language = javascript ]
{
}

/// Load the children for the given node in the finder.
ClientMethod loadChildren(item) [ Language = javascript ]
{
}

/// Draw the contents of the Categories list on the left side of the dialog.
/// This is displayed if a subclass implements the <method>OnGetCategoryInfo</method>
/// callback.<br/>
/// <var>pSeed</var> indicates what to draw: "classes","zen", etc.
Method DrawCategories(pSeed As %String) As %Status
{
}

/// Add components to page.
Method %OnAfterCreatePage() As %Status
{
}

/// Get information to display in the category box.
Method OnGetCategoryInfo(pCategory As %String, Output pDisplay As %Boolean, Output pIcons As %List) As %Status
{
}

/// Avoid writing out the session cookie if we are in a Studio session.
ClassMethod OnPreHyperEvent(class As %String, method As %String) As %Status [ ServerOnly = 1 ]
{
}

Method %OnDrawHTMLHead() As %Status
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
