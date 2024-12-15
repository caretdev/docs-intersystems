/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.RegisteredObject">Working with Registered Objects</a>.</p>
/// The <CLASS>%RegisteredObject</CLASS> class provides the core capabilities needed to
/// manage the in-memory version of an object. Specifically, <CLASS>%RegisteredObject</CLASS>
/// provides the ability to create and destroy object references (OREFs) as well as
/// support for polymorphism. The <CLASS>%RegisteredObject</CLASS> class also provides the
/// ability to swizzle other referenced objects (persistent or serial) into memory.
///
/// <p>Classes derived directly from <CLASS>%RegisteredObject</CLASS> can be used as <em>transient</em>
/// objects; objects that exist in memory-and can be used from client applications-but
/// are not stored in the database.</p>
Class %Library.RegisteredObject Extends %Library.Base [ Abstract, ClientDataType = HANDLE, OdbcType = INTEGER, SqlCategory = INTEGER, System = 1 ]
{

/// Optional name used by the <i>Form Wizard</i> for a class when generating forms.
Parameter CAPTION;

/// The Java type to be used when exported.
Parameter JAVATYPE;

/// This parameter controls the default validation behavior for the object.
///
/// <p>It can take one of the following values:<br>
/// <table cols=2  >
/// <tr>
/// <td width="33%" valign="top">0: <i>NoValidate</i></td>
/// <td valign="top">Perform no automatic property validation.</td>
/// </tr>
/// <tr>
/// <td width="33%" valign="top">1: <i>ValidateOnSet</i></td>
/// <td valign="top">Perform validation (call the property's <b>..IsValid</b> method)
/// every time an attribute value is set.</td>
/// </tr>
/// <tr>
/// <td width="33%" valign="top">2: <i>ValidateOnSave</i></td>
/// <td valign="top">Perform property validation (in the <METHOD>%ValidateObject</METHOD> method))
/// when the object is saved. This is only applicable to persistent objects.</td>
/// </tr>
/// </table>
///
/// <p>Note: The use of <i>ValidateOnSet</i> is not recommended-it can cause excessive
/// communication between client and server in distributed applications.
/// It is provided for compatability with previous versions.
Parameter PROPERTYVALIDATION As INTEGER [ Constraint = "0,1,2", Flags = ENUM ] = 2;

/// Serial value of object or the object identity
Property "%%OID" As %RawString [ Internal, Private, Transient ];

Method "%%OIDGet"() As %RawString [ Internal, ServerOnly = 1 ]
{
}

/// This method is called by the system when the object is being destroyed
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %Destruct() As %Status [ CodeMode = generator, Final, GenerateAfter = %OnClose, Internal, Private, ServerOnly = 1 ]
{
}

/// Clone the current object to a new object. If <var>deep</var> is 1 then
/// this does a deep copy which will also copy any subobjects and if <var>deep</var> is 0
/// then it will create another reference to any subobjects and increment
/// the reference count appropriately. It returns the new cloned object.<p>
/// Note that even if deep=0 when you clone a parent object in a parent child relationship
/// or a one object of a one to many relationship then it will construct clones of all the
/// child/many objects. This is because a child/many object can only point at a single parent
/// and so if we did not create a clone of these then you would have a relationship with zero
/// items in it. If you really just want to clone the object without these child/many objects
/// then pass deep=-1 to this method.<p>
/// After the clone is constructed it will call %OnConstructClone(object,deep,.cloned) on the clone
/// if it is defined so that you can perform any additional steps e.g. taking out a lock. This
/// works just the same way as %OnNew() does.<p>
/// The <var>object</var> is the oref of the original object that was cloned.
/// The <var>cloned</var> array is just used internally when doing a deep clone to
/// prevent recursive loops, do not pass anything in at all for this parameter on the
/// initial call. If you write a %OnConstructClone and from here you wish to call
/// %ConstructClone on another object pass in the <var>cloned</var> array, e.g.
/// 'Do oref.%ConstructClone(1,.cloned)' so that it can prevent recursive loops.<p>
/// The <var>location</var> is used internally to pass the new location for stream objects.
Method %ConstructClone(deep As %Integer = 0, ByRef cloned As %String, location As %String) As %RegisteredObject [ ServerOnly = 0 ]
{
}

Method %ConstructCloneInit(object As %RegisteredObject, deep As %Integer = 0, ByRef cloned As %String, location As %String) As %Status [ CodeMode = generator, GenerateAfter = %OnConstructClone, Private, ServerOnly = 1 ]
{
}

/// Returns true (1) if a property of this instance has been modified, otherwise false (0).
/// A TRUE result does not necessarily mean that any property has actually been changed. If
/// %IsModified() returns false then the object has not been modified. There are some
/// situations where we simply cannot efficiently detect a change in value. In these cases we
/// will set the modified status of the property.
Method %IsModified() As %Integer [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// This method is called by the system when the object is being constructed
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %Construct(initvalue As %RawString) As %Status [ CodeMode = generator, Final, GenerateAfter = %OnNew, Internal, Private, ServerOnly = 1 ]
{
}

/// Normalizes all of an object's property values by invoking the data type <b>Normalize</b> methods.
///
/// Many data types may allow many different representations of the same value.
/// Normalization converts a value to its cannonical, or <em>normalized</em>, form.
Method %NormalizeObject() As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// This method is somewhat similar to %IsModified but it also checks to see if swizzled
/// references would cause the object to become modified should they be serialized. This works
/// on the assumption that a reference to a persistent object will never be modified if the ID has
/// already been assigned. For references to serial objects, a call to %ObjectModified indicates
/// whether or not the serialized value is different. If the reference to a swizzled object is
/// different from the initial object state then the $$$objModAll macro will already return true.
/// Reference the <property>Set code.
///
/// Returns true (1) if this instance has been modified, otherwise false (0).
Method %ObjectModified() As %Integer [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Build the list of reachable objects and their dependencies
Method %BuildObjectGraph(depth As %Integer = 3, root As %Boolean = 1) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// <p>This method adds the current object to the SaveSet containing objects that are part of the current %Save() for
/// persistent classes or %GetSwizzleObject for serial classes. A queue of objects to be saved or
/// serialized is also constructed. Only modified objects are included in the save queue. The value
/// (OID or serial value in OID form) of each object is also placed in the SaveSet.</p>
///
/// <p>This method will invoke the %OnAddToSaveSet method if it is implemented. See that method for
/// more information.</p>
/// <p>%AddToSaveSet should not ever be invoked directly except from <method>%OnAddToSaveSet</method>.</p>
///
/// <p>This method takes these parameters:
///
/// <var>depth</var>, with these values:<br>
/// <table cols=2  >
/// <tr>
/// <td width="33%" valign="top">1:</td>
/// <td valign="top">Include this object in the SaveSet and, if it has not been serialized put it in the save queue and invoke %AddToSaveSet on any objects referenced by this object to the SaveSet with a depth of 1.</td>
/// </tr>
/// <tr>
/// <td width="33%" valign="top">2:</td>
/// <td valign="top">Include this object in the SaveSet and save queue. Also invoke %AddToSaveSet on any referenced objects in the SaveSet with a depth of 1.</td>
/// </tr>
/// <tr>
/// <td width="33%" valign="top">3:</td>
/// <td valign="top">Include this object in the SaveSet and, if modified, the save queue. Also invoke %AddToSaveSet on any referenced objects in the SaveSet with a depth of 3.</td>
/// </tr>
/// </table>
///
/// <var>refresh</var>, with these values:<br>
/// <table cols=2  >
/// <tr>
/// <td width="33%" valign="top">0:</td>
/// <td valign="top">Add this object to the save set only if it isn't already included.</td>
/// </tr>
/// <tr>
/// <td width="33%" valign="top">1:</td>
/// <td valign="top">Add this object to the SaveSet even if it already exists. This causes
/// object dependencies to be rebuilt. Typically, this value is only passed
/// by %OnAddToSaveSet when it modifies objects other than the current one.</td>
/// </tr>
/// </table>
///
/// <p>Note: Swizzled serial objects always have an empty serial value and will always be placed in the save queue and the SaveSet.
/// the value of <var>depth</var> simply gets passed on to its referenced objects.
Method %AddToSaveSet(depth As %Integer = 3, refresh As %Integer = 0) As %Status [ CodeMode = generator, GenerateAfter = (%OnAddToSaveSet, %OnAfterSave, %OnBeforeSave), PlaceAfter = %SerializeObject, ServerOnly = 1 ]
{
}

/// <p>This method removes the current object from the SaveSet. If this object is also in the save queue
/// it is removed from there as well.</p>
Method %RemoveFromSaveSet() As %Status [ ServerOnly = 1 ]
{
}

/// 	This method retrieves all of the serial values for referenced objects and places them into the instance variables,
/// 	Validates, Normalizes, and serializes the object (with a save of the persistent image if persistent).
/// <br>
/// This method is not meant to be called directly. It is called by %Save and by %GetSwizzleObject.
Method %SerializeObject(ByRef serial As %Binary, partial As %Integer = 0) As %Status [ CodeMode = generator, GenerateAfter = (%OnAfterSave, %OnBeforeSave), ServerOnly = 1 ]
{
}

/// ##BEGIN EVENT: SAVEDATA
/// END EVENT: SAVEDATA
/// This method is used by Language Binding Engine to
/// send the whole object and all objects it referes to
/// to the client.
Method %BindExport(dev As %String, ByRef Seen As %String, RegisterOref As %Boolean, AllowedDepth As %Integer, AllowedCapacity As %Integer) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

/// <p>This method validates an object.</p>
/// <p>The <METHOD>%Save</METHOD> method of a persistent class calls this method before filing any objects in the database. The
/// <METHOD>%ValidateObject</METHOD> of a referencing object can call it. You can also call it explicitly at any time.</p>
/// <p><METHOD>%ValidateObject</METHOD> does the following:</p>
/// <ol>
/// <li>If present, it will call a user-supplied <METHOD>%OnValidateObject</METHOD> method.</li>
/// <li>It checks if any required property values are missing.</li>
/// <li>If the <i>PROPERTYVALIDATION</i> class parameter is set to <var>ValidateOnSave</var>, it validates each non-null property value by calling the
/// property method <var>IsValid</var> on each literal property and the <var>%ValidateObject</var> method for each object-valued embedded object
/// property (properties whose type extend %SerialObject).</li>
/// <li>If <var>checkserial</var> is 1, it forces the checking of any embedded object properties by calling their <var>%ValidateObject</var> method after
/// swizzling this property.
/// <li>If <var>checkserial</var> is 2, it forces the checking of any collections of serial types by iterating over those collections and calling their
/// <METHOD>%ValidateObject</METHOD> method after swizzling this property, in addition to the validation that occurs when checkserial is 1.
/// </ol>
/// <p><METHOD>%ValidateObject</METHOD> returns a %Status indicating success or error. It is up to the caller to process the error value.</p>
/// <p><METHOD>%ValidateObject</METHOD> does not validate object-valued reference properties (properties whose type extends %Persistent) due to the possibility
/// of circular dependencies between objects. The <METHOD>%Save</METHOD> method of a persistent class automatically detects and handles circular references
/// between objects. If you require the validation of reference properties, you can override this method in a subclass or call <METHOD>%Save</METHOD> directly.</p>
Method %ValidateObject(unused As %Integer = 0, checkserial As %Integer = 1) As %Status [ CodeMode = generator, GenerateAfter = %OnValidateObject, ServerOnly = 1 ]
{
}

/// This callback method is invoked when the current object is added to the SaveSet,
/// either because %Save() was invoked on this object or on an object that references this object.
/// %OnAddToSaveSet can modify the current object. It can also add other objects to the current
/// SaveSet by invoking %AddToSaveSet or remove objects by calling %RemoveFromSaveSet.
///
/// <P>If this method returns an error status then %Save() will fail and the transaction
/// will be rolled back.
Method %OnAddToSaveSet(depth As %Integer = 3, insert As %Integer = 0, callcount As %Integer = 0) As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Close</METHOD> method to
/// provide notification that the current object is being closed.
///
/// <P>The return value of this method is ignored.
Method %OnClose() As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%ConstructClone</METHOD> method to
/// provide notification that a clone of an object is being created. It passes in the
/// oref of the object that was cloned in <var>object</var>.
///
/// <P>If this method returns an error then the object will not be created.
Method %OnConstructClone(object As %RegisteredObject, deep As %Boolean = 0, ByRef cloned As %String) As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
/// <p>It is passed the arguments provided in the %New call.
/// When customizing this method, override the arguments with whatever variables and types you expect to receive from %New().
/// For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:
/// <p>Method %OnNew(dob as %Date = "", name as %Name = "") as %Status
/// If instead of returning a %Status code this returns an oref and this oref is a subclass of the current
/// class then this oref will be the one returned to the caller of %New method.
Method %OnNew() As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%ValidateObject</METHOD> method to
/// provide notification that the current object is being validated.
///
/// <P>If this method returns an error then <METHOD>%ValidateObject</METHOD> will fail.
Method %OnValidateObject() As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

}
