/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.<p>
/// Automatic HTML Document Generator for InterSystems IRIS classes.
///
/// <p>To use, point a browser at:
/// <a href="http://127.0.0.1:1972/csp/documatic/%25CSP.Documatic.cls" target="_blank">http://127.0.0.1:1972/csp/documatic/%25CSP.Documatic.cls</a>.</p>
/// <p>The documentation for a class can consist of just plain text, or it may have embedded HTML tags.
/// When present, these tags are also sent to the browser displaying the class page.
/// Thus, it is possible to exert finer control over the presentation of class information such as
/// list formatting, definitions, even tables.
/// <P>If HTML is used to enhance the display, the user should take care to follow the HTML standard and
/// insert as little markup as necessary to accomplish the job.  The reason for this is that the
/// class documentation may be viewed on many different browsers, each of which has its own
/// extensions.  The closer the HTML is to the standard (and to those features of the standard that all browsers support),
/// the better the chance that the information will appear the same on all displays.
/// <p>Documatic also supports several special tags in addition to those defined by HTML:
/// <ul>
/// <li><b>&lt;CLASS&gt;</b>Classname<b>&lt;/CLASS></b> This produces a link that when clicked on will
/// take you to the documentation for the class named 'Classname'.</li>
/// <li><b>&lt;METHOD></b>Method<b>&lt;/METHOD></b> Produces a link that will take you to the method
/// called 'Method' in the current class.</li>
/// <li><b>&lt;PROPERTY></b>Property<b>&lt;/PROPERTY></b> Produces a link that will take you to the
/// documentation for property 'Property' in the current class.</li>
/// <li><b>&lt;QUERY></b>Query<b>&lt;/QUERY></b> Produces a link that will take you to the
/// documentation for the query 'Query' in the current class.</li>
/// <li><b>&lt;PARAMETER></b>Parameter<b>&lt;/PARAMETER></b> produces a link to the given parameter
/// in the current class.</li>
/// <li><b>&lt;EXAMPLE></b>Set A="Test<b>&lt;/EXAMPLE></b> formats the enclosed text
/// as a formatted code example, which will include syntax colorizing if possible (using
/// <CLASS>%Library.SyntaxColor</CLASS>).
/// <p>By default, the syntax colorizer treats the example as ObjectScript.
/// To specify another language, include the LANGUAGE attribute. Other languages
/// include SQL, JAVA, and XML.
/// To list the languages currently supported, call the Languages() instance
/// method of <CLASS>%Library.SyntaxColor</CLASS>:</p>
/// <EXAMPLE>
/// set colorizer=##class(%Library.SyntaxColor).%New()
/// set status=colorizer.Languages(.langlist)
/// zw langlist
/// </EXAMPLE>
/// To suppress syntax colorizing, use <span>&lt;EXAMPLE LANGUAGE=NONE>.</span>
/// </p>
/// <p>NOTE: You can include the other special tags inside &lt;EXAMPLE>, but other HTML
/// tags are ignored in this context.</p></li>
/// </ul>
Class %CSP.Documatic Extends %CSP.Page [ System = 3 ]
{

Parameter CSPURL = "/csp/documatic/%CSP.Documatic.cls";

Parameter DEFAULTNS = "%SYS";

Parameter EMPTYNS = "-EMPTY NAMESPACE-";

Parameter URL = "%25CSP.Documatic.cls";

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

ClassMethod zzzText(text As %String) As %String [ Internal ]
{
}

ClassMethod zzzTextHTML(text As %String) As %String [ Internal ]
{
}

ClassMethod zzzTextJS(text As %String) As %String [ Internal ]
{
}

/// Returns true if we are talking to an IE browser.
ClassMethod isIE() As %Boolean [ CodeMode = expression, Private ]
{
}

/// Returns true if we should use dynamic HTML.
ClassMethod useDHTML() As %Boolean [ Private ]
{
}

ClassMethod ShowInternal() As %Integer [ Internal ]
{
}

ClassMethod IsInternal(item, desc As %String) As %Integer [ Internal ]
{
}

ClassMethod IsHidden(classname As %String) As %Integer [ Internal ]
{
}

ClassMethod IsObsolete(classname As %String) As %Integer [ Internal ]
{
}

ClassMethod FmtInternal(internal As %Integer) As %String [ Internal ]
{
}

ClassMethod EndFmt(internal As %Integer) As %String [ Internal ]
{
}

ClassMethod DefaultNS() As %String
{
}

ClassMethod SwapNS(Namespace As %String) As %Boolean
{
}

/// Renders the style sheet used by the doc viewer.
ClassMethod ServeStyleSheet() As %Status [ Private ]
{
}

/// Event handler for <b>PAGE</b> event: this is invoked in order to
/// display a csp page. This method is called to render a class document to a browser.
ClassMethod OnPage() As %Status
{
}

/// Write out any cookies we want to hold onto.
ClassMethod OnPreHTTP() As %Boolean
{
}

/// Renders the frameset (main) page for the document viewer.
ClassMethod ServeFrameSet() As %Status [ Private ]
{
}

/// Renders the index frame page for the document viewer.
ClassMethod ServeIndexPage() As %Status [ Private ]
{
}

/// Renders the class frame page for the document viewer.
ClassMethod ServeClassPage() As %Status [ Private ]
{
}

ClassMethod CheckSession()
{
}

/// Renders the class frame page for the document viewer.
ClassMethod ServeStoragePage() As %Status [ Private ]
{
}

/// Renders the search page for the document viewer.
ClassMethod ServeSearchPage() As %Status [ Private ]
{
}

/// Renders the search page input form.
ClassMethod SearchForm(%library As %String, class As %String = "") [ Private ]
{
}

/// Renders the search page results form.
ClassMethod SearchResults(%library As %String, search As %String, typestr As %String, member As %String, class As %String) [ Private ]
{
}

/// Renders the search page results form for a <i>derived from</i> search.
ClassMethod SearchResultsDerive(%library As %String, base As %String) [ Private ]
{
}

/// Renders a %library index page. Set <VAR>%library</VAR> to %SYS to
/// show system index.
ClassMethod RenderIndexPage(%library As %String, expand As %String) As %Status
{
}

/// Build a list of classes and return it via <VAR>classlist</VAR>.
/// <p>If <VAR>local</VAR> then show local classes.
/// <p>If <VAR>system</VAR> then show system classes.
ClassMethod GetClassList(ByRef classlist As %String, local As %Boolean, system As %Boolean) [ Private ]
{
}

/// Generate an HTML page for the class <i>cdef</i>.
ClassMethod RenderClassPage(cdef As %ClassDefinition, private As %Boolean) As %Status
{
}

/// Generate an HTML page show information on the current namespace.
ClassMethod RenderNameSpacePage() As %Status
{
}

/// Generate an HTML page for the package <PARAMETER>packagename</PARAMETER>.
ClassMethod RenderPackagePage(packagename As %String) As %Status
{
}

/// Generate HTML table showing contents of the given package.
ClassMethod RenderPackageInfo(pTitle As %String, packagename As %String = "") As %Status
{
}

/// Generate HTML table showing available namespaces.
ClassMethod RenderNameSpaceList() As %Status
{
}

/// Generate an HTML page for the class <PARAMETER>cdef</PARAMETER> storage definition.
ClassMethod RenderStoragePage(cdef As %ClassDefinition) As %Status
{
}

/// Returns an OREF to the current storage definition for the given class.
ClassMethod GetCurrentStorageDef(cdef As %ClassDefinition) As %StorageDefinition [ Private ]
{
}

/// Generate an HTML page for the class <i>cdef</i> serial storage definition.
/// <p>Set <VAR>issuper</VAR> true for superclasses of the currently viewed class.
ClassMethod RenderStorageDef(cdef As %ClassDefinition, issuper As %Boolean = 0) As %Status
{
}

ClassMethod RenderDefaultStorageDef(cdef, sdef, ss, lbl) As %Status
{
}

/// Generate an HTML page for the class <I>cdef</I> serial storage definition.
/// <P>Set <VAR>issuper</VAR> true for superclasses of the currently viewed class.
ClassMethod RenderSQLStorageDef(cdef As %ClassDefinition, sdef, ss, lbl) As %Status
{
}

/// Find the data location for this storage definition.
ClassMethod GetDataLocation(sdef As %StorageDefinition) As %String [ Private ]
{
}

/// Generate the title banner for the current page.
/// <br>pageType=0 means "we're displaying normal content", pageType=1 means "this is the Home page",
/// pageType=2 means "this is the SearchPage page", pageType=3 means "this is the Getting Started page"
/// pageType=4 means "this is the Master Index page"
ClassMethod RenderBanner(title As %String, %library As %String, class As %String) As %Status [ Private ]
{
}

ClassMethod MakeCopyrightDiv() [ Internal ]
{
}

ClassMethod RenderBannerOld(title As %String, %library As %String, class As %String) As %Status [ Private ]
{
}

/// Display Printer Friendly Version link
ClassMethod RenderPrinter() [ Private ]
{
}

/// Draw username or server name depend on setup.
ClassMethod DrawUsername()
{
}

/// Generate a label containing the string <PARAMETER>label</PARAMETER>. The <PARAMETER>id</PARAMETER>
/// is a unique index for the DHTML elements to work.
ClassMethod RenderLabel(label As %String, ByRef id As %Integer) As %Status [ Private ]
{
}

/// Generate a label containing the string <PARAMETER>label</PARAMETER>.
ClassMethod RenderLibraryLabel(label As %String) As %Status [ Private ]
{
}

/// Generate HTML header for the class <PARAMETER>cdef</PARAMETER>.
ClassMethod RenderClassInfo(cdef As %ClassDefinition, pFull As %Boolean = 1) As %Status [ Private ]
{
}

/// Generate the metadata info for a ViewQuery
ClassMethod RenderViewQuery(query As %String) [ Private ]
{
}

/// Use a more primitive mechanism to get the query metadata
ClassMethod RenderMTCData(query As %String) [ Private, ProcedureBlock = 0 ]
{
}

/// Generate HTML for the method <PARAMETER>mdef</PARAMETER>.
ClassMethod RenderMethodInfo(mdef As %MethodDefinition, desc As %String) As %Status [ Private ]
{
}

/// Generate HTML for the class parameter <PARAMETER>pdef</PARAMETER>.
ClassMethod RenderParameterInfo(pdef As %ParameterDefinition, desc As %String) As %Status [ Private ]
{
}

/// Generate HTML for the property <PARAMETER>pdef</PARAMETER>.
ClassMethod RenderPropertyInfo(pdef As %PropertyDefinition, desc As %String) As %Status [ Private ]
{
}

/// Generate HTML for the query <PARAMETER>qdef</PARAMETER>.
ClassMethod RenderQueryInfo(qdef As %QueryDefinition, desc As %String) As %Status [ Private ]
{
}

/// Generate HTML for the query <PARAMETER>qdef</PARAMETER>.
ClassMethod RenderIndexInfo(idef As %IndexDefinition, desc As %String) As %Status [ Private ]
{
}

/// Generate HTML for the query <PARAMETER>qdef</PARAMETER>.
ClassMethod RenderForeignKeyInfo(idef As %ForeignKeyDefinition, desc As %String) As %Status [ Private ]
{
}

/// Generate HTML for the query <PARAMETER>qdef</PARAMETER>.
ClassMethod RenderTriggerInfo(idef As %TriggerDefinition, desc As %String) As %Status [ Private ]
{
}

/// Convert a list of class names (such as a <i>super</i> list) to an HTML string with hyperlinks.
ClassMethod ConvertClassList(list As %String) As %String [ Private ]
{
}

/// Convert a formal spec to an HTML string with hyperlinks.
ClassMethod ConvertFormalSpec(spec As %String) As %String [ Private ]
{
}

/// Convert a classname to a URL.
/// <br><VAR>anchor</VAR> is an anchor within the page.
/// Normalize this name for package support with the current class name.
ClassMethod ClassToUrl(name As %String, %library As %String = "%SYS", anchor As %String = "") As %String [ Private ]
{
}

/// Convert a package name to a URL.
/// <br><VAR>anchor</VAR> is an anchor within the page.
ClassMethod PackageToUrl(name As %String, %library As %String = "%SYS", anchor As %String = "") As %String [ CodeMode = expression, Private ]
{
}

/// Return <PARAMETER>num</PARAMETER> non breaking spaces '&nbsp'
ClassMethod spaces(num As %Integer) As %String [ Private ]
{
}

/// Convert a classname to an HTML hyperlink.
ClassMethod ClassToLink(name As %String, openhtml As %String = "<", %library As %String = "%SYS") As %String [ CodeMode = expression, Private ]
{
}

/// Write a description string out as HTML. Apply substitutions for
/// documatic tags.
ClassMethod RenderDescription(thisclass As %String, desc As %String, starttag As %String, endtag As %String)
{
}

/// Color the code in <PARAMETER>streamIn</PARAMETER> based on the language <PARAMETER>lang</PARAMETER>
/// and return the result in the stream <PARAMETER>streamOut</PARAMETER>. If <PARAMETER>lang</PARAMETER>
/// is 'NONE' then it will not try and syntax color the example code.
ClassMethod RenderCode(streamIn As %CharacterStream, lang As %String, streamOut As %AbstractStream)
{
}

/// The <b>DefinedBy</b> query returns a list of class names
/// that define member <VAR>member</VAR>. <VAR>type</VAR> is the
/// type of the class member, e.g., "method".
ClassMethod DefinedByExecute(ByRef QHandle As %Binary, type As %String, member As %String) As %Status
{
}

ClassMethod DefinedByClose(QHandle As %Binary) As %Status
{
}

ClassMethod DefinedByFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

/// The <b>ImplementedBy</b> query returns a list of class names
/// that implement member <VAR>member</VAR>. <VAR>type</VAR> is the
/// type of the class member, e.g., "method".
ClassMethod ImplementedByExecute(ByRef QHandle As %Binary, type As %String, member As %String) As %Status
{
}

ClassMethod ImplementedByClose(QHandle As %Binary) As %Status
{
}

ClassMethod ImplementedByFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

/// The <b>ReferencedBy</b> query returns a list of class names
/// that refer to (has properties of type) <VAR>refclass</VAR>.
ClassMethod ReferencedByExecute(ByRef QHandle As %Binary, refclass As %String) As %Status
{
}

ClassMethod ReferencedByClose(QHandle As %Binary) As %Status
{
}

ClassMethod ReferencedByFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

/// Draw HTML for class summary.
ClassMethod RenderClassSummary(pClass As %String) As %Status [ Private ]
{
}

/// Draw HTML for Zen Report Information.
ClassMethod RenderZenReportInfo(pClass As %String) As %Status [ Private ]
{
}

/// Draw HTML for Zen Page Information.
ClassMethod RenderZenPageInfo(pClass As %String) As %Status [ Private ]
{
}

/// Draw HTML for Zen Application Information.
ClassMethod RenderZenAppInfo(pClass As %String) As %Status [ Private ]
{
}

ClassMethod RenderDeprecatedBadge(pdef As %AbstractDefinition) As %String [ Private ]
{
}

}
