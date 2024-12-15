/// Server-side implementation and utilities for Worksheet formulae.
Class %DeepSee.WorksheetEngine Extends %RegisteredObject [ Abstract, System = 4 ]
{

Parameter DOMAIN = "%DeepSee";

/// Given a worksheet name, open it and load the data needed to drive a dyna grid control.
/// If <var>pComputed</var> is true return the computed values for each cell,
/// otherwise return the original values, which could include formula.
ClassMethod %LoadDataSet(pWorksheetName As %String, pGrid As %ZEN.Component.dynaGrid, pDataSet As %ZEN.Auxiliary.dataSet, pComputed As %Boolean = 0) As %Status [ Internal ]
{
}

/// DIAGNOSTIC!!!
ClassMethod TestTokens(pExpr As %String) [ Internal ]
{
}

/// Split the formula <var>expr</var> into a token list:<br/>
/// tokens(n,"token") = token<br/>
/// tokens(n,"pos") = position in expr<br/>
/// tokens(n,"type") = string | number | ident | func |op |unary | ( | ) | , | end
/// Returns "" if the formula is correct else an error message.
/// Note that idents are also returned as escaped: [a]
ClassMethod %Tokenize(expr As %String, ByRef pTokens As %String) As %String [ Internal ]
{
}

/// Returns true if <var>op1</var> has precedence over <var>op2</var>.
ClassMethod TestPrecedence(op1 As %String, op2 As %String) As %Boolean [ Internal ]
{
}

/// Test if token is a valid (unquoted) identifier.
ClassMethod IsValidIdent(token As %String) As %Boolean [ Internal ]
{
}

/// Test if token is a unary operator
ClassMethod IsUnaryOperator(token As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Test if token is a binary operator
ClassMethod IsBinaryOperator(token As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Test if char is a part of an unary operator name
ClassMethod IsUnaryOperatorChar(char As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Test if char is a part of an operator name
ClassMethod IsOperatorChar(char As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Test if char is a special character "(" ")" or ","
ClassMethod IsSpecialChar(char As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Test if char can be part of an identifier
ClassMethod IsIdentChar(char As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Test if char is a whitespace character
ClassMethod IsWhiteSpace(char As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Evaluate the given expression.<br/>
ClassMethod %Evaluate(pExpr As %String, pContextObj As %RegisteredObject = "", Output pErrorMsg As %String, Output pSC As %Status) As %String [ Internal ]
{
}

/// DIAGNOSTIC!!!
ClassMethod Test(expr As %String, ByRef tree) [ Internal ]
{
}

ClassMethod %PrintParseNode(ByRef tree, node As %Integer, level As %Integer = 0) [ Internal ]
{
}

/// Parse the expr into a parse tree <var>tree</var><br>
/// Returns "" if ok or else an error message.<br>
/// <var>pPropList</var> returns an array of properties referenced
/// by the expression.
/// <var>pFuncList</var> returns an array of functions referenced
/// by the expression.
ClassMethod %Parse(pExpr As %String, Output tree As %String, Output pPropList As %String, Output pFuncList As %String) As %String [ Internal ]
{
}

/// Generate an executable COS expression for part of the parse tree<br/>
/// <var>context</var> is the name of the object variable containing runtime context.<br/>
/// Returns "" for error (assumes that parse tree has already been checked)
/// NOT USED
ClassMethod %GenExpression(ByRef pErr As %String, pContext As %String, ByRef tree As %String, node As %String = "") As %String
{
}

/// Evaluates part of the parse tree.<br/>
/// <var>pContext</var> is the object variable containing runtime context.<br/>
/// Returns "" for error (assumes that parse tree has already been checked)
ClassMethod %EvalExpression(ByRef pErr As %String, pContext As %String, ByRef tree As %String, node As %String = "") As %String
{
}

/// Diagnostic method. Create a test worksheet and save it.
ClassMethod %CreateTestWorksheet(pName As %String, Output pWorksheet) As %Status [ Internal ]
{
}

/// Given a worksheet name (with no extension), open it and load the data needed to drive a json provider.
/// If <var>pComputed</var> is true return the computed values for each cell,
/// otherwise return the original values, which could include formula.
ClassMethod %LoadWorksheet(pWorksheetName As %String, pComputed As %Boolean = 0, Output pObject As %DeepSee.UserLibrary.Worksheet) As %Status [ Internal ]
{
}

/// Given a worksheet name and a proxy object, save it as a folder item.
ClassMethod %SaveWorksheet(pWorksheetName As %String, pObject As %ZEN.proxyObject) As %Status [ Internal ]
{
}

}
