///  Zen template for System Management Portal - Edit Database Properties
Class %CSP.UI.Portal.DatabaseTemplate Extends %CSP.UI.Portal.Template [ Abstract, Not SqlRowIdPrivate, System = 4 ]
{

///  Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Parameter EMSSERVICE = "Namespace";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.Databases.zen";

Parameter RECENT = 0;

///  Security requirement
Parameter RESOURCE = "%Admin_Manage";

Property browseselect As %String;

Property DBName As %ZEN.Datatype.string(ZENURL = "DBName");

Property IsEditForm As %Boolean [ InitialExpression = 1 ];

Property OldDirectory As %ZEN.Datatype.string(ZENURL = "Dir");

Property Directory As %ZEN.Datatype.string(ZENURL = "Dir");

Property MirName As %ZEN.Datatype.string;

Property OldSize As %ZEN.Datatype.integer;

Property ReadOnly As %ZEN.Datatype.boolean;

Property ReadOnlyMounted As %ZEN.Datatype.boolean;

Property ROReasonText As %ZEN.Datatype.string;

Property curVolThreshold As %ZEN.Datatype.integer;

Property origVolThreshold As %ZEN.Datatype.integer;

/// ID for edit.
Property PID As %String(ZENURL = "DBName");

XData Style
{
}

///  User clicked one of the Browse buttons.
///  Save the name of the textfield so that when you return you know which textfield to update.
ClientMethod browseSelect(name) [ Language = javascript ]
{
}

///  enable/disable MountAtStartup based on MountRequired value
ClientMethod changeMount(MountRequired) [ Language = javascript ]
{
}

ClientMethod undoDirChange() [ Language = javascript ]
{
}

ClientMethod changeVolThreshold(newVal) [ Language = javascript ]
{
}

ClientMethod doUnitSwitch() [ Language = javascript ]
{
}

///  This client event, if present, is fired when the a popup page
///  launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

ClientMethod validateName(Name, OldName) [ Language = javascript ]
{
}

ClientMethod validateSize(Size, OldSize, Directory) [ Language = javascript ]
{
}

ClassMethod DbExists(Dir) As %String [ ZenMethod ]
{
}

ClassMethod GetFreeSpace(Dir As %String) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method LoadCollations(NewGlobalCollation As %String, ReturnDisplayValue As %Boolean = 0) As %String
{
}

Method LoadResources(ResourceName As %String) As %String [ ZenMethod ]
{
}

ClassMethod MULTIVOLBackupCheck(Dir As %String) As %Boolean [ ZenMethod ]
{
}

ClassMethod VolumeDirectoriesExecute(ByRef qHandle As %Binary, Directory As %SysPath) As %Status [ Internal ]
{
}

ClassMethod VolumeDirectoriesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PublicList = qHandle ]
{
}

ClassMethod VolumeDirectoriesClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

}
