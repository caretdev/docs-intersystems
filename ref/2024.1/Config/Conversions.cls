/// This class contains information about the conversions carried out on the CPf file
/// when either the system is upgraded, or the Config.CPF.Convert() method is run on
/// a CPF file.<br>
/// Conversion details are stored as comments in the CPF file in this section.<br>
/// These comments can be removed or edited at any time.
Class Config.Conversions Extends (%Persistent, Config.CommonSingleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

/// Last time the CPF file was converted.<br>
Property LastConvertTime As %String(MAXLEN = 32, MINLEN = 1) [ InitialExpression = {$zdatetime($h,3)}, Required ];

}
