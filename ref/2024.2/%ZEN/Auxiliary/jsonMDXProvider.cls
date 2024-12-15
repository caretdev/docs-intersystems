/// A version of the JSON provider that can use an MDX query or the full name of a stored pivot table to supply data that is served
/// to the client in JSON format. This can be used in the same manner as the
/// <class>jsonProvider</class> component.<br/>
/// For example, placing this within your page definition:
/// <example language="xml!fragment">
/// <jsonMDXProvider id="mdxProvider" mdxQuery="SELECT FROM HOLEFOODS"/>
/// </example>
/// would cause the given MDX statement to execute when the page is requested and the results of the
/// query to be written to the page in JSON format:
/// <example language="javascript">
/// o.content = {
/// 		"AxesInfo": {
/// 		},
/// 		"Info": {
/// 			"ColCount":0,
/// 			"Cube":"HOLEFOODS",
/// 			"CubeKey":"HOLEFOODS",
/// 			"Error": {
/// 				"ErrorCode":"",
/// 				"ErrorMessage":""
/// 			},
/// 			"ListingSource":"",
/// 			"MDXText":"SELECT FROM HOLEFOODS",
/// 			"QueryKey":"en558256763",
/// 			"QueryType":"SELECT",
/// 			"ResultsComplete":1,
/// 			"RowCount":0,
/// 			"TimeStamp":"2015-05-12 13:23:58"
/// 		},
/// 		"Result": {
/// 			"Axes":[
/// 			],
/// 			"CellData":[ {
/// 					"%ID":"Cell_1",
/// 					"Format":"",
/// 					"ValueFormatted":"1,000",
/// 					"ValueLogical":1000
/// 				}
/// 			]
/// 		}
/// 	};
/// </example>
/// The JSON content object will contain three major branches AxesInfo, Info, and Result, each of which contain an array of objects that
/// correspond to query structure, metadata, and actual results as returned by the MDX statement.<br/>
/// If you need more control over the MDX query, you can use the <property>OnGetMDX</property>
/// callback method.<br/>
///
/// This component ignores all of the data source callback methods inherited from the <class>jsonProvider</class> class.
Class %ZEN.Auxiliary.jsonMDXProvider Extends (%ZEN.Auxiliary.altJSONProvider, %DeepSee.Component.pivotTable) [ Deprecated ]
{

/// This specifies a callback method that returns an MDX query (string) that will drive this
/// provider. This is identical in behavior to (and replaces) the <property>mdx</property> property.
/// The method can make it easier to create queries based on parameter values or search criteria
/// passed via the <property>criteria</property> property.
Property OnGetMDX As %ZEN.Datatype.delegator(FORMALSPEC = "&pParameters:%String,&pMDX:%String,pCriteria:%ZEN.proxyObject,&pPagingInfo:%String", RETURNTYPE = "%Status");

/// (optional) Name of Server-side callback method to call to create
/// a <class>%DeepSee.ResultSet</class> object.<br>
/// This must be the name of a server-only method in the page
/// class that contains this component.
Property OnCreateResultSet As %ZEN.Datatype.delegator(FORMALSPEC = "*tSC:%Status,&pParms:%String", RETURNTYPE = "%DeepSee.ResultSet");

/// (optional) Name of Server-side callback method to call to execute the
/// <class>%DeepSee.ResultSet</class> object.<br>
/// This must be the name of a server-only method in the page
/// class that contains this table pane.
Property OnExecuteResultSet As %ZEN.Datatype.delegator(FORMALSPEC = "pRS:%DeepSee.ResultSet,*tSC:%Status,&pParms:%String", RETURNTYPE = "%Boolean");

/// If the provider is using server-side data paging, this is the total number of records.
Property recordCount As %ZEN.Datatype.integer;

/// If defined, the provider can generate JSON results from a stored pivot definition
Property pivotTable As %ZEN.Datatype.string;

/// If defined, the provider can generate JSON results from MDX query text
Property mdxQuery As %ZEN.Datatype.string;

/// If defined along with <property>cubeKey</property>, the provider can prepare a
/// resultset of a query already in progress.
Property queryKey As %ZEN.Datatype.string;

/// If defined along with <property>queryKey</property>, the provider can prepare a
/// resultset of a query already in progress.
Property cubeKey As %ZEN.Datatype.string;

/// Draw JSON output.
Method %DrawJSON(pExecute = 1) As %Status [ Internal ]
{
}

/// Execute the MDX query or pre-defined pivot table
Method %Execute() As %Status
{
}

/// Utility method to allow direct use of JSON from a non-ZEN context (such as a CSP page).<br/>
/// The JSON notation is written out to the current device.
/// <var>pVar</var> is the optional name of the client-side javascript variable that refers to the JSON notation.<br/>
/// <var>pMDX</var> is the MDX statement that is executed and provides the JSON content. Supported query types are SELECT, DRILLTHOUGH, DRILLFACTS.<br/>
/// From a CSP page, you could invoke the method as follows:<br/>
/// <example language="CSP">
/// #(##class(%ZEN.Auxiliary.jsonMDXProvider).%WriteJSONFromMDX("json","SELECT NON EMPTY [Channel].[H1].[Channel Name].Members ON 0 FROM [HOLEFOODS]"))#
/// </example>
/// <var>pReturnStatus</var> controls whether the method will return the execution status. By default this is set to 0 to quit an empty string for
/// compatibility with the #()# syntax.<br>
/// <var>tProvider</var> allows parameters to be passed in by creating an instance of the jsonMDXProvider and passing it into the method. The value of
/// <var>pMDX</var> will be ignored in this case.<br/>
ClassMethod %WriteJSONFromMDX(pVar As %String = "", pMDX As %String, pReturnStatus As %Boolean = 0, tProvider As %ZEN.Auxiliary.jsonMDXProvider = "") As %String
{
}

/// Utility method to allow JSON output generated by the MDX query defined in <var>pMDX</var>
/// to be written to the stream supplied in <var>pStream</var> from a general non-ZEN context.
/// Note that <var>pStream</var> will be created if not supplied, hence the ByRef designation.<br/>
/// <var>pRewindStream</var> controls whether the stream should be rewound after the data is written to it.<br/>
/// <var>tProvider</var> allows parameters to be passed in by creating an instance of the jsonMDXProvider and passing it into the method. The value of
/// <var>pMDX</var> will be ignored in this case.<br/>
ClassMethod %WriteJSONStreamFromMDX(ByRef pStream As %Stream.Object, pMDX As %String, pRewindStream As %Boolean = 0, tProvider As %ZEN.Auxiliary.jsonMDXProvider = "") As %Status [ ProcedureBlock = 0 ]
{
}

/// Utility method to allow direct use of JSON from a non-ZEN context (such as a CSP page).<br/>
/// The JSON notation is written out to the current device.
/// <var>pVar</var> is the optional name of the client-side javascript variable that refers to the JSON notation.<br/>
/// <var>pPivot</var> is the full name of a stored pivot that is executed and provides the JSON content.<br/>
/// From a CSP page, you could invoke the method as follows:<br/>
/// <example language="CSP">
/// #(##class(%ZEN.Auxiliary.jsonMDXProvider).%WriteJSONFromPivot(,"Use In Dashboards/ProductInfo"))#
/// </example>
/// <var>pReturnStatus</var> controls whether the method will return the execution status. By default this is set to 0 to quit an empty string for
/// compatibility with the #()# syntax.<br>
/// <var>tProvider</var> allows parameters to be passed in by creating an instance of the jsonMDXProvider and passing it into the method. The value of
/// <var>pPivot</var> will be ignored in this case.<br/>
ClassMethod %WriteJSONFromPivot(pVar As %String = "", pPivot As %String, pReturnStatus As %Boolean = 0, tProvider As %ZEN.Auxiliary.jsonMDXProvider = "") As %String
{
}

/// Utility method to allow JSON output generated by the stored pivot table defined in <var>pPivot</var>
/// to be written to the stream supplied in <var>pStream</var> from a general non-ZEN context.
/// Note that <var>pStream</var> will be created if not supplied, hence the ByRef designation.<br/>
/// <var>pRewindStream</var> controls whether the stream should be rewound after the data is written to it.<br/>
/// <var>tProvider</var> allows parameters to be passed in by creating an instance of the jsonMDXProvider and passing it into the method. The value of
/// <var>pPivot</var> will be ignored in this case.<br/>
ClassMethod %WriteJSONStreamFromPivot(ByRef pStream As %Stream.Object, pPivot As %String, pRewindStream As %Boolean = 0, tProvider As %ZEN.Auxiliary.jsonMDXProvider = "") As %Status [ ProcedureBlock = 0 ]
{
}

/// Invoke the <property>OnGetMDX</property> callback.
Method %OnGetMDX(ByRef pParms, ByRef pMDX) As %Status [ Internal ]
{
}

/// This callback is invoked when a provider is about to
/// create a result set.<br/>
/// If the callback creates a <class>%DeepSee.ResultSet</class> object and returns it
/// via <var>pRS</var>, then the pivot table will use this result set to display results.
Method %OnCreateResultSet(Output pRS As %DeepSee.ResultSet, ByRef pParms) As %Status
{
}

/// Internal method.<br>
/// Subclasses can override this to execute the <class>%ResultSet</class> object used to
/// by this component.<br>
/// Return true (1) if the result set has been executed.<br>
/// The default implementation is to call the page method specified
/// by the <property>onExecuteResultSet</property> property, if defined.
Method %OnExecuteResultSet(pRS As %DeepSee.ResultSet, Output tSC As %Status, ByRef pParms) As %Boolean
{
}

/// Constructor for a dynamic array.
Method %ConstructNewDynamicArray() As %DynamicArray
{
}

/// Constructor for a dynamic object.
Method %ConstructNewDynamicObject() As %DynamicObject
{
}

/// Convert a %Status object into an object that can be emitted as JSON
ClassMethod %StatusToDynamicObject(pStatus As %Status) As %RegisteredObject
{
}

Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
{
}

ClassMethod redirects() [ Internal, Private, ProcedureBlock = 0 ]
{
}

/// Override this method for this provider to override the format and suppress
/// the default inclusion of the class in the JSON output.
ClassMethod %ObjectToJSON(pObject As %RegisteredObject, ByRef pVisited, pLevel As %Integer = 0, pFormat As %String = "aeloqstw") As %Status
{
}

}
