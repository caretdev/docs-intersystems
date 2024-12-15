/// Provides a simple way for the System Monitor to send alerts via email. May be used by user extensions
/// for Sensors, Subscribers or Notifiers to send configured email alerts by calling %New() and SendEmail().
/// Note that %New() can fail if the Server or Recipients are not correctly configured, so the caller
/// should check for this and report the error in %objlasterror.
Class %SYS.Monitor.Email Extends %RegisteredObject [ LegacyInstanceContext, ProcedureBlock, System = 3 ]
{

/// Mailer
Property Mailer As %Net.SMTP;

/// Mail message
Property Msg As %Net.MailMessage;

/// Initialize the email object using configured Server, Recipients, SSL Config, etc. May fail if missing configuration info, see %Status.
Method Initialize() As %Status
{
}

/// Sends message via configured email.
Method SendEmail(msg As %String) As %Status
{
}

/// Calls Initialize() to fetch email configuration (Server, Recipients, SSL Config). If %New() fails and
/// returns a null OREF, then the error will be in %objlasterror.
Method %OnNew(initval As %RawString = "") As %Status [ Private ]
{
}

}
