/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Database Wizard for Management Portal
/// <p><b>Please do not modify any part of this dialog without COMPLETELY testing all cases!!!<br/>
/// Please be extremely careful!!! </b></p>
Class %CSP.UI.Portal.Dialog.DatabaseWizard Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Dialog.DatabaseWizard.zen";

/// Displayed name of this page.
Parameter PAGENAME = "DatabaseWizard";

Parameter AUTONS As BOOLEAN = 0;

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Parameter EMSSERVICE = "Namespace";

/// User must hold at least operator privilege to use this dialog.
Parameter RESOURCE = "%Admin_Manage";

Parameter HELPID = "GSA_config_databases";

/// Type from where we get the selected items from: Class or Routine.
Property FILETYPE As %ZEN.Datatype.string(ZENURL = "FILETYPE");

Property ResourcePage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/sec/%CSP.UI.Portal.Dialog.Resource.zen")} ];

Property GetDBEncKeyID As %ZEN.Datatype.string [ InitialExpression = {$$$GetDBEncKeyID} ];

Property defaultResource As %ZEN.Datatype.string [ InitialExpression = {$$$DBDEFAULTResourceName} ];

Property AllowNewResource As %ZEN.Datatype.string [ InitialExpression = {$SYSTEM.Security.Check($$$AdminSecureResourceName,$$$PermUseName)} ];

Property NewResource As %ZEN.Datatype.string [ InitialExpression = {$$$DBDEFAULTResourceName} ];

Property UseExistDB As %ZEN.Datatype.integer;

Property IsMirrorMember As %ZEN.Datatype.integer [ InitialExpression = {$System.Mirror.IsMember()} ];

Property ShowMirrorSet As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Indicate whether the current directory has been evaluated. Whenever Directory is changed (by using Browse or typed in) this is set to 0 and Finish is disabled so that Next is required.
Property DirEvaluated As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// User confirmed to proceed on using MGR directory
Property UserProceed As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Indicate whether the name user entered already exists.
Property NameExists As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property msgNameExists As %ZEN.Datatype.string [ InitialExpression = {$$$TextJS("Database with this name already exists!")} ];

Property msgNameHint As %ZEN.Datatype.string [ InitialExpression = {$$$TextJS("Required.")} ];

Property msgDirExists As %ZEN.Datatype.string [ InitialExpression = {$$$TextJS("Directory does not exist! Please change if you do not wish the directory be created.")} ];

Property curVolThreshold As %ZEN.Datatype.integer;

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Check if name already exists.
ClientMethod checkNameExists(DBName) [ Language = javascript ]
{
}

/// Check if directory already exists.
ClientMethod checkDirExists(DBDir) [ Language = javascript ]
{
}

/// Return true if this template can go to the next page (i.e., enable
/// the Next button).<br>
ClientMethod canGoNext() [ Language = javascript ]
{
}

/// Return true if this template can go to the previous page (i.e., enable
/// the Back button).<br>
/// This is implemented by subclasses.
ClientMethod canGoBack() [ Language = javascript ]
{
}

/// Return true if this template can Finish (i.e., enable
/// the Finish button).<br>
ClientMethod canFinish() [ Language = javascript ]
{
}

ClientMethod hasMultiplePages() [ Language = javascript ]
{
}

ClientMethod changeMirror(isMirror) [ Language = javascript ]
{
}

/// Check if user hit [Enter].
ClientMethod keyUp(zenEvent) [ Language = javascript ]
{
}

ClientMethod changeVolThreshold(newVal) [ Language = javascript ]
{
}

ClientMethod doUnitSwitch() [ Language = javascript ]
{
}

/// Update flag to indicate that the directory is user selected/entered so modifying the Name field
/// would not override the directory.
ClientMethod updateBrowsed() [ Language = javascript ]
{
}

/// Go to the next page of the template (if there is one).<br/>
ClientMethod nextPage() [ Language = javascript ]
{
}

/// Go to the previous page of the template (if there is one).<br/>
/// This is implemented by subclasses.
ClientMethod previousPage() [ Language = javascript ]
{
}

/// Process save and create new db. Return true if success. OW return false.
ClientMethod doSave() As %Boolean [ Language = javascript ]
{
}

/// This method checks if user entered directory is the manager directory. If it is, then show warning message and have user confirm to proceed.
ClientMethod validateMGR() As %Boolean [ Language = javascript ]
{
}

/// User clicked the Proceed button to use the MGR database
ClientMethod useMGR() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.<br/>
/// If this returns false, then the action is cancelled.
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

/// User clicked the Browse button.
ClientMethod browseSelect(name) [ Language = javascript ]
{
}

ClientMethod changeResource(flag) [ Language = javascript ]
{
}

/// Returning from file select OR qualifers dialog and setting the value into the appropriate field.<br/>
/// The id of the field that needs to be updated is saved in "dialogClicked".
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// This is called when the template is first displayed;<br/>
/// This provides a chance to load the last filetype, etc.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

/// Update directory while user typing in Name<br/>
/// But do not do so if user has selected a directory from the Browse window<br/>
/// Also update the Mirror DB Name with the user-entered name.
ClientMethod updateDir(DBName) [ Language = javascript ]
{
}

ClientMethod validateSize(Dir) [ Language = javascript ]
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

/// This callback is called after the server-side page
/// object and all of its children are created.<br/>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

/// If this is the first time user entering a database, the last directory is null. Return "".
/// Else return default directory with the new DBName added
ClassMethod GetDefaultDir(DBName As %String) As %String [ ZenMethod ]
{
}

ClassMethod GetLastDBDir() As %String [ ZenMethod ]
{
}

ClassMethod SetLastDBDir(Directory As %String) As %String [ ZenMethod ]
{
}

ClassMethod GetResourceList() As %String [ ZenMethod ]
{
}

ClassMethod GetFreeSpace(Dir As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

/// Check if DBName user entered already exists (1 = yes; 0 = no).
ClassMethod DBNameExists(DBName As %String) As %String [ ZenMethod ]
{
}

/// Validate Database Name
ClassMethod DBNameIsValid(DBName As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Check if Directory user entered already exists (1 = yes; 0 = no).
ClassMethod DBDirExists(Directory As %String) As %String [ ZenMethod ]
{
}

/// Check whether database exists in this directory
ClassMethod DbExists(Dir As %String) As %String [ ZenMethod ]
{
}

/// Check if the directory entered or selected is the same as the system manager directory. <br>
/// result is returned as a proxy object.
/// proxy.ismgr = 1 or 0; proxy.ok = 1 or 0; proxy.ErrorMessage is actual error message if proxy.ok = 0.<br>
ClassMethod IsMGRDir(Directory As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod CreateDirectory(Directory As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

}
