/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Class for building Export/Import Wizard Content
Class %CSP.UI.SQL.ExImWizard Extends %CSP.Page [ System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Ensure user has %Development:USE
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Return appropriate label for whether to include header for export or whether the file includes headers for import.
ClassMethod HasHeaderLabel(Wizard)
{
}

/// Draws Table specific content
ClassMethod DrawTableContent(Wizard)
{
}

/// Draws Link Table page 4 content
ClassMethod DrawTablePage4(Wizard)
{
}

/// Draws Result Page
ClassMethod DrawResultPage(pagenumber)
{
}

}
