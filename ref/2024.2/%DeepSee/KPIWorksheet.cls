/// A specialized KPI that gets its values from a saved "worksheet".
/// The worksheet information is obtained using the <class>%DeepSee.UserLibrary.Worksheet</class> class.
Class %DeepSee.KPIWorksheet Extends %DeepSee.AbstractKPI [ System = 4 ]
{

/// Return the logical name for this KPI.
ClassMethod %GetKPIName(pName As %String = "") As %String
{
}

/// Return the caption as defined in the XML for this KPI.
ClassMethod %GetKPICaptionName(pName As %String = "") As %String
{
}

/// Add additional properties beyond those defined in the KPI block.
/// This takes the form:<br/>
/// pList(n) = name<br/>
/// pList(n,"defaultValue") = value<br/>
/// pList(n,"columnNo") = #<br/>
/// <var>pPropNo</var> is the number of next open slot in the list.
ClassMethod %OnGetKPIPropertyInfo(ByRef pList As %String, pPropNo As %Integer, pModelId As %String = "") As %Status
{
}

/// Notify subclass that KPI is has just be executed.
/// This is a good place to override properties, such as range and threshold.
Method %OnLoadKPI() As %Status
{
}

/// Get a specific value from this KPI.<br/>
/// Overridden to bypass the generic machinery in the abstract base class implementation.
ClassMethod %GetKPIValue(pKPIName As %String, Output pValue As %String, pKPIProperty As %String = "", pSeries As %String = "", ByRef pFilters As %String, pCellContext As %String = "") As %Status
{
}

}
