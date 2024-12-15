/// APIs used by System Management Portal
/// Methods in this class should be generic and maybe used by any ISC portals pages
/// as well as in dialogs.
Class %ZEN.Portal.Utils Extends %RegisteredObject [ Abstract, Deprecated, System = 4 ]
{

/// This method can be called to disable a button in the ribbon bar or a button with id starting with "command_".
/// Pass in button id as defined in OnGetRibbonInfo.
ClientMethod disableCommandButton(buttonName) [ Language = javascript ]
{
}

/// This method can be called to enable a button in the ribbon bar.
ClientMethod enableCommandButton(buttonName) [ Language = javascript ]
{
}

/// This method can be called to hide a button in the ribbon bar.
/// Pass in button id as defined in OnGetRibbonInfo.
ClientMethod hideCommandButton(buttonName) [ Language = javascript ]
{
}

/// This method can be called to show a button in the ribbon bar.
ClientMethod showCommandButton(buttonName) [ Language = javascript ]
{
}

}
