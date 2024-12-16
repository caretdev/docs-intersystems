"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[9378],{30609:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>o,default:()=>l,frontMatter:()=>i,toc:()=>a});var n=s(74848),r=s(28453);const i={pagination_prev:null,pagination_next:null},o="%DeepSee.DataConnector",a=[{value:"Parameters",id:"parameters",level:2},{value:"SUPPORTSIDLIST",id:"supportsidlist",level:3},{value:"SUPPORTSSINGLE",id:"supportssingle",level:3},{value:"EXTERNALTABLE",id:"externaltable",level:3},{value:"Properties",id:"properties",level:2},{value:"%parameters",id:"parameters-1",level:3},{value:"%outputRecord",id:"outputrecord",level:3},{value:"%mode",id:"mode",level:3},{value:"%listingCube",id:"listingcube",level:3},{value:"%listingTable",id:"listingtable",level:3},{value:"%listingKey",id:"listingkey",level:3},{value:"%singleId",id:"singleid",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"SourceQuery",id:"sourcequery",level:3},{value:"Output",id:"output",level:3},{value:"Methods",id:"methods",level:2},{value:"%SupportsIdList",id:"supportsidlist-1",level:3},{value:"%SupportsSingleMode",id:"supportssinglemode",level:3},{value:"%SetMode",id:"setmode",level:3},{value:"%SetIdList",id:"setidlist",level:3},{value:"%SetSingleId",id:"setsingleid",level:3},{value:"%Execute",id:"execute",level:3},{value:"%GetSourceResultSet",id:"getsourceresultset",level:3},{value:"%OnGetSourceResultSet",id:"ongetsourceresultset",level:3},{value:"%OnNextRecord",id:"onnextrecord",level:3},{value:"%OnProcessRecord",id:"onprocessrecord",level:3},{value:"%UpdateRecord",id:"updaterecord",level:3},{value:"%OnUpdateRecord",id:"onupdaterecord",level:3},{value:"%GetResultSetClass",id:"getresultsetclass",level:3},{value:"%GetConnectorInfo",id:"getconnectorinfo",level:3},{value:"%GetSQLText",id:"getsqltext",level:3},{value:"%GetPropertyInfo",id:"getpropertyinfo",level:3},{value:"%OnGetPropertyInfo",id:"ongetpropertyinfo",level:3},{value:"%GetKeyFields",id:"getkeyfields",level:3},{value:"%GenerateConnector",id:"generateconnector",level:3},{value:"%Print",id:"print",level:3},{value:"%GetVersion",id:"getversion",level:3},{value:"%GetRestrictionClause",id:"getrestrictionclause",level:3},{value:"OnPage",id:"onpage",level:3},{value:"%ToJSON",id:"tojson",level:3}];function c(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"deepseedataconnector",children:"%DeepSee.DataConnector"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DeepSee.DataConnector Extends (%CSP.Page, %RegisteredObject) [ Abstract, System = 4 ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Subclasses of this class are used to define DeepSee Data Connectors.",(0,n.jsx)(t.br,{}),"\nA DataConnnector provides a way to connect an input data source (such as the results of running an SQL query) to an output data sink (such as the dataSource for a DeepSee cube).",(0,n.jsx)(t.br,{}),"\nYou can define the input data source by defining a SourceQuery XData block: ",(0,n.jsx)(t.code,{children:'XData SourceQuery [ XMLNamespace = "http://www.intersystems.com/deepsee/connector/query" ] {  SELECT %ID,Product,AmountOfSale From MyApp.MyTable  }'})," or, alternatively, you can implement the %OnGetSourceResultSet callback method. This method should create, prepare, and execute an %SQL.Statement and return the resulting ResultSet.",(0,n.jsx)(t.br,{}),"\n",(0,n.jsx)(t.code,{children:'Method %OnGetSourceResultSet(ByRef pParameters, Output pResultSet) As %Status { Set tSC = $$$OK Set pResultSet = "" Try { Set tStatement = ##class(%SQL.Statement).%New(,"DEFAULT_SCHEMA") Set tSC = tStatement.%Prepare("SELECT %ID,Product,AmountOfSale FROM MyApp.MyClass") If $$$ISERR(tSC) Quit Set pResultSet = tStatement.%Execute() } Catch(ex) { Set tSC = ex.AsStatus() } Quit tSC }'})," The output properties of the Data Connector are defined using the ",(0,n.jsx)(t.strong,{children:"Output"})," XData block. This contains an XML document that describes the set of output properties.",(0,n.jsx)(t.br,{}),"\nFor example:",(0,n.jsx)(t.br,{}),"\n",(0,n.jsx)(t.code,{children:'XData Output [ XMLNamespace = "http://www.intersystems.com/deepsee/connector/output" ] {  }'})," A DataConnector is used by creating an instance of it and calling its %Execute method. This returns an instance of %SQL.StatementResult that can be used to read data from the DataConnector.",(0,n.jsx)(t.br,{}),"\nYou can test a DataConnector class by calling its %Print method from the command line or you can view the DataConnector class as a web page.",(0,n.jsx)(t.br,{}),"\nIf you are using a DataConnector class to supply data to a DeepSee cube the cube will take care of executing and fetching data from it.",(0,n.jsx)(t.br,{}),"\nA DataConnector can override the %OnNextRecord method if it wishes to perform additional logic on data flowing through the connector.",(0,n.jsx)(t.br,{}),"\nEach DataConnector class is also also a %CSP page; if you view it as a Web Page, you can view a test page for the DataConnector (you must hold Developer privileges to do this)."]}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"supportsidlist",children:"SUPPORTSIDLIST"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter SUPPORTSIDLIST As BOOL = 0;\n"})}),"\n",(0,n.jsx)(t.p,{children:'Set this parameter TRUE (1) if this connector supports "idlist" mode. The implementor is responsible for adding the additional query logic to support this mode.'}),"\n",(0,n.jsx)(t.h3,{id:"supportssingle",children:"SUPPORTSSINGLE"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter SUPPORTSSINGLE As BOOL = 0;\n"})}),"\n",(0,n.jsx)(t.p,{children:'Set this parameter TRUE (1) if this connector supports "single" mode. The implementor is responsible for adding the additional query logic to support this mode.'}),"\n",(0,n.jsx)(t.h3,{id:"externaltable",children:"EXTERNALTABLE"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter EXTERNALTABLE As BOOL = 1;\n"})}),"\n",(0,n.jsx)(t.p,{children:"Set this parameter TRUE (1) if this connector uses a linked (external) table. This is used to determine what form the id restriction used for listings ($$$RESTRICT token) should take. For external tables a more conservative approach, with a limit of 1000 records is used. If you know that your data source is based on a local table, you can set this parameter to 0 and more aggressive id restriction is used with no size limit,"}),"\n",(0,n.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(t.h3,{id:"parameters-1",children:"%parameters"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %parameters [ Internal, MultiDimensional ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"This is used to pass input parameters to the generated result set."}),"\n",(0,n.jsx)(t.h3,{id:"outputrecord",children:"%outputRecord"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %outputRecord As %SQL.IResultSet [ Private ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Output Result Set object that emits the records to the consumer. This is created by the %Execute method."}),"\n",(0,n.jsx)(t.h3,{id:"mode",children:"%mode"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Property %mode As %String [ InitialExpression = "all", Internal ];\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Specify what mode this data connector is in.",(0,n.jsx)(t.br,{}),'\nOptions are "all" (fetch all records), "idlist" (fetch record within a given set of ids), or "single" (fetch one record specified by %singleId).']}),"\n",(0,n.jsx)(t.h3,{id:"listingcube",children:"%listingCube"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %listingCube As %String;\n"})}),"\n",(0,n.jsx)(t.p,{children:'If we are in "idlist" mode, this is the name of the cube asking for the listing.'}),"\n",(0,n.jsx)(t.h3,{id:"listingtable",children:"%listingTable"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %listingTable As %String;\n"})}),"\n",(0,n.jsx)(t.p,{children:'If we are in "idlist" mode, this is the name of the table containing the list of ids.'}),"\n",(0,n.jsx)(t.h3,{id:"listingkey",children:"%listingKey"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %listingKey As %String;\n"})}),"\n",(0,n.jsx)(t.p,{children:'If we are in "idlist" mode, this is the key value for the table containing the list of ids.'}),"\n",(0,n.jsx)(t.h3,{id:"singleid",children:"%singleId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %singleId As %String;\n"})}),"\n",(0,n.jsx)(t.p,{children:'Id of single record to fetch in "single" mode.'}),"\n",(0,n.jsx)(t.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,n.jsx)(t.h3,{id:"sourcequery",children:"SourceQuery"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'XData SourceQuery [ XMLNamespace = "http://www.intersystems.com/deepsee/connector/query" ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["This optional XData definition defines the sql query used to supply data to this data connector.",(0,n.jsx)(t.br,{}),"\nThe columns selected by this query should match the sourceProperty names in this connector's Output definition."]}),"\n",(0,n.jsx)(t.h3,{id:"output",children:"Output"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'XData Output [ XMLNamespace = "http://www.intersystems.com/deepsee/connector/output" ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"This XData definition defines the DataConnector output specification."}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"supportsidlist-1",children:"%SupportsIdList"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %SupportsIdList() As %Boolean\n"})}),"\n",(0,n.jsx)(t.p,{children:'Test if this connector supports "idlist" mode.'}),"\n",(0,n.jsx)(t.h3,{id:"supportssinglemode",children:"%SupportsSingleMode"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %SupportsSingleMode() As %Boolean\n"})}),"\n",(0,n.jsx)(t.p,{children:'Test if this connector supports "single" mode.'}),"\n",(0,n.jsx)(t.h3,{id:"setmode",children:"%SetMode"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %SetMode(pMode As %String) As %Status\n"})}),"\n",(0,n.jsxs)(t.p,{children:["The operating mode of this connector.",(0,n.jsx)(t.br,{}),'\nOptions are "all" (fetch all records), "idlist" (fetch records within a set of ids).']}),"\n",(0,n.jsx)(t.h3,{id:"setidlist",children:"%SetIdList"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %SetIdList(pTableName As %String, pKey As %String, pCubeName As %String) As %Status\n"})}),"\n",(0,n.jsxs)(t.p,{children:['Set the name of the listing table and value of the key field that contains the list of ids to use in "idlist" mode.',(0,n.jsx)(t.br,{}),"\nA query of the form, SELECT _DSsourceId FROM *pTableName* WHERE _DSqueryKey = *pKey* will return the set of ids to use."]}),"\n",(0,n.jsx)(t.h3,{id:"setsingleid",children:"%SetSingleId"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %SetSingleId(pID As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Set the id of one record to fetch. The Connector must support id values. This is used to fetch one record for updating."}),"\n",(0,n.jsx)(t.h3,{id:"execute",children:"%Execute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %Execute(ByRef pParameters, Output pSC As %Status) As %SQL.StatementResult\n"})}),"\n",(0,n.jsx)(t.p,{children:"This executes the source result set and returns an instance of it to the consumer. This is used to fetch all data from this connector."}),"\n",(0,n.jsx)(t.h3,{id:"getsourceresultset",children:"%GetSourceResultSet"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetSourceResultSet(ByRef pParameters, Output pResultSet) As %Status [ Final, Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the source result set that provides the data for this connector."}),"\n",(0,n.jsx)(t.h3,{id:"ongetsourceresultset",children:"%OnGetSourceResultSet"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnGetSourceResultSet(ByRef pParameters, Output pResultSet) As %Status\n"})}),"\n",(0,n.jsxs)(t.p,{children:["If implemented, this method is responsible for creating an instance of result set that will serve the data for this connector.",(0,n.jsx)(t.br,{}),'\nThis method should test the current value of the %mode property. If %mode is "idlist", the query is responsible for restricting the set of records the ids in the listing table, %listingTable.']}),"\n",(0,n.jsx)(t.h3,{id:"onnextrecord",children:"%OnNextRecord"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnNextRecord(ByRef pSC As %Library.Status = {$$$OK}) As %Library.Integer\n"})}),"\n",(0,n.jsxs)(t.p,{children:["This method is called by the output result set to fetch each record processed by this connector for cases where there is no source result set (if there is a source result set, this method is not called).",(0,n.jsx)(t.br,{}),"\nReturns 0 if there are no more records to fetch.",(0,n.jsx)(t.br,{}),"\nThis method should fill in the properties of the %outputRecord object with the data that is to be returned."]}),"\n",(0,n.jsx)(t.h3,{id:"onprocessrecord",children:"%OnProcessRecord"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnProcessRecord(pRecord As %DeepSee.Connector.ResultSet, Output pSkip As %Boolean = 0) As %Status [ Abstract ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["If implemented, this method is called for each record processed by this connector before it is returned to the consumer.",(0,n.jsx)(t.br,{}),"\npRecord is the current record.",(0,n.jsx)(t.br,{}),"\npSkip, if true, indicates that this record should be skipped."]}),"\n",(0,n.jsx)(t.h3,{id:"updaterecord",children:"%UpdateRecord"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %UpdateRecord(pID As %String, ByRef pValues, Output pMessage As %String) As %Status [ Final ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Update a particular record via the data connector. The actual work is done via the %UpdateRecord callback method, which is implemented within a subclass."}),"\n",(0,n.jsx)(t.h3,{id:"onupdaterecord",children:"%OnUpdateRecord"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %OnUpdateRecord(pID As %String, ByRef pValues, Output pMessage As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Implement this method in order to update a particular record via the data connector."}),"\n",(0,n.jsx)(t.h3,{id:"getresultsetclass",children:"%GetResultSetClass"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetResultSetClass() As %String [ CodeMode = objectgenerator, Final ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the class name of the output result set associated with this connector."}),"\n",(0,n.jsx)(t.h3,{id:"getconnectorinfo",children:"%GetConnectorInfo"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetConnectorInfo(Output pInfo As %List) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %GenerateConnector ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Return an array containing information about this connector. This takes the form:",(0,n.jsx)(t.br,{}),"\npInfo = $LB(name,displayName)"]}),"\n",(0,n.jsx)(t.h3,{id:"getsqltext",children:"%GetSQLText"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetSQLText() As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GenerateConnector ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the SQL statement defined by the SourceQuery XData block, if any."}),"\n",(0,n.jsx)(t.h3,{id:"getpropertyinfo",children:"%GetPropertyInfo"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetPropertyInfo(Output pInfo As %List) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %GenerateConnector ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Return an array containing information on the properties of this connector. This takes the form:",(0,n.jsx)(t.br,{}),"\npInfo(n) = $LB(name,displayName,type,idKey)",(0,n.jsx)(t.br,{}),"\nThis is used by utilities to discover information about this connector."]}),"\n",(0,n.jsx)(t.h3,{id:"ongetpropertyinfo",children:"%OnGetPropertyInfo"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %OnGetPropertyInfo(ByRef pInfo As %String) As %Status [ Abstract, Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"If implemented, this method is called by the %GetPropertyInfo method."}),"\n",(0,n.jsx)(t.h3,{id:"getkeyfields",children:"%GetKeyFields"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetKeyFields(Output pKeys As %String) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %GenerateConnector ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Return an array containing information on the id key field(s) for this connector, if any. This takes the form:",(0,n.jsx)(t.br,{}),"\npKeys(FieldName) = SourceField",(0,n.jsx)(t.br,{}),"\nThis is used by utilities to discover information about this connector."]}),"\n",(0,n.jsx)(t.h3,{id:"generateconnector",children:"%GenerateConnector"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GenerateConnector() As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %OnProcessRecord, Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Process the model for this connector and create code and additional classes."}),"\n",(0,n.jsx)(t.h3,{id:"print",children:"%Print"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %Print(ByRef pParameters, pMaxRows As %Integer = 100) As %Status\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Diagnostic method.",(0,n.jsx)(t.br,{}),"\nCreate, execute, and display the data provided by this connector to the terminal.",(0,n.jsx)(t.br,{}),'\npParameters is an array of parameters passed along to the %Execute method. pMaxRows, if not "", is the maximum number of records to display. The default is 100.']}),"\n",(0,n.jsx)(t.h3,{id:"getversion",children:"%GetVersion"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetVersion() As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GetPropertyInfo, Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return a checksum based on the current definition of this connector. This allows consumers of this connector to detect if there have been structural changes to it."}),"\n",(0,n.jsx)(t.h3,{id:"getrestrictionclause",children:"%GetRestrictionClause"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetRestrictionClause(Output pClause As %String) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return an SQL expression that tests the current idlist restrictions, if any. This expression can be used within an SQL WHERE statement. This is used to substitute any $$$RESTRICT values within a connector SQL statement."}),"\n",(0,n.jsx)(t.h3,{id:"onpage",children:"OnPage"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod OnPage() As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Draw the test page."}),"\n",(0,n.jsx)(t.h3,{id:"tojson",children:"%ToJSON"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %ToJSON(ByRef pParameters) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Write out all data in JSON format."})]})}function l(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>o,x:()=>a});var n=s(96540);const r={},i=n.createContext(r);function o(e){const t=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:o(e.components),n.createElement(i.Provider,{value:t},e.children)}}}]);