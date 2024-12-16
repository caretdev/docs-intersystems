"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[4563],{3167:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>i,default:()=>c,frontMatter:()=>l,toc:()=>a});var s=t(74848),r=t(28453);const l={pagination_prev:null,pagination_next:null},i="%Library.ResultSet",a=[{value:"Properties",id:"properties",level:2},{value:"%Metadata",id:"metadata",level:3},{value:"ClassName",id:"classname",level:3},{value:"QueryName",id:"queryname",level:3},{value:"RuntimeMode",id:"runtimemode",level:3},{value:"QHandle",id:"qhandle",level:3},{value:"HasInfo",id:"hasinfo",level:3},{value:"HasExtInfo",id:"hasextinfo",level:3},{value:"ParamInfo",id:"paraminfo",level:3},{value:"ColInfo",id:"colinfo",level:3},{value:"ColExtInfo",id:"colextinfo",level:3},{value:"IdInfo",id:"idinfo",level:3},{value:"AtEnd",id:"atend",level:3},{value:"Row",id:"row",level:3},{value:"StatementType",id:"statementtype",level:3},{value:"IsOpened",id:"isopened",level:3},{value:"ColIndex",id:"colindex",level:3},{value:"Data",id:"data",level:3},{value:"Column",id:"column",level:3},{value:"NextColumn",id:"nextcolumn",level:3},{value:"Methods",id:"methods",level:2},{value:"%MetadataGet",id:"metadataget",level:3},{value:"%ObjectsGet",id:"objectsget",level:3},{value:"RuntimeModeSet",id:"runtimemodeset",level:3},{value:"RuntimeModeGet",id:"runtimemodeget",level:3},{value:"%DispatchGetProperty",id:"dispatchgetproperty",level:3},{value:"ClassNameSet",id:"classnameset",level:3},{value:"%OnClose",id:"onclose",level:3},{value:"%OnNew",id:"onnew",level:3},{value:"%ResultColumnCountGet",id:"resultcolumncountget",level:3},{value:"Prepare",id:"prepare",level:3},{value:"Execute",id:"execute",level:3},{value:"%Execute",id:"execute-1",level:3},{value:"Execute16",id:"execute16",level:3},{value:"%SendODBC",id:"sendodbc",level:3},{value:"%SendDelimitedRows",id:"senddelimitedrows",level:3},{value:"Next",id:"next",level:3},{value:"%Next",id:"next-1",level:3},{value:"GetCachedQueryName",id:"getcachedqueryname",level:3},{value:"GetData",id:"getdata",level:3},{value:"%GetData",id:"getdata-1",level:3},{value:"Get",id:"get",level:3},{value:"%Get",id:"get-1",level:3},{value:"GetDataByName",id:"getdatabyname",level:3},{value:"GetObject",id:"getobject",level:3},{value:"Close",id:"close",level:3},{value:"%CloseCursor",id:"closecursor",level:3},{value:"GetInfo",id:"getinfo",level:3},{value:"GetODBCInfo",id:"getodbcinfo",level:3},{value:"SetIdInfo",id:"setidinfo",level:3},{value:"GetColumnCount",id:"getcolumncount",level:3},{value:"GetColumnName",id:"getcolumnname",level:3},{value:"GetColumnExtInfo",id:"getcolumnextinfo",level:3},{value:"GetColumnHeader",id:"getcolumnheader",level:3},{value:"GetColumnType",id:"getcolumntype",level:3},{value:"GetParamCount",id:"getparamcount",level:3},{value:"GetParamName",id:"getparamname",level:3},{value:"GetStatementType",id:"getstatementtype",level:3},{value:"QueryIsValid",id:"queryisvalid",level:3},{value:"ContainsId",id:"containsid",level:3},{value:"GetExtent",id:"getextent",level:3},{value:"Test",id:"test",level:3},{value:"%PrepareMetaData",id:"preparemetadata",level:3}];function d(e){const n={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",strong:"strong",table:"table",tbody:"tbody",td:"td",th:"th",thead:"thead",tr:"tr",ul:"ul",...(0,r.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"libraryresultset",children:"%Library.ResultSet"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %Library.ResultSet Extends %AbstractResultSet [ ClientName = ResultSetOld, Deprecated, OdbcType = RESULTSET, System = 2 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"dynamic SQL is the preferred mechanism for preparing and executing dynamic SQL statements. Please refer to %SQL.Statement for more information. %Library.ResultSet continues to be used and supported."}),"\n",(0,s.jsxs)(n.p,{children:["The %ResultSet class provides a way to use the results of class queries from within a ",(0,s.jsx)(n.em,{children:"ObjectScript"})," application. It is similar in operation to the ",(0,s.jsx)(n.strong,{children:"ResultSet"})," objects provided with the ActiveX and Java bindings."]}),"\n",(0,s.jsx)(n.p,{children:"You can use a %ResultSet object as follows:"}),"\n",(0,s.jsxs)(n.p,{children:["Note you can bind a %ResultSet object to a query by either a) setting the ClassName and QueryName properties or b) passing a string containing the class name and query name (separated by a ",(0,s.jsx)(n.strong,{children:":"}),") to the ",(0,s.jsx)(n.strong,{children:"%New"})," method: ",(0,s.jsx)(n.code,{children:'; Display the results of the Person class\' ByName query to the console. set rs=##class(%ResultSet).%New() set rs.ClassName="Sample.Person" set rs.QueryName="ByName" ; Alternatively, you can bind the result set object to a query ; set rs=##class(%ResultSet).%New("Sample.Person:ByName") set sc=rs.Execute("a") If $$$ISERR(sc) Do DisplayError^%apiOBJ(sc) Quit while rs.%Next() { do rs.%Print() }'})," ",(0,s.jsx)(n.strong,{children:"Dynamic SQL"}),": You can use the %ResultSet class to execute dynamic SQL queries using the system-provided %DynamicQuery:SQL query. In this case, use the Prepare method to supply the text of the query. For example: ",(0,s.jsx)(n.code,{children:'Set result=##class(%ResultSet).%New("%DynamicQuery:SQL") Set sc=result.Prepare("SELECT %ID, Name, Salary FROM Sample.Employee WHERE Salary > ?") If $$$ISERR(sc) Do DisplayError^%apiOBJ(sc) Quit Set sc=result.Execute(10000) If $$$ISERR(sc) Do DisplayError^%apiOBJ(sc) Quit While result.Next(.sc) { If $$$ISERR(sc) Quit Write result.Data("Name"),result.Data("Salary"),! } If $$$ISERR(sc) Do DisplayError^%apiOBJ(sc) Quit'})," Dynamic SQL queries are cached in the same query cache as used by InterSystems IRIS ODBC and JDBC. This means that repeated calls to the same dynamic SQL query do not incur any additional query preparation and optimization overhead. You can view and manage this cache using the ",(0,s.jsx)(n.em,{children:"SQL Manager"}),"."]}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"metadata",children:"%Metadata"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property %Metadata As %String [ MultiDimensional ];\n"})}),"\n",(0,s.jsx)(n.p,{children:"xDBC metadata - for compatibility with new cached result sets."}),"\n",(0,s.jsx)(n.h3,{id:"classname",children:"ClassName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property ClassName As %RawString;\n"})}),"\n",(0,s.jsx)(n.p,{children:"The name of the class containing the query to run."}),"\n",(0,s.jsx)(n.h3,{id:"queryname",children:"QueryName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property QueryName As %RawString;\n"})}),"\n",(0,s.jsx)(n.p,{children:"The name of the query to run."}),"\n",(0,s.jsx)(n.h3,{id:"runtimemode",children:"RuntimeMode"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property RuntimeMode As %String;\n"})}),"\n",(0,s.jsx)(n.p,{children:"Use this property to set the SQL runtime mode for the query to be executed. Setting the runtime mode for this ResultSet does not permanently change the $zu(115,5) value. Possible values mode are:"}),"\n",(0,s.jsxs)(n.ul,{children:["\n",(0,s.jsx)(n.li,{children:"0 for LOGICAL mode."}),"\n",(0,s.jsx)(n.li,{children:"1 for ODBC mode."}),"\n",(0,s.jsx)(n.li,{children:"2 for DISPLAY mode."}),"\n",(0,s.jsx)(n.li,{children:'"" to use the process wide $zu(115,5) value.'}),"\n"]}),"\n",(0,s.jsx)(n.h3,{id:"qhandle",children:"QHandle"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property QHandle As %String [ MultiDimensional, Private ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"hasinfo",children:"HasInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property HasInfo As %String [ InitialExpression = 0, Private ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"hasextinfo",children:"HasExtInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property HasExtInfo As %String [ InitialExpression = 0, Private ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"paraminfo",children:"ParamInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property ParamInfo As %String [ Private ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"colinfo",children:"ColInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property ColInfo As %String [ Private ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"colextinfo",children:"ColExtInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property ColExtInfo As %String [ Private ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"idinfo",children:"IdInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property IdInfo As %String [ Private ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"atend",children:"AtEnd"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property AtEnd As %String [ InitialExpression = 0, Private ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"row",children:"Row"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property Row As %String [ MultiDimensional, Private ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"statementtype",children:"StatementType"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property StatementType As %String [ Private ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"isopened",children:"IsOpened"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property IsOpened As %String [ InitialExpression = 0, Private ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"colindex",children:"ColIndex"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property ColIndex As %String [ MultiDimensional, Private ];\n"})}),"\n",(0,s.jsx)(n.h3,{id:"data",children:"Data"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property Data As %String [ MultiDimensional ];\n"})}),"\n",(0,s.jsxs)(n.p,{children:["Used to store the data returned from the resultset by column name. This can be accessed directly for better performance than the Get and GetDataByName methods. For example: ",(0,s.jsx)(n.code,{children:'; This slower code While result.Next() { Write result.Get("Name"),result.Get("Salary"),! } ; Becomes this faster code While result.Next() { Write $get(result.Data("Name")),$get(result.Data("Salary")),! }'})," Note that because this 'Data' property is multidimensional, if there is no such column name as 'Salary' you will get an UNDEFINED error without the $get around it. If there are two columns with the same name in the result set then the second one will be the one referenced by the 'Data' property. If you need to refer to both of them, use the GetData and give the position of the column you want."]}),"\n",(0,s.jsx)(n.h3,{id:"column",children:"Column"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property Column As %String [ Internal, MultiDimensional ];\n"})}),"\n",(0,s.jsx)(n.p,{children:"Duplicate of Data but subscripted by column number instead of name. This is used only by %SendOdbc to maintain values of columns orphaned by a full buffer. This data is not maintained for use for any other purpose and is not part of the public interface."}),"\n",(0,s.jsx)(n.h3,{id:"nextcolumn",children:"NextColumn"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property NextColumn As %Integer [ InitialExpression = 0, Private ];\n"})}),"\n",(0,s.jsx)(n.p,{children:"This is the pointer to the next Column to be processed by %SendODBC. When %SendODBC is next called, this will be the first column to be sent. This value is zero if no data is unprocessed, non zero if there is something to process It is set to 1 on every Next() call that returns a valid row."}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"metadataget",children:"%MetadataGet"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %MetadataGet() As %String\n"})}),"\n",(0,s.jsx)(n.h3,{id:"objectsget",children:"%ObjectsGet"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ObjectsGet() As %String [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"%Objects is a serialized collection of object specifications that include the name of the column whose type class is a subclass of %SwizzleObject, the name of the class and the call to export the object directly to the wire. This property is not meant for public use. It is used by %SendObjects."}),"\n",(0,s.jsx)(n.h3,{id:"runtimemodeset",children:"RuntimeModeSet"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method RuntimeModeSet(mode As %String) As %Status\n"})}),"\n",(0,s.jsx)(n.h3,{id:"runtimemodeget",children:"RuntimeModeGet"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method RuntimeModeGet() As %String [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"dispatchgetproperty",children:"%DispatchGetProperty"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %DispatchGetProperty(pProperty As %String(MAXLEN=255))\n"})}),"\n",(0,s.jsx)(n.h3,{id:"classnameset",children:"ClassNameSet"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method ClassNameSet(class As %String) As %Status\n"})}),"\n",(0,s.jsx)(n.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status [ Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %OnNew(initvalue As %String) As %Status [ Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"resultcolumncountget",children:"%ResultColumnCountGet"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ResultColumnCountGet() As %Integer [ CodeMode = call ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"prepare",children:"Prepare"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Prepare(args...) As %Status\n"})}),"\n",(0,s.jsxs)(n.p,{children:["Use this method with ",(0,s.jsx)(n.strong,{children:"dynamic"})," queries to provide the query to be executed. In the case of the %DynamicQuery:SQL query, p1 is a string containing an SQL query. The query may contain parameters represented by ",(0,s.jsx)(n.strong,{children:"?"})," characters within the query. The values of any parameters are supplied via the Execute method. For example: ",(0,s.jsx)(n.code,{children:'Set result=##class(%ResultSet).%New("%DynamicQuery:SQL") Do result.Prepare("SELECT Name,City FROM Person WHERE Name %STARTSWITH ? AND City = ?") Do result.Execute("A","Boston") While result.Next() { Write result.Data("Name"),result.Data("City"),! }'})]}),"\n",(0,s.jsx)(n.h3,{id:"execute",children:"Execute"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Execute(args...) As %Status [ PublicList = (qHandle, args) ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Executes the current query."}),"\n",(0,s.jsx)(n.p,{children:"The arguments p1... supply the value of any parameters the query may have."}),"\n",(0,s.jsx)(n.p,{children:"This method sets the %SQLCODE property if an error is reported. The value of %SQLCODE is computed from the status value and is not set to the value of the public SQLCODE variable. The %Message, %ROWCOUNT and %ROWID properties are set to the values of the SQL public variables %msg, %ROWCOUNT and %ROWID. If those public variables were not set by the query's Execute method and those variables were defined prior to calling Execute then the properties will contain the prior values of those variables. It is the caller's responsibility to initialize and manage these public variables."}),"\n",(0,s.jsx)(n.h3,{id:"execute-1",children:"%Execute"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %Execute(args...) As %Library.Status [ CodeMode = call ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"alias for new result set interface"}),"\n",(0,s.jsx)(n.h3,{id:"execute16",children:"Execute16"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Execute16(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16) As %Status [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Version of Execute() that takes up to 16 arguments instead of a variable number of arguments. Provides compatibility with C++ binding and CacheActiveX, which do not fully support methods with a variable number of arguments. For internal use only."}),"\n",(0,s.jsx)(n.h3,{id:"sendodbc",children:"%SendODBC"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %SendODBC() As %Integer\n"})}),"\n",(0,s.jsx)(n.p,{children:"Fetch and send a series of rows for the ODBC/JDBC server. For internal use only."}),"\n",(0,s.jsx)(n.h3,{id:"senddelimitedrows",children:"%SendDelimitedRows"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Method %SendDelimitedRows(pMaxRows As %Integer = 0, pDelimiter As %String = "", ByRef pReturnCount As %Integer) As %Status\n'})}),"\n",(0,s.jsx)(n.p,{children:"Fetch and send a series of rows for continuous query client. For internal use only."}),"\n",(0,s.jsx)(n.h3,{id:"next",children:"Next"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Next(ByRef sc As %Status) As %Integer [ PublicList = (Row, AtEnd, SQLCODE) ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Advance the result set cursor to the next row. Returns 0 if the cursor is at the end of the result set."}),"\n",(0,s.jsx)(n.h3,{id:"next-1",children:"%Next"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %Next(ByRef sc As %Library.Status) As %Library.Integer [ CodeMode = call ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"alias for new result set interface"}),"\n",(0,s.jsx)(n.h3,{id:"getcachedqueryname",children:"GetCachedQueryName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetCachedQueryName() As %Library.String [ Internal ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Get the name of the cached query routine for the current result set. For internal use only. This is called from the SMP page %CSP.Util.SQLQueryPane to display the cached query name on the Execute Query page"}),"\n",(0,s.jsx)(n.h3,{id:"getdata",children:"GetData"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetData(n As %Integer) As %String [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Returns the value of column n in the current row of the result set."}),"\n",(0,s.jsx)(n.h3,{id:"getdata-1",children:"%GetData"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetData(colnbr As %Integer = 0) As %Library.String\n"})}),"\n",(0,s.jsx)(n.p,{children:"alias for new result set interface"}),"\n",(0,s.jsx)(n.h3,{id:"get",children:"Get"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Get(name As %String) As %String [ CodeMode = expression, ProcedureBlock = 1 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Returns the value of the column with the name name in the current row of the result set."}),"\n",(0,s.jsxs)(n.p,{children:["If name is not a valid column name, this method returns an empty string.",(0,s.jsx)(n.br,{}),"\nUsing the Data multidimensional property to access the fields is faster than using this method call."]}),"\n",(0,s.jsx)(n.h3,{id:"get-1",children:"%Get"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %Get(name As %String) As %String\n"})}),"\n",(0,s.jsx)(n.h3,{id:"getdatabyname",children:"GetDataByName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetDataByName(name As %String) As %String [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Returns the value of the column with the name name in the current row of the result set."}),"\n",(0,s.jsx)(n.p,{children:"If name is not a valid column name, this method returns an empty string."}),"\n",(0,s.jsx)(n.p,{children:"Note: this method has been superceded by the equivalent Get method."}),"\n",(0,s.jsx)(n.h3,{id:"getobject",children:"GetObject"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetObject() As %RegisteredObject [ ProcedureBlock = 1 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"If this query contains an object Id then this method opens an object with this Id and returns the object reference. Otherwise it returns a null object reference."}),"\n",(0,s.jsx)(n.h3,{id:"close",children:"Close"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method Close() As %Status [ PublicList = (Row, SQLCODE) ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Closes the current result set cursor."}),"\n",(0,s.jsx)(n.h3,{id:"closecursor",children:"%CloseCursor"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %CloseCursor() As %Status [ CodeMode = call ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"alias for new result set interface"}),"\n",(0,s.jsx)(n.h3,{id:"getinfo",children:"GetInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetInfo(extoption) As %Status [ Private ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"getodbcinfo",children:"GetODBCInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetODBCInfo(ByRef colinfo As %List, ByRef parminfo As %List) As %Status\n"})}),"\n",(0,s.jsx)(n.h3,{id:"setidinfo",children:"SetIdInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method SetIdInfo(idnumber As %Integer, extent As %String) As %Status\n"})}),"\n",(0,s.jsx)(n.p,{children:"Set the location of the ID in this query and the extent. The idnumber is the column number of the ID and the extent is the class name the id is from. Note, you must call this after the Execute method is called or the data will be overwritten."}),"\n",(0,s.jsx)(n.h3,{id:"getcolumncount",children:"GetColumnCount"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetColumnCount() As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Returns the number of columns in the result set."}),"\n",(0,s.jsx)(n.h3,{id:"getcolumnname",children:"GetColumnName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetColumnName(n As %Integer) As %String [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Returns the name of column n in the result set."}),"\n",(0,s.jsx)(n.h3,{id:"getcolumnextinfo",children:"GetColumnExtInfo"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetColumnExtInfo(n As %Integer) As %String [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This method accepts the column number as an input parameter and will return a $list containing the class name and property name of the property corresponding to the column in the query. If the column is not based on a property then the returned information will be an empty $list."}),"\n",(0,s.jsx)(n.h3,{id:"getcolumnheader",children:"GetColumnHeader"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetColumnHeader(n As %Integer) As %String\n"})}),"\n",(0,s.jsx)(n.p,{children:"Returns the column header for column n in the result set."}),"\n",(0,s.jsx)(n.h3,{id:"getcolumntype",children:"GetColumnType"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetColumnType(n As %Integer) As %Integer\n"})}),"\n",(0,s.jsx)(n.p,{children:"Returns the type of column n in the result set where type is an integer associated with the client datatype. If the type cannot be determined, 0 (zero) is returned."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"1"}),(0,s.jsx)(n.th,{children:"BINARY"})]})}),(0,s.jsxs)(n.tbody,{children:[(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"2"}),(0,s.jsx)(n.td,{children:"DATE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"3"}),(0,s.jsx)(n.td,{children:"DOUBLE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"4"}),(0,s.jsx)(n.td,{children:"HANDLE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"5"}),(0,s.jsx)(n.td,{children:"INTEGER"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"6"}),(0,s.jsx)(n.td,{children:"LIST"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"7"}),(0,s.jsx)(n.td,{children:"LONGVARCHAR"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"8"}),(0,s.jsx)(n.td,{children:"TIME"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"9"}),(0,s.jsx)(n.td,{children:"TIMESTAMP"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"10"}),(0,s.jsx)(n.td,{children:"VARCHAR"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"11"}),(0,s.jsx)(n.td,{children:"STATUS"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"12"}),(0,s.jsx)(n.td,{children:"BINARYSTREAM"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"13"}),(0,s.jsx)(n.td,{children:"CHARACTERSTREAM"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"14"}),(0,s.jsx)(n.td,{children:"NUMERIC"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"15"}),(0,s.jsx)(n.td,{children:"CURRENCY"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"16"}),(0,s.jsx)(n.td,{children:"BOOLEAN"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"17"}),(0,s.jsx)(n.td,{children:"OID"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"18"}),(0,s.jsx)(n.td,{children:"BIGINT"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"19"}),(0,s.jsx)(n.td,{children:"FDATE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"20"}),(0,s.jsx)(n.td,{children:"FTIMESTAMP"})]})]})]}),"\n",(0,s.jsx)(n.h3,{id:"getparamcount",children:"GetParamCount"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetParamCount() As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Returns the number of input parameters for the current query."}),"\n",(0,s.jsx)(n.h3,{id:"getparamname",children:"GetParamName"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetParamName(n As %Integer) As %String [ CodeMode = expression, ProcedureBlock = 1 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Returns the name of input parameter n for the current query."}),"\n",(0,s.jsx)(n.h3,{id:"getstatementtype",children:"GetStatementType"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetStatementType() As %String [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Returns the SQL statement type of the query if available. Statement type numbers are defined as:"}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,s.jsxs)(n.table,{children:[(0,s.jsx)(n.thead,{children:(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.th,{children:"1"}),(0,s.jsx)(n.th,{children:"SELECT"})]})}),(0,s.jsxs)(n.tbody,{children:[(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"2"}),(0,s.jsx)(n.td,{children:"INSERT (also 'INSERT OR UPDATE')"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"3"}),(0,s.jsx)(n.td,{children:"UPDATE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"4"}),(0,s.jsx)(n.td,{children:"DELETE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"5"}),(0,s.jsx)(n.td,{children:"COMMIT"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"6"}),(0,s.jsx)(n.td,{children:"ROLLBACK"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"7"}),(0,s.jsx)(n.td,{children:"GRANT"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"8"}),(0,s.jsx)(n.td,{children:"REVOKE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"9"}),(0,s.jsx)(n.td,{children:"CREATE TABLE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"10"}),(0,s.jsx)(n.td,{children:"ALTER TABLE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"11"}),(0,s.jsx)(n.td,{children:"DROP TABLE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"12"}),(0,s.jsx)(n.td,{children:"CREATE VIEW"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"13"}),(0,s.jsx)(n.td,{children:"ALTER VIEW"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"14"}),(0,s.jsx)(n.td,{children:"DROP VIEW"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"15"}),(0,s.jsx)(n.td,{children:"CREATE INDEX"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"16"}),(0,s.jsx)(n.td,{children:"ALTER INDEX (Not supported)"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"17"}),(0,s.jsx)(n.td,{children:"DROP INDEX"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"18"}),(0,s.jsx)(n.td,{children:"CREATE ROLE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"19"}),(0,s.jsx)(n.td,{children:"DROP ROLE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"20"}),(0,s.jsx)(n.td,{children:"SET TRANSACTION"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"21"}),(0,s.jsx)(n.td,{children:"START TRANSACTION"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"22"}),(0,s.jsx)(n.td,{children:"%INTRANSACTION"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"23"}),(0,s.jsx)(n.td,{children:"%BEGTRANS (Alias for START TRANSACTION)"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"24"}),(0,s.jsx)(n.td,{children:"%INTRANS (Alias for %INTRANSACTION)"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"25"}),(0,s.jsx)(n.td,{children:"GET (Not supported)"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"26"}),(0,s.jsx)(n.td,{children:"SET OPTION"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"27"}),(0,s.jsx)(n.td,{children:"STATISTICS (UPDATE STATISTICS, not supported))"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"28"}),(0,s.jsx)(n.td,{children:"%CHECKPRIV"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"29"}),(0,s.jsx)(n.td,{children:"CREATE USER"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"30"}),(0,s.jsx)(n.td,{children:"ALTER USER"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"31"}),(0,s.jsx)(n.td,{children:"DROP USER"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"32"}),(0,s.jsx)(n.td,{children:"%CHECKPRIV (SQL Admin Privilege)"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"33"}),(0,s.jsx)(n.td,{children:"GRANT (SQL Admin Privilege)"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"34"}),(0,s.jsx)(n.td,{children:"REVOKE (SQL Admin Privilege)"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"35"}),(0,s.jsx)(n.td,{children:"CREATE FUNCTION"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"36"}),(0,s.jsx)(n.td,{children:"CREATE METHOD"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"37"}),(0,s.jsx)(n.td,{children:"CREATE PROCEDURE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"38"}),(0,s.jsx)(n.td,{children:"CREATE QUERY"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"39"}),(0,s.jsx)(n.td,{children:"DROP FUNCTION"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"40"}),(0,s.jsx)(n.td,{children:"DROP METHOD"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"41"}),(0,s.jsx)(n.td,{children:"DROP PROCEDURE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"42"}),(0,s.jsx)(n.td,{children:"DROP QUERY"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"43"}),(0,s.jsx)(n.td,{children:"CREATE TRIGGER"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"44"}),(0,s.jsx)(n.td,{children:"DROP TRIGGER"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"45"}),(0,s.jsx)(n.td,{children:"CALL"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"46"}),(0,s.jsx)(n.td,{children:"SAVEPOINT"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"47"}),(0,s.jsx)(n.td,{children:"LOCK TABLE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"48"}),(0,s.jsx)(n.td,{children:"UNLOCK TABLE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"49"}),(0,s.jsx)(n.td,{children:"CREATE DATABASE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"50"}),(0,s.jsx)(n.td,{children:"DROP DATABASE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:"51"}),(0,s.jsx)(n.td,{children:"USE DATABASE"})]}),(0,s.jsxs)(n.tr,{children:[(0,s.jsx)(n.td,{children:'""'}),(0,s.jsx)(n.td,{children:"Anything not list above"})]})]})]}),"\n",(0,s.jsx)(n.h3,{id:"queryisvalid",children:"QueryIsValid"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method QueryIsValid() As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,s.jsxs)(n.p,{children:["Returns true (1) if the ClassName and QueryName properties of this ",(0,s.jsx)(n.strong,{children:"%ResultSet"})," object refer to a valid class query. Otherwise it returns false (0)."]}),"\n",(0,s.jsx)(n.h3,{id:"containsid",children:"ContainsId"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method ContainsId() As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"If the current query contains an object Id (based on the CONTAINSID parameter being set), return the column position of the object Id. Otherwise return 0."}),"\n",(0,s.jsx)(n.h3,{id:"getextent",children:"GetExtent"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method GetExtent() As %String [ CodeMode = expression ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"The name of the extent that this query will return Id values from (based on the EXTENT parameter being set). Only returns a value if the query contains Id values."}),"\n",(0,s.jsx)(n.h3,{id:"test",children:"Test"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod Test(ClassName As %String, QueryName As %String, args...)\n"})}),"\n",(0,s.jsxs)(n.p,{children:["This method is deprecated; use ",(0,s.jsx)(n.strong,{children:"RunQuery"}),"."]}),"\n",(0,s.jsx)(n.h3,{id:"preparemetadata",children:"%PrepareMetaData"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod %PrepareMetaData(pQueryId As %String(MAXLEN=""), ByRef returnError As %SYSTEM.Error = "", importPackages As %RawString = "") As %ResultSet.MetaData\n'})}),"\n",(0,s.jsx)(n.p,{children:"%PrepareMetaData is similar to %Prepare except that no result set is instantiated. This method returns a %ResultSet.MetaData object. Be aware that the implementation of this method might cause the result set to be instantiated but that is up to the result set class itself and no result set is actually returned by this method - only metadata. queryId This can be the concrete subclass of %IResultSet that implements the desired query. For dynamic cached results this value is generally the query text that can be parsed, a hashed value computed and the cached result implementation class looked up in the query cache index.  can also be a  or . If it is a  then the result set returned is an instance of %Library.ResultSet that is bound to that query. If it is the name of a method Then that method is called, passing %args... to the method, and the first result set found in the context object (%sqlcontext) is returned. returnError If an error occurs this is returned by reference and is a %SYSTEM.Error object with properties set to describe information about the error. %returnError.Status contains the %Status value. importPackages This is a comma delimited list of packages to import. This is only relevant if the result set implementation is generated and the query source might include unqualified names. The import packages list is used to resolve package/schema names for unqualified names."})]})}function c(e={}){const{wrapper:n}={...(0,r.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(d,{...e})}):d(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>i,x:()=>a});var s=t(96540);const r={},l=s.createContext(r);function i(e){const n=s.useContext(l);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),s.createElement(l.Provider,{value:n},e.children)}}}]);