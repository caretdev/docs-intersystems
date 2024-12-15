/// This component draws an HTML tree control based on executing
/// a user-provided callback method.<br/>
/// There are several ways that you can provide data for the tree control:
/// <ul>
/// <li>Using the <property>OnGetNodeInfo</property> callback to get data for each node within the tree.</li>
/// <li>Using the <property>dataGlobal</property> property to use data stored within a global to supply the contents of the tree.</li>
/// <li>Using the <property>OnGetTreeInfo</property> callback to fill in a local array that supplies the contents of the tree.</li>
/// </ul>
Class %ZEN.Component.dynaTree Extends component [ Deprecated, System = 3 ]
{

/// Default url of image used for expanded tree node.
/// This is only used when <property>showLines</property> is false.
Parameter IMAGEEXPANDED;

/// Default url of image used for contracted tree node.
/// This is only used when <property>showLines</property> is false.
Parameter IMAGECONTRACTED;

/// Default url of image used for open folder nodes.
Parameter IMAGEFOLDEROPEN = "folderopen.gif";

/// Default url of image used for closed folder nodes.
Parameter IMAGEFOLDERCLOSED = "folderclosed.gif";

/// Default url of image used for a leaf node in the tree.
Parameter IMAGENODE = "node.gif";

/// Index (0-based) of current selected tree node.<br>
Property selectedIndex As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// Specifies amount child nodes should be indented.
/// This value is only applied when <property>showLines</property> is false.
Property childIndent As %ZEN.Datatype.length [ InitialExpression = 20 ];

/// url of image used for expanded tree nodes (when <property>showLines</property> is false).<br/>
/// If you set this, make sure you also set <property>imageContracted</property>.
Property imageExpanded As %ZEN.Datatype.uri;

/// url of image used for contracted tree node (when <property>showLines</property> is false).<br/>
Property imageContracted As %ZEN.Datatype.uri;

/// url of image used for an open folder node in the tree.<br/>
/// If not specified, a default image is supplied.
Property imageFolderOpen As %ZEN.Datatype.uri;

/// url of image used for a closed folder node in the tree.<br/>
/// If not specified, a default image is supplied.
Property imageFolderClosed As %ZEN.Datatype.uri;

/// url of image used for a leaf node in the tree.<br/>
/// If not specified, a default image is supplied.
Property imageNode As %ZEN.Datatype.uri;

/// If true, show dashed lines (as a series of images) between
/// the nodes of the tree.
Property showLines As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true and <property>showLines</property> is false, display open and closed folder icons as well as icons for
/// each node in the tree. The default is true.<br/>
/// If <property>showLines</property> is true, this property is ignored.
Property showFolders As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// onclick event handler:
/// If defined, this event is fired when
/// the user clicks on an item
Property onclick As %ZEN.Datatype.eventHandler;

/// ondblclick event handler:
/// If defined, this event is fired when
/// the user double-clicks on an item
Property ondblclick As %ZEN.Datatype.eventHandler;

/// onchange event handler:
/// If defined, this event is fired when
/// the user changes the value of this component.
Property onchange As %ZEN.Datatype.eventHandler;

/// Text (display) value of current item within the view.
/// Do not access this directly; use getProperty('text') instead.
Property text As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// Logical value of current item within the view.
/// Do not access this directly; use getProperty('value') instead.
Property value As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// User-defined set of parameters. These values are passed on
/// to the user callback function that provides the contents of
/// this view. Typically this is used to hold search parameters.
Property parameters As array Of %ZEN.Auxiliary.parameter(XMLKEYNAME = "paramName", XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// This is used to keep track of how many nodes are in this tree.
Property nodeCount As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0 ];

/// Name of Server-side callback method to call to get information
/// for each node of this tree.<br>
/// This must be the name of a server-only method in the page
/// class that contains this component.
Property OnGetNodeInfo As %ZEN.Datatype.delegator(FORMALSPEC = "*tSC:%Status,&tParameters:%String,pLevel:%Integer,&pHandle:%String,pNodeInfo:%ZEN.Auxiliary.NodeInfo", RETURNTYPE = "%Boolean");

/// Name of Server-side callback method to call to get information
/// for the entire contents of the tree.<br>
/// This is a lower-level callback than the <property>OnGetNodeInfo</property>
/// callback. It lets you define the contents of the entire tree using
/// a multi-dimensional array.<br/>
/// If this is defined then the <property>OnGetNodeInfo</property> callback is not used.<br>
/// This must be the name of a server-only method in the page
/// class that contains this component.<br/>
/// The callback method should be similar to this:
/// <example language="CLS!MEMBER">
/// ClassMethod GetTreeInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status
/// {
/// 	#; top-most nodes are children of 0
/// 	Set pTree(0,"ch",1) = ""
/// 	Set pTree(0,"ch",2) = ""
/// 	Set pTree(0,"ch",3) = ""
///
/// 	#; each node supplies: $LB(caption, value, hasChildren, link, expanded, icon, tooltip, style)
/// 	Set pTree(1) = $LB("Animal",1,1,"",1)
/// 	Set pTree(2) = $LB("Mineral",2,1,"",1)
/// 	Set pTree(3) = $LB("Vegetable",3,1,"",1)
///
/// 	#; child nodes are placed under "ch"
/// 	Set pTree(1,"ch",4) = ""
///
/// 	Set pTree(4) = $LB("Cow",4,0,"",1)
/// 	Quit $$$OK
/// }
/// </example>
Property OnGetTreeInfo As %ZEN.Datatype.delegator(FORMALSPEC = "pRoot:%String,*pTree:%List,&tParameters:%String", RETURNTYPE = "%Status");

/// If defined, and there is no user-defined <method>OnGetNodeInfo</method>
/// callback method, then this is the name of a global that is
/// used to provide the contents of this tree.<br>
/// The global takes the form:<br>
/// ^glvn("A","B") = URL<br>
/// The global subscripts define the node names; The URL value
/// is a link that is used when the user clicks on the node.
Property dataGlobal As %ZEN.Datatype.glvn;

/// defines style sheet used by this component.
XData Style
{
}

/// Return the directory from which built-in images are supplied.
ClassMethod %GetImageDirectory() As %String [ CodeMode = expression ]
{
}

/// Draw HTML for this component.
Method %DrawHTML()
{
}

/// Construct an array that describes the contents of the tree.
/// This is a graph of the form:<br/>
/// pTree(n) = $LB(text,value,haschildren,link,expanded,icon,tooltip,style)<br/>
/// pTree(n,"ch",childn) = ""<br/>
/// Top-most nodes are in:<br/>
/// pTree(0,"ch",topchildn) = ""<br/>
Method %BuildTreeData(ByRef pTree) As %Status [ Internal ]
{
}

/// Draw HTML to display the given tree graph.
Method %DrawTree(ByRef pTree, pLevel As %Integer = 1, pParentNode As %Integer = 0, pStateList As %String = "") [ Internal ]
{
}

/// Draw HTML to display a given node in the tree graph.
/// <var>pState</var> contains state info for each level of the tree:
/// 0 no siblings; 1 prev sibling only; 2 both siblings; 3 next sibling only.
Method %DrawNode(ByRef pTree, pNode As %Integer, pOffset As %Integer, pLevel As %Integer, ByRef pState, pParentNode As %Integer) [ Internal ]
{
}

/// Built-in drag handler for tree component.
/// Let the user drag the selected node.
ClientMethod dragStartHandler(dragData) [ Language = javascript ]
{
}

/// This is a test method that is used to test the dynaTree component.
ClassMethod %TestCallback(pClass As %String, pMethod As %String) [ Internal ]
{
}

/// This callback gets information used to get the contents of the entire
/// tree.<br/>
/// This should return a graph of the form:<br/>
/// pTree(n) = $LB(text,value,link,expanded,icon)<br/>
/// pTree(n,"ch",childno) = ""<br/>
/// Top-most nodes are in:<br/>
/// pTree(0,"ch",topchildno) = ""<br/>
/// The default implementation is to call the page method specified
/// by the <property>OnGetTreeInfo</property> property.<br>
Method %GetTreeInfo(pRoot As %String, Output pTree, ByRef pParms) As %Status [ Internal ]
{
}

/// This callback gets information used to draw the next node within
/// the dynamic tree control.<br>
/// The default implementation is to call the page method specified
/// by the <property>OnGetNodeInfo</property> property.<br>
/// Returns true if there is a node at the current location/level else false.
Method %GetNodeInfo(Output tSC As %Status, pLevel As %Integer, ByRef pHandle As %String, pNodeInfo As %ZEN.Auxiliary.NodeInfo, ByRef pParms) As %Boolean [ Internal ]
{
}

/// This method is used to provide contents of a tree from
/// a user defined data global.
Method %BuildTreeFromGlobal(Output tSC As %Status, ByRef pParams As %String, pLevel As %Integer, ByRef pHandle As %String, pNodeInfo As %ZEN.Auxiliary.NodeInfo) As %Boolean [ Internal, Private ]
{
}

/// Select the given node within the tree.
/// <var>idx</var> is index of node (0 based).
ClientMethod selectItem(idx) [ Language = javascript ]
{
}

/// User clicked on an item.
/// <var>idx</var> is index of node (0 based).
/// <var>level</var> is indentation level of node (0 based); this
/// is passed on to the callback.
ClientMethod itemClicked(idx, level) [ Language = javascript ]
{
}

/// Mouse down handler for nodes.
ClientMethod itemMouseDown(evt, idx) [ Internal, Language = javascript ]
{
}

/// Mouse up handler for nodes.
ClientMethod itemMouseUp(evt) [ Internal, Language = javascript ]
{
}

/// User double-clicked on an item.
ClientMethod itemDblClicked(idx, level) [ Language = javascript ]
{
}

/// User pressed key within a node
ClientMethod itemKeyPress(evt, idx, canExpand) [ Internal, Language = javascript ]
{
}

/// Toggle the current expanded state of a given node within the tree.
/// <var>nodeNo</var> is the index number of the node (0-based).
ClientMethod toggleExpanded(nodeNo) [ Language = javascript ]
{
}

/// This method returns the expanded state of a given nodeNo. true = expanded.
ClientMethod isNodeExpanded(nodeNo) [ Language = javascript ]
{
}

/// Reload the child nodes of the given node.
/// <var>nodeNo</var> is the index number of the node (0-based).<br/>
/// This method does nothing if it called for a leaf node (a node without
/// children).<br/>
/// This method only works when the <property>OnGetTreeInfo</property>
/// callback is used to supply the contents of the tree.
ClientMethod reloadNode(nodeNo) [ Language = javascript ]
{
}

/// Internal method that is used to load a portion of the tree from the server.
Method LoadSubTree(pNodeNo As %Integer, pLevel As %Integer, pValue As %String, pState As %String) [ Internal, ZenMethod ]
{
}

/// Convert the given image url to either a expanded or contracted image.
ClientMethod getExpandoImage(src, expanded) [ Internal, Language = javascript ]
{
}

/// Expand (if flag is true) or contract (if flag is false) all
/// nodes within the true;
/// Does not invoke any callback methods.
ClientMethod expandAll(flag) [ Language = javascript ]
{
}

/// Set the display value of a given node.
/// <var>nodeNo</var> is the index number of the node (0-based).
ClientMethod setNodeText(nodeNo, text) [ Language = javascript ]
{
}

/// Get the display value of a given node.
/// <var>nodeNo</var> is the index number of the node (0-based).
/// If <var>nodeNo</var> is not provided use the current selected noded.
ClientMethod getNodeText(nodeNo) [ Language = javascript ]
{
}

/// Return the index number (0-based) of the parent of the specified node.
/// <var>nodeNo</var> is the index number of the node (0-based).
ClientMethod getNodeParent(nodeNo) [ Language = javascript ]
{
}

/// Set the logical value of a given node.
/// <var>nodeNo</var> is the index number of the node (0-based).
ClientMethod setNodeValue(nodeNo, value) [ Language = javascript ]
{
}

/// Get the logical value of the current selected node.
ClientMethod getValue() [ Language = javascript ]
{
}

/// Get the logical value of a given node.
/// <var>nodeNo</var> is the index number of the node (0-based).
/// If <var>nodeNo</var> is not provided use the current selected noded.
ClientMethod getNodeValue(nodeNo) [ Language = javascript ]
{
}

/// Return the index number (0-based) of the current node.
/// Return -1 if no node is selected.
ClientMethod getSelectedIndex() [ Language = javascript ]
{
}

/// Set the css style for of a given node.
/// <var>style</var> should contain css style declarations
/// (e.g., 'color: red;')<br/>
/// <var>nodeNo</var> is the index number of the node (0-based).
ClientMethod setNodeStyle(nodeNo, style) [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
