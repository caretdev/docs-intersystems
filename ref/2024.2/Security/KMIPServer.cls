Class Security.KMIPServer Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Inheritance = right, System = 4 ]
{

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/Security/KMIPServer.xml#1 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/02 10:58:11 $"_$c(13,10)_"Changelist #:  $Change: 7247250 $"};

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

Parameter VERSION [ Internal ] = 1;

/// Name of this KMIP Server.
Property Name As %String(MAXLEN = 64, MINLEN = 1) [ Required ];

Property Description As %String(MAXLEN = 256);

/// Server host DNS name.
Property Host As %String(MAXLEN = 255) [ Required ];

/// TCP port number.  5696 is the value assigned by the IANA.
Property Port As %Integer [ InitialExpression = 5696, Required ];

/// OASIS KMIP protocol version.  Default is KMIP v2.1.
Property Protocol As %Integer [ InitialExpression = {$$$KMIPv21}, Required ];

/// SSL/TLS configuration name.
/// This must be a Client configuration with Server certificate verification set to Require
/// and file(s) containing the client's X.509 certificate and associated private key.
Property SSLConfig As %String(MAXLEN = 64, MINLEN = 1) [ Required ];

/// Non-blocking I/O.
Property NBIO As %Boolean [ InitialExpression = 1, Required ];

/// Auto-reconnect.
Property Reconnect As %Boolean [ InitialExpression = 1, Required ];

/// I/O timeout, in seconds.
Property Timeout As %Integer [ InitialExpression = 10, Required ];

/// Comma-delimited list of data encryption key IDs for activation at startup
/// 256 36-character key IDs plus commas
Property DBEncStartKeyList As %String(MAXLEN = 9471);

/// Flags argument to KMIP_CMD_new()
Property Flags As %Integer [ InitialExpression = 82, Required ];

/// Version number of the record. <br>
/// Used for Export/Import.<br>
Property Version As %Decimal(SCALE = 1) [ Internal ];

Method Configure() As %Status
{
}

ClassMethod Export(FileName As %String = "KMIPServerExport.xml", ByRef NumExported As %Integer = 0, Name As %String = "*") As %Status
{
}

ClassMethod Import(FileName As %String = "KMIPServerExport.xml", ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

Method SetDBEncStartKeyList() As %String [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called before
/// any data is written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being deleted.
///
/// <P>If this method returns an error then the object will not be deleted.
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal, Private ]
{
}

/// List all KMIP Server records, brief display. <br>
/// Names - Comma separated list of KMIPServer names, "*" = All<br>
/// Note: This query may change in future versions<br>
ClassMethod ListExecute(ByRef %qHandle As %Binary, Names As %String = "*") As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

/// List all KMIP Server records, brief display. <br>
/// Names - Comma separated list of KMIP Server names, "*" = All<br>
/// Note: This query may change in future versions<br>
ClassMethod DetailExecute(ByRef %qHandle As %Binary, Names As %String = "*") As %Status [ Internal ]
{
}

ClassMethod DetailFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = DetailExecute ]
{
}

ClassMethod DetailClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = DetailExecute ]
{
}

}
