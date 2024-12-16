"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[93804],{41665:(e,n,r)=>{r.r(n),r.d(n,{contentTitle:()=>l,default:()=>o,frontMatter:()=>i,toc:()=>t});var a=r(74848),s=r(28453);const i={pagination_prev:null,pagination_next:null},l="%CSP.UI.Portal.Mirror.Monitor",t=[{value:"Parameters",id:"parameters",level:2},{value:"AUTONS",id:"autons",level:3},{value:"CSPURL",id:"cspurl",level:3},{value:"HELPADDRESS",id:"helpaddress",level:3},{value:"PAGENAME",id:"pagename",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"CanDisconnect",id:"candisconnect",level:3},{value:"CanConnect",id:"canconnect",level:3},{value:"IsNotSetUp",id:"isnotsetup",level:3},{value:"IsPrimary",id:"isprimary",level:3},{value:"IsDR",id:"isdr",level:3},{value:"DemoteOther",id:"demoteother",level:3},{value:"MirrorMemberType",id:"mirrormembertype",level:3},{value:"MirrorName",id:"mirrorname",level:3},{value:"DefinedPrimary",id:"definedprimary",level:3},{value:"NewDefinedPrimary",id:"newdefinedprimary",level:3},{value:"MyMemberName",id:"mymembername",level:3},{value:"NoFailoverBtn",id:"nofailoverbtn",level:3},{value:"IsNoPartnerNoFailover",id:"isnopartnernofailover",level:3},{value:"SelectedMirror",id:"selectedmirror",level:3},{value:"ThisMemberName",id:"thismembername",level:3},{value:"ThisMemberECP",id:"thismemberecp",level:3},{value:"ThisMemberPrivateAddress",id:"thismemberprivateaddress",level:3},{value:"OtherMemberName",id:"othermembername",level:3},{value:"OtherMemberECP",id:"othermemberecp",level:3},{value:"OtherMemberPrivateAddress",id:"othermemberprivateaddress",level:3},{value:"ReceivedData",id:"receiveddata",level:3},{value:"NumberOfMirrorSet",id:"numberofmirrorset",level:3},{value:"VirtualIP",id:"virtualip",level:3},{value:"VirtualInterface",id:"virtualinterface",level:3},{value:"DownList",id:"downlist",level:3},{value:"PromoteErrorText",id:"promoteerrortext",level:3},{value:"colMount",id:"colmount",level:3},{value:"colActivate",id:"colactivate",level:3},{value:"colCatchup",id:"colcatchup",level:3},{value:"colRemove",id:"colremove",level:3},{value:"CanManage",id:"canmanage",level:3},{value:"failedCnt",id:"failedcnt",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"updateView",id:"updateview",level:3},{value:"filterChanged",id:"filterchanged",level:3},{value:"doJournal",id:"dojournal",level:3},{value:"doMount",id:"domount",level:3},{value:"doActivate",id:"doactivate",level:3},{value:"doCatchup",id:"docatchup",level:3},{value:"doRemove",id:"doremove",level:3},{value:"doAction",id:"doaction",level:3},{value:"doAuth",id:"doauth",level:3},{value:"doDetails",id:"dodetails",level:3},{value:"doConnect",id:"doconnect",level:3},{value:"doDemote",id:"dodemote",level:3},{value:"doPromote",id:"dopromote",level:3},{value:"doPromotePage",id:"dopromotepage",level:3},{value:"CheckMissingDB",id:"checkmissingdb",level:3},{value:"doNoFailover",id:"donofailover",level:3},{value:"DrawConnectLink",id:"drawconnectlink",level:3},{value:"DrawMirrorStatus",id:"drawmirrorstatus",level:3},{value:"ProcessConnect",id:"processconnect",level:3},{value:"ActivateDB",id:"activatedb",level:3},{value:"CatchupDB",id:"catchupdb",level:3},{value:"RemoveDB",id:"removedb",level:3},{value:"CheckVIP",id:"checkvip",level:3},{value:"CheckJournaling",id:"checkjournaling",level:3},{value:"CheckPromoteWarn",id:"checkpromotewarn",level:3},{value:"PromoteToFailoverMember",id:"promotetofailovermember",level:3},{value:"DemotePartner",id:"demotepartner",level:3},{value:"DemoteToDR",id:"demotetodr",level:3},{value:"RefreshFailoverInfo",id:"refreshfailoverinfo",level:3},{value:"DrawFailoverInfo",id:"drawfailoverinfo",level:3},{value:"DrawAsyncInfo",id:"drawasyncinfo",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"%GetLocatorLinks",id:"getlocatorlinks",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"OnDrawRibbon",id:"ondrawribbon",level:3},{value:"navPageSizeChanged",id:"navpagesizechanged",level:3},{value:"navMaxRowsChanged",id:"navmaxrowschanged",level:3},{value:"UpdateTableNavState",id:"updatetablenavstate",level:3},{value:"GetCompressRate",id:"getcompressrate",level:3},{value:"DrawNoFailoverInfo",id:"drawnofailoverinfo",level:3},{value:"ClearNoFailover",id:"clearnofailover",level:3},{value:"ChangeNoFailover",id:"changenofailover",level:3},{value:"MultipleFailover",id:"multiplefailover",level:3},{value:"GetValidationInfo",id:"getvalidationinfo",level:3},{value:"OtherIsPrimary",id:"otherisprimary",level:3}];function c(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(n.header,{children:(0,a.jsx)(n.h1,{id:"cspuiportalmirrormonitor",children:"%CSP.UI.Portal.Mirror.Monitor"})}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Portal.Mirror.Monitor Extends (%CSP.UI.Portal.Utils, %CSP.UI.Portal.Mirror.Utils) [ System = 4 ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"System Management Portal - System Operations - Mirror Monitor"}),"\n",(0,a.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(n.h3,{id:"autons",children:"AUTONS"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Parameter AUTONS As BOOLEAN = 0;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Do not switch namespace for this page: it needs to stay in %SYS"}),"\n",(0,a.jsx)(n.h3,{id:"cspurl",children:"CSPURL"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter CSPURL = "/csp/sys/op/%CSP.UI.Portal.Mirror.Monitor.zen";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"helpaddress",children:"HELPADDRESS"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter HELPADDRESS = "Home,Mirror Monitor";\n'})}),"\n",(0,a.jsx)(n.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Mirror Monitor";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Displayed name of this page."}),"\n",(0,a.jsx)(n.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%Admin_Operate";\n'})}),"\n",(0,a.jsx)(n.p,{children:"Security requirement"}),"\n",(0,a.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(n.h3,{id:"candisconnect",children:"CanDisconnect"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property CanDisconnect As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(n.p,{children:"True on the secondary failover member, when it is connected"}),"\n",(0,a.jsx)(n.h3,{id:"canconnect",children:"CanConnect"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property CanConnect As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(n.p,{children:"True on the secondary failover member, when it is disconnected"}),"\n",(0,a.jsx)(n.h3,{id:"isnotsetup",children:"IsNotSetUp"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property IsNotSetUp As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(n.p,{children:"True on the secondary failover member, when it hasn't been added to the primary"}),"\n",(0,a.jsx)(n.h3,{id:"isprimary",children:"IsPrimary"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property IsPrimary As %Integer [ InitialExpression = {$SYSTEM.Mirror.IsPrimary()} ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"isdr",children:"IsDR"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property IsDR As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"demoteother",children:"DemoteOther"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property DemoteOther As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(n.h3,{id:"mirrormembertype",children:"MirrorMemberType"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property MirrorMemberType As %Integer [ InitialExpression = {$System.Mirror.IsMember()} ];\n"})}),"\n",(0,a.jsxs)(n.p,{children:["0 - not a mirror member",(0,a.jsx)(n.br,{}),"\n1 - failover mirror member",(0,a.jsx)(n.br,{}),"\n2 - async mirror member"]}),"\n",(0,a.jsx)(n.h3,{id:"mirrorname",children:"MirrorName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property MirrorName As %String;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Failover member's mirror name"}),"\n",(0,a.jsx)(n.h3,{id:"definedprimary",children:"DefinedPrimary"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property DefinedPrimary As %String;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Current 'no failover' state."}),"\n",(0,a.jsx)(n.h3,{id:"newdefinedprimary",children:"NewDefinedPrimary"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property NewDefinedPrimary As %String;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Candidate of the new DefinedPrimary."}),"\n",(0,a.jsx)(n.h3,{id:"mymembername",children:"MyMemberName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property MyMemberName As %String;\n"})}),"\n",(0,a.jsx)(n.p,{children:"Member name of local system."}),"\n",(0,a.jsx)(n.h3,{id:"nofailoverbtn",children:"NoFailoverBtn"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property NoFailoverBtn As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(n.p,{children:"1 - display 'Clear/Set No Failover' button, 0 - don't display"}),"\n",(0,a.jsx)(n.h3,{id:"isnopartnernofailover",children:"IsNoPartnerNoFailover"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property IsNoPartnerNoFailover As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(n.p,{children:"1 - The DefinedPrimary is the special name of No Partner No Failover promotion."}),"\n",(0,a.jsx)(n.h3,{id:"selectedmirror",children:"SelectedMirror"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property SelectedMirror As %String [ InitialExpression = "*" ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"The currently selected mirror on an async member"}),"\n",(0,a.jsx)(n.h3,{id:"thismembername",children:"ThisMemberName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property ThisMemberName As %ZEN.Datatype.string [ InitialExpression = "n/a" ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"thismemberecp",children:"ThisMemberECP"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property ThisMemberECP As %ZEN.Datatype.string [ InitialExpression = "n/a" ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"thismemberprivateaddress",children:"ThisMemberPrivateAddress"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property ThisMemberPrivateAddress As %ZEN.Datatype.string [ InitialExpression = "n/a" ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"othermembername",children:"OtherMemberName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property OtherMemberName As %ZEN.Datatype.string [ InitialExpression = "n/a" ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"othermemberecp",children:"OtherMemberECP"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property OtherMemberECP As %ZEN.Datatype.string [ InitialExpression = "n/a" ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"othermemberprivateaddress",children:"OtherMemberPrivateAddress"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property OtherMemberPrivateAddress As %ZEN.Datatype.string [ InitialExpression = "n/a" ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"receiveddata",children:"ReceivedData"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property ReceivedData As %String [ InitialExpression = "0,0,0" ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Failover member's mirror name"}),"\n",(0,a.jsx)(n.h3,{id:"numberofmirrorset",children:"NumberOfMirrorSet"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property NumberOfMirrorSet As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(n.p,{children:"Number of mirror set configured."}),"\n",(0,a.jsx)(n.h3,{id:"virtualip",children:"VirtualIP"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property VirtualIP As %String;\n"})}),"\n",(0,a.jsx)(n.h3,{id:"virtualinterface",children:"VirtualInterface"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property VirtualInterface As %String;\n"})}),"\n",(0,a.jsx)(n.h3,{id:"downlist",children:"DownList"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property DownList As %String;\n"})}),"\n",(0,a.jsx)(n.h3,{id:"promoteerrortext",children:"PromoteErrorText"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property PromoteErrorText As %String;\n"})}),"\n",(0,a.jsx)(n.h3,{id:"colmount",children:"colMount"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property colMount As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Mount")} ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Store translated targetCol linkCaption for"}),"\n",(0,a.jsx)(n.h3,{id:"colactivate",children:"colActivate"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property colActivate As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Activate")} ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"colcatchup",children:"colCatchup"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property colCatchup As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Catchup")} ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"colremove",children:"colRemove"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property colRemove As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Remove")} ];\n'})}),"\n",(0,a.jsx)(n.h3,{id:"canmanage",children:"CanManage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'Property CanManage As %ZEN.Datatype.boolean [ InitialExpression = {$System.Security.Check("%Admin_Manage","USE")} ];\n'})}),"\n",(0,a.jsx)(n.p,{children:"Check if user has manage privilege"}),"\n",(0,a.jsx)(n.h3,{id:"failedcnt",children:"failedCnt"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Property failedCnt As %ZEN.Datatype.boolean [ InitialExpression = {##class(SYS.MirrorConfiguration).LookupLocalValidationFailures(.failure,0)} ];\n"})}),"\n",(0,a.jsx)(n.p,{children:"If server encountered failure that cannot be ignored."}),"\n",(0,a.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,a.jsx)(n.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,a.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"This client event, if present, is fired when the a popup page launched from this page fires an action."}),"\n",(0,a.jsx)(n.h3,{id:"updateview",children:"updateView"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod updateView(InTimer, NoCompress) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Update / Reload tables. This overrides the one in Portal.Utils."}),"\n",(0,a.jsx)(n.h3,{id:"filterchanged",children:"filterChanged"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod filterChanged(value) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"User entered something in to the filter. Re-load the table with filter value."}),"\n",(0,a.jsx)(n.h3,{id:"dojournal",children:"doJournal"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doJournal() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"domount",children:"doMount"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doMount(dbName, dbDir) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"doactivate",children:"doActivate"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doActivate(dbName, dbDir) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"docatchup",children:"doCatchup"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doCatchup(dbName, dbDir, actReq) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"doremove",children:"doRemove"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doRemove(dbName, dbDir) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"doaction",children:"doAction"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doAction(action) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"doauth",children:"doAuth"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doAuth(PID) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"dodetails",children:"doDetails"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doDetails(mirName) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"doconnect",children:"doConnect"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doConnect(mirrorName, canDisconnect) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"dodemote",children:"doDemote"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doDemote() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"dopromote",children:"doPromote"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doPromote() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"dopromotepage",children:"doPromotePage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doPromotePage(vipact, InterfaceSeed, DownList) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"checkmissingdb",children:"CheckMissingDB"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod CheckMissingDB() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"donofailover",children:"doNoFailover"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doNoFailover() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"drawconnectlink",children:"DrawConnectLink"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method DrawConnectLink(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"drawmirrorstatus",children:"DrawMirrorStatus"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method DrawMirrorStatus(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"processconnect",children:"ProcessConnect"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod ProcessConnect(mirrorName As %String, canDisconnect As %Boolean) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"activatedb",children:"ActivateDB"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod ActivateDB(Dir As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"catchupdb",children:"CatchupDB"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod CatchupDB(Dir As %String, ActReq As %Boolean) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"removedb",children:"RemoveDB"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod RemoveDB(Dir As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"checkvip",children:"CheckVIP"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method CheckVIP(mirname) As %Integer [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"checkjournaling",children:"CheckJournaling"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method CheckJournaling() As %Integer [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"checkpromotewarn",children:"CheckPromoteWarn"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod CheckPromoteWarn(mirname) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"promotetofailovermember",children:"PromoteToFailoverMember"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method PromoteToFailoverMember(virtualinterface) As %Integer [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"demotepartner",children:"DemotePartner"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method DemotePartner(MirrorName) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"demotetodr",children:"DemoteToDR"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method DemoteToDR(MirrorName) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"refreshfailoverinfo",children:"RefreshFailoverInfo"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method RefreshFailoverInfo() As %Status [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"drawfailoverinfo",children:"DrawFailoverInfo"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method DrawFailoverInfo(RefreshCompress) As %Status [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"drawasyncinfo",children:"DrawAsyncInfo"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method DrawAsyncInfo() As %Status [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"getlocatorlinks",children:"%GetLocatorLinks"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetLocatorLinks(Output pLink) As %Status\n"})}),"\n",(0,a.jsxs)(n.p,{children:["Return the array of links to show in the locator bar.",(0,a.jsx)(n.br,{}),"\npLink(n)=$LB(caption,link)"]}),"\n",(0,a.jsx)(n.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,a.jsx)(n.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,a.jsx)(n.p,{children:"Get the (localized) name of the page. This should be implemented in a subclass."}),"\n",(0,a.jsx)(n.h3,{id:"ondrawribbon",children:"OnDrawRibbon"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method OnDrawRibbon() As %Status\n"})}),"\n",(0,a.jsx)(n.p,{children:"Add to the contents of the tool ribbon."}),"\n",(0,a.jsx)(n.h3,{id:"navpagesizechanged",children:"navPageSizeChanged"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod navPageSizeChanged(value, tableId) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Overriden to add tabId and tableId to the page name to distinguish the type for the page."}),"\n",(0,a.jsx)(n.h3,{id:"navmaxrowschanged",children:"navMaxRowsChanged"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod navMaxRowsChanged(value, tableId) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Overriden to add tabId and tableId to the page name to distinguish the type for the page."}),"\n",(0,a.jsx)(n.h3,{id:"updatetablenavstate",children:"UpdateTableNavState"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod UpdateTableNavState(pFilter As %String, pPageSize As %Integer, pMaxRows As %Integer, ptableId As %String) [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.p,{children:"Used to Save tableNavBar values, add MapType to the page name to distinguish the type for the page."}),"\n",(0,a.jsx)(n.h3,{id:"getcompressrate",children:"GetCompressRate"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetCompressRate(mirrorName As %String, Async As %Integer) As %Status [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"drawnofailoverinfo",children:"DrawNoFailoverInfo"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method DrawNoFailoverInfo() As %Status [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"clearnofailover",children:"ClearNoFailover"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method ClearNoFailover(mirname As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"changenofailover",children:"ChangeNoFailover"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method ChangeNoFailover(mirname As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"multiplefailover",children:"MultipleFailover"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod MultipleFailover(mirname As %String) As %Integer [ ZenMethod ]\n"})}),"\n",(0,a.jsx)(n.h3,{id:"getvalidationinfo",children:"GetValidationInfo"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetValidationInfo(ByRef pParms, Output pObject As %RegisteredObject) As %Status\n"})}),"\n",(0,a.jsx)(n.h3,{id:"otherisprimary",children:"OtherIsPrimary"}),"\n",(0,a.jsx)(n.pre,{children:(0,a.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod OtherIsPrimary(mirname As %String) As %Integer [ ZenMethod ]\n"})})]})}function o(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,a.jsx)(n,{...e,children:(0,a.jsx)(c,{...e})}):c(e)}},28453:(e,n,r)=>{r.d(n,{R:()=>l,x:()=>t});var a=r(96540);const s={},i=a.createContext(s);function l(e){const n=a.useContext(i);return a.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function t(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:l(e.components),a.createElement(i.Provider,{value:n},e.children)}}}]);