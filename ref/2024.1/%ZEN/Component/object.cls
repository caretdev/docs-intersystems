///  Base class for all ZEN components.
///  An object, by itself, can be used to create objects that can
///  be shared between a server and a browser client environment.
///  All visual component, are derived from <class>component</class>,
///  which is a subclass of <class>object</class>.
Class %ZEN.Component.object Extends (%RegisteredObject, %XML.Adaptor) [ CompileAfter = %ZEN.Generator, DependsOn = %ZEN.Generator, Deprecated, PropertyClass = %ZEN.componentParameters, ServerOnly = 1, System = 3 ]
{

///  This is the XML namespace used for library components.
Parameter NAMESPACE = "http://www.intersystems.com/zen";

Parameter XMLIGNORENULL = 1;

///  If XMLFORMAT="Literal", then only support for literal format import and export is generated.<br>
Parameter XMLFORMAT = "Literal";

///  By setting this to 0, we disallow use of invalid attribute names in Zen XML documents.
Parameter XMLIGNOREINVALIDATTRIBUTE = 0;

///  Subclasses can set this to change default visibilty for a component.
Parameter DEFAULTVISIBLE As BOOLEAN = 0;

///  CSV list of additional include files (either .js or .css) that
///  should be included when this component is used on a page.<br/>
///  By default, the file extension (.js or .css) is used to determine whether an
///  item in the list is a script include or a style include. You can override
///  this behavior by adding the terms "script:" or "style:" to the beginning of
///  the file name or names. This prefix is not used as part of the include filename.
Parameter INCLUDEFILES As STRING;

///  If set, this indicates that this system component should be
///  placed in the given "module". A module is a grouping of components
///  within the same class package that share common include (js or css) files.
///  Note that certain root classes are implicitly placed within the "core"
///  module.<br/>
///  Classes outside of the Zen library should not set this, they should use
///  the <parameter>MODULE</parameter> instead.
Parameter SYSMODULE As STRING [ Internal ];

///  If set, this indicates that this system component should be
///  placed in the given "module". A module is a grouping of components
///  within the same class package that share common include (js or css) files.
Parameter MODULE As STRING;

///  If true, then the include files generated for this component, are placed in the
///  common /csp/broker directory and not the local /csp/*namespace* directory.<br/>
///  This is intended for use with packages that are mapped so as to be visible to every namespace.<br/>
///  All Zen classes within the same package must have the same value for this parameter.
///  It is the developer's responsibility to ensure this.
Parameter USECOMMONDIRECTORY As BOOLEAN = 0;

///  This is a comma-delimited list of which post-compile actions this component
///  is registered for. If this value is defined, then certain actions are carried out
///  after this class is compiled.<br>
///  The available choices are:<br>
///  <ul>
///  <li>"schema" - update the schema used by Studio Assist when editing page definitions.</li>
///  <li>"HTML" - Regenerate any JS or CSS files associated with this class.</li>
///  <li>"SVG" - Regenerate any JS or SVG CSS files associated with this class.</li>
///  </ul>
Parameter POSTCOMPILEACTIONS As STRING = "schema,HTML";

///  This projection is used to keep track of when Zen components
///  are compiled.<br>
///  This is an internal value.
///  Link back to page that contains this component.<br>
///  Applications should not set this property.
Property %page As %ZEN.Component.page(XMLPROJECTION = "none") [ Final ];

///  Link to the component that contains this object
///  or somehow caused this component to be placed on the page.<br>
///  For visual components, this is typically set to the group
///  that contains the component.<br>
///  For auxiliary components, this is set to the object that
///  referred to this component in the page definition.<br>
///  Applications should not set this property.
Property parent As %ZEN.Component.object(XMLPROJECTION = "none", ZENSETTING = 0) [ Final ];

///  This is a client-only property that refers to the JavaScript
///  Window object on which this object was created.<br/>
///  Applications should not set this property.
Property window As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENCLIENTONLY = 1, ZENSETTING = 0) [ Final ];

