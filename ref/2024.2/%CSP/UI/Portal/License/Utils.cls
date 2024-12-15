Class %CSP.UI.Portal.License.Utils [ Abstract, System = 4 ]
{

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

Property RestartMsg As %String [ InitialExpression = {$$$FormatText($$$Text("System Restart Required - The %1 in MGR will not take effect until restart."),$$$KEYFILENAME)} ];

ClientMethod doPrint(filename) [ Language = javascript ]
{
}

ClassMethod GetLicenseInfo(Output ret As %Library.ArrayOfDataTypes) As %Status
{
}

/// Draw HTML for the current activated license on the system.
/// This method is called by LicensePrint also.
ClassMethod DrawLicense(pSeed As %String) As %Status
{
}

/// Draw HTML for the license file in the License Key File field. This may or may not be activated.
/// This method is called by LicensePrint also.
ClassMethod DrawFile(pFile As %String, isPrint As %Boolean = 0) As %Status
{
}

}
