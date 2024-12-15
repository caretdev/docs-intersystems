/// This class defines the storage for a Report Server Definition.
///
Class %Report.ServerDefinition Extends %Persistent [ Language = objectscript ]
{

/// The name of the report server definition
Property Name As %String(MAXLEN = 128) [ Required ];

/// The host where the Logi Report server is running.
/// Can be specified as an IPv4 or IPv6 address, or as a hostname
Property Host As %String(MAXLEN = 256, PATTERN = "") [ Required ];

/// The port on the <Property>Host</Property> for the Report Server.
Property Port As %Integer(MAXVAL = 65535, MINVAL = 1) [ InitialExpression = 8888, Required ];

Property SSOEnabled As %Boolean [ Required ];

/// Return the set of Report Server Definitions.
/// Return the Report Server Definition by specified id
Method %OnValidateObject() As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// Creates the "admin" and "guest" roles for this report server
Trigger CreateDefaultRoles [ Event = INSERT/UPDATE, Foreach = row/object, Time = AFTER ]
{
}

/// Updates all roles for %Report.ServerDefinition objects after report server rename
/// Renames each role from <{Name*O}>_<role> to <..Name>_<role>
/// Replaces all instances of <{Name*O}> in role description with ..Name
Trigger UpdateRoles [ Event = UPDATE, Foreach = row/object ]
{
}

/// Deletes all roles for this %Report.ServerDefinition object
Trigger DeleteRoles [ Event = DELETE, Foreach = row/object ]
{
}

}
