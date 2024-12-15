Class %iKnow.Compiler.GotoFunction Extends %RegisteredObject [ Deprecated, System = 4 ]
{

Property StatesGlobal As %String [ MultiDimensional ];

Property NextState As %Integer [ InitialExpression = 1 ];

Property RegexEnabled As %Boolean [ InitialExpression = 0 ];

Property RegexDictionary As RegexDictionary;

Method AddTransition(curState As %Integer, char As %String) As %Integer
{
}

/// Produces a list of alternatives of the form (a|b|cd)
ClassMethod ParseAlternatives(ByRef input As %String) As %List
{
}

Method ConsumeInput(state As %Integer, input As %String, outputObj As %RegisteredObject, curToken As %String = "", escaping As %Boolean = 0)
{
}

Method AddWord(word As %String, stateOutputFunction As StateOutputFunction)
{
}

Method Set(state As %Integer, input As %String, nextState As %Integer)
{
}

Method Get(state As %Integer, input As %String) As %Integer
{
}

Method GetNextState()
{
}

Method DepthOrder(ByRef depth As %String, ByRef state As %String, ByRef input As %String, ByRef nextState As %String)
{
}

/// From a binary string "01101100" to a hex string "0xEB"
ClassMethod ToHex(bin As %String)
{
}

Method ToC(dir As %String = "")
{
}

/// "NextState" values are 32-bits, split between an offset into the State/SymbolMap tables
/// and a size.
ClassMethod MakeNextState(offset As %Integer, size As %Integer) As %Integer [ Private ]
{
}

}
