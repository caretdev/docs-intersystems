/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Class for building Link Wizard Content
Class %CSP.UI.SQL.LinkWizard Extends %CSP.Page [ System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Ensure user has %Development:USE
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Draws Link Table specific content
ClassMethod DrawLinkTableContent(Wizard)
{
}

/// Draws Link Table page 4 content
ClassMethod DrawTablePage4()
{
}

/// Draws Link Procedure page 4 content
ClassMethod DrawProcPage4()
{
}

/// Draws Data Migration page 4 content
ClassMethod DrawDataPage4()
{
}

/// Draws Data Migration page 5 content (YSD1997) to set NOCHECK,DeferIndices,NOTRIGGER,DeleteExistingData,MaxErrors
ClassMethod DrawDataPage5()
{
}

/// Draws Result Page
ClassMethod DrawResultPage(pagenumber)
{
}

}
