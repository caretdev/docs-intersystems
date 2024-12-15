Class %WebStress.Errors Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, LegacyInstanceContext, Owner = {%Developer}, System = 4 ]
{

Property RunID As %Integer;

Property TestID As %Integer;

Property ScriptID As %Integer;

Property Process As %String(TRUNCATE = 1);

Property Session As %Integer;

Property ErrorNumber As %Integer;

Property ErrorStatus As %Integer(DISPLAYLIST = ",OK,Warning,Fatal", VALUELIST = ",0,1,2");

Property ErrorText As %String(MAXLEN = 255, TRUNCATE = 1);

Property URLNumber As %Integer;

Property URLVerb As %String(TRUNCATE = 1);

Property URLPath As %String(MAXLEN = 255, TRUNCATE = 1);

Property SystemIdentifier As %String(MAXLEN = 200);

Property ErrorTS As %TimeStamp [ InitialExpression = {$zdt($horolog,3)} ];

}
