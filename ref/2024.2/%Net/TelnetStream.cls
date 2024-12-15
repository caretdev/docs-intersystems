/// This class emulates the handshaking behavior of Windows NT Telnet.exe
Class %Net.TelnetStream Extends (%IO.MetaCharacterStream, %IO.IParts.SocketIO) [ Inheritance = right, System = 3 ]
{

Parameter DEFAWSWIDTH As INTEGER = 105;

Property AWSWidth As %Integer [ InitialExpression = {..#DEFAWSWIDTH} ];

Parameter DEFAWSHEIGHT As INTEGER = 45;

Property AWSHeight As %Integer [ InitialExpression = {..#DEFAWSHEIGHT} ];

Parameter DEFTERMTYPES As STRING = "ANSI; VT-100; IBM-3278-2";

/// List of terminal types to claim to support, semicolon separated
Property TermTypes As %String(TRUNCATE = 1) [ InitialExpression = {..#DEFTERMTYPES} ];

/// Name of the translation table to use for importing and exporting character text.
/// See <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=LANDING+TRANSLATETABLES">Translation Tables</a>.
Property TranslationTable As %String(TRUNCATE = 1);

Parameter DEFAULTPORT As INTEGER = 23;

/// If this is set, don't re-acknowledge options we have already acknowledged once
Property NoReacknowledgements As %Boolean [ InitialExpression = 0 ];

Parameter OpENDSCR = 239;

Parameter OpSE = 240;

Parameter OpNOP = 241;

Parameter OpSB = 250;

Parameter OpWill = 251;

Parameter OpWont = 252;

Parameter OpDo = 253;

Parameter OpDont = 254;

Parameter OpIAC = 255;

Parameter OptBINX = 0;

Parameter OptECHO = 1;

Parameter OptSGA = 3;

Parameter OptSTATUS = 5;

Parameter OptTIMING = 6;

Parameter OptTERMTYPE = 24;

Parameter OptENDREC = 25;

Parameter OptNAWS = 31;

Parameter OptTERMSPEED = 32;

Parameter OptTOGGLEFLOW = 33;

Parameter OptLINEMODE = 34;

Parameter OptXDISPLAY = 35;

Parameter OptENVVAR = 36;

Parameter OptENV = 39;

/// Private Properties
Property Options As %String(TRUNCATE = 1) [ MultiDimensional, Private ];

Property OptNames As %String(TRUNCATE = 1) [ MultiDimensional, Private ];

Property OptTable As %String(TRUNCATE = 1) [ MultiDimensional, Private ];

/// record of responses so that we can support NoReacknowledgements option
Property AcksSent As %String(TRUNCATE = 1) [ MultiDimensional, Private ];

Property State As %Integer [ InitialExpression = 0, Private ];

/// Current option
Property Op As %String(TRUNCATE = 1) [ Private ];

/// Current subnegotiation option string
Property SBOp As %String(TRUNCATE = 1) [ Private ];

/// Index of current option request from host
Property iOpt As %Integer [ InitialExpression = 0, Private ];

Property iTermType As %Integer [ InitialExpression = 0, Private ];

/// Current Header block for 3270E data
Property Curr3270Header As %String(TRUNCATE = 1) [ InitialExpression = "xxxxx" ];

/// integer for response count in 3270E header response mode
Property ResponseID As %Integer;

Method %OnNew(pBaseStream As %IO.I.Stream = "%IO.Socket") As %Status
{
}

Method init() [ Private ]
{
}

/// In in 3270(e) mode, writes out a record with header and terminator (IAC-EOR)
/// Otherwise, writes out the line followed by the standard ..LineTerminator character(s)
Method WriteLine(pLine As %String = "", pFlush As %Boolean, Output pSC As %Status)
{
}

Method Write(pData As %String = "", pFlush As %Boolean, Output pSC As %Status)
{
}

Method WriteRaw(pData As %String = "", pFlush As %Boolean, Output pSC As %Status)
{
}

Method ReadRaw(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric, Output pSC As %Status) As %String
{
}

Method ReadLine(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric = -1, Output pSC As %Status, pLineTerminator As %String = {..LineTerminator}) As %String
{
}

Method Read(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric = -1, Output pSC As %Status) As %String
{
}

Method processIACs(pData As %String, Output pReplied As %Boolean, Output pSC As %Status) As %String
{
}

ClassMethod toAscii(pStr) As %String
{
}

Method Open(pHost As %String = "", pPort As %String = "", ByRef pTimeout As %Numeric = -1, Output pSC As %Status) As %Boolean
{
}

Method Reset(pStream As %IO.I.Stream, pTimeout As %Numeric = 10, Output pSC As %Status)
{
}

Method Close(Output pSC As %Status) As %Boolean
{
}

Method SetOption(pName As %String, pVal As %String, Output pSC As %Status)
{
}

Method GetOption(pName As %String, Output pSC As %Status) As %String
{
}

ClassMethod escape(str As %String) As %String [ CodeMode = expression ]
{
}

Method CharImport(pData As %String) As %String
{
}

Method CharExport(pData As %String) As %String
{
}

ClassMethod Latin1ToCP037(pData As %String)
{
}

ClassMethod CP037ToLatin1(pData As %String)
{
}

}
