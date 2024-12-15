/// This class allows you to activate and view Mirror definitions in the [MapMirrors.&ltmirror name&gt]
/// section of the CPF file through
/// programatic APIs. The properties in this section are managed via the Enterprise Management
/// system as the information needs to be kept in sync across all of the instances which
/// share the mirror definition. The ^MIRROR utility or the System Management Portal
/// may be used to withdraw from a mirror in which case it will delete one of these sections.
/// <br><br>
/// In all of the Config methods, the CPFFile parameter defaults to
/// the currently active CPF file. If you wish to query a different CPF file
/// the file must be specifyied in the method call.<br>
/// The Flags parameter is normally omitted; the defaults are usually
/// sufficient for most cases.<br><br>
/// You can use either the Get API to retrieve an array containing all of the
/// parameters from the object or you can open an instance using the Object
/// syntax to craete a reference variable.
/// <br>
/// <br>
/// EXAMPLE:<br>
/// <br>
/// <pre>
/// ; Use class methods to retrieve properties
/// %SYS>s MirName="TEST"
/// %SYS>s Member="TESTSERVER/DATA1"
/// %SYS>s Status=##Class(Config.MapMirrors).Get(MirName,Member,.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// %SYS>zw Properties
/// Properties("AgentAddress")="testserver"
/// Properties("AgentPort")=2188
/// Properties("AsyncMemberType")=0
/// Properties("ConnectsTo")=""
/// Properties("DejournalFilter")=""
/// Properties("ECPAddress")="testserver"  ;This is the Super Server address in the documentation
/// Properties("EncryptCommunication")=0
/// Properties("GUID")="F23D0A92-5961-4E2A-BFE9-EF91880323F0"
/// Properties("InstanceDirectory")="c:\intersystems\data1\"
/// Properties("MemberType")=0
/// Properties("MirrorAddress")="testserver"  ;This is also called the mirror private address
/// Properties("MirrorSSPort")=1972
/// Properties("PreferredArbiter")=""
/// Properties("SSLComputerName")=""
/// </pre>
Class Config.MapMirrors Extends (%Persistent, Config.GenericMapMethods, Config.GenericMapProperties, %SYSTEM.Help) [ Final, Inheritance = right, LegacyInstanceContext, System = 4 ]
{

/// The Mirror System Name is always uppercase<br>
Parameter CAPITALNAME = 1;

Parameter EMSSERVICE [ Internal ] = "Mirror";

/// This is the name of this instance in the mirror. Mirror system names
/// must be unique (enforced by Enterprise Manager) across all of the mirrors which
/// the EM manages, as an instance has a single mirror system name which
/// may appear in multiple mirror sets (eg. a reporting member may connect
/// to multiple mirrors). For the most part the <property>GUID </property>
/// is used to identify a mirror member, the Name is used for display
/// purposes.
/// <br><br>
/// The name must not contain a colon (':') and is converted to uppercase before
/// saving.
Property Name As %String(MAXLEN = 32) [ Required ];

/// Network address (IP address preferred to avoid DNS issues)
/// mirror members which connect to the primary should use to
/// contact the Agent on this failover member. This is omitted
/// reporting members as the agent is not used for mirroring
/// on those systems. This is required on failover members. This
/// field does not need to be specified on DR members although it will
/// need to be filled in before promotion of the DR to a Failover member.
/// It is best to configure the agent and the address information earlier
/// rather than later.
/// <br><br>
/// The agent can transfer journal data so a private address may
/// be desirable here to avoid network congestion.
Property AgentAddress As Config.Host;

/// Port # which the agent on this system is configured to listen
/// on. <classmethod>##class(SYS.Agent).GetApplicationPort()</classmethod>
/// will return the current value if the local agent is active.
Property AgentPort As %Integer;

/// AsyncMemberType indicates the async member is a disaster recovery (DR), read-only reporting or read-write reporting async member.<br>
/// 0 - Disaster Recovery (DR). This is a disaster recovery async member, all its mirrored databases are read-only mirrored databases.<br>
/// 1 - Read-Only Reporting. This is a reporting async member, all its mirrored databases could be read-only or read-write databases, the default is read-only when the database is
/// created.<br>
/// 2 - Read-Write Reporting. This is a reporting async member, all its mirrored databases could be read-only or read-write databases, the default is read-write when the database is
/// created.<br>
Property AsyncMemberType As %Integer(MAXVAL = 2, MINVAL = 0) [ InitialExpression = 0 ];

/// Reserved for future use.
Property ConnectsTo As %String;

/// The name of the filter class for mirror dejournaling, null string means the dejournal filter is disabled. <br>
/// This property is meaningful only for Reporting Async members.
Property DejournalFilter As %String;

/// This is the Super Server address referenced in the documentation for this
/// instance. External mirror-aware systems can connect to the primary using
/// this address. Currently the only such external systems are ECP application
/// servers connecting to failover members. This is distributed to
/// the ECP clients, along with the address for the other failover member
/// (if there is one) when an ECP client builds a connection to a mirror.
/// <br><br>
/// Other mirror members may also make connections to a member's Super Server
/// address for certain control and monitoring purposes. When a member is primary,
/// async members attempt to establish their data channel to the member using this
/// address if the mirror private address is not accessible, which means that
/// journal data may travel over the network via this address.
/// <br><br>
/// This a required field on failover members, optional on others.
Property ECPAddress As Config.Host;

/// Uniquely identifies this node in the mirror. Apart from identifying
/// the nodes, primary used to identify the instance that owns a particular
/// copy of a mirrored database.
Property GUID As %String [ Required ];

/// The installation directory of the instance (the parent of the mgr directory).
/// Used primarily on failover members to identify the instance to the agent
Property InstanceDirectory As %SysPath [ Required ];

/// Numeric value indicating the type of mirror member.
/// <br><br>
/// 0 - Failover member<br>
/// 1 - &ltreserved for future use&gt<br>
/// 2 - Async member (doesn't accept client connections)<br>
/// (defined in %syMirror.inc as FailoverMemberType, AsyncMemberType)
Property MemberType As %Integer [ InitialExpression = 0, Required ];

/// Address (IP preferred to avoid DNS troubles) the other mirror members
/// should use to contact the Super Server on this instance.
/// When a InterSystems IRIS instance is running as the primary failover member,
/// each of the other mirror members uses the mirror private address to
/// establish its mirror data channel, the channel over which it receives
/// journal data from the primary and the most heavily used mirror
/// communication channel.
/// <br><br>
/// Failover members are restricted in that they can only use this address
/// for establishing the connection to receive live updates. Async members
/// attempt to use this address to connect to the primary but fall back to
/// the Super Server address (<property>ECPAddress</property> property) if necessary.
/// <br><br>
/// This documentation refers to ths property as the Mirror Private Address.
Property MirrorAddress As Config.Host [ Required ];

/// Super Server port for this instance. Used in conjunction with both the
/// <property>MirrorAddress</property> and the <property>ECPAddress</property>
/// by clients establishing connections to this instance.
Property MirrorSSPort As %Integer [ Required ];

/// If we decide to support configurations with multiple arbiters,
/// this is the arbiter number of the preferred arbiter for when this member is the primary.
/// If this arbiter is not available when this member becomes the primary, it will try
/// to use ("any of the configured arbiters" or "the other configured arbiter").
/// This can be left blank if there is no preference.
Property PreferredArbiter As %String [ Internal ];

/// Value of the DN field in the SSL certificate which is part of
/// the %Mirror SSL configuration on this instance. When SSL is enabled
/// an instance sends this value as part of establishing a TCP connection. Both
/// sides of the connection verify that the other side's DN value matches a value
/// stored in the configuration. It is best for every mirror member to have a unique
/// DN value as otherwise it may be possible for a system that was removed from the
/// mirror to still connect if it's DN value matches the DN stored with another system
/// of the same type (eg. async v. failover).
Property SSLComputerName As %String(MAXLEN = 1024);

/// When SSL is not required by <Property>Config.Mirrors.UseSSL</Property> mirror wide
/// setting, this property controls whether this member uses SSL for its outgoing
/// connections and/or whether it requires SSL for its incoming connections. Whenever SSL is
/// used to encrypt a connection, the endpoints also perform authorization and verify that the
/// DN name in the SSL configuration matches the listed <property>SSLComputerName</property>
/// for that system in the Mirror configuration.
/// <br><br>
/// Values are:
/// <ul>
///  <li><p>0 - Encryption is not required. Outgoing connections may still be
///             encrypted if the member we connect to requires SSL for incoming
///             connections.
/// 			</p></li>
///  <li><p>1 - SSL is used to encrypt outgoing connections.
///             the server must have an SSL Mirror configuration or the
///             connection will fail
///             </p></li>
///  <li><p>2 - Encryption is required for incoming connections. The clients
///             which connect must have an SSL Mirror configuration or the
///             connection will fail
///             </p></li>
///  <li><p>3 - Both 1+2: Outgoing connections are encrypted, encryption is
///             required for incoming connections
///             </p></li>
/// </ol>
Property EncryptCommunication As %Integer [ InitialExpression = 0 ];

/// Force the name to be uppercase.<br>
Method NameSet(Val) As %Status [ Internal ]
{
}

ClassMethod %OnBeforeSaveCallBack(insert As %Integer, Obj As %ObjectHandle) As %Status [ Internal ]
{
}

/// Called by the Create method during import from a CPF file.<br>
ClassMethod CreateCallBack(Obj As %ObjectHandle, Data As %String) As %Status [ Internal ]
{
}

ClassMethod WriteSection(CPFFile As %String) As %Status [ Internal ]
{
}

/// This is called from %Save().<br>
/// Any error returned from this will cause the object to not be saved.<br>
/// In addition to validating some data types (eg. for length, allowed
/// characters), some of the fields are required for Failover members but
/// optional (meaningless) for others so here if we're saving a Failover
/// member, we verify that the various required fields have been specified.
Method %OnValidateObject() As %Status [ Internal ]
{
}

/// Called from  %Delete().<br>
/// Any error returned here will keep the object from being deleted.<br>
ClassMethod %OnDeleteCallBack(Obj As %ObjectHandle) As %Status
{
}

/// Load the mirror parameters into memory and activate the
/// changes as needed. The [Mirrors] section should have already
/// been loaded so that the mirror definitions are available (the
/// mirror configuration has to hang off an existing definition)
/// <br><br>
/// Parameters:<br>
/// <b>Obj</b> = Handle to the object which caused the load. If "",
/// then load everything (called from STU).<br>
/// If a delete operation, then Obj is contains the name of the item which was deleted
/// since the object itself has already been deleted. Note that Obj can either be
/// a Config.Mirrors object or a Config.MapMirror.* object.<br>
/// <b>Flags</b> = Type of modification.<br>
/// 0 - Modify<br>
/// 1 - Create/Insert<br>
/// 2 - Delete<br>
ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]
{
}

