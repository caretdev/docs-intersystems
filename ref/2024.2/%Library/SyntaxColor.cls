/// <P> Syntax color source code, generating HTML markup and stylesheets.
/// <P><B> Note that this class is only available in Windows (both 32-bit and 64-bit) at present.</B>
Class %Library.SyntaxColor Extends %RegisteredObject [ Not ProcedureBlock, System = 3 ]
{

/// <P> How we call the DLL
/// <P>
/// <P> Takes one of the following values :-
/// <UL>
///  <LI><P> 1 - use $ZF(-3)         ... handy for debugging the DLL because it doesn't stay loaded
///  <LI><P> 2 - use $ZF(-4)/$ZF(-5) ... to cache the DLL handle
///  <LI><P> 3 - use $ZF(-4)/$ZF(-6) ... the default - there's normally no reason to change it
/// </UL>
/// <P>
/// <P>Initialised to 3
Property DLLCallMode As %Integer [ InitialExpression = 3 ];

/// <P> The cached DLLHandle (used only when DLLCallMode=2)
Property DLLHandle As %Integer [ InitialExpression = 0 ];

/// <P>Set to a result code string returned by CacheColorHTML.DLL.
/// <P>
/// <P>Mainly of use to Intersystems support.
Property DLLResultCode As %String;

/// <P> Set to the underscore-suppression flag as last used in a call to Color
/// <P> - so that we can pass it to GetCSS
Property NoStyleNameUnderscore As %Boolean [ InitialExpression = 0 ];

Parameter ORDINALCOLOR = 1;

Parameter ORDINALGETCSS = 2;

Parameter ORDINALLANGUAGES = 3;

Parameter ORDINALATTRIBUTES = 4;

Property OrdinalOffset As %Integer [ InitialExpression = 0, Internal ];

Method %OnClose() As %Status
{
}

/// <P> Syntax color the given source code using the given language.
/// <P><B> Note that this class is only available in Windows (both 32-bit and 64-bit) at present.</B>
/// <P>
/// <UL>
///  <LI><P> InStream is a stream containing the source code, we rewind it before using it
///  <LI><P> OutStream is a stream to which the HTML (or CSV) is written (not the stylesheet - you need to use GetCSS for that)
///  <LI><P> Language is the lang moniker for the language (e.g. "BAS", "JS", "COS", "HTML").  The default is "COS"
///  <LI><P> Flags is a string of flag letters.  A flag letter can be followed by "=" and a list of subflags (terminated by a ",").
///  <LI><P> DefFg and DefBg are ignored if stylesheets are used.  When stylesheets are not used DefFg and DefBg
///          are HTML color codes in hex #xxxxxx format (i.e. they should be passed as strings).  They default to black
///          and white, respectively.  They are used whenever a color is specified as "default foreground" or "default
///          background" in the Studio registry settings.
///  <LI><P> Langs is returned with a list of language monikers used (so you know what stylesheets to request) - e.g. $LB("COS","HTML")
///  <LI><P> ColoringErrors is returned with 0 if there were no syntax coloring errors, 1 otherwise
/// </UL>
/// <P> Some flags only apply to certain output modes (HTML/CSV/XML).  Supported flags are :-
///  <UL>
///   <LI><P>S/s (HTML) specifies that stylesheets should be used, otherwise it just embeds FONT settings into the marked up source
///   <LI><P>P/p (HTML) suppresses the enclosing &lt;PRE&gt;...&lt;/PRE&gt;
///   <LI><P>F/f (HTML) suppresses the outer &lt;FONT&gt;...lt;/FONT&gt; which sets the default foreground and background
///   <LI><P>I/i (HTML) inserts an HTML comment just before &lt;/PRE&gt; (or the error messages section) if present, otherwise at the end of the output;
///                     the comment contains information about the parsers used and the HTML rendering
///   <LI><P>I/i (CSV)  inserts "\i" followed by parser information at the end of the output
///   <LI><P>I/i (XML)  writes an &lt;info info="..."/&gt; tag at the end of the output (before &lt;/color&gt;) with the parser information as the attribute value
///   <LI><P>U/u (HTML) suppresses the "_" character in style names
///   <LI><P>C/c selects CSV output (see below)
///   <LI><P>Q selects XML output (but if C/c is given as well Q flag is ignored)
///       <P>The Q can be followed by "=" and one or more (case-sensitive) subflags to tailor the XML output :-
///       <UL>
///        <LI><P>P .. include XML prolog ("&lt;?xml...") at start of output
///        <LI><P>L .. include source language in the XML tag name - e.g. &lt;COS_Command&gt;
///        <LI><P>l .. include source language as an XML attribute - e.g. &lt;Command language="COS"&gt;
///        <LI><P>N .. wrap XML tags for each source line in &lt;line&gt;...&lt;/line&gt; tags
///        <LI><P>n .. use &lt;newline/&gt; tags to mark line-breaks
///       </UL>
///       <P>Notes:
///       <OL>
///        <LI><P>If neither L nor l is given the attribute language is not shown.
///        <LI><P>If neither N nor n is given the line-breaks are not shown.
///       </OL>
///   <LI><P>E/e (ALL)  includes empty source lines in the output
///   <LI><P>A/a (CSV)  outputs attribute descriptions instead of hexadecimal codes
///   <LI><P>B/b (CSV)  outputs both a hexadecimal code and an attribute description, separated by a "|" character
///   <LI><P>R/r (HTML) inserts one or more HTML comments just before &lt;/PRE&gt; if present, otherwise at the end of the output;
///                     the comments contain coloring error messages returned by the parsers
///   <LI><P>R/r (CSV)  inserts one or more lines at the end of the output, each consisting of "\e " followed by a tab-delimited
///                     record made up of the fields of a parser coloring error :- description,source,location,linenumber,lineoffset
///                     (linenumber and lineoffset are 1-based)
///                     (any tab character in the original error info is converted to a space)
///   <LI><P>R/r (XML)  writes one or &lt;error message="..."/&gt; tag at the end of the output (before &lt;/color&gt;) with
///                     parser coloring error messages as the attribute values
///  </UL>
/// <P>
/// <P> CSV output writes a line to the output stream for each syntax element and for each special element :-
/// <UL>
///  <LI><P>a syntax element is written as a record with commas delimiting the three components :-
///   <UL>
///    <LI><P>the first component is the language name - e.g. COS
///    <LI><P>the second component is the terminal index in base 16 - e.g. 2F
///    <LI><P>the third component is the source code fragment
///   </UL>
///   <P>Note that the third component can contain commas.
///  <LI><P> a special element begins with "\" :-
///   <UL>
///    <LI><P>"\n" indicates newline in the source
///    <LI><P>"\i " precedes an information line, shown when the I flag is given
///   </UL>
/// </UL>
/// <P> The S, P, F and U flags and the DefFg and DefBg parameters are ignored when CSV/XML output is selected.
/// <P>
/// <P> The method returns 1 if it succeeded in generating the required HTML, CSV or XML; 0 if it failed to do so.  In the case of failure the
///     DLLResultCode property will sometimes contain a message with more information about the failure.
/// <P>
/// <P> Typical use :-
/// <EXAMPLE>
/// Set instr=##class(%GlobalCharacterStream).%New()
/// Do instr.WriteLine(" &SQL(SELECT * FROM A WHERE B=C)")
/// Set outstr=##class(%GlobalCharacterStream).%New()
/// Set colorer=##class(%SyntaxColor).%New()
/// Set ret=colorer.Color(instr,outstr,"COS","PFS",,,.langs,.coloringerrors)
/// If 'ret {Write "Fatal error: ",colorer.DLLResultCode,! Quit}
/// If coloringerrors {
///   Write "Syntax error(s)",!
/// }
/// Do outstr.Rewind()
/// While 'outstr.AtEnd {
///   Write outstr.ReadLine(),!
/// }
/// </EXAMPLE>
Method Color(InStream As %Stream.Object, OutStream As %Stream.Object, Language As %String = "COS", Flags As %String = "", DefFg As %String = "#000000", DefBg As %String = "#FFFFFF", ByRef Langs As %String, ByRef ColoringErrors As %Boolean, ByRef ErrorEnv As %String, ByRef ColoringWarnings As %Boolean, Symbols As %String = "") As %Boolean
{
}

/// <P>Helper function to return the InterSystems IRIS configuration name.
Method ConfigName() As %String [ Private ]
{
}

/// <P> Generates a CSS stylesheet for the given language moniker.
/// <P><B> Note that this class is only available in Windows (both 32-bit and 64-bit) at present.</B>
/// <UL>
///  <LI><P> OutStream is a stream to which the stylesheet is written
///  <LI><P> Language is the language moniker (e.g. "COS" or "BAS")
/// </UL>
/// <P> The method returns 1 if it succeeded in generating the required stylesheet, 0 if it failed to do so.  In the case of failure the
///     DLLResultCode property will sometimes contain a message with more information about the failure.
/// <P> Underscores are suppressed in the style names if either Color was last called with this flag OR if you explicitly set NoStyleNameUnderscore before calling this method
/// <P>
/// <P> Typical use (continues on from the <METHOD>Color</METHOD> example) :-
/// <P>
/// <EXAMPLE>
/// Set css=##class(%GlobalCharacterStream).%New()
/// For i=1:1:$ListLength(langs) D colorer.GetCSS(css,$List(langs,i))
/// Do css.Rewind()
/// While 'css.AtEnd {
///   Write css.ReadLine(),!
/// }
/// </EXAMPLE>
Method GetCSS(OutStream As %Stream.Object, Language As %String = "COS", Format As %Integer) As %Boolean
{
}

/// <P> Return a $List of canonical language monikers
/// <P> The first moniker corresponds to language #0 in the K-flag JSON output
Method Languages(ByRef Languages As %List) As %Boolean
{
}

/// <P> Return a $List of coloring attribute names for the given language
/// <P> The first name corresponds to attribute #0 in the K-flag JSON output
/// <P> The language can be passed as a numerical index or as a canonical language moniker as returned by <METHOD>Languages</METHOD>
Method Attributes(Language, ByRef Attributes As %List) As %Boolean
{
}

/// <P> Invoke the CacheColorHTML DLL function (DLLFunction), passing DLLArgs.
/// <P> Returns what the $ZF call into the DLL returns, or something in the same format :-
/// <P> $LISTBUILD(ZFOK, $LISTBUILD(Lang1, Lang2, ...), ColoringErrors, DLLResultCode)
Method InvokeDLL(DLLFunction As %Integer, DLLArgs) As %List [ Private ]
{
}

/// <P> Sets failed to 1 if the $ZF(-5,..) call fails, otherwise sets it to 0 and returns the DLL return code
Method ZF5(handle As %Integer, DLLFunction As %Integer, DLLArgs, ByRef failed As %Boolean) As %String [ Private ]
{
}

/// <P> Sets failed to 1 if the $ZF(-6,..) call fails, otherwise sets it to 0 and returns the DLL return code
Method ZF6(DLLPath32 As %String, DLLPath64 As %String, DLLFunction As %Integer, DLLArgs, ByRef failed As %Boolean) As %String [ Private ]
{
}

/// <P> Return the path to the DLL
ClassMethod PathToDLL(SixtyFour As %Boolean) As %String [ CodeMode = expression ]
{
}

/// <P> Return whether two Studio language monikers are for the same language (ignoring moniker extensions)
ClassMethod SameLanguage(Lang1 As %String, Lang2 As %String) As %Boolean [ ProcedureBlock = 1 ]
{
}

/// <P> Given the procedure block setting and optional lists of parameter and public names (with optional '=xxx' tails)
/// <BR> Return a string suitable for passing as a Symbols parameter to <METHOD>Color</METHOD>
/// <P> ProcedureBlock must be omitted or passed as 1 for coloring warnings to be available
/// <BR> - if ProcedureBlock is "" the PROCBLOCK symbol is not set at all
ClassMethod SymbolsString(ProcedureBlock As %Boolean = 1, ParameterNames As %List = "", PublicNames As %List = "") As %String [ ProcedureBlock = 1 ]
{
}

/// <P> Given a list of names or 'name=value' strings and a list of symbol kinds (not documented)
/// <P> Return a linefeed-delimited list of assignments to the names for each name/kind combination
ClassMethod Assignments(NameValues As %List, SymbolKinds As %List) As %String [ Private, ProcedureBlock = 1 ]
{
}

/// <P> Given a list of strings: combine the ones which are non-empty, separating them using the given delimiter
ClassMethod Join(SubStrings As %List, Delimiter As %String) As %String [ ProcedureBlock = 1 ]
{
}

}
