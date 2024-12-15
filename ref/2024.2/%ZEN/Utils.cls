/// This class contains various utility methods needed by the ZEN framework.
Class %ZEN.Utils Extends %RegisteredObject [ Deprecated, System = 2 ]
{

Parameter DOMAIN = "%ZEN";

/// Turn on the Zen event log.
/// This has the side effect of clearing the event log.
ClassMethod %StartLog()
{
}

/// Turn off the Zen event log.
ClassMethod %StopLog()
{
}

/// Write out the Zen event log to the console.
ClassMethod %ShowLog()
{
}

/// Test if Zen event log is enabled.
ClassMethod %LoggingEnabled() As %Boolean
{
}

/// Write information to the Zen event log.
/// <var>pType</var> is the type of event (a string such as "ERROR").<br>
/// <var>pClass</var> is the class logging the event.<br>
/// <var>pMethod</var> is the method logging the event.<br>
/// <var>pMessage</var> is a message to log.<br>
/// <var>pObject</var>, if present, is the object that is logging the event.<br>
ClassMethod %Log(pType As %String, pClass As %String, pMethod As %String, pMessage As %String, pObject As %ZEN.Component.object = "")
{
}

/// Returns a list of events from the Zen event log.
ClassMethod EnumerateLogExecute(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod EnumerateLogFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateComponentsExecute ]
{
}

ClassMethod EnumerateLogClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateComponentsExecute ]
{
}

/// Invalidate the XML schema information needed for StudioAssist.
/// Studio will rebuild this information when user loads a document
/// in this namespace.
ClassMethod %InvalidateSchema() As %Status
{
}

/// Generate XML schema information needed for StudioAssist.
ClassMethod %GenerateSchema() As %Status
{
}

/// Generate include files for a given Zen package.<br>
/// <var>pPackage</var> is the package name.<br>
ClassMethod %GenerateIncludeFiles(pPackage As %String, pType As %String = "") As %Status
{
}

/// Generate include files for a given Zen package and
/// list of modules.<br>
/// <var>pPackage</var> is the package name.<br/>
/// <var>pModules</var> is a list of module names by package.<br/>
/// If <var>pAll</var> is true, then process all modules in the given package.
ClassMethod %GenerateIncludeFilesForModules(pPackage As %String, ByRef pModules, pAll As %Boolean = 0, pDisplay As %Boolean = 1) As %Status
{
}

/// Given a package name, return the physical directory into
/// which include files should be generated.
ClassMethod %GetPhysicalIncludeDirectory(pPackage As %String, Output pStatus As %Status, Output pUrl As %String) As %String
{
}

/// Return the physical directory in which common include files are written.
ClassMethod %GetIncludeDirectory(Output pUrl As %String) As %String
{
}

/// Return the directory in which user include files are written.
ClassMethod %GetUserIncludeDirectory(Output pUrl As %String) As %String
{
}

/// Given a stream, read its contents into a string.
/// If the stream does not fit, set <var>pOverflow</var> to 1.
ClassMethod %ReadStreamIntoString(pStream As %Stream, Output pOverflow As %Boolean) As %String
{
}

/// Write out description of the given class as HTML.
ClassMethod %DrawClassDescription(pClass As %String)
{
}

/// Write out description of the given property as HTML.
ClassMethod %DrawPropertyDescription(pClass As %String, pProperty As %String)
{
}

/// Returns a list of available ZEN application classes
/// as well as logical application name.<br>
ClassMethod EnumerateApplicationsExecute(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod EnumerateApplicationsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateComponentsExecute ]
{
}

ClassMethod EnumerateApplicationsClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateComponentsExecute ]
{
}

/// Returns a list of available ZEN components.<br>
/// This does *not* include any page components.
ClassMethod EnumerateComponentsExecute(ByRef qHandle As %Binary, pParentClass As %String = "") As %Status
{
}

ClassMethod EnumerateComponentsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateComponentsExecute ]
{
}

ClassMethod EnumerateComponentsClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateComponentsExecute ]
{
}

/// Determine if this component class is a page.
ClassMethod IsPage(pClass As %String) As %Boolean
{
}

/// Determine if component class uses an empty XML element
/// (i.e., does not have child elements).
ClassMethod IsComponentEmpty(pClass As %String) As %Boolean
{
}

/// Returns a list of properties within a given ZEN component.
ClassMethod ComponentDetailsExecute(ByRef qHandle As %Binary, pClass As %String) As %Status
{
}

ClassMethod ComponentDetailsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateComponentsExecute ]
{
}

ClassMethod ComponentDetailsClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateComponentsExecute ]
{
}

