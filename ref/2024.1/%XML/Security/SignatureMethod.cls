/// XML Signature Algorithm element.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class."
Class %XML.Security.SignatureMethod Extends %XML.Security.Algorithm [ System = 4 ]
{

Property HMACOutputLength As %Integer;

}