/// Returns the number of mirror set members defined in a
/// configuration. If <parameter>othersonly</parameter> is
/// set we exclude ourselves (if we're listed) from the total.
ClassMethod Count(mirrorname As %String, othersonly As %Boolean = 0, ByRef CPFFile As %String = "") As %Integer
{
}

/// List MapMirrors section in a CPF file.<br>
/// <br>
/// Parameters:<br>
/// <b>Names</b> - Comma separated list of MapMirror names<br>
/// <var>"*"</var> - All records match<br>
/// <var>"String,String1"</var> - Any records matching one of these elements<br>
/// <var>"String*"</var> - Any record starting with "String"<br>
/// <var>"String,String1*,String2"</var> - Any record matching one of these elements, or starting with "String1"<br>
/// <b>CPFFile</b> - Name of the CPF file to use. A null string means use the active CPF file.<br>
/// <b>Flags</b> - Currently ignored.<br>
/// <b>Format</b> <br>
/// <var>0</var> - Standard report list format<br>
/// <var>1</var> - ^CONFIG global format<br>
/// <var>2</var> - CPF file format format<br>
/// Note: This query may change in future versions<br>
ClassMethod ListExecute(ByRef qHandle As %Binary, ID As %String, Names As %String = "*", CPFFile As %String = "", Flags As %Integer = 0, Format As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

/// List MapMirrors section in a CPF file.<br>
/// <br>
/// Parameters:<br>
/// <b>Names</b> - Comma separated list of MapMirror names<br>
/// <var>"*"</var> - All records match<br>
/// <var>"String,String1"</var> - Any records matching one of these elements<br>
/// <var>"String*"</var> - Any record starting with "String"<br>
/// <var>"String,String1*,String2"</var> - Any record matching one of these elements, or starting with "String1"<br>
/// <b>CPFFile</b> - Name of the CPF file to use. A null string means use the active CPF file.<br>
/// <b>Flags</b> - Currently ignored.<br>
/// <b>Format</b> <br>
/// <var>0</var> - Standard report list format<br>
/// <var>1</var> - ^CONFIG global format<br>
/// <var>2</var> - CPF file format format<br>
/// Note: This query may change in future versions<br>
ClassMethod List1Execute(ByRef %qHandle As %Binary, ID As %String, Names As %String = "*", CPFFile As %String = "", Flags As %Integer = 0, Format As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod List1Fetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = List1Execute ]
{
}

ClassMethod List1Close(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = List1Execute ]
{
}

}
