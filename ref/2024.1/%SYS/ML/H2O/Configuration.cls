///
/// ML Configuration Definitions for H2O provider
/// %SYS.ML.Configuration.Type=1 for H2O
///
Class %SYS.ML.H2O.Configuration Extends %SYS.ML.Configuration
{

Property javaTlsConfigFile As %String(MAXLEN = 4096);

/// Create H2O configuration
ClassMethod %Create(name As %String(MAXLEN=256), desc As %String(MAXLEN=256) = "", using As %String(MAXLEN="") = "", owner As %String(MAXLEN=160) = "", javaTlsConfigFile As %String(MAXLEN=4096) = "") As %Status
{
}

/// Modify an ML configuration
/// name              - Name of the configuration to modify
/// desc              - Description for the configuration
/// using             - default USING clause for the configuration.  This is a JSON string of key:value pairs (See CREATE MODEL for examples)
/// owner             - Username/Rolename that owns this ML Configuration
/// javaTlsConfigFile - Path to Java client TLS configuration file to connect to superserver
///     To change Description, Using, Owner, or javaTlsConfigFile, supply a new value (including "" to set the new value to null).
///     To leave the value alone, don't pass any value for the parameter
///     Name and Type cannot be modified
ClassMethod %Modify(name As %String(MAXLEN=256), desc As %String(MAXLEN=256), using As %String(MAXLEN=4096), owner As %String(MAXLEN=160), javaTlsConfigFile As %String(MAXLEN=4096)) As %Status
{
}

}
