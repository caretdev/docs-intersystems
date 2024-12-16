"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[59833],{64812:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>a,default:()=>c,frontMatter:()=>n,toc:()=>d});var l=s(74848),i=s(28453);const n={pagination_prev:null,pagination_next:null},a="%DeepSee.PMML.Model.AbstractModel",d=[{value:"Parameters",id:"parameters",level:2},{value:"DEFINITIONCLASS",id:"definitionclass",level:3},{value:"DATACLASS",id:"dataclass",level:3},{value:"INPUTCLASS",id:"inputclass",level:3},{value:"OUTPUTCLASS",id:"outputclass",level:3},{value:"MODELNAME",id:"modelname",level:3},{value:"PREDICTEDFIELD",id:"predictedfield",level:3},{value:"TRACEWEIGHTTYPE",id:"traceweighttype",level:3},{value:"SUPPORTSSIMPLEMODE",id:"supportssimplemode",level:3},{value:"Properties",id:"properties",level:2},{value:"SimpleMode",id:"simplemode",level:3},{value:"Tracing",id:"tracing",level:3},{value:"KeepAllClassProbabilities",id:"keepallclassprobabilities",level:3},{value:"Methods",id:"methods",level:2},{value:"%CreateModelClass",id:"createmodelclass",level:3},{value:"%GetName",id:"getname",level:3},{value:"%GetDataClassName",id:"getdataclassname",level:3},{value:"%GetInputClassName",id:"getinputclassname",level:3},{value:"%GetOutputClassName",id:"getoutputclassname",level:3},{value:"%GetPredictedField",id:"getpredictedfield",level:3},{value:"%GetInputObject",id:"getinputobject",level:3},{value:"%ExecuteModelInternal",id:"executemodelinternal",level:3},{value:"%ExecuteModelDeepSee",id:"executemodeldeepsee",level:3},{value:"%ExecuteModel",id:"executemodel",level:3},{value:"%GetPredictedFieldFromDef",id:"getpredictedfieldfromdef",level:3},{value:"%GetPredictedFieldsFromDef",id:"getpredictedfieldsfromdef",level:3},{value:"%AppendImplicitOutputFields",id:"appendimplicitoutputfields",level:3},{value:"%GetPredictedFieldInfo",id:"getpredictedfieldinfo",level:3},{value:"%PopulateOutputObject",id:"populateoutputobject",level:3},{value:"%OnGetOutputFeature",id:"ongetoutputfeature",level:3},{value:"%IsOutputFieldSupported",id:"isoutputfieldsupported",level:3},{value:"%GetDefinition",id:"getdefinition",level:3},{value:"%PopulateTrace",id:"populatetrace",level:3},{value:"%DrawTraceInfo",id:"drawtraceinfo",level:3},{value:"SimpleModeSet",id:"simplemodeset",level:3}];function r(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul","x-deepseedatasource":"x-deepseedatasource",...(0,i.R)(),...e.components},s=t["x-deepseedatasource"];return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(t.header,{children:(0,l.jsx)(t.h1,{id:"deepseepmmlmodelabstractmodel",children:"%DeepSee.PMML.Model.AbstractModel"})}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DeepSee.PMML.Model.AbstractModel Extends %RegisteredObject [ Abstract, System = 4 ]\n"})}),"\n",(0,l.jsx)(t.p,{children:"This class represents a PMML model as defined in the PMML XData block of a %DeepSee.PMML.Definition class."}),"\n",(0,l.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(t.h3,{id:"definitionclass",children:"DEFINITIONCLASS"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter DEFINITIONCLASS As CLASSNAME [ Internal ];\n"})}),"\n",(0,l.jsx)(t.p,{children:"The name of the %DeepSee.PMML.Definition class defining this PMML model."}),"\n",(0,l.jsx)(t.h3,{id:"dataclass",children:"DATACLASS"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter DATACLASS As CLASSNAME;\n"})}),"\n",(0,l.jsx)(t.p,{children:"The name of the root %DeepSee.PMML.Data class for this model's PMML definition"}),"\n",(0,l.jsx)(t.h3,{id:"inputclass",children:"INPUTCLASS"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter INPUTCLASS As CLASSNAME;\n"})}),"\n",(0,l.jsx)(t.p,{children:"The name of the %DeepSee.PMML.ModelInput class for this model"}),"\n",(0,l.jsx)(t.h3,{id:"outputclass",children:"OUTPUTCLASS"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter OUTPUTCLASS As CLASSNAME;\n"})}),"\n",(0,l.jsx)(t.p,{children:"The name of the %DeepSee.PMML.ModelOutput class for this model"}),"\n",(0,l.jsx)(t.h3,{id:"modelname",children:"MODELNAME"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter MODELNAME As STRING;\n"})}),"\n",(0,l.jsx)(t.p,{children:"The name of this model as defined in the PMML definition"}),"\n",(0,l.jsx)(t.h3,{id:"predictedfield",children:"PREDICTEDFIELD"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter PREDICTEDFIELD As STRING;\n"})}),"\n",(0,l.jsx)(t.p,{children:"The field in DATACLASS predicted by this model."}),"\n",(0,l.jsx)(t.h3,{id:"traceweighttype",children:"TRACEWEIGHTTYPE"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter TRACEWEIGHTTYPE As STRING [ Internal ] = "none";\n'})}),"\n",(0,l.jsx)(t.p,{children:"How the weighting info in this models trace output needs to be interpreted. Either of:"}),"\n",(0,l.jsxs)(t.ul,{children:["\n",(0,l.jsx)(t.li,{children:'"none": only rank info available'}),"\n",(0,l.jsx)(t.li,{children:'"tree": trace info is a sequence of tree nodes leading to the prediction'}),"\n",(0,l.jsx)(t.li,{children:'"add": additive contributions (total score might be a function of this sum)'}),"\n",(0,l.jsx)(t.li,{children:'"multiply": multiplicative contributions (total score might be a function of this product)'}),"\n"]}),"\n",(0,l.jsx)(t.h3,{id:"supportssimplemode",children:"SUPPORTSSIMPLEMODE"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter SUPPORTSSIMPLEMODE As BOOLEAN [ Internal ] = 0;\n"})}),"\n",(0,l.jsx)(t.p,{children:'This parameter defines whether the model type implementation supports "simple mode", with simple array data structures rather than objects used to pass around observation data. This parameter is for internal use only.'}),"\n",(0,l.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(t.h3,{id:"simplemode",children:"SimpleMode"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Property SimpleMode As %Boolean [ InitialExpression = {..#SUPPORTSSIMPLEMODE}, Internal ];\n"})}),"\n",(0,l.jsx)(t.p,{children:"Whether or not to use simple arrays to pass observation data around internally. While faster, data dictionaries with derived fields or requiring specific treatment of certain values, as well as certain model types, cannot use simple mode. In these cases the SUPPORTSSIMPLEMODE is set to 0."}),"\n",(0,l.jsx)(t.h3,{id:"tracing",children:"Tracing"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Property Tracing As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,l.jsx)(t.p,{children:"Whether or not to generate trace information in the output object."}),"\n",(0,l.jsx)(t.h3,{id:"keepallclassprobabilities",children:"KeepAllClassProbabilities"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Property KeepAllClassProbabilities As %Boolean [ InitialExpression = 0, Internal ];\n"})}),"\n",(0,l.jsx)(t.p,{children:"For classification models only. If set to 1, the probabilities of each class will be available from the output object, regardless of the OutputField settings in the definition."}),"\n",(0,l.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(t.h3,{id:"createmodelclass",children:"%CreateModelClass"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %CreateModelClass(pClass As %Dictionary.ClassDefinition, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(t.p,{children:"This method is called as part of compiling a %DeepSee.PMML.Definition Model node and adds the appropriate properties, methods and other constructs to the model class pClass. Subclasses are free to forward (parts of) this activity as they see fit and can even change the superclass of pClass, as long as it remains a subclass of this class."}),"\n",(0,l.jsx)(t.p,{children:"The following class parameters are already defined in pClass:"}),"\n",(0,l.jsxs)(t.ul,{children:["\n",(0,l.jsx)(t.li,{children:"DATACLASS"}),"\n",(0,l.jsx)(t.li,{children:"INPUTCLASS"}),"\n",(0,l.jsx)(t.li,{children:"OUTPUTCLASS"}),"\n",(0,l.jsx)(t.li,{children:"MODELNAME"}),"\n"]}),"\n",(0,l.jsx)(t.h3,{id:"getname",children:"%GetName"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetName() As %String [ CodeMode = expression, Final, ForceGenerate ]\n"})}),"\n",(0,l.jsx)(t.p,{children:"Returns the name of this model (similar to MODELNAME)"}),"\n",(0,l.jsx)(t.h3,{id:"getdataclassname",children:"%GetDataClassName"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetDataClassName() As %String [ CodeMode = expression, Final, ForceGenerate ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"getinputclassname",children:"%GetInputClassName"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetInputClassName() As %String [ CodeMode = expression, Final, ForceGenerate ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"getoutputclassname",children:"%GetOutputClassName"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetOutputClassName() As %String [ CodeMode = expression, Final, ForceGenerate ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"getpredictedfield",children:"%GetPredictedField"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetPredictedField() As %String [ CodeMode = expression, Final, ForceGenerate ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"getinputobject",children:"%GetInputObject"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetInputObject(pData As %DeepSee.PMML.Data) As %DeepSee.PMML.ModelInput [ CodeMode = objectgenerator, Final ]\n"})}),"\n",(0,l.jsx)(t.p,{children:"Builds a %DeepSee.PMML.ModelInput object based on the root %DeepSee.PMML.Data for this PMML definition."}),"\n",(0,l.jsx)(t.h3,{id:"executemodelinternal",children:"%ExecuteModelInternal"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method %ExecuteModelInternal(ByRef pInput As %DeepSee.PMML.ModelInput, Output pOutput As %DeepSee.PMML.ModelOutput) As %Status [ Abstract, Private ]\n"})}),"\n",(0,l.jsx)(t.p,{children:"To be implemented by subclasses"}),"\n",(0,l.jsx)(t.h3,{id:"executemodeldeepsee",children:"%ExecuteModelDeepSee"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:'Method %ExecuteModelDeepSee(pFactId As %Integer, Output pOutput As %DeepSee.PMML.ModelOutput, pDataSource As %String = "") As %Status [ Final ]\n'})}),"\n",(0,l.jsxs)(t.p,{children:["This method runs the model against a fact from the DeepSee fact table of a cube for which an ",(0,l.jsx)(s,{children:" element defines a mapping from the cube's measures and dimensions to the Data Fields in the PMML definition. If pDataSource is null, the first DataSource of the model definition is expected to contain this DeepSee-to-PMML mapping."})]}),"\n",(0,l.jsx)(t.h3,{id:"executemodel",children:"%ExecuteModel"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method %ExecuteModel(ByRef pData As %DeepSee.PMML.Data, Output pOutput As %DeepSee.PMML.ModelOutput) As %Status [ Final ]\n"})}),"\n",(0,l.jsx)(t.p,{children:"Executes this model for a given %DeepSee.PMML.Data data object. As an alternative to providing the actual Data Class (or model input class) for this model, it is also possible to supply a simple array containing the data field values indexed by field name."}),"\n",(0,l.jsx)(t.p,{children:"See also %DeepSee.PMML.Utils for details about running a model against a whole set of records at once, writing the corresponding results to a table."}),"\n",(0,l.jsx)(t.h3,{id:"getpredictedfieldfromdef",children:"%GetPredictedFieldFromDef"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetPredictedFieldFromDef(pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel) As %String [ Internal ]\n"})}),"\n",(0,l.jsx)(t.p,{children:"Returns the name of the field whose value is predicted by this model. To be overridden/refined by subclasses"}),"\n",(0,l.jsx)(t.h3,{id:"getpredictedfieldsfromdef",children:"%GetPredictedFieldsFromDef"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetPredictedFieldsFromDef(pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, Output pAllFields) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"appendimplicitoutputfields",children:"%AppendImplicitOutputFields"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %AppendImplicitOutputFields(ByRef pPredictedFields) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"getpredictedfieldinfo",children:"%GetPredictedFieldInfo"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetPredictedFieldInfo(Output pFieldName As %String, Output pDataType As %String, Output pOpType As %String) As %Status\n"})}),"\n",(0,l.jsx)(t.p,{children:"Returns basic info about the data field predicted by this model."}),"\n",(0,l.jsx)(t.h3,{id:"populateoutputobject",children:"%PopulateOutputObject"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %PopulateOutputObject(pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, pMethod As %Stream.Object, pPredictedValueVar As %String = "tPredictedValue") As %Status [ Internal, Private ]\n'})}),"\n",(0,l.jsx)(t.h3,{id:"ongetoutputfeature",children:"%OnGetOutputFeature"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %OnGetOutputFeature(pMethod As %Stream.Object, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, pOutputField As %DeepSee.PMML.Definition.OutputField, ByRef pFeatureValueVar As %String, Output pSupported As %Boolean) As %Status [ Internal, Private ]\n"})}),"\n",(0,l.jsx)(t.p,{children:'Write code to compute a nontrivial feature for pOutputField to pMethod, setting the value to a variable named pFeatureValue (can be updated). The features "predictedValue" and x are already taken care of.'}),"\n",(0,l.jsx)(t.h3,{id:"isoutputfieldsupported",children:"%IsOutputFieldSupported"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %IsOutputFieldSupported(pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, pOutputField As %DeepSee.PMML.Definition.OutputField, Output pSC As %Status) As %Boolean [ Internal ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"getdefinition",children:"%GetDefinition"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetDefinition(Output pModel As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"populatetrace",children:"%PopulateTrace"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method %PopulateTrace(ByRef pOutput As %DeepSee.PMML.ModelOutput, ByRef pWeights) As %Status [ Internal, Private ]\n"})}),"\n",(0,l.jsx)(t.h3,{id:"drawtraceinfo",children:"%DrawTraceInfo"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DrawTraceInfo(pOutput As %DeepSee.PMML.ModelOutput) As %Status [ Internal ]\n"})}),"\n",(0,l.jsx)(t.p,{children:"Prints the trace information for this model type in user-friendly HTML. To be refined by subclasses based on the information available for that model type."}),"\n",(0,l.jsx)(t.h3,{id:"simplemodeset",children:"SimpleModeSet"}),"\n",(0,l.jsx)(t.pre,{children:(0,l.jsx)(t.code,{className:"language-objectscript-class",children:"Method SimpleModeSet(pValue As %Boolean) As %Status [ Internal, ServerOnly = 1 ]\n"})})]})}function c(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,l.jsx)(t,{...e,children:(0,l.jsx)(r,{...e})}):r(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>a,x:()=>d});var l=s(96540);const i={},n=l.createContext(i);function a(e){const t=l.useContext(n);return l.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function d(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:a(e.components),l.createElement(n.Provider,{value:t},e.children)}}}]);