///  For components that are created as part of a composite component,
///  this is a link to the composite that contains this object.
///  Applications should not set this property.
Property composite As %ZEN.Component.group(XMLPROJECTION = "none", ZENSETTING = 0) [ Final ];

///  Special property indicating which <i>tuple</i> of a
///  repeating group is rendering this component. This property
///  only has meaning when a component is part of a repeating group.
///  Applications should not set this property.
Property tuple As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ Final ];

///  Server-side expression that determines if this component should be
///  added to the set of page components.<br>
///  This property is not available on the client.
Property %condition As %ZEN.Datatype.expression(XMLNAME = "condition");

///  Resource name that determines if this component should be
///  added to the set of page components. If specified, current user must
///  hold USE privilege on this resource or the component will not be added
///  to the set of page components.<br>
///  This property is not available on the client.
Property %resource As %ZEN.Datatype.resource(XMLNAME = "resource");

///  CSV list of additional component classes that this components
///  needs to have defined on the client.
///  Use this for cases where the client will need classes that are not
///  directly used in the original object tree.
///  This property is not available on the client.
Property %import As %ZEN.Datatype.string(MAXLEN = 1000, XMLNAME = "import");

///  CSV list of additional include files (either .js or .css) that
///  should be included when this component is used on a page.<br>
///  This property is not available on the client.
Property %includeFiles As %ZEN.Datatype.string(MAXLEN = 1000, XMLPROJECTION = "none") [ InitialExpression = {..#INCLUDEFILES} ];

///  System-assigned index number used internally to identify this component.<br>
///  Applications can use but should not set this property.
Property index As %Integer(XMLPROJECTION = "none", ZENSETTING = 0) [ Final ];

///  This is a unique identifier that is used to distinguish this object
///  from other objects within the same Zen page.<br/>
///  Every object within a Zen page must have a unique id value.
///  You can find an object with a given id value using the page object's
///  <method>getComponentById</method> method.<br>
Property id As %ZEN.Datatype.id [ Final ];

///  Name of this object.<br>
///  This is primarily used to specify the name used
///  for identifying a control within a form. It is also used to identify
///  values that are submitted by controls on a form.<br/>
///  It is defined here for convenience.
Property name As %ZEN.Datatype.name [ Final ];

///  This is an auxiliary property that is provided
///  as a place to hold additional user-defined values for components.
///  This property is not used by the ZEN framework.
Property aux As %ZEN.Datatype.string [ Final ];

///  This property indicates whether a component is visible and thus layed out.
///  This is a class-wide property set by the object constructor.<br>
///  Applications should not set this property; Sub-classes can set this
///  via the <parameter>DEFAULTVISIBLE</parameter>.
Property visible As %Boolean(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = {..#DEFAULTVISIBLE} ];

///  Internal property.<br>
///  This internal value is used to trigger a client-side
///  rendering of a component when it is modified on the server.
Property renderFlag As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ Final, InitialExpression = 0, Internal ];

///  onupdate event handler:
///  This event is fired after the properties of the object
///  have been updated from the server.
Property onupdate As %ZEN.Datatype.eventHandler;

///  Defines the CSS style sheet used by an object/component.
XData Style
{
}

///  Defines SVG-specific CSS style sheet used by an object/component.
XData SVGStyle
{
}

///  Defines any SVG def elements used by an object/component.
XData SVGDef
{
}

///  Constructor for Zen objects.<br/>
///  If subclasses override %OnNew, they should make sure to
///  invoke this using #super.
Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
{
}

///  Internal method.<br>
///  This is used to fire the add-to-page callback method.
///  On return, <var>pNotify</var> will be true if this component
///  has an <method>%OnAddToPageAfter</method> method.
Method %OnAddToPage(Output pNotify As %Boolean) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = (%OnAddToPageAfter, %OnAddToPageBefore), Internal ]
{
}

///  If implemented, this callback method is called at page render-time
///  when this component is added to a page but before any of its children
///  have been created.
Method %OnAddToPageBefore() As %Status [ Abstract ]
{
}

///  If implemented, this callback method is called at page render-time
///  after this component has been added to a page and after any of its children
///  have been created but before the %DrawHTML methods are called.
Method %OnAddToPageAfter() As %Status [ Abstract ]
{
}

///  Internal method.<br>
///  Write out HTML/CSS style sheet defined for this component.<br/>
///  <var>pLevel</var> indicates what level of CSS to render.
///  If level is 2 then the XData block, "Style", is used.
///  If level is 3 then the XData block, "CSS3Style", is used.
ClassMethod %DrawStyleHTML(pLevel As %Integer = 2) [ CodeMode = objectgenerator, Internal ]
{
}

///  Internal method.<br>
///  Write out SVG/CSS style sheet defined for this component<br>
///  This is based on the XData block, SVGStyle.
ClassMethod %DrawStyleSVG() [ CodeMode = objectgenerator, Internal ]
{
}

///  Internal method.<br>
///  Write out SVG Def elements defined for this component<br>
///  This is based on the XData block, SVGDef.
ClassMethod %DrawSVGDef() [ CodeMode = objectgenerator, Internal ]
{
}

///  Internal method.<br>
///  Draw enclosing div element and then draw contents within it.<br>
///  Implemented by subclass.
Method %DrawComponentHTML() [ Internal ]
{
}

///  Static HTML display method: draw the BODY of this component
///  as HTML.<br>
///  Subclasses implement this in order to render the static HTML
///  contents of a component.
Method %DrawHTML()
{
}

///  Set handler for renderFlag property.
Method renderFlagSet(%val) As %Status [ Internal, Private ]
{
}

///  This method is only needed for SVG components.
///  It is defined here so that we can detect if HTML components
///  are used within an SVG context and throw an error.
ClientMethod renderSVG(document, parent) [ Language = javascript ]
{
}

///  Call this method to force the client to call this object's
///  <method>renderContents</method> if it has one.
Method %ForceClientRender() [ Final ]
{
}

///  Utility method used when writing out HTML attribute values.
///  Given an attribute name and value, this returns the string
///  attr=""value"" with value HTML escaped. If value is "", then ""
///  is returned.
Method %Attr(pName As %String, pValue As %String) As %String [ CodeMode = expression, Final ]
{
}

///  Utility method; takes a property value containing a #()# expression
///  and evaluates it. This is called by the $$$ZENVAL macro.
Method %Eval(pExpr As %String, pEscape As %String = "") As %String
{
}

ClassMethod %EvalC(pExpr As %String, pEscape As %String = "") As %String
{
}

Method %ConstructClone(deep As %Boolean = 0, ByRef cloned As %String, location As %String) As %RegisteredObject
{
}

Method %NormalizeObject() As %Status
{
}

Method %AddToSaveSet(depth As %Integer = 3, refresh As %Integer = 0, norecurseon As %String = "") As %Status
{
}

Method %RemoveFromSaveSet() As %Status
{
}

Method %ValidateObject(force As %Integer = 0) As %Status
{
}

Method %BindExport(dev As %String, ByRef Seen As %String, RegisterOref As %Boolean, AllowedDepth As %Integer, AllowedCapacity As %Integer) As %Status
{
}

ClassMethod XMLDTD(top As %String, format As %String, input As %Boolean, ByRef dtdlist) As %Status
{
}

Method XMLExport(top As %String, format As %String, namespaces As %XML.Namespaces, attrs, createId As %String, typeAttr As %String, ByRef oreflist, ByRef idlist, initialIndent As %String, local As %Boolean) As %Status
{
}

Method XMLExportToString(ByRef export As %String, top As %String, format As %String, namespaces As %XML.Namespaces, attrs, createId As %String, typeAttr As %String, ByRef oreflist, ByRef idlist, initialIndent As %String) As %Status
{
}

Method XMLExportToStream(ByRef export As %Stream.Object, top As %String, format As %String, namespaces As %XML.Namespaces, attrs, createId As %String, typeAttr As %String, ByRef oreflist, ByRef idlist, initialIndent As %String) As %Status
{
}

///  Internal method.<br/>
///  Construct a list of component super classes of this class
///  as csv list (include this class as well).<br>
///  This is used at page render-time to build the list of classes
///  needed by the client page.
ClassMethod %GetSuperClassList(ByRef pList) As %String [ CodeMode = objectgenerator, Final, Internal ]
{
}

///  Internal method.<br/>
///  Returns information about the generated include files for this class.<br/>
///  <var>pModules</var> <br/>
///  <var>pHasJS</var> indicates that a JS file needs to be generated.<br/>
///  <var>pCSSType</var> indicate the type of CSS needed, if any.<br/>
///  This takes one of the following values:<br/>
///  "HTML" - HTML CSS<br/>
///  "SVG" - SVG CSS<br/>
///  "" - No style sheet is defined for this class.<br/>
///  <var>pInline</var> is set true if this component's style and js should be written
///  inline as part of a page.
ClassMethod %GetIncludeInfo(ByRef pModules As %String, Output pHasJS As %Boolean, Output pCSSType As %String, Output pInline As %Boolean) [ CodeMode = objectgenerator, Final, Internal ]
{
}

///  Internal method.<br/>
///  Return the list of include files needed by this component.<br/>
///  This is used to (1) generate include files for components, and (2)
///  determine which files need to be included by a page using this component.<br/>
///  On return, <var>%zenIncludeJS</var> and <var>%zenIncludeCSS</var> will contain the list of files in the form:<br/>
///  pFiles(depth,order,package,filename) = $LB(type,localdepth)<br/>
///  Where type can be "user" (not generated),
///  "js","html" (css), or "svg" (css).<br/>
///  If <var>pMode</var> is specified it indicates which kinds of files should be
///  served: "HTML" or "SVG" (for non-inline SVG).
ClassMethod %GetIncludeFiles(pMode As %String = "HTML") [ CodeMode = objectgenerator, Final, GenerateAfter = %GetIncludeInfo, Internal ]
{
}

///  Internal method.<br/>
///  Return the inheritance depth of this class.
///  That is, the number of classes from this one to the root object class.<br/>
ClassMethod %GetClassDepth() As %Integer [ CodeMode = objectgenerator, Final, GenerateAfter = %GetIncludeInfo, Internal ]
{
}

///  Return the XML namespace and element name for this component.
///  These are return via the parameters <var>pNamespace</var> and <var>pName</var>
///  respectively.
ClassMethod %GetXMLName(Output pNamespace As %String, Output pName As %String) As %Integer [ CodeMode = objectgenerator, Final ]
{
}

///  Internal method.<br>
///  Draw JavaScript needed to define client-side class for this component.
ClassMethod %DrawClassDefinition() As %Status [ CodeMode = objectgenerator, Final, Internal ]
{
}

///  Internal method.<br>
///  Get the CRC for this class.
///  This is used to test for client/server mismatch issues. This needs to be a method
///  to avoid class compiler issues.
ClassMethod %GetClassCRC() As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %DrawClassDefinition, Internal ]
{
}

///  Internal method.<br>
///  Draw JavaScript serialize method for this component.
ClassMethod %DrawJSSerialize() As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %DrawClassDefinition, Internal ]
{
}

