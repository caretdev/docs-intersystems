/// This class bundles a number of utility methods for running PMML models and managing their results.
Class %DeepSee.PMML.Utils [ System = 4 ]
{

/// Creates a PMML definition class (<class>%DeepSee.PMML.Definition</class>) based on the
/// PMML definition XML in the supplied <var>pFile</var>
ClassMethod CreateFromFile(pFile As %String, pClassName As %String, pOverwrite As %Boolean = 1, pCompile As %Boolean = 1, pVerbose As %Boolean = 1) As %Status
{
}

/// Creates a PMML definition class (<class>%DeepSee.PMML.Definition</class>) based on the
/// PMML definition XML in the supplied <var>pStream</var>
ClassMethod CreateFromStream(pStream As %Stream.Object, pClassName As %String, pOverwrite As %Boolean = 1, pCompile As %Boolean = 1, pVerbose As %Boolean = 1) As %Status
{
}

/// Creates a PMML definition class (<class>%DeepSee.PMML.Definition</class>) based on the
/// PMML definition XML in the supplied <var>pString</var>
ClassMethod CreateFromString(pString As %String, pClassName As %String, pOverwrite As %Boolean = 1, pCompile As %Boolean = 1, pVerbose As %Boolean = 1) As %Status
{
}

/// <p>Test a DeepSee or SQL-linked PMML model by running the model against all records in the
/// Data Source <var>pDatasource</var> specified in the model definition, defaulting to the first
/// datasource definition found in the model.</p>
/// <p>Use <var>pResultsClass</var> to define the class (subclass of <class>%DeepSee.PMML.Utils.Result</class>)
/// the results of this batch run will be written to. This defaults to <class>%DeepSee.PMML.Utils.TempResult</class>,
/// which stores its data in the Temp database and therefore gets purged upon restarting the instance.<br/>
/// Results will be stored with their TestId property set to the value of <var>pResultsId</var> if
/// a nonzero, non-null value is provided, or call the GetNewTestId() method of <var>pResultsClass</var> to generate a new one.<br/>
/// If <var>pTracking</var> is true, progress information will be written to ^IRIS.Temp.PMML.BgrTask($job),
/// so this method can be run in the background.</p>
ClassMethod %RunModel(ByRef pResultsId As %Integer, pDefinitionClass As %String, pModelName As %String = "", pDataSource As %String = "", pResultsClass As %String = "%DeepSee.PMML.Utils.TempResult", pTracking As %Boolean = 0) As %Status
{
}

/// <p>Runs a PMML model against all records returned by a user-supplied ResultSet object, looping
/// through all rows and checking the model outcome against the actual value found in the query result.
/// <var>pFieldMap</var> is expected to contain a mapping from this model's <class>%DeepSee.PMML.Data</class>
/// class to the columns (by name) in the supplied result set. If no field map is specified,
/// the resultset is expected to contain columns with names corresponding to the models data fields.</p>
/// <p>Use <var>pResultsClass</var> to define the class (subclass of <class>%DeepSee.PMML.Utils.Result</class>)
/// the results of this batch run will be written to. This defaults to <class>%DeepSee.PMML.Utils.TempResult</class>,
/// which stores its data in the Temp database and therefore gets purged upon restarting the instance.<br/>
/// Results will be stored with their TestId property set to the value of <var>pResultsId</var> if
/// a nonzero, non-null value is provided, or call the GetNewTestId() method of <var>pResultsClass</var> to generate a new one.<br/>
/// If <var>pTracking</var> is true, progress information will be written to ^IRIS.Temp.PMML.BgrTask($job),
/// so this method can be run in the background.</p>
ClassMethod %RunModelFromResultSet(ByRef pResultsId As %Integer, pDefinitionClass As %String, pModelName As %String = "", pResultSet As %ResultSet, ByRef pFieldMap, pResultsClass As %String = "%DeepSee.PMML.Utils.TempResult", pTracking As %Boolean = 0) As %Status
{
}

/// <p>Runs a PMML model against all records returned by a user-supplied SQL query, looping through
/// the rows and checking the model outcome against the actual value found in the query result.
/// <var>pFieldMap</var> is expected to contain a mapping from this model's <class>%DeepSee.PMML.Data</class>
/// class to the columns (by name) in the supplied result set. If no field map is specified,
/// the resultset is expected to contain columns with names corresponding to the models data fields.</p>
/// <p>Use <var>pResultsClass</var> to define the class (subclass of <class>%DeepSee.PMML.Utils.Result</class>)
/// the results of this batch run will be written to. This defaults to <class>%DeepSee.PMML.Utils.TempResult</class>,
/// which stores its data in the Temp database and therefore gets purged upon restarting the instance.<br/>
/// Results will be stored with their TestId property set to the value of <var>pResultsId</var> if
/// a nonzero, non-null value is provided, or call the GetNewTestId() method of <var>pResultsClass</var> to generate a new one.<br/>
/// If <var>pTracking</var> is true, progress information will be written to ^IRIS.Temp.PMML.BgrTask($job),
/// so this method can be run in the background.</p>
ClassMethod %RunModelFromSQL(ByRef pResultsId As %Integer, pDefinitionClass As %String, pModelName As %String = "", pSQL As %String, ByRef pFieldMap, ByRef pSQLParams, pResultsClass As %String = "%DeepSee.PMML.Utils.TempResult", pTracking As %Boolean = 0) As %Status
{
}

/// <p>Runs a PMML model against the &lt;ModelVerification&gt; records included in the PMML model
/// definition.</p>
/// <p>Use <var>pResultsClass</var> to define the class (subclass of <class>%DeepSee.PMML.Utils.Result</class>)
/// the results of this batch run will be written to. This defaults to <class>%DeepSee.PMML.Utils.TempResult</class>,
/// which stores its data in the Temp database and therefore gets purged upon restarting the instance.<br/>
/// Results will be stored with their TestId property set to the value of <var>pResultsId</var> if
/// a nonzero, non-null value is provided, or call the GetNewTestId() method of <var>pResultsClass</var> to generate a new one.<br/>
/// If <var>pTracking</var> is true, progress information will be written to ^IRIS.Temp.PMML.BgrTask($job),
/// so this method can be run in the background.</p>
ClassMethod %RunModelFromPMMLRows(ByRef pResultsId As %Integer, pDefinitionClass As %String, pModelName As %String = "", pResultsClass As %String = "%DeepSee.PMML.Utils.TempResult", pTracking As %Boolean = 0) As %Status
{
}

/// Drops all results for a given test ID from the <class>%DeepSee.PMML.Utils.TempResult</class>
/// table.
ClassMethod %DropResults(pTestId As %Integer) As %Status
{
}

/// Drops all results for all test IDs from the <class>%DeepSee.PMML.Utils.TempResult</class>
/// table.
ClassMethod %DropAllResults() As %Status
{
}

}
