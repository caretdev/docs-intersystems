Class Config.CPF Extends Config.CommonMethods [ Abstract, System = 4 ]
{

Parameter CPFCURRENTVERSION = 2024.3;

Parameter DOMAIN = "%Utility";

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/Config/CPF.xml#3 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/18 10:38:24 $"_$c(13,10)_"Changelist #:  $Change: 7293289 $"_$c(13,10)_"Checked in by: $Author: build $"};

/// Write out the CPF file from the object, then activate it <br>
ClassMethod ActivateOne(Properties) As %Status [ Internal ]
{
}

/// Read and activate the current CPF file.<br>
/// This method will read the currently active CPF file if it has been updated on disk
/// but not yet read in. After the current settings have been read in, they are activated.
ClassMethod Activate() As %Status
{
}

/// If the system is in a state where none of the namespaces work (e.g. <NOROUTINE> when trying
/// to execute a routine which should be there in %SYS), this call will reset the system with
/// the values currently in the CPF file. This is primarily used for debugging EMS when you
/// have downloaded a bad namespace map.
ClassMethod Recover() As %Status [ Internal ]
{
}

/// Returns 0/1 if the CPF file has been modified but not activated.<br>
/// If it has been modified by an editor, an activation must occur before
/// any of the Config methods can be called to activate any additional changes.
ClassMethod CPFFileNeedsActivation(ByRef Msg As %String) As %Boolean
{
}

/// Determines if a restart of the system is required in order to
/// activate modified CPF parameters.<br>
/// Return Values:<br>
/// 0 - Restart is not required<br>
/// 1 - Restart is required<br>
/// Reasons - If a restart is required, an array of reasons why in the following format.<br>
/// Reasons=1<br>
/// Reasons(1,"New")=New value<br>
/// Reasons(1,"Old")=Old Value<br>
/// Reasons(1,"Property")=Property name<br>
/// Reasons(1,"Section")=Section name<br>
/// Reasons(1)="Restart required because section [xxx], property yyy modified, new value:zzz, old value:zzz"<br>
/// Note that if the CPF file has been modified, but not yet activated, this
/// method will return 1, and the following array:<br>
/// Reasons=1<br>
/// Reasons(1)="Restart or reactivation required because the CPF file xxxx has been modified, but not activated"<br>
/// Reasons(1,"New")=""<br>
/// Reasons(1,"Old")=""<br>
/// Reasons(1,"Property")=""<br>
/// Reasons(1,"Section")=""<br>
ClassMethod PendingRestart(ByRef Reasons As %String) As %Boolean
{
}

/// Load the various sections of the CPF file which can be reactivated.<br>
ClassMethod Load() As %Status [ Internal ]
{
}

/// Create a default iris.cpf file.<br>
ClassMethod CreateDefault(Directory As %String = "", Overview As %String, Type As %String) As %Status [ Internal ]
{
}

/// Convert a CPF file to the current version.<br>
/// This method will take a CPF file and convert it to the current version. Note that it will
/// not do any validation on the file, it will simply convert it.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
/// <b>Flags</b> - Internal use only, do not pass.<br>
ClassMethod Convert(ByRef CPFFile As %String = "", Flags As %Integer = 0) As %Status
{
}

ClassMethod RemoveDuplicates(CPFFile As %String, Flags As %Integer) As %Status [ Internal ]
{
}

/// Update lines in the CPF file.<br>
/// This method will take an array of error messages generated by the Validate method(),
/// and determine if there any of these messages are related to overlapping range mappings.
/// If there are, it will take the range overlaps and generate non-overlapping ranges. For
/// example if you had the following mappings:<br><br>
/// A:C -> DB1<br>
/// B:D -> DB2<br><br>
/// it would generate the following mappings instead:<br><br>
/// A:C -> DB1<br>
/// C:D -> DB2<br><BR>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
/// <b>Lines (by ref)</b> - Array of line numbers to update in the CPF file. Each line
/// contains the error message about how that line overlaps with some previous line.
/// For example:<br><br>
/// Lines(186)="Overlapped mapping "_$c(0)_"(Note):(Notf)"_$c(0)_" mapping overlaps with a prior mapping "_$c(0)_"(Notes)"_$c(0)_" , LINE:'Global_Note*=DOCBOOK,5' at line 186 "<br>
/// Lines(187)="Overlapped mapping "_$c(0)_"(Not):(Nou)"_$c(0)_" mapping overlaps with a prior mapping "_$c(0)_"(Notes)"_$c(0)_" , LINE:'Global_Not*=DOCBOOK,5' at line 187 "<br>
ClassMethod UpdateLines(CPFFile As %String = "", ByRef Lines As %String, Flags As %Integer) As %Status [ Internal ]
{
}

/// Update lines in the CPF file.<br>
/// This method is used by the CPF file converter to help convert overlaping mappings
/// from 2008.2 or previous version CPF files to 2009.1 non-overlapped mappings.<br>
/// This is part of the handling when we have a mapping of the form:<br><br>
/// Line 1) A:C -> DB1<br>
/// Line 2) A   -> DB2<br>
/// Line 3) A("r"):A("S") -> DB3<br><br>
/// converts to<br><br>
/// Line 1) A.:C -> DB1<br>
/// Line 2) A   -> DB1    ; Note that the rest of this mapping is "hidden" by A.:C<br>
/// Line 3) A("r"):A("S") -> DB3<br><br>
/// This method handles resolving and fixing up of line 1 and 2 (line 3 was resolved
/// by UpdateLines() )<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
/// <b>UpdateLinesAgain(by ref)</b> - Array of information to update mappings, generated by
/// the UpdateLines() method.<br>
ClassMethod UpdateLinesAgain(CPFFile As %String = "", ByRef UpdateLinesAgain As %String, Flags As %Integer) As %Status [ Internal ]
{
}

/// Merge map ranges back into wildcards.<br>
ClassMethod MergeMaps(CPFFile As %String = "", Flags As %Integer) As %Status [ Internal ]
{
}

/// Convert the CPFFile to version 2008.2.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20082(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2009.0.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20090(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2009.1.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20091(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2009.15.<br>
/// This is the start of the conversion to 2010.1 format.
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo200915(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2010.1.<br>
/// This continues the conversion to 2010.1 format, started by ConvertTo200915.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20101(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2010.11.<br>
/// This finishes the conversion to version 2010.1 format, started by ConvertTo200915.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201011(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2010.15.<br>
/// This starts the conversion to 2010.2 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201015(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2010.16.<br>
/// This continues the conversion to 2010.2 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201016(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2010.17.<br>
/// This continues the conversion to 2010.2 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201017(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2010.18.<br>
/// This continues the conversion to 2010.2 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201018(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2010.2.<br>
/// This finishes the conversion to 2010.2 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20102(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo201021(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20105(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2011.01.<br>
/// This continues the conversion to 2011.1 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201101(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2011.02.<br>
/// This continues the conversion to 2011.1 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201102(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2011.03.<br>
/// This continues the conversion to 2011.1 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201103(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2011.04.<br>
/// This finishes the conversion to version 2011.1.x.
/// Note: 2011.1.x and 2012.1.x CPF file formats are the same.
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201104(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo201105(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2011.06.<br>
/// This continues the conversion to 2012.2 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201106(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2012.2.<br>
/// This finishes the conversion to 2012.2 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20122(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2013.1.<br>
/// This finishes the conversion to 2013.1 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20131(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2014.1.<br>
/// This starts the conversion to 2014.1 format.<br>
/// Note that there was no version 2013.2. 2013.2 is the same version as 2013.1
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20141(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2015.1.<br>
/// This starts the conversion to 2015.1 format.<br>
/// Note that there was no version 2014.2. 2014.2 is the same version as 2014.1.
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20151(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2015.2.<br>
/// This starts the conversion to 2015.2 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20152(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2015.3.<br>
/// This starts the conversion to 2015.3 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20153(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2016.4.<br>
/// This starts the conversion to 2016.4 format.<br>
/// (Note that 2016.4 was not a released product).<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20164(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2017.1.<br>
/// This starts the conversion to 2017.1 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20171(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2017.15.<br>
/// This starts the conversion to 2017.15 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201715(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2017.16.<br>
/// This starts the conversion to 2017.16 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201716(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2017.19.<br>
/// This starts the conversion to 2017.19 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201719(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2017.21.<br>
/// This starts the conversion to 2017.21 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201721(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2017.22.<br>
/// This starts the conversion to 2017.22 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201722(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2017.225.<br>
/// This starts the conversion to 2017.225 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo2017225(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2017.23.<br>
/// This starts the conversion to 2017.23 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201723(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// THIS IS WHERE IRIS DIVERGES FROM CACHE.
/// Start of IRIS 2018.1 changes through 2018.15
/// This only gets run for Cache->IRIS conversions
/// Convert the CPFFile to version 2017.24.<br>
/// This starts the conversion to 2017.24 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201724(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2017.25.<br>
/// This starts the conversion to 2017.25 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201725(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2017.26.<br>
/// This starts the conversion to 2017.26 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201726(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2018.1.<br>
/// This starts the conversion to 2018.1 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo20181(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2018.11.<br>
/// This starts the conversion to 2018.11 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201811(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2018.12.<br>
/// This starts the conversion to 2018.12 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201812(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// Convert the CPFFile to version 2018.13.<br>
/// This starts the conversion to 2018.13 format.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert.<br>
ClassMethod ConvertTo201813(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo201814(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// This completes the IRIS 2018.1 CPF conversion
ClassMethod ConvertTo201815(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// THIS IS THE START OF CHANGES IN IRIS 2018.2
/// Note that EnableVSSBackup was added to Cache 2018.1 kits,and must
/// be catered for here.
ClassMethod ConvertTo201816(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo201817(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo201818(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// This is the end of the 2018.1 to 2018.2 IRIS upgrade changes
ClassMethod ConvertTo201819(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// THis is the start of the IRIS 2018.2 to 2019.1 CPF conversion
ClassMethod ConvertTo201820(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// This is the end of the 2019.1 conversion
ClassMethod ConvertTo20191(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// This is the start of the 2019.1 to 2019.2 conversion
ClassMethod ConvertTo201915(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// This is the end of the 2019.1 to 2019.2 conversion
ClassMethod ConvertTo20192(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

/// This is the end of the 2019.2 to 2019.3 conversion
ClassMethod ConvertTo20193(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20201(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202015(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20204(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20211(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202116(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202117(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202118(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20212(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202121(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202122(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202123(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20221(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202215(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20222(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202221(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertGateways(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202222(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202223(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20223(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202232(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202233(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20231(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202311(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202312(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20232(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202321(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20233(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202331(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202332(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202334(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202335(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202337(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20241(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202413(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202414(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202415(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202416(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20242(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo202421(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

ClassMethod ConvertTo20243(ByRef CPFFile As %String = "", Flags As %Integer = 0) [ Internal ]
{
}

///
/// -----------------------------------------------------------
/// CPF CONVERSIONS MUST BE ADDED BEFORE THIS DOCUMENTATION SECTION.
/// BEFORE ADDING A CPF CONVERSION PLEASE CHECK WITH STEVE CLAY, AND
/// READ THE DOCUMENTATION SECTION BELOW.
/// -----------------------------------------------------------
///
/// New CPF conversions should only be done in the /iris/latest branch and then ported
/// to private branches in order to prevent version collision. New CPF conversions should not
/// be added in maintenance versions (e.g. 2019.1.x), only /iris/latest.
/// The sequence of conversion between major releases should be as follows; This illustrates what
/// methods should be added between version 2019.1 and 2019.2. The same procedure would be used between
/// 2019.2 and 2019.3, and 2019.3 and 2020.1.
///
/// Please see the changes in STC2916 which demonstrates the code changes in the procedure described here.
///
/// 1) Assume the current CPF version is 2019.1. The last conversion method is named ConvertTo20191 which
/// got us to this point.
///
/// 2) Update the relevant Config.* class. In this case, I added a new data type to the
/// Config.SqlSysDatatypes class. This meant adding a line in the Default() method. Other classes may
/// require a property addition and a storage definition change. Make sure you add new storage definitions
/// for new properties at the end of the list.
///
/// 3) The first time a parameter is added post 2019.1, create a method ConvertTo201915() (add a 5 to name).
/// It is usually easiest to copy a previous conversion method and modify it. This
/// is the first method called in a 2019.2 upgrade. In this method you need to save off
/// the existing 2019.1 CPF file with this line:
///
/// if '##Class(%Library.File).CopyFile(CPFFile,CPFFile_"_BeforeConvertTo2019.2") { QUIT $$$ERROR($$$FileCanNotCopy,CPFFile,CPFFile_"_BeforeConvertTo2019.2") }
///
/// 4) Make the code changes in ConvertTo201915() to add the new parameter to the file. In this case I added
/// the parameter [SqlSysDatatypes] MEDIUMTEXT=%Stream.GlobalCharacter. You can add 1 or more parameters each
/// time you convert.
///
/// 5) Update the Convert() method to add a call to ConvertTo201915
///
/// i Version<2019.15 {
/// 		s Status=..ConvertTo201915(CPFFile, Flags)
/// 		i '$$$ISOK(Status) g Exit
/// }
///
/// Also update the CPFCURRENTVERSION parameter value defined at the beginning of this class to the current version:
///
/// Parameter CPFCURRENTVERSION As String = "2019.15";
///
/// 6) Now add a ConvertTo20192 method. In this method add the code:
/// 	if Nameup="LASTCONVERTTIME" {
/// 		write "LastConvertTime="_$zdatetime($h,3),!
/// 		do ..LogCPFChange("----------CPF conversion detail------------")
/// 		do ..LogCPFChange("Changes in format between 2019.1 and 2019.2")
/// 		do ..LogCPFChange("Add [SqlSysDatatypes] MEDIUMTEXT=%Stream.GlobalCharacter")
/// 		continue
/// 	}
/// And make the version 2019.2:
/// 	if (Sectionup="CONFIGFILE"),(Nameup="VERSION") { write "Version=2019.2",! continue }
///
/// Do NOT add a call to the ConvertTo20192() method in Convert() at this time. This will be added later.
///
/// 7) You can test by taking an existing 2019.1 CPF file (not the one in your working configuration)
/// and calling the following:
///
/// s Status=##Class(Config.CPF).Convert("c:\test\iris.cpf")
///
/// Examine the CPF file and verify that the version is 2019.15, and your parameter is added/modified.
///
/// 8) You are now ready to test on your existing system. Call the following from a terminal
/// in your instance:
///
/// s Status=##Class(Config.CPF).Validate()
///
/// Validate() performs a test conversion on your instances CPF file, and validates that the
/// resulting CPF file is syntactically correct, and reports any errors.
///
/// 9) Once you are satisfied that the conversion is correct, shut the system down, then restart. It should
/// start, and your CPF file should be converted to the new version 2019.15, and the parameters
/// added/modified. If the system does not start,
/// examine the messages.log file for errors. Confirm that the previous CPF file was copied to
/// IRIS.CPF_BeforeConvertTo2019.2. If necessary use emergency startup, fix any issues with your code,
/// and restart.
///
/// 10) Now check in your code to /iris/latest. You can then sync your private branch with /iris/latest
/// to get this and all the previous CPF file changes.
///
/// 11) It is at this point that you can introduce code to your private branch which actually uses
/// the updated information from the CPF file.
///
/// 12) Now to add the next set of parameters to 2019.2, create a method called ConvertTo201916()
/// (easiest to copy CopyTo201915() and modify it.)
/// (bump last number by 1, until you get to 201919. Then go 2019191, 2019192,...)
/// Add your conversion code here, and bump the version to 2019.16.
/// Make sure you do NOT add the line to save off the existing CPF file as you had previously
/// saved off the 2019.1 file.
///
/// 13) Add a line to the ConvertTo20192() method at the end of the Nameup="LASTCONVERTTIME" section
/// describing what was modified.
///
/// 	if Nameup="LASTCONVERTTIME" {
/// 		write "LastConvertTime="_$zdatetime($h,3),!
/// 		do ..LogCPFChange("----------CPF conversion detail------------")
/// 		do ..LogCPFChange("Changes in format between 2019.1 and 2019.2")
/// 		do ..LogCPFChange("Add [SqlSysDatatypes] MEDIUMTEXT=%Stream.GlobalCharacter")
/// 		do ..LogCPFChange("Add NEW STUFF HERE")
/// 		continue
/// 	}
///
/// 14) Add a line to the Convert() method to call ConvertTo201916()
///
/// 15) Go to Step 7 to validate your conversion.
///
/// 16) You can continue adding conversions by following steps 11-15.
///
/// 17) Now when you are done adding parameters to 2019.2, add a call to ConvertTo20192() in the
/// Convert() method (this should be done near release.)
/// This will bump the version to 2019.2, and list all the changes between
/// 2019.1 and 2019.2 at the bottom of the CPF file.
///
/// 18) If you need to add an additional parameter for 2019.2 after you have already bumped the
/// version number to 2019.2 (e.g. a late in the release change), use 2019.21.
///
/// 19) The end result of a conversion procedure between major versions should be the following:
///
/// A) An IRIS.CPF_BeforeConvertTo2019.2 file is created which is the 2019.1 format CPF file.
/// B) All conversions included in the 2019.2 CPF file.
/// C) A record of all the conversions in the [Conversions] section. They should be sub-divided into
///    a list of CPF conversions between each major version.
/// D) A clean upgrade stream for developers as new conversions are added between major releases.
///
/// NOTES:
/// Sometimes an experimental CPF parameter is added using the "PROPERTIESMAYBEINCPF" mechanism.
/// In this case the parameter may or may not exist in the CPF file, and is usually added by hand.
/// If the property becomes "non-experimental", the CPF conversion needs to decide whether to add
/// it or not to the CPF file depending on whether it was already added or not. The conversion code
/// should create a GetOldParams() subroutine and determine if the parameter already exists or not
/// in the CPF file. See this tag and its usage in the ConvertTo20191() method. Another case where this
/// subroutine may become necessary is if a CPF parameter was added in a project branch, and then promoted
/// to /iris/latest.
///
/// ===============================================================================
/// Log the conversion details in the CPF file, and also to the messages.log
/// file if not running the validator. Note that the Temp file must be open and
/// the current device if called in order to log to the CPF file.<br>
/// Flags - Bit string of options.<br>
/// Bit 0 - Log to messages.log<br>
/// Bit 1 - Log to CPF file<br>
ClassMethod LogCPFChange(Message As %String, Flags As %Integer = 3) [ Internal ]
{
}

/// Convert a CPF file name to an internal name.<br>
/// Basically, this strips off the directory specification and the .CPF file extension, and
/// uses the resulting name as part of the index. On windows and VMS, the name is uppercased,
/// on unix it is not. For example:<br><br>
/// c:\abc\iris.cpf ---> IRIS<br>
/// /abc/iris.cpf ---> iris<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to convert its name.<br>
/// Return Values:<br>
/// <b>CPFFile</b> by ref - Normalized CPF file name<br>
/// <b>CPFName</b> by ref - Converted name to use in the index<br>
/// <b>CPFMapFile</b> by ref - Used as temporary storage when creating global/routine/package mappings<b>
/// <b>CPFName</b> by ref - Used as temporary storage name<br>
ClassMethod FileToName(ByRef CPFFile As %String = "", ByRef CPFName As %String = "", ByRef CPFMapFile As %String = "", ByRef CPFMapName As %String = "") As %Status [ Internal ]
{
}

/// Convert a CPF file name to an internal name.<br>
ClassMethod GetName(CPFFile As %String = "") As %String [ Internal ]
{
}

/// Convert a multiple entry %Status variable to text and output it.<br>
/// This method should be used on a %Status variable returned from the Read() method.
/// <b>Flags</b> - Options for error text<br>
/// <var>Bit $$$ErrorTextToScreen</var> - Write error text to terminal<br>
/// <var>Bit $$$ErrorTextToConsole</var> - Write error text to messages.log<br>
/// <var>Bit $$$ErrorTextToArray</var> - Return error text in ErrorText array<br>
ClassMethod GetErrorText(Status As %Status, Flags As %Integer = {$$$ErrorTextToScreen}, ByRef ErrorText As %String) As %Status [ Internal ]
{
}

/// Move the entire config object to the ^CONFIG global.<br>
ClassMethod MoveToActive(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]
{
}

ClassMethod ReadCheck(ByRef CPFFile As %String = "", Flags As %Integer = 0, ByRef CPFName As %String = "", ByRef WillRead As %Boolean) [ Internal ]
{
}

ClassMethod MergeCmd(CPFFile As %String = "", CPFMergeFile As %String = "") As %Status [ Internal ]
{
}

/// Merge two CPF files into one CPF file.<br>
/// <b>CPFFile</b> - Valid CPF file to be used for base of the merge.<br>
/// <b>CPFMergeFile</b> - Set of valid CPF file sections and parameters use to override parameters
/// in the CPFFile.<br>
/// Return Values:<BR>
/// Status - Success or list of errors in the MergeCPFFile from the Validate() method.<br>
/// CPFFile will contain the merged fields.<br>
ClassMethod Merge(CPFFile As %String = "", CPFMergeFile As %String = "") As %Status [ Internal ]
{
}

ClassMethod Test(File = "MERGE.CPF") As %Status [ Internal, ProcedureBlock = 0 ]
{
}

ClassMethod MergeActions(ActionsFile As %String = "") As %Status [ Internal ]
{
}

ClassMethod Actions(ActionsFile As %String, ByRef Index As %Integer, ActionsOutFile As %String, Flags As %Integer = {$$$ActionRead+$$$ActionValidate+$$$ActionExecute}, DisplayFlags As %Integer = {$$$ErrorTextToConsole}, ByRef ErrorText As %String) As %Status [ Internal ]
{
}

ClassMethod ReadActions(File As %String, ByRef Index As %Integer, OutFile As %String) As %Status [ Internal ]
{
}

/// Validate Actions.<br>
/// <b>Index</b> - ^SYS("CPFMerge",Index) to validate.<br>
ClassMethod ValidateActions(Index As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ExecuteActions(Index As %Integer) As %Status [ Internal ]
{
}

ClassMethod Action(Index As %Integer, Flags As %Integer, Order As %Integer, Action As %String, ByRef Actions As %String) [ Internal ]
{
}

ClassMethod ReplaceMacro(Value) As %Status [ Internal ]
{
}

/// This method defines the actions which are valid, and in what order they are executed.
ClassMethod DefineActions(ByRef Actions As %String) [ Internal ]
{
}

/// This method combines the "CreateOne" methods for both SYS.Database and Config.Datatabases,
/// allowing the user to specify a single "CreateDatabase" directive in their [Actions] block, e.g.:
///
///  [Actions]
///  CreateDatabase:Name=irisdm,Directory=irisdm
///
/// If only a logical database is desired, for example when configuring an ECP Client, one
/// can suppress the SYS.Database call using property "LogicalOnly":
///
///  [Actions]
///  CreateDatabase:Name=irisdm,Directory=irisdm,LogicalOnly=1
///
/// To copy the contents of a pre-existing database into a new one, include property "Seed":
///
///  [Actions]
///  CreateDatabase:Name=irisdm,Directory=irisdm,Seed=/path/to/some-db
///
/// Properties may pertain to SYS.Database, Config.Databases, or both; properties which don't
/// apply will be ignored.
ClassMethod CreateDatabase(ByRef Properties As %String) As %Status [ Internal ]
{
}

ClassMethod ModifyDatabase(ByRef Properties As %String) As %Status [ Internal ]
{
}

ClassMethod DeleteDatabase(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Validate that all of the properties passed in belong to at least
/// one of SYS.Database or Config.Databases
ClassMethod ValidateDatabaseProperties(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Add properties from the passed-in class to a list of properties.
ClassMethod CollectProperties(ClassName As %String, ByRef Properties As %String) [ Internal ]
{
}

/// Read a CPF file into a config object.<br>
/// The CPF file is only read in if it has been modified with an editor since the last time
/// it was read.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to read.<br>
/// <b>Flags</b><br>
/// <var>Bit $$$CPFReadValidateOnly</var> - Validate CPFFile but don't import.<br>
/// <var>Bit $$$CPFReadForceRead</var> - Force read of file even if file hash is the same<br>
/// Return values: <br>
/// <b>CPFFile</b> by ref - Normalized CPF file name.<br>
/// <b>CPFName</b> by ref - Converted name.<br>
/// <b>WasRead</b> by ref - 0/1 if file was actually read into the object.<br>
/// <b>Updates</b> by ref - Internal use only. Array used to pass in the Super Server, Web server ports and Utility WQM Category's MaxActiveWorkers and DefaultWorkers during installation.<br>
/// Note that if we pass the Validate flag, the file will be modified to change
/// the format of it to the current version.
ClassMethod Read(ByRef CPFFile As %String = "", Flags As %Integer = 0, ByRef CPFName As %String = "", ByRef WasRead As %Boolean, ByRef Updates As %String) [ Internal ]
{
}

/// This method forces a reset of the CPF file such that the next time the system restarts,
/// it will be read in, and the new config objects and ^CONFIG global is populated and
/// activated.
ClassMethod Reset() [ Internal ]
{
}

/// Validate that the section name read in from the CPF file is a valid section, and
/// in the right order in the file.<br>
/// Parameters:<br>
/// <b>Section</b> - Name of the section we just read.<br>
/// <b>Sections</b> by ref - Comma separated list of valid sections.
/// Return Values:<br>
/// <b>Section</b> - Normalized name of the section we just read. If a [Map.XXXX] section return "Map" piece.<br>
/// <b>Namespace</b> by ref - If a [Map.XXXX] section, returns the XXX (namespace) piece.
/// <b>Sections</b> by ref - Comma separated list of valid sections, with the section just read removed from the list.<br>
ClassMethod ValidateSection(ByRef Section As %String, ByRef ID As %String, ByRef Sections As %String) As %Status [ Internal ]
{
}

/// Validate a CPFFile.<br>
/// <b>CPFFile</b> - CPF file to validate.<br>
/// <b>Flags</b> - Options for error text. Macros defined in %syConfig.inc.<br>
/// <var>Bit $$$ErrorTextToScreen</var> - Write error text to terminal<br>
/// <var>Bit $$$ErrorTextToConsole</var> - Write error text to messages.log<br>
/// <var>Bit $$$ErrorTextToArray</var> - Return error text in ErrorText array<br>
ClassMethod Validate(ByRef CPFFile As %String = "", Flags As %Integer = {$$$ErrorTextToScreen}, ByRef ErrorText As %String) As %Status
{
}

/// Write to the CPF file from the config object.<br>
/// Parameters:<br>
/// <b>CPFFile</b> - CPF file to write, default is currently active one.<br>
ClassMethod Write(ByRef CPFFile As %String = "")
{
}

/// Write the active CPF file to the _lastgood_.cpf file
ClassMethod WriteLastGood() [ Internal ]
{
}

}