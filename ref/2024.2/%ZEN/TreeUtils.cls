/// This class contains methods that can be used to
/// construct common tree structures for use with the
/// <class>%ZEN.Component.dynaTree</class> component.
Class %ZEN.TreeUtils Extends %RegisteredObject [ Deprecated, System = 2 ]
{

Parameter DOMAIN = "%ZEN";

/// Create a tree based on the packages and classes visible in the
/// current namespace.<br/>
/// Each node has a value with a ".pkg" or ".cls" suffix.<br/>
/// <var>pRoot</var> is "" when called for the top-level. Otherwise
/// it contains the package name of the parent node.<br/>
/// <var>pParms</var> can contain the following:<br/>
/// pParms("system") = 0 | 1  control whether % items are displayed.<br/>
ClassMethod ClassTree(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Return the set of properties within a given class.
ClassMethod PropertyTree(pRoot As %String, Output pTree, ByRef pParms) As %Status
{
}

/// Create a tree containing time periods.<br/>
/// The contents of the tree are specified by values within the <var>pParms</var>
/// array:<br/>
/// pParms("spec") - A comma-delimited list that controls the hierarchy of time
/// periods. This can contain Y(ear), Q(uarter), M(onth), W(eek), D(ay). For example:
/// "Y,Q,M" will show years, quarters, and months.
/// <br/>
/// The time period of the tree can be controlled using:<br/>
/// pParms("startYear") - starting year for year periods (default is current year)<br/>
/// pParms("endYear") - end year for year periods (default is startYear)<br/>
/// pParms("startMonth") - starting month (1-12) for month periods (default is 1)<br/>
/// pParms("endMonth") - ending month (1-12) for month periods (default is 12)<br/>
/// pParms("startQuarter") - starting quarter (1-4) for quarter periods (default is 1)<br/>
/// pParms("endQuarter") - ending quarter (1-4) for quarter periods (default is 4)<br/>
/// pParms("startWeek") - starting week (1-52) for week periods (default is 1)<br/>
/// pParms("endWeek") - ending week (1-52) for week periods (default is 52)<br/>
/// pParms("startDay") - starting day for day periods (default is 1)<br/>
/// pParms("endDay") - ending day for day periods. Interpretation of this value depends on how days are displayed (yearly, weekly, etc.) <br/>
/// <br/>
/// When years are not displayed, the startYear is used to provide the
/// year portion of date values.<br/>
/// The logical value of nodes an indicator followed ODBC format date:<br/>
/// "Y 2007", "M 2007-03", etc.<br/>
/// For weeks and quarters the starting month or day of the period is used.
/// <br/>
/// Weeks are not supported at this time.
ClassMethod TimePeriodTree(pRoot As %String, Output pTree, ByRef pParms, pTopNode As %Integer = 0) As %Status
{
}

/// This is an internal method used for testing.<br/>
/// Take a $List containing a nested set of node names
/// and create a tree from it that
/// can be used as an AXIS definition:<br/>
/// The list is of the form: $LB(parent,children,parent,children)
/// where *children* is a list of child nodes, if any.
/// For example:<br/>
/// $LB("Node1","Node2",)<br/>
/// $LB("Fruit",$LB("Apple","Banana"))
ClassMethod %BuildTreeFromList(pList As %List, ByRef pTree, pTopNode As %Integer = 0) [ Internal ]
{
}

}
