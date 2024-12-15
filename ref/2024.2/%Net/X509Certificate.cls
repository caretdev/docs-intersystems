/// This class can be used to query the SSL PeerCertificate
/// retrieved by %Net.HttpRequest when SSLCheckIdentityServer is enabled.<br>
/// It also contains convenience wrappers for %SYSTEM.Encryption X509 methods. <br>
/// Passing all the validity checks in this class does not mean the SSL Peer Certificate
/// is valid. <br>
Class %Net.X509Certificate Extends %RegisteredObject [ ServerOnly = 1, System = 3 ]
{

/// X.509 digital certificate
Property Certificate As %Binary(MAXLEN = "");

/// Status returned by <class>%Net.HttpRequest</class> CheckSSLCN
/// method when SSLCheckServerIdentity is true. <br>
/// By examining the return from %Net.HttpRequest Send the <method>RetrievePeerCertificate</method>
/// will set this to $$$OK if the return from Send is $$$OK or the errors SSLCertificateNoMatch or SSLNoCertificate
/// as returned by %Net.HttpRequest Send <br>
/// If a different error is returned then SSLCNCheck is left as empty <br>
Property SSLCNCheck As %Status;

/// Output from running $SYSTEM.Encryption.X509VerifyCertChain as
/// executed by <method>VerifyCertChain</method> on <property>Certificate</property> with
/// <property>CAFile</property> and optional <property>CRLFile</property>
Property CertChainCheck As %String(MAXLEN = "");

/// Boolean test result of checking if the number of days between the ValidityNotBefore and
/// the ValidityNotBefore fields in <property>Certificate</property> is less than the maximum
/// number of days used by <method>VerifyLifeSpan</method> <br>
/// The default maximum days is set to 730.
Property LifeSpanCheck As %Boolean;

/// Boolean test result of checking if ValidityNotBefore field in <property>Certificate</property>
/// is before or the same as the current time.<br>
Property NotBeforeCheck As %Boolean;

/// Boolean test result of checking if ValidityNotAfter field in <property>Certificate</property>
/// is after or the same as the current time.<br>
Property NotAfterCheck As %Boolean;

/// CAFile - Name of a file containing trusted Certificate Authority certificates <br>
/// Used by <method>VerifyCertChain</method>
Property CAFile As %String(MAXLEN = "");

/// CRLFile - Name of a file containing Certificate Revocation lists (optional)
/// Used by <method>VerifyCertChain</method>
Property CRLFile As %String(MAXLEN = "");

Method %OnNew(certificate As %String = "", sslcncheck As %Status = "") As %Status [ Internal ]
{
}

Method CertificateSet(certificate) As %Status [ Internal ]
{
}

/// Call X509GetField on the <property>Certificate</property> for the
/// <parameter>pX509Field</paramter> <br>
/// Returns in the <parameter>pStatus</paramter> status of the call. <br>
/// See <class>%SYSTEM.Encryption</class> for documention on the X509GetField method. <br>
Method Field(pX509Field As %String, Output pStatus As %Status = {$$$OK})
{
}

/// Convenience method to prepend Extension: to the <parameter>pX509Extension</parameter>
/// before calling <method>Field</method> <br>
Method Extension(pX509Extension As %String, Output pStatus As %Status = {$$$OK})
{
}

/// Run the methods: <br>
/// <method>VerifyCertChain</method> if <parameter>pVerifyCertChains</parameter> is true (the default is true) <br>
/// <method>VerifyLifeSpan</method> using <parameter>pLifeSpanMaxDays</parameter> (the default is 730 days) <br>
/// <method>VerifyNotBefore</method> <br>
/// <method>VerifyNotAfter</method> <br>
/// This method returns true if the checks that were run passed and
/// and if the initial SSL Server Identity check (SSLCNCheck) passed.<br>
Method RunVerificationChecks(pVerifyCertChain As %Boolean = 1, pLifeSpanMaxDays As %Integer = 730) As %Boolean
{
}

/// Output from running $SYSTEM.Encryption.X509VerifyCertChain as
/// on <property>Certificate</property> with <property>CAFile</property>
/// and optional <property>CRLFile</property>. <br>
/// Also populates return in <property>CertChainCheck</property>
Method VerifyCertChain() As %String
{
}

/// Boolean test result of checking if the number of days between the ValidityNotBefore and
/// the ValidityNotBefore fields in <property>Certificate</property> is less than the maximum
/// number of days used by <parameter>pMaxDays</parameter> <br>
/// The default maximum days is set to 730.<br>
/// The result is also stored in <property>LifeSpanCheck</property> <br>
/// If an error is encountered retrieving the value of ValidityNotBefore or ValidityNotAfter
/// from the certificate the returned value is False.<br>
Method VerifyLifeSpan(pMaxDays As %Integer = 730) As %Boolean
{
}

/// Boolean test result of checking if ValidityNotBefore field in <property>Certificate</property>
/// is before or the same as the current time.<br>
/// The result is also stored in <property>NotBeforeCheck</property> <br>
/// If an error is encountered retrieving the value of ValidityNotBefore from the certificate the returned value is False.<br>
Method VerifyNotBefore() As %Boolean
{
}

/// Boolean test result of checking if ValidityNotAfter field in <property>Certificate</property>
/// is after or the same as the current time.<br>
/// The result is also stored in <property>NotBeforeAfter</property> <br>
/// If an error is encountered retrieving the value of ValidityNotAfter from the certificate the returned value is False.<br>
Method VerifyNotAfter() As %Boolean
{
}

/// Convenience method to make an HTTPS Request that will populate the SSLPeerCertificate
/// property of <class>%Net.HttpRequest</class>
/// using a pre-existing %Net.HttpRequest object and instantiate <parameter>pSSLPeerCert</parameter>
/// of type <class>%Net.X509Certificate</class> if the certificate was retrieved or Server identification check failed.<br>
/// For convenience the property SSLCheckServerIdentity is set to true.<br>
/// <parameter>pURL</parameter> defaults to / <br>
/// <parameter>pVerb</parameter> defaults to OPTIONS <br>
/// The status returned will be the status returned by the %Net.HttpRequest Send method
/// unless the error is $$$SSLNoCertificate or $$$SSLCertificateNoMatch in which an $$$OK will
/// be returned and the <property>SSLCNCheck</property> will contain SSL Server Identity Check error. <br>
ClassMethod RetrievePeerCertificate(ByRef pHttpRequest As %Net.HttpRequest, pURL As %String = "/", pVerb As %String = "OPTIONS", Output pSSLPeerCert As %Net.X509Certificate) As %Status
{
}

/// Convenience method to call <method>RetrievePeerCertificate</method> using a <class>%Library.DynamicObject</class>
/// to create the initial %Net.HttpRequest object and provide the other optional parameters.<br>
/// The structure of the pHttpInfo dynamic object is: <br>
/// {"url":<optional default="/">, <br>
/// {"verb":<optional default=OPTIONS>}, <br>
/// {"request":{"properties of %Net.HttpRequest...","Server":"docs.intersystems.com","SSLConfiguration":"ClientSSLConfig"}}
ClassMethod RetrievePeerCertUsingJSON(pHttpInfo As %DynamicObject, Output pHttpRequest As %Net.HttpRequest, Output pSSLPeerCert As %Net.X509Certificate) As %Status
{
}

}
