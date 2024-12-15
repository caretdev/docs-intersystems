/// Default parameters for DataMove.<br>
Class DataMove.Defaults Extends (%Persistent, %SYSTEM.Help) [ Inheritance = right, System = 4 ]
{

Parameter DOMAIN = "%Utility";

Parameter DEFAULTCONCURRENCY = 0;

/// This property is currently not exposed to the user and should only be changed if recommended by InterSystems.<br>
/// NOT FOR EXTERNAL USE.<BR>
/// Automatically start DataCheck when copies complete.<br>
/// 0 - Disabled. User must start DataCheck manually if desired.<br>
/// 1 - Enabled.<br>
Property EnableDataCheck As %Boolean [ InitialExpression = 1, Required ];

/// This property is currently not exposed to the user and should only be changed if recommended by InterSystems.<br>
/// NOT FOR EXTERNAL USE.<BR>
Property LogLevel As %Integer(MAXVAL = 1, MINVAL = 0) [ InitialExpression = 0, Internal, Required ];

/// Maximum number of MB DataMove DataCheck is allowed to process per minute.<br>
/// Setting the maximum number of MB DataMove DataCheck is allowed to process per minute
/// to 0 means that DataMove will check the data as fast as it can. This value is copied and used by the
/// DataMove when it is created. If you wish to modify an existing DataMove, use the DataMove.API:Modify() method.
Property MaxMBCheckPerMin As %Integer(MINVAL = 0) [ InitialExpression = 0, Required ];

/// Maximum number of MB DataMove is allowed to copy per minute.<br>
/// Setting the maximum number of MB DataMove is allowed to copy per minute
/// to 0 means that DataMove will copy the data as fast as it can. This value is copied and used by the
/// DataMove when it is created. If you wish to modify an existing DataMove, use the DataMove.API:Modify() method.
Property MaxMBPerMin As %Integer(MINVAL = 0) [ InitialExpression = 0, Required ];

Property Name As %String [ InitialExpression = "DMDEFAULTS", Internal, ReadOnly, Required ];

/// This property is currently not exposed to the user and should only be changed if recommended by InterSystems.<br>
/// (NOT CURRENTLY USED) NOT FOR EXTERNAL USE.<BR>
Property VerifyLevel As %Integer(MAXVAL = 2, MINVAL = 0) [ InitialExpression = 0, Internal, Required ];

Property Version As %Float [ InitialExpression = {$$$DataMoveVersion}, Internal, ReadOnly, Required ];

/// Opens the DataMove Defaults object.<br>
/// NOT FOR EXTERNAL USE.<BR>
ClassMethod Open(ByRef Status As %Status) As %ObjectHandle [ Internal ]
{
}

/// Returns current log level.<br>
/// NOT FOR EXTERNAL USE.<BR>
ClassMethod GetLogLevel() As %Integer [ Internal ]
{
}

/// Sets current log level.<br>
/// NOT FOR EXTERNAL USE.<BR>
ClassMethod SetLogLevel(LogLevel As %Integer = 0) As %Status [ Internal ]
{
}

/// Returns current verify level.<br>
/// NOT FOR EXTERNAL USE.<BR>
ClassMethod GetVerifyLevel() As %Integer [ Internal ]
{
}

/// Sets current verify level.<br>
/// NOT FOR EXTERNAL USE.<BR>
ClassMethod SetVerifyLevel(VerifyLevel As %Integer = 0) As %Status [ Internal ]
{
}

Method %OnAfterSave(insert As %Boolean) As %Status [ Internal, Private ]
{
}

Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private ]
{
}

ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal, Private ]
{
}

Method %OnOpen() As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

}
