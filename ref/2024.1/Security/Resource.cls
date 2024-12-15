Class Security.Resource Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, System = 4 ]
{

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/Security/Resource.xml#1 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/02 10:58:11 $"_$c(13,10)_"Changelist #:  $Change: 7247250 $"};

/// Name of the resource.
Property Name As %String(MAXLEN = 64, MINLEN = 1) [ Required ];

/// Permission attached to the resource.<br>
/// Bit 0 - Read<br>
/// Bit 1 - Write<br>
/// Bit 2 - Use<br>
Property Permission As Security.Datatype.Permission [ Required ];

Relationship TheRole As Security.Roles [ Cardinality = parent, Internal, Inverse = Resources ];

/// This callback method is invoked by the <METHOD>%ValidateObject</METHOD> method to
/// provide notification that the current object is being validated.
///
/// <P>If this method returns an error then <METHOD>%ValidateObject</METHOD> will fail.
Method %OnValidateObject() As %Status [ Internal, Private, ProcedureBlock = 1 ]
{
}

}
