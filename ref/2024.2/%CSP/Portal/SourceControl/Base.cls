/// <p> This class is for internal InterSystems use only. The class is subject to change and should not be
/// used by user applications.</p>
/// <p>Template for portal pages which need to be able to interact with Source Control hooks.
/// This class implements various interfaces and behaviours into the standard Studio patterns used for
/// <class>%Studio.SourceControl.Base</class>. Note that the browser environment is inherently stateless,
/// so the object implementing the source control hooks needs to be created from scratch every time the
/// browser makes a request back to the server. Source control hooks written for the Studio environment
/// will need to adjust for this situation. To assist in this migration, the hooks can should override
/// the OnPortalCreate() callback that is inherited from <class>%Studio.SourceControl.Base</class> to ensure
/// that the Source Control object is correctly initialised whenever it is created.</p>
/// <p>Users should also modify the behaviour of any Studio templates invoked from their source control hooks.
/// <p>It is critical that pages which extend this class implement a number of callbacks. The following
/// methods <strong>MUST</strong> be overridden:
/// <ul><li><method>GetInternalName</method>()</li>
/// <li><method>getCurrentName</method>()</li>
/// <li><method>getClientModel</method>()</li>
/// <li><method>setReadOnly</method>()</li></ul>
/// The following methods may also need to be overridden depending on the page:
/// <ul><li><method>getCurrentExtension</method>()</li>
/// <li><method>getSaveAction</method>()</li>
/// <li><method>canUserModify</method>()</li>
/// <li><method>getReadOnlyReason</method>()</li></ul>
/// Furthermore, the user <strong>MUST</strong> ensure that the following methods are called from the subclass:
/// <ul><li><method>initializeSourceControl</method>() must be called from the subclass's <method>onloadHandler</method>() method.</li>
/// <li><method>%DrawSourceControlHead</method>() must be called from the subclass's <method>%OnDrawHTMLHead</method>() method.</li>
/// <li><method>%DrawSourceControlCommands</method>() must be called from the subclass's <method>OnDrawRibbon</method>() method.</li></ul>
/// It is also assumed that a Zen jsonProvider instance is used to represent the data model in the page.
/// The object used for the model <strong>MUST</strong> extend <class>%CSP.Portal.AbstractPortalModel</class>
/// <strong>OR</strong> include a Timestamp property and a ReadOnly property as per the interface defined in
/// <class>%CSP.Portal.AbstractPortalModel</class> if custom JSON is sent from the server to the client. These two properties
/// are used to ensure that the client and server versions of the document model are synchronised.
/// Furthermore, the OnSubmitContent callback implemented in the page <strong>MUST</strong> perform a number of actions.</p>
/// <p>First, it must support two save modes. The first such mode is a standard save mode. The value of the
/// command string for this mode should be specified in the <method>getSaveAction</method>() callback.
/// When this standard save mode is specified, the server method must check whether the timestamp of the model
/// on disk matches the Timestamp property of the submitted model. If they don't match, the error property of
/// the supplied jsonProvider instance should be set to the string "timestamp".
/// When the page sees this error, the user will be prompted to decide if they want to overwrite the data on the server.
/// If the user does choose to overwrite the data, then <method>getSaveAction</method>() will be invoked to get the
/// force save action. In this case, the OnSubmitContent callback should <strong>NOT</strong> perform any timestamp checks --
/// the model should be saved to disk.</p>
/// <p>If the timestamps match, or the force command is supplied, and the model is saved to disk, the method should then
/// ensure that an updated model is sent back to the client in the output object argument of the callback. The updated model
/// should include both the new Timestamp for the document as well as a valid ReadOnly value. In this case, a valid ReadOnly value
/// should be determined as follows:
/// <ul><li>Call <method>IsSourceControlReadOnly</method>() to determine whether the document is marked as read only by the current
/// source control hooks. If so, set the ReadOnly property to 2.</li>
/// <li>Otherwise check if the document has been locked by another user. If so, set the ReadOnly property to 1.</li>
/// <li>Otherwise set the ReadOnly property to 0.</li></ul>
/// A sample OnSubmitContent callback method could look like the following:
/// <example language="cls!member">
/// Method SubmitModel(
/// 	pCommand As %String,
/// 	pProvider As %ZEN.Auxiliary.jsonProvider,
/// 	pSubmitObject As %RegisteredObject,
/// 	ByRef pResponseObject As %RegisteredObject) As %Status
/// {
/// 	Set tSC = $$$OK
/// 	Try {
/// 			Set tReadOnly = 0
/// 		If (pCommand '= "forcesave") && ##class(%Dictionary.ClassDefinition).%ExistsId(..modelClassName) {
/// 			// Note that 1 is passed in for the pExclusiveOnly argument as we need an exclusive lock
/// 			Set tSC = ..LoadClassDefinition(..modelClassName,.tModelDef,.tReadOnly,1)
/// 			If $$$ISERR(tSC) Quit
/// 			If $zdatetime(tModelDef.TimeChanged,3,,6) '= pSubmitObject.Timestamp {
/// 				Set pProvider.error = "timestamp"
/// 				Quit
/// 			}
/// 		}
///
/// 		Set tSC = pSubmitObject.SaveToClass()
/// 		If $$$ISERR(tSC) Quit
///
/// 		// send up-to-date model back to client, this should include updated timestamp
/// 		Set pResponseObject = pSubmitObject
/// 		// correct the ReadOnly flag on the response object
/// 		If ..IsSourceControlReadOnly(..GetInternalName()) {
/// 			Set pResponseObject.ReadOnly = 2
/// 		}
/// 		Else {
/// 			Set pResponseObject.ReadOnly = tReadOnly
/// 		}
/// 	}
/// 	Catch(ex) {
/// 		Set tSC = ex.AsStatus()
/// 	}
/// 	Quit tSC
/// }
/// </example>
/// </p>
Class %CSP.Portal.SourceControl.Base Extends %CSP.Portal.SourceControl.Util [ Abstract, System = 4 ]
{

/// Resource for subclasses to indicate whether further resources are needed to perform actions on pages.
Parameter EDITRESOURCE;

Parameter DOMAIN = "%Utility";

/// Page to use for managing popups requested by the source control framework.
Parameter MANAGERDIALOG = "_CSP.Portal.SourceControl.Dialog.Manager.zen";

/// Page to use for displaying output from the server.
Parameter OUTPUTDIALOG = "_CSP.Portal.SourceControl.Dialog.ServerOutput.zen";

/// Flag to indicate whether the user is permitted to make any changes on a given page.
Property canEdit As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Message to inform the user they may not perform a given action.
Property msgNotPermitted As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("You are not permitted to perform this action","%Utility")} ];

