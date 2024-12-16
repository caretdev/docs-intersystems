"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[46410],{79926:(e,a,n)=>{n.r(a),n.d(a,{contentTitle:()=>r,default:()=>d,frontMatter:()=>l,toc:()=>t});var s=n(74848),i=n(28453);const l={pagination_prev:null,pagination_next:null},r="%CSP.UI.Portal.Sharding.Configuration",t=[{value:"Parameters",id:"parameters",level:2},{value:"PAGENAME",id:"pagename",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"AUTONS",id:"autons",level:3},{value:"Properties",id:"properties",level:2},{value:"IsEditForm",id:"iseditform",level:3},{value:"ActivateShardingPage",id:"activateshardingpage",level:3},{value:"AssignShardingPage",id:"assignshardingpage",level:3},{value:"AdvancedSettingsPage",id:"advancedsettingspage",level:3},{value:"InitializePage",id:"initializepage",level:3},{value:"EnableShardingPage",id:"enableshardingpage",level:3},{value:"NodeLevelPage",id:"nodelevelpage",level:3},{value:"RebalanceShardingPage",id:"rebalanceshardingpage",level:3},{value:"ShardingPage",id:"shardingpage",level:3},{value:"TableDetailsPage",id:"tabledetailspage",level:3},{value:"VerifyShardingPage",id:"verifyshardingpage",level:3},{value:"AllowAssign",id:"allowassign",level:3},{value:"AllowVerify",id:"allowverify",level:3},{value:"HasShardingLicense",id:"hasshardinglicense",level:3},{value:"HasSecPriviledge",id:"hassecpriviledge",level:3},{value:"IsShardingEnabled",id:"isshardingenabled",level:3},{value:"PageMessage",id:"pagemessage",level:3},{value:"StartEnable",id:"startenable",level:3},{value:"CurrentNamespace",id:"currentnamespace",level:3},{value:"NodeLevelCluster",id:"nodelevelcluster",level:3},{value:"warningImage",id:"warningimage",level:3},{value:"iTimeoutInterval",id:"itimeoutinterval",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"SVGStyle",id:"svgstyle",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"checkNode",id:"checknode",level:3},{value:"onresizeHandler",id:"onresizehandler",level:3},{value:"tabChanged",id:"tabchanged",level:3},{value:"setMaster",id:"setmaster",level:3},{value:"doRebalance",id:"dorebalance",level:3},{value:"doRunQueries",id:"dorunqueries",level:3},{value:"doEdit",id:"doedit",level:3},{value:"doDeassign",id:"dodeassign",level:3},{value:"doVerify",id:"doverify",level:3},{value:"doActivate",id:"doactivate",level:3},{value:"doSettings",id:"dosettings",level:3},{value:"doTableDetails",id:"dotabledetails",level:3},{value:"timeout",id:"timeout",level:3},{value:"enableButtons",id:"enablebuttons",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"HideComponent",id:"hidecomponent",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"doNew",id:"donew",level:3},{value:"doCancel",id:"docancel",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"Deassign",id:"deassign",level:3},{value:"SaveOption",id:"saveoption",level:3},{value:"StartActivate",id:"startactivate",level:3},{value:"StartVerify",id:"startverify",level:3},{value:"DrawNamespaceHint",id:"drawnamespacehint",level:3},{value:"GetShardingRole",id:"getshardingrole",level:3},{value:"DrawAddress",id:"drawaddress",level:3},{value:"SettingsLink",id:"settingslink",level:3}];function c(e){const a={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(a.header,{children:(0,s.jsx)(a.h1,{id:"cspuiportalshardingconfiguration",children:"%CSP.UI.Portal.Sharding.Configuration"})}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Sharding.Configuration Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.Sharding.Utils) [ System = 4 ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"System Management Portal - Sharding Configuration"}),"\n",(0,s.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Sharding Configuration";\n'})}),"\n",(0,s.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,s.jsx)(a.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Sharding.Configuration.zen";\n'})}),"\n",(0,s.jsx)(a.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Configuration,Sharding Configuration";\n'})}),"\n",(0,s.jsx)(a.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Manage";\n'})}),"\n",(0,s.jsx)(a.p,{children:"Security requirement"}),"\n",(0,s.jsx)(a.h3,{id:"autons",children:"AUTONS"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,s.jsx)(a.p,{children:"Do not allow this page to auto-switch namespaces if $NAMESPACE is specified"}),"\n",(0,s.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(a.h3,{id:"iseditform",children:"IsEditForm"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property IsEditForm As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(a.p,{children:"Do not use standare Save/Cancel buttons"}),"\n",(0,s.jsx)(a.h3,{id:"activateshardingpage",children:"ActivateShardingPage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property ActivateShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Activate.zen",,1)} ];\n'})}),"\n",(0,s.jsx)(a.h3,{id:"assignshardingpage",children:"AssignShardingPage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property AssignShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Assign.zen",,1)} ];\n'})}),"\n",(0,s.jsx)(a.h3,{id:"advancedsettingspage",children:"AdvancedSettingsPage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property AdvancedSettingsPage As %ZEN.Datatype.string [ InitialExpression = {..SettingsLink()} ];\n"})}),"\n",(0,s.jsx)(a.h3,{id:"initializepage",children:"InitializePage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property InitializePage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Initialize.zen",,1)} ];\n'})}),"\n",(0,s.jsx)(a.h3,{id:"enableshardingpage",children:"EnableShardingPage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property EnableShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Enable.zen",,1)} ];\n'})}),"\n",(0,s.jsx)(a.h3,{id:"nodelevelpage",children:"NodeLevelPage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property NodeLevelPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%25CSP.UI.Portal.Sharding.NodelevelConfig.zen",,1)} ];\n'})}),"\n",(0,s.jsx)(a.h3,{id:"rebalanceshardingpage",children:"RebalanceShardingPage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property RebalanceShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Rebalance.zen",,1)} ];\n'})}),"\n",(0,s.jsx)(a.h3,{id:"shardingpage",children:"ShardingPage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property ShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%25CSP.UI.Portal.Sharding.Configuration.zen",,1)} ];\n'})}),"\n",(0,s.jsx)(a.h3,{id:"tabledetailspage",children:"TableDetailsPage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property TableDetailsPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.TableDetails.zen",,1)} ];\n'})}),"\n",(0,s.jsx)(a.h3,{id:"verifyshardingpage",children:"VerifyShardingPage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property VerifyShardingPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/mgr/%CSP.UI.Portal.Sharding.Dialog.Verify.zen",,1)} ];\n'})}),"\n",(0,s.jsx)(a.h3,{id:"allowassign",children:"AllowAssign"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property AllowAssign As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(a.p,{children:"Allow Assign if the current namespace is a master or it is not a shard"}),"\n",(0,s.jsx)(a.h3,{id:"allowverify",children:"AllowVerify"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property AllowVerify As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(a.p,{children:"Allow Verify if the current namespace has any sharding config"}),"\n",(0,s.jsx)(a.h3,{id:"hasshardinglicense",children:"HasShardingLicense"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property HasShardingLicense As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(a.p,{children:"Whether Sharding license is present"}),"\n",(0,s.jsx)(a.h3,{id:"hassecpriviledge",children:"HasSecPriviledge"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property HasSecPriviledge As %Boolean [ InitialExpression = {$System.Security.Check("%Admin_Secure","USE")} ];\n'})}),"\n",(0,s.jsx)(a.p,{children:"Whether user can use Enable Sharding"}),"\n",(0,s.jsx)(a.h3,{id:"isshardingenabled",children:"IsShardingEnabled"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property IsShardingEnabled As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsxs)(a.p,{children:["Whether the current InterSystems IRIS instance is enabled to act as a shard master or shard server.",(0,s.jsx)(a.br,{}),"\nIf it is not enabled, then this page will allow user to enable it.",(0,s.jsx)(a.br,{}),"\nOnce it is enabled, then user may be able to Add/Verify/Activate shard for namespace"]}),"\n",(0,s.jsx)(a.h3,{id:"pagemessage",children:"PageMessage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property PageMessage As %String;\n"})}),"\n",(0,s.jsx)(a.h3,{id:"startenable",children:"StartEnable"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property StartEnable As %String;\n"})}),"\n",(0,s.jsx)(a.p,{children:"status after EnableSharding is executed. It is either 1 or tSC. If it is 1 then we display restart instance message."}),"\n",(0,s.jsx)(a.h3,{id:"currentnamespace",children:"CurrentNamespace"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property CurrentNamespace As %String(ZENURL = "$NAMESPACE");\n'})}),"\n",(0,s.jsx)(a.p,{children:'Captures the "current" namespace'}),"\n",(0,s.jsx)(a.h3,{id:"nodelevelcluster",children:"NodeLevelCluster"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property NodeLevelCluster As %String;\n"})}),"\n",(0,s.jsxs)(a.p,{children:["If the current ",(0,s.jsx)(a.em,{children:"Namespace"})," is part of a Node-level cluster, this property holds the role of this namespace for that cluster, so that checkNode can display a proper warning. Note that this value will be left empty if this ",(0,s.jsx)(a.em,{children:"Instance"})," is part of a node-level cluster, but the current ",(0,s.jsx)(a.em,{children:"Namespace"})," plays no role in it, as in those cases it's OK (though likely not very practical) to change / initialize a namespace-level config here."]}),"\n",(0,s.jsx)(a.h3,{id:"warningimage",children:"warningImage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property warningImage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/broker/images/warning.png")} ];\n'})}),"\n",(0,s.jsx)(a.h3,{id:"itimeoutinterval",children:"iTimeoutInterval"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property iTimeoutInterval As %ZEN.Datatype.integer [ InitialExpression = 1000 ];\n"})}),"\n",(0,s.jsx)(a.p,{children:"Double the default timeout interval so long-running VerifyShards calls don't distort the page"}),"\n",(0,s.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,s.jsx)(a.h3,{id:"svgstyle",children:"SVGStyle"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"XData SVGStyle\n"})}),"\n",(0,s.jsx)(a.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,s.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(a.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,s.jsx)(a.h3,{id:"checknode",children:"checkNode"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod checkNode() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"onresizehandler",children:"onresizeHandler"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onresizeHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"This client event, if present, is fired when the page is resized."}),"\n",(0,s.jsx)(a.h3,{id:"tabchanged",children:"tabChanged"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod tabChanged(index) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"setmaster",children:"setMaster"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod setMaster() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"User changed master namespace. Reload page with new namespace."}),"\n",(0,s.jsx)(a.h3,{id:"dorebalance",children:"doRebalance"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doRebalance() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"dorunqueries",children:"doRunQueries"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doRunQueries() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"User changed RunQueriesAsync. Display appropriate hint."}),"\n",(0,s.jsx)(a.h3,{id:"doedit",children:"doEdit"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doEdit(SHARD) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Assign new shard or edit existing shard"}),"\n",(0,s.jsx)(a.h3,{id:"dodeassign",children:"doDeassign"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doDeassign(SHARD) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"doverify",children:"doVerify"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doVerify(SHARD) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"doactivate",children:"doActivate"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doActivate() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"dosettings",children:"doSettings"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doSettings() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"dotabledetails",children:"doTableDetails"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doTableDetails(tableName, shardKey) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"timeout",children:"timeout"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod timeout() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"enablebuttons",children:"enableButtons"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod enableButtons(flag) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"User hit Verify button (flag=false): disable currently enabled buttons When verify finishes (flag=true): enable what needs enabled"}),"\n",(0,s.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,s.jsx)(a.h3,{id:"hidecomponent",children:"HideComponent"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method HideComponent(id As %String)\n"})}),"\n",(0,s.jsx)(a.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,s.jsx)(a.h3,{id:"donew",children:"doNew"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doNew() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"docancel",children:"doCancel"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod doCancel() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"This method resets the modified indicator and return user to the parent page."}),"\n",(0,s.jsx)(a.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"This client event, if present, is fired when the a popup page launched from this page fires an action."}),"\n",(0,s.jsx)(a.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,s.jsx)(a.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,s.jsx)(a.h3,{id:"deassign",children:"Deassign"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod Deassign(Namespace, ShardDatabase) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"saveoption",children:"SaveOption"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SaveOption(Namespace, OptionName, OptionValue) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"startactivate",children:"StartActivate"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod StartActivate(Namespace) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Start verifying shards"}),"\n",(0,s.jsx)(a.h3,{id:"startverify",children:"StartVerify"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod StartVerify(Namespace) As %ZEN.proxyObject [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Start verifying shards"}),"\n",(0,s.jsx)(a.h3,{id:"drawnamespacehint",children:"DrawNamespaceHint"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method DrawNamespaceHint(seed) As %Status\n"})}),"\n",(0,s.jsx)(a.h3,{id:"getshardingrole",children:"GetShardingRole"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod GetShardingRole(pNamespace) As %String [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(a.h3,{id:"drawaddress",children:"DrawAddress"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method DrawAddress(table As %ZEN.Component.tablePane, name As %ZEN.Datatype.string, seed As %ZEN.Datatype.string) As %Status\n"})}),"\n",(0,s.jsx)(a.p,{children:"Helper method to flag the current instance"}),"\n",(0,s.jsx)(a.h3,{id:"settingslink",children:"SettingsLink"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod SettingsLink() As %String [ Internal ]\n"})})]})}function d(e={}){const{wrapper:a}={...(0,i.R)(),...e.components};return a?(0,s.jsx)(a,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,a,n)=>{n.d(a,{R:()=>r,x:()=>t});var s=n(96540);const i={},l=s.createContext(i);function r(e){const a=s.useContext(l);return s.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function t(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:r(e.components),s.createElement(l.Provider,{value:a},e.children)}}}]);