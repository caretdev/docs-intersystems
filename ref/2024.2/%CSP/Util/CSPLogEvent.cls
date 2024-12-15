/// Class allowing to load CSP.log into <class>%CSP.Util.CSPLogEvent</class> class and
/// search it using SQL.
Class %CSP.Util.CSPLogEvent Extends %Persistent [ System = 4 ]
{

/// used to be able to filter/delete a bad dataload
Property ImportTS As %TimeStamp;

Property EvtTimestamp As %TimeStamp [ Required ];

Property EvtDate As %Date [ Calculated, SqlComputeCode = { set {*} = $zdh($p({EvtTimestamp}," ",1),3)}, SqlComputed ];

Property RTBuild As %String;

Property LogLevel As %Integer;

Property GatewayID As %String;

Property GatewayPID As %Integer;

Property GatewayTID As %Integer;

Property ConnectionNo As %Integer;

Property Server As %String;

Property CachePID As %String;

Property RequestID As %String;

Property SessionID As %String;

Property RemoteAddr As %String;

Property Page As %String(MAXLEN = 300);

Property CallType As %String;

Property Payload As %String(MAXLEN = 32000);

Property CookieName As %String(MAXLEN = 255);

Property CookieSP As %Integer(MAXVAL = 65536, MINVAL = 1);

Property CookieUP As %String(MAXLEN = 255);

Property CookieValue As %String(MAXLEN = 100);

Property CookiePath As %String(MAXLEN = 1000);

Property CookieConn As %Integer;

Property CookieServer As %Integer;

Property CookieAppNo As %Integer;

Property CookiePrivateSession As %Boolean;

/// Imports CSP.log from CSP Gateway registry<br>
/// Displays all registered CSP Gateways and allow to select what log to load<br>
/// <br>
/// dateFromTS - timestamp in ODBC format or leave empty to load all data from the beginning of the log<br>
/// dateToTS - timestamp in ODBC format or leave empty to load all data to the end of the log<br>
/// Example: <example>Set res=##class(%CSP.Util.CSPLogEvent).GtwImport()</example>
ClassMethod GtwImport() As %String
{
}

/// Imports CSP.log from from CSP.log file<br>
/// Displays all registered CSP Gateways and allow to select what log to load<br>
/// <br>
/// dateFromTS - timestamp in ODBC format or leave empty to load all data from the beginning of the log<br>
/// dateToTS - timestamp in ODBC format or leave empty to load all data to the end of the log<br>
/// Example: <example>Set res=##class(%CSP.Util.CSPLogEvent).FileImport()</example>
ClassMethod FileImport(pFile) As %String
{
}

/// Imports CSP.log from CSP.log file<br>
/// <br>
/// dateFromTS - timestamp in ODBC format or leave empty to load all data from the beginning of the log<br>
/// dateToTS - timestamp in ODBC format or leave empty to load all data to the end of the log<br>
/// Example: <example>Set res=##class(%CSP.Util.CSPLogEvent).FileImport(pFile,from,to,1,1,0,1,1)</example>
ClassMethod FileImportNoPrompt(pFile As %String, dateFromTS As %TimeStamp = "", dateToTS As %TimeStamp = "", pGatewayID = 1, pRunTuneTable = 0, pFilterGZIPErrors = 0, pDeleteExtent = 0, display = 0) As %String
{
}

/// Imports CSP.log from stream<br>
/// <br>
/// dateFromTS - timestamp in ODBC format or leave empty to load all data from the beginning of the log<br>
/// dateToTS - timestamp in ODBC format or leave empty to load all data to the end of the log<br>
ClassMethod Import(pStream As %Stream.GlobalCharacter, dateFromTS As %TimeStamp = "", dateToTS As %TimeStamp = "", pGatewayID = 1, pRunTuneTable = 0, pFilterGZIPErrors = 0, pDeleteExtent = 0, display = 0) As %String
{
}

ClassMethod data(str, del1, del2) As %String [ Private ]
{
}

ClassMethod DumpEvents(pFile, pLogLevel, pServer, pStartTime, pEndTime, pConnectionNo, pThreadId, pServerPID) As %String
{
}

ClassMethod SqlToFile(pFile, pSQL, display = 1) As %String
{
}

ClassMethod DateCvt(pDate = "") As %String
{
}

/// Returns 1 If TS1<TS2
ClassMethod CheckTS(TS1, TS2) As %String
{
}

/// Returns selected Option
ClassMethod OPTION(prompt, default, max) As %String
{
}

ClassMethod GetTS(pStream As %Stream.GlobalCharacter) As %TimeStamp
{
}

}