///  Internal method.<br>
///  Draw JavaScript getSettings method for this component.
ClassMethod %DrawJSGetSettings() As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %DrawClassDefinition, Internal ]
{
}

///  Internal method.<br>
///  Draw JavaScript needed to initialize properties for client side of this object
Method %DrawObjectProperties() As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %OnDrawObjectProperties, Internal ]
{
}

///  Internal method.<br>
///  Draw JavaScript needed to synchronize client object to match
///  state of the server object.<br>
///  This is basically a specialized version of %DrawObjectProperties
///  that is used to send a changes in a server object to a client
///  object. It works by detecting if a property has changed and then
///  applies the value to the client via JS. It either sets the
///  property directly, or calls the client setProperty method if
///  the property is marked as a "setting".<br>
Method %ObjectSynch() As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %OnObjectSynch, Internal ]
{
}

///  Internal method.<br>
///  Server-side method to deserialize a serialized state into an
///  instance of this object. This object has to be created first as
///  this is an instance method.
Method %ZENDeserialize(pState As %String, ByRef pObjSet) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = (%OnZENDeserialize, %OnObjectSynch, %DrawClassDefinition), Internal ]
{
}

///  If defined, this callback is invoked by the <method>%ZENDeserialize</method>
///  method.
Method %OnZENDeserialize() As %Status [ Abstract ]
{
}