/// Returns a list of class packages (that start with <var>pFilter</var>).
/// Does not return % packages unless pFilter starts with "%".
ClassMethod EnumeratePackagesExecute(ByRef qHandle As %Binary, pFilter As %String = "") As %Status
{
}

ClassMethod EnumeratePackagesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateComponentsExecute ]
{
}

ClassMethod EnumeratePackagesClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateComponentsExecute ]
{
}

/// Get list of attributes used by ZEN component <var>comp</var>.<BR>
/// Returns true if the component is defined.
ClassMethod GetComponentAttrs(comp As %String, ByRef attrs, ByRef cats) As %Boolean
{
}

/// Display a status code within an HTML element.
ClassMethod %DisplayErrorHTML(pObject As %RegisteredObject, tSC As %Status)
{
}

/// Display a status code within JavaScript alert box.
ClassMethod %DisplayErrorJS(pObject As %RegisteredObject, tSC As %Status)
{
}

/// Display a status code within an SVG element.
ClassMethod %DisplayErrorSVG(pObject As %RegisteredObject, tSC As %Status)
{
}

/// Return array of pages within the given application class.
ClassMethod %GetPagesInApplication(pApplication As %String, Output pList As %String)
{
}

/// Utility method.
/// Return array of links within the given page class.
ClassMethod %GetLinksInPage(pPage As %String, Output pList As %String)
{
}

/// Utility method to write out JS and CSS Style Sheet files
/// for classes within a given module (contained in <var>pWorkList</var>.<br/>
/// If <var>pFlags</var> contains "-d", then no output is written.
/// If <var>pFlags</var> contains "-s", then output is not stripped.
ClassMethod WriteIncludeFilesForModule(pDirectory As %String, pModule As %String, ByRef pWorkList, pFlags As %String = "") As %Status
{
}

/// Wrapper to invoke %DrawClassDefinition method for a class.
/// [Previously private]
ClassMethod DrawClassDefinition(pClass As %String)
{
}

/// Create a graph of a class <var>pTopClass</var> and its subclasses.<br>
/// <var>pFilter</var> limits the search candidates: only classes that start with
/// the filter value are considered.
ClassMethod ConstructClassGraph(pTopClass As %String, ByRef pGraph, pFilter As %String = "", pParentNode = "")
{
}

/// Write out the contents of the default CSS Style sheet for
/// a component.<br>
/// This is used when pre-building a .css file for a package.
/// <var>pStyleBlock</var> is the name of the XData block containing the CSS style definition.
ClassMethod WriteCSSForComponent(pClassName As %String, pStyleBlock As %String = "Style") As %Status
{
}

/// Take a string containing #()# expressions and return an
/// executable expression:
/// E.g.:  turns hello #(%page.prop)# into<br>
/// "hello "_(%page.prop)<br>
/// An expression can also take the form: #(#compid.prop)#<br>
/// This evaluates to the property <var>prop</var> within the
/// component with id of <var>compid</var>.<br>
/// If <var>pEsc</var> is defined, it indicates that property values should be escaped:
/// possible values are "HTML","JS","URL", etc.<br>
/// <var>pMode</var> specifies how to handle the special %query object.
/// 1: treat %query as a %ResultSet; 2 treat %query as a local array.
ClassMethod %ParseExpr(pText As %String, pEsc As %String = "", pMode As %Integer = 1) As %String [ Internal ]
{
}

/// Parse a formal spec (used by the delegator datatype class)
/// of the form: arg:type,arg:type, and return a $list as used
/// by the class compiler.
ClassMethod %ParseFormalSpec(pSpec As %String) As %List
{
}

/// Return default value of named property (used by Wizards).
ClassMethod GetDefault(pSetting As %String, pDefault As %String = "") As %String
{
}

/// Set default value of named property (used by Wizards).
ClassMethod SetDefault(pSetting As %String, pName As %String)
{
}

/// Return default package name (used by Wizards).
ClassMethod GetDefaultPackage() As %String
{
}

/// Set default package name (used by Wizards).
ClassMethod SetDefaultPackage(pName As %String) As %String
{
}

/// Return default application name (used by Wizards).
ClassMethod GetDefaultApplication() As %String
{
}

/// Set default application name (used by Wizards).
ClassMethod SetDefaultApplication(pName As %String) As %String
{
}

/// Return default domain name (used by Wizards).
ClassMethod GetDefaultDomain() As %String
{
}

/// Set default domain name (used by Wizards).
ClassMethod SetDefaultDomain(pName As %String) As %String
{
}

/// Called by wizards. Create a new ZEN page class.
ClassMethod CreateZENPageClass(pPage As %String, pAppClass As %String) As %Status
{
}

