/// XML Exchange Adaptor
///
/// Sub-classes of %XML.Exchange.Adaptor are included in
/// Configuration Management.  Configuration Mangement is used to export
/// and import Exchange Items.  The items are written in XML such that
/// the data is readable and different revisions of the item may
/// be compared to identify changes.
Class %XML.Exchange.Adaptor Extends %XML.Adaptor [ Abstract, System = 3 ]
{

/// If this parameter is set to 1 then a GUID will be assigned (to the %GUID property) to each new object.
/// When the object is saved for the first time this GUID value will be recorded in a namespace
/// index which will allow GUID to be resolved to OIDs.
Parameter GUIDENABLED = 1;

/// Default value of XMLREFERENCE that specifies how to project references to XML.
/// XMLREFERENCE may be overridden for each property.
/// SUMMARY indicates that only the summary properies of the referenced class
/// are used to represent the reference.  SUMMARY is the default.  Note that by
/// default all properties are of the referenced class are in the summary.
/// COMPLETE indicates that all properties of the referenced class are used
/// to represent the reference.
/// ID indicates that the id of a persistent or serial class is used to represent
/// the reference.
/// OID indicates that the oid of a persistent or serial class is used to represent
/// the reference.  The form of the oid will be classname,id.
/// GUID indicates the the GUID of a persistent class is used to represent the reference.
Parameter XMLDEFAULTREFERENCE As STRING = "GUID";

Property GUID As %RawString(XMLPROJECTION = "ATTRIBUTE") [ Transient ];

Method GUIDGet() As %RawString [ ServerOnly = 1 ]
{
}

Method GUIDSet(Arg As %RawString) As %Status [ ServerOnly = 1 ]
{
}

/// Return the Oid of the Exchange Item that contains this object.
ClassMethod XMLGetElement(id As %String, Object As %RegisteredObject = {$$$NULLOREF}) As %String [ CodeMode = generator, GenerateAfter = %GenerateParameters ]
{
}

/// Returns an value to identify the object.
/// This method may be overriden to return a code or description.
ClassMethod XMLExchangeName(id As %String) As %String [ CodeMode = expression ]
{
}

/// For very large tables it is necessary to break the records down into
/// sub-directories.  This method returns the sub-directory name to be used
/// for the given id.<p>
/// The sub-directory returned is then appended to the path using ##class(%File).SubDirectoryName()<p>
ClassMethod XMLExchangePath(id As %String) As %String [ CodeMode = expression ]
{
}

/// Get an instance of an XML enabled class.<br><br>
///
/// You may override this method to do custom processing (such as initializing
/// the object instance) before returning an instance of this class.
/// However, this method should not be called directly from user code.<br>
/// Arguments:<br>
///     document is the document with %XML.Node or macros in %xmlDOM.inc.<br>
///     nodeId is a node id of the node which defines this object.
///         An %XML.Node object may be obtained for this node using document.GetNode(nodeId)<br>
///     containerOref is the containing object instance when called from XMLImport and
///         is "" when called from %XML.Reader for Correlate'd objects.<br>
ClassMethod XMLNew(document As %XML.Document, node As %Integer, containerOref As %RegisteredObject = "") As %RegisteredObject [ ProcedureBlock = 0, ServerOnly = 1 ]
{
}

/// Returns a matching object based on unique indices
ClassMethod XMLLoadGUID(document As %XML.Document, node As %Integer, containerOref As %RegisteredObject = "") As %RegisteredObject [ CodeMode = generator, ProcedureBlock = 0 ]
{
}

/// Clear propety values in preparation for the values from XML import
Method XMLClear() [ CodeMode = generator ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being deleted.
///
/// <P>If this method returns an error then the object will not be deleted.
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> has been deleted.
/// The callback occurs immediately after %DeleteData has been called. If %DeleteData returns
/// an error then %OnAfterDelete is not called.
///
/// <P>If %OnAfterDelete returns an error (%Status) then the transaction is rolled back.
ClassMethod %OnAfterDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called before
/// any data is written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnBeforeSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called after
/// the object's data has been successfully written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnAfterSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Open</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being opened.
///
/// <P>If this method returns an error then the object will not be opened.
Method %OnOpen() As %Status [ Private, ServerOnly = 1 ]
{
}

Trigger ChangeControlBeforeInsert [ Event = INSERT ]
{
}

Trigger ChangeControlAfterInsert [ Event = INSERT, Order = 9, Time = AFTER ]
{
}

Trigger ChangeControlBeforeUpdate [ Event = UPDATE ]
{
}

Trigger ChangeControlAfterUpdate [ Event = UPDATE, Order = 9, Time = AFTER ]
{
}

Trigger ChangeControlBeforeDelete [ Event = DELETE ]
{
}

Trigger ChangeControlAfterDelete [ Event = DELETE, Order = 9, Time = AFTER ]
{
}

}