///  If defined, this callback is invoked by the <method>%DrawObjectProperties</method>
///  method.
Method %OnDrawObjectProperties() [ Abstract ]
{
}

///  If defined, this callback is invoked by the <method>%ObjectSynch</method>
///  method.
Method %OnObjectSynch() As %Status [ Abstract ]
{
}

///  Internal method.<br>
///  Called during page compilation to generate code to construct
///  an instance of this object.
///  If pLocalize is true, then all localizable values will use $$$Text
///  to generate localization information.
///  <var>pMode</var> indicates what type of code to generate:<br>
///  If "page", then generate contents of a page.<br>
///  If "composite", then generate contents of a composite component.<br>
///  <var>pKey</var>, if defined indicates we are inserting into a parent array
///  usng this key. If <var>pKey</var> = $C(0), then we should set our
///  instance into an object property of our parent.
Method %GenerateCode(pCode As %CharacterStream, pLocalize As %Boolean, ByRef pURIList, pCollection As %String, pLevel As %Integer = 1, pMode As %String = "page", pKey As %String = "", pParentVar As %String = "unknown") [ CodeMode = objectgenerator, Internal ]
{
}

///  Take a value string and return a quoted string.
ClassMethod %QuoteValue(pValue As %String) [ CodeMode = expression ]
{
}

