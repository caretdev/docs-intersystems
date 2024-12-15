/// This class is kept to provide an interface to the <class>%Studio.Extension.Base</class> class
/// which provides the general Studio extension interface.<p>
/// Subclass from this and implement the methods you need for your source control system.
Class %Studio.SourceControl.Base Extends %Studio.Extension.Base [ System = 4 ]
{

XData Menu
{
}

/// Used to control which dialogs appear in Studio. If the position is '1'
/// then this dialog will appear and if it is '0' the <method>UserAction</method>
/// will be called to determine what to do. This is included for backward compatibilty.
/// The flags are:<ul>
/// <li>1 : Present dialog on check in</li>
/// <li>2 : Present dialog on check out</li>
/// <li>3 : Ask to add new item to source control</li>
/// <li>4 : Ask to remove deleted item from source control</li></ul>
Parameter Flags As STRING = 1111;

/// Check this routine/class/csp file into source control.
Method CheckIn(InternalName As %String, Description As %String = "") As %Status
{
}

/// Check this routine/class/csp file out of source control.
Method CheckOut(InternalName As %String, Description As %String = "") As %Status
{
}

/// Undo the checkout of this item.
Method UndoCheckout(InternalName As %String) As %Status
{
}

/// Called to add this item to source control.
Method AddToSourceControl(InternalName As %String, Description As %String = "") As %Status
{
}

/// Called to delete this item from source control.
Method RemoveFromSourceControl(InternalName As %String, Description As %String = "") As %Status
{
}

/// Get the latest version of this file from source control.
Method GetLatest(InternalName As %String) As %Status
{
}

Method UserAction(Type As %Integer, Name As %String, InternalName As %String, SelectedText As %String, ByRef Action As %String, ByRef Target As %String, ByRef Msg As %String, ByRef Reload As %Boolean) As %Status
{
}

Method AfterUserAction(Type As %Integer, Name As %String, InternalName As %String, Answer As %Integer, Msg As %String = "", ByRef Reload As %Boolean) As %Status
{
}

Method OnMenuItem(MenuName As %String, InternalName As %String, SelectedText As %String, ByRef Enabled As %Boolean, ByRef DisplayName As %String) As %Status
{
}

/// Callback invoked when the portal-based Source Control hooks instantiate the source control class.
/// Operations that occur in this callback should be lightweight as the source control class needs to
/// be instantiated afresh every time a source control action is performed.
Method OnPortalCreate(pUserData As %ZEN.proxyObject = "") As %Status [ CodeMode = objectgenerator ]
{
}

/// API to give developers control over the HTML environment. Used when viewing a source control popup
/// for the URL in <var>pPageURL</var> from the portal. Developers can specify the following keys in <var>pOptions</var>:
/// <ul><li>IECompatibility - set <code>pOptions("IECompatibility")</code> to 1 to permit IE compatibility
/// mode when rendering the URL. The default behaviour is to force IE to use its most recent rendering engine.</li>
/// <li>CSSLevel - set <code>pOptions("CSSLevel")</code> to 2 to force HTML 4 output, or 3 to force HTML 5 output.
/// The default behaviour is to use HTML5 output when the browser can support it. Note that the values follow the
/// semantics for the %OnDetermineCSSLevel() callback implemented in <class>%ZEN.Component.abstractPage</class>.</li></ul>
ClassMethod GetPortalPageOptions(pPageURL As %String = "", Output pOptions As %String)
{
}

}
