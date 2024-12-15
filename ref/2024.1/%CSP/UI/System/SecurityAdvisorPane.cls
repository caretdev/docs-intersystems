/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This pane is used by the Security Advisor page
/// It displays recommendations for system security settings.
Class %CSP.UI.System.SecurityAdvisorPane Extends %CSP.Util.Pane [ System = 4 ]
{

/// Overwritten by subclasses to draw anything this pane needs for the HEAD section.
Method DrawHEAD(pInstance As PageInstance) As %Status
{
}

/// Draw the BODY of the detail pane
Method DrawBODY(pInstance As PageInstance) As %Status
{
}

/// Calculate security recommendations
ClassMethod GetRecommendations(Output recommend) As %Status
{
}

/// Calculate service recommendations
ClassMethod GetServiceRecommendations(ByRef recommend) As %Status
{
}

/// Calculate auditing recommendations
ClassMethod GetAuditRecommendations(ByRef recommend) As %Status
{
}

/// Calculate user recommendations (also figures out ROLE recommendations)
ClassMethod GetUserRecommendations(ByRef recommend) As %Status
{
}

/// Calculate application recommendations
ClassMethod GetApplicationRecommendations(ByRef recommend) As %Status
{
}

ClassMethod AddRecommendation(ByRef recommend, pType As %String, pElement As %String, pMessage As %String) As %Boolean
{
}

/// Called from client to set ignore flag.
/// <var>id</id> is id of corresponding HTML element.
ClassMethod SetIgnoreFlag(pType, pElement, pMessage, pFlag, id)
{
}

}
