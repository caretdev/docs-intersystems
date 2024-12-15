/// Utility class for System Management Portal mirroring pages
Class %CSP.UI.Portal.Mirror.Utils [ Abstract, System = 4 ]
{

Parameter DOMAIN = "%Utility";

Property DisableRemove As %Boolean [ InitialExpression = 0 ];

Property DisableSave As %Boolean [ InitialExpression = 0 ];

Property ModifiedPrivateAddress As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property ModifiedAgentAddress As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property ShowVAI As %ZEN.Datatype.boolean [ InitialExpression = {$ZCVT($ZV,"U")["HP-UX"} ];

Property SSLLink As %ZEN.Datatype.string;

Property SSLDefined As %ZEN.Datatype.boolean [ InitialExpression = {$$$SSLDefined} ];

Property CurrentFOCmpMode As %Integer [ InitialExpression = 0 ];

Property CurrentASYNCmpMode As %Integer [ InitialExpression = 0 ];

Property CurrentFOCmpType As %Integer [ InitialExpression = 0 ];

Property CurrentASYNCmpType As %Integer [ InitialExpression = 0 ];

Property CurrentMultiDejournal As %Integer [ InitialExpression = 0 ];

Property OldMemberName As %ZEN.Datatype.string;

Property OldPrivateAddr As %ZEN.Datatype.string;

Property OldECPAddr As %ZEN.Datatype.string;

Property OldAgentAddr As %ZEN.Datatype.string;

/// make Superserver address the default for Private address, if user has not manually changed the Private address.
ClientMethod updateAddress(val, isZen) [ Language = javascript ]
{
}

/// User modified compression mode.
ClientMethod CompressMode(val, isAsync) [ Language = javascript ]
{
}

/// User modified compression type.
ClientMethod CompressType(val, isAsync) [ Language = javascript ]
{
}

ClientMethod MultiDejournal(val) [ Language = javascript ]
{
}

/// user modified Private Address
ClientMethod modifiedAddress(NewVal, Type, useZen) [ Language = javascript ]
{
}

/// user modified Superserver Address
ClientMethod modifiedECPAddress(NewVal, Type, useZen) [ Language = javascript ]
{
}

/// user modified Agent Address
ClientMethod modifiedAgentAddress(NewVal, Type, useZen) [ Language = javascript ]
{
}

ClientMethod modifiedMemberName(NewVal, Type, useZen) [ Language = javascript ]
{
}

ClientMethod cleanInput(field) [ Language = javascript ]
{
}

/// show/hide advanced or connectivity setting box
ClientMethod toggle(id) [ Language = javascript ]
{
}

/// show/hide SSL/TLS Config link. value = 1 is to show.
ClientMethod toggleSSL(value) [ Language = javascript ]
{
}

ClientMethod openSSL() [ Language = javascript ]
{
}

/// user selected a VIP from drop-down. put it into the textbox and show when ShowVAI is true.
ClientMethod selectVIP(value, useZen) [ Language = javascript ]
{
}

/// This method is called by Mirror pages to return linkSSL and labelSSL by reference
/// If both %MirrorClient and %MirrorServer are defined, we will return "View Mirror..." link text.
/// Otherwise it is "Create...".
ClassMethod GetSSLLink(Output linkSSL As %String, Output lblSSL As %String) As %Status
{
}

/// This method is called by Mirror pages to build drop-down list for Interfaces
ClassMethod DrawNetworkInterface(pSeed As %String) As %Status
{
}

ClassMethod SSLverification(mirrorname) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method InitialSSLverification(mirrorname As %String, instance As %String, ipaddr As %String, port As %String) As %String [ ZenMethod ]
{
}

Method DisplayError(error As %Status) As %Status
{
}

ClassMethod AnyDNUpdates(MirrorName As %String) As %Integer [ ZenMethod ]
{
}

Method GetDefaultAgentAddress(ECPAddr As %String) As %String [ ZenMethod ]
{
}

ClassMethod ValidateMemberName(Name As %String) As %String [ ZenMethod ]
{
}

ClassMethod ValidateAddress(Addr As %String) As %String [ ZenMethod ]
{
}

/// ***** The following methods deal with failure management.    ***** ///
/// ***** Currently they are shared by EditFailover and Monitor. ***** ///
/// ***** If you make changes, please re-test both pages.        ***** ///
/// This method returns information regarding mirror failure, if any, for the UI.
///
ClassMethod ValidateMirror(Output pObject As %ZEN.proxyObject) As %Status
{
}

ClassMethod GetMirrorFailureInfo(pFailureCode As %String, pMirrorName As %String, pInfo As %String, Output pFail As %ZEN.proxyObject) As %Status
{
}

/// Return information about PrimaryId and Failover member count
ClassMethod GetJoinInfo(mirname, ByRef pObject As %ZEN.proxyObject) As %Status
{
}

/// Return options to deal with mirroring faiture situations
/// json representing failure object should be passed in.
ClientMethod getFailureMessages(json) [ Language = javascript ]
{
}

/// handle special case of failure to remove local config
ClientMethod doRemoveLocalConfig() [ Language = javascript ]
{
}

/// handle special case of failure to allow join this mirror as a new member.
ClientMethod doJoinNewMember() [ Language = javascript ]
{
}

/// handle possible "BADDIR" failure code. (currently not used)
ClientMethod doChangeBaseDir() [ Language = javascript ]
{
}

/// Access edit node dialog directly from the "Update network address" link when failureMessage includes it.
/// Maybe called from EditFailover or EditAsync or Monitor
ClientMethod doUpdateNode(nodeName) [ Language = javascript ]
{
}

/// Updating arbiter address, we need to validate the address.
ClientMethod changeArbiter(newVal) [ Language = javascript ]
{
}

ClassMethod ValidateArbiterAddress(Address) As %String [ ZenMethod ]
{
}

/// This method is created based on DeleteLocalConfig^MIRROR for SMP to use
ClassMethod DeleteLocalConfig(pDeleteDBs, pDeleteJournals) As %Status
{
}

/// Fix failure code "BADDIR" with new base directory. (currently not used)
ClassMethod FixBaseDirectory(pMirrorName, pSysName, pBaseDir) As %ZEN.proxyObject [ ZenMethod ]
{
}

}
