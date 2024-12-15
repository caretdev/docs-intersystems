/// This is a utility class that provides an API for serializing objects
/// to a wire protocol for interchange with remote systems.
Class %Net.Serializer [ Abstract, System = 3 ]
{

/// This method performs automatic validation of an object's attribute values.
/// It is called by <METHOD>%Save</METHOD> before persistent objects are stored to the database.
/// <p><METHOD>%ValidateObject</METHOD> does the following:
/// <ol>
/// <li>It tests if any required property values are missing.</li>
/// <li>If specified (if the <i>PROPERTYVALIDATION</i> class parameter is set to <i>ValidateOnSave</i>),
/// it tests property validation.</li>
/// <li>If present, it will call a user-supplied <METHOD>%OnValidateObject</METHOD> method.</li>
/// </ol>
///
/// <p>If any of these tests fail, <METHOD>%ValidateObject</METHOD> immediately returns an error value.
/// <METHOD>%Save</METHOD> (if it is the caller of <METHOD>%ValidateObject</METHOD>) will stop its operation,
/// rollback any transactions it has started, and also return.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
/// Serialize this object instance to a special wire format.
Method %Serialize(ByRef ref) As %Status [ CodeMode = objectgenerator, Internal ]
{
}

/// Deserialize wire data back into an object instance.
Method %Deserialize(ByRef tref, current As %Integer) As %Status [ CodeMode = objectgenerator, GenerateAfter = %Serialize, Internal ]
{
}

}
