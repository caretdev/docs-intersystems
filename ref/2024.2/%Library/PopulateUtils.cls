/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.Populate">Using the Populate Utility</a>.</p>
/// The <CLASS>%PopulateUtils</CLASS> class contains a number of utility methods used by the
/// <CLASS>%Populate</CLASS> class.
Class %Library.PopulateUtils [ Not ProcedureBlock, System = 2 ]
{

/// Return a random array element.
ClassMethod ArrayElement(ByRef array) As %String
{
}

/// Return a random value from a concrete value extent.
ClassMethod ExtentValue(cptr As %Integer, cext As %Integer) As %String
{
}

/// 	Return an array of ids selected randomly from the
/// 	Extent query of the class in the <var>sample</var> parameter. The array is of the form:
/// 	sample=n
/// 	sample(1)=id1,sample(2)=id2,...,sample(n)=idn
/// 	Parameters:
/// 	class   - the class to retrieve samples from
/// 	sample  - the array of samples (returned)
/// 	size    - the maximum number of samples to retrieve
/// 	selpct  - the percentage of instances to be randomly selected.
/// 	for example, 25 means approximately 25% of the instances
/// 	will be selected (1 in 4).
ClassMethod BuildReferenceSample(class, sample, size = 500, selpct = 25)
{
}

/// Populate a value set from a query
ClassMethod BuildValueSetSQL(cptr, cext, table, column, size = 500, verbose As %Integer = 0) As %Status [ ProcedureBlock = 1 ]
{
}

/// Return a random city name.
ClassMethod City() As %String
{
}

/// Return a random company name.
ClassMethod Company() As %String
{
}

/// Return a random currency value between <var>min</var> and <var>max</var> (if present).
ClassMethod Currency(min As %Integer = 0, max As %Integer = 10000) As %Integer
{
}

/// Return a random date value in InterSystems IRIS <code>$H</code> format.
ClassMethod Date(min As %Date, max As %Integer) As %Date
{
}

ClassMethod CDate(format As %Integer = 1, min As %Date = 30000, max As %Date = 55000) As %String
{
}

ClassMethod Counter(counter As %String = "c", initial As %Integer = 1) As %String
{
}

/// Return a string containing a random first name.
/// <p><var>gender</var> is a optional string used to control the
/// gender of the generated name: 1 is Male, 2 = Female, "" is either.
ClassMethod FirstName(gender As %String = "") As %String
{
}

/// Return a random floating point value between <var>min</var>
/// and <var>max</var> (if present).
ClassMethod Float(min As %Float = 0, max As %Float = 10000, scale As %Integer = 0) As %Integer [ ProcedureBlock = 1 ]
{
}

/// Return a random integer value between <var>min</var>
/// and <var>max</var> (if present).
ClassMethod Integer(min As %Integer = 0, max As %Integer = 1000000000) As %Integer [ ProcedureBlock = 1 ]
{
}

/// Return a string containing a random last name.
ClassMethod LastName() As %String
{
}

/// Returns a string containing a randomly generated corporate mission statement.
ClassMethod Mission() As %String
{
}

/// Return a string containing a random name as <i>lastname,firstname</i>.
/// <p><var>gender</var> is a optional string used to control the
/// gender of the generated name: 1 is Male, 2 = Female, "" is either.
ClassMethod Name(gender As %String = "") As %String
{
}

/// Return a random U.S. Social Security Number.
ClassMethod SSN() As %String [ CodeMode = expression ]
{
}

/// Return a string value of the form <random character>_<random number less than 9999> and whose length
/// does not exceed <var>len</var>.
ClassMethod String(len As %Integer = 1) As %String
{
}

/// Return a random string value whose length is at least <var>minlen</var> and not greater than <var>maxlen</var>.
ClassMethod StringMin(minlen As %Integer = 1, maxlen As %Integer = 1) As %String [ ProcedureBlock = 1 ]
{
}

/// Return a random street address.
ClassMethod Street() As %String
{
}

/// 	Return a string of random syllables and spaces.
/// 	The algorithm uses several syllable 'lists'. First, a list is randomly
/// 	chosen. Then a syllable from that list is chosen and added to the string.
/// 	Then, if a random boolean is TRUE, a space is appended. Syllables are added to the
/// 	string until the string length exceeds a random length less than or equal
/// 	to the parameter maxlen.
ClassMethod Syllable(maxlen As %Integer = 30) As %String
{
}

/// 	Return a random %PosixTime value that is between the specified <var>min</var> and <var>max</var> %PosixTime values.
/// 	If either <var>min</var> or <var>max</var> is not a valid %PosixTime value, then the default value is used instead.
///     The default <var>min</var> value is -6919738016441081856 (1900-01-01 00:00:00)
///     The default <var>max</var> value is the current timestamp value
ClassMethod PosixTime(min As %PosixTime = "", max As %PosixTime = "") As %PosixTime [ ProcedureBlock = 1 ]
{
}

/// 	Return a random TimeStamp value that is between the specified <var>min</var> and <var>max</var> timestamp values.
/// 	The default <var>min</var> value is the default <method>Date</method> min date value with time = 0.
/// The default <var>max</var> value is the default <method>Date</method> max date value with time = 86399 (23:59:59).
/// 	If either <var>min</var> or <var>max</var> is not a valid %TimeStamp value, then the default value is used instead.
ClassMethod TimeStamp(min As %TimeStamp, max As %TimeStamp) As %String [ ProcedureBlock = 1 ]
{
}

/// Return a random job title.
ClassMethod Title() As %String
{
}

/// Return a random U.S. phone number.
ClassMethod USPhone() As %String [ CodeMode = expression ]
{
}

/// Return a random U.S. state abbreviation.
ClassMethod USState() As %String
{
}

/// Return a random U.S. Zone Improvement Plan (ZIP) code.
ClassMethod USZip() As %String [ CodeMode = expression ]
{
}

/// Return a random piece from a delimited list. The first character in the list is the delimiter.
ClassMethod ValueList(vallist) As %String
{
}

/// Return a random string value of random length
/// up to <var>maxlen</var> characters.
ClassMethod VarString(maxlen As %Integer = 1) As %String
{
}

/// Return a random color name (one of 5 possible values).
ClassMethod Color() As %String
{
}

/// Return a random product name (one of 4 possible values).
ClassMethod Product() As %String
{
}

/// Return a random number from 0-<var>n</var> using a random number generator that is
/// seeded by <class>%Library.Populate</class>.
ClassMethod Random(n As %Integer) As %Integer
{
}

}
