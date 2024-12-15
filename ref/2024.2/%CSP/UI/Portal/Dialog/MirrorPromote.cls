/// Promote a DR to failover member with VIP and partner selection.
Class %CSP.UI.Portal.Dialog.MirrorPromote Extends %CSP.Portal.standardDialog [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Dialog.MirrorPromote.zen";

/// Displayed name of this page.
Parameter PAGENAME = "Actions for promotion to failover member";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage:USE";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Property DownList As %ZEN.Datatype.string(ZENURL = "DownList");

Property VIPAct As %ZEN.Datatype.integer(ZENURL = "VIPAct");

Property InterfaceSeed As %ZEN.Datatype.string(ZENURL = "InterfaceSeed");

Property ShowVAI As %ZEN.Datatype.boolean [ InitialExpression = {$ZCVT($ZV,"U")["HP-UX"} ];

Property LocalDownList As %String;

Property PromoteErrorText As %String;

Property PartnerMember As %ZEN.Datatype.string;

Property LastJrnFileName As %ZEN.Datatype.string;

Property LastJrnRecTime As %ZEN.Datatype.string;

/// This Style block contains page-specific CSS style definitions.
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

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// user selected a VIP from drop-down. put it into the textbox and show when ShowVAI is true.
ClientMethod selectVIP(value) [ Language = javascript ]
{
}

/// user selected a failover partner member from drop-down.
ClientMethod selectPartner(value) [ Language = javascript ]
{
}

/// Promote to failover after VIP interface is selected.
ClientMethod doPromote(stage) [ Language = javascript ]
{
}

/// This method is called by Mirror pages to build drop-down list for Interfaces
Method DrawNetworkInterface(pSeed As %String) As %Status
{
}

/// This method is called by Mirror pages to build drop-down list for mirror partner
Method DrawMirrorPartner(pSeed) As %Status
{
}

Method DownListMsg(DownList As %String) As %Status [ ZenMethod ]
{
}

/// This callback is called after the server-side page
/// object and all of its children are created.<br/>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
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

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

Method PromoteToFailover(virtualinterface, partner, standalone, NoFailover) As %Integer [ ZenMethod ]
{
}

}
