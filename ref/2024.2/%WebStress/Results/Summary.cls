Class %WebStress.Results.Summary Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, Owner = {%Developer}, System = 4 ]
{

Property RunID As %Integer;

Property TestID As %String(TRUNCATE = 1);

Property Script As %String(TRUNCATE = 1);

Property Generator As %String(TRUNCATE = 1);

Property Verb As %String(TRUNCATE = 1);

Property Path As %String(TRUNCATE = 1);

Property URL As %Integer;

Property CharactersSentMin As %Integer;

Property CharactersSentMax As %Integer;

Property CharactersSentTotal As %Integer;

Property CharactersSentAvg As %Numeric(SCALE = 1);

Property CharactersSentStdDev As %Numeric(SCALE = 1);

Property CharactersRecMin As %Integer;

Property CharactersRecMax As %Integer;

Property CharactersRecTotal As %Integer;

Property CharactersRecAvg As %Numeric(SCALE = 1);

Property CharactersRecStdDev As %Numeric(SCALE = 1);

Property TTFCMin As %Integer;

Property TTFCMax As %Integer;

Property TTFCTotal As %Integer;

Property TTFCAvg As %Numeric(SCALE = 1);

Property TTFCStdDev As %Numeric(SCALE = 1);

Property TTLCMin As %Integer;

Property TTLCMax As %Integer;

Property TTLCTotal As %Integer;

Property TTLCAvg As %Numeric(SCALE = 1);

Property TTLCStdDev As %Numeric(SCALE = 1);

ClassMethod Summary(testID As %String, runID As %Integer)
{
}

}
