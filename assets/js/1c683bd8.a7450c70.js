"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[88486],{72748:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>r,default:()=>d,frontMatter:()=>a,toc:()=>l});var i=t(74848),n=t(28453);const a={pagination_prev:null,pagination_next:null},r="Config.SQL",l=[{value:"Properties",id:"properties",level:2},{value:"AdaptiveMode",id:"adaptivemode",level:3},{value:"AllowRowIDUpdate",id:"allowrowidupdate",level:3},{value:"ANSIPrecedence",id:"ansiprecedence",level:3},{value:"AutoParallel",id:"autoparallel",level:3},{value:"AutoParallelThreshold",id:"autoparallelthreshold",level:3},{value:"BiasQueriesAsOutlier",id:"biasqueriesasoutlier",level:3},{value:"Comment",id:"comment",level:3},{value:"DBMSSecurity",id:"dbmssecurity",level:3},{value:"DDLDefineBitmapExtent",id:"ddldefinebitmapextent",level:3},{value:"DDLFinal",id:"ddlfinal",level:3},{value:"DDLNo30",id:"ddlno30",level:3},{value:"DDLNo201",id:"ddlno201",level:3},{value:"DDLNo307",id:"ddlno307",level:3},{value:"DDLNo311",id:"ddlno311",level:3},{value:"DDLNo315",id:"ddlno315",level:3},{value:"DDLNo324",id:"ddlno324",level:3},{value:"DDLNo333",id:"ddlno333",level:3},{value:"DDLSQLOnlyCompile",id:"ddlsqlonlycompile",level:3},{value:"DDLUseExtentSet",id:"ddluseextentset",level:3},{value:"DDLUseSequence",id:"ddlusesequence",level:3},{value:"DefaultSchema",id:"defaultschema",level:3},{value:"DelimitedIds",id:"delimitedids",level:3},{value:"DropDelete",id:"dropdelete",level:3},{value:"ECPSync",id:"ecpsync",level:3},{value:"ExtrinsicFunctions",id:"extrinsicfunctions",level:3},{value:"FastDistinct",id:"fastdistinct",level:3},{value:"IdKey",id:"idkey",level:3},{value:"IdTrxFrom",id:"idtrxfrom",level:3},{value:"IdTrxTo",id:"idtrxto",level:3},{value:"LockThreshold",id:"lockthreshold",level:3},{value:"LockTimeout",id:"locktimeout",level:3},{value:"ODBCVarcharMaxlen",id:"odbcvarcharmaxlen",level:3},{value:"ParameterSampling",id:"parametersampling",level:3},{value:"ClientMaxIdleTime",id:"clientmaxidletime",level:3},{value:"QueryProcedures",id:"queryprocedures",level:3},{value:"ReferentialChecks",id:"referentialchecks",level:3},{value:"RTPC",id:"rtpc",level:3},{value:"SaveMAC",id:"savemac",level:3},{value:"TCPKeepAlive",id:"tcpkeepalive",level:3},{value:"TimePrecision",id:"timeprecision",level:3},{value:"TODATEDefaultFormat",id:"todatedefaultformat",level:3},{value:"Methods",id:"methods",level:2},{value:"Load",id:"load",level:3},{value:"%OnValidateObject",id:"onvalidateobject",level:3}];function o(e){const s={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,n.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(s.header,{children:(0,i.jsx)(s.h1,{id:"configsql",children:"Config.SQL"})}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Class Config.SQL Extends (%Persistent, Config.CommonSingleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]\n"})}),"\n",(0,i.jsxs)(s.p,{children:["This class allows you to modify and view the [SQL] section of the CPF file through programatic APIs. While properties are usually modified through the System Management portal, there may be some occasion where modifying them through the API's is best for your system. In all the Config methods, if you do not specify the CPFFile parameter, the currently active CPF file is used. If you wish to modify a CPF file which is not the currently active one, then specify the CPFFile you wish to modify in the method call.",(0,i.jsx)(s.br,{}),"\nThe Flags parameter does not normally need to be specified; the defaults are usually sufficient for most cases.",(0,i.jsx)(s.br,{}),"\nYou can use either the provided API's (Get/Modify) to modify the properties by passing in the correct parameters, or use Object syntax to open and directly manipulate the config objects."]}),"\n",(0,i.jsx)(s.p,{children:"EXAMPLE:"}),"\n",(0,i.jsxs)(s.p,{children:['; Use class methods to modify properties %SYS>s Status=##Class(Config.SQL).Get(.Properties) %SYS>i \'Status w !,"Error="',(0,i.jsx)(s.em,{children:'$SYSTEM.Status.GetErrorText(Status) %SYS>zw Properties("TCPKeepAlive") Properties("TCPKeepAlive")=300 %SYS>s Properties("TCPKeepAlive")=200 %SYS>s Status=##Class(Config.SQL).Modify(.Properties) %SYS>i \'Status w !,"Error="'}),'$SYSTEM.Status.GetErrorText(Status) ; Now use Objects to modify properties %SYS>s Obj=##Class(Config.SQL).Open() %SYS>w Obj.TCPKeepAlive 200 %SYS>s Obj.TCPKeepAlive=300 %SYS>s Status=Obj.%Save() %SYS>i \'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)']}),"\n",(0,i.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(s.h3,{id:"adaptivemode",children:"AdaptiveMode"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property AdaptiveMode As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Enable Adaptive mode (RTPC and automatic tuning)"}),"\n",(0,i.jsx)(s.h3,{id:"allowrowidupdate",children:"AllowRowIDUpdate"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property AllowRowIDUpdate As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsxs)(s.p,{children:["1 - The table compiler omits the checks to see if the RowID field(s) are being updated.",(0,i.jsx)(s.br,{}),"\n0 - The checks are performed."]}),"\n",(0,i.jsx)(s.h3,{id:"ansiprecedence",children:"ANSIPrecedence"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property ANSIPrecedence As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Apply SQL92 operator precedence if this flag is set"}),"\n",(0,i.jsx)(s.h3,{id:"autoparallel",children:"AutoParallel"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property AutoParallel As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Enable auto hinting for %PARALLEL"}),"\n",(0,i.jsx)(s.h3,{id:"autoparallelthreshold",children:"AutoParallelThreshold"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property AutoParallelThreshold As %Integer [ InitialExpression = 3200, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"The threshold for auto hinting for %PARALLEL, the lower the value is, the higher the chance this query would be paralleded executed"}),"\n",(0,i.jsx)(s.h3,{id:"biasqueriesasoutlier",children:"BiasQueriesAsOutlier"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property BiasQueriesAsOutlier As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Set to 1 if queries on fields with non-null outliers often refer to the outlier."}),"\n",(0,i.jsx)(s.h3,{id:"comment",children:"Comment"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property Comment As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Set the flag that determines if embedded SQL statements are retained as comments in the .INT code version of the routine."}),"\n",(0,i.jsx)(s.h3,{id:"dbmssecurity",children:"DBMSSecurity"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DBMSSecurity As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Set the flag that determines if SQL security is enabled. If SQL security is ON, all SQL security is active. This means: Each user must specify a valid username and password when logging in through ODBC (or by setting the %msql variable directly); Privilege-based table/view security is active, and the user may only perform actions on a table or view they have been granted access to. If SQL Security is off: Any user may access SQL through ODBC, and may be prompted for a username/password but will not be validated; Privilege-based table/view security is suppressed, and user's may perform actions on tables and views to which they have not been given access."}),"\n",(0,i.jsx)(s.h3,{id:"ddldefinebitmapextent",children:"DDLDefineBitmapExtent"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DDLDefineBitmapExtent As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Sets the flag which determines if a class created by a DDL CREATE TABLE statement defines a bitmap extent index for the class. This setting only applies to classes created through DDL that do not also define an explicit IdKey index. DDLDefineBitmapExtent=0 means a bitmap extent index will not be defined. DDLDefineBitmapExtent=1 means a bitmap extent index will be defined, if possible."}),"\n",(0,i.jsx)(s.h3,{id:"ddlfinal",children:"DDLFinal"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DDLFinal As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsxs)(s.p,{children:["Sets the flag which determines if a class created by a DDL CREATE TABLE statement is Final.",(0,i.jsx)(s.br,{}),"\nDDLFinal=0 means the class created by the statement will not be defined as Final",(0,i.jsx)(s.br,{}),"\nDDLFinal=1 means the class created by the statement will be defined as Final."]}),"\n",(0,i.jsx)(s.h3,{id:"ddlno30",children:"DDLNo30"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DDLNo30 As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Set the flag that determines if an SQLCODE -30 error is returned when an attempt is made to DROP a non-existing table through DDL."}),"\n",(0,i.jsx)(s.h3,{id:"ddlno201",children:"DDLNo201"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DDLNo201 As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Set the flag that determines if an SQLCODE -201 error is returned when an attempt is made to CREATE a previously existing table through DDL."}),"\n",(0,i.jsx)(s.h3,{id:"ddlno307",children:"DDLNo307"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DDLNo307 As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Set the flag that determines if an SQLCODE -307 error is returned when an attempt is made to a primary key constraint to a table through DDL, when a primary key constraint already exists for that table."}),"\n",(0,i.jsx)(s.h3,{id:"ddlno311",children:"DDLNo311"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DDLNo311 As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Setting this parameter to 'Yes' allows you to ADD a foreign key through DDL even if one with the same name already exists. Setting this parameter to 'No' disallows this action and returns an error code."}),"\n",(0,i.jsx)(s.h3,{id:"ddlno315",children:"DDLNo315"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DDLNo315 As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Set the flag that determines if an SQLCODE -315 error is returned when an attempt is made to DROP a non-existant constraint through DDL."}),"\n",(0,i.jsx)(s.h3,{id:"ddlno324",children:"DDLNo324"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DDLNo324 As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Set the flag that determines if an SQLCODE -324 error is returned when an attempt is made to CREATE a previously existing index through DDL."}),"\n",(0,i.jsx)(s.h3,{id:"ddlno333",children:"DDLNo333"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DDLNo333 As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Set the flag that determines if an SQLCODE -333 error is returned when an attempt is made to drop a non-existant index through DDL."}),"\n",(0,i.jsx)(s.h3,{id:"ddlsqlonlycompile",children:"DDLSQLOnlyCompile"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DDLSQLOnlyCompile As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsxs)(s.p,{children:['1 - any class compilation performed as a result of executing a DDL statement will compile the class with the "q" (sqlonly) flag.',(0,i.jsx)(s.br,{}),'\n0 - the "q" flag is not used. This is the default.']}),"\n",(0,i.jsx)(s.h3,{id:"ddluseextentset",children:"DDLUseExtentSet"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DDLUseExtentSet As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Sets the flag which determines if a class created by a DDL CREATE TABLE statement defines the USEEXTENTSET class parameter to a value of 1. USEEXTENTSET=1 will generally bind the table to better improving global names, especially the index globals. It does mean the global names the class is mapped to is not a name that attempts to match the classname. See documentation for USEEXTENTSET parameter for more information."}),"\n",(0,i.jsx)(s.h3,{id:"ddlusesequence",children:"DDLUseSequence"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DDLUseSequence As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Sets the flag which determines if a class created by a DDL CREATE TABLE statement uses $Sequence for ID assignment. The storage keyword IDFUNCTION can be defined as INCREMENT or SEQUENCE. This keyword value is used by the class compiler to determine which system function - $increment or $sequence - is to be used for assigning new ID values for a persistent class using default storage. The default value for IDFUNCTION is INCREMENT, however the default behavior for classes defined through DDL is to define IDFUNCTION as SEQUENCE. To configure the system to have classes created through DDL to define IDFUNCTION as INCREMENT, define DDLUseSequence=0. To configure the system to have classes created through DDL to define IDFUNCTION as SEQUENCE, define DDLUseSequence=1."}),"\n",(0,i.jsx)(s.h3,{id:"defaultschema",children:"DefaultSchema"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'Property DefaultSchema As %String(MAXLEN = 128, MINLEN = 0) [ InitialExpression = "SQLUser", Required ];\n'})}),"\n",(0,i.jsx)(s.p,{children:"This setting provides the ability to define a default schema name other than SQLUser, the default. When an unqualified table name is encountered in an SQL statement (and there is no #import statement specified), the default schema will be used. You may specify _CURRENT_USER for the default schema name if you wish to use the SQL username the process logged in as the name of the default schema. If the process has not logged in to SQL, SQLUser will be used as the default schema name. You may also specify _CURRENT_USER/. In this case, if the process has not logged in to SQL,  will be used as the default schema name. For example: _CURRENT_USER/HMO will use HMO as the default schema if the process has not logged in to SQL. This setting has nothing to do with the mappings between SQL schema names and the class package name, it only specifies the default schema."}),"\n",(0,i.jsx)(s.h3,{id:"delimitedids",children:"DelimitedIds"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DelimitedIds As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:'Set the flag that determines if double quotes (") in an SQL statement are used for delimited (quoted) identifiers or string constants. If "Yes", a double quoted string ("My String") will be considered an identifier within an SQL statement. If "No", a double quoted string ("My String") will be considered a string literal within an SQL statement.'}),"\n",(0,i.jsx)(s.h3,{id:"dropdelete",children:"DropDelete"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property DropDelete As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Set the flag that determines whether a DDL DROP TABLE statement deletes the table's data."}),"\n",(0,i.jsx)(s.h3,{id:"ecpsync",children:"ECPSync"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property ECPSync As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"When an SQL Select statement is executed, forces all pending ECP requests to the DB-server. On completion it guarantees that the client cache is in sync."}),"\n",(0,i.jsx)(s.h3,{id:"extrinsicfunctions",children:"ExtrinsicFunctions"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property ExtrinsicFunctions As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Allows/disallows extrinsic functions to be used in SQL statements through ODBC, JDBC, and Dynamic Query."}),"\n",(0,i.jsx)(s.h3,{id:"fastdistinct",children:"FastDistinct"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property FastDistinct As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:'Set the flag that determines if SQL DISTINCT optimization is turned on. If true (the default) many SQL queries involving DISTINCT (and GROUP BY) will run much more efficiently by making better use of indices (if available). The downside of this is that the values returned by such queries will be collated in the same way they are stored within the index (i.e., results may be in upper case). Some applications care about the case of values returned by such queries. If "Fast DISTINCT" is set to false (0), the SQL will revert to its pre-Cache 5.1 behavior with regards to DISTINCT behavior.'}),"\n",(0,i.jsx)(s.h3,{id:"idkey",children:"IdKey"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property IdKey As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsxs)(s.p,{children:["Set the flag that determines whether a Primary Key constraint specified through DDL also",(0,i.jsx)(s.br,{}),"\nbecomes the IDKey index in the class definition or not. By default, the primary key does",(0,i.jsx)(s.br,{}),"\nalso become the idkey index. This generally gives better performance, but means that",(0,i.jsx)(s.br,{}),"\nthe Primary Key fields cannot be updated."]}),"\n",(0,i.jsx)(s.h3,{id:"idtrxfrom",children:"IdTrxFrom"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property IdTrxFrom As %String(MAXLEN = 256, MINLEN = 0) [ InitialExpression = {$$$DEFIdTrxFrom} ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Modifies the DDL Identifier Translation mappings. This is for filtering/modifying valid SQL identifier characters when translating SQL identifiers into Objects identifiers. When converting an SQL identifier to an Objects identifier at DDL run-time, the characters in the 'From' list are converted to the characters in the 'To' list."}),"\n",(0,i.jsx)(s.h3,{id:"idtrxto",children:"IdTrxTo"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property IdTrxTo As %String(MAXLEN = 256, MINLEN = 0);\n"})}),"\n",(0,i.jsx)(s.p,{children:"Modifies the DDL Identifier Translation mappings. This is for filtering/modifying valid SQL identifier characters when translating SQL identifiers into Objects identifiers. When converting an SQL identifier to an Objects identifier at DDL run-time, the characters in the 'From' list are converted to the characters in the 'To' list."}),"\n",(0,i.jsx)(s.h3,{id:"lockthreshold",children:"LockThreshold"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property LockThreshold As %Integer [ InitialExpression = {$$$DefaultLockThreshold}, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"The value n is the lock threshold. This is the number of inserts, updates, or deletes for a single table within a single transaction that will trigger a table-level lock when reached. For example, if the lock threshold is 1000 and a process starts a transaction and then inserts 2000 rows, after the 1001st row is inserted the process will attempt to acquire a table-level lock instead of continue to lock individual rows. This is to help keep the lock table from becoming too full."}),"\n",(0,i.jsx)(s.h3,{id:"locktimeout",children:"LockTimeout"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property LockTimeout As %Integer(MAXVAL = 32767, MINVAL = 0) [ InitialExpression = 10, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Set the Lock Timeout for locks made during execution of SQL statements. This value is in seconds."}),"\n",(0,i.jsx)(s.h3,{id:"odbcvarcharmaxlen",children:"ODBCVarcharMaxlen"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property ODBCVarcharMaxlen As %Integer [ InitialExpression = 4096, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Defines the MaxLen for ODBC fields of type VarChar."}),"\n",(0,i.jsx)(s.h3,{id:"parametersampling",children:"ParameterSampling"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property ParameterSampling As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Enable parameter sampling"}),"\n",(0,i.jsx)(s.h3,{id:"clientmaxidletime",children:"ClientMaxIdleTime"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property ClientMaxIdleTime As %Integer [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Enable XDBC max idle time"}),"\n",(0,i.jsx)(s.h3,{id:"queryprocedures",children:"QueryProcedures"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property QueryProcedures As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsxs)(s.p,{children:["Defines whether or not all class queries project as SQL Stored Procedures regardless of the query's SqlProc setting.",(0,i.jsx)(s.br,{}),"\nDefault is 0, only class queries defined with SqlProc=1 will project as Stored Procedures. When set to 1, all class queries will project as stored procedures. When changing this setting, you must recompile the classes with the class queries in order for this change to have an affect."]}),"\n",(0,i.jsx)(s.h3,{id:"referentialchecks",children:"ReferentialChecks"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property ReferentialChecks As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"For INSERT, UPDATE, and DELETE, setting this parameter to 'Yes' instructs InterSystems IRIS to validate the foreign key constraint. Setting this parameter to 'No' will bypass foreign key constraint checking."}),"\n",(0,i.jsx)(s.h3,{id:"rtpc",children:"RTPC"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property RTPC As %Boolean [ InitialExpression = 1, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Enable Run Time Plan Choice"}),"\n",(0,i.jsx)(s.h3,{id:"savemac",children:"SaveMAC"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property SaveMAC As %Boolean [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Defines whether or not the source code (.MAC and .INT) is saved or not. The default is that no source code is saved. This setting is made on a per-system basis."}),"\n",(0,i.jsx)(s.h3,{id:"tcpkeepalive",children:"TCPKeepAlive"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property TCPKeepAlive As %Integer [ InitialExpression = 300, Required ];\n"})}),"\n",(0,i.jsxs)(s.p,{children:["Set the TCP Keep Alive timeout for xDBC TCP connections.",(0,i.jsx)(s.br,{}),"\nThis is the number of seconds between keep alive-messages. The default for this is 300 seconds (5 minutes).]]>"]}),"\n",(0,i.jsx)(s.h3,{id:"timeprecision",children:"TimePrecision"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Property TimePrecision As %Integer(MAXVAL = 9, MINVAL = 0) [ InitialExpression = 0, Required ];\n"})}),"\n",(0,i.jsx)(s.p,{children:"Set the default precision for the Time component of the value returned by the GETDATE(), CURRENT_TIME, and CURRENT_TIMESTAMP SQL Scalar functions. The precision, the number of decimal places for the millisecond portion of the time value, has a default is 0, which means milliseconds are not returned in the values returned by the GETDATE(), CURRENT_TIME, and CURRENT_TIMESTAMP functions."}),"\n",(0,i.jsx)(s.h3,{id:"todatedefaultformat",children:"TODATEDefaultFormat"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'Property TODATEDefaultFormat As %String(MAXLEN = 32, MINLEN = 1) [ InitialExpression = "DD MON YYYY", Required ];\n'})}),"\n",(0,i.jsx)(s.p,{children:"Default date format for the SQL TO_DATE() function."}),"\n",(0,i.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(s.h3,{id:"load",children:"Load"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]\n'})}),"\n",(0,i.jsxs)(s.p,{children:["Load the parameters into memory and activate.",(0,i.jsx)(s.br,{}),"\nParameters:",(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Obj"}),' = Handle to the object which caused the load. If "", then load everything, only called from STU.',(0,i.jsx)(s.br,{}),"\n",(0,i.jsx)(s.strong,{children:"Flags"})," = Type of modification.",(0,i.jsx)(s.br,{}),"\n0 - Modify",(0,i.jsx)(s.br,{}),"\n1 - Create/Insert"]}),"\n",(0,i.jsx)(s.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,i.jsx)(s.pre,{children:(0,i.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnValidateObject() As %Status [ Internal ]\n"})})]})}function d(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,i.jsx)(s,{...e,children:(0,i.jsx)(o,{...e})}):o(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>r,x:()=>l});var i=t(96540);const n={},a=i.createContext(n);function r(e){const s=i.useContext(a);return i.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:r(e.components),i.createElement(a.Provider,{value:s},e.children)}}}]);