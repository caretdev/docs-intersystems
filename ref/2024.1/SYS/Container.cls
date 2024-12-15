/// The <class>SYS.Container</class> class contains methods to help users run IRIS
/// inside an OCI-compliant container. The primary use case for these methods is
/// to be called during the process of building an IRIS image, and these methods
/// are called during InterSystems' own image build process.
/// <p>
/// This class is designed to "fail loudly" to minimize the chance of uncaught
/// errors in an image build process.  By default, all public methods in
/// <class>SYS.Container</class> will print any error to the console and terminate
/// the entire calling process with an exit status of 1, which makes it easier to
/// detect failures in automated build environments.
/// <p>
/// This behavior can be controlled by calling processes through environment
/// variables, as specified in the documentation for <method>ErrorHandler()</method>.
/// <p>
/// InterSystems builds official IRIS images using <method>QuiesceForBundling()</method>.
///
Class SYS.Container Extends %RegisteredObject
{

/// This method runs all of the ObjectScript code necessary to get
/// InterSystems IRIS into a state where it can safely be serialized into a
/// container image.
/// <p>
/// Customers who build their own images are not required to implement this
/// method exactly, but might find the source to be a useful starting point.
///
ClassMethod QuiesceForBundling() As %Status
{
}

/// Change the password of all enabled accounts with changeable passwords, and a
/// non-empty role or the special user CSPSystem.  This method takes a cleartext
/// file as input, and IRIS encrypts the contents appropriately.
/// <p>
/// <b>pPasswordFile</b> Absolute path to file whose first line is our new
/// cleartext password.
ClassMethod ChangePassword(pPasswordFile As %String) As %Status
{
}

/// Reads the first line of text of a file into pPassword.  Intended for reading
/// password files, but could be used for other purposes.
/// Fails if the file does not exist or the first line is empty.
/// <p>
/// <b>pPasswordFile</b> Absolute path to file whose first line is our new cleartext password.
/// <p>
/// <b>pPassword</b> Passed by reference, set to be the first line of pPasswordFile, minus newline.
ClassMethod ReadPasswordFile(pPasswordFile As %String, ByRef pPassword As %String) As %Status [ Private ]
{
}

/// Changes the Gateway Manager password in CSP.ini.
/// <p>
/// <b>pPasswordFile</b> Absolute path to file whose first line is our new cleartext password.
/// <p>
/// <b>pCSPIniFile</b> Override for path to CSP.ini file.  It is usually correct to leave this blank and use the default.
///
ClassMethod ChangeGatewayMgrPassword(pPasswordFile As %String, pCSPIniFile As %String = "") As %Status
{
}

/// This method forces all IRIS users for this instance to change their password
/// as part of their next login.  The special user CSPSystem is excluded.
ClassMethod ForcePasswordChange() As %Status
{
}

/// This method prevents messages from journal rollover in freshly-started
/// containers. It is not guaranteed to work if the instance is not started
/// with "nostu", as the normal shutdown process involves recording journaling
/// metadata.
/// <p>
/// For more about "nostu", see <a href="../docbook/DocBook.UI.Page.cls?KEY=GSA_using_instance_control">Controlling an InterSystems IRIS Instance</a>.
ClassMethod PreventJournalRolloverMessage() As %Status
{
}

/// IRIS stores the hostname it is running on in the database.  If IRIS later
/// starts and discovers the hostname has changed, it will emit a warning:
/// "System appears to have failed over from node <var>OLD_HOSTNAME</var>".
/// This method removes the stored hostname, preventing that message.
/// <p>
/// Container healthchecks are based on the System Monitor state.  If this failover
/// message is not suppressed, a new container may spend its first several minutes
/// with the System Monitor in a "warn" state, which will cause container
/// healthchecks to fail.
///
ClassMethod PreventFailoverMessage() As %Status
{
}

/// Enables Operating-System-Based Authentication for this instance.  This
/// streamlines automation tasks common in containers.
/// For more, see <a href="../docbook/DocBook.UI.Page.cls?KEY=GCAS_intro#GCAS_intro_authe_os">OS Authentication</a>.
///
ClassMethod EnableOSAuthentication() As %Status
{
}

/// Takes a %Status object as input.  Returns that value or "fails loudly"
/// by printing the error text and terminating the process, exit status 1.
/// <p>
/// These behaviors can be suppressed by setting either <var>SYS_CONTAINER_QUIET</var>
/// or <var>SYS_CONTAINER_CONTINUE_ON_ERROR</var> to 1 in the OS environment.
/// <p>
/// Setting both makes this function a no-op.
/// <p><b>pSC</b> The %Status object to be interpreted.
///
ClassMethod ErrorHandler(pSC As %Status) As %Status
{
}

/// Sets the AccountNeverExpires bit for a username.  Without this, user
/// accounts will expire in images that are more than 90 days old.
/// For more, see <a href="../docbook/DocBook.UI.Page.cls?KEY=GCAS_secmgmt#GCAS_secmgmt_syssttngs">Security Management</a>.
/// <p><b>pUsername</b> The IRIS username to be operated on.
///
ClassMethod SetNeverExpires(pUsername As %String) As %Status
{
}

/// Removes the IRIS password for a user.  This destroys the ability to login via
/// any authentication which requires a password.  Non-password forms, such as
/// OS-based authentication, will continue to work.
/// <p><b>pUsername</b> The IRIS username to be operated on.
///
ClassMethod KillPassword(pUsername As %String) As %Status
{
}

/// Clears severity 1 and severity 2 alerts from the System Monitor.  These
/// messages are usually transient and inappropriate to have in an instance
/// which is being quiesced into an image.
/// <p>
/// If there have been any severity 3 alerts, this method will return an error,
/// as severity 3 messages are fatal and indicate that this instance should not be
/// made into an image at all.
/// <p>
/// For more information on the System Monitor and severity levels, see <a href="../docbook/DocBook.UI.Page.cls?KEY=GCM_healthmon#GCM_healthmon_sysmon_alerts">System Monitor Status and Resource Metrics</a>.
///
ClassMethod SetMonitorStateOK() As %Status
{
}

/// Performs additional securing of this instance.  The instance must have been
/// installed with GCI_prepare_install#GCI_security_initial"Locked Down"</a> security settings.  Some of these changes may
/// be inconvenient for development or other interactive use cases, but they may
/// be useful for running IRIS containers in production.
///
/// The steps taken by this method are a suggestion.  No one set of security
/// settings will be perfect for all use cases and customers are strongly
/// encouraged to examine their use case and make the best decisions available.
///
ClassMethod LockDownInstance() As %Status
{
}

}