///  Take a value string and return a quoted string wrapped within a
///  $$$Text macro.<br>
///  If value starts and ends with #( )#, then return an expression
ClassMethod %QuoteValueL10N(pValue As %String)
{
}

///  Server-side utility method that constructs a component-specific id
///  value for use in assigning ids to HTML/XML elements.
///  If we are part of a repeating group, the tuple number is included
///  in the id as well.
Method %MakeId(pSubID As %String) As %String [ CodeMode = expression ]
{
}

///  Return a JS expression that will evaluate to *this* component.
///  This is used when rendering HTML for a component and that HTML
///  needs to refer back to *this* component for a JS expression (such as
///  an event handler):<br>
///  onclick="#(..%Self())#.someMethod();"
Method %Self() As %String [ CodeMode = expression ]
{
}

///  This helper method returns a string of HTML/XML attributes that
///  will define all event handler properties defined for a control.<br>
///  <var>pIgnore</var> is an array of names of events that should be ignored.<br>
///  If the properties W3CEVENT parameter is set to 0, then it will be ignored.
Method %GetEventHandlers(ByRef pIgnore) As %String [ CodeMode = objectgenerator ]
{
}

///  Client-side utility method that finds an HTML element with a
///  component-specific id.
ClientMethod findElement(subid) [ Final, Language = javascript ]
{
}

///  This client event, if present, is fired before a component
///  is serialized. This gives the component a chance to make sure that its
///  client-side variables are up-to-date.
ClientMethod onSerialize() [ Abstract, Language = javascript ]
{
}

