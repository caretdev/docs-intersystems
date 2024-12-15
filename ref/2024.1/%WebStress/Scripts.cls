/// These are the recorded scripts that will be played back against the test system
Class %WebStress.Scripts Extends (%Persistent, %XML.Adaptor, %ZEN.DataModel.Adaptor) [ ClassType = persistent, Inheritance = right, Owner = {%Developer}, ProcedureBlock, System = 4 ]
{

Parameter FileTimestamp = "60009,39315";

/// This is the default port that is used to communicate with the web server. It is assumed to be 80 unless otherwise specified.
/// <br>
/// It can be overridden by any URL
Property OriginalPort As %String(TRUNCATE = 1) [ InitialExpression = 80 ];

/// This is the default web server address that will be used throughout the script.
/// <br>
/// It is taken from the first URL call.
/// <br>
/// The reason that we store it is so that it can be retrieved if any of the URLs throughout the script call other web servers
/// <br>
/// when it is overridden by that particular URL
Property OriginalServer As %String(TRUNCATE = 1);

/// The code to call to see if the returned page was an error.
/// This should in the form of a function that returns a zero or non-zero value where zero = no errors and non-zero = errors found
/// <br>
/// Examples:
/// <br>
/// $$IsError^MyScript()
/// <br>
/// ##class(User.Script).IsError()
Property ErrorCheck As %String(TRUNCATE = 1);

/// A unique name for this script
Property Name As %String(TRUNCATE = 1);

/// The is the code that is executed before each run of the script.
/// It should take the form of a function that returns a zero or non-zero value indicating
/// whether the script can run or not. (Zero = do not run, non-zero = run script)
/// <br>
/// Examples:
/// <br>
/// $$Init^MyScript()
/// <br>
/// ##class(User.Script).Init()
Property PreRunCode As %String(MAXLEN = 256, TRUNCATE = 1);

/// The is the code that is executed at the end of each full script
/// It should take the form of a function that returns a zero or non-zero value indicating
/// whether the script should continue to run or not. (Zero = stop running, non-zero = continue to run the script)
/// <br>
/// Examples:
/// <br>
/// $$AtEnd^MyScript()
/// <br>
/// ##class(User.Script).AtEnd()
Property PostRunCode As %String(MAXLEN = 256, TRUNCATE = 1);

/// A calculation of how long the script would take to run based upon the delay time
/// between the user's input and the recorded length of time for the server to reply to
/// the request.
Property TotalLengthMins As %Numeric [ Calculated, SqlComputeCode = {	set {TotalLengthMins}=##class(%WebStress.Scripts).GetTotalLengthMins({ID})}, SqlComputed ];

/// These are the details of each dialog between the browser and the web server
/// that all go together to form the total script.
Relationship URLs As %WebStress.Scripts.URLS [ Cardinality = children, Inverse = Script ];

/// This indicates the method used to build this script
Property RecordMethod As %String(TRUNCATE = 1) [ InitialExpression = "Manual" ];

/// The name of the routine that contains the randomisation code
Property RandomisationRoutine As %String(TRUNCATE = 1);

/// The date/time that the randomisation routine was automatically generated
Property RandomisationGenTime As %Integer;

/// Indicates whether one or more of the URLs for this script contains a CSPToken (protected/encrypted page)
Property ContainsCSPToken As %Boolean;

/// Date and time that this script was recorded
Property RecordDateTime As %TimeStamp;

Method TotalLengthMinsGet() As %Numeric
{
}

Method HomeDirectory() As %String
{
}

ClassMethod GetTotalLengthMins(id As %String)
{
}

/// This method can be called to automatically create the base routine for randomisation scripts.
/// It accepts two arguments:
/// <br>
/// scriptid	=	This is the internal ID number of the script. (Required)
/// rtnname		=	This is the name of the routine. (Optional). If not present this will default to "Random.Script.<i>n</i>"
/// <br>
/// where <i>n</i> is the <i>scriptid</i> number
ClassMethod MakeRtn(scriptid As %Integer, rtnName As %String = "") As %String
{
}

/// Converts the output from a recorded session into a script with associated URLs etc.
/// <br>
/// Requires a script name as a parameter. Note that this is stored in the recorded data
/// after this method has been called meaning that subsequent calls to this method can be
/// left blank and the method will re-use the last supplied name.
/// <br>
/// creatertn is either 0 (zero) or non-zero indicating whether or not an automatic randomisation base routine
/// is to be created.
/// <br>
/// rtnname specifies the optional routine name if creatrtn is used.
ClassMethod CacheRecorder(scriptname As %String = "", creatertn As %Integer = 0, rtnname As %String = "", debug As %Boolean = 0) As %String
{
}

/// Gets data from MS Access and builds our scripts
/// <br>
/// First you need to follow these steps:
/// <br>
/// 1. Setup a SYSTEM ODBC data source and use the Microsoft Access driver to point to the .mdb file created by the Microsoft tool
/// <br>
/// 2. Setup a SQL Gateway to point towards this ODBC data source
/// <br>
/// 3. Use the SQL Manager to link to the following tables in the .mdb file:
/// <br>
/// 		(a) Groups
/// <br>
/// 		(b) HTTPTransactions
/// <br>
/// 		(c) Scripts
/// <br>
/// These 3 steps should create the following classes:
/// <br>
/// 		(a) %WebStress.WAST.Groups
/// <br>
/// 		(b) %WebStress.WAST.HTTPTransactions
/// <br>
/// 		(c) %WebStress.WAST.Scripts
/// <br>
/// Normally the name of the script would come from the .mdb file but a default can be supplied for the
/// cases where the value in the .mdb file is a null string. In this case the name of the script will be
/// the name of the default name prefix and then the group ID number
/// <br>
/// For example: if defaultnameprefix = "Default_" and the group ID is 3 then the name of the script
/// would be 'Default_3'
/// <br>
/// The overwrite key is used so that you can overcome the problem where MS Access lets two different
/// scripts have the same name. a ' (n)' is added to the end of the script name if overwrite is set to 0
/// <br>
/// For example the first file might be "Main Test" and the second would be "Main Test (2)"
ClassMethod MS2Cache(defaultnameprefix As %String = "Default_", overwrite As %Boolean = 1) As %String
{
}

ClassMethod CheckRoutineIsValid(id As %String) As %Boolean
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called after
/// the object's data has been successfully written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnAfterSave(insert As %Boolean) As %Status [ Private ]
{
}

/// Used by debug to show what's going on
ClassMethod ShowProgress(msg)
{
}

}
