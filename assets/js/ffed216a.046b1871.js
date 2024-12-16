"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[85292],{92869:(e,a,n)=>{n.r(a),n.d(a,{contentTitle:()=>i,default:()=>d,frontMatter:()=>t,toc:()=>r});var s=n(74848),l=n(28453);const t={pagination_prev:null,pagination_next:null},i="%DeepSee.UI.QualityMeasures",r=[{value:"Parameters",id:"parameters",level:2},{value:"PAGENAME",id:"pagename",level:3},{value:"DEFAULTVIEWMODE;",id:"defaultviewmode",level:3},{value:"DOCBOOKID",id:"docbookid",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"Properties",id:"properties",level:2},{value:"qmsrName",id:"qmsrname",level:3},{value:"qmsrClass",id:"qmsrclass",level:3},{value:"editMode",id:"editmode",level:3},{value:"browseMode",id:"browsemode",level:3},{value:"%model",id:"model",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"CSS3Style",id:"css3style",level:3},{value:"Style",id:"style",level:3},{value:"contentPane",id:"contentpane",level:3},{value:"Methods",id:"methods",level:2},{value:"GetQMsrList",id:"getqmsrlist",level:3},{value:"GetQMsrDefinition",id:"getqmsrdefinition",level:3},{value:"DrawNavigator",id:"drawnavigator",level:3},{value:"DrawHelp",id:"drawhelp",level:3},{value:"GetInternalName",id:"getinternalname",level:3},{value:"getCurrentName",id:"getcurrentname",level:3},{value:"getPageTitle",id:"getpagetitle",level:3},{value:"getClientModel",id:"getclientmodel",level:3},{value:"onDocumentLoadComplete",id:"ondocumentloadcomplete",level:3},{value:"%OnDrawHTMLHead",id:"ondrawhtmlhead",level:3},{value:"OnDrawRibbon",id:"ondrawribbon",level:3},{value:"%OnGetTitle",id:"ongettitle",level:3},{value:"%OnGetPageName",id:"ongetpagename",level:3},{value:"%OnGetProductName",id:"ongetproductname",level:3},{value:"OnGetRibbonInfo",id:"ongetribboninfo",level:3},{value:"changeMeasure",id:"changemeasure",level:3},{value:"changeSubjectArea",id:"changesubjectarea",level:3},{value:"changeLinkedTo",id:"changelinkedto",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"onlayoutHandler",id:"onlayouthandler",level:3},{value:"adjustSizes",id:"adjustsizes",level:3},{value:"%OnAfterCreatePage",id:"onaftercreatepage",level:3},{value:"onPopupAction",id:"onpopupaction",level:3},{value:"loadMeasure",id:"loadmeasure",level:3},{value:"setTitleText",id:"settitletext",level:3},{value:"canUserModify",id:"canusermodify",level:3},{value:"searchBoxHandler",id:"searchboxhandler",level:3},{value:"updateList",id:"updatelist",level:3},{value:"browse",id:"browse",level:3},{value:"editMeasure",id:"editmeasure",level:3},{value:"newMeasure",id:"newmeasure",level:3},{value:"saveMeasure",id:"savemeasure",level:3},{value:"deleteMeasure",id:"deletemeasure",level:3},{value:"GetClassName",id:"getclassname",level:3},{value:"DeleteQMeasure",id:"deleteqmeasure",level:3},{value:"SubmitQMsr",id:"submitqmsr",level:3},{value:"editValue",id:"editvalue",level:3},{value:"deleteItem",id:"deleteitem",level:3},{value:"moveItem",id:"moveitem",level:3},{value:"addItem",id:"additem",level:3},{value:"applyChange",id:"applychange",level:3},{value:"renderDetails",id:"renderdetails",level:3},{value:"renderCatalog",id:"rendercatalog",level:3},{value:"setReadOnly",id:"setreadonly",level:3},{value:"%OnPreHTTP",id:"onprehttp",level:3}];function c(e){const a={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(a.header,{children:(0,s.jsx)(a.h1,{id:"deepseeuiqualitymeasures",children:"%DeepSee.UI.QualityMeasures"})}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Class %DeepSee.UI.QualityMeasures Extends (%DeepSee.UI.standardPage, %CSP.Portal.SourceControl.Base) [ System = 4 ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"DeepSee Quality Measure manager page."}),"\n",(0,s.jsx)(a.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(a.h3,{id:"pagename",children:"PAGENAME"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter PAGENAME = "Quality Measures Manager";\n'})}),"\n",(0,s.jsx)(a.p,{children:"Displayed name of this page."}),"\n",(0,s.jsx)(a.h3,{id:"defaultviewmode",children:"DEFAULTVIEWMODE;"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Parameter DEFAULTVIEWMODE;\n"})}),"\n",(0,s.jsx)(a.p,{children:"If this page has multiple views, this is its initial display mode."}),"\n",(0,s.jsx)(a.h3,{id:"docbookid",children:"DOCBOOKID"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter DOCBOOKID = "D2MODADV_ch_qualmeas";\n'})}),"\n",(0,s.jsx)(a.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Parameter RESOURCE = "%DeepSee_PortalEdit";\n'})}),"\n",(0,s.jsx)(a.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(a.h3,{id:"qmsrname",children:"qmsrName"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'Property qmsrName As %ZEN.Datatype.string(ZENURL = "QMSR");\n'})}),"\n",(0,s.jsx)(a.p,{children:"Name of Quality Measure we are looking at (without extension)."}),"\n",(0,s.jsx)(a.h3,{id:"qmsrclass",children:"qmsrClass"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property qmsrClass As %ZEN.Datatype.string;\n"})}),"\n",(0,s.jsx)(a.p,{children:"Name of class that defines the Quality Measure."}),"\n",(0,s.jsx)(a.h3,{id:"editmode",children:"editMode"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property editMode As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(a.p,{children:"If true, then show edit controls."}),"\n",(0,s.jsx)(a.h3,{id:"browsemode",children:"browseMode"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property browseMode As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsx)(a.p,{children:"If true, then show list of catalogs etc."}),"\n",(0,s.jsx)(a.h3,{id:"model",children:"%model"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Property %model As %DeepSee.Model.QualityMeasure.qualityMeasure;\n"})}),"\n",(0,s.jsx)(a.p,{children:"Local copy of qmsr model object."}),"\n",(0,s.jsx)(a.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(a.h3,{id:"css3style",children:"CSS3Style"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"XData CSS3Style\n"})}),"\n",(0,s.jsx)(a.p,{children:"This Style block contains page-specific CSS 3 style definitions."}),"\n",(0,s.jsx)(a.h3,{id:"style",children:"Style"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,s.jsx)(a.p,{children:"This Style block contains page-specific CSS style definitions."}),"\n",(0,s.jsx)(a.h3,{id:"contentpane",children:"contentPane"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:'XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]\n'})}),"\n",(0,s.jsx)(a.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(a.h3,{id:"getqmsrlist",children:"GetQMsrList"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method GetQMsrList(ByRef pParameters, Output pMetaData, Output pData) As %Status\n"})}),"\n",(0,s.jsx)(a.p,{children:"Return JSON array of qmeasures."}),"\n",(0,s.jsx)(a.h3,{id:"getqmsrdefinition",children:"GetQMsrDefinition"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method GetQMsrDefinition(ByRef pParms, Output pObject As %RegisteredObject) As %Status\n"})}),"\n",(0,s.jsx)(a.p,{children:"Get QMsr definition for JSON provider."}),"\n",(0,s.jsx)(a.h3,{id:"drawnavigator",children:"DrawNavigator"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method DrawNavigator(pSeed As %String) As %Status\n"})}),"\n",(0,s.jsx)(a.p,{children:"Draw the quality measures details pane."}),"\n",(0,s.jsx)(a.h3,{id:"drawhelp",children:"DrawHelp"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method DrawHelp(pSeed As %String) As %Status\n"})}),"\n",(0,s.jsx)(a.p,{children:'Draw the "help" pane. This displays help on the current selection.'}),"\n",(0,s.jsx)(a.h3,{id:"getinternalname",children:"GetInternalName"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method GetInternalName() As %String\n"})}),"\n",(0,s.jsx)(a.p,{children:"Return the internal name of the current document, including the three letter extension in upper-case. For example, MyPackage.MyClass.CLS would be the internal name for the class MyPackage.MyClass."}),"\n",(0,s.jsx)(a.h3,{id:"getcurrentname",children:"getCurrentName"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getCurrentName() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Return the current name of the class/object being modified."}),"\n",(0,s.jsx)(a.h3,{id:"getpagetitle",children:"getPageTitle"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getPageTitle() As %String [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Get the title string to add to the locator row. This should be implemented in a subclass."}),"\n",(0,s.jsx)(a.h3,{id:"getclientmodel",children:"getClientModel"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod getClientModel() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Get the jsonProvider object on the client."}),"\n",(0,s.jsx)(a.h3,{id:"ondocumentloadcomplete",children:"onDocumentLoadComplete"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onDocumentLoadComplete() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Callback method invoked after we have successfully loaded the current document."}),"\n",(0,s.jsx)(a.h3,{id:"ondrawhtmlhead",children:"%OnDrawHTMLHead"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnDrawHTMLHead() As %Status\n"})}),"\n",(0,s.jsx)(a.p,{children:"This callback is called at the end of the HTML HEAD section of the page."}),"\n",(0,s.jsx)(a.h3,{id:"ondrawribbon",children:"OnDrawRibbon"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method OnDrawRibbon() As %Status\n"})}),"\n",(0,s.jsx)(a.p,{children:"Draw additional stuff in the ribbon bar"}),"\n",(0,s.jsx)(a.h3,{id:"ongettitle",children:"%OnGetTitle"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetTitle() As %String\n"})}),"\n",(0,s.jsx)(a.p,{children:"Get the (localized) title string for the page. This should be implemented in a subclass."}),"\n",(0,s.jsx)(a.h3,{id:"ongetpagename",children:"%OnGetPageName"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetPageName() As %String\n"})}),"\n",(0,s.jsx)(a.p,{children:"Get the (localized) name of the page."}),"\n",(0,s.jsx)(a.h3,{id:"ongetproductname",children:"%OnGetProductName"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnGetProductName() As %String\n"})}),"\n",(0,s.jsx)(a.p,{children:"Get the product name for the page."}),"\n",(0,s.jsx)(a.h3,{id:"ongetribboninfo",children:"OnGetRibbonInfo"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method OnGetRibbonInfo(Output pDisplay As %Boolean, Output pViewIcons As %List, Output pSortOptions As %List, Output pSearchBox As %Boolean, Output pRibbonTitle As %String, Output pCommands As %List) As %Status\n"})}),"\n",(0,s.jsx)(a.p,{children:"Get information to display in the ribbon bar."}),"\n",(0,s.jsx)(a.h3,{id:"changemeasure",children:"changeMeasure"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changeMeasure() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Launch the quality measure finder dialog."}),"\n",(0,s.jsx)(a.h3,{id:"changesubjectarea",children:"changeSubjectArea"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changeSubjectArea() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Launch the subject area finder dialog."}),"\n",(0,s.jsx)(a.h3,{id:"changelinkedto",children:"changeLinkedTo"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod changeLinkedTo() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Launch the master quality measure finder dialog."}),"\n",(0,s.jsx)(a.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Add check to ensure that we correctly load documents on the client when source control hooks are in use. Also set up a timer to ensure we don't hit timeouts while editing documents in Studio, as well as When in Studio mode, also detect whether we are running IE10, as we need to save documents differently if that is the case."}),"\n",(0,s.jsx)(a.h3,{id:"onlayouthandler",children:"onlayoutHandler"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onlayoutHandler(load) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Adjust sizes of components on the page."}),"\n",(0,s.jsx)(a.h3,{id:"adjustsizes",children:"adjustSizes"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod adjustSizes() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Adjust sizes of components on the page."}),"\n",(0,s.jsx)(a.h3,{id:"onaftercreatepage",children:"%OnAfterCreatePage"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method %OnAfterCreatePage() As %Status\n"})}),"\n",(0,s.jsx)(a.p,{children:"This class method callback is called just before the server-side page object is created."}),"\n",(0,s.jsx)(a.h3,{id:"onpopupaction",children:"onPopupAction"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"This client event is fired when the a popup page launched from this page fires an action."}),"\n",(0,s.jsx)(a.h3,{id:"loadmeasure",children:"loadMeasure"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod loadMeasure(name, force) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Display a different measure."}),"\n",(0,s.jsx)(a.h3,{id:"settitletext",children:"setTitleText"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod setTitleText() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Set content of title bar."}),"\n",(0,s.jsx)(a.h3,{id:"canusermodify",children:"canUserModify"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod canUserModify() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Test if the user has write privilege."}),"\n",(0,s.jsx)(a.h3,{id:"searchboxhandler",children:"searchBoxHandler"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod searchBoxHandler(searchKey) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Change in search box value. Can be overridden by subclasses."}),"\n",(0,s.jsx)(a.h3,{id:"updatelist",children:"updateList"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod updateList() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Update the details pane."}),"\n",(0,s.jsx)(a.h3,{id:"browse",children:"browse"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod browse() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Set browse mode."}),"\n",(0,s.jsx)(a.h3,{id:"editmeasure",children:"editMeasure"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod editMeasure() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Start/stop edit mode."}),"\n",(0,s.jsx)(a.h3,{id:"newmeasure",children:"newMeasure"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod newMeasure() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Create a new quality measure."}),"\n",(0,s.jsx)(a.h3,{id:"savemeasure",children:"saveMeasure"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod saveMeasure(showDialog) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Save measure."}),"\n",(0,s.jsx)(a.h3,{id:"deletemeasure",children:"deleteMeasure"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod deleteMeasure() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Delete measure."}),"\n",(0,s.jsx)(a.h3,{id:"getclassname",children:"GetClassName"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod GetClassName(pName As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Find the class name for the qmsr."}),"\n",(0,s.jsx)(a.h3,{id:"deleteqmeasure",children:"DeleteQMeasure"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod DeleteQMeasure(pName As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Delete the given qmsr."}),"\n",(0,s.jsx)(a.h3,{id:"submitqmsr",children:"SubmitQMsr"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"Method SubmitQMsr(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, ByRef pResponseObject As %RegisteredObject) As %Status\n"})}),"\n",(0,s.jsx)(a.p,{children:"Object submit handler JSON provider. This is called when the client submits the qmsr definition."}),"\n",(0,s.jsx)(a.h3,{id:"editvalue",children:"editValue"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod editValue(id) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Edit the given value."}),"\n",(0,s.jsx)(a.h3,{id:"deleteitem",children:"deleteItem"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod deleteItem(id) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Delete the given item."}),"\n",(0,s.jsx)(a.h3,{id:"moveitem",children:"moveItem"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod moveItem(id, up) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Move the given item."}),"\n",(0,s.jsx)(a.h3,{id:"additem",children:"addItem"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod addItem(id, idx) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Add an item to the model."}),"\n",(0,s.jsx)(a.h3,{id:"applychange",children:"applyChange"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod applyChange() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Apply change from dialog"}),"\n",(0,s.jsx)(a.h3,{id:"renderdetails",children:"renderDetails"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod renderDetails() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Draw details using JSON model."}),"\n",(0,s.jsx)(a.h3,{id:"rendercatalog",children:"renderCatalog"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod renderCatalog() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Draw qmsr catalog using JSON list."}),"\n",(0,s.jsx)(a.h3,{id:"setreadonly",children:"setReadOnly"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClientMethod setReadOnly(readOnly) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"method used by Source Control to set the value of the readOnly flag."}),"\n",(0,s.jsx)(a.h3,{id:"onprehttp",children:"%OnPreHTTP"}),"\n",(0,s.jsx)(a.pre,{children:(0,s.jsx)(a.code,{className:"language-objectscript-class",children:"ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]\n"})}),"\n",(0,s.jsx)(a.p,{children:"Test for additional resources."})]})}function d(e={}){const{wrapper:a}={...(0,l.R)(),...e.components};return a?(0,s.jsx)(a,{...e,children:(0,s.jsx)(c,{...e})}):c(e)}},28453:(e,a,n)=>{n.d(a,{R:()=>i,x:()=>r});var s=n(96540);const l={},t=s.createContext(l);function i(e){const a=s.useContext(t);return s.useMemo((function(){return"function"==typeof e?e(a):{...a,...e}}),[a,e])}function r(e){let a;return a=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:i(e.components),s.createElement(t.Provider,{value:a},e.children)}}}]);