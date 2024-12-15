/// Provide interface to globals
Class %Studio.Global Extends %RegisteredObject [ System = 3 ]
{

/// Kill a global node.
/// You pass it the name of the node and a flag to say if you want to kill subscripts
/// or just this node and leave any subscripts.
ClassMethod Kill(Node As %String, KillSubs As %Boolean = 0) As %Status
{
}

/// Set a global node.
/// You pass it the name of the node to set, along with the value to set and
/// the values format and it sets this node.
ClassMethod Set(Node As %String, %Value As %String, ValFormat As %Integer) As %Status
{
}

/// Enumarate this global node and returning the $order items below this
/// It takes the name of a global or local array to inspect including and initial subscripts.
/// It returns the subscript name, the value and the $data of this node. Then it also returns
/// the format of both the subscript and the data:<ul>
/// <li>1 - String format, this is the value of the value/subscript unaltered</li>
/// <li>2 - ObjectScript format, the value has been converted into the ObjectScript representation for easy viewing,
/// for example instead of showing the binary value a list is displayed as '$LB(1,"test")'</li>
/// <li>3 - Not editable. Due to issues with the length of this data not all of it can be displayed so a portion is
/// displayed</li></ul>
/// The <var>Pattern</var> parameter is supplied then it pattern matches on the data of each node and only display
/// data that matches this pattern. The pattern match works the same as the Studio open dialog pattern matching and support
/// both '*' which matches any number of characters and '?' which matches a single character operators. For example
/// 'a*b' will match any string that starts with 'a' and ends with 'b'. If <var>Format</var> is 0 then do not format the
/// resultset output.
ClassMethod GlobalListClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = GlobalListExecute ]
{
}

ClassMethod GlobalListExecute(ByRef qHandle As %Binary, Node As %String, Pattern As %String = "", Format As %Boolean = 1) As %Status
{
}

ClassMethod GlobalListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

ClassMethod GlobalListFetchRows(ByRef qHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer = 0) As %Status
{
}

/// Format the 'value' so it is readable and return the type of format we have used.
ClassMethod format(value As %String, ByRef output As %String, format As %Boolean = 1) As %Integer
{
}

ClassMethod decode(node As %String, ByRef output As %String) As %Integer
{
}

/// Passed a pattern match this returns an COS style pattern and a start and stop point.
ClassMethod genPattern(Spec As %String, ByRef AS As %String, ByRef AE As %String, ByRef Pattern As %String) [ Private ]
{
}

ClassMethod LocalListClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = GlobalListExecute ]
{
}

ClassMethod LocalListExecute(ByRef qHandle As %Binary, Pid As %String, Node As %String, Pattern As %String = "", Format As %Boolean = 1) As %Status
{
}

ClassMethod LocalListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

ClassMethod LocalListFetchRows(ByRef qHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

}
