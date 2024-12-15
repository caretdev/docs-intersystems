/// Editor logic for a Zen Page Studio Document.
Class %ZEN.StudioDocument.ZENPageEditor Extends %ZEN.StudioDocument.AbstractEditor [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

XData Style
{
}

/// Contents of application editor page;
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// DrawHTMLContent
Method DrawHTMLContent(seed As %ZEN.Datatype.string) As %Status
{
}

/// This callback is called after the server-side page
/// object and all of its children are created.<br>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

/// Return the target page loaded within this editor.
ClientMethod getTargetPage() [ Language = javascript ]
{
}

/// User has selected a component in the editor pane.
ClientMethod selectComponent(page, obj, evt) [ Language = javascript ]
{
}

/// Update the inspector with details on the selected component.
ClientMethod updateInspector() [ Language = javascript ]
{
}

ClientMethod getComponentXML(obj) [ Language = javascript ]
{
}

/// User has changed a property value within the Inspector.
ClientMethod onSetProperty(prop, value) [ Language = javascript ]
{
}

ClientMethod onSetDocument(state) [ Language = javascript ]
{
}

/// This client event, if present, is fired when editor is loaded.
ClientMethod onStartEditor() [ Language = javascript ]
{
}

/// This client event, if present, is called when this component is
/// instantiated. This allows for any additional client-side
/// initialization for this object.<br>
/// Note that this <em>must</em> be a client-side method.
ClientMethod onCreate() [ Language = javascript ]
{
}

}
