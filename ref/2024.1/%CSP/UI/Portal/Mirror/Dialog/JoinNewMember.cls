/// This page maybe called to allow user to join the system as a new member when certain failure occurred.
Class %CSP.UI.Portal.Mirror.Dialog.JoinNewMember Extends (%CSP.UI.Portal.Dialog.WizardTemplate, %ZEN.Portal.Utils, %CSP.UI.Portal.Mirror.Utils) [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Mirror.Dialog.JoinNewMember.zen";

/// Displayed name of this page.
Parameter PAGENAME = "JoinNewMember";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property MirrorName As %ZEN.Datatype.string(ZENURL = "MirrorName");

Property MemberType As %ZEN.Datatype.string(ZENURL = "MemberType");

Property MemberCount As %ZEN.Datatype.string(ZENURL = "MemberCount");

Property FailoverCount As %ZEN.Datatype.string(ZENURL = "FailoverCount");

Property PrimaryId As %ZEN.Datatype.string(ZENURL = "PrimaryId");

Property InitialMessage As %String;

XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// user selected/changed Join Mirror type as Failover(joinType=1) or Async(joinType=2)
ClientMethod changeType() [ Language = javascript ]
{
}

/// user changed the join type: Failover or Async.
/// if Failover,
ClientMethod handleType() [ Language = javascript ]
{
}

ClientMethod hideContent(flag) [ Language = javascript ]
{
}

/// User has selected an AsyncMemberType
ClientMethod doChangeAsyncMemberType(AsyncMemberType) [ Language = javascript ]
{
}

/// User has made a selection of EncryptCommunication type
ClientMethod doChangeEncryptCommunication() [ Language = javascript ]
{
}

/// delete?
ClientMethod getLocalMirrorInfo() [ Language = javascript ]
{
}

ClientMethod validateOurname() [ Language = javascript ]
{
}

ClientMethod validateIPFormat() [ Language = javascript ]
{
}

ClientMethod validateSuperServer() [ Language = javascript ]
{
}

ClientMethod validateAgent() [ Language = javascript ]
{
}

ClientMethod validateInstanceName() [ Language = javascript ]
{
}

ClientMethod validateLogicalIndex() [ Language = javascript ]
{
}

ClientMethod doSSL(btnId) [ Language = javascript ]
{
}

/// Overriding for DN redraw
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
///
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// Check all mirroring fields and display all error messages.
ClientMethod validateBeforeSave() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the Cancel button.
/// If this returns false, then the dialog is not cancelled.
ClientMethod ondialogCancel() [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

ClassMethod SaveData(pMirrorName, pSystemName, pMemberType, pAsyncMemberType, pMirrorInfo As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Method to get validation info
Method GetSystemInfo(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

ClassMethod ValidateMemberName(pName) As %String [ ZenMethod ]
{
}

ClassMethod ValidateVI(pIdxnum, pOS, pHpsun, pVirt) As %String [ ZenMethod ]
{
}

/// pAddressType = "default" or "super" or "agent"
ClassMethod IsIPFormatValid(pAddress, pAddressType) As %String [ ZenMethod ]
{
}

ClassMethod RetrieveMirrorConfig(pMirname, pIpaddr, pPort, pInstanceName) As %String [ ZenMethod ]
{
}

}
