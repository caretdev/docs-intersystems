/// <P> Front end for reading the CSV output from %SyntaxColor:Color.  Instead of reading the stream directly and reconstructing the lines
///     you can use a %SyntaxColorReader object and call its NextLine method.
/// <P> To create a %SyntaxColorReader object you can pass a CSV stream to %New; alternatively you can call FromCode and it will call %SyntaxColor for you.
Class %Library.SyntaxColorReader Extends %RegisteredObject [ System = 4 ]
{

Property CSV As %RegisteredObject [ Private ];

Property AtEnd As %Boolean [ Calculated, Private ];

/// This is here so that we can give better error messages
Property BufferedStream As %Boolean [ Private ];

Property PositionIsNoted As %Boolean [ Private ];

/// Not valid until AtEnd
Property InfoLine As %String [ Private ];

/// Not valid until AtEnd
Property ErrorInfo As %Stream.Object [ Private ];

/// Whether or not we've rewound ErrorInfo
Property RewoundErrorInfo As %Boolean [ Private ];

/// <P> The AtEnd property can be used to check for the end of the reader over the CSV stream
Method AtEndGet() As %Boolean
{
}

/// <P> Given a code stream, language, optional extra flags and/or symbols string for %SyntaxColor:Color
/// <P> Return a %SyntaxColorReader over the resulting CSV and whether there were any coloring errors/warnings (anywhere in the document)
ClassMethod FromCode(Code As %Stream.Object, Language As %String, ExtraFlags As %String, ByRef Reader As %Library.SyntaxColorReader, ByRef AnyColoringErrors As %Boolean, ByRef AnyColoringWarnings As %Boolean, Symbols As %String = "", BufferStream As %Boolean = 0) As %Status
{
}

/// <P> Create a %SyntaxColorReader over the given CSV stream
Method %OnNew(CSV As %Stream.Object, BufferStream As %Boolean = 0) As %Status
{
}

/// <P> Return a structured list of coloring information about the current line of code represented by
///     the CSV stream, advancing the stream.  In general, a number of lines will be read from the CSV stream
///     to make up one logical line corresponding to a line of the original code.  CSV lines of the form "\n"
///     determine logical line boundaries.
/// <P> If the stream is at its end this method returns 0, otherwise 1.
/// <P> If 1 is returned the ByRef parameters are set up from the stream items which were read :-
/// <UL>
///  <LI> LineCSV is set to a list of items, where each item is $LB(lang,terminal,code)
///  <LI> ColoringErrors and ColoringWarnings are set to whether there were any coloring errors/warnings at all on the line
/// </UL>
Method NextLine(ByRef LineCSV As %List, ByRef ColoringErrors As %Boolean, ByRef ColoringWarnings As %Boolean) As %Boolean
{
}

/// <P> Move forward N lines - stops if end of file found first (doesn't report any error)
Method SkipLines(N As %Integer)
{
}

/// <P> Move back to the beginning of the stream
/// <P> - not allowed if the position is noted
Method Rewind() As %Status
{
}

/// <P> Note the current stream position, caller must call
///     RestorePosition or ForgetPosition later.
Method NotePosition() As %Status
{
}

/// <P> Restore the noted position
Method RestoreNotedPosition() As %Status
{
}

/// <P> Forget the noted position
Method ForgetNotedPosition() As %Status
{
}

/// Return the info line, if any
/// Not valid until AtEnd
Method GetInfoLine() As %String
{
}

/// Return the next error info
/// Not valid until AtEnd
Method NextErrorInfo(Output Description As %String, Output Source As %String, Output Location As %String, Output LineNumber As %Integer, Output LineOffset As %Integer) As %Boolean
{
}

}