///  client-side utility method that constructs a component-specific id
///  value for use in assigning ids to HTML elements.<br>
///  This is simply a client-side version of <method>%MakeId</method>.
ClientMethod makeId(subid) [ Language = javascript ]
{
}

///  Client-side method that returns a list of this component's
///  run-time settable properties. These are the properties that
///  the page designer Inspector allows a user to edit.<br>
///  This list is returned by inserting
///  the property names in the associative array (object) <var>settings</var>.
///  Note: this method is automatically generated by DrawClassDefinition.
ClientMethod getSettings(settings) [ Final, Language = javascript ]
{
}

///  Invoke the superclass method <var>method</var> of the current
///  object with arguments <var>args</var>.
ClientMethod invokeSuper(method, args) [ Language = javascript ]
{
}

///  This is called when an object is updated from the server.
///  It will invoke the class-defined and user-defined onupdate event if defined.
ClientMethod fireOnUpdateEvent() [ Language = javascript ]
{
}

///  This client method, if present, is fired when the object is updated from the server.
ClientMethod onupdateHandler() [ Abstract, Language = javascript ]
{
}

///  This client method, if present, is called when this component is
///  instantiated. This allows for any additional client-side
///  initialization for this object.<br>
///  Note that this <em>must</em> be a client-side method.
ClientMethod onCreate() [ Abstract, Language = javascript ]
{
}

///  This client method, if present, is called when this component is
///  removed from the page. This allows for any additional client-side
///  clean up for this object.<br>
///  Note that this <em>must</em> be a client-side method.
ClientMethod onDelete() [ Abstract, Language = javascript ]
{
}

///  This causes a component that draws its contents dynamically
///  to (re)create its contents.<br>
///  This is a wrapper for the <method>renderContents<method>
///  method (if present). Applications should call <method>render<method>
///  to display dynamic components, but implement <method>renderContents<method> to
///  implement dynamic components.
ClientMethod render() [ Final, Language = javascript ]
{
}

///  This method, if present, is called when this component
///  is placed on a client page.<br>
///  This is used by components that render themselves using
///  client-side, dynamic content (i.e., instead of using the <method>%DrawHTML</method> method).
ClientMethod renderContents() [ Abstract, Language = javascript ]
{
}

///  This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Abstract, Language = javascript ]
{
}

///  This client event, if present, is fired when the page is unloaded.
///  If this method returns a string value, then that is used as the
///  return value of the HTML page's onbeforeunload handler (if more than
///  one component returns a string, the first one encountered is used).
ClientMethod onunloadHandler() [ Abstract, Language = javascript ]
{
}

///  Returns the component type of this object
///  (e.g. "form", or "control").
ClientMethod getType() [ Final, Language = javascript ]
{
}

///  Returns true if this object is of the given component type
///  or is subclassed from the given component type.
///  (e.g. "form", or "control")
ClientMethod isOfType(type) [ Final, Language = javascript ]
{
}

///  Set the value of a named property (i.e., a setting).<br>
///  Subclasses override this for cases where setting a property
///  requires some additional side effect to happen.<br>
///  The optional <var>value2</var> argument is used in cases,
///  such as collections, where a key and a value are needed.
///  In this case <var>value</var> is used as a key and
///  <var>value2</var> is the value.<br>
///  Return true if the property was explicitly handled and
///  false for the default behavior (setting the property directly).
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

///  Return the value of a named property (i.e. a setting).<br>
///  Returns null if this is not a property of this object.<br>
///  <var>key</var> is an optional argument used for properties
///  (such as collections) that may need a key to find a specific value.
ClientMethod getProperty(property, key) As %String [ Language = javascript ]
{
}

///  Render list of localized javascript strings for this object.
ClassMethod %DrawJSStrings(ByRef pVisited As %String) As %Status [ CodeMode = objectgenerator, ForceGenerate, GenerateAfter = %DrawClassDefinition ]
{
}

}
