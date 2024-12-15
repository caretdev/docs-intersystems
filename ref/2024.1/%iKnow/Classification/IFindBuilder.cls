Class %iKnow.Classification.IFindBuilder Extends %iKnow.Classification.Builder [ Deprecated, System = 4 ]
{

Property TableName As %String(MAXLEN = 200) [ ReadOnly ];

Property ClassName As %String(MAXLEN = 200) [ ReadOnly ];

Property ProjectionBase As %String(MAXLEN = 250) [ Private, ReadOnly ];

Property IndexName As %String(MAXLEN = 200) [ ReadOnly ];

Property TrainingSet As %String(MAXLEN = 2000) [ ReadOnly ];

Property IdColumn As %String(MAXLEN = 200) [ ReadOnly ];

Property TextColumn As %String(MAXLEN = 200) [ ReadOnly ];

Property CategoryColumn As %String(MAXLEN = 2000) [ ReadOnly ];

Method %OnNew(pTableName As %String, pIndexName As %String, pTrainingExpression As %String = "", pMethod As %String = "naiveBayes", pIdColumn As %String = "%ID") As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Loads categories based on the value of the supplied SQL expression.
/// <var>pExpression</var> should either be the (SQL) name of a column on <property>TableName</property>,
/// or a valid SQL expression that can be selected from that table (aliased as if required "t").
Method %LoadCategoriesFromColumn(pExpression As %String) As %Status
{
}

Method %OnCreateExportTable(pClassDef As %Dictionary.ClassDefinition, pVerbose As %Boolean) As %Status [ Private ]
{
}

/// Callback invoked by <method>%ExportDataTable</method> to load the data into export table <class>pClassName</class>.
Method %OnExportTable(pClassName As %String, pVerbose As %Boolean, pTracking As %Boolean) As %Status [ Private ]
{
}

/// Returns all categories added so far:
/// 		pCategories(n) = $lb([name], [record count])
Method %GetCategoryInfo(Output pCategories) As %Status
{
}

Method %GetRecordCount(Output pSC As %Status) As %Integer
{
}

/// Returns an array for the current builder terms:
/// 		pTermInfo(i, "spread") = [spread in training set]
/// 		pTermInfo(i, "spread", j) = [spread in training set for category j]
/// 		pTermInfo(i, "frequency", j) = [freq in training set for category j]
Method %GetTermInfo(Output pTermInfo, pIncludeCategoryDetails As %String = "") As %Status [ Internal ]
{
}

/// 	^||%IK.TermCandidates(id) = $lb(value, spread)
/// 	^||%IK.TermCandidates(id, j) = [spread in category j]
Method %GetCandidateTerms(pType As %String = "entity") As %Status [ Internal ]
{
}

/// <p>Utility method to batch-test the classifier against a test set <var>pTestSet</var>, which can
/// be supplied as a valid SQL WHERE clause to be queried against <property>TableName</property>.
/// Per-record results are returned through <var>pResult</var>:<br/>
/// 			pResult(n) = $lb([record ID], [actual category], [predicted category])</p>
/// <p><var>pAccuracy</var> will contain the raw accuracy (# of records predicted correctly) of
/// the current model. Use <class>%iKnow.Classificaton.Utils</class> for more advanced model testing.</p>
/// <p>If the current model's category options were added through <method>%AddCategory</method> without
/// providing an appropriate category specification (again through a SQL WHERE clause), rather
/// than through a call to <class>%LoadCategoriesFromColumn</class> (which sets
/// <property>CategoryColumn</property>), supply a column name or SQL expression through
/// <var>pCategorySpec</var> where the actual category values to test against can be found.</p>
Method %TestClassifier(pTestSet As %RawString = "", Output pResult, Output pAccuracy As %Double, pCategorySpec As %String = "", pVerbose As %Boolean = 0) As %Status
{
}

}
