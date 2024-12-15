/// This dialog lets the user create or edit an Advanced filter definition for a DeepSee pivot.<br/>
/// This can also be used to create or edit a Named Filter for a DeepSee Subject Area.
Class %DeepSee.UI.Dialog.AdvancedFilter Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 1;

/// Cube name.
Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

/// Initial filter expression.
Property expression As %ZEN.Datatype.string(ZENURL = "EXPRESSION");

/// List of possible filter (cube element) names (captions).
Property filterNames As %ZEN.Datatype.string;

/// List of possible filter (cube element) values.
Property filterValues As %ZEN.Datatype.string;

/// List of possible filter (cube element) types.
Property filterTypes As %ZEN.Datatype.string;

/// List of possible filter (cube element) subtypes (measures only)
Property filterMsrTypes As %ZEN.Datatype.string;

/// Index of current item.
Property selectedIndex As %ZEN.Datatype.integer;

/// Current search Key
Property searchKey As %ZEN.Datatype.string;

/// If true, this is a Named Filter
Property isNamedFilter As %ZEN.Datatype.boolean(ZENURL = "NAMEDFILTER");

/// For named filters, this is the filter name.
Property filterName As %ZEN.Datatype.string(ZENURL = "FILTERNAME");

XData CSS3Style
{
}

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

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.
ClientMethod ondialogFinish(action) [ Language = javascript ]
{
}

/// Get return value for dialog.
ClientMethod getDialogValue() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// This method recalculates the available filters in this cube, taking into account a search key.
Method GetFiltersBySearchKey() As %Status [ ZenMethod ]
{
}

/// Adjust sizes components on the page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// Return the object graph that describes the filter.
ClientMethod getFilterGraph() [ Language = javascript ]
{
}

ClientMethod renderCommandButtons() [ Internal, Language = javascript ]
{
}

ClientMethod configureCommandButtons(node, graph, undo) [ Internal, Language = javascript ]
{
}

ClientMethod renderCommandsHeader(node, graph) [ Internal, Language = javascript ]
{
}

ClientMethod renderCommandsOperatorPanel(node) [ Internal, Language = javascript ]
{
}

ClientMethod renderCommandsLiteralPanel(node) [ Internal, Language = javascript ]
{
}

ClientMethod renderCommandsMemberPanel(node) [ Internal, Language = javascript ]
{
}

/// User selected a radio button.
ClientMethod rbChanged() [ Internal, Language = javascript ]
{
}

ClientMethod initializeSearchBoxControls(node, member, mbrType) [ Internal, Language = javascript ]
{
}

ClientMethod verifySearchBox() [ Internal, Language = javascript ]
{
}

/// Update controls to match current state.
ClientMethod updateSearchBoxControls() [ Language = javascript ]
{
}

ClientMethod remapQueryToDisplayKey(node) [ Internal, Language = javascript ]
{
}

ClientMethod renderCommandsKeyPanel(node, ruleSearchBox) [ Internal, Language = javascript ]
{
}

/// Update the command panel.
ClientMethod renderCommands() [ Language = javascript ]
{
}

/// Update the help box.
ClientMethod renderHelp() [ Language = javascript ]
{
}

/// Update the expression tree.
ClientMethod renderTree() [ Language = javascript ]
{
}

/// Build index of nodes
/// Set _index and _parent as side effect.
ClientMethod buildNodeIndex(node, parent) [ Language = javascript ]
{
}

/// Get HTML for a node within the expression graph.
ClientMethod renderNode(node, level) [ Language = javascript ]
{
}

/// Get HTML for an operator node within the expression graph;
ClientMethod renderOperatorNode(node) [ Language = javascript ]
{
}

/// Get HTML for a measure operator node within the expression graph;
ClientMethod renderMeasureOperatorNode(node) [ Language = javascript ]
{
}

/// Get HTML for an operator selector the expression graph;
ClientMethod renderOperatorSelector(node) [ Language = javascript ]
{
}

/// Get HTML for a value selector the expression graph;
ClientMethod renderValueNode(node) [ Language = javascript ]
{
}

/// Mouse click on item in diagram.
ClientMethod selectItem(idx) [ Language = javascript ]
{
}

/// Change of search key.
ClientMethod changeSearchKey() [ Language = javascript ]
{
}

