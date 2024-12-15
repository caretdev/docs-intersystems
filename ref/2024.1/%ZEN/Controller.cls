/// This utility class provides a centralized place for managing events between
/// the client and the server.<br>
/// There are no user-callable methods within this class.
Class %ZEN.Controller [ Abstract, Deprecated, Final, System = 3 ]
{

Parameter DOMAIN = "%Utility";

/// Called when the session is about to be deleted.
ClassMethod OnEndSession()
{
}

/// PreHTTP handler shared by all ZEN pages.
ClassMethod OnPreHTTP(pPageClass As %String, pClientCache As %Boolean, pAutoNS As %Boolean = 0, pResource As %String = "", pContentType As %String = "", pIframeallowed As %Boolean = 1) As %Boolean [ ServerOnly = 1 ]
{
}

/// PostHTTP handler shared by all ZEN pages.
ClassMethod OnPostHTTP(pPageClass As %String) [ ServerOnly = 1 ]
{
}

/// PreHyperEvent handler shared by all ZEN pages.
ClassMethod OnPreHyperEvent(pPageClass As %String, pMethod As %String, pAutoNS As %Boolean = 0, pResource As %String = "") As %Boolean [ ServerOnly = 1 ]
{
}

/// PostHyperEvent handler shared by all ZEN pages.
ClassMethod OnPostHyperEvent(pPageClass As %String) As %Boolean [ ServerOnly = 1 ]
{
}

/// Clean up %variables used by Zen (called when Preserve=1 is in effect).
ClassMethod %Cleanup() [ Internal, ServerOnly = 1 ]
{
}

/// Internal method.<br>
/// For design mode, draw enclosing div element and then draw contents within it for a component.
ClassMethod %DrawComponentHTML(pComponent As %ZEN.Component.component, pStyle As %String = "") [ Final, Internal ]
{
}

/// Internal method.<br>
/// Invokes the %OnAddToPageAfter callback for any components that are interested.
ClassMethod %NotifyComponents() As %Status [ Internal ]
{
}

/// Internal method.<br>
/// This method tests if there are any unmaterialized
/// composite elements on the current page. If any are present
/// they will be materialized (their children are created).
ClassMethod %MaterializeComposites() As %Status
{
}

/// Invoke the OnSubmitForm callback for a form.
ClassMethod %InvokeFormSubmitCallback(pClass As %String, pMethod As %String, pSubmit As %ZEN.Submit) As %Status
{
}

/// For a bound form, invoke the submit handler for the associated
/// DataModel class.
ClassMethod %InvokeFormSubmitHandler(pSubmit As %ZEN.Submit) As %Status
{
}

/// This method is called from the client when it wants to
/// invoke a class method.<br>
/// <var>pPageClass</var> is the class name of the page invoking the method.<br>
/// <var>pClass</var> is the class name.<br>
/// <var>pMethod</var> is the method name.<br>
/// <var>pRetType</var> is the client type of the return type (or "").<br>
/// <var>pHeader</var> is the header section of the serial state.<br>
/// <var>pBody</var> is the body section of the serial state.<br>
/// <var>pSpec</var> is the method signature: "L,L,O" (L = Literal, B = Boolean, O = Object).<br>
/// <var>pArgs</var> is the serialized set of arguments. ($C(4) delimited).<br>
/// <var>pNamespace</var> is the namespace to run in.<br>
ClassMethod InvokeClassMethod(pPageClass As %String, pClass As %String, pMethod As %String, pRetType As %String, pSyncFlag As %Boolean, pHeader As %String, pBody As %String, pSpec As %String = "", pArgs As %String = "", pNamespace As %String = "", pThreadId As %Integer = 0) As %String
{
}

/// This method is called from the client when it wants to
/// invoke an instance method for a component.
/// <var>pPageClass</var> is the class name of the page invoking the method.<br>
/// <var>pObjIndex</var> is the index of *this* object.<br>
/// <var>pMethod</var> is the method name.<br>
/// <var>pRetType</var> is the client type of the return type (or "").<br>
/// <var>pHeader</var> is the header section of the serial state.<br>
/// <var>pBody</var> is the body section of the serial state.<br>
/// <var>pSpec</var> is the method signature: "L,L,O" (L = Literal, B = Boolean, O = Object).<br>
/// <var>pArgs</var> is the serialized set of arguments. ($C(4) delimited).<br>
/// <var>pNamespace</var> is the namespace to run in.<br>
ClassMethod InvokeInstanceMethod(pPageClass As %String, pObjIndex As %Integer, pMethod As %String, pRetType As %String, pSyncFlag As %Boolean, pHeader As %String, pBody As %String, pSpec As %String = "", pArgs As %String = "", pNamespace As %String = "", pThreadId As %Integer = 0)
{
}

/// Takes the serialized state of a set of client components and
/// recreates the set of server-side objects.<br>
/// On return, <var>pObjects</var> is array of objects subscripted by
/// component index.<br>
/// As a side-effect it will set <var>%page</var>.
ClassMethod %DeserializePage(pHeader As %String, pBody As %String, Output pObjects) As %Status
{
}

/// Start capturing changes to objects.
ClassMethod %BeginChangeTracking() As %Integer
{
}

/// Stop capturing changes to objects;
/// Generate JS to sync client to server changes.
/// If <var>pMode</var> is "page" then this is called at page render time.
/// <var>pTrace</var> is provided for diagnostic purposes.
ClassMethod %EndChangeTracking(pMaxIndex As %Integer, pMode As %String = "", pTrace As %String = "")
{
}

/// Change namespace for the context of this page (see the AUTONS parameter)
ClassMethod %ChangeNS(pNS As %String) As %Status
{
}

/// Specify a target namespace for any links we generate
ClassMethod %SetNS(pNS As %String = {$namespace}) As %Status
{
}

/// Internal helper method: convert integer to oref
/// [Previously private]
ClassMethod %GetOREF(orefint As %Integer) As %RegisteredObject
{
}

/// Escape (some) unprintable characters in <var>pString</var>.
ClassMethod %EscapeJS(pString As %String) As %String [ Internal ]
{
}

/// This method begins JS translation of Write commands.
/// Returns a token that should be passed along to %EndJSTranslation
ClassMethod %BeginJSTranslation() As %String
{
}

/// This method ends JS translation of Write commands.
ClassMethod %EndJSTranslation(pToken As %String)
{
}

/// Returns a stack trace, pass pIgnoreTop if you want to skip any stack levels at the top.  If you want the stack from the most recent error or exception, then pass -1 for pIgnoreTop, otherwise $ECODE is cleared and $STACK gives the current stack. This method is not called anywhere, but is available for debugging.
ClassMethod %GetStackTrace(pIgnoreTop As %Integer = 0) As %String
{
}

}
