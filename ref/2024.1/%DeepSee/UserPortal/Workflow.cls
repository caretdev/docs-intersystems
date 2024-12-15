/// Workflow InBox page.<br/>
/// Shows the list of current workflow tasks for the current user.
Class %DeepSee.UserPortal.Workflow Extends %DeepSee.UserPortal.standardPage [ System = 4 ]
{

/// Name of this page.
Parameter PAGENAME = "Workflow Inbox";

/// URL of home page (used in links).
Parameter HOMEPAGE = "_DeepSee.UserPortal.Home.zen";

/// Starting view for worklist 1.
Parameter WORKLIST1VIEW;

/// Starting view for worklist 2.
Parameter WORKLIST2VIEW;

/// Item id of current item.
Property currItemId As %String(ZENURL = "ID");

/// Message from form submit handler.
Property lastMessage As %String(ZENURL = "MSG");

/// Percentage height of task list.
Property hzSplit As %Integer [ InitialExpression = 70 ];

/// Last update message.
Property lastUpdateMsg As %String;

Property namespace As %ZEN.Datatype.string [ InitialExpression = {$namespace} ];

XData CSS3Style
{
}

XData Style
{
}

/// This XML defines the menu for this page.
XData menuPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML defines the main display area.
XData contentsRightPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Draw the contents of the worklist title area.
Method DrawWorklistTitle(pSeed As %String) As %Status [ Final ]
{
}

/// Draw the contents of the Task Header area.
Method DrawTaskHeader(pSeed As %String) As %Status [ Final ]
{
}

/// Draw the contents of the Task Details area.
Method DrawTaskDetails(pSeed As %String) As %Status [ Final ]
{
}

/// Draw the contents of the Task List area.
Method DrawTaskList(pSeed As %String) As %Status [ Final ]
{
}

/// Decorate the page.
Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) title string for the page.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) name of the page.
/// This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

/// Refresh timer has fired.
ClientMethod refreshTimerHandler(timer) [ Language = javascript ]
{
}

/// Called whenever task list is refreshed..
ClientMethod listRefreshed() [ Language = javascript ]
{
}

/// Reload the task list.
ClientMethod refreshTasks() [ Language = javascript ]
{
}

/// Activate the search text box;
ClientMethod activateSearchBox() [ Language = javascript ]
{
}

/// Key press in search box.
ClientMethod searchKeyPress(evt) [ Language = javascript ]
{
}

/// Perform a search.
ClientMethod doSearch() [ Language = javascript ]
{
}

/// Adjust sizes of content area.
ClientMethod onAdjustSizes(load, contentWidth, contentHeight) [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Update the title for the dashboard.
ClientMethod updateWorklistTitle() [ Language = javascript ]
{
}

/// Update the details panel if the taskid is not the same as URL
ClientMethod updateDetails(taskid) [ Language = javascript ]
{
}

/// Invoke an action on a row.
ClientMethod invokeAction(type, rowid) [ Language = javascript ]
{
}

/// Make details section big or little.
ClientMethod toggleDetails() [ Language = javascript ]
{
}

/// Invoke an action on a row.
ClientMethod setSplit(split) [ Language = javascript ]
{
}

/// Start the split timer.
ClientMethod startSplitTimer() [ Language = javascript ]
{
}

/// Stop the split timer.
ClientMethod clearSplitTimer() [ Language = javascript ]
{
}

/// Action for split timer.
ClientMethod splitTimerHandler() [ Language = javascript ]
{
}

/// Click on item in task list.
ClientMethod selectItem(id) [ Language = javascript ]
{
}

/// Return list of options for work list 1.
Method %OnGetWorklistOptions1(Output pOptions, Output pDefaultMode) As %Status
{
}

/// Return list of options for work list 2.
Method %OnGetWorklistOptions2(Output pOptions, Output pDefaultMode) As %Status
{
}

/// Return list of workflow tasks for the current user.
ClassMethod %GetWorkflowTasksForUser(Output pList, Output pColumns, pSearchKey As %String = "") As %Status
{
}

/// Show form for this worklist item
Method ShowForm(pItem As %RegisteredObject, pState As %String) As %Status
{
}

/// Called by action buttons on the detail form.
ClientMethod actionButtonHandler(action, confirmMsg) [ Language = javascript ]
{
}

/// Submit handler-- this processes submits of the task form.
ClassMethod %OnSubmit(pSubmit As %ZEN.Submit) As %Status
{
}

/// Show the System Management portal.
ClientMethod gotoSMP() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

Method downloadLink() As %String [ ZenMethod ]
{
}

}
