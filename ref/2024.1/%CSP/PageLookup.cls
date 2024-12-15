/// CSP page that provides a standard lookup for wizard-generated forms.
///
/// It expects the following input:
/// <p>
/// <table cols="2" cellpadding="5">
/// <tr><td><b>CLASSNAME</b></td><td>Name of class to perform lookup on.</td></tr>
/// <tr><td><b>OBJID</b></td><td>ID of current instance.</td></tr>
/// <tr><td><b>SELECT</b></td><td>A comma-delimited list of fields to display in the search result table.   Each field is of the form 'property alias|desc' where alias and |desc are optional.  If not specified, the WHERE list is used as the SELECT list.</td></tr>
/// <tr><td><b>WHERE</b></td><td>A comma-delimited list of fields to search on.  Each field is of the form 'property alias|desc' where alias and |desc are optional. </td></tr>
/// <tr><td><b>ORDER</b></td><td>A comma-delimited list of fields used to sort the search results.  Each field is of the form 'property |desc' where |desc is optional.</td></tr>
/// <tr><td><b>MAXROWS</b></td><td>Maximum rows to display; if missing don't execute query.</td></tr>
/// <tr><td><b>TARGET</b></td><td>URL of page to return to with results.</td></tr>
/// <tr><td><b>CAPTION</b></td><td>Caption for search window.</td></tr>
/// <tr><td><b>OPTIONS</b></td><td>Comma separated list of feature codes. These include popup, create, and clear.</td></tr>
/// <tr><td><b>OBJIDATTR</b></td><td>The name of the OBJID attribute for the associated form.</td></tr>
/// </table></p>
/// <p>Note: For range operations the value in the WHERE parameter contains two values delimited by &amp;.</p>
Class %CSP.PageLookup Extends %CSP.Page [ Not ProcedureBlock, System = 3 ]
{

/// Make default charset for the page UTF-8.
Parameter CHARSET = "utf-8";

/// Override PRIVATE from %CSP.Page
Parameter PRIVATE = 1;

/// Override ENCODED from %CSP.Page
Parameter ENCODED = 1;

/// Caption displayed if none specified (for normal mode).
Parameter DEFAULTCAPTION = "IRIS Search";

/// List of values displayed in search predicate combo box.
Parameter PREDICATELIST = "equals,not equal to,starts with,between,less than,greater than,contains,select";

/// No matching items message.
Parameter NOMATCH = "No matching items found.";

/// Caption for Search Button.
Parameter SEARCHBTN = "Search";

/// Caption for Cancel Button.
Parameter CANCELBTN = "Cancel";

/// Caption for Clear Button.
Parameter CLEARBTN = "Clear";

/// First half of &quot;Find all&quot; message.
Parameter FINDMSG1 = "Find all instances of ";

/// Second half of &quot;Find all&quot; message.
Parameter FINDMSG2 = " that meet the following conditions:";

/// First half of &quot;Items Found&quot; message.
Parameter FOUNDMSG1;

/// Second half of &quot;Items Found&quot; message.
Parameter FOUNDMSG2 = " matching item(s) found.";

/// First half of &quot;Items Shown&quot; message.
Parameter SHOWNMSG1 = "The first ";

/// Second half of &quot;Items Shown&quot; message.
Parameter SHOWNMSG2 = " are displayed below:";

/// Error message to display when no criteria are specified
/// for a search and the search button is pressed.
Parameter NOCRITERIA = "At least one search condition must be specified.  Search not executed.";

/// URL Name of this class
ClassMethod PageName() As %String [ CodeMode = generator ]
{
}

/// Event handler for <b>PAGE</b> event: this is invoked in order to
/// display a csp page.
ClassMethod OnPage() As %Status [ Final ]
{
}

/// Returns the type (SQL Category) of property <VAR>prop</VAR> for class <VAR>classname</VAR>.
ClassMethod GetPropType(classname As %String, prop As %String) As %List [ Final ]
{
}

/// Returns the SQL name of property <VAR>prop</VAR> for class <VAR>classname</VAR>
/// in <var>field</var>.
ClassMethod GetPropSqlName(classname As %String, prop As %String, ByRef column As %String) As %Status [ Final ]
{
}

/// Display an error message when search criteria must be specified
/// before a search is requested (OPTIONS=CriteriaRequired) and no criteria are specified.
ClassMethod ShowNoCriteria() [ Private ]
{
}

/// Display the client scripts for the lookup page.
/// <p>This has to be called within the HEAD section of the document.
ClassMethod ShowScripts() [ Private ]
{
}

/// Display the HTML Style Sheet for the lookup page.
/// <p>This has to be called within the HEAD section of the document.
ClassMethod ShowStyleSheet() [ Private ]
{
}

/// Display the title for a lookup page.
ClassMethod ShowTitle() [ Private ]
{
}

/// Display the caption for a lookup page.
ClassMethod ShowCaption() [ Private ]
{
}

/// Display the criteria form for a lookup page.
/// <p><VAR>where</VAR> is $list of criteria, each element is $LB(name,pred,val,alias)
/// <p><VAR>select</VAR> is $list of fields that can be sorted on
/// <p><VAR>currval</VAR> is current sort field
ClassMethod ShowForm(classname As %String, where As %List, select As %List, currval As %String) [ Private ]
{
}

/// Display the criteria form for a lookup page.
/// <p><VAR>where</VAR> is $list of criteria, each element is $LB(name,pred,val...)
ClassMethod ShowCriteria(classname As %String, where As %List) [ Private ]
{
}

/// Display a list of predicates in a SELECT box.
ClassMethod ShowPredicates(name As %String, pred As %String, showOptions As %Boolean) [ Private ]
{
}

/// Display the choices for a select predicate.
ClassMethod ShowSelectChoices(classname As %String, name As %String, initval As %String, pred As %String) [ Private, ProcedureBlock = 1 ]
{
}

/// Display a choice option.
ClassMethod ShowOneChoice(val As %String, id As %String, initval As %String) [ Private, ProcedureBlock = 1 ]
{
}

/// Display the sort options for a lookup page.
/// <p><VAR>select</VAR> is a list of selected fields.
ClassMethod ShowSort(select As %List, currval As %String) [ Private ]
{
}

/// Display the results of the lookup in an HTML table.
ClassMethod ShowResults(classname As %String, select As %List, where As %List, sort As %List, maxrows As %Integer, showcount As %Boolean = 1, idname As %String = "") As %Status [ Private ]
{
}

/// Constructs a SELECT statement for the property list <VAR>proplist</VAR>.
ClassMethod BuildSelectStatement(class As %String, proplist As %List, ByRef statement As %String, getcount As %Boolean = 0, idname As %String = "", select As %String = "SELECT", Output idfield As %Integer) As %Status
{
}

/// Constructs a query using the input values, opens a <CLASS>%ResultSet</CLASS> object
/// using this query and returns it via <VAR>resultset</VAR>.
/// <p>
/// <dl>
/// <dt><VAR>class</VAR></dt>
/// <dd>The name of the class to perform the lookup on.</dd>
/// <dt><VAR>restrict</VAR></dt>
/// <dd>A list of restrictions as $lb(property,value).</dd>
/// <dt><VAR>return</VAR></dt>
/// <dd>A $list of properties to return in the resultset.</dd>
/// <dt><VAR>orderby</VAR></dt>
/// <dd>A list of $lb(property,ASC|DESC) that specify the order of the result set.</dd>
/// <dt><VAR>getcount</VAR></dt>
/// <dd>If true, the query should fetch the number of rows in the result.</dd>
/// <dt><VAR>resultset</VAR></dt>
/// <dd>Returns a <CLASS>%ResultSet</CLASS> object by reference.</dd>
/// <dt><VAR>rcount</VAR></dt>
/// <dd>Returns number of selected rows by reference. -1 indicates that the row count is in column 1 of the result set.</dd>
/// </dl></p>
/// <p>Returns a <CLASS>%Status</CLASS> indicating success or failure.</p>
ClassMethod CreateResultSet(class As %String, restrict As %List, return As %List, orderby As %List, getcount As %Boolean, ByRef resultset As %ResultSet, ByRef rcount As %Integer, idname As %String = "", ByRef idfield As %Integer) As %Status
{
}

}
