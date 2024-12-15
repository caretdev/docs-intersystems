/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This class implements the form used to execute user SQL queries within the Mgt Portal.
/// It also includes some methods used to manage the query history.
Class %CSP.UI.SQL.QueryForm Extends (%RegisteredObject, %CSP.Util.AutoForm) [ Inheritance = right, System = 4 ]
{

/// Query text
Property Query As %String(CAPTION = "SQL Query", MAXLEN = 10000);

/// Query run-time mode
Property RuntimeMode As %String(CAPTION = "Data Display Mode", DISPLAYLIST = ",Logical Mode,ODBC Mode,Display Mode", MAXLEN = 50, VALUELIST = ",0,1,2");

/// Rows to display
Property MaxRows As %Integer(CAPTION = "Maximum Rows", MINVAL = 1);

ClassMethod CreateInstance(ByRef pID As %String) As %CSP.Util.AutoForm
{
}

Method OnSubmit(ByRef pID As %String, pSubmit As %String) As %Status
{
}

/// define buttons
ClassMethod OnDefineButtons(ByRef pButtons As %CSP.Util.FormButton)
{
}

/// Returns query history list
ClassMethod QueryHistoryExecute(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod QueryHistoryFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = QueryHistoryExecute ]
{
}

ClassMethod QueryHistoryClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = QueryHistoryExecute ]
{
}

/// Manual override of generated method.
ClassMethod DrawHTMLForm(pObj As %RegisteredObject, ByRef pID As %String, pActionURL As %String = "", ByRef pButtons As FormButton, pTarget As %String = "") As %Status
{
}

}
