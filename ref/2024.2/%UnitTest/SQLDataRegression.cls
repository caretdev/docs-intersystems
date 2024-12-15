/// Extend this class to create a regression test when .data files are used to load data into tables.
Class %UnitTest.SQLDataRegression Extends %UnitTest.SQLRegression [ System = 4 ]
{

/// List that correlates XML tags in a data file with classes.
/// Tag/class entries are in the form <i>tag:class, tag1:class1, tag2:class2</i>.
/// Each entry is like setting the <parameter>DATATAG</parameter> and <parameter>DATACLASS</parameter> parameters, but the <parameter>CORRELATIONLIST</parameter> sets several tag/class pairs in one parameter.
/// If <parameter>CORRELATIONLIST</parameter>, <parameter>DATACLASS</parameter>, and <parameter>DATATAG</parameter> are all specified, the <parameter>DATATAG</parameter> and <parameter>DATACLASS</parameter> pair are added to the end of the <parameter>CORRELATIONLIST</parameter>.
Parameter CORRELATIONLIST As STRING;

/// Specifies a class, such as <b>Sample.Person</b>, which should be correlated with the XML tag specified by <parameter>DATATAG</parameter>, such as <b>&lt;person&gt;</b>, in the <parameter>DATAFILE</parameter>.
/// <p>Sample.Person is part of <a target="_top" href="https://github.com/intersystems/Samples-Data">https://github.com/intersystems/Samples-Data.</a>
/// See <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=landing+githubsamples">Downloading Samples</a>.</p>
Parameter DATACLASS As STRING;

/// File that contains data in XML format, such as <b>Person.data</b>.
/// If no directory name is specified by <b>RunTest</b>, then the current <b>UnitTest</b> directory is used.
Parameter DATAFILE As STRING;

/// Specifies an XML tag in <parameter>DATAFILE</parameter>, such as <b>&lt;person&gt;</b>, which should be correlated to the class specified by <parameter>DATACLASS</parameter>, such as <b>Sample.Person</b>.
Parameter DATATAG As STRING;

/// Method that handles the reloading of data from the <parameter>DATAFILE</parameter> for each Test method in <class>SQLRegression</class>
Method reloadDATA() As %Status [ CodeMode = generator ]
{
}

Method OnBeforeEachTest() As %Status
{
}

}
