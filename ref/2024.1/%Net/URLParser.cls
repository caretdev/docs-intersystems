/// Parses a url into component parts
Class %Net.URLParser Extends %Library.RegisteredObject [ Not ProcedureBlock, System = 3 ]
{

/// WARNING: This method has been deprecated in favor of <METHOD>Decompose</METHOD>.
/// <P>
/// Parses an url into its constituent components.
/// <P>
/// The output parameter 'Components' will contain an array subscripted by the name of the component
/// part with the parsed value as the data. E.G. for a URL such as
/// <P>
/// http://www.intersystems.com
/// <P>
/// the
/// Components array will contain the scheme in this form:- Components("scheme")="http"
/// <BR>
/// URLs are described briefly below, please see RFC1738 for a full description
/// <P>
/// A URL contains the name of the scheme being used (&lt;scheme&gt;) followed by a colon and then a string
/// (the &lt;scheme-specific-part&gt;) whose interpretation depends on the scheme.
/// <P>
/// Scheme names consist of a sequence of characters. The lower case letters "a"--"z", digits, and the
/// characters plus ("+"), period ("."), and hyphen ("-") are allowed. For resiliency, programs interpreting
/// URLs should treat upper case letters as equivalent to lower case in scheme names
/// (e.g., allow "HTTP" as well as "http").
/// <P>
/// While the syntax for the rest of the URL may vary depending on the particular scheme selected, URL schemes
/// that involve the direct use of an IP-based protocol to a specified host on the Internet use a common syntax
/// for the scheme-specific data:
/// <BR>
/// //&lt;user&gt;:&lt;password&gt;@&lt;host&gt;:&lt;port&gt;/&lt;url-path&gt;
/// <P>
/// Some or all of the parts "&lt;user&gt;:&lt;password&gt;@",
/// ":&lt;password&gt;",
/// ":&lt;port&gt;", and "/&lt;url-path&gt;" may be excluded.
/// <P>
/// The scheme specific data start with a double slash "//" to indicate that it complies with the common Internet
/// scheme syntax. The different components obey the following rules:
/// <UL>
/// <LI>user
/// <BR>
/// An optional user name. Some schemes (e.g., ftp) allow the specification of a user name.</LI>
/// <P>
/// <LI>password
/// <BR>
/// An optional password. If present, it follows the user name separated from it by a colon.
/// The user name (and password), if present, are followed by a commercial at-sign "@". Within the user and password
/// field, any ":", "@", or "/" must be encoded.
/// <P>
/// Note that an empty user name or password is different than no user name or password; there is no way to specify
/// a password without specifying a user name. E.g., &lt;URL:ftp://@host.com/&gt; has an empty user name and no password,
/// &lt;URL:ftp://host.com/&gt; has no user name, while &lt;URL:ftp://foo:@host.com/&gt; has a user name of "foo" and an empty
/// password.</LI>
/// <P>
/// <LI>host
/// <BR>
/// The fully qualified domain name of a network host, or its IP address as a set of four decimal digit groups
/// separated by ".". Fully qualified domain names take the form as described in Section 3.5 of RFC 1034 [13] and
/// Section 2.1 of RFC 1123 [5]: a sequence of domain labels separated by ".", each domain label starting and ending with an alphanumerical character and possibly also containing "-" characters. The rightmost domain label will never start with a digit, though, which
/// syntactically distinguishes all domain names from the IP addresses.</LI>
/// <P>
/// <LI>port
/// <BR>
/// The port number to connect to. Most schemes designate protocols that have a default port number. Another port number
/// may optionally be supplied, in decimal, separated from the host by a colon. If the port is omitted, the colon is as
/// well.</LI>
/// <P>
/// <LI>path<BR>
/// The rest of the locator consists of data specific to the scheme, and is known as the "path". It supplies the
/// details of how the specified resource can be accessed. Note that the "/" between the host (or port) and the path
/// is NOT part of the path.
/// The path syntax depends on the scheme being used, as does the manner in which it is interpreted.</LI>
/// </UL>
ClassMethod Parse(Url As %Library.String, ByRef Components As %Library.String) [ Deprecated, Final ]
{
}

/// Parses an URL into its constituent components. <P>
/// The input parameters 'Url' is the string to parse. Some or all of the parts "&lt;user&gt;:&lt;password&gt;@", ":&lt;password&gt;", ":&lt;port&gt;", and "/&lt;path&gt;" may be excluded. <P>
/// The output parameter 'Components' will contain an array subscripted by the name of the component part with the parsed value as the data. <BR>
/// <Example>do ##class(%Net.URLParser).Decompose("http://user:pass@www.intersystems.com:80/path/",.Components)</example>
/// Components("host")="www.intersystems.com"<br>
/// Components("netloc")="user:pass@www.intersystems.com:80"<br>
/// Components("password")="pass"<br>
/// Components("path")="/path/"<br>
/// Components("port")=80<br>
/// Components("scheme")="http"<br>
/// Components("username")="user"
/// <P>
/// URLs are described briefly below, please see RFC1738 for a full description
/// <UL><LI>A URL contains the name of the scheme being used (&lt;scheme&gt;) followed by a colon and then a string
/// (the &lt;scheme-specific-part&gt;) whose interpretation depends on the scheme.</LI>
/// <LI>Scheme names consist of a sequence of characters. The lower case letters "a"--"z", digits, and the
/// characters plus ("+"), period ("."), and hyphen ("-") are allowed. For resiliency, programs interpreting
/// URLs should treat upper case letters as equivalent to lower case in scheme names
/// (e.g., allow "HTTP" as well as "http").</LI>
/// <LI>While the syntax for the rest of the URL may vary depending on the particular scheme selected, URL schemes
/// that involve the direct use of an IP-based protocol to a specified host on the Internet use a common syntax
/// for the scheme-specific data:
/// <BR>
/// //&lt;user&gt;:&lt;password&gt;@&lt;host&gt;:&lt;port&gt;/&lt;path&gt;</LI></UL>
/// <P>
/// The scheme specific data start with a double slash "//" to indicate that it complies with the common Internet
/// scheme syntax. The different components obey the following rules:
/// <UL>
/// <LI><b>user</b> - An optional user name. Some schemes (e.g., ftp) allow the specification of a user name.</LI>
/// <LI><b>password</b> - An optional password. If present, it follows the user name separated from it by a colon.
/// The user name (and password), if present, are followed by a commercial at-sign "@". Within the user and password
/// field, any ":", "@", or "/" must be encoded.<BR>
/// Note that an empty user name or password is different than no user name or password; there is no way to specify
/// a password without specifying a user name. E.g., &lt;URL:ftp://@host.com/&gt; has an empty user name and no password,
/// &lt;URL:ftp://host.com/&gt; has no user name, while &lt;URL:ftp://foo:@host.com/&gt; has a user name of "foo" and an empty
/// password.</LI>
/// <LI><b>host</b> - The fully qualified domain name of a network host, or its IP address as a set of four decimal digit groups
/// separated by ".". Fully qualified domain names take the form as described in Section 3.5 of RFC 1034 [13] and
/// Section 2.1 of RFC 1123 [5]: a sequence of domain labels separated by ".", each domain label starting and ending with an alphanumerical character and possibly also containing "-" characters. The rightmost domain label will never start with a digit, though, which syntactically distinguishes all domain names from the IP addresses.</LI>
/// <LI><b>port</b> - The port number to connect to. Most schemes designate protocols that have a default port number. Another port number
/// may optionally be supplied, in decimal, separated from the host by a colon. If the port is omitted, the colon is as
/// well.</LI>
/// <LI><b>path</b> - The rest of the locator consists of data specific to the scheme, and is known as the "path". It supplies the
/// details of how the specified resource can be accessed. <BR>
/// The path syntax depends on the scheme being used, as does the manner in which it is interpreted.</LI>
/// <LI><b>netloc</b> - The portion of the URL containing the username, password, host, and port. This is provided for when user needs the URL without any parsing. This is normally the same as &lt;user&gt;:&lt;password&gt;@&lt;host&gt;:&lt;port&gt;, but not always.</LI>
/// </UL>
ClassMethod Decompose(Url As %Library.String, ByRef Components As %Library.String) [ Final, ProcedureBlock = 1 ]
{
}

/// Composes a URL from its Components array as defined by the <METHOD>Decompose</METHOD> method.<br>
/// This method will use Components("netloc"), if defined. To compose a URL with Components("username"), Components("password"), Components("host"), or Components("port"), <br>
/// set Components("netloc") to ""
ClassMethod Compose(ByRef Components As %Library.String) As %Library.String [ Final, ProcedureBlock = 1 ]
{
}

ClassMethod ParseHost(pHost As %String, ByRef Components As %Library.String) [ Private ]
{
}

}
