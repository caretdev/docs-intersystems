/// A specialized type of group that can be placed within a desktop group.
/// A drag group displays a header (which can include various buttons).
/// The user can drag the group around within its containing desktop group.
Class %ZEN.Component.dragGroup Extends group [ Deprecated, LegacyInstanceContext, System = 3 ]
{

/// Subclasses can set this to change default layout for a group.
Parameter DEFAULTLAYOUT As STRING = "none";

/// Subclasses can set this to change default css class for a group.
Parameter DEFAULTENCLOSINGCLASS = "dragGroup";

/// Default image for close group button.
Parameter DEFAULTCLOSEIMAGE = "images/grayDragClose.png";

/// Default image for maximize group button.
Parameter DEFAULTMAXIMAGE = "images/grayDragMax.png";

/// Default image for minimize group button.
Parameter DEFAULTMINIMAGE = "images/grayDragMin.png";

/// Default image for contract group button.
Parameter DEFAULTCONTRACTIMAGE = "images/grayDragContract.png";

/// Default image for expand group button.
Parameter DEFAULTEXPANDIMAGE = "images/grayDragExpand.png";

/// Default image for maximize group button.
Parameter DEFAULTRESIZEIMAGE = "images/grayDragResize.png";

/// Default resize icon size in pixels
Parameter DEFAULTRESIZEICONSIZE = 16;

/// Default header layout pattern
Parameter DEFAULTHEADERLAYOUT = "ITFC";

/// onresize event handler:
/// This event is fired when this drag group is resized.
Property onresize As %ZEN.Datatype.eventHandler;

/// onclosepending event handler:
/// This event is fired when the close button of this drag group is pressed.
/// Unlike native browser windows, it is possible to prevent the window
/// closure by calling abortClose() in response to this event.
Property onclosepending As %ZEN.Datatype.eventHandler;

/// onwindowgrab event handler:
/// This event is fired when this drag group is grabbed by the titlebar for relocation.
Property onwindowgrab As %ZEN.Datatype.eventHandler;

/// onwindowdrop event handler:
/// This event is fired when this drag group's title bar is released after a reloaction gesture
Property onwindowdrop As %ZEN.Datatype.eventHandler;

/// Title to display in header section for this group.
Property header As %ZEN.Datatype.caption [ InitialExpression = "Untitled Group" ];

/// URI of image to display for the close group button.
Property imageAppLogo As %ZEN.Datatype.uri;

/// Width (in pixels) of image to display for the close group button.
Property imageAppLogoWidth As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// URI of image to display for the close group button.
Property imageClose As %ZEN.Datatype.uri [ InitialExpression = {..#DEFAULTCLOSEIMAGE} ];

/// URI of image to display for the close group button when mouse is present.
Property imageCloseHover As %ZEN.Datatype.uri;

/// Width (in pixels) of image to display for the close group button.
Property imageCloseWidth As %ZEN.Datatype.integer [ InitialExpression = 16 ];

/// URI of image to display for the minimize group button.
Property imageMinimize As %ZEN.Datatype.uri [ InitialExpression = {..#DEFAULTMINIMAGE} ];

/// URI of image to display for the minimize group button when mouse is present
Property imageMinimizeHover As %ZEN.Datatype.uri;

/// Width (in pixels) of image to display for the minimize group button.
Property imageMinimizeWidth As %ZEN.Datatype.integer [ InitialExpression = 16 ];

/// URI of image to display for the maximize group button.
Property imageMaximize As %ZEN.Datatype.uri [ InitialExpression = {..#DEFAULTMAXIMAGE} ];

/// URI of image to display for the maximize group button when mouse is present.
Property imageMaximizeHover As %ZEN.Datatype.uri;

/// Width (in pixels) of image to display for the maximize group button.
Property imageMaximizeWidth As %ZEN.Datatype.integer [ InitialExpression = 16 ];

/// URI of image to display for the expand group button.
Property imageExpand As %ZEN.Datatype.uri [ InitialExpression = {..#DEFAULTEXPANDIMAGE} ];

/// URI of image to display for the expand group button when mouse is present.
Property imageExpandHover As %ZEN.Datatype.uri;

/// Width (in pixels) of image to display for the expand group button.
Property imageExpandWidth As %ZEN.Datatype.integer [ InitialExpression = 16 ];

/// URI of image to display for the contract group button.
Property imageContract As %ZEN.Datatype.uri [ InitialExpression = {..#DEFAULTCONTRACTIMAGE} ];

/// URI of image to display for the contract group button when mouse is present.
Property imageContractHover As %ZEN.Datatype.uri;

/// Width (in pixels) of image to display for the contract group button.
Property imageContractWidth As %ZEN.Datatype.integer [ InitialExpression = 16 ];

/// URI of image to display for the minimize group button.
Property imageResize As %ZEN.Datatype.uri [ InitialExpression = {..#DEFAULTRESIZEIMAGE} ];

/// Square area in pixels for the resize icon
Property imageResizeSize As %ZEN.Datatype.integer [ InitialExpression = {..#DEFAULTRESIZEICONSIZE} ];

/// If set, this boolean flag indicates that the title section of the header
/// should be centered over the dragGroup
Property centerHeader As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// The header layout pattern determines the order in which control windows are added
/// to the header section of the dragGroup window frame.  This is encoded as a five
/// character string consisting of the following tokens <br>
/// 'I' represents the Iconify button <br>
/// 'T' represents the Title section with both application logo and header caption<br>
/// 'F' represents the Full screen button <br>
/// 'C' represents the Close button <br>
/// 'U' represents the User content div (if desired) <br>
/// This string allows one to restructure the location of the controls with a single
/// call and might be useful if the page designer is trying to match the look and feel
/// of a given operating system.  For example, MS-Windows systems follow the pattern of
/// 'TIFC' whereas MacOS adopts the standard of CIFT with the title centered
/// (cf. centerHeader) The Title section represent something of a breakpoint in the header
/// layout.  Everything prior to the header floats from the left end of the header;
/// Everything after the header, floats from the right end.
Property headerLayout As %ZEN.Datatype.string [ InitialExpression = {..#DEFAULTHEADERLAYOUT} ];

/// If set, the default, this boolean flag allows the drag group to be repositioned by
/// user action within the containing active group area.
Property moveEnabled As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If set, the default, this boolean flag allows the drag group to be resized by
/// user action
Property resizeEnabled As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If used as a child of a snapGroup, this specifies the (initial static) width of the widget
/// in columns
Property colSpan As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// If used as a child of a snapGroup, this specifies the (initial static) height of the widget
/// in rows
Property rowSpan As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// If used as a child of a snapGroup, this specifies the (initial static) row hosting the
/// top of the widget
Property homeRow As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// If used as a child of a snapGroup, this specifies the (initial static) row hosting the
/// left edge of the widget
Property homeCol As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// This sets the minimum width (in pixels) for a dragGroup during resizing.  If used within a
/// snapGrid context, the actual minimum width is set to the next highest even multiple of
/// the snapGrid column width.
Property minWidth As %ZEN.Datatype.integer [ InitialExpression = 96 ];

XData Style
{
}

Method %DrawHTML()
{
}

/// Client-side method to ensure that the controller has an accurate model
/// to work with even if the DOM has been modified externally
ClientMethod onRefreshContents() [ Language = javascript ]
{
}

/// Client-side method to render control.
ClientMethod renderContents() [ Language = javascript ]
{
}

ClientMethod verifyHeaderGeometry() [ Language = javascript ]
{
}

ClientMethod setAppLogo(iconURL, width) [ Language = javascript ]
{
}

ClientMethod setContractIcon(iconURL, width) [ Language = javascript ]
{
}

ClientMethod setExpandIcon(iconURL, width) [ Language = javascript ]
{
}

ClientMethod setMaximizeIcon(iconURL, width) [ Language = javascript ]
{
}

ClientMethod setMinimizeIcon(iconURL, width) [ Language = javascript ]
{
}

ClientMethod setCloseIcon(iconURL, width) [ Language = javascript ]
{
}

ClientMethod setIcon(iconDiv, iconURL, width) [ Language = javascript ]
{
}

ClientMethod setCenterLayout(flag) [ Language = javascript ]
{
}

ClientMethod setHeaderLayout(layout) [ Language = javascript ]
{
}

/// If the object has been moved or resized inside a snapGrid, sync the server-side
/// visible geometry properties with the actual location and extents
ClientMethod syncObject() [ Language = javascript ]
{
}

/// Render the contents of the header section of this component.
ClientMethod renderHeader() [ Language = javascript ]
{
}

ClientMethod animateIcon(who, which) [ Language = javascript ]
{
}

/// Add resize box for this component.
ClientMethod renderResize() [ Language = javascript ]
{
}

/// Enable user resize events for this group
ClientMethod enableResize() [ Language = javascript ]
{
}

/// Disable user resize events for this group
ClientMethod disableResize() [ Language = javascript ]
{
}

/// Enable user drag events for this group
ClientMethod enableDrag() [ Language = javascript ]
{
}

/// Disable user drag events for this group
ClientMethod disableDrag() [ Language = javascript ]
{
}

/// When rendering static windows, enable a click anywhere on the
/// header handle to toggle full screen mode instead of allowing
/// drag operations
ClientMethod enableHeaderMaxToggle() [ Language = javascript ]
{
}

/// Reset the maximize toggle mode set up by enableHeaderMaxToggle
ClientMethod disableHeaderMaxToggle() [ Language = javascript ]
{
}

/// Remove the header entirely and disable resize
ClientMethod removeWindowChrome() [ Language = javascript ]
{
}

/// Restore header and resize controls previously remove by removeWindowChrome
ClientMethod resetWindowChrome() [ Language = javascript ]
{
}

ClientMethod renderCoverplate() [ Language = javascript ]
{
}

/// Return a string that captures the current state of the group's layout
ClientMethod getState() [ Language = javascript ]
{
}

/// Given a previously encoded layout string, restore a group to its
/// previous state
ClientMethod restoreState(str) [ Language = javascript ]
{
}

/// Resize the active group to the given geometry
ClientMethod resize(width, height) [ Language = javascript ]
{
}

/// Restore key layout information about group in after a radical presentation change
ClientMethod restoreGeometry() [ Language = javascript ]
{
}

/// Save key layout information about group in anticipation of a radical presentation change
ClientMethod saveGeometry() [ Language = javascript ]
{
}

/// Utility to adjust the width of the drag header to correctly position
/// the header controls based on the current drag group width
ClientMethod adjustHandleWidth() [ Language = javascript ]
{
}

/// Utility to adjust the location of the resize box to correctly position
/// the control based on the current drag group width
ClientMethod adjustResizeBox() [ Language = javascript ]
{
}

/// Utility to adjust the size of the dragChildren area in the
/// event of a resize action
ClientMethod adjustChildArea() [ Language = javascript ]
{
}

/// Public utility to abort the a window closure in progress
ClientMethod abortClose() [ Language = javascript ]
{
}

/// Callback to close the subwindow
ClientMethod close(event) [ Language = javascript ]
{
}

/// Callback to reduce subwindow to the height of its title bar
ClientMethod compress(event) [ Language = javascript ]
{
}

/// Callback to restore a compressed pane to it miniture display mode
ClientMethod expand(event) [ Language = javascript ]
{
}

/// Callback to switch subwindow into full screen mode
ClientMethod maximize(event) [ Language = javascript ]
{
}

/// Callback to switch a full screen window back down to it previous
/// (iconified or mini-window) mode
ClientMethod normalize(event) [ Language = javascript ]
{
}

/// Launches a callback (if defined) when the drag group is grabbed by
/// the title bar for the purpose of relocation
ClientMethod onGrabHandler() [ Language = javascript ]
{
}

/// Launches a callback (if defined) when the drag group's title bar is released
/// after relocation gesture
ClientMethod onReleaseHandler() [ Language = javascript ]
{
}

/// Returns true if the drag window is currently rendered in
/// maximized mode
ClientMethod isMaximized() [ Language = javascript ]
{
}

/// Returns true if the drag window is currently rendered in
/// header only mode
ClientMethod isCompressed() [ Language = javascript ]
{
}

/// Checks to see if the user is actively in the process of resizing the
/// window
ClientMethod isResizeInProgress() [ Language = javascript ]
{
}

ClientMethod enableCoverplate() [ Language = javascript ]
{
}

ClientMethod disableCoverplate() [ Language = javascript ]
{
}

/// Callback to initiate window resize event
ClientMethod startDrag(engine, wrapper) [ Language = javascript ]
{
}

/// Callback to wrap up window resize event
ClientMethod endDrag(engine, wrapper) [ Language = javascript ]
{
}

/// Callback to limit horizontal resizing
ClientMethod constrainDragX(engine, wrapper, intendedX) [ Language = javascript ]
{
}

/// Callback to limit vertical resizing
ClientMethod constrainDragY(engine, wrapper, intendedY) [ Language = javascript ]
{
}

/// Return the HTML div element reserver for user content in the header of this group.
ClientMethod getHeaderUserDiv() [ Language = javascript ]
{
}

/// Return the HTML div element needed as a cover plate for event management under
/// certain versions of IE
ClientMethod getCoverplateDiv() [ Language = javascript ]
{
}

/// Return the HTML div element that wraps the header of this group.
ClientMethod getHeaderDiv() [ Language = javascript ]
{
}

/// Return the HTML div element that wraps the children of this group.
ClientMethod getChildDiv() [ Language = javascript ]
{
}

/// Return the internal width of the drag window in pixles
ClientMethod getWindowWidth() [ Language = javascript ]
{
}

/// Return the internal height of the drag window in pixles
ClientMethod getWindowHeight() [ Language = javascript ]
{
}

/// Generic method to receive client "broadcast" messages.  Subclasses
/// can override this to extend the broadcast functionality.
ClientMethod processAppMessage(value) [ Language = javascript ]
{
}

ClientMethod applyCSSSettings(div, value) [ Language = javascript ]
{
}

/// Set the CSS styles of the header section of the element.
/// The value passed may take one of three forms:
/// It can be a CSS Snippet in a string "background-color:#0000ff;font-weight:bold;"
/// It can be a JSON string abiding by JavaScript's CSS conventions "{'backgroundColor':'#0000ff', 'fontWeight':'bold' }"
/// Or it can be an actual javascript object {backgroundColor:'#0000ff', fontWeight:'bold'}
ClientMethod setHeaderStyle(value) [ Language = javascript ]
{
}

/// Set the CSS styles of the header section of the element
/// The value passed may take one of three forms:
/// It can be a CSS Snippet in a string "background-color:#0000ff;font-weight:bold;"
/// It can be a JSON string abiding by JavaScript's CSS conventions "{'backgroundColor':'#0000ff', 'fontWeight':'bold' }"
/// Or it can be an actual javascript object {backgroundColor:'#0000ff', fontWeight:'bold'}
ClientMethod setBodyStyle(value) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

ClientMethod onresizeHandler() [ Language = javascript ]
{
}

}
