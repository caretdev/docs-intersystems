/// %XML.Namespace manages the XML namespaces for an XML document.
Class %XML.Namespaces Extends %RegisteredObject [ System = 3 ]
{

/// The default namespace to use when no namespace is specified for the
/// current namespace.  The namespace "" is treated as equivalent to an
/// XML document with no namespace.
Property DefaultNamespace As %String;

/// If true, the XML document is the the form specified by elementFormDefault="qualified".
/// This is the default value to use if elementQualfied not specified in PushNodeForExport.
Property ElementQualified As %Boolean [ InitialExpression = 0 ];

/// If true, the XML document is the the form specified by attributeFormDefault="qualified".
Property AttributeQualified As %Boolean [ InitialExpression = 0 ];

/// <property>SuppressXmlns</property> allows optionally suppression of the use of xmlns= to set
/// default XML namespace when ElementQualified is false.
/// If SuppressXmlns is true then a prefix is used for each tag rather than default namespace with xmlns=.
Property SuppressXmlns As %Boolean [ InitialExpression = 0 ];

/// <property>SuppressAutoPrefix</property> allows optionally suppression of the prefix
/// that is created for the default XML namespace even if it is not needed for the current element.
Property SuppressAutoPrefix As %Boolean [ InitialExpression = 0, Internal ];

/// <property>DefaultXmlns</property> allows optional specification of the XML namespace
/// to use as the default XML namespace when SuppressXmlns is false.
Property DefaultXmlns As %String;

/// <property>OutputTypeAttribute</property> allows the user to force the inclusion of the xsi:type
/// attribute for each element of object output.
Property OutputTypeAttribute As %Boolean [ InitialExpression = 0 ];

Method OutputTypeAttributeSet(value As %Boolean) As %Status [ Internal ]
{
}

/// Restore the value of <property>OutputTypeAttribute</property> without adding the schema namespaces again.
Method RestoreOutputTypeAttribute(value As %Boolean) As %Status [ Internal ]
{
}

/// The namespace for the current node.
Property CurrentNamespace As %String;

/// The depth of the current namespace list.
/// The <property>depth</property> property represents the number of times this identical
/// namespace list has been pushed for a child node.  This use of depth
/// is an optimization to prevent the use of an instance of %XML.Namespaces
/// for each level of child node.
Property depth As %Integer [ InitialExpression = 0, Internal, Private ];

/// The <property>stack</property> property points to the next %XML.Namespaces
/// instance on the linked list that defines the stack of nodes.
Property stack As %XML.Namespaces [ Internal, Private ];

/// The <property>maxPrefix</property> property is the number for the next last
/// prefix of the form "s"_..maxPrefix that was created.
Property maxPrefix As %Integer [ InitialExpression = 0, Internal, Private ];

/// The namespaces that have already been defined.
/// For each namespace, namespaces(prefix)=namespace.
Property namespaces As %String [ Internal, MultiDimensional, Private ];

/// The prefixes associated with namespaces that have already been defined.
/// Each entry in prefixes has a corresponding entry in namespaces.
/// For each namespace, prefixes(namespace)=prefix.
Property prefixes As %String [ Internal, MultiDimensional, Private ];

/// The schemaLocation associated with namespaces that have already been defined.
/// Each entry in locations has a corresponding entry in namespaces.
/// For each namespace, locations(namespace)=schemaLocation.
/// If locations(namespace) node exists, then no schemaLocation attribute is to be output.
/// If locations(namespace)="", then the schemaLocation attribute has already been output.
Property locations As %String [ Internal, MultiDimensional, Private ];

/// The namespaces that will be defined for child nodes.
/// These namespaces do not yet have there prefix defined even though
/// the prefix may be specified as a hint.
/// For each added namespace and prefix, addedNamespaces(namespace,prefix)=schemaLocation.
Property addedNamespaces As %String [ Internal, MultiDimensional, Private ];

/// These namespaces where added temporarily
Property removeNamespaces As %String [ Internal, MultiDimensional, Private ];

/// The default namespace that the XML document has defined or "" if none.
Property DefaultDefined As %String;

/// Save default namespace when making temporary change before calling XMLExportInternal
/// in order to support form="unqualified"
Property SaveDefaultDefined As %String;

/// The current value of ElementQualified.
Property CurrentElementQualified As %Boolean [ Internal, Private ];

/// Stable is true, if the same prefixes may be used if the current namespace does not change
Property Stable As %Boolean [ Internal ];

/// DefaultPrefix(namespace)=prefix is an array of default prefixes to be used for
/// adding namespaces when no prefix is defined.
Property DefaultPrefix As %String [ MultiDimensional ];

/// Push a new current namespace onto the stack of active namespaces.<br><br>
///
/// <var>namespace</var> is the XML namespace for the elements of the
/// node that is being created.  This method does not actually create the node.
/// It just does the required namespace handling.  If this namespace
/// has not yet been added, it will also be added with a default prefix.
/// The default namespace will be the namespace for the node if "" is specified.<br>
Method PushNode(namespace As %String = "") As %Status
{
}

/// Set new value of DefaultDefined property.
/// If the value of DefaultDefined changes, then make sure that this node
/// is at depth=1.
Method SetDefaultDefined(defaultdefined As %String) [ Internal, Private ]
{
}

/// Pop previous value of DefaultDefined property.
Method PopDefaultDefined() [ Internal ]
{
}

/// Set new value of CurrentElementQualified property.
/// If the value of CurrentElementQualified changes, then make sure that this node
/// is at depth=1.
Method SetCurrentElementQualified(elementQualified As %Boolean) [ Internal, Private ]
{
}

/// Set new value of SuppressXmlns property.
/// If the value of SuppressXmlns changes, then make sure that this node
/// is at depth=1.
Method SetSuppressXmlns(suppressxmlns As %Boolean) [ Internal, Private ]
{
}

/// Set new value of Stable property.
/// If the value of Stable changes, then make sure that this node
/// is at depth=1.
Method SetStable(stable As %Boolean) [ Internal ]
{
}

/// Push a new current namespace onto the stack of active namespaces
/// and return information needed by XMLExport.<br><br>
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.<br>
///
/// <var>namespace</var> is the XML namespace for the elements of the
/// node that is being created.  This mehod does not actually create the node.
/// It just does the required namespace hadnling.  If this namespace
/// has not yet been added, it will also be added with a default prefix.
/// The default namespace will be the namespace for the node if "" is specified.<br>
/// <var>local</var> specifies if the element is treated as a local element.
/// A global element is specified by a false value of <var>local</var> which can
/// be either 0 to represent a global element in the namespace specified by
/// the <var>namespace</var> argument or a string which is the namespace to which
/// the global element belongs.
/// The default for <var>local</var> is 0.<br>
/// <var>defaultPrefixRequired</var> specifies if the prefix for the default namespace must be defined.
/// <var>elementQualified</var> specifies override for ElementQualified property.<br>
/// The following are returned for use the XMLExport based on the new current namespace:<br>
/// <var>topPrefix</var> is the prefix (or "") to be used for the next top containing tag.<br>
/// <var>topAttrs</var> is any xmlns attributes needed to define topPrefix.<br>
/// <var>typesPrefix</var> is the prefix to be used for type references in the object being exported.<br>
/// <var>attrsPrefix</var> is the prefix (or "") to be used for any attributes of this object.<br>
/// <var>soapPrefix</var> is prefix to be used for the SOAP encoding namespace.<br>
/// <var>schemaPrefix</var> is prefix to be used for the XML schema namespace.<br>
/// <var>xsiPrefix</var> is prefix to be used for the XML schema instance namespace.<br>
/// <var>xsiAttrs</var> is any xmlns attributes needed to define the XML schema instance namespace.<br>
Method PushNodeForExport(namespace As %String = "", local As %Boolean, defaultPrefixRequired As %Boolean, elementQualified As %Boolean, attributeQualified As %Boolean, Output topPrefix As %String, Output topAttrs As %String, Output typesPrefix As %String, Output attrsPrefix As %String, Output usePrefix As %Boolean, forceStable As %Boolean) As %Status [ Internal ]
{
}

/// Pop the namespace information for the last node pushed.
Method PopNode()
{
}

/// Remove any prefix definitions that were introduced just for one class
Method PopNamespaces() [ Internal ]
{
}

/// Get SOAP, Schema and Schema instance prefixes
Method GetXMLPrefixes(Output soapPrefix As %String, Output schemaPrefix As %String, Output xsiPrefix As %String, Output xsiAttrs As %String) [ Internal ]
{
}

/// Add a namespace definition to the current level.
/// <method>PopNode</method> will remove this definition.
/// The next <method>PushNode...</method> will cause the attributes
/// to be created for adding this namespace to the XML document.<br><br>
///
/// <var>prefix</var> is the optional preferred prefix for this namespace.
/// If no prefix is specified, a unique prefix will be computed.<br><br>
///
/// A <var>schemaLocation</var> attribute value for the first definition
/// of this namespace may also specified.<br><br>
///
/// If <var>allowMultiplePrefixes</var> is true then multiple prefixes may be defined for the same namespace.
/// The default is false which will override the previously defined prefix for the same namespace.
Method AddNamespace(namespace As %String, prefix As %String, schemaLocation As %String = "", allowMultiplePrefixes As %Boolean = 0) As %Status
{
}

Method GetNamespacePrefix(namespace As %String, ByRef attrs) As %String
{
}

/// Make prefix definition for all newly added namespaces.
Method DefineAllNamespacePrefixes(prefixRequired As %Boolean = 1)
{
}

/// Make prefix definition for a new namespace at the current level.
/// Optionally force the prefix to be used by specifying 3rd argument.
Method DefineNamespacePrefix(namespace As %String, prefixRequired As %Boolean = 1, prefix As %String)
{
}

/// Remove the prefix definition for an existing namespace at the current level.
Method RemoveNamespacePrefix(namespace As %String) [ Internal ]
{
}

/// Add a the XML Schema instance namespace definition to the current level.
/// <method>PopNode</method> will remove this definition.
/// The next <method>PushNode...</method> will cause the attributes
/// to be created for adding this namespace to the XML document.<br>
///
/// <var>prefix</var> is the optional preferred prefix for this namespace.
/// If no prefix is specified, a unique prefix will be computed.
Method AddInstanceNamespace(prefix As %String) As %Status
{
}

/// Add a the XML Schema namespace definition to the current level.
/// <method>PopNode</method> will remove this definition.
/// The next <method>PushNode...</method> will cause the attributes
/// to be created for adding this namespace to the XML document.<br>
///
/// <var>prefix</var> is the optional preferred prefix for this namespace.
/// If no prefix is specified, a unique prefix will be computed.
Method AddSchemaNamespace(prefix As %String) As %Status
{
}

/// Add the SOAP 1.1 encoding namespace, the XML schema namespace and the
/// XML Schema instance namespace definitions to the current level.
/// <method>PopNode</method> will remove these definitions.
/// The next <method>PushNode...</method> will cause the attributes
/// to be created for adding these namespaces to the XML document.<br>
///
/// <var>soapPrefix</var>, <var>schemaPrefixPrefix</var> and <var>xsiPrefix</var>
/// are the optional preferred prefix for these namespaces.
/// If no prefix is specified, a unique prefix will be computed.
Method AddSOAPNamespace(soapPrefix As %String, schemaPrefix As %String, xsiPrefix As %String) As %Status
{
}

/// Add the SOAP 1.2 encoding namespace, the XML schema namespace and the
/// XML Schema instance namespace definitions to the current level.
/// <method>PopNode</method> will remove these definitions.
/// The next <method>PushNode...</method> will cause the attributes
/// to be created for adding these namespaces to the XML document.<br>
///
/// <var>soapPrefix</var>, <var>schemaPrefixPrefix</var> and <var>xsiPrefix</var>
/// are the optional preferred prefix for these namespaces.
/// If no prefix is specified, a unique prefix will be computed.
Method AddSOAP12Namespace(soapPrefix As %String, schemaPrefix As %String, xsiPrefix As %String) As %Status
{
}

/// Get a new unique prefix.
Method GetNewPrefix(prefix As %String, bTemp As %Boolean = 0) As %String
{
}

/// Get the prefix for the specified namespace at the current stack level.
/// "" is returned if the namespace is not defined.
Method GetPrefix(namespace As %String) As %String [ CodeMode = expression ]
{
}

/// Get the next namespace
Method GetNextDefinedNamespace(namespace As %String) As %String [ CodeMode = expression ]
{
}

/// Get the namespace for the specified prefix at the current stack level.
/// "" is returned if the prefix is not defined.
Method GetNamespace(prefix As %String) As %String [ CodeMode = expression ]
{
}

/// Fill myself from the specified instance
Method Copy(source As %XML.Namespaces) [ Internal ]
{
}

/// Reset myself
Method Reset()
{
}

/// GetNextNamespace returns the next XML namespace in name order.
/// A return of "", indicates no more XML namespaces to list.
ClassMethod GetNextNamespace(namespace As %String) As %String [ CodeMode = expression ]
{
}

/// GetNextClass returns the next class in the XML namespace in class name order.
/// A return of "", indicates no more classes to list.
/// Note that namespace="" indicates classes without an XML namespace defined.
ClassMethod GetNextClass(namespace As %String, class As %String) As %String [ CodeMode = expression ]
{
}

}
