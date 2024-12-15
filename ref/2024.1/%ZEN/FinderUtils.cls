/// This class contains methods that can be used to
/// provide contents for the <class>%ZEN.ComponentEx.finderPane</class> component.
Class %ZEN.FinderUtils Extends %RegisteredObject [ Deprecated, System = 2 ]
{

Parameter DOMAIN = "%ZEN";

/// Search for classes that match the input criteria and return them in
/// an array that can be used by the finder.<br/>
/// The search criteria are passed in the array <var>pParameters</var>.
/// These include:<br/>
/// pParameters("sub") -- include all subclasses of this class, but not the class itself<br/>
/// pParameters("super") -- include this class and all subclasses<br/>
/// pParameters("search") -- only return items that include this as (any) part of the name<br/>
///                       -- the search is case-insensitive<br/>
/// pParameters("system") -- 1 : only find classes whose System flag is set<br/>
///                       -- 0 : only find classes whose System flag is off<br/>
///                       -- otherwise : no filter on system flag<br/>
/// pParameters("percent") -- 1 : only find classes whose name starts with %<br/>
///                        -- 0 : only find classes whose name does not start with %<br/>
///                        -- otherwise : no filter on percent flag<br/>
/// pParameters("product") -- 1 : only find classes that are mapped to a product database, e.g. ENSLIB<br/>
///                        -- 0 : only find classes that are not mapped to a product database<br/>
///                        -- otherwise : no filter on product flag<br/>
/// pParameters("generated") -- 1 : only find classes that are generated<br/>
///                          -- 0 : only find classes that are not generated<br/>
///                          -- otherwise : no filter on generated flag<br/>
/// pParameters("context") -- 1 : only find classes that are either persistent, serial, or datatype, no other classtypes<br/>
///                        -- 0 : only find classes that are not persistent, serial, or datatype<br/>
///                        -- otherwise : no filter on generated flag.
/// 						   note: the value of "context" overrides "persistent" and/or "datatype"<br/>
/// pParameters("abstract") -- 1 : include abstract classes<br/>
///                         -- 0 : skip abstract classes<br/>
///                         -- otherwise : no filter on abstract flag<br/>
/// pParameters("persistent") -- 1 : only find classes whose classtype is persistent<br/>
///                           -- 0 : only find classes whose classtype is not persistent<br/>
///                           -- otherwise : no filter on classtype being persistent<br/>
/// pParameters("datatype") -- 1 : only find classes whose classtype is datatype<br/>
///                         -- 0 : only find classes whose classtype is not datatype<br/>
///                         -- otherwise : no filter on classtype being datatype<br/>
/// pParameters("production") -- 1 : only find production classes<br/>
///                           -- otherwise : no filter on class being a Production<br/>
/// pParameters("sort") -- this can be "name" or "date" or "namecasesensitive", default is "name"
/// <ul><li>"name":<br/>
/// Return the array organized by names (case-insensitive sort!).<br/>
/// This list should be hierarchical by package.</li>
/// <li>"date":<br/>
/// Return items by last modified date (and do not split by package).<br/>
/// Organize dates into the following buckets:<br/>
/// <ul><li>"Today"</li>
/// <li>"Yesterday" (option)</li>
/// <li>"Earlier this week" (option)</li>
/// <li>"Last Week" (the closest Sunday to Saturday period that does not contain Today)</li>
/// <li>"Older than last week"</li></ul>
/// Within each bucket have one level (with complete class name) ordered by modified date.</li>
/// <li>"namecasesensitive":<br/>
/// Return the array organized by names allowing for case-sensitivity.<br/>
/// This list should be hierarchical by name.</li></ul>
/// </li></ul>
ClassMethod %GetClassListArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// Search stored procedures for routine that return result sets and can be used as data source
/// for automated queries and return them in an array that can be used by the finder.<br/>
ClassMethod %GetQueryListArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// Search stored views for routine that return result sets and can be used as data source
/// for automated queries and return them in an array that can be used by the finder.<br/>
ClassMethod %GetViewListArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

ClassMethod sortData(pInputData, %pOutputData, pSort, pDelim)
{
}

/// This method returns true if pClassName is a subclass of pSuperClass
ClassMethod isSubclassOf(pClassName, pSuperClass) As %Boolean [ Internal ]
{
}

ClassMethod mactime(pDateTime As %String = "") As %String
{
}

/// Execute the given class query and return the results in
/// an array that can be used by the finder.<br/>
/// The query must return the following data:<br/>
/// "name" - name of the item.<br/>
/// "value" - id of the item.<br/>
/// "type" - type (extension) of the item.<br/>
/// "date" - last modified date of the item.<br/>
/// <var>pColumns</var> is a $List containing the names of the columns that supply the above data:
/// $LB(name,value,type,date).<br/>
/// <var>pDelim</var> is the delimiter used to separate the name into groups.<br/>
/// The search criteria are passed in the array <var>pParameters</var>.
/// These include:<br/>
/// pParameters("sort") -- this can be "name" or "date", default is "name"<br/>
/// (refer to the <method>%GetClassListArray</method> for details on "sort").
ClassMethod %GetArrayForQuery(pQueryClass As %String, pQueryName As %String, pColumns As %List, pDelim As %String = ".", ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

/// This method returns array of namespaces for finderDialog
ClassMethod %GetArrayForNamespaces(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

ClassMethod evaluateExpression(pExpression, %pOneRow)
{
}

}
