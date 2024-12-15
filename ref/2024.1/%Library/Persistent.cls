/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.Persistent">Working with Persistent Objects</a>.</p>
/// <p>The sample class mentioned here (Sample.Person) is part of <a target="_top" href="https://github.com/intersystems/Samples-Data">https://github.com/intersystems/Samples-Data.</a>
/// See <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=landing+githubsamples">Downloading Samples</a>.</p>
/// The <CLASS>%Persistent</CLASS> class provides the basic mechanism by
/// which objects are stored to and retrieved from a database.
Class %Library.Persistent Extends %SwizzleObject [ Abstract, ClassType = persistent, NoExtent, PropertyClass = %Library.PersistentProperty, System = 2 ]
{

/// <p>If a persistent class uses %Storage.Persistent then the <var>DEFAULTGLOBAL</var> parameter is used as the
/// default global root for the values of the storage keywords COUNTERLOCATION, DATALOCATION, IDLOCATION,
/// INDEXLOCATION and STREAMLOCATION in the active storage definition. <var>DEFAULTGLOBAL</var> is only used
/// to generate location keyword values that are not already defined. The location value is constructed by adding
/// a location type to the end of <var>DEFAULTGLOBAL</var>. For example, if <var>DEFAULTGLOBAL</var> = "^GL.Account"
/// the compiler will generate <var>DATALOCATION</var> = ^GL.AccountD.</p>
/// <p>
/// If <parameter>USEEXTENTSET</parameter> is true, then DEFAULTGLOBAL is used as the default extent location.
/// </p>
/// <br>
/// The location types are:
/// <table>
/// <tr><th align="left">Location</th><th align="left">Type</th>
/// <tr><td>COUNTERLOCATION</td><td align="center">C</td></tr>
/// <tr><td>DATALOCATION</td><td align="center">D</td></tr>
/// <tr><td>IDLOCATION</td><td align="center">D</td></tr>
/// <tr><td>INDEXLOCATION</td><td align="center">I</td></tr>
/// <tr><td>STREAMLOCATION</td><td align="center">S</td></tr>
/// </table>
Parameter DEFAULTGLOBAL As STRING;

/// Global name containing master map data for this class.
/// Used in creating the oref to oid table so we can determine where the data for this class is located.
/// Will normally be set automatically during compile for both default and SQL storage classes so normally
/// there is no need to modify this setting unless you have custom storage and wish to point this at a specific
/// global name. If the value is "" then we will not insert a data global location into the oid->obj
/// table and so will assume if the same class (mapped from a common location) opens the same id in two different
/// namespaces these are referring to the same instance and so the second open will return the first oref.
Parameter DATALOCATIONGLOBAL As STRING = {$$storageGbl^%qarmac(%classname)};

/// If the <var>DSTIME</var> parameter is set to AUTO then the most recent filing operation in the current DSTIME value
/// for each object will be recorded in a global, ^OBJ.DSTIME:
/// <br>
/// 	^OBJ.DSTIME(<var>ExtentName</var>,<var>DSTIME</var>,<var>objectID</var>) = <var>filing operation</var>
/// <br>
/// For DSTIME=AUTO the DSTIME value is recorded in ^OBJ.DSTIME and is set by the consumer of DSTIME data.
/// <br>
/// Refer to %DeepSee documentation for more information on how DSTIME is used by %DeepSee.
/// <br>
/// The filing operations are:
/// <table>
/// <tr><th align="left">Code</th><th align="left">Operation</th>
/// <tr><td>0</td><td align="center">Update</td></tr>
/// <tr><td>1</td><td align="center">Insert</td></tr>
/// <tr><td>2</td><td align="center">Delete</td></tr>
/// </table>
/// <br>
/// If the <var>DSTIME</var> parameter is set to MANUAL then the user is responsible for journaling object filing operations.
/// If <var>DSTIME</var> is set to "CONDITIONAL", the user is expected to define the parameter DSCONDITION setting it to an expression which
/// will determine if the actions performed when DSTIME is set to AUTO will execute or not
Parameter DSTIME As STRING [ Constraint = ",AUTO,MANUAL,CONDITIONAL", Flags = ENUM ];

/// DSINTERVAL is the number of seconds between one DSTIME value and the next. The DSTIME value for DSINTERVAL > 0 is computed from $ZTIMESTAMP
/// and is the number of seconds from day 0, time 0 to the nearest interval, rounded down. Using an interval has the effect of grouping
/// all DSTIME entries for the class in some number of seconds.
Parameter DSINTERVAL As INTEGER;

/// DSCONDITION is the expression that will be evaluated before deciding whether certain actions must be taken. These actions are the same as those
/// performed when DSTIME is set to AUTO - for instance updating ^OBJ.DSTIME on modifying a record.
Parameter DSCONDITION As STRING;

/// The <var>EXTENTQUERYSPEC</var> parameter defines the properties to be retrieved in
/// addition to the IDKEY value for the built-in <b>Extent</b> query.
/// <p>Persistent classes should define a value of for <var>EXTENTQUERYSPEC</var> if they
/// wish to include additional properties in their built-in <b>Extent</b> query.
/// <p>For example:
/// <EXAMPLE LANGUAGE=NONE>
/// parameter EXTENTQUERYSPEC = "Name,SSN,Age";
/// </EXAMPLE>
Parameter EXTENTQUERYSPEC As ROWSPEC [ Flags = LIST ];

/// The <var>EXTENTSIZE</var> parameter is used to inform the <i>SQL Query Optimizer</i>
/// of the approximate number of instances in the extent containing instances of this class.
///
/// <p>For example, a class that expects to have about 1,000,000 instances should define:
/// <EXAMPLE LANGUAGE=NONE>
/// parameter EXTENTSIZE = 1000000;
/// </EXAMPLE>
Parameter EXTENTSIZE As INTEGER = 100000;

/// If this parameter is set to 1 then a GUID will be assigned (to the %GUID property) to each new object.
/// When the object is saved for the first time this GUID value will be recorded in a namespace
/// index which will allow GUID to be resolved to OIDs.
Parameter GUIDENABLED = 0;

/// The <var>IDENTIFIEDBY</var> parameter can optionally be set to the name
/// of a required property whose type is a reference to another class (not a literal).
/// This property's IDKEY is then used as the prefix for the IDKEY of this class.
/// <br><i><u>Deprecated parameter, use parent/child relationships instead</i></u>
Parameter IDENTIFIEDBY [ Deprecated ];

/// The <var>MANAGEDEXTENT</var> parameter can be set to 0 (zero) to cause the Extent Manager
/// to ignore this class. If set to 1 then the Extent Manager will register globals used by
/// the class and detect collisions. Unmanaged extents (MANAGEDEXTENT = 0) are not checked.
/// Currently, only classes using default storage (%Storage.Persistent) can be managed.
Parameter MANAGEDEXTENT As INTEGER [ Constraint = "0,1", Flags = ENUM ] = 1;

/// <var>READONLY</var> = 1 means that objects can be created, opened but not saved or deleted.
/// Tables are projected to SQL as READONLY.
Parameter READONLY = 0;

/// <var>ROWLEVELSECURITY</var> = 1 | &lt;property&gt; means that row level security is active and the list
/// of users/roles for a given instance/row is contained in a generated property. If
/// the value of this parameter is a valid property name then that property will be
/// used as the reader list and only generated if not already defined.
Parameter ROWLEVELSECURITY;

/// %XCOMPACTANCESTRY can be set to a string to replace the value of the %%CLASSNAME property (x__classname field)
/// with a more compact value that will reduce the size of the data on disk stored for each record.
Parameter %XCOMPACTANCESTRY As STRING;

/// <var>STORAGEDEFAULT</var> defines the default storage allocation to use for properties in this class.
/// The Storage Generator will use this value when building the initial Storage Definition or amending it
/// when new properties have been added to a class. Allowed values are "column" and "". Leaving it
/// undefined ("") means the overall system default row-based storage model will be used when persisting
/// this extent. This value can be overridden for individual properties with the corresponding property-level
/// parameter, where additional values are available for specific property types.
Parameter STORAGEDEFAULT [ Constraint = ",columnar" ];

/// <p>If a persistent class uses %Storage.Persistent then the <var>USEEXTENTSET</var> parameter is used to
/// specify the global naming strategy used by the default storage class (<class>%Storage.Persistent</class>).
/// If TRUE, then global names are generated for each index that is not already allocated a LOCATION in the active
/// storage definition.
/// </p>
/// <p>
/// If the storage definition specifies EXTENTLOCATION then that value is used as the base reference for all globals
/// assigned to indices that do not have an explicit LOCATION assigned.
/// </p>
/// <p>
/// The global name generator for <var>USEEXTENTSET</var> = TRUE honors the package prefix defined
/// in the Package Definition. If none is defined then the package prefix is generated using a based-62 encoded integer
/// produced from CRC32 of the package name. The specific class identifier is generated from the unqualified class name using
/// the same hash (class->crc32->base62) to form EXTENTLOCATION. Specific index suffixes are produced using a generated
/// offset that is local to the first persistent class with an enumerated extent in which the index appears (either defined or inherited).
/// </p>
/// <p>
/// There are several factors that influence the generation of EXTENTLOCATION:
/// <ol type="1">
/// <li>If the EXTENTLOCATION keyword is defined then its value is used,</li>
/// <li>If the DEFAULTGLOBAL class parameter is defined then its value is used,</li>
/// <li>otherwise, the value is generated as two dot delimited segments. The first segment is either the defined package prefix retrieved from
/// the package definition global or, if none is defined, a hash of the package name. The second segment is generated by a hash of the unqualified
/// class name. The hash used is a base 62 encoded CRC32 of the value. For example, Sample.Person produces ^EW3K.wPC9 if no package prefix is defined. </li>
/// </ol>
/// The EXTENTLOCATION value is used as the base for specific globals allocated to indices. Each index is assigned an offset that is incremented from
/// 1 by 1, offset = 1 is reserved for the IDKEY index.
/// </p>
/// <p>
/// EXTENTLOCATION is specific to each class. When a persistent class extends another persistent class, forming a subextent, then the subclass's EXTENTLOCATION
/// is specific to that subclass. The index location for any inherited index is already defined specifically in the superclass so the subclass's EXTENTLOCATION
/// will only be used as the base for any index that originates in the subclass. For example, Sample.Employee extends Sample.Person. The EXTENTLOCATION generated for
/// Sample.Person is ^EW3K.wPC9 and the EXTENTLOCATION for Sample.Employee is ^EW3K.D1Ex. Since Sample.Employee inherits several indices from Sample.Person, the
/// global name assigned to each of those indices is already defined and inherited by Sample.Employee. However, any index defined in Sample.Employee and not
/// inherited from Sample.Person will be assigned a global name based on Sample.Employee's EXTENTLOCATION, not on Sample.Person's EXTENTLOCATION. In other words,
/// the EXTENTLOCATION storage keyword is not inherited.
/// </p>
/// <p>
/// The following tables show the indices and locations for Sample.Person and Sample.Employee. Notice the last index in the Sample.Employee table:
/// <table>
/// 	<tr><td align="left">Class = Sample.Person</td></tr>
/// 	<tr>
/// 		<td>
/// 			<table>
/// 				<tr><th align="left">Index</th><th align="left">Location</th>
/// 				<tr><td>IDKEY</td><td>^EW3K.wPC9.1</td></tr>
/// 				 <tr><td>$Person</td><td>^EW3K.wPC9.2</td></tr>
/// 				<tr><td>NameIDX</td><td>^EW3K.wPC9.3</td></tr>
/// 				<tr><td>SSNKey</td><td>^EW3K.wPC9.4</td></tr>
/// 				<tr><td>ZipCode</td><td>^EW3K.wPC9.5</td></tr>
/// 			</table>
/// 		</td>
/// 	</tr>
/// 	<tr></tr>
/// 	<tr><td align="left">Class = Sample.Employee extends Sample.Person</td></tr>
/// 	<tr>
/// 		<td>
/// 			<table>
/// 				<tr><th align="left">Index</th><th align="left">Location</th>
/// 				<tr><td>IDKEY</td><td>^EW3K.wPC9.1</td></tr>
/// 				<tr><td>$Person</td><td>^EW3K.wPC9.2</td></tr>
/// 				<tr><td>NameIDX</td><td>^EW3K.wPC9.3</td></tr>
/// 				<tr><td>SSNKey</td><td>^EW3K.wPC9.4</td></tr>
/// 				<tr><td>ZipCode</td><td>^EW3K.wPC9.5</td></tr>
/// 				<tr><td>$Employee</td><td>^EW3K.D1Ex.2</td></tr>
/// 			</table>
/// 		</td>
/// 	</tr>
/// </table>
/// <p>
/// Any generated global index locations and EXTENTLOCATION are updated back into the active storage definition after the class is
/// compiled.
/// </p>
/// <p>
/// If <var>USEEXTENTSET</var> is FALSE, then global names are generated using the package-hash.class-hashSuffix strategy.
/// For example, ^Sample.PersonD and ^Sample.PersonI("SSNKey") are globals used by Sample.Person and specific index structures
/// are all stored in ^Sample.PersonI with the index name used as the first subscript.
/// </p>
/// <br>
Parameter USEEXTENTSET = 0;

/// VERSIONPROPERTY = &lt;property&gt; means that the &lt;property&gt; in memory will be compared to
/// the &lt;property&gt; on disk during an update. If different a concurrency conflict
/// error will be reported and the save will fail.
Parameter VERSIONPROPERTY As STRING;

/// VERSIONCLIENTNAME can be set to a valid CLIENTNAME (see property CLIENTNAME) value. This
/// value will be used for client projections of the %Version property.
Parameter VERSIONCLIENTNAME;

Parameter masterClassName;

/// <p>%Concurrency holds the value of the concurrency setting for this object.
/// </p>
/// 	<TABLE cols=2 border=1>
/// 	<TR>
/// 		<TD valign="top">0:</TD><TD CLASS=Term valign="top">None</TD>
/// 			<TD valign="top">
/// 			Suppress all concurrency controls for this object. No locks are used.
/// 			</TD>
/// 		</TR>
/// 		<TR>
/// 			<TD valign="top">1:</TD><TD CLASS=Term valign="top">Atomic Read</TD>
/// 			<TD valign="top">
/// 				When an object is loaded, <b>%LoadData</B>  will read the entire object from disk without the possibility
/// 			that another process will write any data to this object before the read operation is
/// 			complete. If necessary, a shared lock will be acquired on the object to guarantee an atomic read.
/// 			Any locks acquired during the read operation are released after the read operation is completed.
/// 				No locks are acquired for a new object.
/// 			<b>%SaveData</B> will acquire an exclusive lock during the course of the save.
/// 			</TD>
/// 		</TR>
/// 		<TR>
/// 			<TD valign="top">2:</TD><TD CLASS=Term valign="top">Shared</TD>
/// 			<TD valign="top">
/// 				When an object is loaded, <b>%LoadData</B> will acquire a shared lock on the object and read the entire object from disk.
/// 			The lock is released after the read operation is completed.
/// 				No locks are acquired for a new object.
/// 			<b>%SaveData</B> will acquire an exclusive lock during the course of the save.
/// 			</TD>
/// 		</TR>
/// 		<TR>
/// 			<TD valign="top">3:</TD><TD CLASS=Term valign="top">Shared/Retained</TD>
/// 			<TD valign="top">
/// 			When an object is loaded, <b>%LoadData</B> will acquire a shared lock for the object.
/// 			The lock is released when the object is destructed (removed from memory).<br>
/// 				No locks are initially acquired for a new object.
/// 			<b>%SaveData</B> will acquire an exclusive lock during the course of the save.
/// 			<b>%SaveData</B> will also acquire a shared lock when saving a new object. This lock is retained
/// 				until the object is destructed (removed from memory).
/// 			</TD>
/// 		</TR>
/// 		<TR>
/// 			<TD valign="top">4:</TD><TD CLASS=Term valign="top">Exclusive</TD>
/// 			<TD valign="top">
/// 			When an object is loaded, <b>%LoadData</B> will acquire an exclusive lock for the object.
/// 			The lock is released when the object is destructed (removed from memory).<br>
/// 			<b>%SaveData</B> will acquire an exclusive lock when saving a new object. This lock is retained
/// 				until the object is destructed (removed from memory).
/// 		</TD>
/// 	</TR>
/// </table>
/// 	<p>The only difference between Shared (2) and Atomic Read (1) settings is that Shared concurrency
/// 	triggers a shared lock to always be acquired during read while Atomic Read will only acquire a
/// 	shared lock when required to ensure an atomic read.</p>
Property %Concurrency As %RawString [ Final, InitialExpression = {$zu(115,10)}, Internal, Transient ];

Method %ConcurrencySet(val As %RawString) As %Status [ Internal, Private ]
{
}

/// Deletes the stored version of the object with OID <var>oid</var> from the database.
/// It does not remove any in-memory versions of the object that may be present.
///
/// Refer to <a href="/csp/docbook/DocBook.UI.Page.cls?KEY=GOBJ_concurrency" target="_blank">Object Concurrency Options</a> for more details
/// on the optional <var>concurrency</var> argument.  For classes defined as Sharded=1, concurrency=0 is always used.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
///
/// <p>Internally, <METHOD>%Delete</METHOD> initiates a transaction and then invokes the storage
/// interface method <METHOD>%DeleteData</METHOD>. If <METHOD>%DeleteData</METHOD> succeeds, the
/// transaction is committed, otherwise it is rolled back.  No transaction is initiated if this class is defined as Sharded=1
ClassMethod %Delete(oid As %ObjectIdentity = "", concurrency As %Integer = -1) As %Status [ CodeMode = generator, Final, GenerateAfter = (%OnDelete, %OnDeleteFinally, %OnJournalObject), ServerOnly = 0 ]
{
}

/// Internal method to remove a previously assigned oid only to be used when deleting an object that is also in memory.
Method %DeleteOID() As %Status [ Internal, Private ]
{
}

/// Deletes the stored version of the object with ID <var>id</var> from the database.
///
/// <p><METHOD>%DeleteId</METHOD> is identical in operation to the <METHOD>%Delete</METHOD> method except
/// that it uses an Id value instead of an OID value to find an object.
///
/// Refer to <a href="/csp/docbook/DocBook.UI.Page.cls?KEY=GOBJ_concurrency" target="_blank">Object Concurrency Options</a> for more details
/// on the optional <var>concurrency</var> argument.  For classes defined as Sharded=1, concurrency=0 is always used.
ClassMethod %DeleteId(id As %String, concurrency As %Integer = -1) As %Status [ CodeMode = expression, Final, ServerOnly = 0 ]
{
}

/// Delete all instances of this class from its extent. On exit <var>instancecount</var>
/// contains the original number of instances while <var>deletecount</var> contains
/// the number of instances actually deleted.<br>
///
/// <p>Internally, <METHOD>%DeleteExtent</METHOD> iterates over the set of instances in the
/// collection and invokes the <METHOD>%Delete</METHOD> method.<br>
///
/// Refer to <a href="/csp/docbook/DocBook.UI.Page.cls?KEY=GOBJ_concurrency" target="_blank">Object Concurrency Options</a> for more details
/// on the optional <var>concurrency</var> argument.<br>
///
/// The option <var>pInitializeExtent</var> argument allows the user to override the default behavior
/// of calling <method>%KillExtent</method> when all instances are successfully deleted. <method>%KillExtent</method>
/// is called by default when the extent is empty so that empty globals can be killed. If <method>%KillExtent</method>
/// is not called then some empty globals can remain as well as the ID counter if it exists. The default value for <var>pInitializeExtent</var>
/// is 1. Unless the caller specifies a false value for <var>pInitializeExtent</var> the globals used by the extent will be killed. If the
/// process' GlobalKillDisabled flag is enabled and not the default of false the process' GlobalKillDisabled flag will be changed temporarily to false
/// to allow the operation to complete without a possible <PROTECT> error.
/// In some cases, the globals used by the extent are not used exclusively by the extent. In those cases it is possible that some globals will still be defined
/// even when pInitializeExtent is true. By default this call to <method>%KillExtent</method> will not delete default stream storage global, but if you pass '2' in
/// <var>pInitializeExtent</var> and if the entire extent was deleted we will call %KillExtent passing the 'killstreams' flag to ask it to remove kill the default
/// storage global.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
ClassMethod %DeleteExtent(concurrency As %Integer = -1, ByRef deletecount, ByRef instancecount, pInitializeExtent As %Integer = 1, Output errorLog As %Status) As %Status [ ServerOnly = 0 ]
{
}

/// Changes the concurrency level of an instance in memory to a lower level
/// by changing the lock type specified in the <METHOD>%Open</METHOD> method for the object's
/// instance. Fails if it cannot lower the concurrency level.
///
/// Refer to <a href="/csp/docbook/DocBook.UI.Page.cls?KEY=GOBJ_concurrency" target="_blank">Object Concurrency Options</a> for more details
/// on the <var>concurrency</var> argument.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %DowngradeConcurrency(concurrency As %Integer(MINVAL=0,MAXVAL=4) = 0) As %Status [ Final, Internal, ServerOnly = 0 ]
{
}

/// Returns a %Status value
ClassMethod %ExecuteBeforeTriggers(%oper, pOid As %Library.ObjectIdentity = "", ByRef pNew As %String(MAXLEN=""), ByRef pOld As %Library.Binary) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

/// Returns a %Status value
ClassMethod %ExecuteAfterTriggers(%oper, pOid As %Library.ObjectIdentity = "", ByRef pNew As %String(MAXLEN=""), ByRef pOld As %Library.Binary) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

/// Returns the persistent object Id, if there is one, of this object.
/// <p>Returns a null string if there is no object Id.
Method %Id() As %String [ CodeMode = expression, Final, ServerOnly = 0 ]
{
}

/// Assigns a persistent object Id value for this object.
/// This method fails if the object already has an Id value assigned to it.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %IdSet(id As %String) As %Status [ Final, Internal, Private, ServerOnly = 1 ]
{
}

/// <METHOD>%GetSwizzleObject</METHOD> is used to obtain a state of the object that can
/// later be used to restore the object. In the case of a persistent object, it returns the OID.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %GetSwizzleObject(force As %Integer = 0, ByRef oid As %ObjectIdentity) As %Status [ Final, ServerOnly = 1 ]
{
}

/// Returns the OID of this object.
Method %Oid() As %ObjectIdentity [ CodeMode = expression, Final, ServerOnly = 0 ]
{
}

/// %ComposeOid()
///
/// 		This class method accepts an ID and returns a fully qualified OID, containing the most specific type class of the object identified by the
/// 		<var>id</var> argument. If default storage is used then the %%CLASSNAME value is used to determine the most specific type class, otherwise call
/// 		%OnDetermineClass to determine the most specific type class. If neither case is true then the current class is
/// 		used. If there is a problem determining the most specific type class then null ("") is returned.
ClassMethod %ComposeOid(id As %String(MAXLEN="")) [ CodeMode = generator ]
{
}

/// Loads an object from the database into memory and returns an OREF referring to the object.
/// <var>oid</var> is the OID value of the object to load. If <var>oid</var> is a partially-formed OID,
/// that is it does not include a class name, then <METHOD>%Open</METHOD> does the following:
/// a) calls the method, <METHOD>%OnDetermineClass</METHOD>,
/// to determine the class name, otherwise b) it assumes the class name is
/// the same as the object class on which <METHOD>%Open</METHOD> was called.
/// <p>If a version of the specified object is already in memory, then <METHOD>%Open</METHOD> increments
/// the object's reference count and returns the OREF value referring to this version.
/// <METHOD>%Open</METHOD> also has an optional concurrency argument which specifies the concurrency setting
/// for this object (and sets the value of the <var>%Concurrency</var> attribute). If the
/// <var>concurrency</var> argument is omitted then the system default value (1: <i>Atomic</i>) is used.
///
/// Refer to <a href="/csp/docbook/DocBook.UI.Page.cls?KEY=GOBJ_concurrency" target="_blank">Object Concurrency Options</a> for more details
/// on the optional <var>concurrency</var> argument.  For classes defined as Sharded=1, concurrency=0 is always used.
///
/// <p><METHOD>%Open</METHOD> returns an OREF value that refers to the in-memory object instance or
/// a null reference ($$$NULLOREF) if it cannot find or otherwise load the object.
ClassMethod %Open(oid As %ObjectIdentity, concurrency As %Integer = -1, ByRef sc As %Status = {$$$OK}) As %ObjectHandle [ Final, ServerOnly = 0 ]
{
}

/// Return true if pOID is a null object and false if the object is not null
ClassMethod %ObjectIsNull(pOID As %ObjectIdentity) As %Boolean
{
}

Method %LoadInit(oid As %ObjectIdentity = "", concurrency As %Integer = "", reset As %Boolean = 0) As %Status [ CodeMode = generator, Final, Internal, Private ]
{
}

/// Loads an object from the database into memory or finds existing reference and returns
/// an OREF referring to the object.
/// <var>id</var> is the Id (not a full OID) value of the object to load.
/// <p>If a version of the specified object is already in memory, then <METHOD>%Open</METHOD> increments
/// the object's reference count and returns the OREF value referring to this version.
/// <METHOD>%Open</METHOD> also has an optional concurrency argument which specifies the concurrency setting
/// for this object (and sets the value of the <var>%Concurrency</var> attribute). If the
/// <var>concurrency</var> argument is omitted then the system default value (1: <i>Atomic</i>) is used.
///
/// Refer to <a href="/csp/docbook/DocBook.UI.Page.cls?KEY=GOBJ_concurrency" target="_blank">Object Concurrency Options</a> for more details
/// on the optional <var>concurrency</var> argument.  For classes defined as Sharded=1, concurrency=0 is always used.
///
/// <p><METHOD>%OpenId</METHOD> returns an OREF value that refers to the in-memory object instance or
/// a null reference ($$$NULLOREF) if it cannot find or otherwise load the object.
ClassMethod %OpenId(id As %String = "", concurrency As %Integer = -1, ByRef sc As %Status = {$$$OK}) As %ObjectHandle [ CodeMode = expression, Final, ServerOnly = 0 ]
{
}

/// <p>%Reload is an instance method that re-reads an object from disk into the
/// current instance. Calling %Reload is similar to closing the OREF and then
/// <METHOD>%Open</METHOD>, but it uses the same OREF. %Open is not called and no %Open callbacks
/// are called.</p>
/// <p>After %Reload is called, there are no swizzled references for the object,
/// and <METHOD>%IsModified</METHOD> returns 0.
/// </p>
/// <p>%Reload performs the following steps. First, all swizzled objects for the
/// instance are unswizzled. Then the object is reloaded from disk, using the
/// <METHOD>%Id</METHOD> of the current object. Finally, the modified bit for each property is
/// cleared.
/// <p>
Method %Reload() As %Status [ ServerOnly = 0 ]
{
}

/// This method is called by <METHOD>%Save</METHOD> when a transaction is rolled back.
/// It will invoke a user-supplied <METHOD>%OnRollBack</METHOD> method if it exists.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %RollBack() As %Status [ ServerOnly = 1 ]
{
}

/// Stores an in-memory version of an object to disk. If the object was stored
/// previously (and thus, already has an OID), <METHOD>%Save</METHOD> updates the on-disk version.
/// Otherwise, <METHOD>%Save</METHOD> assigns a new OID to the object and saves it.
///
/// <p>The <var>related</var> argument specifies how <METHOD>%Save</METHOD> handles references to other objects.
/// It can take the following values:
/// <table cols=2>
/// <tr>
/// <td width="33%" valign="top">0: <i>Shallow Save</i></td>
/// <td valign="top">
/// If this object has been modified then save it. Only save related objects if they have never been saved (do not have an OID value) and must be
/// saved in order to serialize this object's property values.
/// </td>
/// </tr>
///
/// <tr>
/// <td width="33%" valign="top">1: <i>Deep Save</i></td>
/// <td valign="top">
/// Save this object and all "related" objects that have been edited. In this case,
/// "related" means any in-memory objects it refers to, and any in-memory objects
/// they in turn refer to, and so on. However, only objects that have been changed
/// (<METHOD>%IsModified</METHOD> returns true) will actually be saved to the database, including
/// the object upon which <METHOD>%Save</METHOD> was initially called.
/// </td>
/// </tr>
/// </table>
///
/// <p><METHOD>%Save</METHOD> automatically detects and handles circular references between objects.
/// For example, <METHOD>%Save</METHOD> will detect if object A refers to object B and object B likewise refers to object A.
/// In this case it will avoid falling into an infinite, recursive loop.
///
/// <p>Note that either reference attribute, A to B or B to A, can be specified as a required attribute but not both of them.
/// If both reference attributes are required then <METHOD>%Save</METHOD> will fail.
///
/// <p>By default <METHOD>%Save</METHOD> automatically manages transactions. You can enable and disable
/// automatic transaction support using the <code>$$SetTransactionMode^%apiOBJ()</code> routine.
///
/// <p>When <METHOD>%Save</METHOD> saves an object to the database, it initiates one transaction
/// (by calling TSTART) for the entire set of saves, including the original object
/// and any related objects. If the save operation is successful, <METHOD>%Save</METHOD> will issue a
/// TCOMMIT command to commit the transaction and write the data to the database.
/// If <METHOD>%Save</METHOD> encounters a problem when saving the original object or any of its
/// related objects, it rolls back the entire transaction and performs the following actions:
/// <ul>
/// <li>It issues a TROLLBACK command to rollback any changes to the database that may
/// have occurred. (In the case of the <CLASS>%Storage.Persistent</CLASS> class, changes to the on-disk
/// counter value, used to determine the next available object id number, are not rolled back.)</li>
/// <li>It restores the in-memory state of all the objects involved in the transaction to
/// their pre-transaction state. This includes restoring any modified flags, and
/// restoring to null ("") any OID values that have been assigned during the course of
/// the transaction. Additional property values changed during the course of the
/// transaction are not restored, however.</li>
/// <li>It calls the <METHOD>%RollBack</METHOD> method on each object involved with the transaction.
/// The order in which the <METHOD>%RollBack</METHOD> methods are called is undefined. <METHOD>%RollBack</METHOD> will
/// call a user-written <METHOD>%OnRollback</METHOD> method if it is present.</li>
/// </ul>
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %Save(related As %Integer = 1) As %Status [ CodeMode = generator, Final, GenerateAfter = (%OnBeforeSave, %OnAfterSave), ServerOnly = 0 ]
{
}

/// %OnDeleteFinally is an optional user implemented callback. There is no return value and
/// any exceptions are trapped and discarded.
ClassMethod %OnDeleteFinally(oid As %ObjectIdentity, status As %Status) [ Abstract ]
{
}

/// %OnOpenFinally is an optional user implemented callback. There is no return value and
/// any exceptions are trapped and discarded.
ClassMethod %OnOpenFinally(oid As %ObjectIdentity, status As %Status)
{
}

/// %OnSaveFinally is an optional user implemented callback. There is no return value and
/// any exceptions are trapped and discarded.
ClassMethod %OnSaveFinally(oref As %ObjectHandle, status As %Status) [ Abstract ]
{
}

/// Elevates the concurrency level of an instance in memory to a higher level
/// by changing the lock type specified in the <METHOD>%Open</METHOD> method for the object's
/// instance. Fails if it cannot elevate the concurrency level.
///
/// Refer to <a href="/csp/docbook/DocBook.UI.Page.cls?KEY=GOBJ_concurrency" target="_blank">Object Concurrency Options</a> for more details
/// on the <var>concurrency</var> argument.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %UpgradeConcurrency(concurrency As %Integer(MINVAL=0,MAXVAL=4) = 0) As %Status [ CodeMode = generator, Final, Internal, ServerOnly = 0 ]
{
}

/// Acquires a lock for the current instance.
///
/// <p>The <var>locktype</var> argument specifies the type of lock to acquire.
/// It can take the following values:
/// <table cols=2>
/// <tr>
/// <td width="33%" valign="top">"e": <i>Exclusive</i></td>
/// <td valign="top">
/// An exclusive lock will prevent any other process from acquiring any type of lock
/// on this object.
/// </td>
/// </tr>
///
/// <tr>
/// <td width="33%" valign="top">"s": <i>Shared</i></td>
/// <td valign="top">
/// A shared lock will allow other processes to acquire shared locks but will
/// prevent other processes from acquiring an exclusive lock.
/// </td>
/// </tr>
/// </table>
///
/// Fails if the locktype parameter is not one of the values described above.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %AcquireLock(locktype As %String = "") As %Status [ CodeMode = expression, Private, ServerOnly = 1 ]
{
}

/// Releases a lock for the current instance.
///
/// <p>The <var>locktype</var> argument specifies the type of lock to release.
/// It can take the following values:
/// <table cols=2>
/// <tr>
/// <td width="33%" valign="top">"e": <i>Exclusive</i></td>
/// <td valign="top">
/// An exclusive lock will prevent any other process from acquiring any type of lock
/// on this object.
/// </td>
/// </tr>
///
/// <tr>
/// <td width="33%" valign="top">"s": <i>Shared</i></td>
/// <td valign="top">
/// A shared lock will allow other processes to acquire shared locks but will
/// prevent other processes from acquiring an exclusive lock.
/// </td>
/// </tr>
/// </table>
///
/// Fails if the locktype parameter is not one of the values described above.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %ReleaseLock(locktype As %String = "") As %Status [ CodeMode = expression, Private, ServerOnly = 1 ]
{
}

/// %LockExtent acquires a lock on the entire extent of the class. If <var>shared</var> is true then a shared lock
/// is acquired, otherwise an exclusive lock is acquired. If the requested lock cannot be acquired then a failure
/// %Status value is returned. The default implementation returns an error indicating that the method is not implemented.
/// This method is automatically generated for persistent classes using <class>%Storage.Persistent</class> or <class>%Storage.SQL</class>.
ClassMethod %LockExtent(shared As %Boolean = 0) As %Status [ PlaceAfter = %LockId, ServerOnly = 1 ]
{
}

/// %UnlockExtent releases a lock on the entire extent of the class. The type
/// of lock released is determined by <var>shared</var>. The default implementation returns an error indicating that the method is not implemented.
/// This method is automatically generated for persistent classes using <class>%Storage.Persistent</class> or <class>%Storage.SQL</class>.
ClassMethod %UnlockExtent(shared As %Boolean = 0, immediate As %Boolean = 0) As %Status [ PlaceAfter = %LockExtent, ServerOnly = 1 ]
{
}

/// Obtain an exclusive or shared lock on the object identified by <var>id</var>. The type
/// of lock obtained is determined by <var>shared</var>. This method is normally generated by
/// the storage class for persistent classes using <class>%Storage.Persistent</class> or <class>%Storage.SQL</class>.
ClassMethod %LockId(id As %String, shared As %Boolean = 0, timeout As %Integer) As %Status [ ServerOnly = 0 ]
{
}

/// Release an exclusive or shared lock on the object identified by <var>id</var>. The type
/// of lock released is determined by <var>shared</var>. If this method is not overridden
/// then the default implementation returns an error. This method is normally generated by
/// the storage class for persistent classes using <class>%Storage.Persistent</class> or <class>%Storage.SQL</class>.
ClassMethod %UnlockId(id As %String, shared As %Boolean = 0, immediate As %Boolean = 0) As %Status [ ServerOnly = 0 ]
{
}

/// This method acquires a lock on the object identified by 'id'. If the number of locks
/// already taken out for this extent is greater than the configured maximum then the lock
/// will be escalated to an extent-level lock. If the lock is successfully obtained a 1 will
/// be returned, 2 will be returned if the lock was escalated to an extent-level lock. A zero, '0',
/// is returned if the method failed to obtain a lock.
ClassMethod %GetLock(id As %String, shared As %Boolean = 0) As %Integer [ ServerOnly = 1 ]
{
}

/// <p>Builds entries for each index specified in the <var>pIndexList</var> argument.
/// If <var>pIndexList</var> is empty then all indices that originate in the class are rebuilt.
/// If not empty you can specify a <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> of indexes to build, e.g. $lb("MyIndex1","MyIndex2").
/// If there are other bitmap indexes specified in <var>pIndexList</var>
/// and there is a bitmap extent index defined for the class
/// then it will be implicitly included in <var>pIndexList</var>. If the bitmap
/// extent index is included then the bitmap extent index for each subextent is also built. </p>
///
/// <p>If <var>pAutoPurge</var> is true then the indices contained in <var>pIndexList</var> will be
/// purged before they are built as long as no range is specified, if a range is specified we will
/// skip any purge. The default is TRUE (1).</p>
///
/// <p>If <var>pLockFlag</var> is one (1) then an extent lock will be acquired before the indices
/// are built. If the lock cannot be acquired then an error is returned. The lock is released
/// after the index build is completed. If <var>pLockFlag</var> is two (2) then a lock is acquired prior to filing
/// indices for that instance and it is released as soon the indices for that instance are filed.
/// If it is zero (0) then no locks are used while filing the indices. If it is three (3) then a
/// shared extent lock will be acquired before the indices are built and released upon completion.</p>
///
/// <p>If <var>pJournalFlag</var> is 0 then journaling is disabled for the processes used to build the
/// indices (except where the database is in a Mirror). If this flag is 1 then the journaling is enabled for the
/// process used to build the indicies. The default value of this argument is "" meaning use the current process setting. </p>
///
/// <p><var>pStartID</var> and <var>pEndID</var> define a range of IDs for which indices will be built.
/// The range is inclusive. If the starting ID is null then the range begins at the
/// first ID defined in the extent. If the ending ID is null then the range ends at the
/// last ID defined in the extent. </p>
///
/// <p>If <var>pIgnoreIndexList</var> is defined, it should be a <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> of index names that should not be built.
/// This argument allows you to build all indices except those defined in <var>pIgnoreIndexList</var>.
/// The default value of this argument is "", which means all indices, or all indices specified in <var>pIndexList</var>, will be built. </p>
///
/// <p>If <var>pKeepSelectability</var> is 1, any index maps defined as Not Selectable prior to the <method>%BuildIndices</method> call will remain Not Selectable after the <method>%BuildIndices</method> call.
/// If <var>pKeepSelectability</var> is 0 any index maps defined as Not Selectable prior to the <method>%BuildIndices</method> call will be set to Selectable after the successful <method>%BuildIndices</method> call.</p>
///
/// <p>If <var>pNumberJobs</var> is defined, the system should use this explicitly specify the number of workers to run <method>%BuildIndices</method>.
/// The default value of this argument is "", which means the system should calculate how many jobs to run <method>%BuildIndices</method>
///
/// <p>If <method>%OnBeforeBuildIndices</method> is implemented and is runnable then it will be called
/// just prior to purging and building any index structures. Refer to <method>%OnBeforeBuildIndices</method>
/// for more information.</p>
///
/// <p>If <method>%OnAfterBuildIndices</method> is implemented and is runnable then it will be called
/// after all index structures have been built completely. Refer to <method>%OnAfterBuildIndices</method>
/// for more information.</p>
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
/// This method is normally generated by the storage class for persistent classes using
/// <class>%Storage.Persistent</class> or <class>%Storage.SQL</class>.</p>
///
/// <p>If your index is corrupt running this function will not fix the corruption unless you rebuild the entire index
/// and purge the existing indexes. If you have inserted some new items but have deferred building the index for these
/// new items then you can run %BuildIndices on this range of IDs to add the index entries for these new items.</p>
ClassMethod %BuildIndices(pIndexList As %RawString = "", pAutoPurge As %Integer = 1, pLockFlag As %Integer = 0, pJournalFlag As %Integer = "", pStartID As %RawString = "", pEndID As %RawString = "", pIgnoreIndexList As %RawString = "", pKeepSelectability As %Integer = 0, pNumberJobs As %Integer = "") As %Status [ ProcedureBlock = 1, ServerOnly = 0 ]
{
}

/// <p>
/// 	%BuildIndicesAsync() instantiates a work queue and queues a %BuildIndices() call. The argument list after the output <var>queueToken</var> is the same as
/// 	for <method>%BuildIndices</method>.
/// </p>
/// <p>
/// 	This method returns a work queue token as the first argument (output) that can be used to retrieve the status of the %BuildIndices() worker using
/// 	<method>%BuildIndicesAsyncResponse</method>.
/// </p>
/// <p>
/// 	The return value is a %Status value indicating success or failure.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>queueToken</td>
/// 			<td>output</td>
/// 			<td>The token identifying the <method>%BuildIndices</method> task. This argument must be passed by reference as it is the identifier
/// 				of the work queue and it is needed to retrieve the completion status using <method>%BuildIndicesAsyncResponse</method>.
/// 			</td>
/// 		</tr>
/// 		<tr>
/// 			<td>pIndexList</td>
/// 			<td>input</td>
/// 			<td>
/// 				The names of the indexes to be built. If empty then all indices that originate in the class are built.
/// 				If not empty you can specify a <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> of index names to build, e.g. $lb("MyIndex1","MyIndex2").
/// 				If there are other bitmap indexes specified and there is a bitmap extent index defined for the class
/// 				then it will be implicitly included in the list of indexes to build. If the bitmap
/// 				extent index is included then the bitmap extent index for each subextent is also built.
/// 			</td>
/// 		</tr>
/// 		<tr>
/// 			<td>pAutoPurge</td>
/// 			<td>input</td>
/// 			<td>
/// 				If true then the indices contained in <var>pIndexList</var> will be
/// 				purged before they are built as long as no range is specified, if a range is specified we will
/// 				skip any purge. The default is TRUE (1).
/// 			</td>
/// 		</tr>
/// 		<tr>
/// 			<td>pLockFlag</td>
/// 			<td>input</td>
/// 			<td>
/// 				If one (1) then an extent lock will be acquired before the indexes are built. If the lock cannot be acquired then an error
/// 				is returned. The lock is released after the index build is completed. If <var>pLockFlag</var> is two (2) then
/// 					a lock is acquired prior to filing indices for that instance and it is released as soon the indices for that instance are filed.
/// 				If it is zero (0) then no locks are used while filing the indices. If it is three (3) then a
/// 				shared extent lock will be acquired before the indices are built and released upon completion.
/// 			</td>
/// 		</tr>
/// 		<tr>
/// 			<td>pJournalFlag</td>
/// 			<td>input</td>
/// 			<td>
/// 				If false then journaling is disabled for the processes used to build the
/// 				indices (except where the database is in a Mirror).  If this flag is true then the journaling is enabled for the
///                 process used to build the indicies. The default value of this argument is "" meaning use the current process setting.
/// 			</td>
/// 		</tr>
/// 		<tr>
/// 			<td>pStartID</td>
/// 			<td>input</td>
/// 			<td>
/// 				The starting ID for the range of ID's for which indices will be built, inclusive.
/// 				If the starting ID is null then the range begins at the first ID defined in the extent.
/// 			</td>
/// 		</tr>
/// 		<tr>
/// 			<td>pEndID</td>
/// 			<td>input</td>
/// 			<td>
/// 				Then ending ID for the range of ID's for which indexes will be built, inclusive.
/// 				 If the ending ID is null then the range ends at the last ID defined in the extent.
/// 			</td>
/// 		</tr>
/// 		<tr>
/// 			<td>pIgnoreIndexList</td>
/// 			<td>input</td>
/// 			<td>
/// 				A list of index names that should not be built.
/// 				This argument allows you to build all indices except those defined in <var>pIgnoreIndexList</var>.
/// 				The default value of this argument is "", which means all indices, or all indices specified in <var>pIndexList</var>, will be built. </p>
/// 			</td>
/// 		</tr>
/// 		<tr>
/// 			<td>pTimeout</td>
/// 			<td>input</td>
/// 			<td>
/// 				pTimeout is the number of seconds to pass for the %SYSTEM.WorkMgr.Detach() method's timeout argument.
/// 				The default timeout is 86400s (24 hours).  If the %BuildIndices time is expected to be more than 24 hours and you don't want the build to timeout, increase this value to an appropriate number of seconds.</p>
/// 			</td>
/// 		</tr>
/// 		<tr>
/// 			<td>pKeepSelectability</td>
/// 			<td>input</td>
/// 			<td>
/// 				If pKeepSelectability is 1, any index maps defined as Not Selectable prior to the %BuildIndices</method> call will remain Not Selectable after the <method>%BuildIndices</method> call.
/// 					If pKeepSelectability is 0 any index maps defined as Not Selectable prior to the <method>%BuildIndices</method> call will be set to Selectable after the successful <method>%BuildIndices</method> call.</p>
/// 			</td>
/// 		</tr>
/// 		<tr>
/// 			<td></td>
/// 			<td>return</td>
/// 			<td>
/// 				The <class>%Status</class> value indicates success or failure. If <var>queueToken</var> is null then the return status value can indicate an
/// 				error involving the work queue or it can be the completion status from the <method>%BuildIndicesAsync</method> task.
/// 			</td>
/// 		</tr>
/// 	</table>
/// </p>
ClassMethod %BuildIndicesAsync(Output queueToken As %String, pIndexList As %RawString = "", pAutoPurge As %Integer = 1, pLockFlag As %Integer = 0, pJournalFlag As %Integer = "", pStartID As %RawString = "", pEndID As %RawString = "", pIgnoreIndexList As %RawString = "", pTimeout As %Integer = 86400, pKeepSelectability As %Integer = 0) As %Status [ ProcedureBlock = 1, ServerOnly = 0 ]
{
}

/// <p>
/// Return the completion status of a %BuildIndicesAsync task, identified by <var>queueToken</var>. The global array node reference is defined by a <var>globalName</var> and a variable number of <var>subscripts</var>.
/// </p>
/// <p>
/// This method returns a <class>%Status</class> value.
/// </p>
/// <p>
/// 	<table border="1" cellspacing="0" cellpadding="1">
/// 		<tr>
/// 			<td>queueToken</td>
/// 			<td>byref</td>
/// 			<td>The token identifying the <method>%BuildIndicesAsync</method> task. This argument must be passed by reference as it is the identifier
/// 				of the work queue and it can be changed by this method. If the returned <var>queueToken</var> is not null (should only happen if <var>wait</var>
/// 				is false) then the task is not yet complete and the new token value can be used to call this method again to check and possibly return the
/// 				completion status. If this value is null on return then the task has completed or cannot be located and the return status value is the final
/// 				status (completion status).
/// 			</td>
/// 		</tr>
/// 		<tr>
/// 			<td>wait</td>
/// 			<td>input</td>
/// 			<td>
/// 				<p>A boolean value indicating whether or not %BuildIndicesAsyncResponse should wait for the <method>%BuildIndicesAsync</method> task to complete before
/// 				returning. </p>
/// 				<p>If this value is <var>true</var> then this method will wait until the task identified by <var>queueToken</var> is complete before returning. </p>
/// 				<p>
/// 					If it is false, then this method will return as quickly as possible. In that case, if the task is not yet complete then <var>queueToken</var>
/// 					will not be null on return and can be used to invoke this method again.
/// 				</p>
/// 				<p>
/// 					If this method detects an error reported by the task identified by the token then this method will wait for
/// 					the final completion of the task before returning.
/// 				</p>
/// 			</td>
/// 		</tr>
/// 		<tr>
/// 			<td></td>
/// 			<td>return</td>
/// 			<td>The <class>%Status</class> value indicating success or failure. If <var>queueToken</var> is null then the return status value can indicate an
/// 				error involving the work queue or it can be the completion status from the <method>%BuildIndicesAsync</method> task.
/// 			</td>
/// 		</tr>
/// 	</table>
/// </p>
ClassMethod %BuildIndicesAsyncResponse(ByRef queueToken, wait As %Boolean = 1) As %Status
{
}

/// <p>Builds index entries for all defined indexes for each object contained in the Deferred Indexing Index.
/// <p>If <var>pLockFlag</var> is one (1) then an extent lock will be acquired before the indices
/// are built. If the lock cannot be acquired then an error is returned. The lock is released
/// after the index build is completed. If <var>pLockFlag</var> is two (2) then a lock is acquired prior to filing
/// indices for that instance and it is released as soon the indices for that instance are filed.
/// If it is zero (0) then no locks are used while filing the indices. If it is three (3) then a
/// shared extent lock will be acquired before the indices are built and released upon completion.</p>
///
/// <p>If <var>pJournalFlag</var> is 0 then journaling is disabled for the processes used to build the
/// indices (except where the database is in a Mirror). If this flag is 1 then the journaling is enabled for the
/// process used to build the indices. The default value of this argument is "" meaning use the current process setting. </p>
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
/// This method is normally generated by the storage class for persistent classes using
/// <class>%Storage.Persistent</class> or <class>%Storage.SQL</class>.</p>
///
/// <p>If your index is corrupt running this function will not fix the corruption unless you rebuild the entire index
/// and purge the existing indexes.</p>
ClassMethod %BuildDeferredIndices(pLockFlag As %Integer = 0, pJournalFlag As %Integer = "") As %Status [ ProcedureBlock = 1, ServerOnly = 0 ]
{
}

/// On return, <var>bmeName</var> contains the name of the bitmap extent index for this class.
/// <p>Returns <CLASS>%Boolean</CLASS> TRUE is the bitmap extent has been built, FALSE if not.
ClassMethod %BMEBuilt(ByRef bmeName As %String) As %Boolean [ CodeMode = expression, Internal, ServerOnly = 1 ]
{
}

/// <p>
/// This method will loop over each object in the extent of the current class and invoke <method>%CheckConstraints</method>.
/// If only selected constraints are to be checked then <var>pConstraintList</var> can be passed as a <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> of the
/// names of the constraints to be checked. All constraint failures are included in the returned %Status value, subject
/// to the maximum <class>%Status</class> size. In addition, the output parameter <var>pErrorLog</var> contains up to 1,000 entries
/// containing the object ID and the values of all properties that are referenced by constraints defined for the current class.
/// The error log also adds the %Status value returned by %CheckConstraints() as the last $list element.
/// </p>
/// <p>
/// <pre>
/// SAMPLES>set status = ##class(Sample.Person).%CheckConstraintsForExtent(,,.errorlog)
///
/// SAMPLES>do $system.OBJ.DisplayError(status)
///
/// ERROR #5808: Key not unique: Sample.Person.SSNKey
/// ERROR #5808: Key not unique: Sample.Person.SSNKey
/// SAMPLES>zw errorlog
/// errorlog=2
/// errorlog(1)=$lb(1,"798-92-1974","0 "_$lb($lb(5808,"Sample.Person.SSNKey",,,,,,,,"%CheckConstraints+7^Sample.Person.1:SAMPLES"))/* ERROR #5808: Key not unique: Sample.Person.SSNKey [%CheckConstraints+7^Sample.Person.1:SAMPLES] */)
/// errorlog(2)=$lb(100,"798-92-1974","0 "_$lb($lb(5808,"Sample.Person.SSNKey",,,,,,,,"%CheckConstraints+7^Sample.Person.1:SAMPLES"))/* ERROR #5808: Key not unique: Sample.Person.SSNKey [%CheckConstraints+7^Sample.Person.1:SAMPLES] */)
/// </pre>
/// </p>
/// <p>
/// <table border=1>
/// 	<tr>
/// 		<th colspan=3>
/// 			Parameters
/// 		</th>
/// 	</tr>
/// 	<tr>
/// 		<th>Name</th>
/// 		<th>Direction</th>
/// 		<th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>pConstraintList</td>
/// 		<td>Input</td>
/// 		<td>A <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> of constraints to be checked. If null then all constraints defined for the most specific type class
/// 			of each object will be checked.
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pCheckDisabled</td>
/// 		<td>Input</td>
/// 		<td>If this value is passed as a true value (1) then %CheckConstraints will also check any constraints that are
/// 			defined as %NOCHECK.
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pErrorLog</td>
/// 		<td>Output</td>
/// 		<td>
/// 			This is an array of up to 1,000 entries containing error information reported by <method>%CheckConstraints</method>.
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>Return</td>
/// 		<td>
/// 			%Status return value. This value contains %Status values for each constraint that failed. If no errors are
/// 			reported then %Status will be $$$OK.
/// 		</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod %CheckConstraintsForExtent(pConstraintList As %String(MAXLEN="") = "", pCheckDisabled As %Integer = 0, Output pErrorLog As %String(MAXLEN="")) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// <p>
/// This method checks the constraints defined in the current class for one object, identified by <var>pID</var>.
/// If only selected constraints are to be checked, then <var>pConstraintList</var> can be passed as a <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> of the
/// names of the constraints to be checked. If any constraint fails then the failure status will be included in the
/// returned %Status value. In addition, the output parameter <var>pErrorInfo</var> will contain the object ID and
/// the values of all properties that are referenced by constraints defined for the current class.
/// </p>
/// <p>
/// If the current class is not the most specific type class (MSTC) of the object identified by <var>pID</var>, then this method
/// will dispatch to the object's most specific type class. Note that if you do not pass a constraint list then all
/// constraints present for the MSTC are checked, which may include others in addition to those present for the current class.
/// </p>
/// <p>
/// <pre>
/// SAMPLES>set status = ##class(Sample.Person).%CheckConstraints(1,,,.errorinfo)
///
/// SAMPLES>do $system.OBJ.DisplayError(status)
///
/// ERROR #5808: Key not unique: Sample.Person.SSNKey
/// SAMPLES>zw errorinfo
/// errorinfo=$lb(1,"798-92-1974")
/// </pre>
/// </p>
/// <p>
/// <table border=1>
/// 	<tr>
/// 		<th colspan=3>
/// 			Parameters
/// 		</th>
/// 	</tr>
/// 	<tr>
/// 		<th>Name</th>
/// 		<th>Direction</th>
/// 		<th>Description</th>
/// 	</tr>
/// 	<tr>
/// 		<td>pID</td>
/// 		<td>Input</td>
/// 		<td>The ID of the object to be checked.</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pConstraintList</td>
/// 		<td>Input</td>
/// 		<td>A <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> of constraints to be checked. If null then all constraints defined for this class will be checked.
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pCheckDisabled</td>
/// 		<td>Input</td>
/// 		<td>If this value is passed as a true value (1) then %CheckConstraints will also check any constraints that are
/// 			defined as %NOCHECK.
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td>pErrorInfo</td>
/// 		<td>Output</td>
/// 		<td>
/// 			If an error is reported then <var>pErrorInfo</var> will contain the object's ID and all property values
/// 			that are referenced by constraints defined for this class.
/// 		</td>
/// 	</tr>
/// 	<tr>
/// 		<td></td>
/// 		<td>Return</td>
/// 		<td>
/// 			%Status return value. This value contains %Status values for each constraint that failed. If no errors are
/// 			reported then %Status will be $$$OK.
/// 		</td>
/// 	</tr>
/// </table>
/// </p>
ClassMethod %CheckConstraints(pID As %String(MAXLEN=""), pConstraintList As %List = "", pCheckDisabled As %Integer = 0, Output pErrorInfo As %List) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Checks to see if the object identified by the OID <var>oid</var> exists in the extent.
///
/// <p>Returns <CLASS>%Boolean</CLASS> TRUE if it exists, FALSE if it does not.
ClassMethod %Exists(oid As %ObjectIdentity) As %Boolean [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Checks to see if the object identified by the ID <var>id</var> exists in the extent.
///
/// <p>Returns <CLASS>%Boolean</CLASS> TRUE is it exists, FALSE if it does not.
ClassMethod %ExistsId(id As %String) As %Boolean [ ServerOnly = 0 ]
{
}

/// %1Check()
/// 	This is a method that corresponds the the '%1' key (a convention introduced in the SQL filer).
/// 	The '%1' key is a synonym for the %Id() value. The general description of &lt;candidatekey&gt;Check()
///
/// &lt;key&gt;Check()
/// 	This method checks for the existence of the key and locks the object associated with that key.
/// 		The lock is released but will be retained for the duration of the transaction.
///
/// 	The optional lockonly parameter is used by callers wishing only to validate the key. If lockonly is true
/// 		then success is returned if the key does not exists. If the key exists then an attempt is made to
/// 		lock the corresponding object. That status from the lock call is then returned.
///
/// 		If lockonly is false then an error is returned if the key does not exist. If the key does exist then
/// 		the corresponding object is locked and released. If the lock cannot be acquired then an error is returned.
/// 		Otherwise the key is checked for existence again and an error is returned if it doesn't exist.
ClassMethod %1Check(id As %String = "", lockonly As %Boolean = 0, concurrency As %Integer = -1) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

/// Files each index for the object identified by <var>id</var>. <var>pIndexHandle</var> is for internal use only.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
/// This method is normally generated by the storage class for persistent classes using
/// <class>%Storage.Persistent</class> or <class>%Storage.SQL</class>.
ClassMethod %FileIndices(id As %String(MAXLEN=""), ByRef pIndexHandle As %Binary) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// This method returns the GUID assigned to &lt;oid&gt;. This method is only runnable if the GUIDENABLED parameter is TRUE.
/// This method will dispatch polymorphically and will determine the most-specific-type class if the oid does not contain that information.
/// If pDeepSearch is true and no GUID is found for the object then a deep search of the GUID registry will be performed, starting with the
/// current class. This is useful if the most specific type class cannot be determined, such as in the case of an object that has been deleted.
ClassMethod %GUID(oid As %ObjectIdentity, pDeepSearch As %Integer = 0) As %String [ ServerOnly = 1 ]
{
}

ClassMethod %GUIDSet(oid As %ObjectIdentity, guid As %String = "") As %String [ ServerOnly = 1 ]
{
}

/// %KillExtent performs a physical kill of the extent. No constraints are enforced. This method should not be
/// used in place of %DeleteExtent. Only physical storage occupied by this extent will be killed. If this extent
/// is a subextent of another class then no data is killed. Indexes that originate with this extent will be killed.
/// %KillExtent will be called on any subextents and on any child extents (the extent of the type class of a
/// relationship whose cardinality = children is a 'child' extent) of this extent.<br>
///
/// This method is not meant for production applications. It is meant to be a development utility to quickly clear
/// extent physical data. Also this will not remove stream data associated with these instances.<br>
/// If <var>killstreams</var> is true (default is false) it will also kill the default stream storage global.
ClassMethod %KillExtent(pDirect As %Integer = 1, killstreams As %Boolean = 0) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Files the indices for all objects whose ID is in the range defined by <var>pStartId</var> and <var>pEndId</var>.
/// If <var>pEndId</var> is null then it defaults to <var>pStartId</var>. If <var>pStartId</var> is null then the
/// range is empty and no filing will occur.
///
/// If <var>lockExtent</var> is true then an extent lock will be acquired before the indices
/// are built. If the lock cannot be acquired then an error is returned. The lock is released
/// after the index filing is completed.
///
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
ClassMethod %SaveIndices(pStartId As %String(MAXLEN="") = "", pEndId As %String(MAXLEN="") = "", lockExtent As %Boolean = 0) As %Status [ Internal, ServerOnly = 0 ]
{
}

ClassMethod %AddJrnObjToSyncSet(objSS As %SYNC.SyncSet, fileop As %Integer = 0, oid As %ObjectIdentity, ByRef object As %String, changed As %List = "", guid As %String = "", originSystem As %String = "", originNS As %String = "") As %Integer [ Internal, ServerOnly = 1 ]
{
}

/// Internal helper method for <method>%BuildIndicies</method>
ClassMethod %BuildIndexInternal(pLockFlag, pAutoPurge, pStartID, pEndID, pIndexList, pBuildFlags, pGLVN, pBMEIndexPtr, pJournalFlag, pCompositeKey, pUseBME = 0, pKeepSelectability = 0, pNumberJobs = "") As %Status [ Internal, Private ]
{
}

/// This method is normally generated by the storage class for persistent classes using
/// <class>%Storage.Persistent</class> or <class>%Storage.SQL</class>. Persistent
/// classes using some other storage class, such as <class>%Library.CustomStorage</class> must override this
/// method.
ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

/// %InitExtentData() - Initializes extent data in storage.
/// This method is implemented by the storage class.  It simply sets the root node of the data global to ""
ClassMethod %InitExtentData() As %Status [ Private, ServerOnly = 1 ]
{
}

/// %KillExtentData() - kills extent data in storage. This method is
/// implemented by the storage class.
/// If <var>killstreams</var> is true (default is false) it will also kill the default stream storage global.
/// If <var>reinitialize</var> is true (default is false) it will also call %InitExtent to re-define the globals.
ClassMethod %KillExtentData(killstreams As %Boolean = 0, reinitialize As %Boolean = 0) As %Status [ Private, ServerOnly = 1 ]
{
}

/// %LoadData() - loads an object from storage. This method is
/// implemented by the storage class.
Method %LoadData(id As %String) As %Status [ Private, ServerOnly = 1 ]
{
}

/// <p>Deletes all entries from each index specified in the <var>idxlist</var> argument.
/// If <var>idxlist</var> is empty then all indices that originate
/// in the class are purged. The index definition remains intact.</p>
///
/// <p>If <var>pIgnoreIndexList</var> is defined, it should be a <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> of index names that should not be purged.
/// This argument allows you to purge all indices except those defined in <var>pIgnoreIndexList</var>.
/// The default value of this argument is "", which means all indices, or all indices specified in <var>pIndexList</var>, will be purged. </p>
///
/// <p>If <var>pJournalFlag</var> is set to 1, journaling will be enabled (if not already) for the duration of the purge. If it is set to 0, journaling
/// will be disabled (if not already) for the duration of the purge.
/// The default value of this argument is "", which means journaling behavior will not be altered.</p>
///
/// <p>If <method>%OnBeforePurgeIndices</method> is implemented and is runnable, then it will be called
/// just after acquiring the extent lock, if one is requested, and just prior to performing the
/// purge. If <method>%OnBeforePurgeIndices</method> returns an error status
/// then %PurgeIndices will exit immediately, no indices will be purged and that error status
/// will be returned to the caller of %PurgeIndices.</p>
///
/// <p>If <method>%OnAfterPurgeIndices</method> is implemented and is runnable, then it will be called
/// just prior to releasing the extent lock, if one is requested. cAll index structures have been purged
/// prior to calling <method>%OnAfterPurgeIndices</method>. If <method>%OnAfterPurgeIndices</method> returns
/// and error status then that status will be returned to the caller of %PurgeIndices but all structures will
/// still have been purged.
/// </p>
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
/// This method is normally generated by the storage class for persistent classes using
/// <class>%Storage.Persistent</class> or <class>%Storage.SQL</class>. Persistent
/// classes using some other storage class, such as <class>%Library.CustomStorage</class> must override this
/// method.</p>
ClassMethod %PurgeIndices(idxlist As %List = "", lockExtent As %Boolean = 0, pIgnoreIndexList As %RawString = "", pJournalFlag As %Library.Integer = "") As %Status [ ServerOnly = 1 ]
{
}

/// %SaveData() - saves an object to disk, checks uniqueness and referential
/// integrity constraints, and maintains index structures. This method is
/// implemented by the storage class.
Method %SaveData(id As %String) As %Status [ Private, ServerOnly = 1 ]
{
}

/// %SaveDirect() - saves an object to disk, checks uniqueness and referential
/// integrity constraints, and maintains index structures. The state of the object
/// is passed to this method in three arguments.
/// <var>id</var> contains the ID value if the object has been previously saved.
/// <var>idList</var> is a <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> value containing the IDKEY components. If the class is a child
/// class (contains a relationship with CARDINALITY = PARENT) then the first value in the list is the parent reference.
/// If the ID is system assigned the next value (or only value if the class is not a child class) is the system assigned ID value.
/// If the ID is based on a user-defined IDKEY, then there is a $list element corresponding to each property in the same order as
/// defined in the IDKEY index.
/// <br>
/// <var>data</var> is a structure that mirrors the disk structure of the object. The root value (unsubscripted) contains the properties stored in the
/// data node from the storage definition with a null subscript. Additional entries in the <var>data</var> structure correspond to any additional data nodes
/// defined in the storage definition.
/// <br>
/// This method is not commonly called directly.
/// <br>
/// This method is implemented by the storage class.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
ClassMethod %SaveDirect(ByRef id As %String = "", idList As %List = "", ByRef data As %Binary, concurrency As %Integer = -1) As %Status [ ServerOnly = 1 ]
{
}

/// Executes a $SortBegin for the base global reference of each index specified in the <var>idxlist</var> argument.
/// If <var>idxlist</var> is empty then a $SortBegin is executed for all indices that originate
/// in the class.
///
/// <p>The <var>excludeunique</var> argument, if TRUE, causes any index defined as UNIQUE or PRIMARY KEY to be ignored.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
ClassMethod %SortBegin(idxlist As %List = "", excludeunique As %Integer = 0) As %Status [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Executes a $SortEnd for the base global reference of each index specified in the <var>idxlist</var> argument.
/// If <var>idxlist</var> is empty then a $SortEnd is executed for all indices that originate
/// in the class.
///
/// <p>The <var>commit</var> argument, if FALSE, causes the data to be discarded. Otherwise, all data placed in
/// the global since the $SortBegin is committed.
/// <p>The <var>excludeunique</var> argument, if TRUE, causes any index defined as UNIQUE or PRIMARY KEY to be ignored.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
ClassMethod %SortEnd(idxlist As %List = "", commit As %Integer = 1, excludeunique As %Integer = 0) As %Status [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// <p>This is a system provided query that returns a row for each instance within this extent. The first column of the row is the
/// object ID. Additional columns can be included in the select list by adding the desired columns to the <parameter>EXTENTQUERYSPEC</parameter> parameter.</p>
/// <p>
/// The Extent query default implementation is generated by <class>%Library.ExtentSQLQuery</class>. That class
/// supports the <var>COMPILEMODE</var> parameter with possible values of IMMEDIATE and DYNAMIC. If DYNAMIC is specified
/// then the SQL statement used to implement the query will be generated as a dynamic SQL statement. If IMMEDIATE is specified
/// then the statement is generated as an embedded SQL statement.</p>
/// <br><p>This query can be overridden by a subclass so long as two requirements are met. The list of columns must include %ID as the first column and
/// it must return a row corresponding to each instance/row in the extent.</p>
/// <p>
/// This callback method is invoked by the <METHOD>%BuildIndices</METHOD> method.
/// </p>
/// <p>
/// It is called prior to modifying any index structures. If an extent lock is requested by the
/// %BuildIndices caller then %OnBeforeBuildIndices is called after the extent lock is acquired.
/// <P>If this method returns an error then %BuildIndices will exit immediately without
/// purging and building any index structures, returning the error to the caller of %BuildIndices.
/// </p>
/// <p>
/// <table border=1>
/// <tr>
/// 	<th colspan=3>Parameters</th>
/// </tr>
/// <tr>
/// <th>
/// Name
/// </th>
/// <th>
/// Type
/// </th>
/// <th>
/// Description
/// </th>
/// </tr>
/// <tr>
/// 		<td>indexlist</td>
/// 		<td>Input/output</td>
/// 		<td>
/// 			A <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> value containing the names of the indexes to be built. This parameter is
/// 			passed by reference. If the implementation of %OnBeforeBuildIndices alters this value,
/// 			then %BuildIndices will honor those changes.
/// 		</td>
/// </tr>
/// </table>
/// </p>
ClassMethod %OnBeforeBuildIndices(ByRef indexlist As %String(MAXLEN="") = "") As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%BuildIndices</METHOD> method after all work is completed.
/// <P>If this method returns an error then %BuildIndices will return that error but all normal processing is
/// completed. This call occurs just prior to releasing the extent lock if one was requested by the %BuildIndices caller.
/// All index structures have been built and SortEnd executed.</p>
ClassMethod %OnAfterBuildIndices(indexlist As %String(MAXLEN="") = "") As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being deleted.
///
/// <P>If this method returns an error then the object will not be deleted.
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> has been deleted.
/// The callback occurs immediately after %DeleteData has been called. If %DeleteData returns
/// an error then %OnAfterDelete is not called.
///
/// <P>If %OnAfterDelete returns an error (%Status) then the transaction is rolled back.
ClassMethod %OnAfterDelete(oid As %ObjectIdentity) As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called before
/// any data is written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnBeforeSave(insert As %Boolean) As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called after
/// the object's data has been successfully written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnAfterSave(insert As %Boolean) As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Open</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being opened.
///
/// <P>If this method returns an error then the object will not be opened.
Method %OnOpen() As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// <p>
/// This callback method is invoked by the <METHOD>%PurgeIndices</METHOD> method.
/// </p>
/// <p>
/// If this method returns an error then %PurgeIndices will exit immediately without
/// purging any index structures, returning the error to the caller of %PurgeIndices.
/// </p>
/// <p>
/// <table border=1>
/// <tr>
/// <th colspan=3>Parameters</th>
/// </tr>
/// <tr>
/// <th>
/// Name
/// </th>
/// <th>
/// Type
/// </th>
/// <th>
/// Description
/// </th>
/// </tr>
/// <tr>
/// 		<td>indexlist</td>
/// 		<td>Input/output</td>
/// 		<td>
/// 			A <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$list</a> value containing the names of the indexes to be built. This parameter is
/// 			passed by reference. If the implementation of %OnBeforePurgeIndices alters this value,
/// 			then %PurgeIndices will honor those changes.
/// 		</td>
/// </tr>
/// </table>
/// </p>
ClassMethod %OnBeforePurgeIndices(ByRef indexlist As %String(MAXLEN="") = "") As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%PurgeIndices</METHOD> method after all work is completed.
/// <P>If this method returns an error then %PurgeIndices will return that error but all normal processing is
/// completed. This call occurs just prior to releasing the extent lock.</p>
ClassMethod %OnAfterPurgeIndices(indexlist As %String(MAXLEN="") = "") As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Reload</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> was reloaded.
/// <method>%Reload</method> is invoked by %Open when the object identified by the OID
/// is already in memory.
/// <br>
/// <P>If this method returns an error then the object will not be opened.
Method %OnReload() As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that a save transaction is being rolled back.
///
/// <P>If this method returns an error then the rollback operation will be aborted.
Method %OnRollBack() As %Status [ Abstract, Private, ServerOnly = 1 ]
{
}

ClassMethod %OnDetermineClass(oid As %ObjectIdentity, ByRef class As %String) As %Status [ ServerOnly = 1 ]
{
}

Trigger %OBJJRNIU [ CodeMode = generator, Event = INSERT/UPDATE, Foreach = row, Order = 2, Time = AFTER ]
{
}

Trigger %OBJJRND [ CodeMode = generator, Event = DELETE, Foreach = row, Order = 1 ]
{
}

Trigger %OBJGUID [ CodeMode = generator, Event = INSERT, Foreach = row, Order = 1, Time = AFTER ]
{
}

}
