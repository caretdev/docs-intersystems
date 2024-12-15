/// This class reads a WSDL and builds a web service client and associated class definitions from it.<BR>
///
/// This class is used by the SOAP Client Wizard; it is not
/// for direct use within applications except through the Process method.
/// Properties which are not marked as internal may be used to control the Process method.
Class %SOAP.WSDL.Reader Extends %RegisteredObject [ System = 3 ]
{

/// Control display of debugging info
///  Debug level.  Additional output for levels >0.
///  Default is 0.
Property Debug As %Integer [ InitialExpression = 0 ];

/// Input property to control compilation of created classes.
/// Default is to compile classes.
Property CompileClasses As %Boolean [ InitialExpression = 1 ];

/// Flags to be used for class compiles.
Property CompileFlags As %String [ InitialExpression = "dk" ];

/// Input property to control persistence of generated classes.
///  If true (1), create persistent classes, else create registered classes.
///  Default is true.
Property MakePersistent As %Boolean [ InitialExpression = 0 ];

/// Input property to control if generated classes are serial.
///  If true (1) and 'MakePersistent create serial classes, else create registered classes.
///  Default is true.
Property MakeSerial As %Boolean [ InitialExpression = 0 ];

/// Input property to control creation of relationships in generated classes.
///  If true(1), convert list collections of persistent classes to relationships.
///  Default is true.
Property MakeRelationships As %Boolean [ InitialExpression = 0 ];

/// Input property to control nature of relationships in generated classes.
///  The ParentChildRelationship property is only meaningful if MakeRelationships is true(1).
///  If ParentChildRelationship is true(1), the relationships that are created are parent-child relationsips.
///  Otherwise the relationships are many-one.
Property ParentChildRelationship As %Boolean [ InitialExpression = 0 ];

/// Input property to control nature of relationships in generated classes.
///  The IndexRelationship property is only meaningful if MakeRelationships is true(1)
///  and the relationship is many-one (ParentChildRelationship is false(0).
///  If IndexRelationship is true(1), the many-one relationships that are created are indexed.
Property IndexRelationship As %Boolean [ InitialExpression = 0 ];

/// Input property to control if a %OnDelete method is generated for persistent classes
/// in order to cascade deletes.
Property CascadeDeletes As %Boolean [ InitialExpression = 0 ];

/// Input property to control generation of XML namespace information.
///  If true(1), add NAMESPACE parameter to generated classes.
///  Default is false(0) unless there are multiple targetNamespaces in which case the default is true(1).
Property MakeNamespace As %Boolean;

/// Supplemental flag to suppress use of defined target Namespace.
/// Causes NAMESPACE parameter to be empty on SOAP client and server classes,
/// even if Namespace use is reactivated for other necessary schema processing reasons.
/// Anticipated usage is for SOAP Clients in conjunction with OutputTypeAttribute flag disablement.
Property SuppressNamespace As %Boolean;

/// Flag to enable the URL Escape of SOAPAction header for SOAP1.1 requests.
/// This is to complement the existing URL Decode of SOAP1.1 SOAPAction by IRIS WebServices.
/// For example a "%" character in soap action is expanded to "%25" in transmission of the HTTP Header.
/// Allows consistency in different SOAP client platforms accessing same IRIS WebService.<br>
/// Default Reader action is to enable SOAPAction header to be URL Escaped for new generated SOAP Clients.
/// Programmtically set reader property to "0" to resume previous behavior of generating clients with
/// unescaped SOAPAction header being transmitted for SOAP1.1
Property ClientURLEscapeSoapAction As %Boolean [ InitialExpression = 1 ];

/// Input property to control creation of web service client classes.
/// If true (1), then the client classes are created.
/// The default is to create client classes.
Property MakeClient As %Boolean [ InitialExpression = 1 ];

/// If MakeClient is true, then ClientPackage is the name of the package to contain the client classes.
/// If ClientPackage="", then the client classes are put in the default package.
/// If ClientPackage begins with a period (.), then the ClientPackage is appended to the default package.
/// Otherwise the ClientPackage is used as specified.
Property ClientPackage As %String;

/// Input property to control creation of web service classes.
/// If true (1), then the web service classes are created.
/// The default is to not create web service classes.
Property MakeService As %Boolean [ InitialExpression = 0 ];

/// If MakeService is true, then ServicePackage is the name of the package to contain the web service classes.
/// If ServicePackage="", then the web service classes are put in the default package.
/// If ServicePackage begins with a period (.), then the ClientPackage is appended to the default package.
/// Otherwise the ServicePackage is used as specified.
Property ServicePackage As %String [ InitialExpression = ".Service" ];

/// If ConfigPackage = "", then create the configuration class in the same package as
/// the client or service with 'Config' appended to the client or service name.
/// If ConfigPackage '= "", then create the configuration class in the subpackage
/// given by ConfigPackage of the package containing the client or service.
Property ConfigPackage As %String;

/// Input property to control generation of production-related classes for the Business Operation
/// Request Object and Response Object from a WSDL.
///  If true (1), create an business operation and related request and response objects.
Property MakeEnsembleClasses As %Boolean [ InitialExpression = 0 ];

/// If MakeEnsembleClasses is true,
/// OperationPackage is the name of the package to contain the Business Operation.
Property OperationPackage As %String [ InitialExpression = "Operation" ];

/// If MakeEnsembleClasses is true,
/// RequestPackage is the name of the package to contain the production request object.
Property RequestPackage As %String [ InitialExpression = "Request" ];

/// If MakeEnsembleClasses is true,
/// ResponsePackage is the name of the package to contain the production request object.
Property ResponsePackage As %String [ InitialExpression = "Response" ];

/// If MakeEnsembleClasses is true, then MakeBusinessOperation and BusinessOperationPackage are ignored.
/// Input property to control generation of an business operation for a WSDL
///  If true (1), create an business process and related request and response objects.
Property MakeBusinessOperation As %Boolean [ InitialExpression = 0 ];

/// User supplied mapping of namespaces to package names which will override the default
/// package used for a specified namespace.
/// This mapping does not apply to the client or service class - only the referenced classes.<br>
/// The format is PackageMapping(namespace)=package for each mapped namespace<br>
/// If package="", then the client classes are put in the default package.
/// If package begins with a period (.), then the package is appended to the default package.
/// Otherwise the package is used as specified.<br>
/// The PackageMapping property may only be used with the Process method.
Property PackageMapping As %String [ MultiDimensional ];

/// The MakeMessageStyle property specifies whether the generated client uses a message format in which
/// each request message part (not the elements of the part's type) is an argument
/// and each response message part is a return value or output argument.
/// The generation of the class using the message or wrapped format is specified by
/// the MakeMessageStyle property which causes this class to have an ARGUMENTSTYLE parameter
/// of "" (for false) or "message" (for true).
/// The default value for ArgumentStyle is false.
/// The generated ARGUMENTSTYLE parameter will be ignored if the SoapBindingStyle is not document.
/// If MakeMessageStyle is true, then NAMESPACE parameters are created as if MakeNamespace is true.
Property MakeMessageStyle As %Boolean;

/// Input property to control use of arrays in created classes.<br>
///  If true(1), do not reduce properties to use array of cnostruct.<br>
///  Default is false(0).
Property NoArrayProperties As %Boolean [ InitialExpression = 0 ];

/// Input property to control the generation of the XMLNIL property parameter.
/// If GenerateXMLNIL = 1, then generate property parameter XMLNIL=1 for elements with nillable="true".
Property GenerateXMLNIL As %Boolean;

/// Input property to control the generation of the XMLNILNOOBJECT property parameter.
/// If GenerateXMLNILNOOBJECT = 1, then generate property parameter XMLNILNOOBJECT=1 for elements with nillable="true".
Property GenerateXMLNILNOOBJECT As %Boolean;

/// If MakeBusinessOperation is true,
/// the name of the sub-package to contain the Business Operation
Property BusinessOperationPackage As %String [ InitialExpression = "BusOp" ];

/// If <property>OutputTypeAttribute</property> = 1, then the Process method will add the OUTPUTTYPEATTRIBUTE
/// parameter to the web client which is created.   This parameter forces the inclusion of the xsi:type
/// attribute for each element of object output.
Property OutputTypeAttribute As %Boolean [ InitialExpression = 0 ];

/// The SecurityInParameter property allows the SECURITYIN parameter to be added to created classes.
/// If SecurityInParameter'="", then add the SECURITYIN parameter to the class created for the web service or web client.
/// The value of the SECURITYIN parameter will be taken from the SecurityInParameter property.
/// The only valid values for this property are "", "ALLOW", "IGNORE", "IGNOREALL", and "REQUIRE".
Property SecurityInParameter As %String(VALUELIST = ",ALLOW,IGNORE,IGNOREALL,REQUIRE");

/// If the NoSequence property is true, the XMLSEQUENCE parameter is set to 0 in the generated classes.
Property NoSequence As %Boolean;

/// If the IgnoreNull property is set, the web client/service and the generated classes are created with the
/// XMLIGNORENULL parameter to the value in IgnoreNull.
Property IgnoreNull As %String;

/// If the BinaryAsStream property is true, then use %Stream.GlobalBinary for base64Binary type.
Property BinaryAsStream As %Boolean;

/// The name of the activated TLS/SSL configuration to use for https requests.
Property SSLConfiguration As %String;

/// When making an SSL connection check the server identity in the server certificate matches the name of the system we are connecting to.
/// This defaults to being on and matches based on the rules layed out in section 3.1 of RFC 2818.
Property SSLCheckServerIdentity As %Boolean;

/// The %Net.HttpRequest instance to be used for all web requests for
/// WSDL and XML schema documents.  This property may optionally be set by the caller
/// in order to specify %Net.HttpRequest properties Username, ProxyPort, etc.
Property HttpRequest As %Net.HttpRequest;

/// This property should be set to a combination of flags (see %occSAX.inc for details) if
/// the default behavior of the parser is required to be modified.
/// The $$$SAXVALIDATIONPROHIBITDTDS flag is added by default in order to not allow DTDs.
Property SAXFlags As %Integer [ InitialExpression = {$$$SAXFULLDEFAULT+$$$SAXVALIDATIONPROHIBITDTDS} ];

/// This property should be set to an instance of %XML.SAX.EntityResolver OR a user-defined
/// subclass IF the default EntityResolver is not required.
Property EntityResolver As %XML.SAX.EntityResolver;

/// This property holds the current ^IRIS.Temp Key
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property IRISTempTarget As %String [ Internal, Private ];

/// This property holds the current key where the 'definitions' element is store
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property DefinitionsKey As %Integer [ Internal, Private ];

/// This property holds the URL locations that have been visited so far
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property Locations As %String [ Internal, MultiDimensional, Private ];

/// This multidimensional property holds an index of service names found within the
/// parsed WSDL
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property Services As %String [ Internal, MultiDimensional, Private ];

/// This multidimensional property holds an index of bindings found within the
/// parsed WSDL
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property Bindings As %String [ Internal, MultiDimensional, Private ];

/// This property holds the current target namespace
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property TargetNamespace As %String [ Internal, Private ];

/// This property holds the keys where parsed WSDL data is stored
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property WSDLKeys As %Integer [ Internal, MultiDimensional, Private ];

/// This property holds the global key where the extracted definitions
/// are stored
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property WSDLTarget As %Integer [ Internal, Private ];

/// The schema reader used to find any complex types within the WSDL
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property SchemaReader As %XML.Utils.SchemaReader [ Internal ];

/// An array of the names of classes that have to be created (for clients):
/// ClientClassList(name) = ""
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property ClientClassList As %String [ Internal, MultiDimensional ];

/// An array of the names of classes that correspond to SOAP messages.
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property MessageClassList As %String [ Internal, MultiDimensional, Private ];

/// An array of the names of classes that have to be created (for types)
/// TypeClassList(name) = ""
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property TypeClassList As %String [ Internal, MultiDimensional ];

/// An array of the names of classes are created for an business operation:
/// BOClassList(name) = ""
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Property BOClassList As %String [ Internal, MultiDimensional ];

/// Cleanup temporary global nodes that were used.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method %OnClose() As %Status [ Internal, Private ]
{
}

/// Reset this class instance for reuse.
Method Reset()
{
}

/// Create a parameter
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method CreateParameter(CDefArg, pName, pValue, pDocs, pSeqNo) As %Status [ Internal, Private ]
{
}

/// Create a property
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method CreateProperty(pClassName, pCDef, pName, pType, pSeqNo, persistent, ByRef persistentProperties) As %Status [ Internal, Private ]
{
}

/// Determine if this is a SOAP service
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method IsService(pService, pNamespace, pPort) As %Boolean [ Internal, Private ]
{
}

/// Make a class definition for service or client
Method CreateCDef(className As %String, Output CDef As %Dictionary.ClassDefinition) As %Status [ Internal, Private ]
{
}

/// Make a method definition for service or client method
Method CreateMDef(CDef As %Dictionary.ClassDefinition, methodName As %String, Output MDef As %Dictionary.MethodDefinition) As %Status [ Internal, Private ]
{
}

/// Set a property of method definitions for both client and service
Method SetMethodProperty(name As %String, value As %String, MDef As %Dictionary.MethodDefinition) [ Internal, Private ]
{
}

/// Generate a SOAP service
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method GenerateService(pService As %String, pNamespace As %String, pPort As %String, PackageName As %String, ClientClassName As %String, ServiceClassName As %String) As %Status [ Internal, Private ]
{
}

/// Create a configuration class based on the policies in the WSDL<br><br>
/// <pre>
/// Parsed policies
/// 	  ^IRIS.Temp(key,namespace)
/// 	  ^IRIS.Temp(key,namespace,"service",servicename)
/// 	  ^IRIS.Temp(key,namespace,"service",servicename,"port",portname)
/// 	  ^IRIS.Temp(key,namespace,"binding",bindingname)
/// 	  ^IRIS.Temp(key,namespace,"binding",bindingname,"operation",operationname)
/// 	  ^IRIS.Temp(key,namespace,"binding",bindingname,"operation",operationname,"input")
/// 	  ^IRIS.Temp(key,namespace,"binding",bindingname,"operation",operationname,"output")
/// 	  ^IRIS.Temp(key,namespace,"portType",porttypename)
/// 	  ^IRIS.Temp(key,namespace,"portType",porttypename,"operation",operationname)
/// 	  ^IRIS.Temp(key,namespace,"portType",porttypename,"operation",operationname,"input")
/// 	  ^IRIS.Temp(key,namespace,"portType",porttypename,"operation",operationname,"output")
/// 	  ^IRIS.Temp(key,namespace,"message",msgname)
/// </pre>
Method CreateConfigurationClass(pService As %String, pNamespace As %String, pPort As %String, className As %String, configClassname As %String) [ Internal ]
{
}

/// Create the SOAPHEADERS parameter
Method CreateSoapHeaders(CDef As %Dictionary.ClassDefinition, ByRef SoapHeaders, ByRef Actions) As %Status [ Internal, Private ]
{
}

/// Get ObjectScript type given namespace and typename
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method GetCacheType(pNamespace, pTypeName, ByRef pCacheType, Output cls) As %Status [ Internal, Private ]
{
}

/// Get element given namespace and element name
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method GetCacheElement(pNamespace, pTypeName, ByRef pCacheType, ByRef pTypeNamespace As %String, Output cls) As %Status [ Internal, Private ]
{
}

/// Validate if a URI
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod IsANYURI(pUri) [ Internal, Private ]
{
}

/// Validate if string is an NCName
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod IsNCNAME(pName) As %Boolean [ Internal, Private ]
{
}

/// Validate if string is an Nmtoken
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod IsNMTOKEN(pName) As %Boolean [ Internal, Private ]
{
}

/// Validate if string is a list of Nmtokens
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod IsNMTOKENS(pName) As %Boolean [ Internal, Private ]
{
}

/// Validate if string is an QName
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod IsQNAME(pName) As %Boolean [ Internal, Private ]
{
}

/// Get the local name part of a QName
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod GetName(name) As %String [ Internal, Private ]
{
}

/// Get the default namespace for the specified element
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method GetDefaultNamespace(node As %String) As %String [ Internal, Private ]
{
}

/// Normalize a NMTOKENS string by removing leading and trailing spaces
/// and setting any internal spaces to a single space
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod NormalizeTokens(pTokens) As %String [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod fixNames(uniquelen As %Integer, ByRef names) [ Internal, Private ]
{
}

/// Combine the ports of a service which are identical except for the SOAP version.
/// The SOAPVERSION parameter will later be set to indicate multiple versions.
Method CombineVersions(pService As %String, pNamespace As %String) [ Internal, Private ]
{
}

/// Return true if the two specified bindings are identical.
Method IsBindingEqual(namespace As %String, binding1 As %String, binding2 As %String) As %Boolean [ Internal, Private ]
{
}

/// Setup Schema Reader
Method SetupSchemaReader(pPackage As %String, schemaReader As %XML.Utils.SchemaReader) As %Status [ Internal ]
{
}

/// This method pre-processes the XML schemas for the WSDL to get list of namespaces.
Method PreProcess(pLocationURL As %String, ByRef multipleNamespace As %Boolean) As %Status [ Internal ]
{
}

/// parse WSDL, the new Atelier SOAP wizard need to show the operations supported by this web service
Method parseWSDL(pLocationURL As %String, pPackage As %String = "") As %String [ Internal ]
{
}

/// parse the global structure and fetch the defined operations
Method fetchOperations() As %String [ Internal, Private ]
{
}

/// This method call processes the WSDL found at the specified location. The
/// WSDL is retrieved and parsed into ^IRIS.Temp. The definitions are then processed
/// creating one or more SOAP client classes. These client classes may be used to
/// access the services defined with the WSDL.
/// The reader argument is for internal usage by system classes only.
Method Process(pLocationURL As %String, pPackage As %String = "", pTest As %Boolean = 0, schemaReader As %XML.Utils.SchemaReader = "") As %Status
{
}

/// The <method>ProcessPolicy</method> method creates a configuration class for a web service client
/// which contains the policy specified by the service's WSDL.
/// If there is no policy in the WSDL an empty configuration class is created.
/// The configuration class will be compiled, if the CompileClasses property is true.<br>
/// Note that it is the caller's responsibility to insure that the WSDL URL corresponds to the same
/// web service as the client.<br>
/// The current implementation of this method is limited to WSDLs which have only one port specified.<br>
/// <ul>
/// <li><var>wsdlURL</var> is URL of the WSDL which contains the policy.</li>
/// <li><var>clientWebServiceClass</var> is the name of the web service client.
/// If the client already has a configuration class, the configuration class will be deleted.</li>
/// <li><var>policyConfigClass</var> is the name of the configuration class to be created.
/// If a class named <var>policyConfigClass</var> already exists, the existing class will be deleted.</li>
/// </ul>
Method GeneratePolicyFromWSDL(wsdlURL As %String, clientWebServiceClass As %String, policyConfigClass As %String) As %Status
{
}

/// Method to handle creation of classes
Method ProcessServices(pLocationURL As %String, pPackage As %String) As %Status [ Internal, Private ]
{
}

/// Read services in WSDL and store in internal format
Method ReadServices(locationURL As %String) As %Status [ Internal ]
{
}

/// This method provides a means of testing the Reader
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
ClassMethod Test(pUrl As %String, Output pReader) [ Internal ]
{
}

/// Bindings(bindingname,namespace)=""
/// IRIS.Temp(key,namespace,"binding",bindingname,"soapns")= SOAP 1.1 or SOAP 1.2 WSDL namespace
/// IRIS.Temp(key,namespace,"binding",bindingname,"portType")= $List(namespace,port name)
/// IRIS.Temp(key,namespace,"binding",bindingname,"transport")= optional soap binding transport
/// IRIS.Temp(key,namespace,"binding",bindingname,"style") = optional default soap binding style
/// IRIS.Temp(key,namespace,"binding",bindingname,"isccharset") = optional charset from isc:binding
/// IRIS.Temp(key,namespace,"binding",bindingname,"isc") = optional isc:binding element emcountered
/// IRIS.Temp(key,namespace,"binding",bindingname,"operation",operationname)= ""
/// IRIS.Temp(key,namespace,"binding",bindingname,"operation",operationname,"style")= soap binding style
/// IRIS.Temp(key,namespace,"binding",bindingname,"operation",operationname,"soapAction")= soap action
/// IRIS.Temp(key,namespace,"binding",bindingname,"operation",operationname,messagename,"encodingStyle")= soap body encoding style
/// IRIS.Temp(key,namespace,"binding",bindingname,"operation",operationname,messagename,"namespace")= soap body namespac
/// IRIS.Temp(key,namespace,"binding",bindingname,"operation",operationname,messagename,"parts")= soap body parts
/// IRIS.Temp(key,namespace,"binding",bindingname,"operation",operationname,messagename,"use")= soap body use
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method binding(pIndex, baseChildlist) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method bindingOperation(pIndex, baseChildlist, pBindingName, pSoapBindingStyle, pSoapBindingTransport) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method bindingOperationMessage(pIndex, baseChildlist, pBindingName, pOperationName) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method definitions(pNamespace) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method documentation(pIndex, baseChildlist, ByRef text) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method fault(pIndex, baseChildlist, pPortTypeName, pOperationName) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method header(pIndex, baseChildlist, pOp, pEncodingStyle, pNamespace, pPart, pUse, pNS, pMessageName) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method import(pIndex, baseChildlist) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method input(pIndex, baseChildlist, pPortTypeName, pOperationName) [ Internal, Private ]
{
}

/// IRIS.Temp(key,namespace,"message",msgname)
/// IRIS.Temp(key,namespace,"message",msgname,"xmlelement")=summary of element attribute use
///           1 = all element, 0 = all type, $char(0) = mixed, "" = no parts
/// IRIS.Temp(key,namespace,"message",msgname,"typenamespace")=non-XSI namespace for parts.
/// IRIS.Temp(key,namespace,"message",msgname)= number of parts
/// IRIS.Temp(key,namespace,"message",msgname,partindex)=partname
/// IRIS.Temp(key,namespace,"message",msgname,partindex,"type")=$listbuild(type namespace,type)
/// IRIS.Temp(key,namespace,"message",msgname,partindex,"element")=$listbuild(element namespace,element)
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method message(pIndex, baseChildlist) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method operation(pIndex, baseChildlist, pPortTypeName) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method output(pIndex, baseChildlist, pPortTypeName, pOperationName) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method part(pIndex, baseChildlist, pMsgName, xmlelement, typenamespace, elementqualified) [ Internal, Private ]
{
}

/// IRIS.Temp(key,namespace,"portType",porttypename)
/// IRIS.Temp(key,namespace,"portType",porttypename,"operation",operationname)= parameter order
/// IRIS.Temp(key,namespace,"portType",porttypename,"operation",operationname,"output")= $List(namespace, message name, [action])
/// IRIS.Temp(key,namespace,"portType",porttypename,"operation",operationname,"input")= $List(namespace, message name, [action])
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method portType(pIndex, baseChildlist) [ Internal, Private ]
{
}

/// This method reads the WSDL at the specified URL and places the parsed data
/// into ^IRIS.Temp. Types information is stored in ^IRIS.Temp at
/// the key(s) found in the TypesKeys multidimensional property. Data
/// parsed from other sections of the WSDL file is stored in ^IRIS.Temp at
/// the keys(s) found in the WSDLKeys multidimensional property. There may
/// be multiple keys in each property as each WSDL file may import other
/// files (by specifying 'location' and 'namespace' urls) which in turn may
/// have imports themselves. The keys have the following formats
/// TypesKeys(key)="",WSDLKeys(key)=target namespace of data (if available)
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method read(pLocationURL As %String, pNamespaceURL As %String) As %Status [ Internal, Private ]
{
}

/// IRIS.Temp(key,namespace,"service",servicename)=""
/// IRIS.Temp(key,namespace,"service",servicename,"port",portname,"binding")= $List(namespace,associated binding name)
/// IRIS.Temp(key,namespace,"service",servicename,"port",portname,"location")= soap address location
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method service(pIndex, baseChildlist) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method servicePort(pIndex, baseChildlist, pServiceName) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method soapAddress(pIndex, baseChildlist, pLocation) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method soapBinding(pIndex, baseChildlist, pBindingStyle, pBindingTransport) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method iscBinding(pIndex, baseChildlist, charset) [ Internal, Private ]
{
}

/// multipartRelated element for MIME binding
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method mimeMultipartRelated(pIndex, baseChildlist, pBindingName, pOperationName, pOpMsg, ByRef bodyFound) [ Internal, Private ]
{
}

/// part element for MIME binding
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method mimePart(pIndex, baseChildlist, pBindingName, pOperationName, pOpMsg, ByRef bodyFound) [ Internal, Private ]
{
}

/// content element for MIME binding
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method mimeContent(pIndex, baseChildlist, pBindingName, pOperationName, pOpMsg) [ Internal, Private ]
{
}

/// body element for SOAP binding
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method soapBody(pIndex, baseChildlist, pBindingName, pOperationName, pOpMsg) [ Internal, Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method soapOperation(pIndex, baseChildlist, pSoapBindingStyle, pSoapAction) [ Internal, Private ]
{
}

/// Skip types
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method types(pIndex) As %Status [ Internal, Private ]
{
}

/// @loc@("%policy")=number of policies at this location
/// @loc@("%policy",index)=index of a policy as string
/// IRIS.Temp(key,"%anyPolicy")=1 if any policy
///
/// loc my be one of the following
/// 	IRIS.Temp(key,namespace)
/// 	IRIS.Temp(key,namespace,"service",servicename)
/// 	IRIS.Temp(key,namespace,"service",servicename,"port",portname)
/// 	IRIS.Temp(key,namespace,"binding",bindingname)
/// 	IRIS.Temp(key,namespace,"binding",bindingname,"operation",operationname)
/// 	IRIS.Temp(key,namespace,"binding",bindingname,"operation",operationname,"input")
/// 	IRIS.Temp(key,namespace,"binding",bindingname,"operation",operationname,"output")
/// 	IRIS.Temp(key,namespace,"portType",porttypename)
/// 	IRIS.Temp(key,namespace,"portType",porttypename,"operation",operationname)
/// 	IRIS.Temp(key,namespace,"portType",porttypename,"operation",operationname,"input")
/// 	IRIS.Temp(key,namespace,"portType",porttypename,"operation",operationname,"output")
/// 	IRIS.Temp(key,namespace,"message",msgname)
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method policy(pIndex, baseChildlist, subscripts As %String) As %Status [ Internal, Private ]
{
}

/// Output Policy to the current writer.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method WritePolicy(writer As %XML.Writer, nodeDesc As %List, wsdlElement As %String) As %Status [ Internal, Private ]
{
}

}
