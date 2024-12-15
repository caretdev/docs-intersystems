/// This component is a subclass of the ZEN finderPane taylored for ISC's System Management Portal.
Class %CSP.UI.Component.SMPFinderPane Extends %ZEN.ComponentEx.finderPane [ System = 3 ]
{

/// The XML namespace for this component.
Parameter NAMESPACE = "http://www.intersystems.com/zen/hs";

/// If true, then the include files generated for this component, are placed in the
/// common /csp/broker directory and not the local /csp/*namespace* directory.<br/>
/// This is intended for use with packages that are mapped so as to be visible to every namespace.<br/>
/// All Zen classes within the same package must have the same value for this parameter.
/// It is the developer's responsibility to ensure this.
Parameter USECOMMONDIRECTORY As BOOLEAN = 1;

/// defines style sheet used by this component
XData Style
{
}

/// Return the HTML to render one column of the finder.<br/>
/// <var>graph</var> is the object graph describing the contents of the finder.<br/>
/// <var>column</var> is the column number to render (0 based).<br/>
/// <var>selectedList</var> is an array containing of the selected item for each column.
ClientMethod getFinderColumnHTML(graph, column, selectedList) [ Language = javascript ]
{
}

/// Return HTML for rows within list mode.
/// <var>array</array> is the data model to display.<br/>
/// <var>selectedList</array> is an array containing the selected list.<br/>
/// <var>level</array> is how many levels we are nested.<br/>
/// <var>parentIdx</array> an array of indexs for all levels above this one.<br/>
ClientMethod getListRowsHTML(array, selectedList, level, parentIdx) [ Language = javascript ]
{
}

}
