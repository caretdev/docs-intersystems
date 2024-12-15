/// The table for this class should be manipulated only through object access, the published API's
/// or through the System Management Portal. It should not be updated through direct SQL access.<br>
Class Security.DocDBs Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Inheritance = right, System = 4 ]
{

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/Security/DocDBs.xml#1 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/02 10:58:11 $"_$c(13,10)_"Changelist #:  $Change: 7247250 $"};

Parameter VERSION [ Internal ] = 1;

/// Description of the Doc DB.
Property Description As %String(MAXLEN = 256);

/// Doc DB enabled.
Property Enabled As Security.Datatype.BooleanYN [ InitialExpression = 1, Required ];

/// Name of the Doc DB.
Property Name As %Dictionary.Classname;

Property NameLowerCase As %String(MAXLEN = 255, MINLEN = 1, XMLPROJECTION = "NONE") [ Internal, ReadOnly ];

Property Namespace As %String(MAXLEN = 64, MINLEN = 1);

Property NamespaceLowerCase As %String(MAXLEN = 64, MINLEN = 1, XMLPROJECTION = "NONE") [ Internal, ReadOnly ];

Property Resource As %String(MAXLEN = 64, MINLEN = 0);

/// Version number of the record. <br>
/// Used for Export/Import.<br>
Property Version As %Decimal(SCALE = 1) [ Internal ];

/// Create a Doc DB.<br>
/// Create a Doc DB in the Security database.<br>
/// Parameters:<br>
/// Name - Name of the Doc DB<br>
/// Namespace - Namespace of location of the Doc DB
/// Description - Description of the Doc DB<br>
/// Enabled - Enabled for auditing - 0/1<br>
/// Resource - Resource controlling the Doc DB.<br>
ClassMethod Create(Name As %String, Namespace As %String, ByRef Properties As %String) As %Status
{
}

ClassMethod CreateOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Delete a Doc DB.<br>
/// This method will delete an Doc DB from the security database.<br>
/// Parameters:<br>
/// Name - Name of the Doc DB<br>
/// Namespace - Namespace of the DOC DB<br>
/// This method also clears the in memory counters.<br>
ClassMethod Delete(Name As %String, Namespace As %String) As %Status
{
}

ClassMethod DeleteOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

ClassMethod DeleteAllInNamespace(Namespace As %String = "", ByRef Deleted As %String) As %Status
{
}

ClassMethod CheckAdmin() As %Status
{
}

/// Doc DB exists.<br>
/// This method checks for the existence of a Doc DB in the security database.<br>
/// Parameters:<br>
/// Name - Name of the Doc DB<br>
/// Namespace - Namespace of the Doc DB
/// Return values:<br>
/// If Value of the method = 0 (Doc DB does not exist, or some error occured)<br>
/// DocDB = Null<br>
/// Status = Doc DB "x" does not exist, or other error message<br><br>
/// If Value of the method = 1 (Doc DB exists)<br>
/// Doc DB = Object handle to Doc DB<br>
/// Status = $$$OK<br>
ClassMethod Exists(Name As %String = "", Namespace As %String = "", ByRef DocDB As %ObjectHandle, ByRef Status As %Status) As %Boolean
{
}

/// This method exports Doc DB records to a file in xml format.<br>
/// Parameters:<br>
/// Filename -  Output file name<br>
/// NumExported (byref) -  Returns number of records exported.<br>
/// Names - Comma separated list of Doc DBs to export, "*" = All<br>
/// Namespaces - Comma separated list of Namespaces to export, "*" = All<br>
ClassMethod Export(FileName As %String = "DocDBsExport.xml", ByRef NumExported As %Integer, Names As %String = "*", Namespaces As %String = "*") As %Status
{
}

/// Get a Doc DBs properties.<br>
/// Gets a Doc DBs properties from the security database.<br>
/// Parameters:<br>
/// Name - Name of the Doc DB<br>
/// namespace - Namespace of the Doc DB<br>
/// Return values:<br>
/// Properties - Array of properties<br>
/// "Description" - Description of the Doc DB<br>
/// "Enabled" - Doc DB is enabled<br>
/// "Resource" - Resource of the Doc DB<br>
ClassMethod Get(Name As %String, Namespace As %String, ByRef Properties As %String) As %Status
{
}

/// Get a Doc DBs properties.<br>
/// Gets a Doc DBs properties from the security database.<br>
/// Parameters:<br>
/// DocDB - Object handle to an Doc DB record<br>
/// Return values:<br>
/// Properties - See the Get method for more information on properties returned
ClassMethod GetProperties(DocDB As %ObjectHandle, ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Import Doc DB records from an xml file.<br>
/// Parameters:<br>
/// FileName - Filename to import Doc DB records from<br>
/// NumImported (byref) - Returns number of records imported<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return count<br>
/// Note: On failure, no records will be imported<br>
ClassMethod Import(FileName As %String = "DocDBsExport.xml", ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

/// Modify a Doc DBs properties.<br>
/// Modifies a Doc DBs properties from the security database.<br>
/// Parameters:<br>
/// Name - Name of the Doc DB<br>
/// Namespace - Namespace of the Doc DB<br>
/// See the Get() method for a description of the Properties parameter.<br>
/// If a specific property is not passed in the properties array,
/// the value is not modified.<br>
ClassMethod Modify(Name As %String = "", Namespace As %String = "", ByRef Properties As %String) As %Status
{
}

ClassMethod ModifyOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called after
/// the object's data has been successfully written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnAfterSave(insert As %Boolean) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called before
/// any data is written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being deleted.
///
/// <P>If this method returns an error then the object will not be deleted.
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%ValidateObject</METHOD> method to
/// provide notification that the current object is being validated.
///
/// <P>If this method returns an error then <METHOD>%ValidateObject</METHOD> will fail.
Method %OnValidateObject() As %Status [ Internal, Private ]
{
}

/// Return list of Doc DBs.<br>
/// Names - Comma separated list of Doc DB names, "*" = All<br>
/// Namespaces - Comma separated list of Namespaces, "*" = All<br>
/// Note: This query may change in future versions<br>
ClassMethod ListExecute(ByRef %qHandle As %Binary, Names As %String = "*", Namespaces As %String = "*", Filter As %String = "") As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

}