/// Change of literal value.
ClientMethod applyLiteral() [ Language = javascript ]
{
}

/// The user has selected a new item in the *member* select list.
ClientMethod changeMember(idx, ctrl) [ Language = javascript ]
{
}

/// Change of key type.
ClientMethod changeKey(idx) [ Language = javascript ]
{
}

/// Change of node type.
ClientMethod changeNode(idx, type, value, text) [ Language = javascript ]
{
}

/// Reset the expression graph.
ClientMethod clearNodes(render) [ Language = javascript ]
{
}

/// Add a new branch.
ClientMethod addBranch() [ Language = javascript ]
{
}

/// Add a new condition.
ClientMethod addCondition() [ Language = javascript ]
{
}

/// Remove the current condition.
ClientMethod removeCondition() [ Language = javascript ]
{
}

/// Convert the expression graph to an MDX clause.<br/>
/// This is used to convert the current graphical expression into the MDX that
/// will be used as a %FILTER clause.
ClientMethod convertToMDX() [ Language = javascript ]
{
}

/// Convert the expression to an MDX clause.
/// Return an object containing: {text, hasSet, levelName}
ClientMethod convertNodeToMDX(node) [ Language = javascript ]
{
}

/// Convert a key value to MDX.
ClientMethod keyToMDX(key) [ Language = javascript ]
{
}

/// Return the initial filter graph for a given cube and MDX expression.<br/>
/// pParameters("cube") = cube name<br/>
/// pParameters("expression") = MDX expression<br/>
Method BuildFilterGraph(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// Convert the given filter expression to a graph.
ClassMethod TEST(pExpression = "", pCube = "") [ Internal ]
{
}

/// Convert the given filter expression to a graph.
ClassMethod %ConvertExpressionToGraph(Output pData, pCubeName As %String, pExpression As %String) As %Status [ Internal ]
{
}

/// Convert the given DeepSee Axis Node to a graph.<br/>
/// <var>pLVN</var> is the name of the local variable in which results are placed.
ClassMethod %ConvertAxisNodeToGraph(pLVN As %String, pCubeName As %String, pNode As %DeepSee.Query.node) As %Status [ Internal ]
{
}

/// Convert a measure search key to a graph. "[Measures].[X].100"<br/>
/// <var>pLVN</var> is the name of the local variable in which results are placed.
ClassMethod %ConvertSearchKeyToGraph(pLVN As %String, pCubeName As %String, pKey As %String) As %Status [ Internal ]
{
}

/// Utility. Get information on the given member spec.<br/>
/// <var>pSpec</var> takes the form: "dim.hier.level.member"<br/>
/// On return, <var>pMemberSpec</var> contains: "dim.hier.level",
/// <var>pMemberCaption</var> contains the caption for the member,
/// <var>pKey</var> contains the key value for the member, and
/// <var>pKeyCaption</var> contains the caption for the member.
ClassMethod %GetSpecInfo(pCubeName As %String, pSpec As %String, Output pMemberSpec As %String, Output pMemberCaption As %String, Output pKey As %String, Output pKeyCaption As %String, Output pIsNot As %Boolean, Output pIsRange As %Boolean) As %Status [ Internal ]
{
}

/// Return the list of members for a given cube and dimension.<br/>
/// pParameters("cube") = cube name<br/>
/// pParameters("dimension") = cube element<br/>
/// pParameters("search") = search key<br/>
Method GetMemberList(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// Return true if it is possible to undo an action
ClientMethod canUndo() [ Language = javascript ]
{
}

/// Undo the most recent change.
ClientMethod undo() [ Language = javascript ]
{
}

ClientMethod clearUndoBuffer() [ Language = javascript ]
{
}

/// Remember the current state in the undo buffer.
ClientMethod addUndoAction() [ Language = javascript ]
{
}

/// Create a clone of the given object.
ClientMethod cloneObject(obj, clone) [ Language = javascript ]
{
}

/// Save a named filter.
ClassMethod SaveNamedFilter(pCube As %String, pFilterName As %String, pTooltip As %String, pSpec As %String) As %String [ ZenMethod ]
{
}

/// Given a complete reference to a key, look up the display text.
ClassMethod LookupMemberByKey(pCubeName = "", pLevelSpec = "", pKey = "") As %String [ ZenMethod ]
{
}

}
