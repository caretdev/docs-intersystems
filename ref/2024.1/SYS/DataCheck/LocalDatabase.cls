/// A local database specification.  It takes one of the following forms
///
/// <li>A physical path local to this system</li>
/// <li>Mirror Database Name of the form :mirror:<i>mirrorname</i>:<i>mirrorDBname</i>
///         for mirror-based DataCheck.</li>
Class SYS.DataCheck.LocalDatabase Extends %String [ OdbcType = VARCHAR, SqlCategory = STRING ]
{

Parameter COLLATION = "EXACT";

ClassMethod Normalize(%val As %String) As %String [ CodeMode = expression, Internal ]
{
}

ClassMethod IsValid(%val As %RawString) As %Status
{
}

ClassMethod IsPath(%val) [ CodeMode = expression, Internal ]
{
}

ClassMethod IsMirrorDBName(%val) [ CodeMode = expression, Internal ]
{
}

ClassMethod GetPath(%val) As %String [ Internal ]
{
}

}
