Class %ZEN.Report.Display.COSChart.dsFormulaParser Extends %RegisteredObject [ Deprecated ]
{

Property parseTree As parseTreeNode;

Property engine As dsFormulaEngine;

Property funcSet As list Of function;

Property errorHTML As %String;

Property lookupTable As %String [ MultiDimensional ];

Property dsFormulaLastError As %String;

Method %OnNew() As %Status
{
}

/// Connect a function set to the parser.
Method setFunctionSet(funcSet)
{
}

/// Evaluate a DeepSee formula.
/// lookupFunc is a function used to lookup ident values.
Method eval(lookupFunc)
{
}

/// Get the parse tree.
Method getTree()
{
}

/// Set the parse tree directly.
Method setTree(tree)
{
}

/// Evaluate a node within a parse tree
Method evalNode(node, lookupFunc)
{
}

/// Parse a DeepSee formula.
Method parse(expr)
{
}

/// tokenize a DeepSee formula; return a list of tokens.
/// each token is of the form: {type:ident|func|,|(|)|unary|op|string|number , value:value}
/// In ObjectScript the tokenList is a list of parseTreeNodes.
Method tokenize(expr)
{
}

/// Reduce the token list (tokens) into a parse tree (expr) and return the top node of it.
Method reduceTokens(tokens, expr)
{
}

/// Reduce a function within a token list.
/// Return index of next token.
Method reduceFunction(tokens, offset, expr)
{
}

/// Make a pass over expression and make sure parens and quotes are balanced
Method isExpressionBalanced(expr)
{
}

/// Return error HTML.
Method dsGetErrorHTML(code, msg, expr, start, end)
{
}

Method isBinaryOperator(ch)
{
}

Method isUnaryOperator(ch)
{
}

Method isOperatorChar(ch)
{
}

Method isUnaryOperatorChar(ch)
{
}

Method isWhiteSpace(ch)
{
}

Method isIdentChar(ch, start)
{
}

Method isSpecialChar(ch)
{
}

/// test if complete token is a valid identifier
ClassMethod isValidIdent(token)
{
}

/// test if token is a valid class name
ClassMethod isValidClassName(token)
{
}

/// test if token is a supported function name
Method isFunction(token)
{
}

/// Test if op1 has precendence over op2
Method testPrecedence(op1, op2)
{
}

/// Return the precedence value for the given operator.
Method getPrecedence(op)
{
}

ClassMethod get(arg, defvalue)
{
}

Method findFunctionInFunctionSet(func)
{
}

ClassMethod lastIndexOf(string, substring)
{
}

ClassMethod Insert(array, obj)
{
}

}
