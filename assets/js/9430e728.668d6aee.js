"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[17711],{56567:(e,s,r)=>{r.r(s),r.d(s,{contentTitle:()=>i,default:()=>c,frontMatter:()=>l,toc:()=>a});var t=r(74848),n=r(28453);const l={pagination_prev:null,pagination_next:null},i="Config.NLS.SubTables",a=[{value:"Properties",id:"properties",level:2},{value:"Description",id:"description",level:3},{value:"FromTo",id:"fromto",level:3},{value:"Name",id:"name",level:3},{value:"Type",id:"type",level:3},{value:"Methods",id:"methods",level:2},{value:"Create",id:"create",level:3},{value:"CreateSkeleton",id:"createskeleton",level:3},{value:"Delete",id:"delete",level:3},{value:"Exists",id:"exists",level:3},{value:"Export",id:"export",level:3},{value:"ExportDir",id:"exportdir",level:3},{value:"ExportList",id:"exportlist",level:3},{value:"ExportToNls",id:"exporttonls",level:3},{value:"ExportAllToNls",id:"exportalltonls",level:3},{value:"Get",id:"get",level:3},{value:"GetProperties",id:"getproperties",level:3},{value:"GetPropertiesFromNls",id:"getpropertiesfromnls",level:3},{value:"Import",id:"import",level:3},{value:"ImportFromNls",id:"importfromnls",level:3},{value:"ImportAllFromNls",id:"importallfromnls",level:3},{value:"ImportDir",id:"importdir",level:3},{value:"Modify",id:"modify",level:3},{value:"NumberOfRefs",id:"numberofrefs",level:3},{value:"SetProperties",id:"setproperties",level:3},{value:"SetPropertiesToNls",id:"setpropertiestonls",level:3},{value:"%OnAfterSave",id:"onaftersave",level:3},{value:"%OnBeforeSave",id:"onbeforesave",level:3},{value:"%OnDelete",id:"ondelete",level:3},{value:"%OnValidateObject",id:"onvalidateobject",level:3},{value:"ListExecute",id:"listexecute",level:3},{value:"ListFetch",id:"listfetch",level:3},{value:"ListClose",id:"listclose",level:3}];function o(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,n.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"confignlssubtables",children:"Config.NLS.SubTables"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class Config.NLS.SubTables Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Inheritance = right, System = 4 ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["The objects of this class contain the data points for tables of type XLT, COL, Case and the input side of Mode tables.",(0,t.jsx)(s.br,{}),'\nThe name of a sub-table is a string with three pieces separated by "-": type-from-to']}),"\n",(0,t.jsx)(s.p,{children:"Warning!"}),"\n",(0,t.jsx)(s.p,{children:'Only sub-tables whose names have a "from" or "to" piece beginning with "y" (e.g. "XLT-yEBCDIC-Unicode" or "XLT-Latin1-yPrinter") or that end with a dot followed by 4 digits (e.g. "XLT-CP1250-Unicode.0001") are considered custom sub-tables and are preserved during system upgrades. All other sub-tables are restored to their original state and any changes to them made with methods from this class will be lost in an upgrade.'}),"\n",(0,t.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,t.jsx)(s.h3,{id:"description",children:"Description"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Description As %String(MAXLEN = 128);\n"})}),"\n",(0,t.jsx)(s.p,{children:"Description of the SubTable."}),"\n",(0,t.jsx)(s.h3,{id:"fromto",children:"FromTo"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property FromTo As array Of %String;\n"})}),"\n",(0,t.jsx)(s.p,{children:'Each node of this array contains one mapping. Both the index and the value of the node can be either a single character code (e.g. "168") or a comma-separated list of codes (e.g. "251,128,65"). For collation tables, the value can contain a disambiguator (e.g. "65,65;1").'}),"\n",(0,t.jsx)(s.h3,{id:"name",children:"Name"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Name As %String(MAXLEN = 64, MINLEN = 1) [ Required ];\n"})}),"\n",(0,t.jsx)(s.p,{children:'The name of a sub-table contains 3 parts separated by "-": type, source encoding and target encoding.'}),"\n",(0,t.jsx)(s.p,{children:'Examples: "XLT-Latin2-Unicode", "COL-Latin1-German2"'}),"\n",(0,t.jsx)(s.h3,{id:"type",children:"Type"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Property Type As %Integer(MAXVAL = 6, MINVAL = 0) [ Required ];\n"})}),"\n",(0,t.jsx)(s.p,{children:"Type of sub-table."}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"0 - SUBSingle"}),"\n",(0,t.jsx)(s.li,{children:"1 - SUBToMulti"}),"\n",(0,t.jsx)(s.li,{children:"2 - SUBFromMulti"}),"\n",(0,t.jsx)(s.li,{children:"3 - SUBMulti"}),"\n",(0,t.jsx)(s.li,{children:"4 - SUBLeadByte"}),"\n",(0,t.jsx)(s.li,{children:"5 - SUBToCol"}),"\n",(0,t.jsx)(s.li,{children:"6 - SUBFromCol"}),"\n"]}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"create",children:"Create"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Create(Name, ByRef Properties As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Creates a SubTable the NLS database."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Name - Name of the SubTable to create"}),"\n",(0,t.jsx)(s.li,{children:"Properties - Array of properties corresponding to the class properties"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"createskeleton",children:"CreateSkeleton"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateSkeleton(Name As %String, Maxchar As %Integer, ByRef SubTable As %ObjectHandle) As %Status\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Creates a SubTable with common default parameters.",(0,t.jsx)(s.br,{}),"\nDoesn't require passing a complete subtable specification. Sets each character mapping to itself."]}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Name - Name of the SubTable to create"}),"\n",(0,t.jsx)(s.li,{children:"MaxChar - Highest character (0, 255 or 65535)"}),"\n",(0,t.jsx)(s.li,{children:"SubTable - Return oref of created object"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"delete",children:"Delete"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Delete(Name As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Deletes a SubTable."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Name - Name of SubTable to delete"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"exists",children:"Exists"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Exists(Name As %String, ByRef SubTable As %ObjectHandle, ByRef Status As %Status) As %Boolean\n"})}),"\n",(0,t.jsx)(s.p,{children:"Checks for the existence of a SubTable in the NLS database."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsxs)(s.li,{children:["Name - Name of the SubTable to check existence of\nReturn values:",(0,t.jsx)(s.br,{}),"\nIf Value of the method = 0 (SubTable does not exist, or some error occured)"]}),"\n",(0,t.jsx)(s.li,{children:"SubTable = Null"}),"\n",(0,t.jsx)(s.li,{children:'Status = SubTable "x" does not exist, or other error message\nIf Value of the method = 1 (SubTable exists)'}),"\n",(0,t.jsx)(s.li,{children:"SubTable = Object handle to SubTable"}),"\n",(0,t.jsx)(s.li,{children:"Status = $$$OK"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"export",children:"Export"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Export(FileName As %String = "SubTablesExport.xml", ByRef NumExported As %Integer, SubTables As %String = "*") As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Exports SubTable Objects to a file in xml format."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"FileName - Output file name"}),"\n",(0,t.jsx)(s.li,{children:"NumExported (byref) - Returns number of SubTable records exported."}),"\n",(0,t.jsx)(s.li,{children:'SubTables - Comma separated list of SubTables to export, "*" = All'}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"exportdir",children:"ExportDir"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ExportDir(Dir As %String, ByRef NumExported As %Integer, SubTables As %String = "*") As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Exports SubTable Objects to separate xml files."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Dir - Directory where the files will be created"}),"\n",(0,t.jsx)(s.li,{children:"NumExported (byref) - Returns number of SubTable records exported."}),"\n",(0,t.jsx)(s.li,{children:'SubTables - Comma separated list of SubTables to export, "*" = All'}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"exportlist",children:"ExportList"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ExportList(FileName As %String = "SubTablesExport.xml", ByRef NumExported As %Integer, ByRef SubTables As %String) As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Similar to Export() but uses a list of SubTables to export rather than a query. Used internally by Tables.ExportList() and other utilities."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"FileName - Output file name"}),"\n",(0,t.jsx)(s.li,{children:"NumExported - Number of exported SubTables [out]"}),"\n",(0,t.jsx)(s.li,{children:"SubTables - Array of SubTables to export"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"exporttonls",children:"ExportToNls"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ExportToNls(sub As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Exports ONE SubTable record to ^%nls."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Name - SubTable name"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"exportalltonls",children:"ExportAllToNls"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ExportAllToNls(ByRef NumExported As %Integer) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Exports all SubTable records to ^%nls."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"NumExported - Number of exported records"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"get",children:"Get"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Get(Name As %String, ByRef Properties As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Gets a SubTable's properties from the NLS database."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Name - Name of the SubTable to get"}),"\n",(0,t.jsx)(s.li,{children:"Properties - Array of properties. See the Create() method for a full list"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"getproperties",children:"GetProperties"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetProperties(ByRef Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Gets a SubTable's properties from the NLS database."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Properties - See the Create method for more information on properties returned"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"getpropertiesfromnls",children:"GetPropertiesFromNls"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetPropertiesFromNls(SubTable As %String, ByRef Properties As %String, Ref As %String = "^%nls") As %Status [ Internal ]\n'})}),"\n",(0,t.jsx)(s.p,{children:"Gets a SubTable's properties from the ^%nls global."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Name - Name of the SubTable to get"}),"\n",(0,t.jsx)(s.li,{children:"Properties - See the Create method for more information on properties returned"}),"\n",(0,t.jsx)(s.li,{children:"Ref - Source global reference"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"import",children:"Import"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Import(FileName As %String = "SubTablesExport.xml", ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Imports SubTable records from an xml file."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"FileName - Filename to import SubTable records from"}),"\n",(0,t.jsx)(s.li,{children:"NumImported (byref) - Returns number of records imported"}),"\n",(0,t.jsxs)(s.li,{children:["Flags - Control import\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Bit 0 - Do not import records, just return count"}),"\n"]}),"\n"]}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"importfromnls",children:"ImportFromNls"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ImportFromNls(Sub As %String, Ref As %String = "^%nls") As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Imports SubTable record from ^%nls."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Name - SubTable name"}),"\n",(0,t.jsx)(s.li,{children:"Ref - Source global reference"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"importallfromnls",children:"ImportAllFromNls"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ImportAllFromNls(ByRef NumImported As %Integer, Flags As %Integer = 0, Ref As %String = "^%nls") As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Imports all SubTable records from ^%nls."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"NumImported (byref) - Returns number of records imported"}),"\n",(0,t.jsxs)(s.li,{children:["Flags - Control import\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Bit 0 - Do not import records, just return count"}),"\n"]}),"\n"]}),"\n",(0,t.jsx)(s.li,{children:"Ref - Source global reference"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"importdir",children:"ImportDir"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ImportDir(Dir As %String, ByRef NumImported As %String, forcemulticompile As %Boolean = "") As %Status\n'})}),"\n",(0,t.jsx)(s.p,{children:"Imports subtable files from a directory."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Dir - Directory to import NLS files from"}),"\n",(0,t.jsx)(s.li,{children:"NumImported (byref) - Returns number of subtables imported."}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"modify",children:"Modify"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Modify(Name As %String, ByRef Properties As %String) As %Status\n"})}),"\n",(0,t.jsx)(s.p,{children:"Modifies an existing SubTable's properties in the NLS database."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Name - Name of the SubTable to modify"}),"\n",(0,t.jsx)(s.li,{children:"Properties - Array of properties to modify.\nIf a specific property is not passed in the properties array, or is the same as the existing value, the value is not modified."}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"numberofrefs",children:"NumberOfRefs"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod NumberOfRefs(Name As %String) As %Integer [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the number of Tables that reference this SubTable."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Name - The name of the SubTable"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"setproperties",children:"SetProperties"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method SetProperties(ByRef Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Sets a SubTable's properties from the NLS database."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Properties - See the Create method for more information on properties returned"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"setpropertiestonls",children:"SetPropertiesToNls"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetPropertiesToNls(SubTable As %String, ByRef Properties As %String) As %Status [ Internal ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Sets a SubTable's properties to the ^%nls global."}),"\n",(0,t.jsx)(s.p,{children:"Parameters:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"Name - Name of the SubTable to get"}),"\n",(0,t.jsx)(s.li,{children:"Properties - See the Create method for more information on properties returned"}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"onaftersave",children:"%OnAfterSave"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnAfterSave(insert As %Boolean) As %Status [ Internal, Private ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This callback method is invoked by the %Save method to provide notification that the object is being saved. It is called after the object's data has been successfully written to disk."}),"\n",(0,t.jsx)(s.p,{children:"insert will be set to 1 if this object is being saved for the first time."}),"\n",(0,t.jsx)(s.p,{children:"If this method returns an error then the call to %Save will fail. If the service name is %Service Terminal, reinitialize the memory which depends on it."}),"\n",(0,t.jsx)(s.h3,{id:"onbeforesave",children:"%OnBeforeSave"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This callback method is invoked by the %Save method to provide notification that the object is being saved. It is called before any data is written to disk."}),"\n",(0,t.jsx)(s.p,{children:"insert will be set to 1 if this object is being saved for the first time."}),"\n",(0,t.jsx)(s.p,{children:"If this method returns an error then the call to %Save will fail."}),"\n",(0,t.jsx)(s.h3,{id:"ondelete",children:"%OnDelete"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal, Private ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This callback method is invoked by the %Delete method to provide notification that the object specified by oid is being deleted."}),"\n",(0,t.jsx)(s.p,{children:"If this method returns an error then the object will not be deleted."}),"\n",(0,t.jsx)(s.h3,{id:"onvalidateobject",children:"%OnValidateObject"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnValidateObject() As %Status [ Internal, Private ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This callback method is invoked by the %ValidateObject method to provide notification that the current object is being validated."}),"\n",(0,t.jsx)(s.p,{children:"If this method returns an error then %ValidateObject will fail."}),"\n",(0,t.jsx)(s.h3,{id:"listexecute",children:"ListExecute"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ListExecute(ByRef qHandle As %Binary, Names As %String = "*") As %Status [ Internal ]\n'})}),"\n",(0,t.jsx)(s.h3,{id:"listfetch",children:"ListFetch"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})}),"\n",(0,t.jsx)(s.h3,{id:"listclose",children:"ListClose"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})})]})}function c(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(o,{...e})}):o(e)}},28453:(e,s,r)=>{r.d(s,{R:()=>i,x:()=>a});var t=r(96540);const n={},l=t.createContext(n);function i(e){const s=t.useContext(l);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:i(e.components),t.createElement(l.Provider,{value:s},e.children)}}}]);