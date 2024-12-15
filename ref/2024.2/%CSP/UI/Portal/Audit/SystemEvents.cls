/// System Management Portal - Security Management - System Audit Events
Class %CSP.UI.Portal.Audit.SystemEvents Extends %CSP.UI.Portal.Audit.EventsTemplate [ System = 4 ]
{

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Audit.SystemEvents.zen";

Parameter HELPADDRESS = "System Administration,Security,Auditing,Configure System Events";

/// Displayed name of this page.
Parameter PAGENAME = "System Audit Events";

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod doSelWizard() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

}
