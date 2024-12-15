///
/// ML Configuration Definitions for DataRobot provider
/// %SYS.ML.Configuration.Type=2 for DataRobot
///
Class %SYS.ML.DataRobot.Configuration Extends %SYS.ML.Configuration
{

Property url As %String(MAXLEN = 128) [ InitialExpression = "https://app.datarobot.com/", Required ];

Property apiToken As %String(MAXLEN = 512) [ Required ];

/// Create DataRobot configuration
ClassMethod %Create(name As %String(MAXLEN=256) = "", desc As %String(MAXLEN=256) = "", using As %String(MAXLEN="") = "", owner As %String(MAXLEN=160) = "", url As %String(MAXLEN="") = "", apiToken As %String(MAXLEN=512) = "") As %Status
{
}

/// Modify an ML configuration
/// name     - Name of the configuration to modify
/// desc     - Description for the configuration
/// using    - default USING clause for the configuration.  This is a JSON string of ket:value pairs (See CREATE MODEL for examples)
/// owner    - Username/Rolename that owns this ML Configuration
/// url      - Uniform Resource Locator for this ML Configuration
/// apiToken - apiToken for this ML Configuration
///     To change Description, Using, Owner, url apiTokem, supply a new value (including "" to set the new value to null).
///     To leave the value alone, don't pass any value for the parameter
///     Name and Type cannot be modified
ClassMethod %Modify(name As %String(MAXLEN=256), desc As %String(MAXLEN=256), using As %String(MAXLEN=4096), owner As %String(MAXLEN=160), url As %String(MAXLEN=""), apiToken As %String(MAXLEN=512)) As %Status
{
}

}
