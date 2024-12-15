Class %DeepSee.PMML.ModelInput Extends %DeepSee.PMML.Data [ Abstract, System = 4 ]
{

/// The name of the root <class>%DeepSee.PMML.Data</class> class for this PMML definition
Parameter DATACLASS As CLASSNAME;

/// The name of the <class>%DeepSee.PMML.Model.AbstractModel</class> for this PMML model
Parameter MODELCLASS As CLASSNAME;

/// The name of this model as defined in the PMML definition
Parameter MODELNAME As STRING;

/// Returns the usage types for all fields in this Mining Model
/// 		pArray(fieldName) = $lb(usageType, displayName)
ClassMethod %GetFields(Output pArray) As %Status [ Abstract ]
{
}

Method %OnNew(ByRef pData) As %Status [ Private, ServerOnly = 1 ]
{
}

}
