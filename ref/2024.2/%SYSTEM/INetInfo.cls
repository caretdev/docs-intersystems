/// The <class>%SYSTEM.INetInfo</class> class provides an interface for Internet
/// address manipulation.<br>
/// These interfaces support both IPV6 and IPV4 internet addresses.<br>
Class %SYSTEM.INetInfo Extends %SYSTEM.Help [ System = 4 ]
{

/// Find a host name for an Internet address.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>Addr</b> - An Internet address in binary form. The length is 4 for IPV4, 16 for IPV6.<br>
/// The address should be in Network order.<br>
/// <br><b>Return:</b> <br>
/// This method returns a host name string, it returns a null string if no host name is associated with the Internet address.<br>
ClassMethod AddrToHostName(Addr As %String) As %String
{
}

/// Find the type of an address text.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>Addr</b> - A text string could be a hostname, an IPV4 dotted address or an IPV6 colon-hex text address.<br>
/// <br><b>Return:</b> <br>
/// This method returns 0 for hostname, 1 for IPV4 address type or 2 for IPV6 address type.<br>
ClassMethod AddrType(Addr As %String) As %Integer
{
}

/// Convert a binary Internet address to a readable text string.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>Addr</b> - An Internet address in binary form. The length is 4 for IPV4, 16 for IPV6.<br>
/// The address should be in Network order.<br>
/// <br>
/// <b>Return:</b> <br>
/// This method returns a 'dotted' decimal string if the input address is IPV4 address (worked as inet_ntoa()).<br>
/// It returns colon-hex address string if the input address is IPV6 address.<br>
/// If the address could not be translated, a null string is returned.
ClassMethod BinaryAddrToText(Addr As %String) As %String
{
}

/// Disable IPV6 process or system wide.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>System</b> - Disable IPV6 for process or system wide, 1 for system wide, 0 for process wide (default).<br>
/// <br>
/// <b>Return:</b> <br>
/// Return whether the IPV6 was enabled or not, 1 - was enabled, 0 - was disabled.
ClassMethod DisableIPV6(System As %Integer = 0) As %Integer
{
}

/// Enable IPV6 process or system wide.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>System</b> - Enable IPV6 for process or system wide, 1 for system wide, 0 for process wide (default).<br>
/// <br>
/// <b>Return:</b> <br>
/// Return whether the IPV6 was enabled or not, 1 - was enabled, 0 - was disabled.
ClassMethod EnableIPV6(System As %Integer = 0) As %Integer
{
}

/// Get port number, protocol name and IP Family from a service name.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>Name</b> - The service name string to be translated.<br>
/// <b>Proto</b> - The protocol of service to be returned. If this parameter is omitted the default value is "". The value could be:<br>
/// <ul><li>"": return services for both TCP and UDP protocols.</li>
/// <li>"tcp": return service for TCP protocol.</li>
/// <li>"udp": return service for UDP protocol.</li></ul>
/// <b>Family</b> - The family of the service to be returned. If this parameter is omitted the default value is 0. The value could be: <br>
/// <ul><li>0: depends on value of $SYSTEM.INetInfo.IsIPV6Enabled(), if IPV6 is NOT enabled
/// IPV4 service is returned, otherwise it returns services for both IPV4 and IPV6.</li>
/// <li>1: Only return IPV4 service, if no IPV4 service then return null string as failure.</li>
/// <li>2: Only return IPV6 service, if no IPV6 service then return null string as failure.</li></ul>
/// <b>Return:</b> <br>
/// Returns a List, its element is port number, protocol name and family type separated by "," (e.g. 23,tcp,IPV4).<br>
/// The port number returned is in Host order.<br>
/// Returns null string if the service name could not be resolved.
ClassMethod GetServiceByName(Name As %String, Proto As %String = "", Family As %Integer = 0) As %List
{
}

/// Get a service name from a port number.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>Port</b> - The port number to be translated. This port number is in Host order.<br>
/// <br>
/// <b>Family</b> - The family of the service to be returned. If this parameter is omitted the default value is 0. The value could be: <br>
/// <ul><li>0: depends on value of $SYSTEM.INetInfo.IsIPV6Enabled(), if IPV6 is NOT enabled
/// IPV4 service is returned, otherwise it returns services for IPV6.</li>
/// <li>1: Only return IPV4 service, if no IPV4 service then return null string as failure.</li>
/// <li>2: Only return IPV6 service, if no IPV6 service then return null string as failure.</li></ul>
/// <b>Return:</b> <br>
/// Returns a service name string.<br>
/// Returns null string if the service name could not be found.
ClassMethod GetServiceByPort(Port As %Integer, Family As %Integer = 0) As %String
{
}

/// Get one IP address from a host name.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>HostName</b> - The host name string to be translated.<br>
/// <b>Family</b> - The family of the IP address to be returned. If this argument is omitted the default value is 0. The value could be: <br>
/// <ul><li>0: depends on value of $SYSTEM.INetInfo.IsIPV6Enabled(), if IPV6 is NOT enabled
/// IPV4 address is returned, otherwise it returns whatever the system supports.</li>
/// <li>1: Always return IPV4 address, if no IPV4 address then return null string as failure.</li>
/// <li>2: Always return IPV6 address, if no IPV6 address then return null string as failure.</li></ul>
/// <b>Format</b> - The format of address to be returned. If this argument is omitted the default value is 0. The value could be:<br>
/// <ul><li>0: in text format,  'dotted' decimal string for IPV4, colon-hex address string for IPV6.</li>
/// <li>1: in binary format, 4 character length for IPV4, 16 characters for IPV6.</li></ul>
/// <b>Return:</b> <br>
/// Returns the primary IP address of the specified host name. It could be in binary or text format depends on the <b>Format</b> parameter.
/// For binary format the IP address is in Network order.<br>
/// If the host name could not be resolved a null string is returned.
ClassMethod HostNameToAddr(HostName As %String, Family As %Integer = 0, Format As %Integer = 0) As %String
{
}

/// Get all IP addresses from a host name.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>HostName</b> - The host name string to be translated.<br>
/// <b>Family</b> - The family of the IP address to be returned. If this argument is omitted the default value is 0. The value could be: <br>
/// <ul><li>0: depends on value of $SYSTEM.INetInfo.IsIPV6Enabled(), if IPV6 is NOT enabled
/// IPV4 address is returned, otherwise it returns whatever the system supports.</li>
/// <li>1: Always return IPV4 address, if no IPV4 address then return null string as failure.</li>
/// <li>2: Always return IPV6 address, if no IPV6 address then return null string as failure.</li></ul>
/// <b>Format</b> - The format of address to be returned. If this argument is omitted the default value is 0. The value could be:<br>
/// <ul><li>0: in text format,  'dotted' decimal string for IPV4, colon-hex address string for IPV6.</li>
/// <li>1: in binary format, 4 character length for IPV4, 16 characters for IPV6.</li></ul>
/// <b>Return:</b> <br>
/// Returns all the IP addresses of the specified host name in a List. Each IP address in the List could be in binary or text format depends on the <b>Format</b> parameter.
/// For binary format the IP address is in Network order.<br>
/// If the host name could not be resolved a null string is returned.
ClassMethod HostNameToAddrMulti(HostName As %String, Family As %Integer = 0, Format As %Integer = 0) As %List
{
}

/// Convert a 4-byte unsigned integer from Host order to Network order (htonl()). This is used to convert the binary IPV4 address.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>Port</b> - A 4-byte unsigned integer as a binary IPV4 address in Host order.<br>
/// <br>
/// <b>Return:</b> <br>
/// Return a A 4-byte unsigned integer as a binary IPV4 address in Network order.<br>
ClassMethod HostToNetLong(Addr As %Integer) As %Integer
{
}

/// Convert a 2-byte unsigned integer from Host order to Network order (htons()). This is used to convert the Port number.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>Port</b> - A 2-byte unsigned integer as a port number in Host order.<br>
/// <br>
/// <b>Return:</b> <br>
/// Return a 2-byte unsigned integer as a port number in Network order.<br>
ClassMethod HostToNetShort(Port As %Integer) As %Integer
{
}

/// Check if IPV6 is enabled.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>System</b> - Check for process or system wide, 1 for system wide, 0 for process wide (default).<br>
/// <b>Return:</b> <br>
/// Return whether the IPV6 is enabled or not, 1 - is enabled, 0 - is disabled.
ClassMethod IsIPV6Enabled(System As %Integer = 0) As %String [ CodeMode = expression ]
{
}

/// Return the local host name (by using the system call gethostname(); works on all supported operating systems).
ClassMethod LocalHostName() As %String [ CodeMode = expression ]
{
}

/// Convert a 4-byte unsigned integer from Network order to Host order (htonl()). This is used to convert the binary IPV4 address.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>Port</b> - A 4-byte unsigned integer as a binary IPV4 address in Network order.<br>
/// <br>
/// <b>Return:</b> <br>
/// Return a 4-byte unsigned integer as a binary IPV4 address in Host order.<br>
ClassMethod NetToHostLong(Addr As %Integer) As %Integer
{
}

/// Convert a 2-byte unsigned integer from Network order to Host order (ntohs()). This is used to convert the Port number.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>Port</b> - A 2-byte unsigned integer as a port number in Network order.<br>
/// <br>
/// <b>Return:</b> <br>
/// Return a 2-byte unsigned integer as a port number in Host order.<br>
ClassMethod NetToHostShort(Port As %Integer) As %Integer
{
}

/// $SYSTEM.InetInfo.OSsupportsIPV6() provides a way to determine if IPV6 is supported by the operating system.
/// <br> <br>
/// <b>Return:</b> <br>
/// Returns 1 if the operating system supports IPV6. <br>
/// Returns 0 if the operating system does not support IPV6.
ClassMethod OSsupportsIPV6() As %Integer
{
}

/// Convert a readable Internet address text string to a binary Internet address string.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// <b>Addr</b> - Internet address, a string with address in text form. It is a 'dotted' decimal string for IPV4, colon-hex address string for IPV6.<br>
/// <br>
/// <b>Return:</b> <br>
/// This method (worked as inet_addr()) returns a binary IP address in Network order, the length is 4 for IPV4, 16 for IPV6.<br>
/// If the address could not be translated, a null string is returned.
ClassMethod TextAddrToBinary(Addr As %String) As %String
{
}

/// TCPName is a class method called by a child process to retrieve the TCP device
/// name assigned by the parent process.
///
ClassMethod TCPName() As %String
{
}

/// TCPStats(Code) returns statistics from the current TCP device.
/// <p>
/// <b>Description</b>
/// <p>
/// TCPStats(2) returns the number of bytes that have been read from the current
/// TCP device.
/// <p>
/// TCPStats(3) returns the number of bytes that have been read from the current
/// TCP device and clears the counter.
/// <p>
/// TCPStats(4) returns the number of bytes that have been written to the current
/// TCP device.
/// <p>
/// TCPStats(5) returns the number of bytes that have been written to the current
/// TCP device and clears the counter.
///
ClassMethod TCPStats(Code As %Integer) As %Integer
{
}

/// EthernetAddress(flag[,name]) is a class method that determines Ethernet address.
/// <p>
/// <b>Description</b>
/// <p>
/// You can return a string containing ethernet address information by issuing a call
/// to the following class method.
/// <p>
/// EthernetAddress(0) returns the address of the primary ethernet device. This
/// primary ethernet device is the first ethernet device found on the device names
/// list with a valid ethernet address. Any ethernet device can be designated the
/// primary ethernet device.
/// <p>
/// EthernetAddress(0,name) returns the address of any attached ethernet device
/// specified by name. On OpenVMS systems, this is the physical port address of
/// the ethernet device, not the hardware address.  The ethernet address is returned
/// as a string of 12 characters that represent the 48-bit ethernet address.  The name
/// is not case sensitive. The maximum length of a device names list is
/// platform-dependent, but the name of an individual device cannot be more
/// than 15 characters in length. An invalid name value results in a <FUNCTION> error.
/// <p>
/// EthernetAddress(0) returns a null string, rather than an ethernet address if:
/// <p>
/// The primary ethernet device is not present in the device names list.
/// EthernetAddress(0,name) returns a null string if the named device is not
/// present in the device names list, or has no corresponding ethernet address.
/// <p>
/// On Windows systems, the InterSystems Packet Driver is not installed.
/// <p>
/// On IBM AIX(r) systems, the DLPI (Data Link Provider Interface) packages are not
/// installed.
/// <p>
/// The ethernet adapters are protected against access by non-root users, and the
/// process invoking EthernetAddress(0) is not the root user.
/// <p>
/// EthernetAddress(1) returns the current list of attached ethernet device names,
/// delimited by $CHAR(1). The first name in this list is the primary ethernet device.
/// <p>
/// EthernetAddress(2) returns the current list of ethernet device names, delimited
/// by commas.  This feature is not available on Windows systems.
/// <p>
/// EthernetAddress(2,name) replaces the current ethernet device names list with the
/// list specified in name; it then returns the ethernet device names list prior to
/// the replacement.  This feature is not available on Windows systems.
/// <p>
/// <b>Parameters</b>
/// <p>
/// <b>flag</b> --
/// The switch that specifies the information that EthernetAddress is to return.
/// Valid values are:
/// <p>
/// 0 Returns the address of an attached ethernet device. When name is specified,
/// it returns the address of the named device. When name is not specified, it
/// returns the primary ethernet device.
/// <p>
/// 1 Returns a list of the ethernet device names actually present on the system.
/// This is a subset of the list returned by flag= 2. Listed names are separated
/// by the $CHAR(1) character.
/// <p>
/// 2 Returns the current list of ethernet device names, as set by system startup
/// or by a subsequent invocation of EthernetAddress(2,name). Listed names are
/// separated by commas.  This flag value is not available on Windows systems.
/// <p>
/// <p>
/// <b>name</b> Optional --
/// Ethernet device name(s). Valid values are:
/// <p>
/// When flag = 0 name is the name of a specific ethernet device.
/// EthernetAddress(0,name) returns the address of the named device.
/// <p>
/// When flag= 2 name is an ethernet device names list, enclosed in quotes
/// with individual device names separated by commas. A name list specified
/// in EthernetAddress(2,name) cannot contain control characters.  The ethernet
/// device names cannot be changed on Windows systems.
///
ClassMethod EthernetAddress(flag As %Integer, Name As %String) As %String
{
}

/// The Connected() class method checks if the current device is a TCP device has been
/// disconnected from the remote site. It returns 0 if the TCP device is disconnected.
/// It returns 1 if the TCP device is still connected. An error &lt;FUNCT&gt; is generated
/// if the current device is not a TCP device.
/// <p>
/// You can also have the system poll asynchronously for a TCP disconnect by using the D mode
/// option for the OPEN or USE command.
///
ClassMethod Connected() As %Boolean [ CodeMode = expression ]
{
}

/// CheckInterfaceExist:
/// <p>
/// <b>Description</b>
/// <p>
/// Check if the specific network interface exists in the system or not.<br>
/// Returns 1 if the network interface exists in the system, otherwise return 0.
///
ClassMethod CheckInterfaceExist(Interface As %String, MatchExact As %Integer = 0) As %Integer
{
}

/// CheckAddressExist:
/// <p>
/// <b>Description</b>
/// <p>
/// Check if the specific IP address exists in the network or not.<br>
/// Returns 1 if the IP address exists in the network, otherwise return 0.
///
ClassMethod CheckAddressExist(IPAddr As %String) As %Integer
{
}

/// CheckSubnetMatch:
/// <p>
/// <b>Description</b>
/// <p>
/// Check to see if the subnets for the IP for a given physical interface match a requested virtual IP.<br>
/// Returns 1 if the subnets match, otherwise return 0.
///
ClassMethod CheckSubnetMatch(Interface As %String, IPAddr As %String) As %Integer
{
}

/// Get interfaces information configured in the system.
/// <br>
/// <b>Parameters:</b> <br>
/// <b>Interface</b> - Null string will return information of all interfaces otherwise it returns the information of the specified interface.<br>
/// <br>
/// <b>Return:</b> <br>
/// Each interface is separated by $c(0) character. Within each interface it contains interface name and IP addresses separated by $c(1) character.<br>
/// The first field separated by $c(1) is interface name and rest fields of them are the IP addresses configured on this interface.
///
ClassMethod GetInterfacesInfo(Interface As %String = "") As %String
{
}

/// Get interfaces information configured in the system excluding loopback interface.
/// <br>
/// <b>Parameters:</b> <br>
/// <b>InterfaceNamesOnly</b> - If set it will return only interface name otherwise return interface name and IP address.<br>
/// <b>VIP</b> - If this is non-null string it will return only interfaces with matching subnet of the VIP.<br>
/// <br>
/// <b>Return:</b> <br>
/// For <b>InterfaceNamesOnly</b> is set, it returns all the interface names in $LIST() format, e.g. $LB(InterfaceName1,InterfaceName2,...)<br>
/// If it is not set it returns all interfaces in a nested $LIST() format, e.g. $LB(Interface1,Interface2,...)<br>
/// Each interface is also a $LIST() containing interface name and IP addresses, e.g. $LB(InterfaceName,IPv4,IPv6).
/// Please note that the sequence of IPv4 and IPv6 might be reversed, you need to check whether it is IPv4 or not by $Length(IP,":"),
/// if it is > 2 then it is IPv6 otherwise it is IPv4. And there can be more than one IPV4 or IPV6 addresses in the interfaces.
///
ClassMethod GetListOfConfiguredInterfaces(InterfaceNamesOnly As %Boolean = 0, VIP As %String = "") As %List
{
}

/// Check if 'arping' command is installed in the system.
/// <br>
/// <b>Return:</b> <br>
/// For non-Linux system this function always returns True. This function is for Linux/Ubuntu system only.<br>
/// Returns 1 if 'arping' is installed in the system, otherwse returns 0.
///
ClassMethod CheckArpingInstalled() As %Boolean
{
}

/// This funciton is DEPRECATED.
/// Set queue size for listen() when /CLOSELISTEN option is set on TCP device.<br>
/// For non-Linux system, the queue size is always set to 0.<br>
/// For Linux system the queue size is set based on the value of net.ipv4.tcp_syncookies,
/// when net.ipv4.tcp_syncookies is set to 1 then the listen queue will be set to 0, otherwise the listen queue is set to 1.
/// <br>
/// This method needs to be called whenever users change the setting of net.ipv4.tcp_syncookies while IRIS is running.<br>
/// <b>Return:</b> <br>
/// 1 - the listen queue size is 1 when /CLOSELISTEN option is set.<br>
/// 0 - the listen queue size is 0 when /CLOSELISTEN option is set.<br>
///
ClassMethod SetListenQSize() As %Integer [ Deprecated ]
{
}

}
