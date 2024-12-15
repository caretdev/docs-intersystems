/// Helper routine which supports the MERGE command "Execute".
Class %SYS.Execute Extends (%Library.RegisteredObject, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

Parameter DOMAIN = "%Utility";

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/latest/databases/sys/cls/Config/CPF.xml#118 $"_$c(13,10)_"Last Change:   $DateTime: 2023/05/12 18:32:41 $"_$c(13,10)_"Changelist #:  $Change: 6004472 $"_$c(13,10)_"Checked in by: $Author: slubars $"};

/// Class name
Property ClassName As %String;

/// Class method name
Property MethodName As %String;

/// Routine name to execute. One of the following formats:<br>
/// 1) ^RTNNAME<br>
/// 2) TAG^RTNNAME<br>
/// 3) $$TAG^RTNNAME<br>
Property RoutineName As %String;

/// Namespace to execute the class or routine in.
Property Namespace As %String [ Required ];

/// Arguments to the Classmethod or routine. Up to 20 parameters may be passed.
Property Arg1 As %String(MAXLEN = 1024);

Property Arg2 As %String(MAXLEN = 1024);

Property Arg3 As %String(MAXLEN = 1024);

Property Arg4 As %String(MAXLEN = 1024);

Property Arg5 As %String(MAXLEN = 1024);

Property Arg6 As %String(MAXLEN = 1024);

Property Arg7 As %String(MAXLEN = 1024);

Property Arg8 As %String(MAXLEN = 1024);

Property Arg9 As %String(MAXLEN = 1024);

Property Arg10 As %String(MAXLEN = 1024);

Property Arg11 As %String(MAXLEN = 1024);

Property Arg12 As %String(MAXLEN = 1024);

Property Arg13 As %String(MAXLEN = 1024);

Property Arg14 As %String(MAXLEN = 1024);

Property Arg15 As %String(MAXLEN = 1024);

Property Arg16 As %String(MAXLEN = 1024);

Property Arg17 As %String(MAXLEN = 1024);

Property Arg18 As %String(MAXLEN = 1024);

Property Arg19 As %String(MAXLEN = 1024);

Property Arg20 As %String(MAXLEN = 1024);

ClassMethod Execute(Properties As %String) As %Status [ Internal ]
{
}

}
