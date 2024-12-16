"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[8095],{46867:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>r,default:()=>d,frontMatter:()=>i,toc:()=>l});var n=s(74848),a=s(28453);const i={pagination_prev:null,pagination_next:null},r="%XDBC.Gateway.DatabaseMetaData",l=[{value:"Methods",id:"methods",level:2},{value:"GetCatalogs",id:"getcatalogs",level:3},{value:"GetColumnPrivileges",id:"getcolumnprivileges",level:3},{value:"GetColumns",id:"getcolumns",level:3},{value:"GetCrossReference",id:"getcrossreference",level:3},{value:"GetDatabaseProductNameAndVersion",id:"getdatabaseproductnameandversion",level:3},{value:"GetDriverName",id:"getdrivername",level:3},{value:"GetDriverVersion",id:"getdriverversion",level:3},{value:"GetExportedKeys",id:"getexportedkeys",level:3},{value:"GetFunctionColumns",id:"getfunctioncolumns",level:3},{value:"GetFunctions",id:"getfunctions",level:3},{value:"GetImportedKeys",id:"getimportedkeys",level:3},{value:"GetIndexInfo",id:"getindexinfo",level:3},{value:"GetNumericFunctions",id:"getnumericfunctions",level:3},{value:"GetPrimaryKeys",id:"getprimarykeys",level:3},{value:"GetProcedureColumns",id:"getprocedurecolumns",level:3},{value:"GetProcedures",id:"getprocedures",level:3},{value:"GetPseudoColumns",id:"getpseudocolumns",level:3},{value:"GetSchemas",id:"getschemas",level:3},{value:"GetSchemaTerm",id:"getschematerm",level:3},{value:"GetSQLKeywords",id:"getsqlkeywords",level:3},{value:"GetStringFunctions",id:"getstringfunctions",level:3},{value:"GetSuperTables",id:"getsupertables",level:3},{value:"GetSuperTypes",id:"getsupertypes",level:3},{value:"GetSystemFunctions",id:"getsystemfunctions",level:3},{value:"GetTablePrivileges",id:"gettableprivileges",level:3},{value:"GetTables",id:"gettables",level:3},{value:"GetTableTypes",id:"gettabletypes",level:3},{value:"GetTimeDateFunctions",id:"gettimedatefunctions",level:3},{value:"GetTypeInfo",id:"gettypeinfo",level:3}];function c(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,a.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"xdbcgatewaydatabasemetadata",children:"%XDBC.Gateway.DatabaseMetaData"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %XDBC.Gateway.DatabaseMetaData Extends %RegisteredObject [ Abstract, System = 4 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"FOR INTERNAL USE - do not invoke directly"}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"getcatalogs",children:"GetCatalogs"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetCatalogs() As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the catalog names available in this database."}),"\n",(0,n.jsx)(t.h3,{id:"getcolumnprivileges",children:"GetColumnPrivileges"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetColumnPrivileges(catalog As %String, schema As %String, table As %String, columnNamePattern As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the access rights for a table's columns."}),"\n",(0,n.jsx)(t.h3,{id:"getcolumns",children:"GetColumns"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetColumns(catalog As %String, schemaPattern As %String, tableNamePattern As %String, columnNamePattern As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of table columns available in the specified catalog"}),"\n",(0,n.jsx)(t.h3,{id:"getcrossreference",children:"GetCrossReference"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetCrossReference(parentCatalog As %String, parentSchema As %String, parentTable As %String, foreignCatalog As %String, foreignSchema As %String, foreignTable As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the foreign key columns in the given foreign key table that reference the primary key or the columns representing a unique constraint of the parent table (could be the same or a different table)"}),"\n",(0,n.jsx)(t.h3,{id:"getdatabaseproductnameandversion",children:"GetDatabaseProductNameAndVersion"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetDatabaseProductNameAndVersion() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the name and version number of this database"}),"\n",(0,n.jsx)(t.h3,{id:"getdrivername",children:"GetDriverName"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetDriverName() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the name of this JDBC driver."}),"\n",(0,n.jsx)(t.h3,{id:"getdriverversion",children:"GetDriverVersion"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetDriverVersion() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the version number of this driver as a String"}),"\n",(0,n.jsx)(t.h3,{id:"getexportedkeys",children:"GetExportedKeys"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetExportedKeys(catalog As %String, schema As %String, table As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the foreign key columns that reference the given table's primary key columns (the foreign keys exported by a table)."}),"\n",(0,n.jsx)(t.h3,{id:"getfunctioncolumns",children:"GetFunctionColumns"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetFunctionColumns(catalog As %String, schemaPattern As %String, functionNamePattern As %String, columnNamePattern As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the given catalog's system or user function parameters and return type."}),"\n",(0,n.jsx)(t.h3,{id:"getfunctions",children:"GetFunctions"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetFunctions(catalog As %String, schemaPattern As %String, functionNamePattern As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the system and user functions available in the given catalog."}),"\n",(0,n.jsx)(t.h3,{id:"getimportedkeys",children:"GetImportedKeys"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetImportedKeys(catalog As %String, schema As %String, table As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the primary key columns that are referenced by the given table's foreign key columns (the primary keys imported by a table)."}),"\n",(0,n.jsx)(t.h3,{id:"getindexinfo",children:"GetIndexInfo"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetIndexInfo(catalog As %String, schema As %String, table As %String, unique As %Boolean, approximate As %Boolean) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the given table's indices and statistics"}),"\n",(0,n.jsx)(t.h3,{id:"getnumericfunctions",children:"GetNumericFunctions"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetNumericFunctions() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a comma-separated list of math functions available with this database."}),"\n",(0,n.jsx)(t.h3,{id:"getprimarykeys",children:"GetPrimaryKeys"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetPrimaryKeys(catalog As %String, schema As %String, table As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the given table's primary key columns."}),"\n",(0,n.jsx)(t.h3,{id:"getprocedurecolumns",children:"GetProcedureColumns"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetProcedureColumns(catalog As %String, schemaPattern As %String, procedureNamePattern As %String, columnNamePattern As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the given catalog's stored procedure parameter and result columns."}),"\n",(0,n.jsx)(t.h3,{id:"getprocedures",children:"GetProcedures"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetProcedures(catalog As %String, schemaPattern As %String, procedureNamePattern As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the stored procedures available in the given catalog."}),"\n",(0,n.jsx)(t.h3,{id:"getpseudocolumns",children:"GetPseudoColumns"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetPseudoColumns(catalog As %String, schemaPattern As %String, tableNamePattern As %String, columnNamePattern As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the pseudo or hidden columns available in a given table within the specified catalog and schema."}),"\n",(0,n.jsx)(t.h3,{id:"getschemas",children:"GetSchemas"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'Method GetSchemas(catalog As %String = "", schemaPattern As %String = "") As ResultSet\n'})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the schema names available in this database"}),"\n",(0,n.jsx)(t.h3,{id:"getschematerm",children:"GetSchemaTerm"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetSchemaTerm() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the preferred term for 'schema' in this database"}),"\n",(0,n.jsx)(t.h3,{id:"getsqlkeywords",children:"GetSQLKeywords"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetSQLKeywords() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a comma-separated list of all of this database's SQL keywords that are NOT also SQL:2003 keywords."}),"\n",(0,n.jsx)(t.h3,{id:"getstringfunctions",children:"GetStringFunctions"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetStringFunctions() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a comma-separated list of string functions available with this database."}),"\n",(0,n.jsx)(t.h3,{id:"getsupertables",children:"GetSuperTables"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetSuperTables(catalog As %String, schemaPattern As %String, tableNamePattern As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the table hierarchies defined in a particular schema in this database."}),"\n",(0,n.jsx)(t.h3,{id:"getsupertypes",children:"GetSuperTypes"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetSuperTypes(catalog As %String, schemaPattern As %String, typeNamePattern As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the user-defined type (UDT) hierarchies defined in a particular schema in this database. Only the immediate super type/ sub type relationship is modeled."}),"\n",(0,n.jsx)(t.h3,{id:"getsystemfunctions",children:"GetSystemFunctions"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetSystemFunctions() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a comma-separated list of system functions available with this database."}),"\n",(0,n.jsx)(t.h3,{id:"gettableprivileges",children:"GetTablePrivileges"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetTablePrivileges(catalog As %String, schemaPattern As %String, tableNamePattern As %String) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the access rights for each table available in a catalog."}),"\n",(0,n.jsx)(t.h3,{id:"gettables",children:"GetTables"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetTables(catalog As %String, schemaPattern As %String, tableNamePattern As %String, types As %List) As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of the tables available in the given catalog."}),"\n",(0,n.jsx)(t.h3,{id:"gettabletypes",children:"GetTableTypes"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetTableTypes() As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves the table types available in this database. The results are ordered by table type."}),"\n",(0,n.jsx)(t.h3,{id:"gettimedatefunctions",children:"GetTimeDateFunctions"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetTimeDateFunctions() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a comma-separated list of the time and date functions available with this database."}),"\n",(0,n.jsx)(t.h3,{id:"gettypeinfo",children:"GetTypeInfo"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetTypeInfo() As ResultSet\n"})}),"\n",(0,n.jsx)(t.p,{children:"Retrieves a description of all the data types supported by this database."})]})}function d(e={}){const{wrapper:t}={...(0,a.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>r,x:()=>l});var n=s(96540);const a={},i=n.createContext(a);function r(e){const t=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function l(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),n.createElement(i.Provider,{value:t},e.children)}}}]);