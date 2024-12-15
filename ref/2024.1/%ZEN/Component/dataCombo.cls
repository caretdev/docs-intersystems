///  A <class>dataCombo</class> is a specialized type of <class>abstractComboBox</class> that
///  presents the user with a set of options that are provided by querying the database.<br>
///  <br>
///  <div style="font-weight: bold;">Contents of the dataCombo Dropdown</div>
///  The contents of the <class>dataCombo</class> dropdown are provided by
///  creating, executing, and fetching from a <class>%ResultSet</class> object on the server.<br/>
///  Initially the contents of the dropdown are empty until the user
///  causes the dropdown to appear at which point a call to the server is made to fetch the dropdown contents.
///  You can change this behavior by setting the <property>cached</property> property.<br/>
///  You can specify how this <class>%ResultSet</class> object is created using the properties
///  inherited from the <class>querySource</class> class.<br>
///  The number of columns returned by the <class>%ResultSet</class> determines
///  what is displayed within the dropdown list in the following way:
///  <ul>
///  <li>If the <class>%ResultSet</class> has one column, then the contents of this
///  column are used as both the logical and display values within the dropdown.</li>
///  <li>If the <class>%ResultSet</class> has two (or more) columns, then the contents of the
///  first column supply the logical value and the contents of the second
///  column supply the display values.
///  You can change which columns are used to provide the logical and display values
///  using the <property>valueColumn</property> and <property>choiceColumn</property> properties.</li>
///  <li>If the <class>%ResultSet</class> has more than two columns, then you can use
///  the <property>displayColumns</property> and <property>columnHeaders</property>
///  properties to specify that the dropdown should display multiple columns (only one column will
///  be used for a display value).</li>
///  </ul>
///  <br>
///  <div style="font-weight: bold;">Logical and Display Values</div>
///  A combobox has two current values: a logical value (its internal value returned by the <method>getValue</method> method), and a display value (the value displayed to the user). (In some cases, the logical and display values may be the same).<br>
///  Unlike a traditional HTML select control, the ZEN dataCombo does not contain every possible logical/display value within its dropdown list. Instead it constructs the contents of its dropdown list on demand.
///  This behavior makes it much better suited for database applications (where the set of possible values can be long and unwieldy).<br>
///  When an application sets the value of a dataCombo control, it sets the
///  <em>logical</em> value of the control. Internally, the dataCombo tries to find the display value that best matches this logical value. On the server, this works by executing the SQL statement defined
///  by the <property>sqlLookup</property> property of the dataCombo.<br>
///  On the client, the dataCombo first looks for a match for a given logical value within
///  its dropdown cache. If it does not find a match, then it executes a server method to execute the <property>sqlLookup</property> query.<br>
///  For example: suppose we want to define a dataCombo to show a set of Customer names; the display value will be Name while the logical value is the ID of the Customer.
///  To do this we define a dataCombo using 2 SQL statements:
///  <example language="html">
///  <dataCombo id="MyCombo"
///  		sql="SELECT ID,Name FROM MyApp.Customer WHERE Name %STARTSWITH ? ORDER BY Name"
///  		sqlLookup="SELECT Name FROM MyApp.Customer WHERE ID = ?"
///  		editable="true"
///  		searchKeyLen="10"
///  	/>
///  </example>
///  This does the following:
///  <ol>
///  <li>The query defined by <property>sql</property> is called when the dropDown list is displayed. It provides a set of logical (ID) and display (Name) values. The ? parameter is supplied by the contents of the combobox text area at the time the dropdown appears (up to the first 10 characters are used, as specified by <property>searchKeyLen</property>). The dataCombo remembers the results of the last query it ran in a local cache.</li>
///  <li>The query defined by <property>sqlLookup</property> is used to find a specific display value for a specific logical value. The ? in this case is a logical value. This query should only return one row.</li>
///  </ol>
///  If, at run-time, the application tries to set the logical value of this combobox, then (if the answer is not in the cache) the <property>sqlLookup</property> query will be executed.<br>
///  <br>
///  <div style="font-weight: bold;">Query Parameters</div>
///  The query used to provide the contents of the dropdown list may contain
///  one or more run-time ? parameters (e.g., WHERE Name %STARTSWITH ?). If this
///  is the case, the values for query parameters are provided as follows:
///  <ol>
///  <li>The <class>dataCombo</class> can define a <property>parameters</property> list.
///  The values of these parameters are used as query parameters when
///  executing the query to fill the dropdown list. The parameter values will replace
///  ? parameters in the order in which they appear in the SQL query.<br/>
///  It is possible to modify the values of these parameters
///  within client code, if desired. The application should call the dataCombo's
///  <method>clearCache</method> in this case to make sure that the dropdown query
///  is re-executed with the new values.</li>
///  <li>If the <property>searchKeyLen</property> property is set to a non-zero value,
///  <em>and</em> the dataCombo is editable, then the current contents (the first
///  <property>searchKeyLen</property> characters) of the combo
///  input box are used as the value for the first query parameter. (first
///  ? appearing within the query).
///  In this case, additional members of the <property>parameters</property> list are treated
///  as if they start from the second position within the list (the first being the search key).
///  Any additional ? parameters within the SQL are provided from the <property>parameters</property>
///  list, with one exception: if any parameter value is equal to "?", then the
///  current search key value (i.e., the value used for the first parameter) will
///  also be used for this query parameter.
///  </li>
///  </ol>
Class %ZEN.Component.dataCombo Extends (abstractComboBox, querySource) [ Deprecated, Inheritance = right, System = 3 ]
{

Parameter DOMAIN = "%ZEN";

///  Indicates that this combobox should cache its dropdown contents.
Parameter USECACHEDIV = 1;

///  If true (the default), then display multiple columns in the drop
///  down box if the result set contains more than 2 columns.
Property multiColumn As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

///  If there are multiple data columns displayed within the dropdown list
///  this is the column number (1-based) of the column that will provide the display
///  value for this control.<br>
///  If this value is greater than the number of columns in the query
///  then the second column will be used.
Property choiceColumn As %ZEN.Datatype.integer(MINVAL = 1, ZENSETTING = 0) [ InitialExpression = 2 ];

///  If there are multiple data columns displayed in the dropdown list
///  this is the column number (1-based) of the column that will provide the logical
///  value for this control.<br>
///  If this value is greater than the number of columns in the query
///  then the first column will be used.
Property valueColumn As %ZEN.Datatype.integer(MINVAL = 1, ZENSETTING = 0) [ InitialExpression = 1 ];

///  If there are multiple data columns displayed in the dropdown list,
///  this optional property defines a comma-delimited list of the column numbers
///  of the column that should be displayed.
Property displayColumns As %ZEN.Datatype.csv(ZENSETTING = 0);

///  If defined, this is a comma-delimited list of column
///  headers displayed in the dropdown list.
Property columnHeaders As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

///  Indicates how display values should be rendered:<br>
///  If <property>contentType</property> is "text" (the default) then the display values
///  will be HTML-escaped before being rendered.<br>
///  If <property>contentType</property> is "html" then the display values
///  will not be HTML-escaped before being rendered.
///  Use this when your display values contain HTML markup that you do not want escaped.<br>
Property contentType As %ZEN.Datatype.string(VALUELIST = ",text,html") [ InitialExpression = "text" ];

///  Optional.
///  If there are multiple data columns displayed in the dropdown list
///  this is the comma-delimited (1-based) list of the column numbers that will provide additional auxiliary
///  values for this control.<br>
///  This provides a way to supply an additional value that is not
///  the display or logical value.<br>
///  If this value is not a valid column number, then no auxiliary data will be provided.
Property auxColumn As %ZEN.Datatype.string [ InitialExpression = "1" ];

///  If non-zero, this is the maximum number of search characters
///  taken from the combo input box and passed as a parameter to
///  the query (defined by <property>sql</property> that provides the contents of the dropdown box.<br>
///  If zero, then the contents of the input box are not used as a parameter.
Property searchKeyLen As %ZEN.Datatype.integer(MINVAL = 0) [ InitialExpression = 0 ];

///  (optional) SQL statement that, given a value, finds a display
///  value to show in the combo box. If present, this is used
///  to find a display value for a given logical value.<br>
///  The value of this property should be an SQL statement that
///  returns a single row containing a display value for a given logical value.
///  When this query is executed, a logical value is provided as a query
///  input parameter (i.e., as a ? within the SQL statement.<br>
///  For example:<br>
///  <example language="html">
///  sqlLookup="SELECT Name FROM MyApp.MyTable WHERE ID = ?"
///  </example>
Property sqlLookup As %ZEN.Datatype.sql(ZENSETTING = 0);

///  Server-side diagnostic flag. If true, display the query used
///  to get data for the dropdown.<br/>
///  This is an encrypted value and cannot be set on the client.
Property showQuery As %ZEN.Datatype.boolean(ZENENCRYPT = 1, ZENEXPRESSION = 1) [ InitialExpression = 0 ];

///  If true (the default), insert an extra row with the value of <property>emptyText</property>
///  at the top of the dropdown, unless <property>required</property> is true.
Property showEmpty As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

///  The text to be displayed in the "empty" item displayed if
///  <property>showEmpty</property> is true. The default is "".
Property emptyText As %ZEN.Datatype.caption;

///  If true (the default is false) then the following behavior occurs:
///  <ol>
///  <li>When the page is first displayed, a query is executed to fetch the initial contents of the dropdown. The <property>itemCount</property> property
///  will be set to the number of items within the dropdown.</li>
///  <li>The client will use these results instead of going back to the server to fetch the contents of the dropdown.</li>
///  </ol>
///  The <method>clearCache</method will clear the dropdown cache, so will
///  modifying the search parameters for the query.
Property cached As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

///  If this is set true and this dataCombo is bound to a data controller,
///  then the contents of this combo box will be cleared whenever a new
///  instance is loaded into the controller.
Property clearOnLoad As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

///  Internal property<br>
///  client flag used to track if data for the
///  dropdown has been loaded.
Property dataLoaded As %ZEN.Datatype.boolean(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0, Internal ];

///  User-defined list of query parameters.<br>
///  These values are passed on
///  to the user callback function that provides the query for this component
///  in order to provide values for any run-time query parameters.
Property parameters As list Of %ZEN.Auxiliary.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

///  A list of conditions. These are special expression objects that
///  are evaluated to add data-dependent styles to the dataCombo.
Property conditions As list Of %ZEN.Auxiliary.condition(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE");

///  Localized "loading" message displayed by control.<br>
///  This message is temporarily displayed while a server-side query is running.
Property loadingMessage As %ZEN.Datatype.caption;

///  Internal property.<br>
///  Used for bound dataCombo controls.
Property modelClass As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

///  onshowDropdown event handler:
///  This event is fired just before the dropdown is displayed.
///  If the event handler returns a value, then this value is used as
///  the filter value for the dropdown query instead of the value typed into
///  the input box.
Property onshowDropdown As %ZEN.Datatype.eventHandler;

///  Number of items in the drop down.<br>
///  Note that this value is set as a side effect of populating the
///  dropdown list. When a dataCombo is first displayed, it typically
///  has no entries in its dropdown list until the user causes the dropdown
///  to appear. After this, <property>itemCount</property> will be set to the
///  current number of items in the dropdown.<br>
///  If you set the <property>cached</property> to true, then the dropdown
///  list will be populated when the control is initially displayed and <property>itemCount</property>
///  will be set. Note that in this case, the value is set <i>after</i> the page's %OnAfterCreatePage
///  callback method is invoked.
Property itemCount As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0 ];

Method %DrawHTML()
{
}

///  This method fills in reasonable default values for
///  this control. Used by tools (such as Control Tester) to
///  dynamically create controls.
Method %SetDefaultValues()
{
}

///  Lookup up the display value for the combobox given
///  a logical value.<br>
///  This is called when the control is initially drawn.
Method %GetDisplayValue(pValue As %String) As %String
{
}

///  If implemented, allow control to provide initial contents of cache div.
Method %OnDrawCacheDiv() As %Boolean [ Internal ]
{
}

///  Internal method.<br>
///  Server-side method to provide contents of the list box.
///  This is called from the client.
Method %DrawDropDownContents(searchParm As %String, Output pCount As %Integer) As %Status [ Internal ]
{
}

///  Internal method.<br>
///  Server-side method to load contents of the drop down box
///  by executing query associated with this control.
///  If <var>cached</var>, load contents into cache div
Method LoadDropDownContents(searchParm As %String, cached As %Boolean = 0) [ Internal, ZenMethod ]
{
}

///  Execute the server-side associated with this dataCombo
///  using <var>param</var> as an input parameter.<br>
///  Note: the results of running this query are not displayed,
///  instead the results are written to the cache div element maintained
///  by the dataCombo.<br>
///  The searchKeyLen property is used to truncate the
///  value of <var>param</var>.<br>
///  The query is executed asynchronously, so results may not be available
///  immediately.
ClientMethod executeQuery(param) [ Language = javascript ]
{
}

///  Internal method.<br>
///  Create contents of drop down box using DHTML.
///  If <var>loadOnly</var> is defined and true, then
///  load the contents into the cached div, but do not show.
ClientMethod renderDropdown() [ Internal, Language = javascript ]
{
}

///  Internal method.<br>
///  Create contents of drop down box using DHTML.
///  <var>value</var> is used as search filter.
///  If <var>show</var> is false, then
///  load the contents into the cached div, but do not show.
ClientMethod loadDropdown(value, show) [ Internal, Language = javascript ]
{
}

///  Clears any cached data held by this control.
///  This will force the dropdown to re-execute its query the next time
///  the dropdown is displayed.
ClientMethod clearCache() [ Language = javascript ]
{
}

///  Return the current number of items within in the dropdown list.<br>
ClientMethod getOptionCount() [ Language = javascript ]
{
}

///  Return the logical value of the given item (0-based) in the dropdown list.<br>
ClientMethod getOptionValue(idx) [ Language = javascript ]
{
}

///  Return the display value for the given item (0-based) in the dropdown list.<br>
ClientMethod getOptionText(idx) [ Language = javascript ]
{
}

///  Return the auxiliary value for the given item (0-based) in the dropdown list.<br>
ClientMethod getOptionAux(idx) [ Language = javascript ]
{
}

///  Return the current auxiliary value (if any) for the dropdown list.<br>
ClientMethod getAuxValue() [ Language = javascript ]
{
}

///  Given a logical value, lookup the display value within the current set of
///  options. Returns null if no match is found.<br>
///  Subclasses may override this to add additional lookup behavior.
ClientMethod findDisplayValue(value) [ Language = javascript ]
{
}

///  Internal method.<br>
///  Server-side method to find a display value for a logical value
///  by executing the sqlLookup query associated with this control.
Method LookupDisplayValue(value As %String) As %String [ Internal, ZenMethod ]
{
}

///  User has selected an item in the DropDown box.
///  If <var>show</var> is true, make item visible.
///  If <var>update</var> is true, update value of control.
ClientMethod selectItem(idx, show, update) [ Language = javascript ]
{
}

///  Stores the style for trEl, a row in the dropdown table.
///  This is used to handle selected-row style.
ClientMethod storeConditionalStyle(trEl) [ Language = javascript ]
{
}

///  Retores the conditional style for trEl, a row in the dropdown table.
///  This is used to handle selected-row style.
ClientMethod restoreConditionalStyle(trEl) [ Language = javascript ]
{
}

///  Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
