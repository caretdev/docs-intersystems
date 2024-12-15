Class %DeepSee.TempSourceId Extends %Persistent
{

/// Name of the cube that populated this record.
Property cubeName As %String;

/// The group this source ID belongs to.
Property chunk As %Integer;

/// Original ID from the source table.
Property sourceId As %String;

/// Update action performed on the record.
Property action As %Integer;

}
