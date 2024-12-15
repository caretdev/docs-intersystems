/// Contains the DeepSee MDX query parser and related APIs.<br/>
/// This class contains no publicly accessible code.
Class %DeepSee.Query.Parser Extends %RegisteredObject [ System = 3 ]
{

/// Debug flag.
Property Trace As %Boolean [ InitialExpression = 0 ];

/// Query text.
Property Text As %String;

/// Current position within query text.
Property Position As %Integer;

/// Most recently parsed token (used for error reporting).
Property LastToken As %String;

/// Indicates the current tokens are within the %SEARCH context
Property InSearch As %Boolean [ InitialExpression = 0 ];

/// Current bookmark position within query text.
Property Bookmark As %Integer;

/// Context stack.
Property %Stack As %Integer [ MultiDimensional ];

/// The query object this parser is constructing.
Property Query As %DeepSee.Query.query;

/// Cubename within the current query.
Property CubeName As %DeepSee.Datatype.entityName;

/// Simple MDX parser.
/// Convert the MDX query in <var>pText</var> into a set of
/// DeepSee query objects (applied to <var>pQuery</var>).<br/>
/// If <var>pQuery</var> is not supplied, a new query object is created and returned.
ClassMethod %ParseMDX(pText As %String, pQuery As %DeepSee.Query.query = "", pTrace As %Boolean = 0) As %Status [ Internal ]
{
}

/// Simple MDX expression parser.
/// Convert the MDX expression in <var>pExpression</var> into a set of
/// DeepSee query objects (applied to <var>pGroup</var>).<br/>
/// <var>pQuery</var> is the outer query context which is calling this.
/// <var>pCube</var> is an optional cube to query, otherwise the one in the query context is used.
ClassMethod %ParseMDXExpression(pText As %String, pQuery As %DeepSee.Query.query, pGroup As %DeepSee.Query.group, Output pNode As %DeepSee.Query.node, pCube As %String = "") As %Status [ Internal ]
{
}

/// Take the text in <var>pText</var> and convert it to a list of tokens using MDX grammar:
/// pTokens(n) = $LB(type,value)
ClassMethod %Tokenize(pText As %String, Output pTokens As %List) As %Status [ Internal ]
{
}

/// Test if we are the end of the statement.
Method %AtEnd() As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Bookmark the current parsing position.<br/>
/// This allows us to push a token back onto the incoming stream.
Method %SetBookmark() [ Internal ]
{
}

/// Revert to last set bookmark.
Method %GotoBookmark() [ Internal ]
{
}

/// Push the current parsing state and use
/// <var>pText</var> as a token source.
Method %PushContext(pText As %String) [ Internal ]
{
}

/// Pop the current parsing state restore the prior state.
Method %PopContext() [ Internal ]
{
}

/// Test if char is a special character
ClassMethod %IsSpecialChar(char As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Test if token is a special token
ClassMethod %IsArrowToken(token As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Test if char is a part of an operator name
ClassMethod %IsOperatorChar(char As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Test if token is an operator name.
ClassMethod %IsOperatorToken(token As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Test if token is a unary operator name.
ClassMethod %IsUnaryOperatorToken(token As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Test whether <var>pIdent</var> is a quoted identifier.
ClassMethod %IsQuotedIdent(pIdent As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Return the string portion of a quoted identifier.
ClassMethod %UnquoteIdent(pIdent As %String) As %String [ CodeMode = expression, Internal ]
{
}

/// Return a quoted version of the given identifier.
/// Ignore special "&" character as well as @namedParms
/// Do not add quotes if pIdent is already bounded by a [] pair
ClassMethod %QuoteIdent(pIdent As %String) As %String [ CodeMode = expression, Internal ]
{
}

/// Return a quoted version of the given identifier. Do not check to see if the identifier is already quoted
/// Ignore special "&" character as well as @namedParms
ClassMethod %QuoteTrustedIdent(pIdent As %String) As %String [ CodeMode = expression, Internal ]
{
}

/// Return a spec with escaped identifiers, translating each "]" into a
/// "]]" to escape the closing quote. The argument <var>pIdentifierList</var>
/// may be a list of any length. The method will terminate construction upon
/// encountering the first null entry in the list.<br>
/// The <var>pIncludeKey</var> flag can be used to add a "&[]"-enclosed key as
/// the final pice of the spec generated from the <var>pIdentifierList</var>. By default the method
/// will asume no key is included in the list.
ClassMethod %BuildEscapedSpec(pIdentifierList As %List, Output pStatus As %Status, pIncludeKey As %Boolean = 0) As %String
{
}

/// Return next token within the query text and its type.
/// Type can be NUM[ber], LIT[eral], STR[ing], QSTR, OP[erator], SPEC[ial], END.
/// If there are comments, they are removed.
Method %NextToken(Output pType As %String, Output tSC As %Status) As %String [ Internal ]
{
}

/// Syntactically validate the given named parameter.
Method %ValidateNamedParm(pParmName As %String) As %Status [ Internal ]
{
}

/// Print a trace message if trace is enabled.
Method %Trace(pText As %String, pIndent As %Integer = 0) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Print out trace message (do not call directly).
Method %TraceMsg(pText As %String, pIndent As %Integer = 0) As %Boolean [ Internal ]
{
}

/// Construct a parser error message.
Method %Error(pMsg As %String, pToken As %String = "") As %Status [ Internal ]
{
}

/// Parse an MDX statement.<br/>
/// Apply the results to <var>pQuery</var>.
Method %ParseStatement(pQuery As %DeepSee.Query.query) As %Status [ Internal ]
{
}

/// Parse an MDX WITH statement.
/// If <var>pMode</var> is "with", then this is a WITH clause of a query;
/// If <var>pMode</var> is "set" or "member", then this is a CREATE statement;
Method %ParseWITH(pMode As %String = "with") As %Status
{
}

/// Parse an MDX SELECT statement.
Method %ParseSELECT() As %Status [ Internal ]
{
}

/// Parse an MDX Axis Specification statement.<br/>
/// <var>pMode</var> specifies context:
/// 0 = axis, 1 = slicer, 2 = %filter, (3 = named set).
Method %ParseAXIS(Output pAxisNum As %String, Output pAxis As %DeepSee.Query.axis, pMode As %Integer = 0) As %Status [ Internal ]
{
}

/// Parse a member expression within an MDX axis.<br/>
/// This can be a simple member specifier: "[Measures].[Sales]"<br/>
/// A range: "[Time].[2005]:[Time].[2008]"<br/>
/// or an expression: "[Measures].[Sales]>100*[Measures].[X]"<br/>
/// The member expression can contain a function: "FILTER(A.B,C.D)"<br/>
/// or a set: "{A.A,B.B}"<br/>
/// or a range: "{A.A:A.B}"<br/>
/// or a tuple: "(A.A,B.B)"<br/>
/// or some combination of these.<br/>
/// On return, <var>pNode</var> is the newly created query object
/// along with whatever children it needs..<br/>
/// <var>pCloseToken</var> is the token expected to end the tuple
/// (such as ")" for a function).<br/>
/// <var>pMode</var> specifies context:
/// 0 = axis, 1 = slicer, 2 = %filter, 3 = named set.<br/>
/// n.b., mode 2 is not used!
/// If <var>pFlags</var> is present, it contains the set of valid function flags
/// (we are parsing a function call in this case)...
Method %ParseMEMBER(pParent As %DeepSee.Query.group, Output pNode As %DeepSee.Query.node, pCloseToken As %String, pMode As %Integer, ByRef pFlags As %String, pLevel As %Integer = 1) As %Status [ Internal ]
{
}

/// Remove unneeded parens from tree.
/// <var>pEmpty</var> is set true (1) if the node has only parens and can be removed.
Method %RemoveParens(pNodeNo As %Integer, ByRef pTree, pEmpty As %Boolean) As %Status [ Internal ]
{
}

/// Used by parseMEMBER to convert expression trees into query objects.<br/>
/// <var>pNodeNo</var> is the top node number in the tree.<br/>
/// <var>pTree</var> is the expression tree.<br/>
/// <var>pObjList</var> an array of objects referenced by the tree.<br/>
/// <var>pObj</var> is the newly created object.<br/>
Method %ProcessMemberNode(pNodeNo As %Integer, ByRef pTree, ByRef pObjList, Output pObj As %DeepSee.Query.node) As %Status [ Internal ]
{
}

/// Parse an MDX FROM statement.
Method %ParseFROM() As %Status [ Internal ]
{
}

/// Parse an MDX WHERE statement.
Method %ParseWHERE() As %Status [ Internal ]
{
}

/// Parse an MDX %FILTER statement.
/// %FILTER is an ISC extension.
Method %ParseFILTER() As %Status [ Internal ]
{
}

/// Parse an MDX RETURN statement (used by DRILLTHROUGH statements).
/// A RETURN statement is basically the SELECT list used against
/// the source table to return rows.<br/>
/// Also tests for %LISTING statement: "DRILLTHROUGH ... %LISTING LISTINGNAME"
Method %ParseRETURN() As %Status [ Internal ]
{
}

/// Take a string containing a member specification,
/// "[Member1].[Member2]", and return an array of the member
/// names indexed by ordinal position as well as an array of whether
/// a term was quoted or not.<br/>
/// <var>pMemberKey</var> is array indicating if a member key (&[]) is specified for an item.<br/>
/// This is used later in query processing.
ClassMethod %ParseMemberSpec(pText As %String, Output pInfo, Output pQuoted, Output pMemberKey) As %Status [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
/// <p>It is passed the arguments provided in the %New call.
/// When customizing this method, override the arguments with whatever variables and types you expect to receive from %New().
/// For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:
/// <p>Method %OnNew(dob as %Date = "", name as %Name = "") as %Status
Method %OnNew(text As %RawString) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// Returns true if <var>op1</var> has precedence over <var>op2</var>.
ClassMethod %TestPrecedence(op1 As %String, op2 As %String) As %Boolean [ Internal ]
{
}

/// Perform initial checks on the MDX text itself to see if there are obvious errors that can be reported
/// without further processing.
Method %ValidateText(pQuery As %DeepSee.Query.query = {$$$NULLOREF}, pText = "") As %Status
{
}

}
