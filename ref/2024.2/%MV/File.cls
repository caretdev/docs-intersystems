Class %MV.File Extends %RegisteredObject [ ServerOnly = 1, System = 4 ]
{

Property %StorageType As %Integer [ InitialExpression = {$$$MVFIOTypeUndef} ];

Property %FileName As %String;

Property %Namespace As %String;

Property %DictFlag As %Integer [ InitialExpression = 0 ];

Property %Global As %String;

Property %Account As %String;

Property %TargetAccount As %String;

Property %TargetFileName As %String;

Property %IsBinary As %Boolean [ InitialExpression = 0 ];

Property %IsTranslated As %Boolean [ InitialExpression = 1 ];

Property %COSName As %String;

Property %LockName As %String;

Property %ClassName As %String;

Property %IndexType As %Integer [ InitialExpression = 0 ];

Property %IndexRoutine As %String;

/// When the file variable is produced as a result of OPENINDEX
/// then the index that was opened is stored here for future use by any select
/// lists. Note that at the moment index storage is restricted to the default
/// of ^INDEXGLOBAL("indexName",... and we may need to review this, though it
/// is unlikely to be an issue
///
Property %IndexName As %String;

/// A select list can represent an index. An index stores the actual keys
/// as oppposed to the key values returned by READNEXT in collated encoding
/// sequence such as MV R or SPACE (equivlant to MV L) etc.
/// This property defines the collation in use for the index.
///
Property %IndexCollation As %Integer [ InitialExpression = 0 ];

/// Simpler index functions such as BSCAN, expect the file variable to track the last index
/// access. In order to allow this, we store these in an array, subscripted by index name.
/// The top level is used to track when BSCAN walks over the global itself, instead of
/// an index.
///
Property %BSCAN As %String [ MultiDimensional ];

/// Flag to determine if index names/collations has been loaded yet
///
Property %IndFlag As %Boolean [ InitialExpression = 0 ];

/// $LIST of index names that can be used by index functions
///
Property %IndNames As %String;

/// $LIST of index collations that can be used by index functions
///
Property %IndColl As %String;

/// String of index MV flags (0->S,1->M) that can be used by index functions
///
Property %IndMV As %String;

/// Options (from attribute 6)
///
Property %Options As %String;

/// Stores the name of the generated COS routine (including namespace) that must be
/// called if this file descriptor is subject to any of the file trigger processing
/// options described below.
///
/// How this works is that when a file is opened the FireTriggers flag is set
/// (if there are ANY triggers). When any MVFIO routine is called it checks to see
/// if this flag is set and if it is, then it checks to see if there are triggers
/// for this specific operation (may do this the other way around). If both tests
/// pass then control is transferred to the named COS routine TriggerRoutine.
/// The first thing the entry point for the particular IO function does is turn
/// that flag off. It is then free to call the BASIC subroutines pre and post
/// operation and call back in to the MVFIO system to do the actual operation
/// (which will this time not fire the COS routine).
///
Property %TriggerRoutine As %String;

/// This integer flag stores a number of bits indicating which, if any MVFIO
/// operations must operate trigger subroutines. If the bit corresponding to the
/// operation at hand is set, and the trigger processing is not currently executing
/// then a specific COS routine entry point will be be queued up by the MVFIO C
/// routine and the processing function will DISP to it.
///
Property %TriggerOperations As %Integer [ InitialExpression = 0 ];

/// This boolean flag indicates that the MVFIO routines must process trigger calls
/// when it is set to TRUE. The trigger routine itself will clear this flag to call
/// back in to MVFIO to process the operation then set it back to TRUE when the
/// operation is complete. This allows Pre and Post operations to exist for an
/// MVFIO function without interfering with the indexing routine calls.
///
Property %FireTriggers As %Integer [ InitialExpression = 0 ];

/// Case preserving form of file name
///
Property %CasePreserveName As %String;

/// IO table used for reading or writing to the files in this directory
///
Property %IOTable As %String;

/// Namespace for Class
///
Property %ClassNamespace As %String;

/// Section Name when not the default data section
///
Property %SectionName As %String;

Method Dump() As %Status
{
}

Method UnlockAll() As %Status
{
}

Method Close() As %Status
{
}

Method %OnClose() As %Status
{
}

}
