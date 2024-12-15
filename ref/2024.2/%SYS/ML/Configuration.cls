///
/// ML Configuration Definitions.  This super class should be extended by different providers
/// to allow for custom configurations.  Any configuration settings common to all providers should be defined in this class.
///
Class %SYS.ML.Configuration Extends %Persistent [ SqlRowIdPrivate, System = 4 ]
{

Parameter SQLPUBLICSECURITY = "{""%GetDefault"":""E""}";

/// Configuration name
Property Name As %String(MAXLEN = 256) [ Required ];

/// Provider
/// 0 = AutoML, 1 = H2O, 2 = DataRobot, 3 = PMML
Property Type As %EnumString(DISPLAYLIST = ",AutoML,H2O,DataRobot,PMML", VALUELIST = ",0,1,2,3") [ InitialExpression = 0, Required ];

/// Description of this Configurtion
Property Description As %String(MAXLEN = 256);

/// Default USING clause for the provider
Property Using As %String(MAXLEN = 4096);

/// Username/Rolename that is the owner of this ML Configuration
/// The owner will always implicitly have USE privilege for the configuration
Property Owner As %String(MAXLEN = 160);

Trigger %NoSQLFiling [ Event = INSERT/UPDATE/DELETE, Foreach = row, Language = objectscript ]
{
}

/// Create default ML configuration
/// name - Name of the configuration, required, must be unique.  String with MAXLEN=256
/// desc - Optional description for the configuration
/// using - default USING clause for the configuration.  This is a JSON string of key:value pairs (See CREATE MODEL for examples)
ClassMethod %Create(name As %String(MAXLEN=256), desc As %String(MAXLEN=256) = "", using As %String(MAXLEN=4096) = "", owner As %String(MAXLEN=160) = "") As %Status
{
}

/// Modify an ML configuration
/// name  - Name of the configuration to modify
/// desc  - Description for the configuration
/// using - default USING clause for the configuration.  This is a JSON string of key:value pairs (See CREATE MODEL for examples)
/// owner - Username/Rolename that owns this ML Configuration
///     To change Description, Using, or Owner, supply a new value (including "" to set the new value to null).
///     To leave the value alone, don't pass any value for the parameter
///     Name and Type cannot be modified
ClassMethod %Modify(name As %String(MAXLEN=256), desc As %String(MAXLEN=256), using As %String(MAXLEN=4096), owner As %String(MAXLEN=160)) As %Status
{
}

/// Modify an ML configuration from an SQL ALTER ML CONFIGURATION Statement
/// Internal method only, called from ALTER ML CONFIGURATION execution and from SMP %CSP.UI.Portal.ML.Configuration.SaveData()
/// name              - Name of the configuration to modify
/// desc              - Description for the configuration
/// using             - New using clause
/// javaTlsConfigFile - New Java TLS configuration file, H2O only
/// url               - New url value, DataRobot only
/// apiToken          - New apiToken value, DataRobot only
/// owner             - New owner name
/// %msg              - Byref, Error string returned to SQL
///     To change Provider, Description, Using, javaTlsConfigFile, Url, or apiToken, supply a new value (including "" to set the new value to null).
///     To leave the value alone, don't pass any value for the parameter
///     Name cannot be modified
/// RETURNS SQLCODE
ClassMethod %SQLAlter(name As %String(MAXLEN=256), provider As %String, desc As %String(MAXLEN=256), using As %String(MAXLEN=4096), javaTlsConfigFile As %String, ByRef url As %String, ByRef apiToken As %String, ByRef owner As %String, ByRef %msg As %String) As %Integer [ Final, Internal ]
{
}

/// Remove configuration
ClassMethod %Remove(name As %String(MAXLEN=256), tempDrop As %Boolean = 0) As %Status
{
}

/// Create default configurations for all providers
ClassMethod %CreateDefaults() As %Status [ Final, Internal ]
{
}

/// Sets the system-wide default ML Configuration
ClassMethod %SetSystemDefault(name As %String(MAXLEN=256)) As %Status [ Final ]
{
}

/// Returns the system-wide default ML Configuration
///  if no system wide default is defined (which really should not happen), "" is returned
ClassMethod %GetSystemDefault() As %String(MAXLEN=256) [ Final ]
{
}

/// Sets the current process's default ML Configuration
ClassMethod %SetDefault(name As %String(MAXLEN=256)) As %Status [ Final ]
{
}

/// Returns the current process's default ML Configuration
/// Returns "" if an error or the ML Configuration no longer exists and there is no system default
ClassMethod %GetDefault() As %String(MAXLEN=256) [ Final, SqlName = %GetDefault, SqlProc ]
{
}

/// Sets the current process's default ML Configuration, called from SET ML CONFIGURATION <name>
ClassMethod %SetDefaultSQL(name As %String(MAXLEN=256), ByRef SQLCODE As %Integer, ByRef %msg As %String = "") [ Final, Internal ]
{
}

/// Given an ML Configuration name, get the owner of the configuration
/// If ML Configuration does not exist or any other error, return ""
/// Called from %SYS.SQLSEC
ClassMethod %GetOwner(name As %String(MAXLEN=256)) As %String(MAXLEN=160) [ Final, Internal ]
{
}

/// Given the name of a ML Configuration, return the name of the provider
ClassMethod %GetProviderFromName(name As %String(MAXLEN=256), ByRef sc As %Status) As %String(MAXLEN=256) [ Final ]
{
}

/// Given the name of a ML Configuration, return the using property value
/// "" returned upon error
ClassMethod %GetUsingFromName(name As %String(MAXLEN=256)) As %Library.DynamicObject [ Final ]
{
}

/// Return a $list of all ML Configuration names
/// Called from %SYS.SQLSEC for granting USE Privilege to all ML Configurations
/// If there is an error, SQLCODE and %msg implicitly returned
ClassMethod %GetListOfAllConfigNames(ByRef SQLCODE As %Integer, ByRef %msg As %String) As %Library.List [ Final, Internal, PublicList = (SQLCODE, names) ]
{
}

}
