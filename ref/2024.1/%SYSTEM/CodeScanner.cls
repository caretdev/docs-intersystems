/// Used to scan user code looking for references to deprecated functionality.
Class %SYSTEM.CodeScanner Extends %SYSTEM.Help
{

Parameter DOMAIN = "%Utility";

/// Create a row in the PPG.
ClassMethod AddRow(idx As %Integer, doc As %String, location As %String, message As %String) [ Internal, Private ]
{
}

/// Create a row that reports <code>cls</code> as deprecated.
ClassMethod ReportClassDeprecated(idx As %Integer, doc As %String, location As %String, cls As %String) [ Internal, Private ]
{
}

/// Normalize <code>cls</code> using <code>imports</code> and create a row if it's deprecated.
/// Create a row with the error text if the normalization fails.
/// Returns the normalized class name, or the empty string if normalization failed.
ClassMethod NormalizeClassAndReport(idx As %Integer, doc As %String, location As %String, cls As %String, ByRef imports) As %String [ Internal, Private ]
{
}

/// Search <code>line</code> of ObjectScript for references to deprecated functions.
ClassMethod CheckLine(idx As %Integer, line As %String, doc As %String, docType As %Integer, location As %String, ByRef imports, ByRef zuFns, ByRef vars) [ Internal, Private ]
{
}

/// Output a subscripted array of deprecated <code>$ZUTIL</code> functions and their replacements.
/// Functions taken from <a href="https://github.com/intersystems/language-server/blob/42eb61fe90f9260dcdb08b87f28edbc7af3ecf77/server/src/utils/variables.ts#L64">InterSystems Language Server</a> VS Code extension.
ClassMethod SetUpZuFns(Output zuFns As %String) [ Internal, Private ]
{
}

/// Scan user-defined classes and routines in this namespace for references to classes and system functions that have been deprecated or should be replaced.<p>
/// ObjectScript code in the routine body, Property <code>SqlComputeCode</code>, and Method and Trigger implementations with <code>Language = objectscript</code>
/// is scanned. Classes defined with the <code>Deprecated</code> keyword will not be scanned. The <b>mapped</b> argument controls whether documents mapped from
/// a non-default database are scanned. By default, only documents in the default database will be scanned.<p>
/// The query returns:
/// <ul>
/// <li> <b>Document</b> - The name of the document, including the file extension.
/// <li> <b>Location</b> - A line number or class keyword describing where the deprecated reference is located in <b>Document</b>.
/// <li> <b>Message</b> - A string describing the deprecated reference at <b>Location</b> in <b>Document</b>.
/// </ul>
/// A row will be returned if the following code structures are encountered:
/// <ul>
/// <li> A class defined with the <code>Deprecated</code> keyword that is:
/// <ul>
/// <li> Referenced in ObjectScript code using <code>##class()</code> or <code>$SYSTEM.class.method()</code> syntax.
/// <li> In the superclass, <code>CompileAfter</code>, <code>DependsOn</code>, or <code>PropertyClass</code> list of a class definition.
/// <li> Defined as the type of an argument in a Method or class Query's argument list.
/// <li> Defined as the return type of a Method.
/// <li> Defined as the type of a Property or class Query.
/// </ul>
/// <li> A Method defined with the <code>Deprecated</code> keyword that is referenced using:
/// <ul>
/// <li> <code>##class().method()</code> syntax.
/// <li> <code>$SYSTEM.class.method()</code> syntax.
/// <li> <code>variable.method()</code> syntax, where <code>variable</code> is a method argument defined with a type
/// or a local variable with a type declared using <code>#Dim</code>.
/// <li> <code>$THIS.method()</code> syntax, when in a class definition.
/// <li> Relative dot (<code>..method()</code>) syntax, when in a class definition.
/// </ul>
/// <li> A Property defined with the <code>Deprecated</code> keyword that is referenced using:
/// <ul>
/// <li> <code>variable.property</code> syntax, where <code>variable</code> is a method argument defined with a type
/// or a local variable with a type declared using <code>#Dim</code>.
/// <li> <code>$THIS.property</code> syntax, when in a class definition.
/// <li> Instance variable (<code>i%property</code>) syntax, when in a class definition.
/// </ul>
/// <li> A Parameter defined with the <code>Deprecated</code> keyword that is referenced using:
/// <ul>
/// <li> <code>##class().#parameter</code> syntax.
/// <li> <code>variable.#parameter</code> syntax, where <code>variable</code> is a method argument defined with a type
/// or a local variable with a type declared using <code>#Dim</code>.
/// <li> <code>$THIS.#parameter</code> syntax, when in a class definition.
/// <li> Relative dot (<code>..#parameter</code>) syntax, when in a class definition.
/// </ul>
/// <li> A <code>$ZUTIL</code> function listed in the <a href="https://docs.intersystems.com/latest/csp/docbook/DocBook.UI.Page.cls?KEY=RCOS_replacements">$ZUTIL Replacements documentation</a>.
/// <li> A <code>$ZOBJ</code> function that has been <a href="https://docs.intersystems.com/latest/csp/docbook/DocBook.UI.Page.cls?KEY=GCRN_20101#GCRN_upgrade20101_zobj">replaced with a standard system function</a>.
/// <li> The <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=RCOS_macros_mpp_lbSQLCompile_Mode">#sqlcompile mode</a> macro preprocessor directive.
/// <li> <code>$ZF(-1)</code> or <code>$ZF(-2)</code>.
/// <li> Class keyword <code>LegacyInstanceContext</code> or a reference to the obsolete <code>%this</code> variable.
/// <li> Property keyword <code>SqlListDelimiter</code> or <code>SqlListType</code>.
/// <li> A Method or Trigger with keyword <code>CodeMode</code> set to 'generator'.
/// <li> A system function that is not supported in user code.
/// <li> A short class name that did not match a class in any of the imported packages.
/// <li> A short class name that matched classes in multiple imported packages and therefore was ambiguous.
/// <li> A Method or class Query argument list that is formatted incorrectly.
/// </ul>
ClassMethod ScanDocumentsExecute(ByRef qHandle As %Binary, mapped As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod ScanDocumentsClose(qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod ScanDocumentsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

/// Define the list of things to scan for. The format is:<ul>
/// <li>patterns(num)=pattern</li>
/// <li>patterns(num,"case")=case sensitive</li>
/// <li>patterns(num,"version")=version customer will see the problem in</li>
/// <li>patterns(num,"info")=description of the problem</li>
/// <li>patterns(num,"whole")=whole word pattern match</li></ul>
ClassMethod SetupPatterns(ByRef patterns As %String, ByRef info As %String) [ Internal, Private ]
{
}

/// This method is <b>deprecated</b>. Use the <QUERY>ScanDocuments</QUERY> class Query instead.<p>
/// Scan all namespaces on this system looking for code that may not work correctly due to use of unsupported features.
/// You can pass an options <var>SearchList</var> argument which is a mask of which documents to search for.
ClassMethod ScanAll(SearchList As %String = "*.*") [ Deprecated ]
{
}

/// This method is <b>deprecated</b>. Use the <QUERY>ScanDocuments</QUERY> class Query instead.<p>
/// Scan this namespace looking for code that may not work correctly due to use of unsupported features.
/// You can pass an options <var>SearchList</var> argument which is a mask of which documents to search for.
ClassMethod Scan(SearchList As %String = "*.*") [ Deprecated ]
{
}

/// Search this specific items for the string
ClassMethod searchItem(pattern As %String, Name As %String, ByRef Found As %Integer = 0, wild As %Boolean = 0, CaseSensitive As %Boolean = 1, Max As %Integer = 200, Pattern As %String, WholeWords As %Boolean = 0) As %Boolean [ Internal, Private ]
{
}

/// Search this class for the string
ClassMethod searchClassNode(Name As %String, ref As %String, type As %String, NewName As %String, pattern As %String, ByRef Found As %Integer, Tree As %String, CaseSensitive As %Boolean = 1, Max As %Integer = 200, Wild As %Boolean = 0) [ Internal, Private ]
{
}

}
