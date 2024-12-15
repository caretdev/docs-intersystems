/// The navigator component creates a combination navigation and simple settings
/// interface similar to that found on mobile devices.<br/>
/// This is an HTML5 component; it will only work correctly on HTML5 compliant browsers.
///
Class %ZEN.Component.navigator Extends %ZEN.Component.group [ Deprecated, System = 3 ]
{

/// Localization domain
Parameter DOMAIN = "%ZEN";

Parameter DEFAULTENCLOSINGCLASS = "navWrapper";

/// ongetcontent event handler:
/// This defines the client-side code that defines
/// the content of a "sheet" within this component.<br/>
/// This is passed <var>level</level>, <var>key</var>, and <var>value</var> as arguments.
/// This code should return an object with any of the following properties:<br/>
/// <var>title</var>-the title to display for the sheet.<br/>
/// <var>url</var>-if defined, the url to display as an iframe within the sheet (in the same domain).<br/>
/// <var>html</var>-custom html to display within the sheet.<br/>
/// <var>childIndex</var>-index number (0-based) of child of this component to display.<br/>
/// <var>items</var>-array of javascript objects used to define the contents.<br/>
Property ongetcontent As %ZEN.Datatype.eventHandler;

/// onchange event handler:
/// Notification that a control within the property sheet has changed value.
/// This event is passed 3 arguments: <var>key</var>, <var>value</var>, and <var>final</var>.
/// <var>final</var> is true when a value is finished changing (such as when the user stops
/// pressing a stepper button).
Property onchange As %ZEN.Datatype.eventHandler;

/// onarrange event handler:
/// Notification that the order of items in the current sheet has changed.
/// This event is passed 3 arguments: <var>key</var>, <var>swap</var>, and <var>final</var>.
/// <var>final</var> is true when a value is finished changing.
/// <var>swap</var> is an object with the property index and newIndex, containg the index of the
/// item to move and its new location.
Property onarrange As %ZEN.Datatype.eventHandler;

/// onindent event handler:
/// Notification that the indentation level of an item in the current sheet has changed.
/// This event is passed 3 arguments: <var>key</var>, <var>list</var>, and <var>final</var>.
/// <var>final</var> is true when a value is finished changing.
/// <var>list is a an array containing the new ordinal positions of the items.
Property onindent As %ZEN.Datatype.eventHandler;

/// onselect event handler:
/// Notification that a new choice has been selected within the property sheet.
/// This is also called when a "drill" item is selected.
/// This event is passed 3 arguments: <var>key</var>, <var>value</var>, and <var>which</var>.
/// <var>which</var> is "select" or "drill".
Property onselect As %ZEN.Datatype.eventHandler;

/// onexpand event handler:
/// Notification that the user has expanded or contracted this component.
Property onexpand As %ZEN.Datatype.eventHandler;

/// onbuttonclick event handler:
/// Notification that the user has clicked on a "header" or "footer" button.
Property onbuttonclick As %ZEN.Datatype.eventHandler;

/// onclosebuttonclick event handler:
/// Notification that the user has clicked on an "close" button for an item.
Property onclosebuttonclick As %ZEN.Datatype.eventHandler;

/// onpopupaction event handler:
/// Notification that the user has invoked and applied a popup for an item.
Property onpopupaction As %ZEN.Datatype.eventHandler;

/// Indicates how many levels deep the navigator is scrolled.
Property currLevel As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0 ];

/// Width of columns (in pixels).
/// Keep at 320 for best results.
Property columnWidth As %ZEN.Datatype.integer [ InitialExpression = 320 ];

/// Height of header (in pixels).
/// Keep at 40 for best results.
Property headerHeight As %ZEN.Datatype.integer [ InitialExpression = 40 ];

/// Height of footer (in pixels). Set to 0 for no footer.
/// Set to 40 to show footer with best results.
Property footerHeight As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// If true, show the disclosure bar on the left.
Property showDisclosure As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Width of the disclosure bar on the left.
Property disclosureWidth As %ZEN.Datatype.integer [ InitialExpression = 24 ];

/// If true, show slider values next to the control
Property showSliderValue As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, then show the navigator; otherwise it is contracted.
Property expanded As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Current color set.
Property currColorSet As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = "deepsee" ];

/// Logical names of color sets.
Property colorSetNames As list Of %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0);

/// Captions of color sets.
Property colorSetCaptions As list Of %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0);

