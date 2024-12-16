"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[82233],{41512:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>a,default:()=>i,frontMatter:()=>s,toc:()=>c});var o=n(74848),r=n(28453);const s={pagination_prev:null,pagination_next:null},a="%CSP.Portal.SourceControl.Base",c=[{value:"Parameters",id:"parameters",level:2},{value:"EDITRESOURCE;",id:"editresource",level:3},{value:"DOMAIN",id:"domain",level:3},{value:"MANAGERDIALOG",id:"managerdialog",level:3},{value:"OUTPUTDIALOG",id:"outputdialog",level:3},{value:"Properties",id:"properties",level:2},{value:"canEdit",id:"canedit",level:3},{value:"msgNotPermitted",id:"msgnotpermitted",level:3},{value:"sourceControlEnabled",id:"sourcecontrolenabled",level:3},{value:"hasSCOutput",id:"hasscoutput",level:3},{value:"sourceControlNewlineFormat",id:"sourcecontrolnewlineformat",level:3},{value:"sourceControlVisible",id:"sourcecontrolvisible",level:3},{value:"needProject",id:"needproject",level:3},{value:"currentProject",id:"currentproject",level:3},{value:"currentNamespace",id:"currentnamespace",level:3},{value:"currentUser",id:"currentuser",level:3},{value:"isNew",id:"isnew",level:3},{value:"readOnly",id:"readonly",level:3},{value:"readOnlyReason",id:"readonlyreason",level:3},{value:"renamed",id:"renamed",level:3},{value:"sourceControlOutputDialog",id:"sourcecontroloutputdialog",level:3},{value:"sourceControlManagerDialog",id:"sourcecontrolmanagerdialog",level:3},{value:"Methods",id:"methods",level:2},{value:"GetInternalName",id:"getinternalname",level:3},{value:"getCurrentName",id:"getcurrentname",level:3},{value:"getPageTitle",id:"getpagetitle",level:3},{value:"getCurrentExtension",id:"getcurrentextension",level:3},{value:"getClientModel",id:"getclientmodel",level:3},{value:"setReadOnly",id:"setreadonly",level:3},{value:"canUserModify",id:"canusermodify",level:3},{value:"getSaveAction",id:"getsaveaction",level:3},{value:"onDocumentLoadComplete",id:"ondocumentloadcomplete",level:3},{value:"onDocumentSaveComplete",id:"ondocumentsavecomplete",level:3},{value:"updateDocumentState",id:"updatedocumentstate",level:3},{value:"getReadOnlyReason",id:"getreadonlyreason",level:3},{value:"%DrawSourceControlHead",id:"drawsourcecontrolhead",level:3},{value:"%DrawSourceControlStyle",id:"drawsourcecontrolstyle",level:3},{value:"%DrawSourceControlJS",id:"drawsourcecontroljs",level:3},{value:"%DrawSourceControlCommands",id:"drawsourcecontrolcommands",level:3},{value:"UpdateSCMenus",id:"updatescmenus",level:3},{value:"showSCMenu",id:"showscmenu",level:3},{value:"createSCSubMenu",id:"createscsubmenu",level:3},{value:"createSCMenuItem",id:"createscmenuitem",level:3},{value:"showSCOutput",id:"showscoutput",level:3},{value:"clearSCOutput",id:"clearscoutput",level:3},{value:"chooseSCMenu",id:"choosescmenu",level:3},{value:"setSCProject",id:"setscproject",level:3},{value:"chooseSCProject",id:"choosescproject",level:3},{value:"createSCProject",id:"createscproject",level:3},{value:"appendServerOutput",id:"appendserveroutput",level:3},{value:"updateSCIndicator",id:"updatescindicator",level:3},{value:"onDocumentSave",id:"ondocumentsave",level:3},{value:"invokeSourceControl",id:"invokesourcecontrol",level:3},{value:"invokeAfterUserAction",id:"invokeafteruseraction",level:3},{value:"reloadDocument",id:"reloaddocument",level:3},{value:"GetTimestamp",id:"gettimestamp",level:3},{value:"HaveSourceControlOutput",id:"havesourcecontroloutput",level:3},{value:"ClearSourceControlOutput",id:"clearsourcecontroloutput",level:3},{value:"AppendSourceControlOutput",id:"appendsourcecontroloutput",level:3},{value:"CreateProject",id:"createproject",level:3},{value:"DocumentSave",id:"documentsave",level:3},{value:"DocumentLoad",id:"documentload",level:3},{value:"AfterUserAction",id:"afteruseraction",level:3},{value:"UserAction",id:"useraction",level:3},{value:"handleRedirect",id:"handleredirect",level:3},{value:"GetSourceControlCommands",id:"getsourcecontrolcommands",level:3},{value:"LoadProject",id:"loadproject",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"initializeSourceControl",id:"initializesourcecontrol",level:3},{value:"initializeTextMonitor",id:"initializetextmonitor",level:3},{value:"loadDocument",id:"loaddocument",level:3},{value:"saveDocument",id:"savedocument",level:3},{value:"onDocumentLoad",id:"ondocumentload",level:3},{value:"checkTextControls",id:"checktextcontrols",level:3},{value:"textControlKeyUp",id:"textcontrolkeyup",level:3},{value:"textControlKeyDown",id:"textcontrolkeydown",level:3},{value:"IsSourceControlReadOnly",id:"issourcecontrolreadonly",level:3}];function l(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",strong:"strong",ul:"ul",...(0,r.R)(),...e.components};return(0,o.jsxs)(o.Fragment,{children:[(0,o.jsx)(t.header,{children:(0,o.jsx)(t.h1,{id:"cspportalsourcecontrolbase",children:"%CSP.Portal.SourceControl.Base"})}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Class %CSP.Portal.SourceControl.Base Extends %CSP.Portal.SourceControl.Util [ Abstract, System = 4 ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"This class is for internal InterSystems use only. The class is subject to change and should not be used by user applications."}),"\n",(0,o.jsx)(t.p,{children:"Template for portal pages which need to be able to interact with Source Control hooks. This class implements various interfaces and behaviours into the standard Studio patterns used for %Studio.SourceControl.Base. Note that the browser environment is inherently stateless, so the object implementing the source control hooks needs to be created from scratch every time the browser makes a request back to the server. Source control hooks written for the Studio environment will need to adjust for this situation. To assist in this migration, the hooks can should override the OnPortalCreate() callback that is inherited from %Studio.SourceControl.Base to ensure that the Source Control object is correctly initialised whenever it is created."}),"\n",(0,o.jsx)(t.p,{children:"Users should also modify the behaviour of any Studio templates invoked from their source control hooks."}),"\n",(0,o.jsxs)(t.p,{children:["It is critical that pages which extend this class implement a number of callbacks. The following methods ",(0,o.jsx)(t.strong,{children:"MUST"})," be overridden:"]}),"\n",(0,o.jsxs)(t.ul,{children:["\n",(0,o.jsx)(t.li,{children:"GetInternalName()"}),"\n",(0,o.jsx)(t.li,{children:"getCurrentName()"}),"\n",(0,o.jsx)(t.li,{children:"getClientModel()"}),"\n",(0,o.jsx)(t.li,{children:"setReadOnly()\nThe following methods may also need to be overridden depending on the page:"}),"\n",(0,o.jsx)(t.li,{children:"getCurrentExtension()"}),"\n",(0,o.jsx)(t.li,{children:"getSaveAction()"}),"\n",(0,o.jsx)(t.li,{children:"canUserModify()"}),"\n",(0,o.jsxs)(t.li,{children:["getReadOnlyReason()\nFurthermore, the user ",(0,o.jsx)(t.strong,{children:"MUST"})," ensure that the following methods are called from the subclass:"]}),"\n",(0,o.jsx)(t.li,{children:"initializeSourceControl() must be called from the subclass's onloadHandler() method."}),"\n",(0,o.jsx)(t.li,{children:"%DrawSourceControlHead() must be called from the subclass's %OnDrawHTMLHead() method."}),"\n",(0,o.jsxs)(t.li,{children:["%DrawSourceControlCommands() must be called from the subclass's OnDrawRibbon() method.\nIt is also assumed that a Zen jsonProvider instance is used to represent the data model in the page. The object used for the model ",(0,o.jsx)(t.strong,{children:"MUST"})," extend %CSP.Portal.AbstractPortalModel ",(0,o.jsx)(t.strong,{children:"OR"})," include a Timestamp property and a ReadOnly property as per the interface defined in %CSP.Portal.AbstractPortalModel if custom JSON is sent from the server to the client. These two properties are used to ensure that the client and server versions of the document model are synchronised. Furthermore, the OnSubmitContent callback implemented in the page ",(0,o.jsx)(t.strong,{children:"MUST"})," perform a number of actions."]}),"\n"]}),"\n",(0,o.jsxs)(t.p,{children:['First, it must support two save modes. The first such mode is a standard save mode. The value of the command string for this mode should be specified in the getSaveAction() callback. When this standard save mode is specified, the server method must check whether the timestamp of the model on disk matches the Timestamp property of the submitted model. If they don\'t match, the error property of the supplied jsonProvider instance should be set to the string "timestamp". When the page sees this error, the user will be prompted to decide if they want to overwrite the data on the server. If the user does choose to overwrite the data, then getSaveAction() will be invoked to get the force save action. In this case, the OnSubmitContent callback should ',(0,o.jsx)(t.strong,{children:"NOT"})," perform any timestamp checks -- the model should be saved to disk."]}),"\n",(0,o.jsx)(t.p,{children:"If the timestamps match, or the force command is supplied, and the model is saved to disk, the method should then ensure that an updated model is sent back to the client in the output object argument of the callback. The updated model should include both the new Timestamp for the document as well as a valid ReadOnly value. In this case, a valid ReadOnly value should be determined as follows:"}),"\n",(0,o.jsxs)(t.ul,{children:["\n",(0,o.jsx)(t.li,{children:"Call IsSourceControlReadOnly() to determine whether the document is marked as read only by the current source control hooks. If so, set the ReadOnly property to 2."}),"\n",(0,o.jsx)(t.li,{children:"Otherwise check if the document has been locked by another user. If so, set the ReadOnly property to 1."}),"\n",(0,o.jsxs)(t.li,{children:["Otherwise set the ReadOnly property to 0.\nA sample OnSubmitContent callback method could look like the following: ",(0,o.jsx)(t.code,{children:'Method SubmitModel( pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, ByRef pResponseObject As %RegisteredObject) As %Status { Set tSC = $$$OK Try { Set tReadOnly = 0 If (pCommand \'= "forcesave") && ##class(%Dictionary.ClassDefinition).%ExistsId(..modelClassName) { // Note that 1 is passed in for the pExclusiveOnly argument as we need an exclusive lock Set tSC = ..LoadClassDefinition(..modelClassName,.tModelDef,.tReadOnly,1) If $$$ISERR(tSC) Quit If $zdatetime(tModelDef.TimeChanged,3,,6) \'= pSubmitObject.Timestamp { Set pProvider.error = "timestamp" Quit } } Set tSC = pSubmitObject.SaveToClass() If $$$ISERR(tSC) Quit // send up-to-date model back to client, this should include updated timestamp Set pResponseObject = pSubmitObject // correct the ReadOnly flag on the response object If ..IsSourceControlReadOnly(..GetInternalName()) { Set pResponseObject.ReadOnly = 2 } Else { Set pResponseObject.ReadOnly = tReadOnly } } Catch(ex) { Set tSC = ex.AsStatus() } Quit tSC }'})]}),"\n"]}),"\n",(0,o.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,o.jsx)(t.h3,{id:"editresource",children:"EDITRESOURCE;"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter EDITRESOURCE;\n"})}),"\n",(0,o.jsx)(t.p,{children:"Resource for subclasses to indicate whether further resources are needed to perform actions on pages."}),"\n",(0,o.jsx)(t.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%Utility";\n'})}),"\n",(0,o.jsx)(t.h3,{id:"managerdialog",children:"MANAGERDIALOG"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter MANAGERDIALOG = "_CSP.Portal.SourceControl.Dialog.Manager.zen";\n'})}),"\n",(0,o.jsx)(t.p,{children:"Page to use for managing popups requested by the source control framework."}),"\n",(0,o.jsx)(t.h3,{id:"outputdialog",children:"OUTPUTDIALOG"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter OUTPUTDIALOG = "_CSP.Portal.SourceControl.Dialog.ServerOutput.zen";\n'})}),"\n",(0,o.jsx)(t.p,{children:"Page to use for displaying output from the server."}),"\n",(0,o.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,o.jsx)(t.h3,{id:"canedit",children:"canEdit"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property canEdit As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,o.jsx)(t.p,{children:"Flag to indicate whether the user is permitted to make any changes on a given page."}),"\n",(0,o.jsx)(t.h3,{id:"msgnotpermitted",children:"msgNotPermitted"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:'Property msgNotPermitted As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("You are not permitted to perform this action","%Utility")} ];\n'})}),"\n",(0,o.jsx)(t.p,{children:"Message to inform the user they may not perform a given action."}),"\n",(0,o.jsx)(t.h3,{id:"sourcecontrolenabled",children:"sourceControlEnabled"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property sourceControlEnabled As %ZEN.Datatype.boolean [ InitialExpression = {..IsEnabled($namespace)} ];\n"})}),"\n",(0,o.jsx)(t.p,{children:"Flag to indicate whether source control hooks are enabled for the current namespace."}),"\n",(0,o.jsx)(t.h3,{id:"hasscoutput",children:"hasSCOutput"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property hasSCOutput As %ZEN.Datatype.boolean [ InitialExpression = {..HaveSourceControlOutput()} ];\n"})}),"\n",(0,o.jsx)(t.p,{children:"Flag to indicate whether source control output is present in the current session."}),"\n",(0,o.jsx)(t.h3,{id:"sourcecontrolnewlineformat",children:"sourceControlNewlineFormat"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:'Property sourceControlNewlineFormat As %ZEN.Datatype.string [ InitialExpression = "HTML" ];\n'})}),"\n",(0,o.jsx)(t.p,{children:"Flag to control what newline format should be used for reporting data from the server. The default output is HTML."}),"\n",(0,o.jsx)(t.h3,{id:"sourcecontrolvisible",children:"sourceControlVisible"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property sourceControlVisible As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,o.jsx)(t.p,{children:"Flag to indicate whether the source control output is currently visible."}),"\n",(0,o.jsx)(t.h3,{id:"needproject",children:"needProject"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property needProject As %ZEN.Datatype.boolean [ InitialExpression = {..IsProjectRequired()} ];\n"})}),"\n",(0,o.jsx)(t.p,{children:"Flag to indicate whether a project is needed for the current source control hooks."}),"\n",(0,o.jsx)(t.h3,{id:"currentproject",children:"currentProject"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property currentProject As %ZEN.Datatype.string(MAXLEN = 68) [ InitialExpression = {..GetCurrentProject()} ];\n"})}),"\n",(0,o.jsx)(t.p,{children:"The name of the currently active/selected project."}),"\n",(0,o.jsx)(t.h3,{id:"currentnamespace",children:"currentNamespace"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property currentNamespace As %ZEN.Datatype.string [ InitialExpression = {$namespace} ];\n"})}),"\n",(0,o.jsx)(t.p,{children:"The current namespace."}),"\n",(0,o.jsx)(t.h3,{id:"currentuser",children:"currentUser"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property currentUser As %ZEN.Datatype.string [ InitialExpression = {$username} ];\n"})}),"\n",(0,o.jsx)(t.p,{children:"The current user's username"}),"\n",(0,o.jsx)(t.h3,{id:"isnew",children:"isNew"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property isNew As %Boolean [ InitialExpression = 0, Internal ];\n"})}),"\n",(0,o.jsx)(t.p,{children:"If true, create a NEW document."}),"\n",(0,o.jsx)(t.h3,{id:"readonly",children:"readOnly"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property readOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,o.jsx)(t.p,{children:"If true, user cannot modify the current document."}),"\n",(0,o.jsx)(t.h3,{id:"readonlyreason",children:"readOnlyReason"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property readOnlyReason As %ZEN.Datatype.string;\n"})}),"\n",(0,o.jsx)(t.p,{children:'Indicator for why a document was marked as readOnly. When readOnly is true, the updateDocumentState() is responsible for ensuring that the property should either have a value of "sourcecontrol" or "lock".'}),"\n",(0,o.jsx)(t.h3,{id:"renamed",children:"renamed"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property renamed As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,o.jsx)(t.p,{children:'Flag to indicate whether the document has been renamed via "Save As".'}),"\n",(0,o.jsx)(t.h3,{id:"sourcecontroloutputdialog",children:"sourceControlOutputDialog"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property sourceControlOutputDialog As %ZEN.Datatype.string [ InitialExpression = {..#OUTPUTDIALOG} ];\n"})}),"\n",(0,o.jsx)(t.p,{children:"Name of the output dialog to use."}),"\n",(0,o.jsx)(t.h3,{id:"sourcecontrolmanagerdialog",children:"sourceControlManagerDialog"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Property sourceControlManagerDialog As %ZEN.Datatype.string [ InitialExpression = {..#MANAGERDIALOG} ];\n"})}),"\n",(0,o.jsx)(t.p,{children:"Name of the manager page to use for managing popups requested by the source control class."}),"\n",(0,o.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,o.jsx)(t.h3,{id:"getinternalname",children:"GetInternalName"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetInternalName() As %String\n"})}),"\n",(0,o.jsx)(t.p,{children:"Return the internal name of the current document, including the three letter extension in upper-case. For example, MyPackage.MyClass.CLS would be the internal name for the class MyPackage.MyClass. Subclasses MUST override this method."}),"\n",(0,o.jsx)(t.h3,{id:"getcurrentname",children:"getCurrentName"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getCurrentName() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Return the current name of the class/object being modified. Subclasses MUST override this method to return the correct name."}),"\n",(0,o.jsx)(t.h3,{id:"getpagetitle",children:"getPageTitle"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getPageTitle() As %String [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Get the title string to add to the locator row. This should be implemented in a subclass."}),"\n",(0,o.jsx)(t.h3,{id:"getcurrentextension",children:"getCurrentExtension"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getCurrentExtension() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:'Return the extension used by Studio for the class/object. This is ".CLS" by default, but subclasses should override this method if a different extension is in use.'}),"\n",(0,o.jsx)(t.h3,{id:"getclientmodel",children:"getClientModel"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getClientModel() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Get the jsonProvider object on the client. Subclasses MUST override this method to return the jsonProvider."}),"\n",(0,o.jsx)(t.h3,{id:"setreadonly",children:"setReadOnly"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod setReadOnly(readOnly) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Set readOnly to the value of readOnly. Subclasses MUST implement this method to update the controls on the page so that the page's behaviour actually matches the value of the readOnly flag."}),"\n",(0,o.jsx)(t.h3,{id:"canusermodify",children:"canUserModify"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod canUserModify(noAlert) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Helper method to indicate whether the user is allowed to make changes to the current document. It should check whether the user is allowed to make changes in general (which should be indicated by canEdit), as well as whether the current document has been opened in read only mode (which should be indicated by canEdit). noAlert is a flag to indicate that the check should not raise an alert."}),"\n",(0,o.jsx)(t.h3,{id:"getsaveaction",children:"getSaveAction"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getSaveAction(force) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Return the string used as the command when sending JSON content to the server. The OnSubmitContent handler for the jsonProvider MUST support two action types."}),"\n",(0,o.jsx)(t.h3,{id:"ondocumentloadcomplete",children:"onDocumentLoadComplete"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onDocumentLoadComplete() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Callback method invoked after we have successfully loaded the current document."}),"\n",(0,o.jsx)(t.h3,{id:"ondocumentsavecomplete",children:"onDocumentSaveComplete"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onDocumentSaveComplete(contentModified) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Callback method invoked after we successfully save the current document."}),"\n",(0,o.jsx)(t.h3,{id:"updatedocumentstate",children:"updateDocumentState"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod updateDocumentState(alertOnReadOnly) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Helper method to ensure that the readOnly and readOnlyReason properties are up to date on the client, and that the user knows about any change that has rendered the document read only."}),"\n",(0,o.jsx)(t.h3,{id:"getreadonlyreason",children:"getReadOnlyReason"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getReadOnlyReason() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Callback to get the text of the reason for the current document being loaded as readonly."}),"\n",(0,o.jsx)(t.h3,{id:"drawsourcecontrolhead",children:"%DrawSourceControlHead"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DrawSourceControlHead() As %Status\n"})}),"\n",(0,o.jsx)(t.p,{children:"The subclass should invoke this method from its own %OnDrawHTMLHead() method."}),"\n",(0,o.jsx)(t.h3,{id:"drawsourcecontrolstyle",children:"%DrawSourceControlStyle"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DrawSourceControlStyle() As %Status\n"})}),"\n",(0,o.jsx)(t.p,{children:"Render the CSS needed for the source control icons."}),"\n",(0,o.jsx)(t.h3,{id:"drawsourcecontroljs",children:"%DrawSourceControlJS"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DrawSourceControlJS() As %Status\n"})}),"\n",(0,o.jsx)(t.p,{children:"Ensure that zenMenus.js and zenCSLM.js are included in the page."}),"\n",(0,o.jsx)(t.h3,{id:"drawsourcecontrolcommands",children:"%DrawSourceControlCommands"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DrawSourceControlCommands() As %Status\n"})}),"\n",(0,o.jsx)(t.p,{children:"This is a helper method to render the default HTML for the source control options in the ribbon, and should be called from the OnDrawRibbon() callback. This content should be wrapped within a td element."}),"\n",(0,o.jsx)(t.h3,{id:"updatescmenus",children:"UpdateSCMenus"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"Method UpdateSCMenus(showMenu As %Boolean = 0) As %String [ ZenMethod ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Update the _sourceControlMenu Javascript object representing the contents of the source control menus."}),"\n",(0,o.jsx)(t.h3,{id:"showscmenu",children:"showSCMenu"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod showSCMenu() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Display the source control menu based on the contents of the _sourceControlMenu data created by UpdateSCMenu()."}),"\n",(0,o.jsx)(t.h3,{id:"createscsubmenu",children:"createSCSubMenu"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod createSCSubMenu(parentItem, caption) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Helper method to create a submenu in the source control menu."}),"\n",(0,o.jsx)(t.h3,{id:"createscmenuitem",children:"createSCMenuItem"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod createSCMenuItem(parentItem, caption, onselect) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Helper method to create an item in the source control menu."}),"\n",(0,o.jsx)(t.h3,{id:"showscoutput",children:"showSCOutput"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod showSCOutput() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Open a popup to display the current source control output."}),"\n",(0,o.jsx)(t.h3,{id:"clearscoutput",children:"clearSCOutput"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod clearSCOutput() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Clear the source control output on the server and update the content star."}),"\n",(0,o.jsx)(t.h3,{id:"choosescmenu",children:"chooseSCMenu"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod chooseSCMenu(menuName, commandName, saveFlags) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Handle a source control menu selection."}),"\n",(0,o.jsx)(t.h3,{id:"setscproject",children:"setSCProject"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod setSCProject(newProject) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Notify the server that a specific project has been chosen."}),"\n",(0,o.jsx)(t.h3,{id:"choosescproject",children:"chooseSCProject"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod chooseSCProject(projectName, isNew) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"The user has selected on of the projects listed in the dropdown."}),"\n",(0,o.jsx)(t.h3,{id:"createscproject",children:"createSCProject"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod createSCProject(projectName) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Create a new project on the server."}),"\n",(0,o.jsx)(t.h3,{id:"appendserveroutput",children:"appendServerOutput"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod appendServerOutput(data, first) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Render the server output from source control commands on the client."}),"\n",(0,o.jsx)(t.h3,{id:"updatescindicator",children:"updateSCIndicator"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod updateSCIndicator(haveOutput) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Toggle the display of the star which indicates whether new source control output is available."}),"\n",(0,o.jsx)(t.h3,{id:"ondocumentsave",children:"onDocumentSave"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onDocumentSave(when, documentName) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Callback invoked when a document is being saved."}),"\n",(0,o.jsx)(t.h3,{id:"invokesourcecontrol",children:"invokeSourceControl"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod invokeSourceControl(action, isFramework) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Client-side coordinator of calls to the UserAction callback in the core source control class."}),"\n",(0,o.jsx)(t.h3,{id:"invokeafteruseraction",children:"invokeAfterUserAction"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod invokeAfterUserAction(input, userContext) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Client-side coordinator of calls to the AfterUserAction callback in the core source control class."}),"\n",(0,o.jsx)(t.h3,{id:"reloaddocument",children:"reloadDocument"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod reloadDocument() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Reload the current document. Returns a boolean to indicate whether a full page reload has been triggered."}),"\n",(0,o.jsx)(t.h3,{id:"gettimestamp",children:"GetTimestamp"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GetTimestamp(classname As %String = "") As %String [ ZenMethod ]\n'})}),"\n",(0,o.jsx)(t.p,{children:"Get the timestamp for the current document."}),"\n",(0,o.jsx)(t.h3,{id:"havesourcecontroloutput",children:"HaveSourceControlOutput"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod HaveSourceControlOutput() As %Boolean\n"})}),"\n",(0,o.jsx)(t.p,{children:"Indicate whether there is Source Control output for the session."}),"\n",(0,o.jsx)(t.h3,{id:"clearsourcecontroloutput",children:"ClearSourceControlOutput"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod ClearSourceControlOutput() As %Integer [ ZenMethod ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Clear the output for the session."}),"\n",(0,o.jsx)(t.h3,{id:"appendsourcecontroloutput",children:"AppendSourceControlOutput"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod AppendSourceControlOutput(pOutput As %String = "") [ ZenMethod ]\n'})}),"\n",(0,o.jsx)(t.p,{children:"Add output to the session data on the server."}),"\n",(0,o.jsx)(t.h3,{id:"createproject",children:"CreateProject"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod CreateProject(pInputProxy As %ZEN.proxyObject, pOutputProxy As %ZEN.proxyObject) [ ZenMethod ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Create a new Studio project on the server."}),"\n",(0,o.jsx)(t.h3,{id:"documentsave",children:"DocumentSave"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DocumentSave(pInputProxy As %ZEN.proxyObject, pOutputProxy As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Implement the correct callbacks around saving a document."}),"\n",(0,o.jsx)(t.h3,{id:"documentload",children:"DocumentLoad"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DocumentLoad(pInputProxy As %ZEN.proxyObject, pOutputProxy As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Implement the correct callbacks around loading a document."}),"\n",(0,o.jsx)(t.h3,{id:"afteruseraction",children:"AfterUserAction"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod AfterUserAction(pInputProxy As %ZEN.proxyObject, pOutputProxy As %ZEN.proxyObject, pUserData As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Server-side wrapper around the AfterUserAction callback."}),"\n",(0,o.jsx)(t.h3,{id:"useraction",children:"UserAction"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod UserAction(pInputProxy As %ZEN.proxyObject, pOutputProxy As %ZEN.proxyObject) As %String [ ZenMethod ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Server-side wrapper around the UserAction callback."}),"\n",(0,o.jsx)(t.h3,{id:"handleredirect",children:"handleRedirect"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod handleRedirect(pRedirect As %CSP.Portal.SourceControl.IO, ByRef pStatus As %Status = {$$$OK}, pOutputProxy As %ZEN.proxyObject = "") [ Internal, Private ]\n'})}),"\n",(0,o.jsx)(t.p,{children:"Helper method to capture redirected output."}),"\n",(0,o.jsx)(t.h3,{id:"getsourcecontrolcommands",children:"GetSourceControlCommands"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetSourceControlCommands(Output pDisplay As %Boolean, Output pCommands, Output pNeedProject As %Boolean, Output pServerOutput As %String) As %Status\n"})}),"\n",(0,o.jsx)(t.p,{children:"Determine which source control commands should be drawn for the current context."}),"\n",(0,o.jsx)(t.h3,{id:"loadproject",children:"LoadProject"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod LoadProject(pSourceControl As %Studio.SourceControl.Base, pProject As %String, pRedirect As %Boolean = 1) As %Status\n"})}),"\n",(0,o.jsx)(t.p,{children:"Load the named project in pProject using the source control object supplied in pSourceControl. The pRedirect flag controls whether a local redirect should be created."}),"\n",(0,o.jsx)(t.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Add check to ensure that we correctly load documents on the client when source control hooks are in use."}),"\n",(0,o.jsx)(t.h3,{id:"initializesourcecontrol",children:"initializeSourceControl"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod initializeSourceControl() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Function to initialize the source control hooks for a page. The function should be called from the subclass's onloadHandler() method."}),"\n",(0,o.jsx)(t.h3,{id:"initializetextmonitor",children:"initializeTextMonitor"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod initializeTextMonitor() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Initialize the text monitor for the page."}),"\n",(0,o.jsx)(t.h3,{id:"loaddocument",children:"loadDocument"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod loadDocument() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Method to load document from the client and invoke the correct source control hooks."}),"\n",(0,o.jsx)(t.h3,{id:"savedocument",children:"saveDocument"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod saveDocument(force) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Save the current document using the correct source control hooks."}),"\n",(0,o.jsx)(t.h3,{id:"ondocumentload",children:"onDocumentLoad"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod onDocumentLoad(when, documentName) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Callback invoked when a document is being loaded."}),"\n",(0,o.jsx)(t.h3,{id:"checktextcontrols",children:"checkTextControls"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod checkTextControls() [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Helper method for event sequencing: the onmousedown event for the menu buttons and shapes in the SVG diagram may be executed before the onchange event for controls in the editor pane. This helper function will call the onchange event for any controls which have had their value changed. (There should only be one such control in most cases as the onchange event would be triggered when shifting focus to a second control.)"}),"\n",(0,o.jsx)(t.h3,{id:"textcontrolkeyup",children:"textControlKeyUp"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod textControlKeyUp(event, zenControl) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Key handler to work out whether user keys entered in controls have changed the content of the text field. This is to deal with situations where the onchange event for a text control is only triggered after the onmousedown event for another shape has already occurred."}),"\n",(0,o.jsx)(t.h3,{id:"textcontrolkeydown",children:"textControlKeyDown"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod textControlKeyDown(zenControl) [ Language = javascript ]\n"})}),"\n",(0,o.jsx)(t.p,{children:"Key handler to record the value of text fields before the keyboard event is processed. Works in conjunction with textControlKeyUp() to determine whether any text fields are modified."}),"\n",(0,o.jsx)(t.h3,{id:"issourcecontrolreadonly",children:"IsSourceControlReadOnly"}),"\n",(0,o.jsx)(t.pre,{children:(0,o.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod IsSourceControlReadOnly(pInternalName As %String = "") As %Boolean\n'})})]})}function i(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,o.jsx)(t,{...e,children:(0,o.jsx)(l,{...e})}):l(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>a,x:()=>c});var o=n(96540);const r={},s=o.createContext(r);function a(e){const t=o.useContext(s);return o.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),o.createElement(s.Provider,{value:t},e.children)}}}]);