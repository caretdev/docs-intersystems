/// This table is used to hold lists of IDs when a DeepSee query needs to restrict
/// the member of a given dimension.
Class %DeepSee.IDList Extends %Persistent [ System = 3 ]
{

/// Name of the cube that populated this record.
Property cubeName As %String(MAXLEN = 255);

/// Key for the query that populated this record.
Property queryKey As %String(MAXLEN = 255);

/// Fact number of the dimension.
Property factNo As %Integer;

/// Id in the member table.
Property memberId As %Integer;

}
