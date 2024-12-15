Class %OAuth2.JWK Extends %RegisteredObject [ Deprecated, System = 4 ]
{

/// This method converts an RSA key in PEM-encoded DER ASN.1 format to JSON Web Key (JWK) format.
/// <br><br>
/// Input parameters:
/// <br><br>
/// ASN1 - PEM-encoded DER ASN.1 representation of private or public RSA key.
/// <br><br>
/// Password - Private key password (optional).
/// <br><br>
/// Output parameter:
/// <br><br>
/// JWK - JWK representation of private or public RSA Key
/// This method is deprecated.
ClassMethod RSAASN1toJWK(ASN1 As %String, Password As %String = "", Output JWK As %DynamicObject) As %Status [ Deprecated ]
{
}

/// This method converts an RSA key in JSON Web Key (JWK) format to PEM-encoded DER ASN.1 format.
/// <br><br>
/// Input parameter:
/// <br><br>
/// JWK - JWK representation of private or public RSA Key
/// <br><br>
/// Output parameter:
/// <br><br>
/// ASN1 - PEM-encoded DER ASN.1 representation of private or public RSA key.
/// This method is deprecated.
ClassMethod RSAJWKtoASN1(JWK As %DynamicObject, Output ASN1 As %String) As %Status [ Deprecated ]
{
}

/// This method converts an EC key in PEM-encoded DER ASN.1 format to JSON Web Key (JWK) format.
/// <br><br>
/// Input parameters:
/// <br><br>
/// ASN1 - PEM-encoded DER ASN.1 representation of private or public EC key.
/// <br><br>
/// Password - Private key password (optional).
/// <br><br>
/// Output parameter:
/// <br><br>
/// JWK - JWK representation of private or public EC Key
/// This method is deprecated.
ClassMethod ECASN1toJWK(ASN1 As %String, Password As %String = "", Output JWK As %DynamicObject) As %Status [ Deprecated ]
{
}

/// This method converts an EC key in JSON Web Key (JWK) format to PEM-encoded DER ASN.1 format.
/// <br><br>
/// Input parameter:
/// <br><br>
/// JWK - JWK representation of private or public EC Key
/// <br><br>
/// Output parameter:
/// <br><br>
/// ASN1 - PEM-encoded DER ASN.1 representation of private or public EC key.
/// This method is deprecated.
ClassMethod ECJWKtoASN1(JWK As %DynamicObject, Output ASN1 As %String) As %Status [ Deprecated ]
{
}

}
