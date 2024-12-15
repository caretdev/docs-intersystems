/// <P> Implementation of TSQL scalar and other functions not supported by SQL
Class %TSQL.Impl Extends %RegisteredObject [ System = 4 ]
{

/// <P> Implement CHARINDEX(tofind,findin[,startat])
ClassMethod CHARINDEX(ToFind As %String, FindIn As %String, StartAt As %Integer = 1) As %String [ SqlName = CHARINDEX, SqlProc ]
{
}

/// <P> Implement DATALENGTH(item)
ClassMethod DATALENGTH(Item) As %Integer [ SqlName = DATALENGTH, SqlProc ]
{
}

/// <P> Implement ZWITHDATETIME(item) to append a date of 1/1/1900 and/or a time of midnight to the item if necessary
ClassMethod ZWITHDATETIME(Item As %String) As %String [ SqlName = ZWITHDATETIME, SqlProc ]
{
}

/// <P> Implement ZREMAMPM(item) to remove the "AM" or "PM" if necessary
ClassMethod ZREMAMPM(Item) As %String [ SqlName = ZREMAMPM, SqlProc ]
{
}

/// <P> Implement bitwiseOR
ClassMethod ZBITWISEOR(A, B) As %Integer [ SqlName = ZBITWISEOR, SqlProc ]
{
}

/// <P> Implement bitwiseAND
ClassMethod ZBITWISEAND(A, B) As %Integer [ SqlName = ZBITWISEAND, SqlProc ]
{
}

/// <P> Implement bitwiseXOR
ClassMethod ZBITWISEXOR(A, B) As %Integer [ SqlName = ZBITWISEXOR, SqlProc ]
{
}

/// <P> Translate a TSQL error code to a SQLCODE
ClassMethod ZCONVERRFROMTSQL(A) As %Integer [ SqlName = ZCONVERRFROMTSQL, SqlProc ]
{
}

/// <P> Format a RAISERROR message with the given arguments
ClassMethod ZFORMATMESSAGE(Message, Args...) [ SqlName = ZFORMATMESSAGE, SqlProc ]
{
}

/// <P> Given a LIKE pattern and optional LIKE ESCAPE, return the corresponding COS pattern (SQL strings)
ClassMethod ZLIKETOCOSPATTERNS(LikePattern As %String, LikeEscape As %String = "") As %String [ SqlName = ZLIKETOCOSPATTERNS, SqlProc ]
{
}

/// <P> Given a LIKE pattern and optional LIKE ESCAPE, return the corresponding COS pattern (non-SQL strings)
ClassMethod ZLIKETOCOSPATTERN(LikePattern As %String, LikeEscape As %String = "") As %String [ CodeMode = expression ]
{
}

/// <P> Given a LIKE pattern and optional LIKE ESCAPE, return a list of top-level COS pattern elements
ClassMethod ZLIKETOCOSPATTERNLIST(LikePattern As %String, LikeEscape As %String = "") As %List [ Private, SqlName = ZLIKETOCOSPATTERNLIST, SqlProc ]
{
}

/// <P> Given the position just after the "["
/// <P> Return with the position just after the "]" - or after the end of the string if there is no "]"
/// <P>
/// <P> Return the raw range text (with relevant escapes for "-" and the escape character itself still in place)
ClassMethod ExtractRangeText(LikePattern As %String, LikeEscape As %String, ByRef Pos As %Integer) As %String [ Private ]
{
}

/// <P> Given RangeText with what appeared between [..] with the escapes for LikeEscape and "-" intact
/// <P> Return a COS pattern fragment which matches the range
ClassMethod AnalyseRangePattern(RangeText As %String, LikeEscape As %String) As %String [ Private ]
{
}

ClassMethod RangeToPattern(Range As %List) As %String [ Private ]
{
}

/// <P> Look for LookIn in LookFor starting at StartLook (defaults to 1)
/// <P> If the string isn't found then 0 is returned
/// <P> If the string is found then the 1-based offset to the start of LookFor in LookIn is returned
ClassMethod Find(LookIn As %String, LookFor As %String, StartLook As %Integer = 1)
{
}

/// <P> N1-N3 are COS string positions, 1-based and 0 means not found
/// <P> If one of the positions is undisputedly earliest of the three its tag is returned
/// <P> otherwise return 0
ClassMethod CompareStringPos3(N1 As %Integer, N2 As %Integer, N3 As %Integer, Tags As %List) As %Integer [ Private ]
{
}

/// <P> N1-N2 are COS string positions, 1-based and 0 means not found
/// <P> If one of the positions is undisputedly earlier its tag is returned
/// <P> otherwise return 0
ClassMethod CompareStringPos2(N1 As %Integer, N2 As %Integer, Tags As %List) As %Integer [ Private ]
{
}

/// <P> Implement STUFF(sourcestring,startpos,replacelength,replacestring)
ClassMethod STUFF(SourceString As %String, StartPos As %Integer, ReplaceLength As %Integer, ReplaceString As %String) As %String [ SqlName = STUFF, SqlProc ]
{
}

/// <P> Implement ZRAND(scalefactor)
ClassMethod ZRAND(ScaleFactor As %Integer) As %Float [ CodeMode = expression, SqlName = ZRAND, SqlProc ]
{
}

/// <P> PATINDEX for non-literal patterns
ClassMethod ZRPATINDEX(TsqlPattern As %String, Expr As %String) As %Integer [ SqlName = ZRPATINDEX, SqlProc ]
{
}

/// <P> PATINDEX for "%"+XXX+"%" patterns
ClassMethod ZRPATINDEXPLP(TsqlInnerPattern As %String, Expr As %String) As %Integer [ SqlName = ZRPATINDEXPLP, SqlProc ]
{
}

/// <P> PATINDEX for: percent literal - returns 0/position of literal
ClassMethod ZPATINDEXPL(LiteralPart As %String, Expr As %String) As %Integer [ SqlName = ZPATINDEXPL, SqlProc ]
{
}

/// <P> PATINDEX for: percent literal rest - 0/returns position of literal
ClassMethod ZPATINDEXPLR(LiteralPart As %String, CosPattern As %String, Expr As %String) As %Integer [ SqlName = ZPATINDEXPLR, SqlProc ]
{
}

/// <P> PATINDEX for: percent non-literal - returns 0/position of non-literal
ClassMethod ZPATINDEXPN(CosPattern As %String, Expr As %String) As %Integer [ SqlName = ZPATINDEXPN, SqlProc ]
{
}

/// <P> PATINDEX for: underline(s) - returns 0/1
ClassMethod ZPATINDEXU(UnderlineCount As %Integer, Expr As %String) As %Integer [ CodeMode = expression, SqlName = ZPATINDEXU, SqlProc ]
{
}

/// <P> PATINDEX for: underline(s) literal - returns 0/1
ClassMethod ZPATINDEXUL(UnderlineCount As %Integer, LiteralPart As %String, Expr As %String) As %Integer [ CodeMode = expression, SqlName = ZPATINDEXUL, SqlProc ]
{
}

/// <P> PATINDEX for: underline(s) literal rest - returns 0/1
ClassMethod ZPATINDEXULR(UnderlineCount As %Integer, LiteralPart As %String, CosPattern As %String, Expr As %String) As %Integer [ CodeMode = expression, SqlName = ZPATINDEXULR, SqlProc ]
{
}

/// <P> PATINDEX for: literal - returns 0/1
ClassMethod ZPATINDEXL(LiteralPart As %String, Expr As %String) As %Integer [ CodeMode = expression, SqlName = ZPATINDEXL, SqlProc ]
{
}

/// <P> PATINDEX for: literal rest - returns 0/1
ClassMethod ZPATINDEXLR(LiteralPart As %String, CosPattern As %String, Expr As %String) As %Integer [ CodeMode = expression, SqlName = ZPATINDEXLR, SqlProc ]
{
}

/// <P> PATINDEX for anything that isn't covered above (FB=fallback) - returns 0/1
/// <P> - will not give the correct result for a pattern beginning with "%"
ClassMethod ZPATINDEXFB(CosPattern As %String, Expr As %String) As %Integer [ CodeMode = expression, SqlName = ZPATINDEXFB, SqlProc ]
{
}

/// <P> Implement FLOOR for COS context
ClassMethod FLOOR(Number As %String) As %Numeric [ CodeMode = expression ]
{
}

/// <P> Implement LEN for COS context
ClassMethod LEN(Str As %String) As %Integer [ CodeMode = expression ]
{
}

/// <P> Implement SUBSTRING(item, start, length)
ClassMethod SUBSTRING(Item, Start, Length) As %String [ SqlName = SUBSTRING, SqlProc ]
{
}

/// <P> Implement REPLACE(expr,old,new)
ClassMethod REPLACE(Expr As %String, Old As %String, New As %String) As %String [ SqlName = REPLACE, SqlProc ]
{
}

ClassMethod ZPATTERNMATCH(Expr As %String, CosPattern As %String) As %Integer [ SqlName = ZPATTERNMATCH, SqlProc ]
{
}

/// <P> Implement IFNULL(expr1,expr2[,expr3])
ClassMethod IFNULL(Expr1 As %String, Expr2 As %String, Expr3 As %String = "") As %String [ CodeMode = expression, SqlName = IFNULL, SqlProc ]
{
}

/// <P> Is the given value a stream id?
/// <P> - if so: return 1 and set StreamOref
/// <P> - otherwise: return 0 and set StreamOref to $$$NULLOREF
ClassMethod IsStream(Value As %String, ByRef StreamOref) As %Boolean
{
}

/// <P> Implement ROUND(number,length,function)
ClassMethod ROUND(Number As %Numeric, Length As %Integer, Function As %Integer) As %String [ SqlName = ROUND, SqlProc ]
{
}

}
