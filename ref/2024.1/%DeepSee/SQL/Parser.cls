/// Include %qaqplex
Class %DeepSee.SQL.Parser Extends %RegisteredObject
{

Property %Input As %String [ MultiDimensional ];

/// The ordered list of complete tokens
Property %TokenList As %DynamicArray;

/// Current position in the string
Property %Position As %Integer [ InitialExpression = 0 ];

/// Current part of the input being processed
Property %InputPart As %Integer [ InitialExpression = 0 ];

/// Accumulator for the current token
Property %CurrentToken As %String;

/// Container for the last complete token. This is used for looking back when
/// there are multiple tokens in a succession.
Property %LastToken As %String;

/// Any state information can be packed into this object, which can be pushed or popped from a stack if needed.
Property state As %DynamicObject;

/// Stack for changing state
Property stack As %DynamicArray;

/// Optionally set the input as the object is created.
Method %OnNew(pInput As %String) As %Status
{
}

/// Initialize the state object.
Method %InitializeState() As %Status
{
}

/// Set the current input to be analyzed.
Method %SetInput(pInput) As %Status
{
}

/// Walk through the string per character and tokenize.
Method %Tokenize() As %Status
{
}

/// Investigate the current position for $ tokens. Returns the number of
/// consecutive dollar sign characters beginning at the current position
Method %CheckDollar(pString As %String = "") As %Integer [ Private ]
{
}

/// Test for white space character
Method %IsWhiteSpace(pChar As %String = "") As %Boolean [ Private ]
{
}

/// Test for a characer separating two different terms.
Method %IsSeparatorChar(pChar As %String = "", pPosition As %Integer = {..%Position}) As %Boolean [ Private ]
{
}

/// Test for a single-character operator
Method %IsOperatorChar(pChar As %String = "", Output pOpLength) As %Boolean
{
}

/// Test for an opertor token of arbitrary length
Method %IsOperatorToken(pToken As %String = "") As %Boolean
{
}

/// Test for a supported function
Method %IsFunction(pToken As %String = "", Output pFunctionArity) As %Boolean [ Private ]
{
}

/// Test for a supported scalar function
Method %IsScalarFunction(pToken As %String = "", Output pFunctionArity) As %Boolean [ Private ]
{
}

Method %IsAggFunction(pToken As %String = "", Output pFunctionArity) As %Boolean [ Private ]
{
}

/// Type arguments in the CAST function can look like
Method %IsCastType(pToken As %String = "", pFunctionArity) As %Boolean [ Private ]
{
}

/// Test for one of the DeepSee-specific macro functions
Method %IsDSMacro(pToken As %String = "", pFunctionArity) As %Boolean [ Private ]
{
}

Method %IsUserFunction(pFunction, pLastToken = {..%LastToken}) As %Boolean
{
}

Method %PushCurrentToken() As %Status [ Private ]
{
}

/// Push the current parser state to the stack and initialize a new state object
Method %PushState() As %Status [ Private ]
{
}

/// Restore the last state from the top of the stack.
Method %PopState() As %Status [ Private ]
{
}

/// Parse SELECT list for a DeepSee listing. The output <var>pParsedTree</var> is a %DynamicArray containing the individual select terms.
ClassMethod %ParseSelect(pSelectTokens As %DynamicArray, Output pParsedTree, Output pSpecialTokens) As %Status
{
}

/// Returns the current %TokenList array
Method %GetTokenList() As %DynamicArray
{
}

/// Print the current inputas set by <method>%SetInput</method>. If <var>pVerbose</var> = 1, print the string
/// to the current device.
Method %PrintInput(pVerbose = 1) As %String
{
}

Method %PrintTokenList(pVerbose = 1) As %String
{
}

/// Reassemble the select Item in both the logical and display versions. The parameter <var>pLocalize</var> allows the caller to request translation
/// of the header string to the current locale. A default domain for this translation can be supplied via
/// <var>pDomain</var>. When defined, this default is used if there is no domain explicitly declared as the
/// second argument of $$$TEXT.
Method %ProcessSelectItem(pSelectItemTokens As %DynamicArray, pHeaderPos, pDomain As %String = "", Output pSelectItemPair, pLocalize As %Boolean = 0) As %Status
{
}

/// Extract the display header from the $$$TEXT macro. The parameter <var>pLocalize</var> allows the caller to request translation
/// of the header string to the current locale. A default domain for this translation can be supplied via
/// <var>pDomain</var>. When defined, this default is used if there is no domain explicitly declared as the
/// second argument of $$$TEXT.
Method %ProcessDsTEXT(pTextMacroTokens As %DynamicArray, pDomain As %String = "", Output pStatus, pLocalize As %Boolean = 0) As %String
{
}

}
