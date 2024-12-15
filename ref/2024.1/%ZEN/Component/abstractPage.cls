/// Represents a page within a Zen application.
/// This is the base class used for all pages. User pages will
/// extend from the <class>page</class> class, which is a subclass of this.
Class %ZEN.Component.abstractPage Extends (group, %CSP.Page) [ Deprecated, Inheritance = right, PropertyClass = %ZEN.pageParameters, System = 3 ]
{

Parameter SYSMODULE = "core";

Parameter XMLNAME = "page";

/// This is the class name of this application this page belongs to.
/// If not defined, this page does not belong to an application.
Parameter APPLICATION As CLASSNAME;

/// This is a comma-delimited list of system Resources and associated
/// permissions. A user must hold the specified permissions on at least
/// one of the specified resources in order to view this page or
/// invoke any of its server-side methods from the client.<br/>
/// The format of each item in the list should be as follows:<br/>
/// Resource[:Permission] <br/>
/// Permission is optional, and defaults to USE if not supplied. If it
/// is supplied, it should be one of USE, READ or WRITE.
Parameter RESOURCE As STRING;

/// If true, auto-switch namespace to whatever $NAMESPACE is passed in.
Parameter AUTONS As BOOLEAN = 0;

/// If true, then attempt to refresh this page when its session timeout period has expired.
/// This will cause a login page to display if the current session has ended
/// and security is set to require login.
Parameter AUTOLOGOUT As BOOLEAN = 1;

/// If true and AUTOLOGOUT is true then call onhandleAutoLogout 30 seconds
/// prior to AUTOLOGOUT. This allows the page to handle client page modifications
/// while the session is still valid before the page is reloaded.
Parameter CHECKMODIFIEDBEFORELOGOUT As BOOLEAN = 0;

/// If true, then display server statistics (within a comment) at the end of this page.
Parameter SHOWSTATS As BOOLEAN = 1;

/// If defined, this string will be written as attributes within the html element at
/// the top of the page.
Parameter HTMLATTRS As STRING;

/// If true, include the "lang" attribute in the html element with the value of
/// %session.Language. This is in addition to the attributes defined by
/// <parameter>HTMLATTRS</parameter>.
Parameter USESESSIONLANG As BOOLEAN = 0;

/// Optional. This is the display name used for this page.
/// If not provided, the class name is used.
Parameter PAGENAME As STRING;

/// Optional. This is the default value for the page's
/// <property>title</property>.
Parameter PAGETITLE As STRING;

/// If false (the default) disable browser caching of pages.
Parameter CLIENTCACHE As BOOLEAN = 0;

/// If true, draw an HTML Document Type Declaration at the start of this page.
Parameter HTMLDTD As BOOLEAN = 0;

/// If HTMLDTD is true we will look here for the DOCTYPE declaration.
/// Using this option can lead to less optimal behavior in zen library components
/// For legacy purposes this defaults to the original doctype declaration for HTMLDTD
Parameter HTMLDOCTYPE As STRING = "<!DOCTYPE html PUBLIC ""-//W3C//DTD HTML 4.0//EN"">";

/// Experimental parameter.<br/>
/// If true, this page uses inline SVG as opposed to using the embed
/// element. This is only supported for W3C compliant browsers.
Parameter INLINESVG As BOOLEAN = 0;

/// Localization domain
Parameter DOMAIN = "%ZEN";

/// Comma-separated list of additional JS include files for the page.
Parameter JSINCLUDES As STRING;

/// Comma-separated list of additional CSS include files for the page.
/// If this page is using CSS3 then the CSS3INCLUDES parameter is used (if defined).
Parameter CSSINCLUDES As STRING;

/// Comma-separated list of additional CSS3 include files for the page.
/// If this is defined *and* this page is using CSS3, then the CSSINCLUDES parameter is ignored.
/// If this is not defined *and* this page is using CSS3, then the CSSINCLUDES parameter is used.
Parameter CSS3INCLUDES As STRING;

/// Comma-separated list of Zen library modules whose HTML class
/// and style definitions are in pre-generated include files.<br/>
Parameter SYSTEMMODULES As STRING = "ZEN_Component__core,ZEN_Auxiliary";

/// Comma-separated list of User class packages whose HTML class
/// and style definitions are in pre-generated include files.
Parameter USERPACKAGES As STRING;

/// Comma-separated list of User class packages whose SVG class
/// and style definitions are in pre-generated include files.<br/>
/// This is ignored unless <property>useSVG</property> is true.
Parameter USERSVGPACKAGES As STRING;

Parameter DEFAULTWIDTH = "100%";

Parameter DEFAULTHEIGHT = "100%";

Parameter DEFAULTGROUPCLASS = "page";

Parameter DEFAULTLAYOUT = "vertical";

Parameter DEFAULTCELLVALIGN = "top";

/// If true, validate XML Contents using the Zen schema.
Parameter VALIDATEXML As BOOLEAN = 0;

/// If defined, this is the url of the "favorite" (or shortcut) icon to display for this page.<br/>
/// Defining this causes Zen to include a &lt;link rel="shortcut icon" href="<var>FAVORITEICON</var>"&gt; in
/// the head section of the page.<br/>
/// For maximum browser compatibility this should be an .ico file.
Parameter FAVORITEICON As STRING;

/// The id of the &lt;div> element used to display errors encountered in the page definition.
/// The default value is "zenErrorDiv".
Parameter ERRORDIVID As STRING = "zenErrorDiv";

/// Allow pages to have iframes by not setting x-frame-options: same origin.
/// Default set as allowed to prevent backwards incompatibility.
Parameter IFRAMEALLOWED As BOOLEAN = 1;

/// Title of this page.
Property title As %ZEN.Datatype.caption(ZENEXPRESSION = 1) [ InitialExpression = {..#PAGETITLE} ];

/// If true, then drag and drop supported is enabled for this page.<br/>
/// This must be set before the page is initially displayed; it cannot
/// be used to enable or disable drag and drop once the page has been loaded.
Property dragAndDrop As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, then the various JavaScript include files for SVG component are included for this page.<br/>
/// If the page contains one or more <class>svgFrame</class> components, then
/// this flag is automatically set true. Pages only need to set this in the case
/// where the initial page definition does not contain any <class>svgFrame</class> components
/// and SVG components are later created dynamically.<br/>
/// This must be set before the page is initially displayed or it will have no effect.
Property useSVG As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Internal property used to indicate that this page serves
/// inline SVG.
Property inlineSVG As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = {..#INLINESVG}, Internal ];

/// Internal property.<br/>
/// Run-time value that indicates that this page is being used as a
/// popup window.
Property isPopup As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ Internal ];

/// Internal property.<br/>
/// Run-time value that indicates that this page is a popup window in a modal div.
Property isSoftModal As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ Internal ];

/// Internal property.<br/>
/// Run-time value used to remember the index number of the component that should
/// be notified when a popup action is fired.
Property popupParent As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ Internal ];

/// Internal property.<br/>
/// Run-time value that indicates next component index number to use.
Property nextIndex As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// Internal property.<br/>
/// Run-time value used to keep track of last user of modal div element.
Property lastModalIndex As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// Internal property.<br/>
/// Run-time value that indicates that this is a request for
/// rendering this page as an XML document.
Property %xmlOutputMode As %Boolean(XMLPROJECTION = "none") [ Internal ];

/// Internal property.<br/>
/// Set of distinct component classes used on this page,
/// indexed by depth,class name.
/// This get filled in as the components are created.<br/>
/// If an entry is set to true, then it should have its style and js directly
/// injected into the page.<br/>
Property %ComponentClasses As %Boolean(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// Internal property.<br/>
/// csv-list of any SVG component classes used on this page.
/// This get filled in during stylesheet processing.
Property SVGClassList As %String(XMLPROJECTION = "none") [ Internal ];

/// Internal property.<br/>
/// Set of component objects on this page, indexed by internal component number.
/// This get filled in as the components are created.
Property %Components As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// Internal property.<br/>
/// Set of component objects on this page, indexed by component id (if present).
/// This get filled in as the components are created.
Property %ComponentIds As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional, Private ];

/// Internal property.<br/>
/// Set of ids of components that have been removed from this page.
/// This is used to synchronize the client when objects are deleted on the server.
Property %DeletedIds As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// Internal property.<br/>
/// Set of component objects on this page, indexed by
/// component name (if present) and index number (as multiple components
/// may have the same name).<br/>
/// This get filled in as the components are created.<br/>
/// This index is used by form processing.
Property %ComponentNames As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// Internal property.<br/>
/// Set of composite components on this page, indexed by composite oref.
/// This get filled in as the composites are added to this page.
Property %CompositeList As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// Internal property.<br/>
/// Set of components on this page that need to have their %OnAddToPageAfter
/// callback invoked, indexed by component index.
/// This get filled in as the components are added to this page.
Property %NotifyList As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// Internal property.<br/>
/// Set of components on this page that need to have client-side rendering.<br/>
/// This get filled in by components that set their renderFlag property.
Property %RenderList As %ZEN.Component.object(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// Internal property.<br/>
/// Comma-delimited list of user-defined packages that are included by this page.
/// This list is created by combining the USERPACKAGES parameters for the page and the current application.
Property %UserPackageList As %String(XMLPROJECTION = "none") [ Internal ];

/// Internal property.<br/>
/// Comma-delimited list of user-defined packages that are included by this page.
/// This list is created by combining the USERSVGPACKAGES parameters for the page and the current application.
Property UserSVGPackageList As %String(XMLPROJECTION = "none") [ Internal ];

/// This is the interval, in milliseconds, at which timer events are fired in order
/// to check on the status of background tasks started by this page.
Property backgroundTimerInterval As %ZEN.Datatype.integer [ InitialExpression = 1000 ];

/// This flag indicates whether the current Zen page should not sever its connection to its
/// parent window when the page is opened as a popup and the popup window's onbeforeunload
/// event is triggered. The default behaviour (when the flag is 0/false) is to notify the parent
/// window (through window.opener) that the popup is being closed whenever the onbeforeunload event
/// is triggered. If the flag is set to 1/true, then this notification will no longer occur, and
/// the user code is then responsible for two things: <ol>
/// <li>When the popup is closed (or is otherwise determined to need closing), the
/// zenPopupClosed() function attached to the parent window should be invoked if it
/// exists. The function should exist as window.opener.zenPopupClosed() (if called from the
/// popup) or window.zenPopupClosed() (if called from the parent window). This invocation
/// provides the parent window with notification that the popup has in fact been closed.</li>
/// <li>The user code needs to be adjusted to handle the various cases where the popup context,
/// especially the Javascript environment, may be different to the situation where the page has
/// been launched as a popup. In particular, actions such as POSTs or refreshes may either clear
/// the current Javascript context or leave certain references pointing to outdated objects (this
/// last could occur if users maintain independent maps to Zen components).</li></ol>
/// In general, the use of this flag should be used in limited circumstances where popups absolutely
/// must perform multiple actions.
Property zenPersistentPopup As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Internal property<br/>
/// onoverlay event handler:
/// This event is fired when a component with an overlay is clicked on.
/// This is used by page editing tools.
/// This can only be set dynamically and not as part of the xml definition of a page.
Property onoverlay As %ZEN.Datatype.eventHandler(HANDLER = "", XMLPROJECTION = "none") [ Internal ];

/// Internal property<br/>
/// Indicates that the page is in design mode.
Property designMode As %ZEN.Datatype.boolean(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0, Internal ];

/// This property specifies what level of CSS support is used by this page.
/// Currently this can be 2 or 3. This is set by the <method>%OnDetermineCSSLevel</method> method.
/// If the page has a CSS level of 3 or higher, then the &lt;!DOCTYPE html&gt; directive will be served at the top
/// of the web page.<br/>
/// By default, cssLevel is set to 3 for any browser whose user agent includes Mozilla/5.0 or above.
/// You can turn this off by overriding the <method>%OnDetermineCSSLevel</method> for a page or change
/// it globally by setting the ^%ISC.ZEN.cssLevel global to 2.
Property cssLevel As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 2 ];

/// This property specifies whether modal dialogs launched using zenLaunchPopupWindow() should
/// use a soft modal group in a div element instead of a new window. The default value for this property
/// is 1 (as returned from <method>%OnUseSoftModals</method>()). Users should either override the <method>%OnUseSoftModals</method>()
/// method in their pages as needed to control this behaviour, or set the ^%ISC.ZEN.useSoftModals global node to 1 to use modal
/// divs for popups by default or 0 to launch popups in native browser windows.
Property useSoftModals As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = {..%OnUseSoftModals()} ];

