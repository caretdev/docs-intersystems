"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[18238],{69396:(e,s,i)=>{i.r(s),i.d(s,{contentTitle:()=>r,default:()=>c,frontMatter:()=>a,toc:()=>l});var n=i(74848),t=i(28453);const a={pagination_prev:null,pagination_next:null},r="%DeepSee.Model.dimension",l=[{value:"Properties",id:"properties",level:2},{value:"cube",id:"cube",level:3},{value:"sharesFrom",id:"sharesfrom",level:3},{value:"hasAll",id:"hasall",level:3},{value:"allCaption",id:"allcaption",level:3},{value:"allDisplayName",id:"alldisplayname",level:3},{value:"sourceProperty",id:"sourceproperty",level:3},{value:"sourceExpression",id:"sourceexpression",level:3},{value:"localSourceProperty",id:"localsourceproperty",level:3},{value:"localSourceExpression",id:"localsourceexpression",level:3},{value:"type",id:"type",level:3},{value:"calendar",id:"calendar",level:3},{value:"dimensionClass",id:"dimensionclass",level:3},{value:"iKnowMeasure",id:"iknowmeasure",level:3},{value:"iKnowType",id:"iknowtype",level:3},{value:"hierarchies",id:"hierarchies",level:3},{value:"hidden",id:"hidden",level:3},{value:"showHierarchies",id:"showhierarchies",level:3},{value:"Methods",id:"methods",level:2},{value:"%Validate",id:"validate",level:3},{value:"%GetSQLTableName",id:"getsqltablename",level:3},{value:"%GetSQLColumnName",id:"getsqlcolumnname",level:3},{value:"%AtScaleExport",id:"atscaleexport",level:3}];function o(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,t.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"deepseemodeldimension",children:"%DeepSee.Model.dimension"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.Model.dimension Extends node [ System = 3 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Meta-data for a dimension within a DeepSee cube. Subclasses of this class are used to implement specific types of dimension."}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"cube",children:"cube"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Relationship cube As %DeepSee.Model.cube(XMLPROJECTION = "none") [ Cardinality = one, Inverse = dimensions ];\n'})}),"\n",(0,n.jsx)(s.p,{children:"Cube that this dimension belongs to."}),"\n",(0,n.jsx)(s.h3,{id:"sharesfrom",children:"sharesFrom"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property sharesFrom As %DeepSee.Datatype.entityName(XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:"Optional. If true, this is the name of another, pre-existing, cube that this dimension shares from. This means that the other cube has a dimension of the same name and that the dimensional tables of the other cube are used to track members of the dimension in *this* cube."}),"\n",(0,n.jsx)(s.h3,{id:"hasall",children:"hasAll"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property hasAll As %Library.Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];\n'})}),"\n",(0,n.jsxs)(s.p,{children:['Indicates whether this dimension has an "All" level.',(0,n.jsx)(s.br,{}),"\nThe default is true."]}),"\n",(0,n.jsx)(s.h3,{id:"allcaption",children:"allCaption"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property allCaption As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:'Optional. Specifies the name used for the All level for this dimension. If not provided, then "All" + dimension name is used.'}),"\n",(0,n.jsx)(s.h3,{id:"alldisplayname",children:"allDisplayName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property allDisplayName As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:"Optional. Specifies the localized name used for the All level for this dimension. If defined, this is the text displayed by DeepSee applications, otherwise the allCaption is used."}),"\n",(0,n.jsx)(s.h3,{id:"sourceproperty",children:"sourceProperty"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property sourceProperty As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Name of the property in the source data that provides the value for this element.",(0,n.jsx)(s.br,{}),"\nIf specified, this is used as a default value for any level within this dimension that does not explicitly define a sourceProperty.",(0,n.jsx)(s.br,{}),"\nFor time dimensions, this property must be defined.",(0,n.jsx)(s.br,{}),'\nUsing dot syntax, it is possible to refer to a property within a related class, for example "City.Name" or "City.State.Name".']}),"\n",(0,n.jsx)(s.h3,{id:"sourceexpression",children:"sourceExpression"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property sourceExpression As %ZEN.Datatype.expression(LANGUAGE = "OBJECTSCRIPT", XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Optional expression used to get the value of this member.",(0,n.jsx)(s.br,{}),'\nThis can refer to properties of the source table using the syntax: "%source.Property".']}),"\n",(0,n.jsx)(s.h3,{id:"localsourceproperty",children:"localSourceProperty"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property localSourceProperty As %DeepSee.Datatype.string(XMLPROJECTION = "none") [ Internal ];\n'})}),"\n",(0,n.jsx)(s.p,{children:"For shared dimensions, this is used to track a local override of this property on the sharing side."}),"\n",(0,n.jsx)(s.h3,{id:"localsourceexpression",children:"localSourceExpression"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property localSourceExpression As %ZEN.Datatype.expression(LANGUAGE = "OBJECTSCRIPT", XMLPROJECTION = "none") [ Internal ];\n'})}),"\n",(0,n.jsx)(s.p,{children:"For shared dimensions, this is used to track a local override of this property on the sharing side."}),"\n",(0,n.jsx)(s.h3,{id:"type",children:"type"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property type As %DeepSee.Datatype.string(VALUELIST = ",measures,data,time,age,computed,iKnow", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "data" ];\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Specifies what type of dimension this is.",(0,n.jsx)(s.br,{}),"\nThe type can be one of the following:"]}),"\n",(0,n.jsxs)(s.ul,{children:["\n",(0,n.jsx)(s.li,{children:'"measures" - reserved.'}),"\n",(0,n.jsx)(s.li,{children:'"data" - this dimension is based on data values supplied from a source property or expression. One or more dimension tables are generated to hold the set of possible values.'}),"\n",(0,n.jsx)(s.li,{children:'"time" - this dimension is based on time values. No dimension tables are generated, instead the hierarchy of time classes are used to process the values for this dimension.'}),"\n",(0,n.jsx)(s.li,{children:'"age" - similar to "time" except that the hierarchy of age classes are used to process the values for this dimension.'}),"\n",(0,n.jsx)(s.li,{children:'"computed" - a computed dimension that uses a special dimension class (dimensionClass) to process its values.'}),"\n",(0,n.jsx)(s.li,{children:'"iKnow" - a dimension that makes use of text processed by the iKnow Smart Indexing API. This must be linked to an "iKnow" measure (iKnowMeasure) which supplies the values for this dimension.\nIf not specified, then the type will be set to "data".'}),"\n"]}),"\n",(0,n.jsx)(s.h3,{id:"calendar",children:"calendar"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property calendar As %DeepSee.Datatype.string(VALUELIST = ",gregorian,partial,hijriTabular,hijriObserved", XMLPROJECTION = "ATTRIBUTE");\n'})}),"\n",(0,n.jsx)(s.p,{children:"Specifies which calendar is to be used if this is a time dimension"}),"\n",(0,n.jsx)(s.h3,{id:"dimensionclass",children:"dimensionClass"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property dimensionClass As %DeepSee.Datatype.string(XMLPROJECTION = "attribute") [ Internal ];\n'})}),"\n",(0,n.jsxs)(s.p,{children:['Optional. For "computed" dimensions, this is the name of the class that provides the dimension computation logic. This is an advanced feature that requires some expertise.',(0,n.jsx)(s.br,{}),'\nIf the package name is omitted, then the "%DeepSee.ComputedDimension" package is used.']}),"\n",(0,n.jsx)(s.h3,{id:"iknowmeasure",children:"iKnowMeasure"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property iKnowMeasure As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:'Optional. For "iKnow" dimensions, this is the name of the "iKnow" measure that provides the data for this dimension.'}),"\n",(0,n.jsx)(s.h3,{id:"iknowtype",children:"iKnowType"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property iKnowType As %DeepSee.Datatype.string(VALUELIST = ",entity,dictionary", XMLPROJECTION = "attribute");\n'})}),"\n",(0,n.jsx)(s.p,{children:'Optional. For "iKnow" dimensions, this provides a way to define the specific way in which iKnow works with this dimension.'}),"\n",(0,n.jsx)(s.h3,{id:"hierarchies",children:"hierarchies"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Relationship hierarchies As %DeepSee.Model.hierarchy(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = dimension ];\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Set of hierarchies defined for this dimension.",(0,n.jsx)(s.br,{}),"\nVia a set of levels, a hierarchy defines a way in which this dimension can roll up."]}),"\n",(0,n.jsx)(s.h3,{id:"hidden",children:"hidden"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property hidden As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,n.jsxs)(s.p,{children:["If true, this dimension is hidden. That is, it will not be listed among the cube's members within the various DeepSee utilities.",(0,n.jsx)(s.br,{}),"\nIt can still be used within MDX queries and expressions."]}),"\n",(0,n.jsx)(s.h3,{id:"showhierarchies",children:"showHierarchies"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property showHierarchies As %DeepSee.Datatype.string(VALUELIST = ",true,false,default", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "default" ];\n'})}),"\n",(0,n.jsxs)(s.p,{children:['If "true", then always display this dimension\'s hierarchies within the Analyzer. If "false", then never display hierarchies. If "default", then only show hierarchies if there is more than one hierarchy.',(0,n.jsx)(s.br,{}),"\nThis has no effect on the operation of the cube."]}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"validate",children:"%Validate"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %Validate() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Test if this dimension's definition is valid."}),"\n",(0,n.jsx)(s.h3,{id:"getsqltablename",children:"%GetSQLTableName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetSQLTableName(pClass As %String) As %String [ CodeMode = expression ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return the SQL table name for the given class name."}),"\n",(0,n.jsx)(s.h3,{id:"getsqlcolumnname",children:"%GetSQLColumnName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %GetSQLColumnName(pClass As %String, pProp As %String) As %String [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Returns the SQL name of property pProp for class pClass."}),"\n",(0,n.jsx)(s.h3,{id:"atscaleexport",children:"%AtScaleExport"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %AtScaleExport(pStatus As %Status = {$$$OK}, ByRef pAuxiliaryIndex As %DynamicAbstractObject = {$$$NULLOREF}) As %DynamicAbstractObject\n"})}),"\n",(0,n.jsx)(s.p,{children:"Produce the structures needed to emit the appropriate JSON and export this item to AtScale"})]})}function c(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,s,i)=>{i.d(s,{R:()=>r,x:()=>l});var n=i(96540);const t={},a=n.createContext(t);function r(e){const s=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:r(e.components),n.createElement(a.Provider,{value:s},e.children)}}}]);