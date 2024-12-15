/// This datatype class validates IP addresses.
Class Config.Host Extends %Library.String [ System = 4 ]
{

ClassMethod IsValid(%Val As %RawString) As %Status [ CodeMode = generator, Internal ]
{
}

}
