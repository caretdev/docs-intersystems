Class %Dictionary.ClassDefinitionQuery [ Abstract, System = 2 ]
{

/// The <b>ClassIndex</b> query provides a summary of information about classes contained in the Class Index
ClassMethod ClassIndexExecute(ByRef QHandle As %Binary) As %Status
{
}

/// <b>Fetch</b> returns the next row in the query.
ClassMethod ClassIndexFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

/// <b>RoutineListFetchRows</b> returns the next <var>FetchCount</var> rows in the query.
ClassMethod ClassIndexFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status
{
}

ClassMethod ClassIndexClose(QHandle As %Binary) As %Status
{
}

/// The <b>Summary</b> query provides a summary of information about classes contained in the
/// <i>Class Dictionary</i>.
ClassMethod SummaryExecute(ByRef QHandle As %Binary) As %Status
{
}

/// <b>Fetch</b> returns the next row in the query.
ClassMethod SummaryFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

/// <b>RoutineListFetchRows</b> returns the next <var>FetchCount</var> rows in the query.
ClassMethod SummaryFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status
{
}

ClassMethod SummaryClose(QHandle As %Binary) As %Status
{
}

/// The <b>FormWizard</b> query provides a list of persistent system classes and all others along with just their name
ClassMethod FormWizardExecute(ByRef QHandle As %Binary, classtype As %String = "") As %Status
{
}

/// <b>Fetch</b> returns the next row in the query.
ClassMethod FormWizardFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

/// <b>RoutineListFetchRows</b> returns the next <var>FetchCount</var> rows in the query.
ClassMethod FormWizardFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status
{
}

ClassMethod FormWizardClose(QHandle As %Binary) As %Status
{
}

/// The <b>SubclassOf</b> query produces a list of classes that are subclasses of the
/// <var>super</var> class starting the search at <var>initval</var>. For example this
/// allows you to find all the subclasses of %CSP.Page very easily.
ClassMethod SubclassOfExecute(ByRef QHandle As %Binary, super As %String, initval As %String = "") As %Status
{
}

ClassMethod SubclassOfClose(QHandle As %Binary) As %Status
{
}

/// <b>Fetch</b> returns the next row in the query.
ClassMethod SubclassOfFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

/// <b>SubclassOfFetchRows</b> returns the next <var>FetchCount</var> rows in the query.
ClassMethod SubclassOfFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status
{
}

/// The <b>SuperclassOf</b> query produces a list of classes that are superclasses of the
/// <var>sub</var> class starting the search at <var>initval</var>.
ClassMethod SuperclassOfExecute(ByRef QHandle As %Binary, sub As %String, initval As %String = "") As %Status
{
}

ClassMethod SuperclassOfClose(QHandle As %Binary) As %Status
{
}

/// <b>Fetch</b> returns the next row in the query.
ClassMethod SuperclassOfFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

/// <b>SuperclassOfFetchRows</b> returns the next <var>FetchCount</var> rows in the query.
ClassMethod SuperclassOfFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status
{
}

/// Return a list of members of this specific <var>kind</var> which is one of the following:<ul>
/// <li>a - Property</li>
/// <li>f - Foreign key</li>
/// <li>i - Index</li>
/// <li>j - Projection</li>
/// <li>m - Method</li>
/// <li>n - Constraint</li>
/// <li>o - System method</li>
/// <li>p - Parameter</li>
/// <li>q - Query</li>
/// <li>s - Storage defintion</li>
/// <li>t - Trigger</li>
/// <li>u - Comment text block</li>
/// <li>x - XData</li>
/// </ul>
ClassMethod MemberSummaryExecute(ByRef QHandle As %Binary, classname As %String, kind As %String) As %Status
{
}

ClassMethod MemberSummaryFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod MemberSummaryClose(QHandle As %Binary) As %Status
{
}

}