/// Serialize a page object to an XML format compatible for
/// use within an XData Contents block.<br>
/// This does not use the normal XML adaptor as it has special
/// requirments (such as formatting and skipping properties with
/// default values).
ClassMethod %PageToXML(pStream As %Stream.GlobalCharacter, pPage As %ZEN.Component.page) As %Status
{
}

/// Serialize a component to XML. Used by the <method>%PageToXML</method> method.
ClassMethod %ObjectToXML(pStream As %Stream.GlobalCharacter, pObject As %ZEN.Component.object, ByRef pNSList, pLevel As %Integer = 1)
{
}

/// Internal method: get value for a given
/// property of a given object. If the value is the default
/// do not set <var>pValue</var>.
ClassMethod %GetPropertyValue(pObject As %ZEN.Component.object, pPropName As %String, Output pValue As %String) As %Status
{
}

ClassMethod %SavePage(pTargetPage As %ZEN.Component.page) As %Status
{
}

/// Return file path for the ZEN XML Schema.
ClassMethod GetSchemaFile() As %String [ CodeMode = expression ]
{
}

/// Generate the ZEN XML schema file
ClassMethod GenerateSchema() As %Status
{
}

/// Write out the XML schema for a ZEN page definition
ClassMethod WriteXMLSchema(pFile As %String = "") As %Status
{
}

/// Get CSS info from generated CSS files.
/// <var>pType</var> is "HTML" or "SVG". (ignored)
/// Fills in array <var>pInfo</var> as follows:<br>
/// pInfo(class,style) = comment
ClassMethod GetCSSInfo(ByRef pInfo, pType As %String = "HTML") As %Status
{
}

/// Utility method. Opens CSS file, <var>pFileName</var>, and finds all the
/// CSS declarations in it.
/// Fills in array <var>pInfo</var> as follows:<br>
/// pInfo(class,style) = comment
ClassMethod ParseCSSFile(pFileName As %String, ByRef pInfo) As %Status
{
}

/// Utility method to parse a string, <var>pText</var>, containing one or more
/// CSS declarations.
/// Returns an array of parsed declarations in the form:<br>
/// pParse(n) = $LB(prop,val)
ClassMethod ParseCSS(pText As %String, Output pParse)
{
}

/// Take an array of parsed CSS declarations and combine them into a single string.
ClassMethod BuildCSSString(ByRef pParse) As %String
{
}

/// Misc messages that need to be in the localization global.
/// [Previously private]
ClassMethod %Messages() [ Internal ]
{
}

/// Serialize a list object into a form that can be sent to a client
/// dataController.<br/>
/// The serial state for lists and arrays takes the form:<br/>
/// key:value,key;key2:value<br/>
/// (keys may be multi-part; for lists, key is omitted).
ClassMethod %SerializeList(pList As %Library.AbstractList) As %String [ Internal ]
{
}

/// Serialize an array object into a form that can be sent to a client
/// dataController.
ClassMethod %SerializeArray(pArray As %Library.AbstractArray) As %String [ Internal ]
{
}

/// Deserialize data back into a list object.
ClassMethod %DeserializeList(pList As %Library.AbstractList, pData As %String) [ Internal ]
{
}

/// Deserialize data back into an array object.
ClassMethod %DeserializeArray(pArray As %Library.AbstractArray, pData As %String) [ Internal ]
{
}

/// Given a binary stream, encode its ID value so that it can be sent to a client
/// image component.
ClassMethod %EncodeBinaryStream(pStream As %Library.BinaryStream) As %String [ Internal ]
{
}

/// Given an xml namespace and a component name, return the class name
/// of the corresponding Zen component.
ClassMethod %FindComponentClassByName(pNamespace As %String, pName As %String) As %String
{
}

/// Test if include files for the given class package should be placed in the common
/// directory.
ClassMethod %IsPackageInCommonDirectory(pPackage As %String, Output pCommon As %Boolean) As %Status
{
}

/// Helper method to determine whether the UserAgent in <var>pUserAgent</var>
/// supports HTML5. If <var>pUserAgent</var> is not supplied and the <code>%request</code> object exists,
/// the value of <var>pUserAgent</var> defaults to <code>%request.UserAgent</code>.
ClassMethod %BrowserSupportsHTML5(pUserAgent As %String = {$select($IsObject($get(%request)): %request.UserAgent, 1: "")}) As %Boolean
{
}

/// Helper method to determine whether java is installed
/// Wraps ##class(%Net.Remote.Service).GetJavaVersion() to provide clear error message
/// ZenMethod wrapper is defined in %ZEN.Component.abstractPage
/// Returns a $$$OK if Java is installed
ClassMethod %JavaInstalled() As %Status
{
}

}
