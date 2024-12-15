/// Defines a group within a ZEN Report.
Class %ZEN.Report.group Extends reportNode [ Deprecated, System = 3 ]
{

/// Set of nodes contained within this group.
Property children As list Of reportNode(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");

/// XML element name used for this group.<br>
/// If not provided a default will be supplied.
Property name As %ZEN.Datatype.string [ InitialExpression = {..%ClassName(0)}, Required ];

/// Remove empty XML elments
/// If not provided a default of -1 (inherit from parent) will be supplied.
Property removeEmpty As %ZEN.Datatype.boolean [ InitialExpression = -1 ];

/// User-defined list of query parameters. These are used to supply
/// parameter values for the query associated with this group.
Property parameters As list Of %ZEN.Report.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// (optional) Name of the class containing the class query that will
/// be used to create a <class>%ResultSet</class> object.<br>
/// This property is only used if <property>queryName<property> is defined.
/// If this property is not defined, then it is assumed that the current report
/// class contains the specified query.
Property queryClass As %ZEN.Datatype.className;

/// (optional) Name of the class query that will
/// be used to create a <class>%ResultSet</class> object.
Property queryName As %ZEN.Datatype.classMember(MEMBERTYPE = "QUERY");

/// Execute elements with report or group once, causes sql, query and resultset to be ignored
Property runonce As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// (optional) SQL statement that, if present, will be used to
/// create a <class>%ResultSet</class> object.<br>
/// If defined, this takes precedence over
/// <property>queryClass</property> and <property>queryName</property> and <property>sqlexpression</property>.
Property sql As %ZEN.Datatype.sql;

/// (optional) SQL statement in expression form that, if present, will be used to
/// create a <class>%ResultSet</class> object.<br>
Property sqlexpression As %ZEN.Datatype.string(MAXLEN = "");

/// When a query is present this induces effect of "SELECT TOP ..top Query"
Property top As %ZEN.Datatype.integer;

/// When a query is present and expression filter is 0, row is skipped
Property filter As %ZEN.Datatype.integer;

Property %hasquery As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// (optional) Runtime mode applied to the <class>%ResultSet</class>
/// object used to fetch results for this report.
Property runtimeMode As %ZEN.Datatype.integer(VALUELIST = ",0,1,2") [ InitialExpression = 2 ];

/// comma separated list of fields by which the group will be sorted
Property orderby As %ZEN.Datatype.string;

/// Name of callback method to call to create a <class>%ResultSet</class> object.
/// This must be the name of an instance method within the report class.<br/>
/// An example callback would look something like this:
/// <example language="CLS!MEMBER">
/// ClassMethod RS1(ByRef pSC As %Status, ByRef pParms) As %ResultSet
/// {
/// 	 Set pSC = $$$OK
/// 	 Set tRS = ##class(%ResultSet.SQL).%Prepare("SELECT Name FROM Sample.Person WHERE Home_City = ? ORDER BY Name",.tError,"",pParms(1))
/// 	 If ($IsObject(tError)) {
/// 	 	Set pSC = tError.Status
/// 	 }
/// 	 Quit tRS
/// }
/// </example>
Property OnCreateResultSet As %ZEN.Datatype.delegator(FORMALSPEC = "*tSC:%Status,*pParameters:%String", RETURNTYPE = "%ResultSet");

/// Name of field (column) in the base query for this report that
/// supply the value for collecting members of this group.
Property breakOnField As %ZEN.Datatype.classMember(MEMBERTYPE = "SQLCOLUMN");

Property ifexpression As %ZEN.Datatype.string [ InitialExpression = 1 ];

/// Optional ObjectScript expression that can either be applied
/// to the grouping value of this group (as <var>%val</var>), or to provide an
/// arbitrary value.
Property breakOnExpression As %ZEN.Datatype.expression;

/// Internal property used to disambiguate multiple groups at the same level.
Property groupNumber As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ Internal ];

/// Internal property used to get level of group
Property %level As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ Internal ];

Property %leftSibling As %ZEN.Report.group [ Internal ];

Property %rightSibling As %ZEN.Report.group [ Internal ];

/// first child (left most) of group of children if any
Property %leftMost As %ZEN.Report.group [ Internal ];

/// last child (right most) of group of children if any
Property %rightMost As %ZEN.Report.group [ Internal ];

Property %parent As %ZEN.Report.group [ Internal ];

