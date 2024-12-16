"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[7704],{86293:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>n,default:()=>d,frontMatter:()=>l,toc:()=>i});var a=s(74848),r=s(28453);const l={pagination_prev:null,pagination_next:null},n="%DeepSee.QualityMeasure.QualityMeasure",i=[{value:"XDatas",id:"xdatas",level:2},{value:"QualityMeasure",id:"qualitymeasure",level:3},{value:"Methods",id:"methods",level:2},{value:"%GetModel",id:"getmodel",level:3},{value:"%GetQualityMeasureCaption",id:"getqualitymeasurecaption",level:3},{value:"%GetQualityMeasureDescription",id:"getqualitymeasuredescription",level:3},{value:"%GetQualityMeasureLinkedTo",id:"getqualitymeasurelinkedto",level:3},{value:"%GetQualityMeasureName",id:"getqualitymeasurename",level:3},{value:"%GetQualityMeasureCatalog",id:"getqualitymeasurecatalog",level:3},{value:"%GetQualityMeasureSet",id:"getqualitymeasureset",level:3},{value:"%IsPublished",id:"ispublished",level:3},{value:"%GetFormat",id:"getformat",level:3},{value:"%GetQualityMeasureId",id:"getqualitymeasureid",level:3},{value:"%GetSubjectArea",id:"getsubjectarea",level:3},{value:"%IsAbstract",id:"isabstract",level:3},{value:"%GetGroupsAndElements",id:"getgroupsandelements",level:3},{value:"%GetExpression",id:"getexpression",level:3}];function o(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(t.header,{children:(0,a.jsx)(t.h1,{id:"deepseequalitymeasurequalitymeasure",children:"%DeepSee.QualityMeasure.QualityMeasure"})}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DeepSee.QualityMeasure.QualityMeasure Extends (%RegisteredObject, %XML.Adaptor) [ CompileAfter = (%DeepSee.Model.QualityMeasure.qualityMeasure, %DeepSee.Utils), System = 4 ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"This class is used to define DeepSee Quality Measures."}),"\n",(0,a.jsx)(t.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,a.jsx)(t.h3,{id:"qualitymeasure",children:"QualityMeasure"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'XData QualityMeasure [ XMLNamespace = "http://www.intersystems.com/deepsee/qualityMeasure" ]\n'})}),"\n",(0,a.jsx)(t.p,{children:"This projection is used to keep track of when Quality Measure classes are compiled or deleted. This XData definition defines the Quality Measure."}),"\n",(0,a.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(t.h3,{id:"getmodel",children:"%GetModel"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetModel() As %DeepSee.Model.QualityMeasure.qualityMeasure [ CodeMode = objectgenerator, Final, Internal ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Process the model for this quality measure."}),"\n",(0,a.jsx)(t.h3,{id:"getqualitymeasurecaption",children:"%GetQualityMeasureCaption"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetQualityMeasureCaption() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the caption of the quality measure."}),"\n",(0,a.jsx)(t.h3,{id:"getqualitymeasuredescription",children:"%GetQualityMeasureDescription"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetQualityMeasureDescription() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the description of the quality measure."}),"\n",(0,a.jsx)(t.h3,{id:"getqualitymeasurelinkedto",children:"%GetQualityMeasureLinkedTo"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetQualityMeasureLinkedTo() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the linkedTo setting for the quality measure."}),"\n",(0,a.jsx)(t.h3,{id:"getqualitymeasurename",children:"%GetQualityMeasureName"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetQualityMeasureName() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the logical name of the quality measure."}),"\n",(0,a.jsx)(t.h3,{id:"getqualitymeasurecatalog",children:"%GetQualityMeasureCatalog"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetQualityMeasureCatalog() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the logical catalog of the quality measure."}),"\n",(0,a.jsx)(t.h3,{id:"getqualitymeasureset",children:"%GetQualityMeasureSet"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetQualityMeasureSet() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the logical set of the quality measure."}),"\n",(0,a.jsx)(t.h3,{id:"ispublished",children:"%IsPublished"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %IsPublished() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Test if the quality measure is published."}),"\n",(0,a.jsx)(t.h3,{id:"getformat",children:"%GetFormat"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetFormat() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the format string for the quality measure."}),"\n",(0,a.jsx)(t.h3,{id:"getqualitymeasureid",children:"%GetQualityMeasureId"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetQualityMeasureId() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the logical id of the quality measure."}),"\n",(0,a.jsx)(t.h3,{id:"getsubjectarea",children:"%GetSubjectArea"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetSubjectArea() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the name of the subject area this quality measure applies to."}),"\n",(0,a.jsx)(t.h3,{id:"isabstract",children:"%IsAbstract"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %IsAbstract() As %Boolean [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Test whether this class is abstract or not."}),"\n",(0,a.jsx)(t.h3,{id:"getgroupsandelements",children:"%GetGroupsAndElements"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetGroupsAndElements(Output pList) [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the set of groups and elements for this quality measure."}),"\n",(0,a.jsx)(t.h3,{id:"getexpression",children:"%GetExpression"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %GetExpression(pGroup As %String = "", pElement As %String = "") As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]\n'})}),"\n",(0,a.jsxs)(t.p,{children:["Return the MDX expression for this quality measure.",(0,a.jsx)(t.br,{}),"\nIf pGroup is defined, return the specific expression for the group. If pGroup and pElement are defined, return the specific expression for the element within the group."]})]})}function d(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,a.jsx)(t,{...e,children:(0,a.jsx)(o,{...e})}):o(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>n,x:()=>i});var a=s(96540);const r={},l=a.createContext(r);function n(e){const t=a.useContext(l);return a.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:n(e.components),a.createElement(l.Provider,{value:t},e.children)}}}]);