/// Flag to indicate whether source control hooks are enabled for the current namespace.
Property sourceControlEnabled As %ZEN.Datatype.boolean [ InitialExpression = {..IsEnabled($namespace)} ];

/// Flag to indicate whether source control output is present in the current session.
Property hasSCOutput As %ZEN.Datatype.boolean [ InitialExpression = {..HaveSourceControlOutput()} ];

/// Flag to control what newline format should be used for reporting data from the server.
/// The default output is HTML.
Property sourceControlNewlineFormat As %ZEN.Datatype.string [ InitialExpression = "HTML" ];

/// Flag to indicate whether the source control output is currently visible.
Property sourceControlVisible As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Flag to indicate whether a project is needed for the current source control hooks.
Property needProject As %ZEN.Datatype.boolean [ InitialExpression = {..IsProjectRequired()} ];

/// The name of the currently active/selected project.
Property currentProject As %ZEN.Datatype.string(MAXLEN = 68) [ InitialExpression = {..GetCurrentProject()} ];

/// The current namespace.
Property currentNamespace As %ZEN.Datatype.string [ InitialExpression = {$namespace} ];

/// The current user's username
Property currentUser As %ZEN.Datatype.string [ InitialExpression = {$username} ];

/// If true, create a NEW document.
Property isNew As %Boolean [ InitialExpression = 0, Internal ];

/// If true, user cannot modify the current document.
Property readOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Indicator for why a document was marked as readOnly. When <property>readOnly</property>
/// is true, the <method>updateDocumentState</method>() is responsible for ensuring that the
/// property should either have a value of "sourcecontrol" or "lock".
Property readOnlyReason As %ZEN.Datatype.string;

