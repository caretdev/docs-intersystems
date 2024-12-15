/// System Management Portal - Sharding Configuration
Class %CSP.UI.Portal.Sharding.Configuration Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.Sharding.Utils) [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Sharding Configuration";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Sharding.Configuration.zen";

Parameter HELPADDRESS = "Home,Configuration,Sharding Configuration";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Do not allow this page to auto-switch namespaces if $NAMESPACE is specified
Parameter AUTONS As BOOLEAN = 0;

/// Do not use standare Save/Cancel buttons
Property IsEditForm As %Boolean [ InitialExpression = 0 ];

Property ActivateShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Activate.zen",,1)} ];

Property AssignShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Assign.zen",,1)} ];

Property AdvancedSettingsPage As %ZEN.Datatype.string [ InitialExpression = {..SettingsLink()} ];

Property InitializePage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Initialize.zen",,1)} ];

Property EnableShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Enable.zen",,1)} ];

Property NodeLevelPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%25CSP.UI.Portal.Sharding.NodelevelConfig.zen",,1)} ];

Property RebalanceShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Rebalance.zen",,1)} ];

Property ShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%25CSP.UI.Portal.Sharding.Configuration.zen",,1)} ];

Property TableDetailsPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.TableDetails.zen",,1)} ];

Property VerifyShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Verify.zen",,1)} ];

/// Allow Assign if the current namespace is a master or it is not a shard
Property AllowAssign As %Boolean [ InitialExpression = 0 ];

/// Allow Verify if the current namespace has any sharding config
Property AllowVerify As %Boolean [ InitialExpression = 0 ];

/// Whether Sharding license is present
Property HasShardingLicense As %Boolean [ InitialExpression = 0 ];

/// Whether user can use Enable Sharding
Property HasSecPriviledge As %Boolean [ InitialExpression = {$System.Security.Check("%Admin_Secure","USE")} ];

/// Whether the current InterSystems IRIS instance is enabled to act as a shard master or shard server.<br>
/// If it is not enabled, then this page will allow user to enable it.<br>
/// Once it is enabled, then user may be able to Add/Verify/Activate shard for namespace
Property IsShardingEnabled As %Boolean [ InitialExpression = 0 ];

Property PageMessage As %String;

/// status after EnableSharding is executed. It is either 1 or tSC. If it is 1 then we display restart instance message.
Property StartEnable As %String;

/// Captures the "current" namespace
Property CurrentNamespace As %String(ZENURL = "$NAMESPACE");

/// If the current <i>Namespace</i> is part of a Node-level cluster, this property holds the role
/// of this namespace for that cluster, so that <method>checkNode</method> can display a proper
/// warning.
/// Note that this value will be left empty if this <i>Instance</i> is part of a node-level cluster,
/// but the current <i>Namespace</i> plays no role in it, as in those cases it's OK (though likely
/// not very practical) to change / initialize a namespace-level config here.
Property NodeLevelCluster As %String;

Property warningImage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/broker/images/warning.png")} ];

/// Double the default timeout interval so long-running VerifyShards calls don't distort the page
Property iTimeoutInterval As %ZEN.Datatype.integer [ InitialExpression = 1000 ];

XData Style
{
}

XData SVGStyle
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod checkNode() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

ClientMethod tabChanged(index) [ Language = javascript ]
{
}

/// User changed master namespace. Reload page with new namespace.
ClientMethod setMaster() [ Language = javascript ]
{
}

ClientMethod doRebalance() [ Language = javascript ]
{
}

/// User changed RunQueriesAsync. Display appropriate hint.
ClientMethod doRunQueries() [ Language = javascript ]
{
}

/// Assign new shard or edit existing shard
ClientMethod doEdit(SHARD) [ Language = javascript ]
{
}

ClientMethod doDeassign(SHARD) [ Language = javascript ]
{
}

ClientMethod doVerify(SHARD) [ Language = javascript ]
{
}

ClientMethod doActivate() [ Language = javascript ]
{
}

ClientMethod doSettings() [ Language = javascript ]
{
}

ClientMethod doTableDetails(tableName, shardKey) [ Language = javascript ]
{
}

ClientMethod timeout() [ Language = javascript ]
{
}

/// User hit Verify button (flag=false): disable currently enabled buttons
/// When verify finishes (flag=true): enable what needs enabled
ClientMethod enableButtons(flag) [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method HideComponent(id As %String)
{
}

Method %OnGetPageName() As %String
{
}

ClientMethod doNew() [ Language = javascript ]
{
}

/// This method resets the modified indicator and return user to the parent page.
ClientMethod doCancel() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the a popup page
/// launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Get information to display in the ribbon bar.
Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status
{
}

ClassMethod Deassign(Namespace, ShardDatabase) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod SaveOption(Namespace, OptionName, OptionValue) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Start verifying shards
ClassMethod StartActivate(Namespace) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Start verifying shards
ClassMethod StartVerify(Namespace) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method DrawNamespaceHint(seed) As %Status
{
}

ClassMethod GetShardingRole(pNamespace) As %String [ ZenMethod ]
{
}

/// Helper method to flag the current instance
Method DrawAddress(table As %ZEN.Component.tablePane, name As %ZEN.Datatype.string, seed As %ZEN.Datatype.string) As %Status
{
}

ClassMethod SettingsLink() As %String [ Internal ]
{
}

}
