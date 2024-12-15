/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// This class bundles a number of methods for validating Text Classifiers against existing data.
Class %iKnow.Classification.Utils [ Deprecated, System = 4 ]
{

/// <p>Validates a Text Classifier against all records returned by a custom ResultSet, looping through
/// the rows and checking the model outcome against the actual value found in the query result.
/// The ResultSet should either return columns named _Text and _Category containing the text to
/// categorize and the actual category value, or a mapping from these mandatory fields to the
/// column names should be provided through <var>pFieldMap</var>.</p>
/// <p>Use <var>pResultsClass</var> to define the class (subclass of <class>%DeepSee.PMML.Utils.Result</class>)
/// the results of this batch run will be written to. This defaults to <class>%DeepSee.PMML.Utils.TempResult</class>,
/// which stores its data in a temporary global and therefore gets purged upon restarting the instance.<br/>
/// Results will be stored with their TestId property set to the value of <var>pResultsId</var> if
/// a nonzero, non-null value is provided, or call the GetNewTestId() method of <var>pResultsClass</var> to generate a new one.<br/>
/// If <var>pTracking</var> is true, progress information will be written to ^IRIS.Temp.PMML.BgrTask($job),
/// so this method can be run in the background and tracked by a UI.</p>
ClassMethod %RunModelFromResultSet(ByRef pResultsId As %Integer, pDefinitionClass As %String, pResultSet As %ResultSet, ByRef pFieldMap, pResultsClass As %String = "%DeepSee.PMML.Utils.TempResult", pTracking As %Boolean = 0) As %Status
{
}

/// <p>Validates a Text Classifier against all records returned by a user-supplied SQL query, looping through
/// the rows and checking the model outcome against the actual value found in the query result.
/// The SQL query should either return columns named _Text and _Category containing the text to
/// categorize and the actual category value, or a mapping from these mandatory fields to the
/// column names should be provided through <var>pFieldMap</var>.</p>
/// <p>Use <var>pResultsClass</var> to define the class (subclass of <class>%DeepSee.PMML.Utils.Result</class>)
/// the results of this batch run will be written to. This defaults to <class>%DeepSee.PMML.Utils.TempResult</class>,
/// which stores its data in the Temp databsae and therefore gets purged upon restarting the instance.<br/>
/// Results will be stored with their TestId property set to the value of <var>pResultsId</var> if
/// a nonzero, non-null value is provided, or call the GetNewTestId() method of <var>pResultsClass</var> to generate a new one.<br/>
/// If <var>pTracking</var> is true, progress information will be written to ^IRIS.Temp.PMML.BgrTask($job),
/// so this method can be run in the background and tracked by a UI.</p>
ClassMethod %RunModelFromSQL(ByRef pResultsId As %Integer, pDefinitionClass As %String, pSQL As %String, ByRef pFieldMap, ByRef pSQLParams, pResultsClass As %String = "%DeepSee.PMML.Utils.TempResult", pTracking As %Boolean = 0) As %Status
{
}

/// <p>Validates a Text Classifier against all sources in a domain, optionally filtered through a
/// <class>%iKnow.Filters.Filter</class> filter object <var>pFilter</var>, checking the model
/// outcome against the actual value found in the metadata field named <var>pMetadataField</var>.</p>
/// <p>Use <var>pResultsClass</var> to define the class (subclass of <class>%DeepSee.PMML.Utils.Result</class>)
/// the results of this batch run will be written to. This defaults to <class>%DeepSee.PMML.Utils.TempResult</class>,
/// which stores its data in the Temp database and therefore gets purged upon restarting the instance.<br/>
/// Results will be stored with their TestId property set to the value of <var>pResultsId</var> if
/// a nonzero, non-null value is provided, or call the GetNewTestId() method of <var>pResultsClass</var> to generate a new one.<br/>
/// If <var>pTracking</var> is true, progress information will be written to ^IRIS.Temp.PMML.BgrTask($job),
/// so this method can be run in the background and tracked by a UI.</p>
ClassMethod %RunModelFromDomain(ByRef pResultsId As %Integer, pDefinitionClass As %String, pDomainId As %Integer, pMetadataField As %String, pFilter As %iKnow.Filters.Filter = "", pResultsClass As %String = "%DeepSee.PMML.Utils.TempResult", pTracking As %Boolean = 0, pKeepScoreForClass As %String = "1") As %Status
{
}

}
