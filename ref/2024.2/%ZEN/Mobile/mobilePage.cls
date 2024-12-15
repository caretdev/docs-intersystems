/// This base class provides a standard template for pages on mobile devices
/// implemented using Zen.
Class %ZEN.Mobile.mobilePage Extends %ZEN.Component.page [ Deprecated, LegacyInstanceContext, System = 3 ]
{

Parameter JSINCLUDES = "zenCSLM.js";

/// Set this to the appropriate application class.
Parameter APPLICATION = "%ZEN.Portal.Application";

/// If true, auto-switch namespace to whatever $NAMESPACE is passed in.
Parameter AUTONS As BOOLEAN = 0;

/// Set this to the correct domain.
Parameter DOMAIN = "%Utility";

/// Name of this page.
Parameter PAGENAME = "Standard Mobile Page";

/// Default maximum extent of this page
Parameter DEFAULTEXTENTWIDTH = "device-width";

/// Default maximum extent of this page
Parameter DEFAULTEXTENTHEIGHT = "device-height";

/// Default maximum scale factor
Parameter DEFAULTMAXSCALE = 1.0;

/// Default minimum scale factor
Parameter DEFAULTMINSCALE = 1.0;

/// Default setting for user scaling
Parameter DEFAULTUSERSCALABLE = "no";

/// Default setting for hiding the URL bar on small screens (where possible)
Parameter DEFAULTHIDEURL = 1;

/// Default setting for prevent default processing of page level gestures
Parameter DEFAULTPREVENTGESTURES = 0;

Parameter DEFAULTLAYOUT = "none";

Property extentWidth As %ZEN.Datatype.integer [ InitialExpression = {..#DEFAULTEXTENTWIDTH} ];

Property extentHeight As %ZEN.Datatype.integer [ InitialExpression = {..#DEFAULTEXTENTHEIGHT} ];

Property maxScale As %ZEN.Datatype.integer [ InitialExpression = {..#DEFAULTMAXSCALE} ];

Property minScale As %ZEN.Datatype.integer [ InitialExpression = {..#DEFAULTMINSCALE} ];

Property userScalable As %ZEN.Datatype.string [ InitialExpression = {..#DEFAULTUSERSCALABLE} ];

Property simulatedDeviceWidth As %ZEN.Datatype.integer [ InitialExpression = 480 ];

Property simulatedDeviceHeight As %ZEN.Datatype.integer [ InitialExpression = 320 ];

Property hideURLBar As %ZEN.Datatype.integer [ InitialExpression = {..#DEFAULTHIDEURL} ];

Property preventDefaultGestures As %ZEN.Datatype.integer [ InitialExpression = {..#DEFAULTPREVENTGESTURES} ];

Property bodyScrollTop As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

XData Style
{
}

/// Use soft modals for the portal.
ClassMethod %OnUseSoftModals() As %Boolean [ CodeMode = expression ]
{
}

/// This method is used by the default OnDrawHTMLMeta() callback to generate
/// the contents of the viewport meta tag
Method %GenerateMetaContent() As %String
{
}

/// This callback is called at the start of the HTML HEAD section of the page (just after the title).<br/>
/// It allows a page to write out meta tags, if desired.
/// (default implementation is a simple expression).
Method %OnDrawHTMLMeta() As %Status
{
}

ClientMethod isDesktopBrowser() [ Language = javascript ]
{
}

ClientMethod getNativeWindowWidth() [ Language = javascript ]
{
}

ClientMethod getNativeWindowHeight() [ Language = javascript ]
{
}

ClientMethod getBodyScrollTop() [ Language = javascript ]
{
}

ClientMethod updateMetaSettings() [ Language = javascript ]
{
}

ClientMethod initDeviceInterface() [ Final, Language = javascript ]
{
}

ClientMethod fireOnDeviceMotionEvent(event) [ Final, Language = javascript ]
{
}

/// Client-side method: fire onload event for every component that defines one.
/// This are fired in reverse order, so that the page's handler is called last.
ClientMethod fireOnLoadEvent() [ Final, Language = javascript ]
{
}

ClientMethod fireOnRotateEvent() [ Language = javascript ]
{
}

/// Call the (potentially redefined) ontouchstartHandler for the page and
/// implmenet the preventDefaultGesture logic as needed
ClientMethod fireOnTouchStartEvent(event) [ Language = javascript ]
{
}

/// This method may be redefined to specify custom handling of touch start events
ClientMethod ontouchstartHandler(event) [ Language = javascript ]
{
}

/// This method may be redefined to specify custom handling of touch move events
ClientMethod ontouchmoveHandler(event) [ Language = javascript ]
{
}

/// This method may be redefined to specify custom handling of touch end events
ClientMethod ontouchendHandler(event) [ Language = javascript ]
{
}

/// This method may be redfined to specify custom handling when the orientation
/// of the mobile device changes
ClientMethod onrotateHandler() [ Language = javascript ]
{
}

/// This method may be redefined to specify custom handling of device motion events
ClientMethod ondevicemotionHandler(event) [ Language = javascript ]
{
}

ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

}
