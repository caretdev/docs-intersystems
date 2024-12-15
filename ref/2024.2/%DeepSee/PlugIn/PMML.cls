/// <p>This PlugIn implementation executes a predictive model defined in a <class>%DeepSee.PMML.Definition</class>
/// class for every fact in the cell for which the plugin is calculated, and aggregates the predictions.
/// By default, the plugin returns a <property>PredictedValue</property> property containing the aggregated
/// prediction. Additional properties (not listed in <XData>KPI</XData>) are provided for all
/// &lt;OutputField&gt; elements produced by the PMML model.</p>
/// <p>Note: The plugin expects an &lt;X-DeepSeeDataSource&gt; extension element mapping the DeepSee fact
/// to the PMML's data fields in order to be able to execute the model.</p>
///
/// <p><b>Filters (configurable)</b>:
/// <ul>
/// <li><b>%cube</b>: The cube this KPI is executed on</li>
/// <li><b>aggregate</b> (default = "average"):  How to aggregate the predicted values over different facts.<br/>
/// Available values are sum, average, max, min, maxFreqValue, maxProbValue, minFreqValue and minProbValue.</li>
/// <li><b>PMML</b>: Full class name of the <class>%DeepSee.PMML.Definition</class> containing the model to be executed.</li>
/// <li><b>ModelName</b>: Name of the model in the class specified through <var>PMML</var> that needs
/// to be executed. If left blank, the first model in the PMML definition will be executed.</li>
/// <li><b>NullValues</b> (default = "ignore"): Whether or not to include null predictions when aggregating
/// results. Available values are ignore and count.</li>
/// </ul></p>
Class %DeepSee.PlugIn.PMML Extends %DeepSee.KPIPlugIn [ System = 4 ]
{

Parameter BASECUBE = "*";

Parameter LISTINGSOURCE = "FactTable";

Parameter PLUGINTYPE = "Aggregate";

Parameter LISTINGFIELDS = "ID";

/// This XData definition defines the KPI.
XData KPI [ XMLNamespace = "http://www.intersystems.com/deepsee/kpi" ]
{
}

Method GetCubeName() As %String [ Internal ]
{
}

/// Get the base query for this plug-in.
Method %OnGetMDX(ByRef pMDX As %String) As %Status
{
}

/// Compute the median of values within the result set.
Method %OnCompute(pSQLRS As %SQL.StatementResult, pFactCount As %Integer) As %Status
{
}

}
