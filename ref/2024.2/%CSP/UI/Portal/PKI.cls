/// System Management Portal - System Administration - InterSystems IRIS Public Key Infrastructure
Class %CSP.UI.Portal.PKI Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.PKI.zen";

Parameter HELPADDRESS = "System Administration,Security,Public Key Infrastructure";

/// Displayed name of this page.
Parameter PAGENAME = "Public Key Infrastructure";

/// Security requirement
Parameter RESOURCE = "%Admin_Secure";

/// Indicate whether the local Certificate Authority server has been defined.
Property isCAServerDefined As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Indicate whether the local Certificate Authority client has been defined.
Property isCAClientDefined As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User clicked one of the Browse buttons.
/// Save the name of the textfield so that when you return you know which textfield to update.
ClientMethod browseSelect(name) [ Language = javascript ]
{
}

/// User clicked the Back button for CA Server form. Hide the required fields and show the first two.
ClientMethod doBack() [ Language = javascript ]
{
}

/// User clicked Continue for CA Server form. Validate the first two required fields and decide whether to show the rest of required fields.
ClientMethod doNext() [ Language = javascript ]
{
}

/// User clicked Cancel on an option.
ClientMethod doCancel() [ Language = javascript ]
{
}

ClientMethod doDetails(option) [ Language = javascript ]
{
}

/// This method is fired up after onDrawContent is finished. Hide progress message and display error if exists.
ClientMethod drawDone(tab) [ Language = javascript ]
{
}

ClientMethod doGetCertificate(number) [ Language = javascript ]
{
}

/// User clicked a Process link on the "Process pending Certificate Singing Requests" table.
ClientMethod doIssue(name) [ Language = javascript ]
{
}

/// User clicked a Process link on the "Process pending Certificate Singing Requests" table.
ClientMethod doProcess(name) [ Language = javascript ]
{
}

ClientMethod doProcessRefresh() [ Language = javascript ]
{
}

ClientMethod doProcessCancel() [ Language = javascript ]
{
}

/// User clicked a Delete link on the "Process pending Certificate Singing Requests" table.
ClientMethod doProcessDelete(name) [ Language = javascript ]
{
}

ClientMethod doProcessFinish() [ Language = javascript ]
{
}

ClientMethod doReinitialize() [ Language = javascript ]
{
}

ClientMethod doSave(option) [ Language = javascript ]
{
}

/// On the Get Certificate option, show all certificates or show certificate for this instance only.
/// showflag is equal to "showall" or "showinstance". Default is "showall" when the option is opened.
ClientMethod doShowGetList(showflag) [ Language = javascript ]
{
}

ClientMethod resetMsgColor() [ Language = javascript ]
{
}

/// Write out result message and refresh option when appopriate.
ClientMethod afterSave(result As %ZEN.proxyObject) [ Language = javascript ]
{
}

/// Enable/disable Contact Phone and Email depending on whether the Contact Name is null.
ClientMethod changeContact(namevalue) [ Language = javascript ]
{
}

/// Enable/disable SMTP related fields depending on whether the SMTP Server is null.
ClientMethod changeSMTP(namevalue) [ Language = javascript ]
{
}

ClientMethod validate(option) [ Language = javascript ]
{
}

/// validate the control value. pass is either "true" or "false" indicating if there is already a field failed pass validation.
ClientMethod validateRequired(ctl, pass, type) As %Boolean [ Language = javascript ]
{
}

/// This method validate the following:
/// 1) value must not be null, AND
/// 2) value must be only numeric
ClientMethod validateNumeric(ctl) As %Boolean [ Language = javascript ]
{
}

/// prepare proxy for transporting SubjectDN's value from page to server.
ClientMethod setSubjectDN(proxy As %ZEN.proxyObject, n, value) [ Language = javascript ]
{
}

ClientMethod showTLS(flag) [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Return 1 if both cer and key files exist; 0 otherwise.
ClassMethod Exist(CAPath, CAFilename) As %Boolean [ ZenMethod ]
{
}

/// Load CA Client configure properties into form
ClassMethod LoadClientConfigure() As %Boolean [ ZenMethod ]
{
}

/// Load CA Server configure properties into form
ClassMethod LoadServerConfigure() As %Boolean [ ZenMethod ]
{
}

ClassMethod DeletePendingProcess(pName) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod GetCertificate(pNumber) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// tab = 2: Draw is finished, Status is "Done".
ClassMethod GetStatus(tab) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// This method deletes the Certificate Authority server configuration and
/// all pending Certificate Signing Requests and issued Certificates, allowing user to start over.
ClassMethod Reinitialize() As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod SaveClientConfigure(pIsCAClientDefined, pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod SaveServerConfigure(pIsCAServerDefined, pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod SignProcess(pName, pPassword, pCertType) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod SubmitCSR(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Draw Subject Disignated Name for "Server" and "Client" (passed in as pConfigType)
ClassMethod DrawSubjectDN(pConfigType As %String) As %Status
{
}

/// Draw html code for Get Certificate(s) from Certificate Authority server
/// The pType determines if we are going to (showall) List all issued certificates, or (showinstance) List certificates issued for this instance
ClassMethod DrawGetCAList(pType As %String) As %Status
{
}

ClassMethod DrawGetCAListError(ErrorMsg)
{
}

/// Draw html code for Pending Certificate Signing Request
ClassMethod DrawProcessPending(pName As %String) As %Status
{
}

/// Advanced security is always enabled now so the redirection when disabled is no longer necessary.
/// I don't know whether the do nothing %OnPreHTTP method is still needed.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// validate file name root.
ClassMethod ValidateFile(pValue As %String) As %String [ ZenMethod ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Get the title string to add to the locator row.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

}
