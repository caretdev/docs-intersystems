"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[20663],{22674:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>l,default:()=>c,frontMatter:()=>r,toc:()=>i});var n=s(74848),a=s(28453);const r={pagination_prev:null,pagination_next:null},l="%XML.DataSet",i=[{value:"Parameters",id:"parameters",level:2},{value:"XMLNAME;",id:"xmlname",level:3},{value:"XMLTYPE;",id:"xmltype",level:3},{value:"NAMESPACE;",id:"namespace",level:3},{value:"CLASSNAME;",id:"classname",level:3},{value:"QUERYNAME;",id:"queryname",level:3},{value:"LOCATION;",id:"location",level:3},{value:"CONTENTTYPE",id:"contenttype",level:3},{value:"DATAONLY",id:"dataonly",level:3},{value:"XMLNOMETADATA",id:"xmlnometadata",level:3},{value:"Properties",id:"properties",level:2},{value:"DataSetName",id:"datasetname",level:3},{value:"DiffGram",id:"diffgram",level:3},{value:"NeedSchema",id:"needschema",level:3},{value:"WriteEmptyDiffgram",id:"writeemptydiffgram",level:3},{value:"CaseSensitive",id:"casesensitive",level:3},{value:"ImportTree",id:"importtree",level:3},{value:"ImportNode",id:"importnode",level:3},{value:"ImportNodeChildlist",id:"importnodechildlist",level:3},{value:"ImportChild",id:"importchild",level:3},{value:"ImportChildlist",id:"importchildlist",level:3},{value:"ImportTopChild",id:"importtopchild",level:3},{value:"ImportTopChildlist",id:"importtopchildlist",level:3},{value:"Handler",id:"handler",level:3},{value:"Cols",id:"cols",level:3},{value:"HasXSDMethods",id:"hasxsdmethods",level:3},{value:"ExecuteArgs",id:"executeargs",level:3},{value:"Namespace",id:"namespace-1",level:3},{value:"IsTypedDataset",id:"istypeddataset",level:3},{value:"RowNum",id:"rownum",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"SetArgs",id:"setargs",level:3},{value:"OnPage",id:"onpage",level:3},{value:"XMLGetSchemaImports",id:"xmlgetschemaimports",level:3},{value:"WriteSchema",id:"writeschema",level:3},{value:"WriteXML",id:"writexml",level:3},{value:"XMLDTD",id:"xmldtd",level:3},{value:"%XMLGenerate",id:"xmlgenerate",level:3},{value:"XMLExportInternal",id:"xmlexportinternal",level:3},{value:"XMLImportInternal",id:"xmlimportinternal",level:3},{value:"ReadXML",id:"readxml",level:3},{value:"ParseSchema",id:"parseschema",level:3},{value:"Next",id:"next",level:3},{value:"GetColumnCount",id:"getcolumncount",level:3},{value:"GetColumnName",id:"getcolumnname",level:3},{value:"GetColumnHeader",id:"getcolumnheader",level:3},{value:"GetColumnType",id:"getcolumntype",level:3},{value:"GetObject",id:"getobject",level:3},{value:"ResetXML",id:"resetxml",level:3},{value:"Close",id:"close",level:3},{value:"XMLSchema",id:"xmlschema",level:3},{value:"XMLSchemaNamespace",id:"xmlschemanamespace",level:3},{value:"XMLSchemaType",id:"xmlschematype",level:3},{value:"SetColTypeInfo",id:"setcoltypeinfo",level:3},{value:"RunPropertyMethod",id:"runpropertymethod",level:3}];function o(e){const t={a:"a",br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,a.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"xmldataset",children:"%XML.DataSet"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %XML.DataSet Extends (%Library.ResultSet, %CSP.Page, %XML.Adaptor) [ Inheritance = right, System = 3 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This class represents a .NET DataSet, which is an XML-enabled dataset that you can use in SOAP messages when both the web service and client are based on InterSystems IRIS or when one side uses .NET. Other SOAP vendors do not support datasets and cannot process a WSDL generated by a web service that uses them."}),"\n",(0,n.jsx)(t.p,{children:"The %XML.DataSet only needs to be instantiated using %New and then returned as the result of a WebService. The Execute method should not be called. The values of the result set will automatically be retrieved by the WebService mechanism and formatted in XML as a .NET DataSet."}),"\n",(0,n.jsx)(t.p,{children:"If arguments must be passed to the query for its proper execution, then the SetArgs method may be used."}),"\n",(0,n.jsx)(t.p,{children:"The query for the DataSet may be specified either at runtime or at compile time as parameters of a subclass of %XML.DataSet. If the query is specified at runtime, then a .NET untyped DataSet is returned by the SOAP support. If the query is specified by a compile time parameter, then a .NET typed DataSet is returned by the SOAP support."}),"\n",(0,n.jsx)(t.p,{children:"If you use this class as the value returned by a web method, note that this class is designed to work only with SoapBindingStyle=document and SoapBodyUse=literal, so be sure to set those keywords."}),"\n",(0,n.jsx)(t.p,{children:"Untyped DataSet"}),"\n",(0,n.jsx)(t.p,{children:"You can return a %XML.DataSet object as an untyped DataSet from a WebService as follows:"}),"\n",(0,n.jsx)(t.p,{children:(0,n.jsx)(t.code,{children:'ClassMethod GetByName(prefix As %String) As %XML.DataSet [ WebMethod ] { // Return the results of the Person class\' ByName query. Set result=##class(%XML.DataSet).%New("Sample.Person:ByName") Do result.SetArgs(prefix) Quit result }'})}),"\n",(0,n.jsxs)(t.p,{children:["Note you can bind a %XML.DataSet object to a query by either a) setting the ClassName and QueryName properties or b) passing a string containing the class name and query name (separated by a ",(0,n.jsx)(t.strong,{children:":"}),") to the ",(0,n.jsx)(t.strong,{children:"%New"})," method."]}),"\n",(0,n.jsx)(t.p,{children:"Dynamic SQL"}),"\n",(0,n.jsxs)(t.p,{children:["You can use the %XML.DataSet class to execute dynamic SQL queries using the system-provided %DynamicQuery:SQL query. In this case, use the Prepare method to supply the text of the query. For example, execute the following to return an untyped DataSet: ",(0,n.jsx)(t.code,{children:'ClassMethod GetBySalary(salary As %Integer) As %XML.DataSet [ WebMethod ] { Set result=##class(%XML.DataSet).%New() Do result.Prepare("SELECT ID, Name, Salary FROM Employee WHERE Salary > ?") Do result.SetArgs(salary) Quit result }'})]}),"\n",(0,n.jsx)(t.p,{children:"Typed DataSet"}),"\n",(0,n.jsxs)(t.p,{children:["To return a typed DataSet, create a subclass of %XML.DataSet with the NAMESPACE, CLASS and QUERY parameters specified. Assume that the subclass is called MyTypedDataSet, then the following code returns a typed DataSet: ",(0,n.jsx)(t.code,{children:"ClassMethod GetByName(prefix As %String) As MyTypedDataSet [ WebMethod ] { // Return the results of the Person class' ByName query. Set result=##class(MyTypedDataSet).%New() Do result.SetArgs(prefix) Quit result }"})]}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"xmlname",children:"XMLNAME;"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter XMLNAME;\n"})}),"\n",(0,n.jsx)(t.p,{children:'Use "DefaultDataSet" as the default DataSet name for untyped DataSets. Use the subclass name as the default DataSet name for typed DataSets.'}),"\n",(0,n.jsx)(t.h3,{id:"xmltype",children:"XMLTYPE;"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter XMLTYPE;\n"})}),"\n",(0,n.jsx)(t.p,{children:'Use "DataSet" as the type.'}),"\n",(0,n.jsx)(t.h3,{id:"namespace",children:"NAMESPACE;"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter NAMESPACE;\n"})}),"\n",(0,n.jsx)(t.p,{children:"The XML namespace for typed DataSets"}),"\n",(0,n.jsx)(t.h3,{id:"classname",children:"CLASSNAME;"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter CLASSNAME;\n"})}),"\n",(0,n.jsx)(t.p,{children:"The class name that contains the query for typed DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"queryname",children:"QUERYNAME;"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter QUERYNAME;\n"})}),"\n",(0,n.jsx)(t.p,{children:"The query name for typed DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"location",children:"LOCATION;"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter LOCATION;\n"})}),"\n",(0,n.jsx)(t.p,{children:"LOCATION - Should be the URL which is the location of the DataSet schema. The url may be absolute or relative to the schema request URL.."}),"\n",(0,n.jsx)(t.h3,{id:"contenttype",children:"CONTENTTYPE"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter CONTENTTYPE [ Internal ] = "text/xml";\n'})}),"\n",(0,n.jsx)(t.p,{children:"Defines the content type of the http schema request Should not be overridden."}),"\n",(0,n.jsx)(t.h3,{id:"dataonly",children:"DATAONLY"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter DATAONLY = 0;\n"})}),"\n",(0,n.jsx)(t.p,{children:"If DATAONLY is set to true (=1), then the schema and diffgram will not be included in dataset XML output."}),"\n",(0,n.jsx)(t.h3,{id:"xmlnometadata",children:"XMLNOMETADATA"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter XMLNOMETADATA [ Internal ] = 1;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Suppress normal XML meta data"}),"\n",(0,n.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(t.h3,{id:"datasetname",children:"DataSetName"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property DataSetName As %String(TRUNCATE = 1);\n"})}),"\n",(0,n.jsx)(t.p,{children:"The name of the DataSet being returned. Default set in %OnNew."}),"\n",(0,n.jsx)(t.h3,{id:"diffgram",children:"DiffGram"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property DiffGram As %Boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"True if the data set is to be written in Microsoft DiffGram format."}),"\n",(0,n.jsx)(t.h3,{id:"needschema",children:"NeedSchema"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property NeedSchema As %Boolean;\n"})}),"\n",(0,n.jsx)(t.p,{children:"True if the data set is to be written preceded by its schema. Default is 1 for diffgram, else 0."}),"\n",(0,n.jsx)(t.h3,{id:"writeemptydiffgram",children:"WriteEmptyDiffgram"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property WriteEmptyDiffgram As %Boolean;\n"})}),"\n",(0,n.jsx)(t.p,{children:"True if the dataset is to contain only a diffgram element if there are no rows. The default is to have an empty element with the name of the dataset inside the diffgram element."}),"\n",(0,n.jsx)(t.h3,{id:"casesensitive",children:"CaseSensitive"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property CaseSensitive As %Boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"CaseSensitive is Boolean property which corresponds to the Microsoft CaseSensitive dataset property."}),"\n",(0,n.jsx)(t.h3,{id:"importtree",children:"ImportTree"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property ImportTree As %Integer [ Internal, Private ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Tree containing Import DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"importnode",children:"ImportNode"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property ImportNode As %String [ Internal, Private ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Container node of Import DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"importnodechildlist",children:"ImportNodeChildlist"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property ImportNodeChildlist As %String [ Internal, Private ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Childlist for container node of Import DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"importchild",children:"ImportChild"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property ImportChild As %String [ Internal, Private ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Current child record of Import DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"importchildlist",children:"ImportChildlist"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property ImportChildlist As %String [ Internal, Private ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Chikdkist for current child record of Import DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"importtopchild",children:"ImportTopChild"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property ImportTopChild As %String [ Private ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"First child record of Import DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"importtopchildlist",children:"ImportTopChildlist"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property ImportTopChildlist As %String [ Private ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Child list for first child record of Import DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"handler",children:"Handler"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property Handler As %XML.Document [ Internal, Private ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"The %XML.Document that holds the XML document tree. Reference kept here to prevent the tree from being deleted while this dataset is still processing the XML tree."}),"\n",(0,n.jsx)(t.h3,{id:"cols",children:"Cols"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property Cols [ Internal, MultiDimensional ];\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Column information the following form indexed by column number:",(0,n.jsx)(t.br,{}),"\n$lb(name,xsdType,columnClass,columnProperty,clientType,ignoreNull)"]}),"\n",(0,n.jsx)(t.h3,{id:"hasxsdmethods",children:"HasXSDMethods"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property HasXSDMethods [ Internal, MultiDimensional ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"XSDToLogical and LogicalToXSD existence by xsdType as HasXSDMethods(xsdType,methodName)"}),"\n",(0,n.jsx)(t.h3,{id:"executeargs",children:"ExecuteArgs"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property ExecuteArgs [ Internal, MultiDimensional, Private ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Argument for %ResultSet.Execute method. Use of this property by SetArgs is deprecated."}),"\n",(0,n.jsx)(t.h3,{id:"namespace-1",children:"Namespace"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property Namespace As %String(TRUNCATE = 1) [ Internal ];\n"})}),"\n",(0,n.jsx)(t.p,{children:'Namespace for typed DataSet or "" if untyped.'}),"\n",(0,n.jsx)(t.h3,{id:"istypeddataset",children:"IsTypedDataset"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property IsTypedDataset As %Boolean [ Internal, Private ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Indicates that this is a typed dataset"}),"\n",(0,n.jsx)(t.h3,{id:"rownum",children:"RowNum"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property RowNum As %Integer [ Internal, Private ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Count row number for import."}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnNew(initvalue As %String) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.h3,{id:"setargs",children:"SetArgs"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method SetArgs(args...) [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Set the arguments to be used for the %ResultSet.Execute."}),"\n",(0,n.jsx)(t.h3,{id:"onpage",children:"OnPage"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod OnPage() As %Status [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Write the xml schema for the typed DataSet."}),"\n",(0,n.jsx)(t.h3,{id:"xmlgetschemaimports",children:"XMLGetSchemaImports"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod XMLGetSchemaImports(ByRef imports, ByRef classes) As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Get the import elements required for a schema. XMLGetSchemaImports is used to get the import elements needed for %XML.DataSet in a WSDL file.",(0,n.jsx)(t.br,{}),"\nThe schema is is returned as a local array of where each node represents a required import:",(0,n.jsx)(t.br,{}),"\nimports(schemaNamespace)=schemaLocation",(0,n.jsx)(t.br,{}),'\nwhere schemaLocation may be "" for commonly known schemas such as ',(0,n.jsx)(t.a,{href:"http://www.w3.org/2001/XMLSchema",children:"http://www.w3.org/2001/XMLSchema"})," This method is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method."]}),"\n",(0,n.jsx)(t.h3,{id:"writeschema",children:"WriteSchema"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method WriteSchema() As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Write the XML schema for the data rows."}),"\n",(0,n.jsx)(t.h3,{id:"writexml",children:"WriteXML"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method WriteXML(top As %String, diffGram As %Boolean = "", writeSchema As %Boolean = "", namespaces As %XML.Namespaces, local As %Boolean, ignoreNull As %Boolean) As %Status [ ServerOnly = 1 ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Write the data rows as XML with optional preceding schema."}),"\n",(0,n.jsx)(t.h3,{id:"xmldtd",children:"XMLDTD"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod XMLDTD(top As %String, format As %String, input As %Boolean, ByRef dtdlist) As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"No DTD available for DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"xmlgenerate",children:"%XMLGenerate"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %XMLGenerate() [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Suppress normal XML meta data"}),"\n",(0,n.jsx)(t.p,{children:"This method is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method."}),"\n",(0,n.jsx)(t.h3,{id:"xmlexportinternal",children:"XMLExportInternal"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method XMLExportInternal() As %Status [ Internal, ProcedureBlock = 0, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Export data rows preceded by a schema that describes the rows. Serialize an XML enabled class as an XML document and write it to the current device.",(0,n.jsx)(t.br,{}),"\nCall XMLExport that is inherited from %XML.Adaptor in order to export daatset as XML.",(0,n.jsx)(t.br,{}),"\ntop is the optional tag to be used for the top-level tag."]}),"\n",(0,n.jsxs)(t.p,{children:["**********",(0,n.jsx)(t.br,{}),"\n**********",(0,n.jsx)(t.br,{}),"\nAll the other arguments are for internal use only and may change",(0,n.jsx)(t.br,{}),"\n**********",(0,n.jsx)(t.br,{}),"\n**********"]}),"\n",(0,n.jsx)(t.h3,{id:"xmlimportinternal",children:"XMLImportInternal"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method XMLImportInternal() As %Status [ Internal, ProcedureBlock = 0, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Import of a .Net format dataSet used by %XML.Reader and SOAP support. This method is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method."}),"\n",(0,n.jsx)(t.h3,{id:"readxml",children:"ReadXML"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method ReadXML(handler As %XML.Document, node As %Integer, ignoreNull As %Boolean) As %Status [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Import of a .Net format dataSet used by %XML.Reader and SOAP support. This method is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method."}),"\n",(0,n.jsx)(t.h3,{id:"parseschema",children:"ParseSchema"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method ParseSchema(tree As %Integer, node As %String, nodeChildlist As %String, ByRef colnames, ByRef types, ByRef clientTypes) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Internal method to parse the schema contained in a .Net format dataset. This method is for internal use only. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this method."}),"\n",(0,n.jsx)(t.h3,{id:"next",children:"Next"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method Next(ByRef sc As %Status) As %Integer [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Advance the result set cursor to the next row in the XML tree. Returns 0 if the cursor is at the end of the result set."}),"\n",(0,n.jsx)(t.h3,{id:"getcolumncount",children:"GetColumnCount"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetColumnCount() As %Integer [ CodeMode = expression, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the number of columns in the result set. Each row may be different for %XML.DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"getcolumnname",children:"GetColumnName"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetColumnName(n As %Integer) As %String [ CodeMode = expression, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the name of column n in the result set. Each row may be different for %XML.DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"getcolumnheader",children:"GetColumnHeader"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetColumnHeader(n As %Integer) As %String [ CodeMode = expression, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the column header for column n in the result set. Each row may be different for %XML.DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"getcolumntype",children:"GetColumnType"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetColumnType(n As %Integer) As %Integer [ CodeMode = expression, ProcedureBlock = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Returns the type of column n in the result set where type is an integer (CLIENTDATATYPEENUM) associated with the client datatype. Reference %occName for an explanation of the integer values. If the type cannot be determined, 0 (zero) is returned"}),"\n",(0,n.jsx)(t.h3,{id:"getobject",children:"GetObject"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetObject() As %RegisteredObject [ CodeMode = expression, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"If this query contains an object Id then this method opens an object with this Id and returns the object reference. Otherwise it returns a null object reference."}),"\n",(0,n.jsx)(t.h3,{id:"resetxml",children:"ResetXML"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method ResetXML() As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Resets the current result set cursor to the beginning of the dataset. This method only works for datasets which have been created by reading XML input."}),"\n",(0,n.jsx)(t.h3,{id:"close",children:"Close"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method Close() As %Status [ ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Closes the current result set cursor."}),"\n",(0,n.jsx)(t.h3,{id:"xmlschema",children:"XMLSchema"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod XMLSchema(top As %String, format As %String, namespacePrefix As %String = "", input As %Boolean, refOnly As %Boolean, ByRef schema) As %Status [ ServerOnly = 1 ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Generate hard coded schema that is used for DataSet"}),"\n",(0,n.jsx)(t.h3,{id:"xmlschemanamespace",children:"XMLSchemaNamespace"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod XMLSchemaNamespace() As %String [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Override for %XML.DataSet to indicate that the schema type will be in the namespace of the referencing class."}),"\n",(0,n.jsx)(t.h3,{id:"xmlschematype",children:"XMLSchemaType"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod XMLSchemaType(schemaInstance As %XML.Schema, node As %XML.Node, top As %String = "", encoded As %Boolean, summary As %Boolean = 0, input As %Boolean = 0, refOnly As %Boolean = 0) As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Override for %XML.DataSet to add a complexType to the schema that is respresented by an %XML.Schema instance.",(0,n.jsx)(t.br,{}),"\nschemaInstance is the %XML.Schema class instance that is used to build the schema."]}),"\n",(0,n.jsx)(t.h3,{id:"setcoltypeinfo",children:"SetColTypeInfo"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method SetColTypeInfo(ignoreNull As %Boolean = 1) [ Internal, Private ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Fill in Cols property with a node per column: $lb(name,xsdType,columnClass,columnProperty,clientType,ignoreNull)"}),"\n",(0,n.jsx)(t.h3,{id:"runpropertymethod",children:"RunPropertyMethod"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method RunPropertyMethod(col As %List, method As %String, value As %String) As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Call property method (logicalToXSD or XSDToLogical) for the specified column. Column is specified by a column list: $lb(name,xsdType,columnClass,columnProperty,ignoreNull)"})]})}function c(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>l,x:()=>i});var n=s(96540);const a={},r=n.createContext(a);function l(e){const t=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:l(e.components),n.createElement(r.Provider,{value:t},e.children)}}}]);