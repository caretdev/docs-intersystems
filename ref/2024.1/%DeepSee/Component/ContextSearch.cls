/// Additional context searches used by DeepSee pages.
Class %DeepSee.Component.ContextSearch Extends %ZEN.Portal.ContextSearch [ Abstract, System = 4 ]
{

/// Set this to the correct domain.
Parameter DOMAIN = "%DeepSee";

/// Search method: Folders.<br/>
/// Execute a user portal folder search.<br/>
ClassMethod Folders(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

/// Search method: DataProperties.<br/>
/// List available properties for a DeepSee data source.<br/>
/// pParms("dataSource") holds the data source name.
ClassMethod DataProperties(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

/// Search method: Dimensions.<br/>
/// Provide a list of dimensions within the cube/subjectArea specified by
/// pParms("subject").<br/>
/// If pParms("list") is provided, then this is a csv-list of additional items to show.
ClassMethod Dimensions(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

/// Search method: Members.<br/>
/// Provide a list of members for the given filter/dimension within the cube/kpi specified by
/// pParms("dataSource").<br/>
/// pParms("filter") is the name of the filter.
ClassMethod Members(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

/// Search method: Settings.<br/>
/// Provide a list of user-defined settings.<br/>
/// pParms("context") is the context of the settings to display.
ClassMethod UserSettings(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

/// Search method: QualityMeasureCatalogs.<br/>
/// Provide a list of Quality Measure Catalogs.<br/>
ClassMethod QualityMeasureCatalogs(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

/// Search method: QualityMeasureSets.<br/>
/// Provide a list of Quality Measure Sets within a given catalog.<br/>
/// pParms("catalog") is the catalog.
ClassMethod QualityMeasureSets(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

/// Search method: Categories.<br/>
/// Provide a list of categories that have already been defined.
ClassMethod Categories(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

/// Search method: Users.<br/>
/// Provide a list of users.<br/>
/// pParms("context") controls which list of users shoudl be returned.
ClassMethod Users(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

/// Search method: Resources.<br/>
/// Provide a list of custom resources.
ClassMethod Resources(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

}
