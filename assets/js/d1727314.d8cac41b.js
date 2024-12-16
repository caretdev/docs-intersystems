"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[63040],{61149:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>a,default:()=>d,frontMatter:()=>r,toc:()=>i});var n=s(74848),l=s(28453);const r={pagination_prev:null,pagination_next:null},a="%ExtentMgr.Util",i=[{value:"Methods",id:"methods",level:2},{value:"DeleteExtent",id:"deleteextent",level:3},{value:"DeleteExtentDefinition",id:"deleteextentdefinition",level:3},{value:"DeleteExtentDefinitionIfExists",id:"deleteextentdefinitionifexists",level:3},{value:"DeleteAllExtentDefinitions",id:"deleteallextentdefinitions",level:3},{value:"RegisterAllClasses",id:"registerallclasses",level:3},{value:"RegisterClass",id:"registerclass",level:3},{value:"RegisterCustomExtent",id:"registercustomextent",level:3},{value:"RegisterGlobalReference",id:"registerglobalreference",level:3},{value:"DeleteGlobalReference",id:"deleteglobalreference",level:3},{value:"GlobalUses",id:"globaluses",level:3},{value:"GlobalsUsed",id:"globalsused",level:3},{value:"GlobalToSqlTable",id:"globaltosqltable",level:3},{value:"GetRowVersion",id:"getrowversion",level:3}];function o(e){const t={a:"a",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",table:"table",tbody:"tbody",td:"td",th:"th",thead:"thead",tr:"tr",...(0,l.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"extentmgrutil",children:"%ExtentMgr.Util"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %ExtentMgr.Util [ Abstract, System = 4 ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:[(0,n.jsx)(t.strong,{children:"For information on this class"}),", see ",(0,n.jsx)(t.a,{href:"/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25ExtentMgr.Util",children:"Extents"}),"."]}),"\n",(0,n.jsxs)(t.p,{children:["The sample class mentioned here (Sample.Person) is part of ",(0,n.jsx)(t.a,{href:"https://github.com/intersystems/Samples-Data",children:"https://github.com/intersystems/Samples-Data."})," See ",(0,n.jsx)(t.a,{href:"/csp/docbook/DocBook.UI.Page.cls?FIND=landing+githubsamples",children:"Downloading Samples"}),"."]}),"\n",(0,n.jsx)(t.p,{children:"The Extent Manager maintains extent definitions and globals registered for use by those extents. Extent definitions most commonly originate from compiling a persistent class but can also be defined outside of any class. The Util class provides a public interface for deleting extent definitions and registering the extents of all managedextent classes or a single class."}),"\n",(0,n.jsx)(t.p,{children:'In addition to the public interface implemented here, the %ExtentMgr tables are visible to SQL and can be queried directly. There are two examples implemented in %ExtentMgr.Util - GlobalUses and GlobalsUsed. Both are public class methods that return a single result set and both are projected as stored procedures and can be invoked by dynamic SQL, embedded SQL or through an xDBC client. These methods are more important as examples of how the %ExtentMgr tables can be queried. The primary global registry is modeled by %ExtentMgr.GlobalRegistry. That class contains just a few properties of interest: GlobalName, GlobalReference and UsedBy. The GlobalName is the unsubscripted global name, GlobalReference is the full global reference of the root global reference that is used by the UsedBy extent. Querying this class is trivial. UsedBy is a reference to %ExtentMgr.Catalog.Extent. The IDKEY of %ExtentMgr.Catalog.Extent is the extent name. The extent name is almost always the same as the class name followed by the extent type of ".cls". The GlobalsUsed method includes a sample query that returns all of the globals registered for use by a specified extent.'}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"deleteextent",children:"DeleteExtent"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod DeleteExtent(extent As %String(MAXLEN=""), extentType As %String = "cls") As %Status [ Deprecated ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"DEPRECATED - refer to DeleteExtentDefinition. Maintained for backward compatibility only."}),"\n",(0,n.jsx)(t.h3,{id:"deleteextentdefinition",children:"DeleteExtentDefinition"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod DeleteExtentDefinition(extent As %String(MAXLEN=""), extentType As %String = "cls") As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"DeleteExtentDefinition() will delete the extent metadata from the Extent Manager and remove all global registry entries that are registered for use by this extent. This method does not delete the extent data. Only the extent metadata is deleted."}),"\n",(0,n.jsx)(t.h3,{id:"deleteextentdefinitionifexists",children:"DeleteExtentDefinitionIfExists"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod DeleteExtentDefinitionIfExists(extent As %String(MAXLEN=""), extentType As %String = "cls") As %Status [ CodeMode = expression ]\n'})}),"\n",(0,n.jsx)(t.h3,{id:"deleteallextentdefinitions",children:"DeleteAllExtentDefinitions"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod DeleteAllExtentDefinitions(display As %Integer = 0) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"This method deletes all extent definitions from the catalog. No data is affected. If display is true then status messages will be displayed on the current device."}),"\n",(0,n.jsx)(t.h3,{id:"registerallclasses",children:"RegisterAllClasses"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod RegisterAllClasses(display As %Integer = 0) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"This method registers the extents all classes in the current namespace. If display is true then status messages will be displayed on the current device."}),"\n",(0,n.jsx)(t.h3,{id:"registerclass",children:"RegisterClass"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod RegisterClass(pClassName As %String(MAXLEN=""), ByRef pGlobalRef As %String) As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"This method registers the extent of pClassName in the Extent Manager Catalog. If the extent has been previously registered and the new extent definition is compatible with the existing extent then the extent is updated."}),"\n",(0,n.jsx)(t.h3,{id:"registercustomextent",children:"RegisterCustomExtent"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod RegisterCustomExtent(pExtentName, ByRef pExtentType As %String = "", ByRef pGlobalRef As %String) As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"This method registers an extent that is not necessarily an extent of a persistent class. It can be either the extent of a persistent class that does not use default storage or it can simply be an extent that exists with no class definition. It can be used to simply register global references so that those globals cannot be used for any conflicting purpose."}),"\n",(0,n.jsx)(t.p,{children:"This method accepts an extent name, extent type and an array of global references that are used by the extent."}),"\n",(0,n.jsx)(t.p,{children:'pExtentType is expected to be "cls" for the extent of a class. The extent type is always converted to lower case.'}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,n.jsxs)(t.table,{children:[(0,n.jsx)(t.thead,{children:(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.th,{children:"Parameters"}),(0,n.jsx)(t.th,{}),(0,n.jsx)(t.th,{children:"pExtentName"}),(0,n.jsx)(t.th,{children:"Input"}),(0,n.jsx)(t.th,{children:'The name of the entity whose extent is to be registered. This name is normally a class name of a persistent class but for custom extents this name can be anything that does not conflict with another extent name. This name and the pExtentType form the extent name that is registered in the Extent Catalog. For example, "SampleCustomGlobals" with a pExtentType = "gbl" might be a custom extent name used to register globals used directly in the Sample applications, forming an extent name of "SampleCustomGlobals.gbl".'})]})}),(0,n.jsxs)(t.tbody,{children:[(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"pExtentType"}),(0,n.jsx)(t.td,{children:"Input"}),(0,n.jsx)(t.td,{children:'The extent type. "cls" is the type for persistent extents. For custom extents, this can be anything but it should be descriptive. For example, "gbl" might be used to register globals used directly by and application.'}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"pGlobalRef"}),(0,n.jsx)(t.td,{children:"ByRef"}),(0,n.jsx)(t.td,{children:"An array of global references to be registered as used by this extent. This array is expected to be defined as pGlobalRef(subscript)=global_reference where subscript is normally a simple integer and global_reference is the global reference to be registered for use by this extent. The number of entries is not limited but there are practical limits."}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{})]})]})]}),"\n",(0,n.jsxs)(t.p,{children:[(0,n.jsx)(t.strong,{children:"Return value"}),": This method returns a %Status value indicating success or failure."]}),"\n",(0,n.jsx)(t.h3,{id:"registerglobalreference",children:"RegisterGlobalReference"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod RegisterGlobalReference(pExtentName As %String, pExtentType As %String = "cls", pReference As %String, Output pExisting As %Integer) As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"This method registers a global reference in the global registry for use by the requested pExtentName extent. If no incompatible uses are found then the method succeeds. Otherwise, an error message indicating the conflict and type of conflict is returned."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,n.jsxs)(t.table,{children:[(0,n.jsx)(t.thead,{children:(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.th,{children:"Parameters"}),(0,n.jsx)(t.th,{}),(0,n.jsx)(t.th,{children:"pExtentName"}),(0,n.jsx)(t.th,{children:"Input"}),(0,n.jsx)(t.th,{children:'The name of the entity that uses the reference to be registered. This name is normally a class name of a persistent class but for custom extents this name can be anything that does not conflict with another extent name. This name and the pExtentType form the extent name that is registered in the Extent Catalog. For example, "SampleCustomGlobals.gbl" might be a custom extent name used to register globals used directly in the Sample applications.'})]})}),(0,n.jsxs)(t.tbody,{children:[(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"pExtentType"}),(0,n.jsx)(t.td,{children:"Input"}),(0,n.jsx)(t.td,{children:'The extent type. "cls" is the type for persistent extents. For custom extents, this can be anything but it should be descriptive. For example, "gbl" might be used to register globals used directly by and application.'}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"pReference"}),(0,n.jsx)(t.td,{children:"Input"}),(0,n.jsx)(t.td,{children:"The global reference to be registered."}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"pExisting"}),(0,n.jsx)(t.td,{children:"Output"}),(0,n.jsx)(t.td,{children:"Returns 1 to indicate that the reference registered was already registered."}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{})]})]})]}),"\n",(0,n.jsxs)(t.p,{children:[(0,n.jsx)(t.strong,{children:"Return value"}),": This method returns a %Status value indicating success or failure."]}),"\n",(0,n.jsx)(t.h3,{id:"deleteglobalreference",children:"DeleteGlobalReference"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod DeleteGlobalReference(pReference As %String(MAXLEN="") = "", Output pUsedBy As %ExtentMgr.Catalog.Extent) As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"DeleteGlobalReference will delete a registered global reference from the GlobalRegistry. If the reference was previously registered then it is deleted, the name of the extent it was registered for use by is returned in pUsedBy and the method succeeds. Otherwise, a failure status is returned."}),"\n",(0,n.jsx)(t.h3,{id:"globaluses",children:"GlobalUses"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GlobalUses(pGlobalReference As %String(MAXLEN="") = "") [ ReturnResultsets, SqlName = GlobalUses, SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"GlobalUses is a class method that returns a result set in a context object. This method is easily invoked as an SQL procedure. The single result set contains the global name, global reference and extent name that is using the global reference for the global reference passed in as the single argument."}),"\n",(0,n.jsx)(t.p,{children:'SAMPLES>d ##class(%ExtentMgr.Util).GlobalUses("^Sample")  SAMPLES>d %sqlcontext.%Display()   Dumping result #1 GlobalName\tGlobalReference\tUsedByExtent ^Sample.CompanyD\t^Sample.CompanyD\tSample.Company.cls ^Sample.CompanyI\t^Sample.CompanyI("NameIdx")\tSample.Company.cls ^Sample.CompanyI\t^Sample.CompanyI("TaxIDIdx")\tSample.Company.cls ^Sample.PersonD\t^Sample.PersonD\tSample.Person.cls ^Sample.PersonI\t^Sample.PersonI("$Employee")\tSample.Employee.cls ^Sample.PersonI\t^Sample.PersonI("$Person")\tSample.Person.cls ^Sample.PersonI\t^Sample.PersonI("NameIDX")\tSample.Person.cls ^Sample.PersonI\t^Sample.PersonI("SSNKey")\tSample.Person.cls ^Sample.PersonI\t^Sample.PersonI("ZipCode")\tSample.Person.cls  9 Rows(s) Affected SAMPLES>'}),"\n",(0,n.jsx)(t.h3,{id:"globalsused",children:"GlobalsUsed"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GlobalsUsed(pExtentName As %String(MAXLEN="") = "") [ ReturnResultsets, SqlName = GlobalsUsed, SqlProc ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"GlobalsUsed is a class method that returns a result set in a context object. This method is easily invoked as an SQL procedure. The single result is a result set containing the extent name, global name and global reference for each global reference registered for use by the extent name passed in as the single argument."}),"\n",(0,n.jsx)(t.p,{children:"SAMPLES>set st=##class(%SQL.Statement).%New()"}),"\n",(0,n.jsx)(t.p,{children:'SAMPLES>write st.%Prepare("call %ExtentMgr.GlobalsUsed(?)")'}),"\n",(0,n.jsx)(t.p,{children:"1"}),"\n",(0,n.jsx)(t.p,{children:'SAMPLES>set rs=st.%Execute("Sample.Person.cls")'}),"\n",(0,n.jsx)(t.p,{children:"SAMPLES>do rs.%Display()"}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,n.jsxs)(t.table,{children:[(0,n.jsx)(t.thead,{children:(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.th,{children:"UsedByExtent"}),(0,n.jsx)(t.th,{children:"GlobalName"}),(0,n.jsx)(t.th,{children:"GlobalReference"})]})}),(0,n.jsxs)(t.tbody,{children:[(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"Sample.Person.cls"}),(0,n.jsx)(t.td,{children:"^Sample.PersonD"}),(0,n.jsx)(t.td,{children:"^Sample.PersonD"})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"Sample.Person.cls"}),(0,n.jsx)(t.td,{children:"^Sample.PersonI"}),(0,n.jsx)(t.td,{children:'^Sample.PersonI("$Person")'})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"Sample.Person.cls"}),(0,n.jsx)(t.td,{children:"^Sample.PersonI"}),(0,n.jsx)(t.td,{children:'^Sample.PersonI("NameIDX")'})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"Sample.Person.cls"}),(0,n.jsx)(t.td,{children:"^Sample.PersonI"}),(0,n.jsx)(t.td,{children:'^Sample.PersonI("SSNKey")'})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"Sample.Person.cls"}),(0,n.jsx)(t.td,{children:"^Sample.PersonI"}),(0,n.jsx)(t.td,{children:'^Sample.PersonI("ZipCode")'})]})]})]}),"\n",(0,n.jsx)(t.h3,{id:"globaltosqltable",children:"GlobalToSqlTable"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod GlobalToSqlTable(namespace As %String = "", global As %String = "", Output pSC As %Status) As %String [ Internal, ServerOnly = 1 ]\n'})}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,n.jsxs)(t.table,{children:[(0,n.jsx)(t.thead,{children:(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.th,{children:"Parameters"}),(0,n.jsx)(t.th,{}),(0,n.jsx)(t.th,{children:"namespace"}),(0,n.jsx)(t.th,{children:"Input"}),(0,n.jsx)(t.th,{children:"The namespace in which to correlate the global reference. SQL tables exist only in the context of namespaces."})]})}),(0,n.jsxs)(t.tbody,{children:[(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"global"}),(0,n.jsx)(t.td,{children:"Input"}),(0,n.jsx)(t.td,{children:'The global variable name (with or without subscripts) to correlate. Providing an extended global reference will return "".'}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"pSC"}),(0,n.jsx)(t.td,{children:"Output"}),(0,n.jsx)(t.td,{children:'If the return value is "", this %Status will indicate whether it was due to some issue (e.g. insufficient privileges or incorrigible inputs) or if the provided global is not associated with a SQL table.'}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{})]})]})]}),"\n",(0,n.jsxs)(t.p,{children:[(0,n.jsx)(t.strong,{children:"Return value"}),": A fully qualified SQL table (.) corresponding to the global provided."]}),"\n",(0,n.jsx)(t.h3,{id:"getrowversion",children:"GetRowVersion"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod GetRowVersion() As %Library.BigInt\n"})}),"\n",(0,n.jsx)(t.p,{children:"GetRowVersion returns the current ROWVERSION counter for this database. The rowversion counter is used by classes with a property of type %Library.RowVersion."})]})}function d(e={}){const{wrapper:t}={...(0,l.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(o,{...e})}):o(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>a,x:()=>i});var n=s(96540);const l={},r=n.createContext(l);function a(e){const t=n.useContext(r);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function i(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:a(e.components),n.createElement(r.Provider,{value:t},e.children)}}}]);