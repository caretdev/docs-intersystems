/// <p>This class represents a predictive model described in PMML (Predictive Modelling Markup Language),
/// an XML standard managed by the Data Mining Group (<a href="http://www.dmg.org/" target="_new">www.dmg.org</a>)
/// for describing Predictive Analytics models.</p>
/// <p>Subclasses of this class should provide this XML in an XData block named <XData>PMML</XData>,
/// so it will be validated and interpreted upon compiling the class. Upon compilation, additional
/// helper classes will be automatically generated:
/// <ul>
/// <li>A single <class>%DeepSee.PMML.Data</class> class representing the data fields required by this model.</li>
/// <li>A class for each model described in this PMML fragment (can be more than one), with dedicated
/// code to execute this model.</li>
/// <li><class>%DeepSee.PMML.ModelInput</class> and <class>%DeepSee.PMML.ModelOutput</class> classes
/// for each model, which are instantiated and managed automatically by the model class.</li>
/// </ul>
/// <p>In addition to the generated classes, subclasses of this class are also available
/// as Zen pages so the models they define can be run from a User Interface.</p>
/// <p>Use this class' <method>%GetModelClassName</method> to retrieve the model class for a named
/// model in the PMML definition and then invoke its %Execute* methods as desired. See also the
/// <class>%DeepSee.PMML.Model.AbstractModel</class> class reference for more information about
/// these execution options, or <class>%DeepSee.PMML.Utils</class> for executing the model against
/// a batch of records at once.</p>
Class %DeepSee.PMML.Definition Extends %ZEN.Component.page [ Abstract, CompileAfter = %DeepSee.PMML.Definition.PMML, System = 4 ]
{

Parameter DOMAIN = "PMML";

/// Set to 1 to disable the use of tracing model output altogether
Parameter DISABLETRACING [ Internal ] = 0;

/// The XData block containing the actual PMML specification.
XData PMML [ XMLNamespace = "http://www.intersystems.com/deepsee/pmml" ]
{
}

ClassMethod %GetDefinition(Output pPMML As %DeepSee.PMML.Definition.PMML) As %Status [ CodeMode = objectgenerator, Internal ]
{
}

/// This method returns a <class>%DeepSee.PMML.Model.AbstractModel</class> instance for the model in
/// this definition corresponding to <var>pModelName</var>.
ClassMethod %GetModelInstance(ByRef pModelName As %String = "", ByRef pModel As %DeepSee.PMML.Model.AbstractModel) As %Status
{
}

/// Returns the class name of the model identified by <var>pModelName</var> in <xdata>PMML</xdata>.
/// If left blank, returns the class name of the first model in the model definition, setting
/// <var>pModelName</var> to its logical name at the same time.
ClassMethod %GetModelClassName(ByRef pModelName As %String = "") As %String [ CodeMode = objectgenerator, GenerateAfter = %GetDefinition ]
{
}

/// Returns the name of the <class>%DeepSee.PMML.Data</class> class generated upon compiling
/// this PMML definiton.
ClassMethod %GetDataClassName() As %String
{
}

ClassMethod %CreateDataset(pDataSource As %String = "", Output pDataset As %DeepSee.PMML.Dataset) As %Status [ Internal ]
{
}

/// <p>Returns pModels(n) = $lb(modelName, class, type)</p>
/// <p>If <var>pIncludeSecondary</var>=1, models nested within composite models will also be returned.
/// Note that these cannot necessarily be invoked separately.</p>
ClassMethod %GetModels(Output pModels, pIncludeSecondary As %Boolean = 0) As %Status [ CodeMode = objectgenerator, GenerateAfter = %GetModelClassName, Internal ]
{
}

/// XData block defining the contents of the GUI presenting a manual interfacte for running the
/// models described in <xdata>PMML</xdata>
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method OnGetData(ByRef pParameters, Output pObject As %RegisteredObject) As %Status [ Internal ]
{
}

Method OnSubmitData(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pObject As %RegisteredObject, Output pResponse As %RegisteredObject) As %Status [ Internal ]
{
}

/// Populates the properties and models on this Zen page according to the contents of <xdata>PMML</xdata>
Method %OnAfterCreatePage() As %Status
{
}

Method %AddProperties() As %Status [ Internal, Private ]
{
}

Method GetInputFieldsForModel(pModel As %String, pSeparator As %String) As %String [ Internal, ZenMethod ]
{
}

/// Update test page contents based on user input
ClientMethod update(id, value) [ Language = javascript ]
{
}

ClientMethod reset() [ Language = javascript ]
{
}

ClientMethod disableUnusedFields() [ Language = javascript ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Invoked when selecting a model in the GUI
ClientMethod onChangeModel(model) [ Language = javascript ]
{
}

Method GetTestOutput(pModelName As %String, Output pModel As %DeepSee.PMML.Model.AbstractModel, Output pOutput As %DeepSee.PMML.ModelOutput, pTrace As %Boolean = 0) As %Status [ Internal, Private ]
{
}

Method DrawTrace(pSeed As %String) As %Status [ Internal ]
{
}

Method DrawOutput(pSeed As %String) As %Status [ Internal ]
{
}

}
