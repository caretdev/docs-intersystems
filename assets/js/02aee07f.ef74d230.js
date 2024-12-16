"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[72987],{88226:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>i,default:()=>c,frontMatter:()=>n,toc:()=>l});var a=s(74848),r=s(28453);const n={pagination_prev:null,pagination_next:null},i="%ZEN.Report.Display.COSChart.dataBag",l=[{value:"Properties",id:"properties",level:2},{value:"propertyList",id:"propertylist",level:3},{value:"labelList",id:"labellist",level:3},{value:"propertyTypes",id:"propertytypes",level:3},{value:"%data",id:"data",level:3},{value:"%types",id:"types",level:3},{value:"%labels",id:"labels",level:3},{value:"clientData",id:"clientdata",level:3},{value:"seriesCount",id:"seriescount",level:3},{value:"seriesNames",id:"seriesnames",level:3},{value:"Methods",id:"methods",level:2},{value:"%SetPropertyList",id:"setpropertylist",level:3},{value:"%GetPropertyList",id:"getpropertylist",level:3},{value:"%GetPropertyTypes",id:"getpropertytypes",level:3},{value:"%GetLabelList",id:"getlabellist",level:3},{value:"%Clear",id:"clear",level:3},{value:"%GetValue",id:"getvalue",level:3},{value:"%GetType",id:"gettype",level:3},{value:"%GetLabel",id:"getlabel",level:3},{value:"%SetValue",id:"setvalue",level:3},{value:"%GetArray",id:"getarray",level:3},{value:"%CopyFromModel",id:"copyfrommodel",level:3},{value:"%CopyToModel",id:"copytomodel",level:3},{value:"%OnObjectSynch",id:"onobjectsynch",level:3},{value:"%OnZENDeserialize",id:"onzendeserialize",level:3},{value:"%OnDrawObjectProperties",id:"ondrawobjectproperties",level:3},{value:"%SerializeData",id:"serializedata",level:3},{value:"clear",id:"clear-1",level:3},{value:"getValue",id:"getvalue-1",level:3},{value:"getValueByPosition",id:"getvaluebyposition",level:3},{value:"getValuesAsArrays",id:"getvaluesasarrays",level:3},{value:"getValuesAsObject",id:"getvaluesasobject",level:3},{value:"getPropertyIndex",id:"getpropertyindex",level:3},{value:"setValue",id:"setvalue-1",level:3},{value:"setValueByPosition",id:"setvaluebyposition",level:3},{value:"getDimSize",id:"getdimsize",level:3},{value:"getSeriesCount",id:"getseriescount",level:3},{value:"getPropertyCount",id:"getpropertycount",level:3},{value:"getPropertyName",id:"getpropertyname",level:3},{value:"getPropertyType",id:"getpropertytype",level:3},{value:"getPropertyLabel",id:"getpropertylabel",level:3},{value:"getSeriesLabel",id:"getserieslabel",level:3},{value:"setProperty",id:"setproperty",level:3}];function d(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(t.header,{children:(0,a.jsx)(t.h1,{id:"zenreportdisplaycoschartdatabag",children:"%ZEN.Report.Display.COSChart.dataBag"})}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Class %ZEN.Report.Display.COSChart.dataBag Extends %RegisteredObject [ Deprecated ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"This class provides a way to assemble data. A dataBag object contains a set of name-value pairs. This is used internally by the pseudo-MVC classes in Zen Reports."}),"\n",(0,a.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(t.h3,{id:"propertylist",children:"propertyList"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property propertyList As %ZEN.Datatype.csv(XMLPROJECTION = "NONE") [ Private ];\n'})}),"\n",(0,a.jsx)(t.p,{children:"List of property names contained within this dataBag."}),"\n",(0,a.jsx)(t.h3,{id:"labellist",children:"labelList"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property labelList As %ZEN.Datatype.csv(XMLPROJECTION = "NONE") [ Private ];\n'})}),"\n",(0,a.jsx)(t.p,{children:"List of property labels (if different than property name) contained within this dataBag."}),"\n",(0,a.jsx)(t.h3,{id:"propertytypes",children:"propertyTypes"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property propertyTypes As %ZEN.Datatype.csv(XMLPROJECTION = "NONE") [ Private ];\n'})}),"\n",(0,a.jsx)(t.p,{children:"List of types of the properties contained within this dataBag."}),"\n",(0,a.jsx)(t.h3,{id:"data",children:"%data"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property %data As %ZEN.Datatype.string(XMLPROJECTION = "NONE") [ MultiDimensional ];\n'})}),"\n",(0,a.jsx)(t.p,{children:"Array of data values within the dataBag, indexed by series and property name."}),"\n",(0,a.jsx)(t.h3,{id:"types",children:"%types"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property %types As %ZEN.Datatype.string(XMLPROJECTION = "NONE") [ MultiDimensional ];\n'})}),"\n",(0,a.jsx)(t.p,{children:"Array of data types within the dataBag, indexed by property name."}),"\n",(0,a.jsx)(t.h3,{id:"labels",children:"%labels"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property %labels As %ZEN.Datatype.string(XMLPROJECTION = "NONE") [ MultiDimensional ];\n'})}),"\n",(0,a.jsx)(t.p,{children:"Array of labels within the dataBag, indexed by property name."}),"\n",(0,a.jsx)(t.h3,{id:"clientdata",children:"clientData"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property clientData As %ZEN.Datatype.list(XMLPROJECTION = "NONE");\n'})}),"\n",(0,a.jsx)(t.p,{children:"Array of serialized data values going to and coming from the client."}),"\n",(0,a.jsx)(t.h3,{id:"seriescount",children:"seriesCount"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property seriesCount As %ZEN.Datatype.integer(MINVAL = 1, XMLPROJECTION = "NONE") [ InitialExpression = 1 ];\n'})}),"\n",(0,a.jsx)(t.p,{children:"Number of data series held within the dataBag."}),"\n",(0,a.jsx)(t.h3,{id:"seriesnames",children:"seriesNames"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Property seriesNames As %ZEN.Datatype.csv(XMLPROJECTION = "NONE") [ Private ];\n'})}),"\n",(0,a.jsx)(t.p,{children:"List of data series names contained within this dataBag."}),"\n",(0,a.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(t.h3,{id:"setpropertylist",children:"%SetPropertyList"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:'Method %SetPropertyList(pPropList As %String, pPropTypes As %String = "", pLabelList As %String = "") [ Internal ]\n'})}),"\n",(0,a.jsx)(t.p,{children:"Set the property list for the dataBag. This deletes the contents of the dataBag."}),"\n",(0,a.jsx)(t.h3,{id:"getpropertylist",children:"%GetPropertyList"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetPropertyList() As %String [ CodeMode = expression, Internal ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Internal method."}),"\n",(0,a.jsx)(t.h3,{id:"getpropertytypes",children:"%GetPropertyTypes"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetPropertyTypes() As %String [ CodeMode = expression, Internal ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Internal method."}),"\n",(0,a.jsx)(t.h3,{id:"getlabellist",children:"%GetLabelList"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetLabelList() As %String [ CodeMode = expression, Internal ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Internal method."}),"\n",(0,a.jsx)(t.h3,{id:"clear",children:"%Clear"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %Clear()\n"})}),"\n",(0,a.jsx)(t.p,{children:"Delete data currently in the dataBag."}),"\n",(0,a.jsx)(t.h3,{id:"getvalue",children:"%GetValue"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetValue(pProperty As %String, pSeries As %Integer = 1) As %String [ CodeMode = expression ]\n"})}),"\n",(0,a.jsxs)(t.p,{children:["Get the value of a property within the dataBag.",(0,a.jsx)(t.br,{}),"\nNote that this can return a literal value, an object value (oref), or $$$ZENMISSING if the given property is not in the model."]}),"\n",(0,a.jsx)(t.h3,{id:"gettype",children:"%GetType"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetType(pProperty As %String) As %String [ CodeMode = expression ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Get the type of a property within the dataBag."}),"\n",(0,a.jsx)(t.h3,{id:"getlabel",children:"%GetLabel"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetLabel(pProperty As %String) As %String [ CodeMode = expression ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Get the label for a property within the dataBag."}),"\n",(0,a.jsx)(t.h3,{id:"setvalue",children:"%SetValue"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %SetValue(pProperty As %String, pValue As %String)\n"})}),"\n",(0,a.jsx)(t.p,{children:"Set the value of a property within the dataBag."}),"\n",(0,a.jsx)(t.h3,{id:"getarray",children:"%GetArray"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetArray(Output pArray)\n"})}),"\n",(0,a.jsx)(t.p,{children:"Copy the contents of this dataBag into a local array."}),"\n",(0,a.jsx)(t.h3,{id:"copyfrommodel",children:"%CopyFromModel"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %CopyFromModel(pModel As %ZEN.DataModel.DataModel) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"Fill the contents of this dataBag from the given DataModel"}),"\n",(0,a.jsx)(t.h3,{id:"copytomodel",children:"%CopyToModel"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %CopyToModel(pModel As %ZEN.DataModel.DataModel) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"Copy the contents of this dataBag into the given DataModel."}),"\n",(0,a.jsx)(t.h3,{id:"onobjectsynch",children:"%OnObjectSynch"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnObjectSynch() As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"Make sure client data is prepared."}),"\n",(0,a.jsx)(t.h3,{id:"onzendeserialize",children:"%OnZENDeserialize"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnZENDeserialize() As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"Deserialize additional values from the client."}),"\n",(0,a.jsx)(t.h3,{id:"ondrawobjectproperties",children:"%OnDrawObjectProperties"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnDrawObjectProperties() As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"Called just before we serve property values to the client."}),"\n",(0,a.jsx)(t.h3,{id:"serializedata",children:"%SerializeData"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method %SerializeData(pDelim As %String = {$C(5)}) As %Status\n"})}),"\n",(0,a.jsx)(t.p,{children:"Convert internal arrays to a serialized strings for use on the client."}),"\n",(0,a.jsx)(t.h3,{id:"clear-1",children:"clear"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod clear() [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Clear contents of this dataBag."}),"\n",(0,a.jsx)(t.h3,{id:"getvalue-1",children:"getValue"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getValue(property, series) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the data value associated with a given property name. If there is no property with the name, property, return null."}),"\n",(0,a.jsx)(t.h3,{id:"getvaluebyposition",children:"getValueByPosition"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getValueByPosition(n, series) [ Language = javascript ]\n"})}),"\n",(0,a.jsxs)(t.p,{children:["Return the data value at the given ordinal position. If n is out of range, return null.",(0,a.jsx)(t.br,{}),"\nseries is 0-based."]}),"\n",(0,a.jsx)(t.h3,{id:"getvaluesasarrays",children:"getValuesAsArrays"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method getValuesAsArrays(ByRef data)\n"})}),"\n",(0,a.jsx)(t.p,{children:"This is a specialized variant of getValueByPosition that return the data in this bag as an array of arrays (used by charts)."}),"\n",(0,a.jsx)(t.h3,{id:"getvaluesasobject",children:"getValuesAsObject"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getValuesAsObject(series) [ Language = javascript ]\n"})}),"\n",(0,a.jsxs)(t.p,{children:["Return the values in this dataBag as a zenProxy object. If there is more than one data series, series specifies which one to use.",(0,a.jsx)(t.br,{}),"\nReturn null if there are no properties in the dataBag."]}),"\n",(0,a.jsx)(t.h3,{id:"getpropertyindex",children:"getPropertyIndex"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getPropertyIndex(property) [ Internal, Language = javascript ]\n"})}),"\n",(0,a.jsxs)(t.p,{children:["Internal method.",(0,a.jsx)(t.br,{}),"\nFind index number of given property name."]}),"\n",(0,a.jsx)(t.h3,{id:"setvalue-1",children:"setValue"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod setValue(property, value, series) [ Language = javascript ]\n"})}),"\n",(0,a.jsxs)(t.p,{children:["Set the data value for the given property.",(0,a.jsx)(t.br,{}),"\nseries is 0-based."]}),"\n",(0,a.jsx)(t.h3,{id:"setvaluebyposition",children:"setValueByPosition"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod setValueByPosition(value, n, series) [ Language = javascript ]\n"})}),"\n",(0,a.jsxs)(t.p,{children:["Set the data value at the given ordinal position.",(0,a.jsx)(t.br,{}),"\nseries is 0-based."]}),"\n",(0,a.jsx)(t.h3,{id:"getdimsize",children:"getDimSize"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method getDimSize(dim)\n"})}),"\n",(0,a.jsxs)(t.p,{children:["dataSet API Return the number of items in the specified dimension.",(0,a.jsx)(t.br,{}),"\n(dim is 1,2, or 3). The size of the first dimension is defined by the number of properties in the dataBag.",(0,a.jsx)(t.br,{}),"\nThe size of the second dimension is defined by number of data series in the dataBag. The dataBag does not support a third dimension."]}),"\n",(0,a.jsx)(t.h3,{id:"getseriescount",children:"getSeriesCount"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method getSeriesCount()\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the number of data series within this dataBag."}),"\n",(0,a.jsx)(t.h3,{id:"getpropertycount",children:"getPropertyCount"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method getPropertyCount()\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the number of properties within this dataBag."}),"\n",(0,a.jsx)(t.h3,{id:"getpropertyname",children:"getPropertyName"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method getPropertyName(n)\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the name of a property within this dataBag given its ordinal (0-based) position."}),"\n",(0,a.jsx)(t.h3,{id:"getpropertytype",children:"getPropertyType"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod getPropertyType(n) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the type code of a property within this dataBag given its ordinal (0-based) position."}),"\n",(0,a.jsx)(t.h3,{id:"getpropertylabel",children:"getPropertyLabel"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method getPropertyLabel(n)\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the label of a property within this dataBag given its ordinal (0-based) position."}),"\n",(0,a.jsx)(t.h3,{id:"getserieslabel",children:"getSeriesLabel"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"Method getSeriesLabel(n)\n"})}),"\n",(0,a.jsx)(t.p,{children:"Return the label of a dataSeries within this dataBag given its ordinal (0-based) position."}),"\n",(0,a.jsx)(t.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,a.jsx)(t.pre,{children:(0,a.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,a.jsx)(t.p,{children:"Set the value of a named property."})]})}function c(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,a.jsx)(t,{...e,children:(0,a.jsx)(d,{...e})}):d(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>i,x:()=>l});var a=s(96540);const r={},n=a.createContext(r);function i(e){const t=a.useContext(n);return a.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),a.createElement(n.Provider,{value:t},e.children)}}}]);