/// List of ;-delimited color set values for drop down.
Property colorSets As list Of %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0);

/// Style to apply to navigator background.
Property backgroundStyle As %ZEN.Datatype.style;

/// Pass current language to client.
Property language As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// Warning tooltip message for delete options
Property deleteThisItemMsg As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Delete this item","%ZEN")} ];

/// Warning tooltip message for open options
Property openThisItemMsg As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Open this item","%ZEN")} ];

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// The default list of fonts available may be extended by editing the global
/// ^zenNavigator.UserFontListCSV.  This is a flat string holding the names of
/// desired fonts, separated by commas (i.e. "Palatino Linotype,Tahoma")  Names
/// are case sentitive and subject to substitution if the named font is not found
/// on the run time system.  This function passes the value of the global to the
/// client side renderer.
ClassMethod GetUserFontList() As %ZEN.Datatype.string [ ZenMethod ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Slide a new item onto the stack and render it (with animation).
/// <var>item</var> is an object describing the new sheet to display.
ClientMethod slideInto(item) [ Language = javascript ]
{
}

/// Slide top item off of the stack and re-render (with animation).
ClientMethod slideOutOf() [ Language = javascript ]
{
}

/// Push a new item onto the stack.
ClientMethod pushSheet(itemSpec) [ Language = javascript ]
{
}

/// Pop the top sheet (html div) off of the stack and render it.
/// Return the current stack level.
ClientMethod popSheet() [ Language = javascript ]
{
}

/// Refresh the contents of the current top sheet.
ClientMethod refreshTopSheet() [ Language = javascript ]
{
}

/// Return the HTML content for the given level.
/// <var>itemSpec</var> is the spec object for the parent of the current level.
/// It is null for the top-most level.
ClientMethod getLevelContent(level, itemSpec) [ Language = javascript ]
{
}

/// Refresh the contents of the property sheet.
/// If <var>reset</var> is true, unhighlight and unscroll the contents.
ClientMethod update(reset) [ Language = javascript ]
{
}

/// Refresh the contents of the master panel.
ClientMethod updateMasterPanel(showExtra) [ Language = javascript ]
{
}

/// Draw contents of the property sheet.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Get the HTML contents of the master panel tray.
ClientMethod getMasterContent(showExtra) [ Language = javascript ]
{
}

/// Get HTML for the navigator bar (header for master panel).
ClientMethod getNavHeaderHTML(level) [ Language = javascript ]
{
}

/// Get HTML for the footer bar.
ClientMethod getNavFooterHTML(level) [ Language = javascript ]
{
}

/// Return HTML for one item.
ClientMethod getHTMLForItem(index, item, active) [ Language = javascript ]
{
}

/// Return HTML for the contents of an item.
/// This draw the various cells and controls within a sheet.
ClientMethod getItemContent(index, item, active) [ Language = javascript ]
{
}

/// Find a font-size so the given text will fit in the given space.
ClientMethod findTextSize(text, cls, style, width, newCaption) [ Internal, Language = javascript ]
{
}

/// Click handler for header (or footer) button.
ClientMethod headerButtonClickHandler(key, level) [ Language = javascript ]
{
}

/// Click handler for close button.
ClientMethod closeButtonClickHandler(evt, key) [ Language = javascript ]
{
}

/// Click handler for popup button.
ClientMethod popupButtonClickHandler(evt, key, url) [ Language = javascript ]
{
}

/// This client event, if present, is fired when a popup page has specified
/// this component as its parent and fires an action.<br>
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// Start of item drag.
/// This can either be a "move" or a "indent" operation.
ClientMethod itemDragHandleMouseDown(evt, level, index, key) [ Internal, Language = javascript ]
{
}

/// Arrange the divs in the item list using the order list.
ClientMethod getGhostHTML(itemList, orderList, newIndex) [ Internal, Language = javascript ]
{
}

/// Mouse up handler for item drag (connected to window).
ClientMethod itemDragMouseUp(evt) [ Internal, Language = javascript ]
{
}

/// Mouse move handler for item drag (connected to window).
ClientMethod itemDragMouseMove(evt) [ Internal, Language = javascript ]
{
}

/// Click handler for item in sheet.
ClientMethod clickHandler(evt, index, forceDrill) [ Language = javascript ]
{
}

/// Return the item with the given index (and optional level).
ClientMethod findItemByIndex(index, level) [ Language = javascript ]
{
}

/// Start editing within the item with the given index.
ClientMethod startEdit(index) [ Language = javascript ]
{
}

/// Stop editing within the item with the given index.
ClientMethod stopEdit(index, cancel) [ Language = javascript ]
{
}

/// Select the item with the given index.
ClientMethod selectItem(index, forceDrill) [ Language = javascript ]
{
}

/// Apply the value <var>value</var> and display value <var>display</var> to the current item.
/// <var>display</var> is not passed to the callback. You can get it via the
/// <var>currDisplayValue</var> property of this component.<br/>
/// If <var>pop</var> is true, pop the current frame on the navigator.
ClientMethod applyValue(value, display, pop) [ Language = javascript ]
{
}

ClientMethod collectValue(value, final) [ Language = javascript ]
{
}

ClientMethod clearValue() [ Language = javascript ]
{
}

/// Do a trial application of the value <var>value</var> to the current item.
/// This is used by mouse-over on certain controls.
ClientMethod tryValue(value, tryLevel) [ Language = javascript ]
{
}

/// Return the spec object for the current frame.
ClientMethod getCurrSpec() [ Language = javascript ]
{
}

/// Return the spec object for the parent of the current frame.
ClientMethod getParentSpec() [ Language = javascript ]
{
}

/// Find the div element for the given item level and index.
ClientMethod getItemDiv(level, index) [ Language = javascript ]
{
}

/// Give focus to the current input control.
ClientMethod giveFocusToControl() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Return HTML for a value editor.
/// This draws an edit control within an item.
ClientMethod getHTMLForEditor(index, item, active, disabled) [ Language = javascript ]
{
}

/// Toggle value of switch control.
ClientMethod toggleSwitch(index) [ Language = javascript ]
{
}

/// Mouse down on stepper control.
ClientMethod stepperMouseDown(which, index) [ Language = javascript ]
{
}

/// Apply stepper action
ClientMethod stepperAction(which, index, delay) [ Language = javascript ]
{
}

/// Mouse up on stepper control.
ClientMethod stepperMouseUp(which, index) [ Language = javascript ]
{
}

/// Apply button for edit control.
ClientMethod editControlApply(evt, index) [ Language = javascript ]
{
}

/// Cancel button for edit control.
ClientMethod editControlCancel(evt, index) [ Language = javascript ]
{
}

/// Key press handler for edit control.
ClientMethod editKeyPressHandler(evt, index) [ Language = javascript ]
{
}

/// Key up handler for edit control.
ClientMethod editKeyUpHandler(evt, index) [ Language = javascript ]
{
}

/// Mouse click on edit control.
ClientMethod editClick(evt, index) [ Language = javascript ]
{
}

/// Mouse click handler for choice control.
/// <var>multi</var> is true for choice-multi.
ClientMethod choiceClick(evt, multi, index, choiceNo, newValue) [ Language = javascript ]
{
}

/// Notification that the user has entered an explicit value in the value text box.
ClientMethod sliderValueChange(event, index) [ Language = javascript ]
{
}

/// Notification that a slider has moved.
/// <var>newValue</var> is the new value.
ClientMethod sliderChanged(index, newValue, final) [ Language = javascript ]
{
}

/// Raise the onchange event for this navigator.
/// This is used by custom content.
ClientMethod raiseChange(key, value, final) [ Language = javascript ]
{
}

/// Click on slider toggle checkbox.
ClientMethod sliderToggleClick(evt, index) [ Language = javascript ]
{
}

/// TouchStart down handler for slider control.
ClientMethod sliderTouchStart(evt, index) [ Language = javascript ]
{
}

/// Touch end handler for slider control (connected to window).
ClientMethod sliderTouchEnd(evt) [ Language = javascript ]
{
}

/// Touch move handler for slider control.
ClientMethod sliderTouchMove(evt) [ Language = javascript ]
{
}

/// Mouse down handler for slider control.
ClientMethod sliderMouseDown(evt, index) [ Language = javascript ]
{
}

/// Mouse up handler for slider control (connected to window).
ClientMethod sliderMouseUp(evt) [ Language = javascript ]
{
}

/// Mouse move handler for slider control (connected to window).
ClientMethod sliderMouseMove(evt) [ Language = javascript ]
{
}

/// Reveal the iframe component.
ClientMethod revealFrame(frame) [ Internal, Language = javascript ]
{
}

/// Display a message for this form.
ClientMethod showMessage(msg) [ Language = javascript ]
{
}

/// Hide the message for this form.
ClientMethod hideMessage() [ Language = javascript ]
{
}

/// Start "wait" state.
ClientMethod beginWait() [ Language = javascript ]
{
}

/// End "wait" state .
ClientMethod endWait() [ Language = javascript ]
{
}

/// Show the given content in the overlay.
ClientMethod showOverlay(content) [ Language = javascript ]
{
}

/// Hide the overlay.
ClientMethod hideOverlay() [ Language = javascript ]
{
}

/// Expand or contract the display of this component.
ClientMethod toggleExpanded() [ Language = javascript ]
{
}

/// Expand or contract the display of this component.
ClientMethod setExpanded(flag) [ Language = javascript ]
{
}

/// Fire the onexpand event handler.
ClientMethod expandHandler() [ Language = javascript ]
{
}

/// Get the expected width of this component in pixels.
ClientMethod getWidth() [ Language = javascript ]
{
}

/// Set the column width (pixels) of this component.
ClientMethod setWidth(width) [ Language = javascript ]
{
}

/// Set the height (pixels) of this component.
ClientMethod setHeight(height) [ Language = javascript ]
{
}

/// Utility method. Split a css value into individual style values.
/// Return an object containing these values.
/// In addition to normal css attributes, the special attributes:
/// "bold", "displayed","italic","underline", "smallCaps", and "shadow" are returned.
ClientMethod parseStyle(style) [ Language = javascript ]
{
}

/// Utility method. Split an SVG css value into individual style values.
/// Return an object containing these values.
ClientMethod parseStyleSVG(style) [ Language = javascript ]
{
}

/// Convert an object containing css values as name-values into a css string.
/// This is used for SVG styles.
ClientMethod convertCSSToText(result) [ Language = javascript ]
{
}

/// Utility method. Set a specific css value into the given style string.
ClientMethod setStyleIntoCSS(cssText, style, value) [ Language = javascript ]
{
}

/// Utility method.
/// Display a set of choices as icons.
/// Given a list of objects, of the form:
/// [{image:url, caption:caption, value:value, style:style}]<br/>
/// <var>key</var> and <var>value</var> are the key and value for item within the navigator.
/// Return HTML to display a chooser list based on the given values.
ClientMethod getIconListHTML(list, key, value) [ Language = javascript ]
{
}

/// Utility method.
/// Display a set of choices as icons.
/// Given a list of objects, of the form:
/// [{image:url, caption:caption, value:value, style:style}]<br/>
/// <var>key</var> and <var>value</var> are the key and value for item within the navigator.
/// Return HTML to display a multi-select supporting chooser
ClientMethod getMultiSelectIconListHTML(list, key, value) [ Language = javascript ]
{
}

/// Utility method.
/// Given a list of objects, of the form:
/// [{caption:caption, value:value, style:style}]<br/>
/// <var>key</var> and <var>value</var> are the key and value for item within the navigator.
/// Return HTML to display a chooser list based on the given values.
/// If <var>caption</var> and <var>help</var> are defined, display them at the top.
ClientMethod getChooserListHTML(list, key, value, caption, help) [ Language = javascript ]
{
}

/// Utility method.
/// Return the HTML for a font chooser panel.
/// <var>key</var> and <var>value</var> are the key and value for item within the navigator.
ClientMethod getFontChooserHTML(key, value) [ Language = javascript ]
{
}

/// Return the HTML for a color chooser panel.
/// <var>key</var> and <var>value</var> are the key and value for item within the navigator.
/// <var>mode</mode> is "html" or "svg".
ClientMethod getColorChooserHTML(key, value, mode) [ Language = javascript ]
{
}

/// Change the displayed color set.
ClientMethod colorSetChange(value) [ Language = javascript ]
{
}

/// Return a HTML for the table of color choices for the current color set.
ClientMethod getColorTableHTML(mode, value) [ Language = javascript ]
{
}

/// Return an array of (arrays of) the current color set.
ClientMethod getColorSet(mode) [ Language = javascript ]
{
}

ClientMethod customColorChange(which) [ Language = javascript ]
{
}

/// Some charts may have use SVG colors. This is a crude translator.
ClientMethod transformColor(color) [ Language = javascript ]
{
}

}
