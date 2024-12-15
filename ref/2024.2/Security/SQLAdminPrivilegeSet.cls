/// Define the SQL Administrative Privilege mapping in the ^SYS global
/// Mapping was added for SQL Privileges to take advantage of XML export
/// Map Data Order:
/// 	  #;                 1 - %CREATE_FUNCTION
/// 	  #;                 2 - %DROP_FUNCTION
/// 	  #;                 3 - %CREATE_METHOD
/// 	  #;                 4 - %DROP_METHOD
/// 	  #;                 5 - %CREATE_PROCEDURE
/// 	  #;                 6 - %DROP_PROCEDURE
/// 	  #;                 7 - %CREATE_QUERY
/// 	  #;                 8 - %DROP_QUERY
/// 	  #;                 9 - %CREATE_TABLE
/// 	  #;                 10 - %ALTER_TABLE
/// 	  #;                 11 - %DROP_TABLE
/// 	  #;                 12 - %CREATE_VIEW
/// 	  #;                 13 - %ALTER_VIEW
/// 	  #;                 14 - %DROP_VIEW
/// 	  #;                 15 - %CREATE_TRIGGER
/// 	  #;                 16 - %DROP_TRIGGER
/// 	  #;                 17 - %NOCHECK
/// 	  #;                 18 - %NOTRIGGER
/// 	  #;                 19 - %NOINDEX
/// 	  #;                 20 - %NOLOCK
///       #;                 21 - %BUILD_INDEX
/// 	  #;                 22 - %CREATE_ML_CONFIGURATION
/// 	  #;                 23 - %ALTER_ML_CONFIGURATION
/// 	  #;                 24 - %DROP_ML_CONFIGURATION
/// 	  #;                 25 - %MANAGE_MODEL
/// 	  #;                 26 - %USE_MODEL
/// 	  #;                 27 - %DROP_UNOWNED
/// 	  #;                 28 - %NOJOURN
/// 	  #;                 29 - %CANCEL_QUERY
/// 	  #;				 30 - %MANAGE_FOREIGN_SERVER
///       #;				 31 - %USE_EMBEDDING
Class Security.SQLAdminPrivilegeSet Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Inheritance = right, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/Security/SQLAdminPrivilegeSet.xml#1 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/02 10:58:11 $"_$c(13,10)_"Changelist #:  $Change: 7247250 $"};

/// Namespace the privilege is defined in
Property Namespace As %String(MAXLEN = 256) [ Required ];

/// Grantee - user/role the privilege was granted to
Property Grantee As %String(MAXLEN = 64, MINLEN = 1) [ Required ];

/// CreateFunction - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property CreateFunction As %TinyInt(VALUELIST = ",0,1,2");

/// DropFunction - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property DropFunction As %TinyInt(VALUELIST = ",0,1,2");

/// CreateMethod - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property CreateMethod As %TinyInt(VALUELIST = ",0,1,2");

/// DropMethod - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property DropMethod As %TinyInt(VALUELIST = ",0,1,2");

/// CreateProcedure - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property CreateProcedure As %TinyInt(VALUELIST = ",0,1,2");

/// DropProcedure - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property DropProcedure As %TinyInt(VALUELIST = ",0,1,2");

/// CreateQuery - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property CreateQuery As %TinyInt(VALUELIST = ",0,1,2");

/// DropQuery - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property DropQuery As %TinyInt(VALUELIST = ",0,1,2");

/// CreateTable - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property CreateTable As %TinyInt(VALUELIST = ",0,1,2");

/// AlterTable - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property AlterTable As %TinyInt(VALUELIST = ",0,1,2");

/// DropTable - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property DropTable As %TinyInt(VALUELIST = ",0,1,2");

/// CreateView - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property CreateView As %TinyInt(VALUELIST = ",0,1,2");

/// AlterView - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property AlterView As %TinyInt(VALUELIST = ",0,1,2");

/// DropView - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property DropView As %TinyInt(VALUELIST = ",0,1,2");

/// CreateTrigger - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property CreateTrigger As %TinyInt(VALUELIST = ",0,1,2");

/// DropTrigger - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property DropTrigger As %TinyInt(VALUELIST = ",0,1,2");

/// NoCheck - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property NoCheck As %TinyInt(VALUELIST = ",0,1,2");

/// NoTrigger - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property NoTrigger As %TinyInt(VALUELIST = ",0,1,2");

/// NoIndex - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property NoIndex As %TinyInt(VALUELIST = ",0,1,2");

/// NoLock - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property NoLock As %TinyInt(VALUELIST = ",0,1,2");

/// BuildIndex - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property BuildIndex As %TinyInt(VALUELIST = ",0,1,2");

/// CreateMLConfiguration - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property CreateMLConfiguration As %TinyInt(VALUELIST = ",0,1,2");

/// AlterMLConfiguration - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property AlterMLConfiguration As %TinyInt(VALUELIST = ",0,1,2");

/// DropMLConfiguration - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property DropMLConfiguration As %TinyInt(VALUELIST = ",0,1,2");

/// ManageModel - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property ManageModel As %TinyInt(VALUELIST = ",0,1,2");

/// UseModel - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property UseModel As %TinyInt(VALUELIST = ",0,1,2");

/// DropUnowned - 0/1/2, can this user is allowed to drop any sql object they are not the owner of 0 - No, 1 - Yes, 2 - Yes and grantable
Property DropUnowned As %TinyInt(VALUELIST = ",0,1,2");

/// NoJourn - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property NoJourn As %TinyInt(VALUELIST = ",0,1,2");

/// CancelQuery - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property CancelQuery As %TinyInt(VALUELIST = ",0,1,2");

/// ManageForeignServer - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property ManageForeignServer As %TinyInt(VALUELIST = ",0,1,2");

/// UseEmbedding - 0/1/2, can this privilege be granted by the user 0 - No, 1 - Yes, 2 - Yes and grantable
Property UseEmbedding As %TinyInt(VALUELIST = ",0,1,2");

/// This method exports SQL Admin Privilege Set records to a file in xml format.<br>
/// Parameters:<br>
/// Filename -  Output file name<br>
/// NumExported (byref) -  Returns number of records exported.<br>
ClassMethod Export(FileName As %String = "SQLPrivilegesExport.xml", ByRef NumExported As %Integer = 0) As %Status
{
}

/// Import SQLAdminPrivilegeSet records from an xml file.<br>
/// Parameters:<br>
/// FileName - Filename to import Role records from<br>
/// NumImported (byref) - Returns number of records imported<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return count<br>
/// Note: On failure, no records will be imported<br>
ClassMethod Import(FileName As %String, ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

/// Return the ID information for SQL Admin Privs Sets
/// Given a User or Role name, return the ID information for Admin Privs that have been directly granted to the user or role
}
