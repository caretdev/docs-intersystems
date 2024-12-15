Class %DeepSee.extensions.clusters.TableAnalysis Extends (%ZEN.Component.page, %DeepSee.extensions.clusters.DataController, %DeepSee.extensions.clusters.ChartModel) [ System = 4 ]
{

/// Application this page belongs to.
Parameter APPLICATION = "%DeepSee.extensions.clusters.ZenApplication";

Parameter SPECIALVALUES = 0;

Parameter PAGENAME = "Clusters";

/// Domain used for localization.
Parameter DOMAIN = "ZENTEST";

/// All DeepSee pages require %DeepSee_Portal USE.
Parameter RESOURCE = "%DeepSee_Portal";

/// Measure to use for analysis.
Property propNameX As %ZEN.Datatype.string;

/// Measure to use for analysis.
Property propNameY As %ZEN.Datatype.string;

Property className As %ZEN.Datatype.string;

Property schemaName As %ZEN.Datatype.string;

XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData tableSelectPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onYRefresh() [ Language = javascript ]
{
}

ClientMethod getChartData(series) [ Language = javascript ]
{
}

ClientMethod schemaChanged() [ Language = javascript ]
{
}

ClientMethod tableChanged() [ Language = javascript ]
{
}

ClientMethod datasetChanged() [ Language = javascript ]
{
}

ClientMethod run() [ Language = javascript ]
{
}

ClientMethod axisChanged() [ Language = javascript ]
{
}

/// Adjust size and position of components on this page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

Method OnSelectSchema() As %ZEN.proxyObject [ ZenMethod ]
{
}

Method OnSelectClass() As %ZEN.proxyObject [ ZenMethod ]
{
}

Method RunAndUpdate() As %ZEN.proxyObject [ ZenMethod ]
{
}

Method %OnChangeSchema() As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method %OnSelectClass() As %Status
{
}

Method RestoreDefaults() As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Update value of controls.
Method %UpdateControls() As %Status
{
}

Method %UpdateStatusInfo() As %Status
{
}

Method %ClearStatusInfo() As %Status
{
}

Method %SetModelData() As %Status
{
}

Method %SetClusteringParameters() As %Status
{
}

Method %ComputeValues() As %Status
{
}

Method %EstimateCount(Output pSC As %Status) As %Integer
{
}

ClassMethod SchemasExecute(ByRef %q As %Library.Binary, system As %Library.Boolean = 0) As %Library.Status [ ProcedureBlock = 1 ]
{
}

ClassMethod SchemasFetch(ByRef %q As %Library.Binary, ByRef Row As %Library.List, ByRef AtEnd As %Library.Integer) As %Library.Status [ ProcedureBlock = 1 ]
{
}

ClassMethod SchemasClose(ByRef %q As %Library.Binary) As %Library.Status [ ProcedureBlock = 1 ]
{
}

Method %OnGetValue(ByRef value, classname As %String, property As %String) As %Status
{
}

}
