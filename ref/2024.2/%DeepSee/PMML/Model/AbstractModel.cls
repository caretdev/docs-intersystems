/// This class represents a PMML model as defined in the PMML XData block of a <class>%DeepSee.PMML.Definition</class> class.
Class %DeepSee.PMML.Model.AbstractModel Extends %RegisteredObject [ Abstract, System = 4 ]
{

/// The name of the <class>%DeepSee.PMML.Definition</class> class defining this PMML model.
Parameter DEFINITIONCLASS As CLASSNAME [ Internal ];

/// The name of the root <class>%DeepSee.PMML.Data</class> class for this model's PMML definition
Parameter DATACLASS As CLASSNAME;

/// The name of the <class>%DeepSee.PMML.ModelInput</class> class for this model
Parameter INPUTCLASS As CLASSNAME;

/// The name of the <class>%DeepSee.PMML.ModelOutput</class> class for this model
Parameter OUTPUTCLASS As CLASSNAME;

/// The name of this model as defined in the PMML definition
Parameter MODELNAME As STRING;

/// The field in <parameter>DATACLASS</parameter> predicted by this model.
Parameter PREDICTEDFIELD As STRING;

/// How the weighting info in this models trace output needs to be interpreted.
/// Either of:
/// <ul>
/// 	<li>"none": only rank info available</li>
/// 	<li>"tree": trace info is a sequence of tree nodes leading to the prediction</li>
/// 	<li>"add": additive contributions (total score might be a function of this sum)</li>
/// 	<li>"multiply": multiplicative contributions (total score might be a function of this product)</li>
/// </ul>
Parameter TRACEWEIGHTTYPE As STRING [ Internal ] = "none";

/// This parameter defines whether the model type implementation supports "simple mode",
/// with simple array data structures rather than objects used to pass around observation data.
/// This parameter is for internal use only.
Parameter SUPPORTSSIMPLEMODE As BOOLEAN [ Internal ] = 0;

/// Whether or not to use simple arrays to pass observation data around internally.
/// While faster, data dictionaries with derived fields or requiring specific treatment of
/// certain values, as well as certain model types, cannot use simple mode. In these cases
/// the <parameter>SUPPORTSSIMPLEMODE</parameter> is set to 0.
Property SimpleMode As %Boolean [ InitialExpression = {..#SUPPORTSSIMPLEMODE}, Internal ];

/// Whether or not to generate trace information in the output object.
Property Tracing As %Boolean [ InitialExpression = 0 ];

/// For classification models only.
/// If set to 1, the probabilities of each class will be available from the output object,
/// regardless of the OutputField settings in the definition.
Property KeepAllClassProbabilities As %Boolean [ InitialExpression = 0, Internal ];

/// <p>This method is called as part of compiling a <class>%DeepSee.PMML.Definition</class> Model node and
/// adds the appropriate properties, methods and other constructs to the model class
/// <var>pClass</var>. Subclasses are free to forward (parts of) this activity as they see fit and
/// can even change the superclass of <var>pClass</var>, as long as it remains a subclass of
/// this class.</p>
/// <p>The following class parameters are already defined in <var>pClass</var>:
/// <ul>
///  <li>DATACLASS</li>
///  <li>INPUTCLASS</li>
///  <li>OUTPUTCLASS</li>
///  <li>MODELNAME</li>
/// </ul>
ClassMethod %CreateModelClass(pClass As %Dictionary.ClassDefinition, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Internal ]
{
}

/// Returns the name of this model (similar to <parameter>MODELNAME</parameter>)
ClassMethod %GetName() As %String [ CodeMode = expression, Final, ForceGenerate ]
{
}

ClassMethod %GetDataClassName() As %String [ CodeMode = expression, Final, ForceGenerate ]
{
}

ClassMethod %GetInputClassName() As %String [ CodeMode = expression, Final, ForceGenerate ]
{
}

ClassMethod %GetOutputClassName() As %String [ CodeMode = expression, Final, ForceGenerate ]
{
}

ClassMethod %GetPredictedField() As %String [ CodeMode = expression, Final, ForceGenerate ]
{
}

/// Builds a <class>%DeepSee.PMML.ModelInput</class> object based on the root <class>%DeepSee.PMML.Data</class>
/// for this PMML definition.
ClassMethod %GetInputObject(pData As %DeepSee.PMML.Data) As %DeepSee.PMML.ModelInput [ CodeMode = objectgenerator, Final ]
{
}

/// To be implemented by subclasses
Method %ExecuteModelInternal(ByRef pInput As %DeepSee.PMML.ModelInput, Output pOutput As %DeepSee.PMML.ModelOutput) As %Status [ Abstract, Private ]
{
}

/// This method runs the model against a fact from the DeepSee fact table of a cube for which
/// an &lt;X-DeepSeeDataSource&gt; element defines a mapping from the cube's measures and
/// dimensions to the Data Fields in the PMML definition. If <var>pDataSource</var> is null,
/// the first DataSource of the model definition is expected to contain this DeepSee-to-PMML mapping.</p>
Method %ExecuteModelDeepSee(pFactId As %Integer, Output pOutput As %DeepSee.PMML.ModelOutput, pDataSource As %String = "") As %Status [ Final ]
{
}

/// <p>Executes this model for a given <class>%DeepSee.PMML.Data</class> data object.
/// As an alternative to providing the actual Data Class (or model input class) for this model, it
/// is also possible to supply a simple array containing the data field values indexed by field name.</p>
/// <p>See also <class>%DeepSee.PMML.Utils</class> for details about running a model against a
/// whole set of records at once, writing the corresponding results to a table.</p>
Method %ExecuteModel(ByRef pData As %DeepSee.PMML.Data, Output pOutput As %DeepSee.PMML.ModelOutput) As %Status [ Final ]
{
}

/// Returns the name of the field whose value is predicted by this model. To be overridden/refined
/// by subclasses
ClassMethod %GetPredictedFieldFromDef(pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel) As %String [ Internal ]
{
}

ClassMethod %GetPredictedFieldsFromDef(pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, Output pAllFields) As %Status [ Internal ]
{
}

ClassMethod %AppendImplicitOutputFields(ByRef pPredictedFields) As %Status [ Internal ]
{
}

/// Returns basic info about the data field predicted by this model.
ClassMethod %GetPredictedFieldInfo(Output pFieldName As %String, Output pDataType As %String, Output pOpType As %String) As %Status
{
}

ClassMethod %PopulateOutputObject(pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, pMethod As %Stream.Object, pPredictedValueVar As %String = "tPredictedValue") As %Status [ Internal, Private ]
{
}

/// Write code to compute a nontrivial feature for <var>pOutputField</var> to <var>pMethod</var>,
/// setting the value to a variable named <var>pFeatureValue</var> (can be updated). The features
/// "predictedValue" and x are already taken care of.
ClassMethod %OnGetOutputFeature(pMethod As %Stream.Object, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, pOutputField As %DeepSee.PMML.Definition.OutputField, ByRef pFeatureValueVar As %String, Output pSupported As %Boolean) As %Status [ Internal, Private ]
{
}

ClassMethod %IsOutputFieldSupported(pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, pOutputField As %DeepSee.PMML.Definition.OutputField, Output pSC As %Status) As %Boolean [ Internal ]
{
}

ClassMethod %GetDefinition(Output pModel As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Internal ]
{
}

Method %PopulateTrace(ByRef pOutput As %DeepSee.PMML.ModelOutput, ByRef pWeights) As %Status [ Internal, Private ]
{
}

/// Prints the trace information for this model type in user-friendly HTML.
/// To be refined by subclasses based on the information available for that model type.
Method %DrawTraceInfo(pOutput As %DeepSee.PMML.ModelOutput) As %Status [ Internal ]
{
}

Method SimpleModeSet(pValue As %Boolean) As %Status [ Internal, ServerOnly = 1 ]
{
}

}
