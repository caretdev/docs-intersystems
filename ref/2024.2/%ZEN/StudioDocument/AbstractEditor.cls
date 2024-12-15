/// Base class for Studio Document editors that use the XEDIT
/// window within Studio.<br>
/// An XEDIT document is a window within Studio with 2 panes: the upper
/// pane contains HTML content, served by a subclass of this class;
/// the lower pane displays an editable XML representation of the data
/// displayed in the upper pane. This XML representation is provided by this
/// class as well.<br>
/// Subclasses of this are used to provide Studio content editors
/// for Abstract documents served by a corresponding subclass of the
/// <class>%ZEN.StudioDocument.AbstractDocument</class> class.
Class %ZEN.StudioDocument.AbstractEditor Extends %ZEN.Component.page [ Abstract, Deprecated, System = 4 ]
{

/// Require %Development:USE for access to subclasses of this page.
Parameter RESOURCE = "%Development:USE";

/// ID of current document.
/// This is provided, as a URL parameter, by the Studio.
Property DocumentID As %ZEN.Datatype.string(ZENURL = "ID");

/// Name of document being edited.
/// This is provided, as a URL parameter, by the Studio.
Property documentName As %ZEN.Datatype.string(ZENURL = "DOC");

/// Indicates that this document is in read only mode.
/// Editors should not set this property; it is set by the Studio.
/// Use the <method>isReadOnly</method> method to observe this.
Property readOnly As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Indicates that this document is modified.
/// Use the <method>isModified</method>,<method>setModified</method>,
/// and <method>clearModified</method> methods
/// to observe and change this.
Property modified As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Current zoom level (as a percentage) of this editor (if applicable).
/// Use the <method>getZoom</method> and <method>setZoom</method>
/// methods to modify and observe this.
Property zoom As %ZEN.Datatype.float [ InitialExpression = 100 ];

/// Internal property.
/// Client-side flag indicating that this editor is ready to process
/// events from the Studio.
Property editorReady As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

XData Style
{
}

/// Contents of editor page.
/// Provided by subclass.
XData Contents
{
}

/// Given a document name, strip off the extension and return the class name.
ClassMethod GetClassName(pName As %String) As %String [ CodeMode = expression ]
{
}

/// This callback is called at the start of the HTML HEAD section of the page.<br>
/// This writes out the JavaScript methods expected by the Studio API.
Method %OnDrawHTMLHead() As %Status
{
}

/// Writes out the JavaScript methods expected by the Studio API.
Method %DrawStudioAPI() As %Status [ Internal ]
{
}

/// This callback is called at the start of the HTML BODY section of the page.<br>
/// This writes out the "result" div expected by the Studio API.
Method %OnDrawHTMLBody() As %Status [ Internal ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client event, if present, is fired when editor is loaded.
ClientMethod onStartEditor() [ Language = javascript ]
{
}

/// Set contents of results div used to pass data to Studio.
ClientMethod setResultsDiv(data) [ Language = javascript ]
{
}

/// Raise a named event for Studio to catch.
ClientMethod raiseEvent(type) [ Language = javascript ]
{
}

/// Raise a 'document' event to Studio.<br>
/// This will set the contents of the XML pane within the Studio edit window,
/// if applicable. <var>state</var> is the text that will be placed within
/// the edit window.
ClientMethod raiseDocument(state) [ Language = javascript ]
{
}

/// Raise an OPENDOC event to Studio.<br>
/// <var>doc</var> is the full name (with extension) of the
/// document for Studio to open.
ClientMethod raiseOpenDocument(doc) [ Language = javascript ]
{
}

/// Raise a SELECT event to Studio.<br>
/// This will update the Studio Inspector.<br>
/// <var>proplist</var> is a list of property values for inspector to show.
/// The first property in the list is the Name of selected item.
/// <var>proplist</var> is an array of objects of the form:<br>
/// proplist[n] = obj;<br>
/// obj.name = 'name of property'<br>
/// obj.type = 'type' (STRING,INTEGER, etc.)<br>
/// obj.value = value<br>
ClientMethod raiseSelect(proplist) [ Language = javascript ]
{
}

/// Notification that the user has changed the XML version of this
/// document.<br>
/// <var>state</var> is the contents of the XML editor pane.
ClientMethod onSetDocument(state) [ Language = javascript ]
{
}

/// Get document with current state of editor
/// (raise event with current document in it)
ClientMethod onGetDocument() [ Abstract, Language = javascript ]
{
}

/// Notification that the user has changed a property using
/// the Inspector.<br>
/// <var>prop</var> is the property name, <var>value</var> is the
/// new value.
ClientMethod onSetProperty(prop, value) [ Abstract, Language = javascript ]
{
}

/// Return the value of a specific property value from the editor.
ClientMethod onGetProperty(prop) [ Abstract, Language = javascript ]
{
}

/// Notification that user has invoked the delete command.
ClientMethod onCmdDelete() [ Abstract, Language = javascript ]
{
}

/// Notification that user has invoked the cut command.
ClientMethod onCmdCut() [ Abstract, Language = javascript ]
{
}

/// Notification that user has invoked the copy command.
ClientMethod onCmdCopy() [ Abstract, Language = javascript ]
{
}

/// Notification that user has invoked the undo command.
ClientMethod onCmdUndo() [ Abstract, Language = javascript ]
{
}

/// Test if undo is possible.
ClientMethod onCanUndo() [ Abstract, Language = javascript ]
{
}

/// Notification that user has invoked the redo command.
ClientMethod onCmdRedo() [ Abstract, Language = javascript ]
{
}

/// Notification that user has invoked the paste command.
ClientMethod onCmdPaste() [ Abstract, Language = javascript ]
{
}

/// Notification that the zoom level of the editor has changed.
ClientMethod onSetZoom() [ Abstract, Language = javascript ]
{
}

/// Notification that Studio has modified the ReadOnly state of the editor.
ClientMethod onSetReadOnly() [ Abstract, Language = javascript ]
{
}

/// Return the ReadOnly state of the editor.
ClientMethod isReadOnly() [ Language = javascript ]
{
}

/// Return the zoom level of the editor.
ClientMethod getZoom() [ Language = javascript ]
{
}

/// Set the zoom level of the editor.
ClientMethod setZoom(zoom) [ Language = javascript ]
{
}

/// Test if the document is modified.
ClientMethod isModified() [ Language = javascript ]
{
}

/// Set the modified flag for this editor.
ClientMethod setModified() [ Language = javascript ]
{
}

/// Clear the modified flag for this editor.
ClientMethod clearModified() [ Language = javascript ]
{
}

}
