Class %SQL.Util.ValidateTableResults Extends %Persistent [ Final, Owner = {_SYSTEM} ]
{

Property RunId As %BigInt(MINVAL = 1) [ Required ];

Property ErrorId As %BigInt(MINVAL = 1) [ Required ];

Property RowId As %String(MAXLEN = 512) [ Required ];

Property Name As %String(MAXLEN = 512) [ Required ];

Property Error As %String(MAXLEN = 4096) [ Required ];

}
