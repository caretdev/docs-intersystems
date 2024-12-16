"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[75602],{92322:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>i,default:()=>c,frontMatter:()=>a,toc:()=>l});var r=n(74848),t=n(28453);const a={pagination_prev:null,pagination_next:null},i="%DeepSee.Query.Parser",l=[{value:"Properties",id:"properties",level:2},{value:"Trace",id:"trace",level:3},{value:"Text",id:"text",level:3},{value:"Position",id:"position",level:3},{value:"LastToken",id:"lasttoken",level:3},{value:"InSearch",id:"insearch",level:3},{value:"Bookmark",id:"bookmark",level:3},{value:"%Stack",id:"stack",level:3},{value:"Query",id:"query",level:3},{value:"CubeName",id:"cubename",level:3},{value:"Methods",id:"methods",level:2},{value:"%ParseMDX",id:"parsemdx",level:3},{value:"%ParseMDXExpression",id:"parsemdxexpression",level:3},{value:"%Tokenize",id:"tokenize",level:3},{value:"%AtEnd",id:"atend",level:3},{value:"%SetBookmark",id:"setbookmark",level:3},{value:"%GotoBookmark",id:"gotobookmark",level:3},{value:"%PushContext",id:"pushcontext",level:3},{value:"%PopContext",id:"popcontext",level:3},{value:"%IsSpecialChar",id:"isspecialchar",level:3},{value:"%IsArrowToken",id:"isarrowtoken",level:3},{value:"%IsOperatorChar",id:"isoperatorchar",level:3},{value:"%IsOperatorToken",id:"isoperatortoken",level:3},{value:"%IsUnaryOperatorToken",id:"isunaryoperatortoken",level:3},{value:"%IsQuotedIdent",id:"isquotedident",level:3},{value:"%UnquoteIdent",id:"unquoteident",level:3},{value:"%QuoteIdent",id:"quoteident",level:3},{value:"%QuoteTrustedIdent",id:"quotetrustedident",level:3},{value:"%BuildEscapedSpec",id:"buildescapedspec",level:3},{value:"%NextToken",id:"nexttoken",level:3},{value:"%ValidateNamedParm",id:"validatenamedparm",level:3},{value:"%Trace",id:"trace-1",level:3},{value:"%TraceMsg",id:"tracemsg",level:3},{value:"%Error",id:"error",level:3},{value:"%ParseStatement",id:"parsestatement",level:3},{value:"%ParseWITH",id:"parsewith",level:3},{value:"%ParseSELECT",id:"parseselect",level:3},{value:"%ParseAXIS",id:"parseaxis",level:3},{value:"%ParseMEMBER",id:"parsemember",level:3},{value:"%RemoveParens",id:"removeparens",level:3},{value:"%ProcessMemberNode",id:"processmembernode",level:3},{value:"%ParseFROM",id:"parsefrom",level:3},{value:"%ParseWHERE",id:"parsewhere",level:3},{value:"%ParseFILTER",id:"parsefilter",level:3},{value:"%ParseRETURN",id:"parsereturn",level:3},{value:"%ParseMemberSpec",id:"parsememberspec",level:3},{value:"%OnNew",id:"onnew",level:3},{value:"%TestPrecedence",id:"testprecedence",level:3},{value:"%ValidateText",id:"validatetext",level:3}];function o(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"deepseequeryparser",children:"%DeepSee.Query.Parser"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.Query.Parser Extends %RegisteredObject [ System = 3 ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["Contains the DeepSee MDX query parser and related APIs.",(0,r.jsx)(s.br,{}),"\nThis class contains no publicly accessible code."]}),"\n",(0,r.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(s.h3,{id:"trace",children:"Trace"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Trace As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Debug flag."}),"\n",(0,r.jsx)(s.h3,{id:"text",children:"Text"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Text As %String;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Query text."}),"\n",(0,r.jsx)(s.h3,{id:"position",children:"Position"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Position As %Integer;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Current position within query text."}),"\n",(0,r.jsx)(s.h3,{id:"lasttoken",children:"LastToken"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property LastToken As %String;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Most recently parsed token (used for error reporting)."}),"\n",(0,r.jsx)(s.h3,{id:"insearch",children:"InSearch"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property InSearch As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Indicates the current tokens are within the %SEARCH context"}),"\n",(0,r.jsx)(s.h3,{id:"bookmark",children:"Bookmark"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Bookmark As %Integer;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Current bookmark position within query text."}),"\n",(0,r.jsx)(s.h3,{id:"stack",children:"%Stack"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property %Stack As %Integer [ MultiDimensional ];\n"})}),"\n",(0,r.jsx)(s.p,{children:"Context stack."}),"\n",(0,r.jsx)(s.h3,{id:"query",children:"Query"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property Query As %DeepSee.Query.query;\n"})}),"\n",(0,r.jsx)(s.p,{children:"The query object this parser is constructing."}),"\n",(0,r.jsx)(s.h3,{id:"cubename",children:"CubeName"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Property CubeName As %DeepSee.Datatype.entityName;\n"})}),"\n",(0,r.jsx)(s.p,{children:"Cubename within the current query."}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"parsemdx",children:"%ParseMDX"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %ParseMDX(pText As %String, pQuery As %DeepSee.Query.query = "", pTrace As %Boolean = 0) As %Status [ Internal ]\n'})}),"\n",(0,r.jsxs)(s.p,{children:["Simple MDX parser. Convert the MDX query in pText into a set of DeepSee query objects (applied to pQuery).",(0,r.jsx)(s.br,{}),"\nIf pQuery is not supplied, a new query object is created and returned."]}),"\n",(0,r.jsx)(s.h3,{id:"parsemdxexpression",children:"%ParseMDXExpression"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod %ParseMDXExpression(pText As %String, pQuery As %DeepSee.Query.query, pGroup As %DeepSee.Query.group, Output pNode As %DeepSee.Query.node, pCube As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsxs)(s.p,{children:["Simple MDX expression parser. Convert the MDX expression in pExpression into a set of DeepSee query objects (applied to pGroup).",(0,r.jsx)(s.br,{}),"\npQuery is the outer query context which is calling this. pCube is an optional cube to query, otherwise the one in the query context is used."]}),"\n",(0,r.jsx)(s.h3,{id:"tokenize",children:"%Tokenize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %Tokenize(pText As %String, Output pTokens As %List) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Take the text in pText and convert it to a list of tokens using MDX grammar: pTokens(n) = $LB(type,value)"}),"\n",(0,r.jsx)(s.h3,{id:"atend",children:"%AtEnd"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %AtEnd() As %Boolean [ CodeMode = expression, Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Test if we are the end of the statement."}),"\n",(0,r.jsx)(s.h3,{id:"setbookmark",children:"%SetBookmark"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %SetBookmark() [ Internal ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["Bookmark the current parsing position.",(0,r.jsx)(s.br,{}),"\nThis allows us to push a token back onto the incoming stream."]}),"\n",(0,r.jsx)(s.h3,{id:"gotobookmark",children:"%GotoBookmark"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %GotoBookmark() [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Revert to last set bookmark."}),"\n",(0,r.jsx)(s.h3,{id:"pushcontext",children:"%PushContext"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %PushContext(pText As %String) [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Push the current parsing state and use pText as a token source."}),"\n",(0,r.jsx)(s.h3,{id:"popcontext",children:"%PopContext"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %PopContext() [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Pop the current parsing state restore the prior state."}),"\n",(0,r.jsx)(s.h3,{id:"isspecialchar",children:"%IsSpecialChar"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %IsSpecialChar(char As %String) As %Boolean [ CodeMode = expression, Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Test if char is a special character"}),"\n",(0,r.jsx)(s.h3,{id:"isarrowtoken",children:"%IsArrowToken"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %IsArrowToken(token As %String) As %Boolean [ CodeMode = expression, Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Test if token is a special token"}),"\n",(0,r.jsx)(s.h3,{id:"isoperatorchar",children:"%IsOperatorChar"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %IsOperatorChar(char As %String) As %Boolean [ CodeMode = expression, Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Test if char is a part of an operator name"}),"\n",(0,r.jsx)(s.h3,{id:"isoperatortoken",children:"%IsOperatorToken"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %IsOperatorToken(token As %String) As %Boolean [ CodeMode = expression, Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Test if token is an operator name."}),"\n",(0,r.jsx)(s.h3,{id:"isunaryoperatortoken",children:"%IsUnaryOperatorToken"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %IsUnaryOperatorToken(token As %String) As %Boolean [ CodeMode = expression, Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Test if token is a unary operator name."}),"\n",(0,r.jsx)(s.h3,{id:"isquotedident",children:"%IsQuotedIdent"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %IsQuotedIdent(pIdent As %String) As %Boolean [ CodeMode = expression, Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Test whether pIdent is a quoted identifier."}),"\n",(0,r.jsx)(s.h3,{id:"unquoteident",children:"%UnquoteIdent"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %UnquoteIdent(pIdent As %String) As %String [ CodeMode = expression, Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return the string portion of a quoted identifier."}),"\n",(0,r.jsx)(s.h3,{id:"quoteident",children:"%QuoteIdent"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %QuoteIdent(pIdent As %String) As %String [ CodeMode = expression, Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:'Return a quoted version of the given identifier. Ignore special "&" character as well as @namedParms Do not add quotes if pIdent is already bounded by a [] pair'}),"\n",(0,r.jsx)(s.h3,{id:"quotetrustedident",children:"%QuoteTrustedIdent"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %QuoteTrustedIdent(pIdent As %String) As %String [ CodeMode = expression, Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:'Return a quoted version of the given identifier. Do not check to see if the identifier is already quoted Ignore special "&" character as well as @namedParms'}),"\n",(0,r.jsx)(s.h3,{id:"buildescapedspec",children:"%BuildEscapedSpec"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %BuildEscapedSpec(pIdentifierList As %List, Output pStatus As %Status, pIncludeKey As %Boolean = 0) As %String\n"})}),"\n",(0,r.jsxs)(s.p,{children:['Return a spec with escaped identifiers, translating each "]" into a "]]" to escape the closing quote. The argument pIdentifierList may be a list of any length. The method will terminate construction upon encountering the first null entry in the list.',(0,r.jsx)(s.br,{}),'\nThe pIncludeKey flag can be used to add a "&[]"-enclosed key as the final pice of the spec generated from the pIdentifierList. By default the method will asume no key is included in the list.']}),"\n",(0,r.jsx)(s.h3,{id:"nexttoken",children:"%NextToken"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %NextToken(Output pType As %String, Output tSC As %Status) As %String [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return next token within the query text and its type. Type can be NUM[ber], LIT[eral], STR[ing], QSTR, OP[erator], SPEC[ial], END. If there are comments, they are removed."}),"\n",(0,r.jsx)(s.h3,{id:"validatenamedparm",children:"%ValidateNamedParm"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ValidateNamedParm(pParmName As %String) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Syntactically validate the given named parameter."}),"\n",(0,r.jsx)(s.h3,{id:"trace-1",children:"%Trace"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %Trace(pText As %String, pIndent As %Integer = 0) As %Boolean [ CodeMode = expression, Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Print a trace message if trace is enabled."}),"\n",(0,r.jsx)(s.h3,{id:"tracemsg",children:"%TraceMsg"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %TraceMsg(pText As %String, pIndent As %Integer = 0) As %Boolean [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Print out trace message (do not call directly)."}),"\n",(0,r.jsx)(s.h3,{id:"error",children:"%Error"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Method %Error(pMsg As %String, pToken As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(s.p,{children:"Construct a parser error message."}),"\n",(0,r.jsx)(s.h3,{id:"parsestatement",children:"%ParseStatement"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ParseStatement(pQuery As %DeepSee.Query.query) As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["Parse an MDX statement.",(0,r.jsx)(s.br,{}),"\nApply the results to pQuery."]}),"\n",(0,r.jsx)(s.h3,{id:"parsewith",children:"%ParseWITH"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Method %ParseWITH(pMode As %String = "with") As %Status\n'})}),"\n",(0,r.jsx)(s.p,{children:'Parse an MDX WITH statement. If pMode is "with", then this is a WITH clause of a query; If pMode is "set" or "member", then this is a CREATE statement;'}),"\n",(0,r.jsx)(s.h3,{id:"parseselect",children:"%ParseSELECT"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ParseSELECT() As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Parse an MDX SELECT statement."}),"\n",(0,r.jsx)(s.h3,{id:"parseaxis",children:"%ParseAXIS"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ParseAXIS(Output pAxisNum As %String, Output pAxis As %DeepSee.Query.axis, pMode As %Integer = 0) As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["Parse an MDX Axis Specification statement.",(0,r.jsx)(s.br,{}),"\npMode specifies context: 0 = axis, 1 = slicer, 2 = %filter, (3 = named set)."]}),"\n",(0,r.jsx)(s.h3,{id:"parsemember",children:"%ParseMEMBER"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ParseMEMBER(pParent As %DeepSee.Query.group, Output pNode As %DeepSee.Query.node, pCloseToken As %String, pMode As %Integer, ByRef pFlags As %String, pLevel As %Integer = 1) As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["Parse a member expression within an MDX axis.",(0,r.jsx)(s.br,{}),'\nThis can be a simple member specifier: "[Measures].[Sales]"',(0,r.jsx)(s.br,{}),'\nA range: "[Time].[2005]:[Time].[2008]"',(0,r.jsx)(s.br,{}),'\nor an expression: "[Measures].[Sales]>100*[Measures].[X]"',(0,r.jsx)(s.br,{}),'\nThe member expression can contain a function: "FILTER(A.B,C.D)"',(0,r.jsx)(s.br,{}),'\nor a set: "{A.A,B.B}"',(0,r.jsx)(s.br,{}),'\nor a range: "{A.A:A.B}"',(0,r.jsx)(s.br,{}),'\nor a tuple: "(A.A,B.B)"',(0,r.jsx)(s.br,{}),"\nor some combination of these.",(0,r.jsx)(s.br,{}),"\nOn return, pNode is the newly created query object along with whatever children it needs..",(0,r.jsx)(s.br,{}),'\npCloseToken is the token expected to end the tuple (such as ")" for a function).',(0,r.jsx)(s.br,{}),"\npMode specifies context: 0 = axis, 1 = slicer, 2 = %filter, 3 = named set.",(0,r.jsx)(s.br,{}),"\nn.b., mode 2 is not used! If pFlags is present, it contains the set of valid function flags (we are parsing a function call in this case)..."]}),"\n",(0,r.jsx)(s.h3,{id:"removeparens",children:"%RemoveParens"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %RemoveParens(pNodeNo As %Integer, ByRef pTree, pEmpty As %Boolean) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Remove unneeded parens from tree. pEmpty is set true (1) if the node has only parens and can be removed."}),"\n",(0,r.jsx)(s.h3,{id:"processmembernode",children:"%ProcessMemberNode"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ProcessMemberNode(pNodeNo As %Integer, ByRef pTree, ByRef pObjList, Output pObj As %DeepSee.Query.node) As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["Used by parseMEMBER to convert expression trees into query objects.",(0,r.jsx)(s.br,{}),"\npNodeNo is the top node number in the tree.",(0,r.jsx)(s.br,{}),"\npTree is the expression tree.",(0,r.jsx)(s.br,{}),"\npObjList an array of objects referenced by the tree.",(0,r.jsx)(s.br,{}),"\npObj is the newly created object."]}),"\n",(0,r.jsx)(s.h3,{id:"parsefrom",children:"%ParseFROM"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ParseFROM() As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Parse an MDX FROM statement."}),"\n",(0,r.jsx)(s.h3,{id:"parsewhere",children:"%ParseWHERE"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ParseWHERE() As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Parse an MDX WHERE statement."}),"\n",(0,r.jsx)(s.h3,{id:"parsefilter",children:"%ParseFILTER"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ParseFILTER() As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Parse an MDX %FILTER statement. %FILTER is an ISC extension."}),"\n",(0,r.jsx)(s.h3,{id:"parsereturn",children:"%ParseRETURN"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %ParseRETURN() As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["Parse an MDX RETURN statement (used by DRILLTHROUGH statements). A RETURN statement is basically the SELECT list used against the source table to return rows.",(0,r.jsx)(s.br,{}),'\nAlso tests for %LISTING statement: "DRILLTHROUGH ... %LISTING LISTINGNAME"']}),"\n",(0,r.jsx)(s.h3,{id:"parsememberspec",children:"%ParseMemberSpec"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %ParseMemberSpec(pText As %String, Output pInfo, Output pQuoted, Output pMemberKey) As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:['Take a string containing a member specification, "[Member1].[Member2]", and return an array of the member names indexed by ordinal position as well as an array of whether a term was quoted or not.',(0,r.jsx)(s.br,{}),"\npMemberKey is array indicating if a member key (&[]) is specified for an item.",(0,r.jsx)(s.br,{}),"\nThis is used later in query processing."]}),"\n",(0,r.jsx)(s.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnNew(text As %RawString) As %Status [ Internal, Private, ServerOnly = 1 ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"This callback method is invoked by the %New method to provide notification that a new instance of an object is being created."}),"\n",(0,r.jsx)(s.p,{children:"If this method returns an error then the object will not be created."}),"\n",(0,r.jsx)(s.p,{children:"It is passed the arguments provided in the %New call. When customizing this method, override the arguments with whatever variables and types you expect to receive from %New(). For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:"}),"\n",(0,r.jsx)(s.p,{children:'Method %OnNew(dob as %Date = "", name as %Name = "") as %Status'}),"\n",(0,r.jsx)(s.h3,{id:"testprecedence",children:"%TestPrecedence"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %TestPrecedence(op1 As %String, op2 As %String) As %Boolean [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Returns true if op1 has precedence over op2."}),"\n",(0,r.jsx)(s.h3,{id:"validatetext",children:"%ValidateText"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Method %ValidateText(pQuery As %DeepSee.Query.query = {$$$NULLOREF}, pText = "") As %Status\n'})}),"\n",(0,r.jsx)(s.p,{children:"Perform initial checks on the MDX text itself to see if there are obvious errors that can be reported without further processing."})]})}function c(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>i,x:()=>l});var r=n(96540);const t={},a=r.createContext(t);function i(e){const s=r.useContext(a);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:i(e.components),r.createElement(a.Provider,{value:s},e.children)}}}]);