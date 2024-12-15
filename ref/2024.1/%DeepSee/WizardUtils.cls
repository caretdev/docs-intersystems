/// %DeepSee.WizardUtils implements utility methods used by various DeepSee Wizards.
Class %DeepSee.WizardUtils [ Abstract, System = 4 ]
{

/// Generate a DeepSee Cube definition class from a compiled persistent class.
/// <br>
/// <table border=1>
/// <tr><td>pSourceClass</td><td>The name of the class from which a cube definition is to be generated.</td></tr>
/// <tr><td>pCubeName</td><td>The name of the cube to be generated.</td></tr>
/// <tr><td>pCubeClass</td><td>The name of the cube definition class to be generated.</td></tr>
/// <tr><td>pAutoDelete</td><td>If passed as a non-zero value then the generator will automatically delete the cube definition class if it already exists.</td></tr>
/// </table>
/// </p>
/// <p>
/// This method returns a status value indicating success or failure. If this method fails then the cube class definition is not created.
/// </p>
ClassMethod %GenerateCubeDefinition(pSourceClass As %Library.String(MAXLEN="") = "", pCubeName As %Library.String(MAXLEN=""), pCubeClass As %Library.String(MAXLEN="") = "", pAutoDelete As %Library.Integer = 0)
{
}

}
