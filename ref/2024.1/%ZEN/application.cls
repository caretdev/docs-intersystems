/// This class is used to define a ZEN application.
/// This is an instantiable CSP page.
Class %ZEN.application Extends (%RegisteredObject, %CSP.Page) [ CompileAfter = %ZEN.Generator, Deprecated, Inheritance = right, System = 3 ]
{

/// Optional name of this application.<br/>
/// If not defined, the class name of the application is used.
/// This is used for display purposes within some utilities
/// but it not used at run-time.
Parameter APPLICATIONNAME As STRING;

/// This is the URL of the main starting page of this application.
Parameter HOMEPAGE As STRING;

/// Comma-separated list of additional JS include files that should be
/// included for every page within the application.
Parameter JSINCLUDES As STRING;

/// Comma-separated list of additional CSS include files that should be
/// included for every page within the application.<br/>
/// The CSS files will be included <em>after</em> any component style sheets
/// and <em>before</em> styles defined by this application class or the page class.
Parameter CSSINCLUDES As STRING;

/// Comma-separated list of additional CSS3 include files that should be
/// included for every page within the application.<br/>
/// This is used when the page uses CSS3.
/// The CSS files will be included <em>after</em> any component style sheets
/// and <em>before</em> styles defined by this application class or the page class.
Parameter CSS3INCLUDES As STRING;

/// Comma-separated list of User class packages whose HTML class
/// and style definitions are in pre-generated include files.
/// These include files will be used by every page within the application.
Parameter USERPACKAGES As STRING;

/// Comma-separated list of User class packages whose SVG class
/// and style definitions are in pre-generated include files.
/// These include files will be used by every applicable page within the application.
Parameter USERSVGPACKAGES As STRING;

/// Status code for this object.
/// If a page encounters errors when trying to create the
/// application object instance, this property will be set to
/// an error code.
Property %StatusCode As %Status;

/// Defines application-wide overrides for style sheets.
/// Any styles defined here will be rendered as part of
/// every page within the application.
XData Style
{
}

ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// Return the display name of this application class.
ClassMethod %GetApplicationName()
{
}

/// Return the USERPACKAGE and USERSVGPACKAGE lists defined for this application class.
ClassMethod %GetUserPackages(Output pUserPackages As %String, Output pUserSVGPackages As %String)
{
}

/// Default OnPage handler-- only called if no HOMEPAGE
/// is defined for this application.
ClassMethod OnPage() As %Status [ ServerOnly = 1 ]
{
}

/// Write out HTML/CSS style sheet defined for this application.<br/>
/// This is based on the XData block, Style.<br/>
/// This style sheet is used to provide application-wide
/// overrides for styles.
ClassMethod %DrawStyleHTML(pSuper As %Boolean = 0, pCSSLevel As %Integer = 2) [ CodeMode = objectgenerator ]
{
}

/// Return string used to include a CSS file.
/// [Previously private]
ClassMethod %LinkCSS(pFile As %String) As %String [ CodeMode = expression ]
{
}

/// Return string used to include a script file.
/// [Previously private]
ClassMethod %LinkScript(pFile As %String) As %String [ CodeMode = expression ]
{
}

/// Applications can implement this callback method in order to define a set of
/// client-side resources: javascript strings that have been localized.<br/>
/// This is the same as the Zen page callback method except that
/// it is shared by all pages within an application.<br/>
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
/// Be sure to define the <parameter>DOMAIN</parameter> for your
/// application class if you override this method.
Method %OnGetJSResources(ByRef pResources As %String) As %Status
{
}

}
