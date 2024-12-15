/// This class defines some common statistical functions to use in DeepSee
/// <p>
/// The Following tags are defined here:
/// <ul>
/// <li>&lt;dsstat:variance&gt; Takes two attributes:
/// <ul>
/// <li><b>sourceProperty</b>. Defines a measure that represents variance for the source property defined.
/// <li><b>stderr</b> possible values <code>true/false</code>. If true then another measure representing
/// standard error of the mean is added.
/// </ul>
/// Example: &lt;dsstat:variance sourceProperty = "Value" stderr="true"/&gt;
/// <li> &lt;dsstat:regression&gt; Creates 3 measures for simple linear regression between two properties.
/// Takes two attributes:
/// <ul>
/// <li> <b>sourceProperty1</b>
/// <li> <b>sourceProperty2</b>
/// </ul>
/// For example the following tag: &lt;dsstat:regression  sourceProperty1 = "LandArea" sourceProperty2 = "Value"/&gt;
/// creates 3 measures:
/// <ul>
/// <li> LivingAreaValue Correlation
/// <li> LivingAreaValue Slope
/// <li> LivingAreaValue Intercept
/// </ul>
/// </ul>
/// Note:  &lt;dsstat:regression&gt; tag requires variance to be defined for both properties.
Class %DeepSee.extensions.Statistics [ System = 4 ]
{

/// This paramter is used to transform original cube definition.
/// If it is defined in subcalss then the cube definition is piped
/// through XSLT transformation. XSL is taken from XData block named
/// in this paramter.
Parameter TRANSFORMXSL = "Statistics";

XData Statistics
{
}

}
