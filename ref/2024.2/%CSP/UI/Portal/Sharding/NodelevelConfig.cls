/// System Management Portal - Sharding Configuration for NodeLevel Clusters
Class %CSP.UI.Portal.Sharding.NodelevelConfig Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.Sharding.Utils) [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Sharding Configuration for Node Level Clusters";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Sharding.NodelevelConfig.zen";

Parameter HELPADDRESS = "Home,Configuration,Sharding,NodelevelConfig";

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Do not allow this page to auto-switch namespaces if $NAMESPACE is specified
Parameter AUTONS As BOOLEAN = 0;

/// Do not use standare Save/Cancel buttons
Property IsEditForm As %Boolean [ InitialExpression = 0 ];

Property ActivateShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Activate.zen",,1)} ];

Property AdvancedSettingsPage As %ZEN.Datatype.string [ InitialExpression = {..SettingsLink()} ];

Property ConfigurePage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Configure.zen",,1)} ];

Property EnableShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Enable.zen",,1)} ];

Property NodeLevelPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%25CSP.UI.Portal.Sharding.NodelevelConfig.zen",,1)} ];

Property RebalanceShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Rebalance.zen",,1)} ];

Property ShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%25CSP.UI.Portal.Sharding.Configuration.zen",,1)} ];

Property TableDetailsPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.TableDetails.zen",,1)} ];

Property VerifyShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Verify.zen",,1)} ];

/// Allow Assign if the current namespace is a master or it is not a shard
Property AllowAssign As %Boolean [ InitialExpression = 1 ];

/// Allow Verify if the current namespace a master
Property AllowVerify As %Boolean [ InitialExpression = 1 ];

/// Allow Activate if the current namespace is a master and if any shard is inactive
Property AllowActivate As %Boolean [ InitialExpression = 0 ];

/// Whether user can use Enable Sharding
Property HasSecPriviledge As %Boolean [ InitialExpression = {$System.Security.Check("%Admin_Secure","USE")} ];

/// Double the default timeout interval so long-running VerifyShards calls don't distort the page
Property iTimeoutInterval As %ZEN.Datatype.integer [ InitialExpression = 1000 ];

/// Whether the current InterSystems IRIS instance is enabled to act as a shard master or shard server.<br>
/// If it is not enabled, then this page will allow user to enable it.<br>
/// Once it is enabled, then user may be able to Add/Verify/Activate shard for namespace
Property IsShardingEnabled As %Boolean [ InitialExpression = 0 ];

Property PageMessage As %String;

Property MASTERNAMESPACE As %String;

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

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

ClientMethod tabChanged(index) [ Language = javascript ]
{
}

/// User changed RunQueriesAsync. Display appropriate hint.
ClientMethod doRunQueries() [ Language = javascript ]
{
}

ClientMethod doVerify(SHARD) [ Language = javascript ]
{
}

ClientMethod doRebalance() [ Language = javascript ]
{
}

ClientMethod doConfigure() [ Language = javascript ]
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

ClassMethod SaveOption(MASTERNAMESPACE, OptionName, OptionValue) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Start verifying shards
ClassMethod StartVerify(pMASTERNAMESPACE) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod StartRebalance(pMASTERNAMESPACE) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod GetShardingRole(pNamespace) As %String [ ZenMethod ]
{
}

/// Helper method to rename "Query" role to "Compute"
Method DrawRole(table As %ZEN.Component.tablePane, name As %ZEN.Datatype.string, seed As %ZEN.Datatype.string) As %Status
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