/// Flag to indicate whether the document has been renamed via "Save As".
Property renamed As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Name of the output dialog to use.
Property sourceControlOutputDialog As %ZEN.Datatype.string [ InitialExpression = {..#OUTPUTDIALOG} ];

/// Name of the manager page to use for managing popups requested by the source control class.
Property sourceControlManagerDialog As %ZEN.Datatype.string [ InitialExpression = {..#MANAGERDIALOG} ];

/// Return the internal name of the current document, including the three letter
/// extension in upper-case. For example, MyPackage.MyClass.CLS would be the internal name
/// for the class MyPackage.MyClass.
/// Subclasses MUST override this method.
Method GetInternalName() As %String
{
}

/// Return the current name of the class/object being modified.
/// Subclasses MUST override this method to return the correct name.
ClientMethod getCurrentName() [ Language = javascript ]
{
}

/// Get the title string to add to the locator row.
/// This should be implemented in a subclass.
ClientMethod getPageTitle() As %String [ Language = javascript ]
{
}

/// Return the extension used by Studio for the class/object.
/// This is ".CLS" by default, but subclasses should override this method
/// if a different extension is in use.
ClientMethod getCurrentExtension() [ Language = javascript ]
{
}

/// Get the jsonProvider object on the client.
/// Subclasses MUST override this method to return the jsonProvider.
ClientMethod getClientModel() [ Language = javascript ]
{
}

/// Set <property>readOnly</property> to the value of <var>readOnly</var>.
/// Subclasses MUST implement this method to update the controls on the page
/// so that the page's behaviour actually matches the value of the readOnly flag.
ClientMethod setReadOnly(readOnly) [ Language = javascript ]
{
}

/// Helper method to indicate whether the user is allowed to make changes to the
/// current document. It should check whether the user is allowed to make changes in general
/// (which should be indicated by <property>canEdit</property>), as well as whether the current
/// document has been opened in read only mode (which should be indicated by <property>canEdit</property>).
/// <var>noAlert</var> is a flag to indicate that the check should not raise an alert.
ClientMethod canUserModify(noAlert) [ Language = javascript ]
{
}

/// Return the string used as the command when sending JSON content to the server.
/// The OnSubmitContent handler for the jsonProvider MUST support two action types.
ClientMethod getSaveAction(force) [ Language = javascript ]
{
}

/// Callback method invoked after we have successfully loaded the current document.
ClientMethod onDocumentLoadComplete() [ Language = javascript ]
{
}

/// Callback method invoked after we successfully save the current document.
ClientMethod onDocumentSaveComplete(contentModified) [ Language = javascript ]
{
}

/// Helper method to ensure that the <property>readOnly</property> and
/// <property>readOnlyReason</property> properties are up to date on the client,
/// and that the user knows about any change that has rendered the document read only.
ClientMethod updateDocumentState(alertOnReadOnly) [ Language = javascript ]
{
}

/// Callback to get the text of the reason for the current document being loaded as readonly.
ClientMethod getReadOnlyReason() [ Language = javascript ]
{
}

/// The subclass should invoke this method from its own %OnDrawHTMLHead() method.
Method %DrawSourceControlHead() As %Status
{
}

/// Render the CSS needed for the source control icons.
Method %DrawSourceControlStyle() As %Status
{
}

/// Ensure that zenMenus.js and zenCSLM.js are included in the page.
Method %DrawSourceControlJS() As %Status
{
}

/// This is a helper method to render the default HTML for the source control options in the ribbon,
/// and should be called from the OnDrawRibbon() callback.
/// This content should be wrapped within a td element.
Method %DrawSourceControlCommands() As %Status
{
}

/// Update the _sourceControlMenu Javascript object representing the contents of the source control menus.
Method UpdateSCMenus(showMenu As %Boolean = 0) As %String [ ZenMethod ]
{
}

/// Display the source control menu based on the contents of the _sourceControlMenu data
/// created by <method>UpdateSCMenu</method>().
ClientMethod showSCMenu() [ Language = javascript ]
{
}

/// Helper method to create a submenu in the source control menu.
ClientMethod createSCSubMenu(parentItem, caption) [ Language = javascript ]
{
}

/// Helper method to create an item in the source control menu.
ClientMethod createSCMenuItem(parentItem, caption, onselect) [ Language = javascript ]
{
}

/// Open a popup to display the current source control output.
ClientMethod showSCOutput() [ Language = javascript ]
{
}

/// Clear the source control output on the server and update the content star.
ClientMethod clearSCOutput() [ Language = javascript ]
{
}

/// Handle a source control menu selection.
ClientMethod chooseSCMenu(menuName, commandName, saveFlags) [ Language = javascript ]
{
}

/// Notify the server that a specific project has been chosen.
ClientMethod setSCProject(newProject) [ Language = javascript ]
{
}

/// The user has selected on of the projects listed in the dropdown.
ClientMethod chooseSCProject(projectName, isNew) [ Language = javascript ]
{
}

/// Create a new project on the server.
ClientMethod createSCProject(projectName) [ Language = javascript ]
{
}

/// Render the server output from source control commands on the client.
ClientMethod appendServerOutput(data, first) [ Language = javascript ]
{
}

/// Toggle the display of the star which indicates whether new
/// source control output is available.
ClientMethod updateSCIndicator(haveOutput) [ Language = javascript ]
{
}

/// Callback invoked when a document is being saved.
ClientMethod onDocumentSave(when, documentName) [ Language = javascript ]
{
}

/// Client-side coordinator of calls to the UserAction callback in
/// the core source control class.
ClientMethod invokeSourceControl(action, isFramework) [ Language = javascript ]
{
}

/// Client-side coordinator of calls to the AfterUserAction callback in
/// the core source control class.
ClientMethod invokeAfterUserAction(input, userContext) [ Language = javascript ]
{
}

/// Reload the current document.
/// Returns a boolean to indicate whether a full page reload has been triggered.
ClientMethod reloadDocument() [ Language = javascript ]
{
}

/// Get the timestamp for the current document.
ClassMethod GetTimestamp(classname As %String = "") As %String [ ZenMethod ]
{
}

/// Indicate whether there is Source Control output for the session.
ClassMethod HaveSourceControlOutput() As %Boolean
{
}

/// Clear the output for the session.
ClassMethod ClearSourceControlOutput() As %Integer [ ZenMethod ]
{
}

/// Add output to the session data on the server.
ClassMethod AppendSourceControlOutput(pOutput As %String = "") [ ZenMethod ]
{
}

/// Create a new Studio project on the server.
ClassMethod CreateProject(pInputProxy As %ZEN.proxyObject, pOutputProxy As %ZEN.proxyObject) [ ZenMethod ]
{
}

/// Implement the correct callbacks around saving a document.
ClassMethod DocumentSave(pInputProxy As %ZEN.proxyObject, pOutputProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Implement the correct callbacks around loading a document.
ClassMethod DocumentLoad(pInputProxy As %ZEN.proxyObject, pOutputProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Server-side wrapper around the AfterUserAction callback.
ClassMethod AfterUserAction(pInputProxy As %ZEN.proxyObject, pOutputProxy As %ZEN.proxyObject, pUserData As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Server-side wrapper around the UserAction callback.
ClassMethod UserAction(pInputProxy As %ZEN.proxyObject, pOutputProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Helper method to capture redirected output.
ClassMethod handleRedirect(pRedirect As %CSP.Portal.SourceControl.IO, ByRef pStatus As %Status = {$$$OK}, pOutputProxy As %ZEN.proxyObject = "") [ Internal, Private ]
{
}

/// Determine which source control commands should be drawn for the current context.
ClassMethod GetSourceControlCommands(Output pDisplay As %Boolean, Output pCommands, Output pNeedProject As %Boolean, Output pServerOutput As %String) As %Status
{
}

/// Load the named project in <var>pProject</var> using the source control object
/// supplied in <var>pSourceControl</var>. The <var>pRedirect</var> flag controls whether
/// a local redirect should be created.
ClassMethod LoadProject(pSourceControl As %Studio.SourceControl.Base, pProject As %String, pRedirect As %Boolean = 1) As %Status
{
}

/// Add check to ensure that we correctly load documents on the client when source control hooks are in use.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Function to initialize the source control hooks for a page.
/// The function should be called from the subclass's <method>onloadHandler</method>() method.
ClientMethod initializeSourceControl() [ Language = javascript ]
{
}

/// Initialize the text monitor for the page.
ClientMethod initializeTextMonitor() [ Language = javascript ]
{
}

/// Method to load document from the client and invoke the correct source control hooks.
ClientMethod loadDocument() [ Language = javascript ]
{
}

/// Save the current document using the correct source control hooks.
ClientMethod saveDocument(force) [ Language = javascript ]
{
}

/// Callback invoked when a document is being loaded.
ClientMethod onDocumentLoad(when, documentName) [ Language = javascript ]
{
}

/// Helper method for event sequencing: the onmousedown event for the menu buttons and shapes in the SVG diagram
/// may be executed before the onchange event for controls in the editor pane. This helper function
/// will call the onchange event for any controls which have had their value changed. (There should only be one
/// such control in most cases as the onchange event would be triggered when shifting focus to a second control.)
ClientMethod checkTextControls() [ Language = javascript ]
{
}

/// Key handler to work out whether user keys entered in controls have
/// changed the content of the text field. This is to deal with situations
/// where the onchange event for a text control is only triggered after the onmousedown
/// event for another shape has already occurred.
ClientMethod textControlKeyUp(event, zenControl) [ Language = javascript ]
{
}

/// Key handler to record the value of text fields before the keyboard event is processed.
/// Works in conjunction with <method>textControlKeyUp</method>() to determine whether any text
/// fields are modified.
ClientMethod textControlKeyDown(zenControl) [ Language = javascript ]
{
}

ClassMethod IsSourceControlReadOnly(pInternalName As %String = "") As %Boolean
{
}

}
