/// Configuration information for the Task Manager
/// This table contains Parameter/Value pairs for the Configuration information
/// <br><br>
/// Users may access the Email parameters/values using the EmailSet() or EmailGet() methods.
Class %SYS.Task.Config Extends %Persistent [ System = 4 ]
{

Parameter DOMAIN = "%Utility";

/// Parameter Name
Property ParamName As %String(MAXLEN = 1024);

/// Parameter Value
Property Data As %String(MAXLEN = 32000);

/// Return data associated with Parameter
ClassMethod GetData(ParamName As %String) As %String [ Internal ]
{
}

/// Return object associated with Parameter
/// If the row is not found return a New object with the parameter Name set
ClassMethod GetObject(ParamName As %String) As %String [ Internal ]
{
}

/// Update the data associated with Parameter
ClassMethod UpdateData(ParamName As %String, Data As %String, Message As %String) As %Status [ Internal ]
{
}

/// Used for New installations or Upgrade to 1.3
ClassMethod Initialize() As %Status [ Internal ]
{
}

/// Used to return the encoded Mail Authentication Password
ClassMethod AuthPassGet() As %String [ Internal ]
{
}

/// Used to update the encoded Mail Authentication Password
ClassMethod AuthPassSet(pwd As %String) As %String [ Internal ]
{
}

/// Available fields for substitution into mail message subject / body
ClassMethod SubstitutionFields() As %String
{
}

/// Validate substitution fields in a message. 'bad' returns a specific problem field.
ClassMethod SubstitutionsValid(text, ByRef bad) As %Boolean
{
}

ClassMethod MakeSubstitutions(ByRef text, ByRef sub) [ Internal ]
{
}

/// Return the generic Task Manager email subject text
ClassMethod genericMailSubject() As %String
{
}

/// Return the generic Task Manager email message text
ClassMethod genericMailMessage() As %String
{
}

/// Retrieve the email settings for the Task Manager.
/// Available Parameters are:
/// <br><br>
/// "Server","Port","ReplyTo","Sender","TimeZone","AuthUser","AuthPassword",
/// "SubjectSuccess","SubjectFailure","MessageSuccess","MessageFailure","SSLConfiguration","UseSTARTTLS"
ClassMethod EmailGet(Parameter As %String, ByRef Value As %String) As %Status
{
}

/// Set the email parameters for the Task Manager
/// Available Parameters are:
/// <br><br>
/// "Server","Port","ReplyTo","Sender","TimeZone","AuthUser","AuthPassword",
/// "SubjectSuccess","SubjectFailure","MessageSuccess","MessageFailure","SSLConfiguration","UseSTARTTLS"
ClassMethod EmailSet(Parameter As %String, Value As %String) As %Status
{
}

}
