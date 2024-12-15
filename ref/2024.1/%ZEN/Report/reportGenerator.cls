///
Class %ZEN.Report.reportGenerator Extends %RegisteredObject [ Deprecated, System = 4 ]
{

XData ReportHeader
{
}

/// Generate a ZEN Report<br>
/// className - name that generated ZEN Report will have, for instance pkgname.GeneratedReport<br>
/// reportName - name of ZEN Report, root element of generated XML<br>
/// queryClass - name of class for which report is generated<br>
/// queryName - name of query for which report is generated<br>
/// sortandgroup - if 1, we sort and group and next four parameters used, otherwise we don't sort and group<br>
/// GroupOption - name of option that determines grouping <br>
/// <ul>
/// <li>GroupOption's value determines the name of the GroupOption Property in the report.  A good name for this is "GroupOption".<br>
/// <li>If the GroupOption property is set to a non-null value this is used in %OnBeforeReport to set the "group".<br>
/// <li>A non-null "group" causes detail records to be placed under a value for the "group" in the report.  Each value for "group" will print on its own line.  Under "group" will be the
/// other values in the report for which the group has a constant value.<br>
/// </ul>
/// SortOption - name of option that determines sorting of detail records.<br>
/// <ul>
/// <li>SortOption's value determines the name of the SortOption property in the report. A good name for this is "SortOption".
/// <li>The value of the property named in SortOption determines is used in %OnBeforeReport to select what field will sort the values that appear in the report.
/// <li>By default UniqueId is used for sorting.
/// </ul>
/// SortBy - name of support internal - set by SortOption, a good value for this is "SortBy" if no column in query named "SortBy"<br>
/// UniqueId - default sorting field of query, one can set this outside query, will be used to sort report columns if one group in report/columns within group if several groups within report<br>
ClassMethod Generate(className As %String, reportName As %String, queryClass As %String, queryName As %String, sortandgroup As %Boolean, GroupOption As %String, SortOption As %String, SortBy As %String, UniqueId) As %Status
{
}

/// Generate a ZEN Report<br>
/// className - name that generated ZEN Report will have, for instance pkgname.GeneratedReport<br>
/// reportName - name of ZEN Report, root element of generated XML<br>
/// sql - sql used in report generation<br>
/// sortandgroup - if 1, we sort and group and next four parameters used, otherwise we don't sort and group<br>
/// GroupOption - name of option that determines grouping <br>
/// <ul>
/// <li>GroupOption's value determines the name of the GroupOption Property in the report.  A good name for this is "GroupOption".<br>
/// <li>If the GroupOption property is set to a non-null value this is used in %OnBeforeReport to set the "group".<br>
/// <li>A non-null "group" causes detail records to be placed under a value for the "group" in the report.  Each value for "group" will print on its own line.  Under "group" will be the
/// other values in the report for which the group has a constant value.<br>
/// </ul>
/// SortOption - name of option that determines sorting of detail records.<br>
/// <ul>
/// <li>SortOption's value determines the name of the SortOption property in the report. A good name for this is "SortOption".
/// <li>The value of the property named in SortOption determines is used in %OnBeforeReport to select what field will sort the values that appear in the report.
/// <li>By default UniqueId is used for sorting.
/// </ul>
/// SortBy - name of support internal - set by SortOption, a good value for this is "SortBy" if no column in query named "SortBy"<br>
/// UniqueId - default sorting field of query, one can set this outside query, will be used to sort report columns if one group in report/columns within group if several groups within report<br>
ClassMethod GenerateForSQL(className As %String, reportName As %String, sql As %String, sortandgroup As %Boolean, GroupOption As %String, SortOption As %String, SortBy As %String, UniqueId) As %Status
{
}

/// Generate a ZEN Report<br>
/// className - name that generated ZEN Report will have, for instance pkgname.GeneratedReport<br>
/// reportName - name of ZEN Report, root element of generated XML<br>
/// colarray<br>
/// sql - sql string - if "" using queryClass and queryName<br>
/// queryClass - name of class for which report is generated<br>
/// queryName - name of query for which report is generated<br>
/// GroupOption - name of option that determines grouping <br>
/// SortOption - name of option that determined sorting of detail records <br>
/// SortBy - name of support internal - set by SortOption, a good value for this is "SortBy" if no column in query named "SortBy"<br>
/// UniqueId - default sorting field of query, one can set this outside query, will be used to sort report columns if one group in report/columns within group if several groups within report<br>
ClassMethod UrGenerate(className As %String, reportName As %String, columns As %Integer, ByRef colarray As %String, sql As %String, queryClass As %String, queryName As %String, sortandgroup As %Boolean, GroupOption As %String, SortOption As %String, SortBy As %String, UniqueId) As %Status [ Internal ]
{
}

ClassMethod CreateReportDefinition(reportName As %String, sql As %String, queryClass As %String, queryName As %String, sortandgroup As %Boolean, ByRef colarray As %String, colinfo As %List, paraminfo As %List, UniqueId As %String) [ Internal ]
{
}

ClassMethod CreateReportDisplay(reportName As %String, ByRef colarray As %String, colinfo As %List, sortandgroup As %Boolean, GroupOption As %String, SortOption As %String, SortBy As %String) [ Internal ]
{
}

ClassMethod CreateXDataSection(className As %String, xdataname As %String, stream As %Stream.TmpCharacter, namespace As %String) As %Status [ Internal ]
{
}

ClassMethod CreateProperty(className As %String, Name As %String, Type As %String, isZENURL As %Boolean) [ Internal ]
{
}

ClassMethod CreateParameter(className As %String, Name As %String, Default As %String) [ Internal ]
{
}

ClassMethod decodetype(clientdatatypeenum As %Integer) As %String [ Internal ]
{
}

ClassMethod CopyReportPageXdata(ByRef stream As %GlobalCharacterStream, XdataName As %String) As %Status [ Internal ]
{
}

ClassMethod CreateOnBeforeReportMethod(className As %String, ByRef colarray As %String, colinfo As %List, GroupOption As %String, SortOption As %String, SortBy As %String, UniqueId As %String) As %Status [ Internal ]
{
}

ClassMethod GetMetaData(queryClass As %String, queryName As %String, ByRef ColNames, ByRef Params) [ Internal ]
{
}

}