/// This array, subcripted by level, is used to track the current
/// set of parent groups as each child group is proccessed.
Property %groupStack As %Integer(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// depth of group
Property %groupdepth As %Integer(XMLPROJECTION = "none") [ Internal ];

/// We use these to record namespace and namespace prefix for qualified name
Property %xmlnamespace As %String(XMLPROJECTION = "none") [ Internal ];

Property %xmlnamespaceprefix As %String(XMLPROJECTION = "none") [ Internal ];

Property %sqlcache As %String(XMLPROJECTION = "none") [ Internal ];

/// Name of fields (columns) in the base query for this report that will
/// supply the values for this item.
Property fields As %ZEN.Datatype.string(MAXLEN = 500);

/// call that will supply XML
Property call As %ZEN.Datatype.string;

/// class for call that will supply XML, can be blank in which case current class used
/// if set to 0, call is called as instance method
Property callClass As %ZEN.Datatype.string;

/// If non-null will provide an argument passed to call
Property callArgument As %ZEN.Datatype.string;

Property AggregateTag As %String(XMLPROJECTION = "none") [ Internal ];

/// True if ExcelHeaders are to be suppressed on group or report
Property suppressExcelHeaders As %ZEN.Datatype.boolean;

/// name of worksheet when group represents an Excel worksheet
Property excelSheetName As %ZEN.Datatype.string;

Method %GenerateCode(pReport As %ZEN.Report.reportNode, pCode As %CharacterStream, pLevel As %Integer, xmlns As %String, xmlprefix As %String, sqlcache As %Boolean, pAggregateTag As %String, removeNulls As %Boolean, SetProcessWideRunTimeMode As %Boolean, pAggregatesIgnoreNLS As %Boolean, pDomain As %String) As %Status [ Internal, ProcedureBlock = 0 ]
{
}

Method dumpElementStore(pReport As %ZEN.Report.reportNode, pCode As %CharacterStream, pLevel As %Integer)
{
}

Method %AncestorHasRightSibling()
{
}

/// Given a tag name, return a string that can be used a routine label.
Method %MakeTag(pReport As %ZEN.Report.reportNode, pTag As %String, pLevel As %Integer) As %String [ Internal ]
{
}

Method %MakeGroupTag(pTag As %String, pLevel As %Integer) As %String [ Internal ]
{
}

Method %MakeId(pExt As %String) As %String [ Internal ]
{
}

/// Loop over child and sorts them into groups, elements, and attributes.
Method %SortChildren(Output tSubGroups, Output tAttributes, Output tElements, Output tAggregates, Output tGets, Output tIncludes, Output tCalls, Output tCallElements) As %Status [ Internal ]
{
}

/// Generate code that writes opening tag (plus attributes).
Method %GenerateOpenTag(pReport As %ZEN.Report.reportNode, pCode As %CharacterStream, ByRef tAttributes, pLevel As %Integer, pClose As %Boolean = 0, ByRef tElements, removeNulls As %Boolean, pDomain As %String) As %Status [ Internal ]
{
}

/// Generate code that writes opening tag.
Method %GenerateCloseTag(pCode As %CharacterStream, pLevel As %Integer) As %Status [ Internal ]
{
}

/// Generate code to write out non-group elements of this group.
Method %StoreElements(pReport As %ZEN.Report.reportNode, pCode As %CharacterStream, ByRef tElements, pLevel As %Integer, pSiblingNo As %Integer, pAggregateTag As %String, removeNulls As %Boolean, pDomain As %String) As %Status [ Internal ]
{
}

/// Generate code to write out non-group elements of this group.
Method %StoreCallElements(pCode As %CharacterStream, ByRef tCalls, pLevel As %Integer, pAggregateTag As %String) As %Status [ Internal ]
{
}

Method %StoreRowPosition(pCode As %CharacterStream, pLevel As %Integer) As %Status [ Internal ]
{
}

/// Generate code to write out aggregate elements of this group.
Method %GenerateAggregates(pCode As %CharacterStream, pLevel As %Integer, ByRef tAggregates, pAggregateTag As %String, pAggregatesIgnoreNLS As %Boolean, pDomain As %String) As %Status [ Internal ]
{
}

/// Generate code to start/accum/end aggregates.
Method %ProcessAggregates(pCode As %CharacterStream, pLevel As %Integer, pMode As %String, ByRef tAggregates, pBottomLevel As %Integer, pAggregatesIgnoreNLS As %Boolean) As %Status [ Internal ]
{
}

/// Compile-time method that returns an expression that
/// processes the field property of a value node.
Method %GetNodeField(tNode As valueNode, Output pExpr, pLevel As %Integer = 0) As %Status [ Internal ]
{
}

/// Compile-time method that returns an expression that
/// processes the field property of a value node.
Method %GetField(field As %String, Output pExpr, pLevel As %Integer = 0) As %Status [ Internal ]
{
}

/// Compile-time method that returns an expression that
/// processes the field property of a value node.
Method %GetField1(field As %String, Output pExpr, pLevel As %Integer = 0, pQuote As %Boolean = 1) As %Status [ Internal ]
{
}

/// Compile-time method to get the expression needed to
/// supply the value of a valueNode.
Method %GetNodeExpr(tNode As valueNode, Output pExpr) As %Status [ Internal ]
{
}

/// Test if this group has a query defined.
Method %hasQueryDefined() As %Boolean
{
}

/// Test if this group has a break defined
Method %hasBreakDefined() As %Boolean
{
}

/// This internal method converts the parameter list for this group
/// into a run-time expression used to execute the query.
/// If <var>pArray</var> is defined, then it the expression will fill in
/// elements of an array named <var>pArray</var>.
Method %NormalizeParamList(pReport As %ZEN.Report.reportNode, pCode As %CharacterStream, pParameters As %ListOfObjects, pLevel As %Integer, setBreaks As %Boolean, pArray As %String = "") As %String [ Internal ]
{
}

Method %LookForRightSibling(parent As %ZEN.Report.group, pCode As %CharacterStream, pLevel As %Integer, sqlcache As %Boolean) As %Status [ Internal ]
{
}

Method CalcQuery(pReport As %ZEN.Report.reportNode, pCode As %CharacterStream, pLevel As %Integer, SetProcessWideRunTimeMode As %Boolean) As %Integer [ Internal ]
{
}

Method getAgg(pLevel As %Integer, n As %Integer) [ Internal ]
{
}

Method getCount(pLevel As %Integer) [ Internal ]
{
}

Method getCountForAvg(pLevel As %Integer, n As %Integer) [ Internal ]
{
}

ClassMethod Qualify(xpath As %String, prefix As %String)
{
}

Method setAggValueArray(tNode, pCode As %CharacterStream, pLevel As %Integer) [ Internal ]
{
}

Method setTnodeValueArray(tNode, pCode As %CharacterStream, pLevel As %Integer) [ Internal ]
{
}

Method SetFieldsValueArray(fields As %String, pCode As %CharacterStream, pLevel As %Integer) [ Internal ]
{
}

Method %MakeLabel(pLevel As %Integer)
{
}

ClassMethod DumpIncludes(pCode As %CharacterStream, ByRef pIncludes As %ZEN.Report.include) As %Status
{
}

ClassMethod IncludeXdata(pCode As %CharacterStream, ClassName As %String, XdataName As %String) As %Status
{
}

ClassMethod DumpGets(pCode As %CharacterStream, ByRef pGets As %ZEN.Report.include) As %Status
{
}

ClassMethod GetXML(pCode As %CharacterStream, host As %String, port As %String, url As %String) As %Status
{
}

Method DumpCalls(pReport As %ZEN.Report.reportNode, pCode As %CharacterStream, ByRef pCalls As %ZEN.Report.call, pLevel As %Integer) As %Status
{
}

Method DumpCallElements(pCode As %CharacterStream, ByRef pCalls As %ZEN.Report.call, pLevel As %Integer) As %Status
{
}

ClassMethod GetXMLFromCall(pCode As %CharacterStream, method As %String, parmName As %String, hasStatus As %Boolean) As %Status
{
}

ClassMethod getClassName(tNode)
{
}

Method HorlogToExcelDateTime(pReport, pCode, pNode, pNodeExpr, pLevel)
{
}

Method TimeToExcelTime(pReport, pCode, pNode, pNodeExpr, pLevel)
{
}

/// Take a value string and return a quoted string.
ClassMethod %QuoteValue(pValue As %String) [ CodeMode = expression ]
{
}

/// Take a value string and return a quoted string wrapped within a
/// $$$Text macro.<br>
/// If value starts and ends with #( )#, then return an expression
ClassMethod %QuoteValueL10N(pValue As %String, pDomain As %String)
{
}

}
