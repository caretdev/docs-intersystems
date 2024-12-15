/// This is a specialized CSP page that serves SVG content for
/// a ZEN svgFrame.<br>
/// This is an instantiable CSP page.
Class %ZEN.SVGComponent.svgPage Extends (%RegisteredObject, %CSP.Page) [ Deprecated, Inheritance = right, PropertyClass = %ZEN.pageParameters, System = 4 ]
{

Parameter CONTENTTYPE = "image/svg+xml";

/// Comma-separated list of component packages whose
/// style definitions are in pre-generated include files.
/// This is merged with the list provided by the parent page.
Parameter USERSVGPACKAGES As STRING;

/// This is a comma-delimited list of system Resources and associated
/// permissions. A user must hold the specified permissions on at least
/// one of the specified resources in order to view this page or
/// invoke any of its server-side methods from the client.<br/>
/// The format of each item in the list should be as follows:<br/>
///  Resource[:Permission] <br/>
/// Permission is optional, and defaults to USE if not supplied. If it
/// is supplied, it should be one of USE, READ or WRITE.
Parameter RESOURCE As STRING;

/// Comma-separated list of additional JS include files.
/// These are included within the inner SVG page served by this class only.
Parameter JSINCLUDES As STRING;

/// Additional set of CSS style files to include.
Parameter CSSINCLUDES As STRING;

/// Internal property.<br>
/// Comma-delimited list of user-defined packages that are included by this page.
/// This list is created by combining the parameter from this class, the parent page, and the application.
Property %SystemSVGPackageList As %String(XMLPROJECTION = "none") [ Internal ];

/// Internal property.<br>
/// Comma-delimited list of user-defined packages that are included by this page.
/// This list is created by combining the parameter from this class, the parent page, and the application.
Property %UserSVGPackageList As %String(XMLPROJECTION = "none") [ Internal ];

/// Default style for ZEN SVG pages
XData SVGStyle
{
}

/// Set of standard svg defs shared by all svg components.
XData SVGDef
{
}

/// Copy URL parameters supplied to this page into the
/// appropriate properties of this page.
Method %ApplyURLParms() As %Status [ CodeMode = objectgenerator, Final ]
{
}

/// Draw JavaScript needed to define client-side class for this page (if any).
ClassMethod %DrawClassDefinition() As %Status [ CodeMode = objectgenerator, Final ]
{
}

/// Draw JavaScript needed to initialize properties for client side of this object
Method %DrawObjectProperties() As %Status [ CodeMode = objectgenerator, Final ]
{
}

/// Internal method.<br>
/// Draw JavaScript serialize method for this component.
ClassMethod %DrawJSSerialize() As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %DrawClassDefinition, Internal ]
{
}

/// Internal method.<br>
/// Draw JavaScript getSettings method for this component.
ClassMethod %DrawJSGetSettings() As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %DrawClassDefinition, Internal ]
{
}

ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

ClassMethod OnPage() As %Status
{
}

/// Draw standard SVG wrapper
Method %DrawSVGPage() [ Final ]
{
}

/// This does the actual work of writing out the SVG document
/// definition. It can be called for inline or standard SVG.
Method %DrawSVGDocument(ByRef pAttrs As %String, pInline As %Boolean) [ Final, Internal ]
{
}

/// Internal Method.<br>
/// This is used to invoke callback methods and trap for errors.
Method %InvokeCallback(pMethod As %String) As %Status
{
}

/// Draw out client-side class definitions for components on this page.
/// Caller is responsible for drawing enclosing script tags.
Method %DrawClassDefinitions() [ Final ]
{
}

/// Construct a list of component super classes of this class
/// as csv list (include this class as well).<br>
/// This is used at page render-time to build the list of classes
/// needed by the client page.
ClassMethod %GetSuperClassList(ByRef pList) As %String [ CodeMode = objectgenerator, Final ]
{
}

/// Write out client-side object definitions for components on this page.<br>
/// Caller is responsible for drawing enclosing script tags.
Method %DrawObjectDefinitions() [ Final ]
{
}

/// Callback method.
/// If defined, this provides a way for a subclass to add static SVG content
/// to the svgPage.
Method %OnDrawSVGPage() As %Status [ CodeMode = expression ]
{
}

/// Return string used to include a CSS file
/// [Previously private]
ClassMethod %LinkCSS(pFile As %String) As %String [ CodeMode = expression ]
{
}

/// Return string used to include a script file
/// [Previously private]
ClassMethod %LinkScript(pFile As %String) As %String [ CodeMode = expression ]
{
}

/// Write string used to introduce client-side script code
/// [Previously private]
ClassMethod %StartScript() As %String [ CodeMode = expression ]
{
}

/// Write string used to end client-side script code
/// [Previously private]
ClassMethod %EndScript() As %String [ CodeMode = expression ]
{
}

/// This method writes out all SVG Defs defined by ZEN library
/// components.
ClassMethod %DrawSVGDefs() [ CodeMode = objectgenerator ]
{
}

/// Write out SVG/CSS style sheet defined for this component<br>
/// This is based on the XData block, SVGStyle.
ClassMethod %DrawStyleSVG() [ CodeMode = objectgenerator, GenerateAfter = %OnDrawStyleSVG ]
{
}

/// Write out SVG defs defined for this component<br>
/// This is based on the XData block, SVGDef.
ClassMethod %DrawSVGDef() [ CodeMode = objectgenerator, GenerateAfter = %OnDrawSVGDef ]
{
}

/// Callback method called when drawing the SVG CSS style for this page.
ClassMethod %OnDrawStyleSVG() As %Status [ Abstract ]
{
}

/// Callback method called when drawing the SVG defs for this page.
ClassMethod %OnDrawSVGDef() As %Status [ Abstract ]
{
}

/// Callback for adding scripts to this SVG page.
ClassMethod %OnDrawSVGScript() As %Status
{
}

/// This method is called when this svgPage is loaded.
ClientMethod onSVGLoad() [ Language = javascript ]
{
}

/// Internal method.<br>
/// Get the CRC for this class.
/// This is used to test for client/server mismatch issues. This needs to be a method
/// to avoid class compiler issues.
ClassMethod %GetClassCRC() As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %DrawClassDefinition, Internal ]
{
}

}
