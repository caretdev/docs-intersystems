Class %WebStress.Calls Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, Owner = {%Developer}, System = 4 ]
{

Property RunID As %Integer;

Property TestID As %String(TRUNCATE = 1);

Property Script As %String(TRUNCATE = 1);

Property Generator As %String(TRUNCATE = 1);

Property WebServer As %String(TRUNCATE = 1);

Property Process As %String(TRUNCATE = 1);

Property Session As %Integer;

Property Iteration As %Integer;

Property Verb As %String(TRUNCATE = 1);

Property Path As %String(TRUNCATE = 1);

Property CharactersSent As %Integer;

Property CharactersReceived As %Integer;

Property TimeToFirstCharacter As %Integer;

Property TimeToLastCharacter As %Integer;

Property HttpStatusCode As %Integer;

Property RecordedTime As %String(TRUNCATE = 1);

Property URL As %Integer;

ClassMethod RecordedTimeLogicalToDisplay(time As %String) As %String
{
}

ClassMethod RecordedTimeLogicalToOdbc(time As %String) As %String
{
}

}