/// Default style for Zen pages
XData Style
{
}

/// PreHTTP handler for all Zen pages.
/// Users should not override this method; If you need to be notified
/// use the <method>%OnPreHTTP</method> supplied by Zen.<br/>
/// This dispatched to a common PreHTTP handler
ClassMethod OnPreHTTP() As %Boolean [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Zen page notification of an HTTP request. This method can be overwritten
/// by subclasses.<br/>
/// This is called <em>before</em> the standard Zen pre-HTTP processing occurs.
ClassMethod %OnPreHTTP() As %Boolean [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Event handler which is invoked before a hyperevent method is called on all Zen pages.
/// This dispatched to a common PreHyperEvent handler.<br/>
/// If an application overrides this method, then it <em>must</em> invoke this base implementation
/// code (using ##super).
ClassMethod OnPreHyperEvent(class As %String, method As %String) As %Status [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Event handler which is invoked after a hyperevent method is called on this page.
ClassMethod OnPostHyperEvent() As %Status [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// PostHTTP handler for all Zen pages.
/// Users should not override this method.
/// This dispatched to a common PostHTTP handler
ClassMethod OnPostHTTP() [ ServerOnly = 1 ]
{
}

/// Return Zen Library version.<br/>
/// This is used to make sure that the class library is in
/// sync with the zenutils.js file and any generated js files.
/// This must match the value in the zenutils.js file.
ClassMethod %ZENVersion() As %String [ CodeMode = expression ]
{
}

/// Return whether the current page should use soft modal divs.
/// The default behaviour is to return 1 for the current instance, but users may set the
/// ^%ISC.ZEN.useSoftModals global change this system-wide.
/// In some cases, it may be worth modifying the value of the flag based on
/// the user agent, particularly if users are expected to access the application
/// from mobile devices where new windows behave differently.
ClassMethod %OnUseSoftModals() As %Boolean [ CodeMode = expression ]
{
}

/// Determine the CSS level for this page.
/// Sets the cssLevel property.
Method %DetermineCSSLevel() [ Final, Internal ]
{
}

/// This callback method determines lets a page specify level of CSS support is used by this page.
/// The default is to return "", which indicates that the built-in ZEN CSS level
/// detection is used. A page can override this and return 2 or 3.
Method %OnDetermineCSSLevel() As %Integer [ CodeMode = expression ]
{
}

/// If this method returns true then this page will not inlude JS files
/// for library components. It will, instead, use the files included by its Master page.
/// By default, this tests the value of the URL parameter, $EMBEDDED.
ClassMethod %IsEmbedded() As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Render the contents of this Zen page.
ClassMethod OnPage() As %Status
{
}

/// Note: This is marked as Final. Subclasses can use the
/// <method>%OnCreatePage</method> callback if they need notification
/// on object creation.
Method %OnNew() As %Status [ Final, Private ]
{
}

/// Called by a component to register that it is part of this page.
Method %AddComponent(pComponent As %ZEN.Component.object) As %Status
{
}

/// Called by a component when it is removed from this page.
/// Applications should not call this method directly. If you
/// need to remove a component from a page, use the
/// <method>%RemoveChild</method> of <class>%ZEN.Component.group</class> instead.
Method %RemoveComponent(pComponent As %ZEN.Component.object) As %Status
{
}

/// Internal method.<br/>
/// Take a list of imported classes and add them the ComponentClasses list.
Method %AddImportedComponents(pImportList As %String) As %Status [ Internal ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client event, if present, is fired when a keydown event occurs on the page.
ClientMethod onkeydownHandler(evt) [ Abstract, Language = javascript ]
{
}

/// This client event, if present, is fired when a keyup event occurs on the page.
ClientMethod onkeyupHandler(evt) [ Abstract, Language = javascript ]
{
}

/// This client event, if present, is fired when a component with
/// an overlay is clicked on.<br/>
/// <var>index</var> is index of the component.<br/>
/// This is used by page editing tools.
ClientMethod onoverlayHandler(index) [ Language = javascript ]
{
}

/// This client method, if defined and the AUTOLOGOUT parameter for this
/// page is true, is invoked when the logout timer for this
/// page fires.<br/>
/// If this method return true then the normal page logout behavior will fire.
/// That is, the page will be reloaded causing a login page to appear if the
/// current session has ended.
ClientMethod onlogoutHandler() [ Abstract, Language = javascript ]
{
}

/// Create instance of application object associated with this page.
/// Internal method.<br/>
/// Create an instance of the application object associated with this page.
ClassMethod %CreateApplication(Output pStatus As %Status) As %ZEN.application [ CodeMode = objectgenerator, Final, GenerateAfter = %OnCreateApplication, Internal ]
{
}

/// This callback, if implemented, is invoked when this page is about to create an instance
/// of the <class>%ZEN.application</class> class.<br/>
/// If this method returns a <class>%ZEN.application</class> object, then this
/// object will be used as the application object for the page. If this method returns "", then
/// the application class specified by the APPLICATION parameter will be used.<br/>
/// <var>pApplicationName</var> contains the value of the APPLICATION parameter for the page.<br/>
/// This method should set <var>pStatus</var> to a $$$ERROR code if it fails.
ClassMethod %OnCreateApplication(Output pStatus As %Status, pApplicationName As %String) As %ZEN.application [ Abstract ]
{
}

/// Internal method.<br/>
/// Find additional component class this page depends on (by analyzing
/// the property types of this page).
ClassMethod %GetDependentComponents(pPage As %ZEN.Component.page) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %GetIncludeInfo, Internal ]
{
}

/// Internal method.<br/>
/// Create instance of page object needed to display this page
ClassMethod %CreatePage() As %ZEN.Component.page [ CodeMode = objectgenerator, Final, Internal ]
{
}

/// Return csv-list of links defined by the Contents of this page.
ClassMethod %GetLinks() As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %CreatePage ]
{
}

/// Copy URL parameters supplied to this page into the
/// appropriate properties of this page.
Method %ApplyURLParms() As %Status [ CodeMode = objectgenerator, Final ]
{
}

/// Server-only method for finding a component within this
/// page given its index number.
Method %GetComponent(idx As %Integer) As %ZEN.Component.object [ CodeMode = expression, Final ]
{
}

/// Server-only method for finding a component within this
/// page given its id.
Method %GetComponentById(id As %String) As %ZEN.Component.object [ CodeMode = expression, Final ]
{
}

/// Server-only method for gettting the value of a component's
/// property given the component id and the property name.
/// This is used internally by expression processing.
Method %GetComponentPropertyById(id As %String, prop As %String) As %String [ Final, Internal ]
{
}

/// Server-only method for finding a component within this
/// page given its name.<br/>
/// If multiple components have the same name, returns the first one.
Method %GetComponentByName(pName As %String) As %ZEN.Component.object [ CodeMode = expression, Final ]
{
}

/// Server-side method:
/// Find control on this page with id <var>pID</var> and
/// return its value.
Method %GetValueById(pID As %String) As %String [ Final ]
{
}

/// Server-side method:
/// Find control on this page with id <var>pID</var> and
/// set its value.<br/>
Method %SetValueById(pID As %String, pValue As %String)
{
}

/// Server-side method:
/// Find component on this page with id <var>pID</var> and
/// set its error value.<br/>
/// This is used to associate an error message
/// with a component.
Method %SetErrorById(pID As %String, pError As %String)
{
}

/// Server-side method:
/// Find control on this page with name <var>pName</var> and
/// set its value.<br/>
Method %SetValueByName(pName As %String, pValue As %String)
{
}

/// Server-side method:
/// Given an array of values, subscripted by control name,
/// apply the values to the controls.
Method %SetValuesByName(ByRef pValues As %String)
{
}

/// Server-side method:
/// Find control on this page with name <var>pName</var> and
/// get its value.
Method %GetValueByName(pID As %String) As %String [ Final ]
{
}

/// Server-side method:
/// Find component on this page with name <var>pName</var> and
/// set its error value.<br/>
/// This is used to associate an error message
/// with a component.
Method %SetErrorByName(pName As %String, pError As %String)
{
}

/// Zen-wrapper for <class>%CSP.Page</class> <method>Link</method> method.<br/>
/// Tranforms the link specified by <VAR>link</VAR> into a URL and returns it as a string.
/// <p>The URL may be encrypted.</p>
/// <p>The array, <VAR>query</VAR>, contains an optional set of name-value pairs
/// which are added to the URL.</p>
/// <p>If the optional argument <var>addQ</var> is true, then a ? or &amp;,
/// as appropriate, is added to end of the URL</p>
Method %Link(link As %String, ByRef query As %String, addQ As %Boolean = 0) As %String [ Final, ServerOnly = 1 ]
{
}

/// This class method callback is called just before the server-side page
/// object is created.
ClassMethod %OnBeforeCreatePage() As %Status
{
}

/// This callback is called just after the server-side page
/// object is created but before its children are created.
Method %OnCreatePage() As %Status
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

/// Internal method.<br/>
/// For pages that use panes, this method creates the object tree
/// for a given pane and adds it to the given group element.<br/>
/// Every pane name and pane block is assumed to start with "pane".
ClassMethod %GetPaneContents(pGroup As %ZEN.Component.group, pPaneName As %String, Output pPaneExists As %Boolean) As %Status [ CodeMode = objectgenerator, Internal ]
{
}

/// Draw html contents of this page.
/// If present, this will invoke the user callback methods:
/// <method>%OnDrawHTMLHead</method> and <method>%OnDrawHTMLBody</method>.
Method %DrawHTMLPage(pMobileMode As %Boolean = 0)
{
}

/// If defined, draw out a frameset definition instead of the normal body tags.
Method %DrawFrameSet() As %Boolean [ CodeMode = expression, Private ]
{
}

/// Return string used to include a CSS file
ClassMethod %LinkCSS(pFile As %String) As %String [ CodeMode = expression ]
{
}

/// Return string used to include a script file
ClassMethod %LinkScript(pFile As %String) As %String [ CodeMode = expression ]
{
}

/// Return string used to introduce client-side script code
ClassMethod %StartScript() As %String [ CodeMode = expression ]
{
}

/// Return string used to end client-side script code
ClassMethod %EndScript() As %String [ CodeMode = expression ]
{
}

/// Write out JS API for invoking server-side methods
Method %DrawJSMethodAPI(pMobileMode As %Boolean = 0) [ Final, Internal, Private ]
{
}

/// Write out JS code to set up resource strings.
Method %DrawJSResources() As %Status [ Private ]
{
}

/// Get the list of localized JavaScript resource strings for this page.
Method %GetJSResources(ByRef pResources As %String) As %Status [ Private ]
{
}

/// Pages can implement this callback method in order to define a set of
/// client-side resources: javascript strings that have been localized.<br/>
/// This method should fill in the array <var>pResources</var> with a set of
/// localized strings, indexed by resource id:<br/>
/// <example>
///  Set pResources("MyId") = $$$Text("Some string")
/// </example>
/// Javascript methods can refer to these resources using the helper function zenGetResource:
/// <example language="javascript">
///  alert(zenText('MyId'));
/// </example>
/// Zen defines a set of built-in resource strings using this mechanism. These
/// have a "zen" prefix to keep them seperate from user ids.<br/>
/// You can also override the same callback method within
/// your <class>%ZEN.application</class> class if you wish
/// to share resources across an application. In this case,
/// the application-wide callback is invoked first.
Method %OnGetJSResources(ByRef pResources As %String) As %Status [ CodeMode = expression, Private ]
{
}

/// This callback is called at the start of the HTML HEAD section of the page (just after the title).<br/>
/// It allows a page to write out meta tags, if desired.
/// The default implementation writes out an IE-specific meta tag to ensure that IE 9 and 10 don't fall back
/// into Compatibility Mode when we are returning an HTML5 page (i.e. <property>cssLevel</property> is set to 3).
Method %OnDrawHTMLMeta() As %Status
{
}

/// This callback is called at the end of the HTML HEAD section of the page.<br/>
/// (default implementation is a simple expression).
Method %OnDrawHTMLHead() As %Status [ CodeMode = expression ]
{
}

/// This callback is called at the start of the HTML BODY section of the page.<br/>
/// (default implementation is a simple expression).
Method %OnDrawHTMLBody() As %Status [ CodeMode = expression ]
{
}

/// Write JavaScript to automatically logout out this page
/// when session ends
Method %DrawAutoLogout()
{
}

/// Internal Method.<br/>
/// Draw out in-line client-side style definitions for components on this page.
/// Caller is NOT responsible for drawing enclosing style tags.
Method %DrawStyleDefinitions() [ Final, Internal ]
{
}

/// Draw out client-side class definitions for components on this page.
/// Caller is responsible for drawing enclosing script tags.
Method %DrawClassDefinitions() [ Final ]
{
}

/// Write out client-side object definitions for components on this page.<br/>
/// Caller is responsible for drawing enclosing script tags.
Method %DrawObjectDefinitions() [ Final ]
{
}

/// Client-side method to find a component by user-assigned id value.
/// For components within repeating groups, the optional <var>tuple</var>
/// number indicates the position of this component
/// within the repeating group).
ClientMethod getComponentById(id, tuple) [ Final, Language = javascript ]
{
}

/// Client-side method to find component by component index.
/// <var>index</var> is typically the system-assigned index number of the
/// the component.<br/>
/// For components within repeating groups, <var>index</var> may include
/// a dot followed by a tuple number, (a 1-based number indicated the position of this component
/// within the repeating group).
ClientMethod getComponent(index) [ Final, Language = javascript ]
{
}

/// Change id of given component.
ClientMethod setComponentId(obj, id) [ Final, Language = javascript ]
{
}

/// Client-side method to create a Zen component on the client.
/// <var>name</var> is the name of the component class. (e.g. "text").<br/>
/// Note: this will only create components in the "zen" XML NAMESPACE;
/// Use <method>createComponentNS</method> to create components in other
/// namespaces.<br/>
/// Use this and not the new operator to create ZEN components.
ClientMethod createComponent(name) [ Final, Language = javascript ]
{
}

/// Client-side method to create a Zen component on the client.<br/>
/// <var>ns</var> is the XML namespace of the component
/// (e.g., "http://www.intersystems.com/zendemo").<br/>
/// Note that components within the Zen library use an internal shorthand
/// for namespaces.<br/>
/// <var>name</var> is the name of the component class. (e.g. "text").<br/>
/// Use this and not the new operator to create Zen components.<br/>
/// <var>parent</var>, if provided, is the Zen group to which the newly
/// created component will be added.<br/>
/// <var>div</var>, if provided, is an HTML div element that will become
/// the enclosing div for the newly created component. In this case, the component
/// be rendered by this methd. This feature should only be
/// used by components that can adequately create this div element.
ClientMethod createComponentNS(ns, name, parent, div) [ Final, Language = javascript ]
{
}

/// Client-side method to remove a Zen component from a page on the client.<br/>
/// If <var>refresh</var> is defined and is false,
/// then the page will not be refreshed after the delete. This is useful
/// if you know that subsequent code will cause such a refresh. The default
/// is to refresh.<br/>
/// If <var>sync</var> is defined and is true, the refresh of the group
/// containing the deleted component will be executed synchronously. The default
/// is asynchronous.
ClientMethod deleteComponent(comp, refresh, sync) [ Final, Language = javascript ]
{
}

/// Client-side method: fire onload event for every component that defines one.
/// This are fired in reverse order, so that the page's handler is called last.
ClientMethod fireOnLoadEvent() [ Internal, Language = javascript ]
{
}

/// Client-side method: fire onunload event for every component that defines one.<br/>
/// If any component's onunload handler returns a string value, then that is used as the
/// return value of the HTML page's onbeforeunload handler.
ClientMethod fireOnUnloadEvent() [ Final, Language = javascript ]
{
}

/// Client-side method: fire onresize event for page component.
ClientMethod fireOnResizeEvent() [ Final, Language = javascript ]
{
}

/// This callback is called when a form on this page is submitted.
/// <var>pSubmit</var> is a <class>%ZEN.Submit</class> object
/// containing details of the form submit.<br/>
/// Subclasses override this method.
ClassMethod %OnSubmit(pSubmit As %ZEN.Submit) As %Status
{
}

/// Server-side utility method:
/// Return display name of this page.
ClassMethod %GetPageName() As %String [ CodeMode = expression, Final ]
{
}

/// Open a popup window with given url <var>url</var> and page name <var>pageName</var>.<br/>
/// <var>features</var> is optional list of window features.
/// If <var>features</var> does not include top,left,width, or height, defaults will be provided.<br/>
/// <var>parms</var>, if provided, is a JavaScript object whose properties are used to supply URL parameters
/// for the popup window.<br/>
/// <var>parent</var>, if provided, is the Zen component that will be notified when the popup
/// action fires (by calling its <method>onPopupAction</method> method).
ClientMethod launchPopupWindow(url, pageName, features, parms, parent) [ Language = javascript ]
{
}

/// Internal method.<br/>
/// This does the actual work of dispatching an action sent by a
/// popup window.
/// <var>parent</var> is the component index of the component that
/// should be notified (or '').
ClientMethod popupActionHandler(parent, name, action, value) [ Final, Language = javascript ]
{
}

/// This client method will notify the parent window of this popup that
/// a user action has ocurred. If <var>action</var> is not specified, then 'ok' is
/// used as the action code. <var>value</var> is passed to the parent window as well.<br/>
/// If <var>close</var> is true (the default), then the popup window is closed after
/// notifying the parent window.<br/>
/// It is only valid to call this method on a page that has been
/// launched as a popup window.
ClientMethod firePopupAction(action, value, close) [ Final, Language = javascript ]
{
}

/// Helper method to get a reference to the window that launched this window.
/// The helper is required to handle cases where this window has been opened as a soft modal.
ClientMethod getOpener() [ Language = javascript ]
{
}

/// This client method will cancel a popup page (i.e. close the window with
/// no additional action).<br/>
/// It is only valid to call this method on a page that has been
/// launched as a popup window.
ClientMethod cancelPopup() [ Final, Language = javascript ]
{
}

/// Correct for an embedded object layering bug that has persisted in IE since the invention
/// of the embed tag.  The symptom of this bug is the inability of a pop-up to obscure part
/// or all of an SVG element.  This routine should be called on the enclosing div of the
/// popped-up component (or zenModalDiv if using a standard pop-up) IMMEDIATELY AFTER the div
/// has been made visible
ClientMethod correctIELayering(div) [ Language = javascript ]
{
}

/// Make the given component modal; That is all events outside of this
/// component are captured.
/// Also invokes the onStartModal callback for the component. By default,
/// this makes the component visible, but it could be overrided by a component.
ClientMethod startModal(component) [ Final, Language = javascript ]
{
}

/// End the current modal component; restore previous modal item
/// or, if none, restore normal window behavior.
ClientMethod endModal() [ Final, Language = javascript ]
{
}

/// Used by utility methods to report a different target page object.
ClientMethod getTargetPage() [ Abstract, Internal, Language = javascript ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Abstract, Language = javascript ]
{
}

/// This client event, if present, is fired when the page
/// is first loaded or whenever it is resized.<br/>
/// If this is called at load time, then <var>load</var> will
/// be true.
ClientMethod onlayoutHandler(load) [ Abstract, Language = javascript ]
{
}

/// Set the location of the browser to a new url.
/// Use this function to navigate to new pages within JavaScript
/// to ensure that urls are encoded correctly. Please note this
/// does not allow usage of Private pages. To make those links you
/// must make a round trip to the Server and call ..Link()
ClientMethod gotoPage(url) [ Final, Language = javascript ]
{
}

/// This client method lets you turn the various client-side
/// tracing flags on or off.<br/>
/// <var>name</var> is the name of the tracing option:<br/>
/// 'events' -- trace client events.<br/>
/// 'js' -- display JavaScript returned from server.<br/>
/// 'serialize' -- display object serializations.<br/>
/// <var>flag</var> is a boolean value that specifies whether the
/// option should be on or off.
ClientMethod setTraceOption(name, flag) [ Final, Language = javascript ]
{
}

/// Start a background job to run a class method of this page.<br/>
/// <var>pMethod</var> is the name of the method to run.<br/>
/// <var>args</var> is a variable number of arguments that are passed
/// on to the background method.<br/>
/// Only one background task is monitored at a time.
/// If this method is called while a previous background task is running,
/// the new method will become the current monitored task (the previous task
/// will run to completion, but the client will not be notified).
ClassMethod %RunBackgroundMethod(pMethod As %String, args...) As %Status [ Final ]
{
}

/// This method is called by a method running in the background to update
/// its status information (see <method>%RunBackgroundMethod</method>).
/// <var>pStatus</var> is the status message (which will be seen by the
/// client page).<br/>
/// <var>pPercentComplete</var> is an optional value indicating the how
/// much of the background task is complete (as a percentage between 0 and 100).
/// A client page may use this information to display progress to the user.
ClassMethod %SetBackgroundMethodStatus(pStatus As %String = "", pPercentComplete As %Float = 0) [ Final ]
{
}

/// This method is called by a method running in the background when it is
/// finished in order to delete its status information
/// (see <method>%RunBackgroundMethod</method>).
ClassMethod %EndBackgroundMethod() [ Final ]
{
}

/// Internal method.<br/>
/// This method is called from the server when a background task is started.
ClientMethod setBackgroundTask(taskid) [ Final, Internal, Language = javascript ]
{
}

/// Internal method.<br/>
/// This method is called from the server when
/// the current background task is no longer running.
ClientMethod clearBackgroundTask() [ Final, Internal, Language = javascript ]
{
}

/// Internal method.<br/>
/// This is called by the background task timer to check on background
/// tasks.
ClientMethod backgroundTimerHandler() [ Final, Internal, Language = javascript ]
{
}

/// Internal method.<br/>
/// This is called by the client's background task timer to check on background
/// tasks.
ClassMethod MonitorBackgroundTask(pTaskID As %String) [ Final, Internal, ZenMethod ]
{
}

/// This server-side callback method is called whenever the client
/// calls to monitor the current background task.
/// Typically a subclass uses this to send back JavaScript to update
/// a progress bar.
ClassMethod %OnMonitorBackgroundTask(pTaskID As %String, pStatus As %String, pPercentComplete As %Float)
{
}

/// This server-side callback method is called whenever the client
/// calls to monitor the current background task and the task is complete.
/// Typically a subclass uses this to send back JavaScript to update
/// the page.
ClassMethod %OnFinishBackgroundTask(pTaskID As %String)
{
}

/// If implemented, this method is called whenever
/// a server method call returns an error from the server.<br/>
/// <var>err</var> is the error message.
/// <var>errObject</var> is an object of type cspHyperEventError which has the following properties:
/// <ul><li>code - HTTP response code for the error, most likely 500 to indicate a server error, except
/// when the user is no longer logged in, in which case it should be 401.</li>
/// <li>text - HTTP error message corresponding to the HTTP code</li>
/// <li>serverCode - the server side error status code, which may be null</li>
/// <li>serverText - the server side error text</li>
/// <li>exception - the Javascript exception which triggered the problem</li>
/// <li>arguments - the arguments to the function where the exception was caught</li></ul>
ClientMethod onServerMethodError(err, errObject) [ Abstract, Language = javascript ]
{
}

/// If implemented, this method is called just
/// before a server method is invoked.<br/>
/// <var>method</var> is the name of the method invoked.
ClientMethod onServerMethodCall(method) [ Abstract, Language = javascript ]
{
}

/// If implemented, this method is called just
/// after a server method is processed.<br/>
/// <var>method</var> is the name of the method invoked.
ClientMethod onServerMethodReturn(method) [ Abstract, Language = javascript ]
{
}

/// Called by the client when it needs to dynamically load component
/// meta data. Applications should not call this directly.
ClassMethod LoadZenComponent(pNamespace As %String, pName As %String, pClassName As %String = "", pCSSLevel As %Integer = 2) As %Boolean [ Final, Internal, ZenMethod ]
{
}

/// Process a client request to invoke a server class method.
/// Applications should not call this directly.
ClassMethod InvokeClassMethod(pClass As %String, pMethod As %String, pRetType As %String, pSyncFlag As %Boolean, pHeader As %String, pBody As %String, pSpec As %String = "", pArgs As %String = "", pNamespace As %String = "", pThreadId As %Integer = 0) As %String [ Final, Internal ]
{
}

/// Process a client request to invoke a server instance method.
/// Applications should not call this directly.
ClassMethod InvokeInstanceMethod(pObjIndex As %Integer, pMethod As %String, pRetType As %String, pSyncFlag As %Boolean, pHeader As %String, pBody As %String, pSpec As %String = "", pArgs As %String = "", pNamespace As %String = "", pThreadId As %Integer = 0) As %String [ Final, Internal ]
{
}

/// Wrapper method for %ZEN.Utils.%JavaInstalled()
/// Returns a true if Java is installed
ClassMethod JavaInstalled() As %Boolean [ ZenMethod ]
{
}

/// Handle client page modifications while the session is still valid before the page is reloaded.
/// The auto reminder timer is reset after each server side call.
/// It is not reset after firing.
ClientMethod onhandleAutoLogoutWarn() [ Language = javascript ]
{
}

}
