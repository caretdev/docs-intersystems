/// This class contains shared methods used by the systems background task UI pages.
Class %CSP.UI.Portal.Background.Utils [ Abstract, System = 4 ]
{

Parameter DOMAIN = "%Utility";

Property OpenDetailsPage As %String [ InitialExpression = {..Link("/csp/sys/%CSP.UI.Portal.Background.Dialog.TaskInfo.zen",,1)} ];

Property OutputPage As %ZEN.Datatype.string [ InitialExpression = {..Link("%25CSP.UI.Portal.Background.TaskInfoOutput.zen")} ];

ClassMethod GetTaskInfo(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

ClassMethod HasEnded(SysBGTaskId) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// This function is executed when SaveQuery is processed to run in the background.
ClientMethod timeout() [ Language = javascript ]
{
}

ClientMethod updateButtons(proxy) [ Language = javascript ]
{
}

ClientMethod drawData() [ Language = javascript ]
{
}

/// Show information for the background job id in a dialog window
ClientMethod openDetails(SysBGTaskId) [ Language = javascript ]
{
}

/// Return on-going background tasklist (Input: database directory)
ClassMethod GetTaskList(pDirectory, Output pTaskList) As %Status
{
}

/// Log error into ^|"%SYS"|IRIS.Temp.MgtPortalTask($J,"Status") and ^|"%SYS"|IRIS.Temp.MgtPortalTask($J,"Details")
ClassMethod LogMsg(ErrMsg As %String = "", Status As %String = "ERROR")
{
}

}
