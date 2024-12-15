/// This datatype class validates IP addresses and ports in the format IP|Port. The IP
/// address can either be an IPV4, IPV6, or DNS name. For example:<br><br>
/// 127.0.0.1|1972<br>
/// fe80::20c:29ff:fe21:20cf|1972<br>
/// hostname|1972<br>
Class %Library.NetworkAddress Extends %Library.String [ System = 4 ]
{

ClassMethod IsValid(%Val As %RawString) As %Status
{
}

/// Method to Get the address in a format usable with an http url.
/// The format of %NetworkAddress is address_"|"_port, while the address required
/// for a url is address_":"_port.  Furthermore, if the address is an IPV6 colon separated
/// hex representation, the address must be enclosed with [].
ClassMethod FormatForHttp(Address) As %String
{
}

}
