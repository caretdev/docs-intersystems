"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[28865],{58903:(e,s,a)=>{a.r(s),a.d(s,{contentTitle:()=>l,default:()=>d,frontMatter:()=>t,toc:()=>c});var r=a(74848),n=a(28453);const t={pagination_prev:null,pagination_next:null},l="%CSP.UI.System.BackgroundTask",c=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"TASKS",id:"tasks",level:3},{value:"Methods",id:"methods",level:2},{value:"RunTask",id:"runtask",level:3},{value:"RunBackgroundTask",id:"runbackgroundtask",level:3},{value:"ActivateShard",id:"activateshard",level:3},{value:"AssignShard",id:"assignshard",level:3},{value:"VerifyShard",id:"verifyshard",level:3},{value:"RebalanceShard",id:"rebalanceshard",level:3},{value:"CreateDatabase",id:"createdatabase",level:3},{value:"DefragmentDB",id:"defragmentdb",level:3},{value:"CompactDBSpace",id:"compactdbspace",level:3},{value:"ModifyDatabaseSize",id:"modifydatabasesize",level:3},{value:"SQLExport",id:"sqlexport",level:3},{value:"SQLImport",id:"sqlimport",level:3},{value:"SQLExportStatement",id:"sqlexportstatement",level:3},{value:"SQLImportStatement",id:"sqlimportstatement",level:3},{value:"QueryExport",id:"queryexport",level:3},{value:"Compile",id:"compile",level:3},{value:"Delete",id:"delete",level:3},{value:"EnableEnsNamespace",id:"enableensnamespace",level:3},{value:"CopyNamespaceMappings",id:"copynamespacemappings",level:3},{value:"DatabaseIntegrityCheck",id:"databaseintegritycheck",level:3},{value:"JournalIntegrityCheck",id:"journalintegritycheck",level:3},{value:"Export",id:"export",level:3},{value:"Import",id:"import",level:3},{value:"LinkTable",id:"linktable",level:3},{value:"LinkProcedure",id:"linkprocedure",level:3},{value:"DataMigration",id:"datamigration",level:3},{value:"RebuildIndices",id:"rebuildindices",level:3},{value:"AuditCopy",id:"auditcopy",level:3},{value:"AuditExport",id:"auditexport",level:3},{value:"AuditPurge",id:"auditpurge",level:3},{value:"TuneTables",id:"tunetables",level:3},{value:"PurgeAllCachedQueries",id:"purgeallcachedqueries",level:3},{value:"FileMan",id:"fileman",level:3},{value:"MirrorActivateCatchupDB",id:"mirroractivatecatchupdb",level:3},{value:"MirrorMountDB",id:"mirrormountdb",level:3},{value:"MirrorRemoveDB",id:"mirrorremovedb",level:3},{value:"MirrorAddDatabases",id:"mirroradddatabases",level:3},{value:"JobShowPlan",id:"jobshowplan",level:3},{value:"JobPossiblePlans",id:"jobpossibleplans",level:3},{value:"JobComparePlans",id:"jobcompareplans",level:3},{value:"JobSaveQuery",id:"jobsavequery",level:3},{value:"ExternalLangServers",id:"externallangservers",level:3},{value:"Task1",id:"task1",level:3},{value:"EnumerateTasksExecute",id:"enumeratetasksexecute",level:3},{value:"EnumerateTasksFetch",id:"enumeratetasksfetch",level:3},{value:"EnumerateTasksClose",id:"enumeratetasksclose",level:3},{value:"ErrorLogExecute",id:"errorlogexecute",level:3},{value:"ErrorLogClose",id:"errorlogclose",level:3},{value:"ErrorLogFetch",id:"errorlogfetch",level:3},{value:"WriteError",id:"writeerror",level:3},{value:"WriteDone",id:"writedone",level:3}];function i(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,n.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"cspuisystembackgroundtask",children:"%CSP.UI.System.BackgroundTask"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %CSP.UI.System.BackgroundTask Extends %RegisteredObject [ System = 4 ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class."}),"\n",(0,r.jsxs)(s.p,{children:["This class supplies the ManagementPortal with a way to execute certain tasks as background jobs.",(0,r.jsx)(s.br,{}),"\nFor example, you can rebuild indices for a class: ",(0,r.jsx)(s.code,{children:'Set tParms("ClassName") = "Sample.Person" Set tSC = ..RunTask("RebuildIndices","SAMPLES",.tParms,.tJob)'})]}),"\n",(0,r.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%Utility";\n'})}),"\n",(0,r.jsx)(s.p,{children:"Default Localization Domain"}),"\n",(0,r.jsx)(s.h3,{id:"tasks",children:"TASKS"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter TASKS = ",AuditCopy,AuditExport,AuditPurge,Backup,CompactDBSpace,CopyNamespaceMappings,CreateDatabase,Compile,DatabaseIntegrityCheck,DataMigration,DefragmentDB,Delete,EnableEnsNamespace,Export,ExternalLangServers,FileMan,Import,SQLExport,SQLImport,SQLExportStatement,SQLImportStatement,QueryExport,JournalIntegrityCheck,LinkTable,LinkProcedure,MirrorActivateCatchupDB,MirrorRemoveDB,MirrorMountDB,MirrorAddDatabases,ModifyDatabaseSize,RebuildIndices,TuneTable,TuneTables,PurgeAllCachedQueries,JobShowPlan,JobSaveQuery,JobPossiblePlans,JobComparePlans,ShardActivate,ShardAssign,ShardVerify,ShardRebalance,Task1";\n'})}),"\n",(0,r.jsx)(s.p,{children:"This defines the allowed tasks that this class can run"}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"runtask",children:"RunTask"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod RunTask(pTask As %String, pNS As %String, ByRef pParms As %String, ByRef tItems As %String = "", ByRef pJob As %Integer) As %Status\n'})}),"\n",(0,r.jsxs)(s.p,{children:["Use this method to request a background task pTask is name of task to run; it must one of the entries in the TASKS parameter.",(0,r.jsx)(s.br,{}),"\npNS is namespace to run task in.",(0,r.jsx)(s.br,{}),"\npParms is a array containing parameters for the task in the form pParms(parm)=value.",(0,r.jsx)(s.br,{}),"\nIt returns a PID# if the task is started, or 0 if it fails to start."]}),"\n",(0,r.jsx)(s.h3,{id:"runbackgroundtask",children:"RunBackgroundTask"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod RunBackgroundTask(pTask As %String, pNS As %String, pParmList As %List, pIdx As %Integer)\n"})}),"\n",(0,r.jsx)(s.p,{children:"This wrapper method is run in the background job. pParms is a list of parameters."}),"\n",(0,r.jsx)(s.h3,{id:"activateshard",children:"ActivateShard"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ActivateShard(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"assignshard",children:"AssignShard"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AssignShard(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Assign new shard in the background"}),"\n",(0,r.jsx)(s.h3,{id:"verifyshard",children:"VerifyShard"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod VerifyShard(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Verify shards in the background"}),"\n",(0,r.jsx)(s.h3,{id:"rebalanceshard",children:"RebalanceShard"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod RebalanceShard(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Rebalance shards in the background"}),"\n",(0,r.jsx)(s.h3,{id:"createdatabase",children:"CreateDatabase"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CreateDatabase(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Create a database"}),"\n",(0,r.jsx)(s.h3,{id:"defragmentdb",children:"DefragmentDB"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DefragmentDB(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"compactdbspace",children:"CompactDBSpace"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CompactDBSpace(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return unused db space"}),"\n",(0,r.jsx)(s.h3,{id:"modifydatabasesize",children:"ModifyDatabaseSize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ModifyDatabaseSize(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Modify database size"}),"\n",(0,r.jsx)(s.h3,{id:"sqlexport",children:"SQLExport"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SQLExport(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start SQL Export"}),"\n",(0,r.jsx)(s.h3,{id:"sqlimport",children:"SQLImport"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SQLImport(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start SQL Import"}),"\n",(0,r.jsx)(s.h3,{id:"sqlexportstatement",children:"SQLExportStatement"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SQLExportStatement(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"sqlimportstatement",children:"SQLImportStatement"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SQLImportStatement(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"queryexport",children:"QueryExport"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod QueryExport(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start SQL Export Dynamic Query"}),"\n",(0,r.jsx)(s.h3,{id:"compile",children:"Compile"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Compile(ByRef pParms, ByRef tItems) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start Compile routines/classes"}),"\n",(0,r.jsx)(s.h3,{id:"delete",children:"Delete"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Delete(ByRef pParms, ByRef tItems) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start Delete routines/classes"}),"\n",(0,r.jsx)(s.h3,{id:"enableensnamespace",children:"EnableEnsNamespace"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnableEnsNamespace(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Enable productions for a namespace"}),"\n",(0,r.jsx)(s.h3,{id:"copynamespacemappings",children:"CopyNamespaceMappings"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CopyNamespaceMappings(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Copy Mappings from one Namespace to another"}),"\n",(0,r.jsx)(s.h3,{id:"databaseintegritycheck",children:"DatabaseIntegrityCheck"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DatabaseIntegrityCheck(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start database file integrity check. After finish, transform results to file."}),"\n",(0,r.jsx)(s.h3,{id:"journalintegritycheck",children:"JournalIntegrityCheck"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod JournalIntegrityCheck(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start journal file integrity check"}),"\n",(0,r.jsx)(s.h3,{id:"export",children:"Export"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Export(ByRef pParms, ByRef tItems) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start Export globals/routines/classes"}),"\n",(0,r.jsx)(s.h3,{id:"import",children:"Import"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Import(ByRef pParms, ByRef tItems) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start Import globals/routines/classes"}),"\n",(0,r.jsx)(s.h3,{id:"linktable",children:"LinkTable"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod LinkTable(ByRef pParms, ByRef tItems) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start SQL Link Table"}),"\n",(0,r.jsx)(s.h3,{id:"linkprocedure",children:"LinkProcedure"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod LinkProcedure(ByRef pParms, ByRef tItems) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start SQL Link Procedure"}),"\n",(0,r.jsx)(s.h3,{id:"datamigration",children:"DataMigration"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DataMigration(ByRef pParms, ByRef tItems) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Sart SQL Data Migration"}),"\n",(0,r.jsx)(s.h3,{id:"rebuildindices",children:"RebuildIndices"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod RebuildIndices(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Rebuild indices for a class"}),"\n",(0,r.jsx)(s.h3,{id:"auditcopy",children:"AuditCopy"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AuditCopy(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start Copy audit log to another namespace"}),"\n",(0,r.jsx)(s.h3,{id:"auditexport",children:"AuditExport"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AuditExport(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start Export audit log"}),"\n",(0,r.jsx)(s.h3,{id:"auditpurge",children:"AuditPurge"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AuditPurge(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Start Purge audit log"}),"\n",(0,r.jsx)(s.h3,{id:"tunetables",children:"TuneTables"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod TuneTables(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Tune all tables in a schema"}),"\n",(0,r.jsx)(s.h3,{id:"purgeallcachedqueries",children:"PurgeAllCachedQueries"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod PurgeAllCachedQueries() As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Purge all cached queries from all namespaces"}),"\n",(0,r.jsx)(s.h3,{id:"fileman",children:"FileMan"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FileMan(ByRef pParms, ByRef pItems) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Map FileMan files to InterSystems classes"}),"\n",(0,r.jsx)(s.h3,{id:"mirroractivatecatchupdb",children:"MirrorActivateCatchupDB"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MirrorActivateCatchupDB(ByRef pParms, ByRef pItems) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Activate and/or catchup Mirror DBs"}),"\n",(0,r.jsx)(s.h3,{id:"mirrormountdb",children:"MirrorMountDB"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MirrorMountDB(ByRef pParms, ByRef pItems) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Mount Mirror DBs"}),"\n",(0,r.jsx)(s.h3,{id:"mirrorremovedb",children:"MirrorRemoveDB"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MirrorRemoveDB(ByRef pParms, ByRef pItems) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Remove DBs from mirror"}),"\n",(0,r.jsx)(s.h3,{id:"mirroradddatabases",children:"MirrorAddDatabases"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod MirrorAddDatabases(ByRef pParms, ByRef pItems) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Add databases to mirror"}),"\n",(0,r.jsx)(s.h3,{id:"jobshowplan",children:"JobShowPlan"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod JobShowPlan(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Run Show Plan process in the background"}),"\n",(0,r.jsx)(s.h3,{id:"jobpossibleplans",children:"JobPossiblePlans"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod JobPossiblePlans(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Run Possible Plans process in the background"}),"\n",(0,r.jsx)(s.h3,{id:"jobcompareplans",children:"JobComparePlans"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod JobComparePlans(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Run Compare Show Plans process in the background"}),"\n",(0,r.jsx)(s.h3,{id:"jobsavequery",children:"JobSaveQuery"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod JobSaveQuery(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Run Save Query (for pTools) process in the background"}),"\n",(0,r.jsx)(s.h3,{id:"externallangservers",children:"ExternalLangServers"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ExternalLangServers(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Check status of external language servers"}),"\n",(0,r.jsx)(s.h3,{id:"task1",children:"Task1"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Task1(ByRef pParms) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Test task"}),"\n",(0,r.jsx)(s.h3,{id:"enumeratetasksexecute",children:"EnumerateTasksExecute"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnumerateTasksExecute(ByRef qHandle As %Binary) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return a list of currently excuting (or failed) background Management Portal tasks."}),"\n",(0,r.jsx)(s.h3,{id:"enumeratetasksfetch",children:"EnumerateTasksFetch"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnumerateTasksFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateTasksExecute ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"enumeratetasksclose",children:"EnumerateTasksClose"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnumerateTasksClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateTasksExecute ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"errorlogexecute",children:"ErrorLogExecute"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ErrorLogExecute(ByRef QHandle As %Binary, %pid As %Library.String) As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"errorlogclose",children:"ErrorLogClose"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ErrorLogClose(QHandle As %Binary) As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"errorlogfetch",children:"ErrorLogFetch"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ErrorLogFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status\n"})}),"\n",(0,r.jsx)(s.h3,{id:"writeerror",children:"WriteError"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteError(ErrorMessage)\n"})}),"\n",(0,r.jsx)(s.p,{children:'This method writes generic Status of "ERROR" and error message to Details.'}),"\n",(0,r.jsx)(s.h3,{id:"writedone",children:"WriteDone"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteDone()\n"})}),"\n",(0,r.jsx)(s.p,{children:'This method writes generic Status of "Done".'})]})}function d(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(i,{...e})}):i(e)}},28453:(e,s,a)=>{a.d(s,{R:()=>l,x:()=>c});var r=a(96540);const n={},t=r.createContext(n);function l(e){const s=r.useContext(t);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function c(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:l(e.components),r.createElement(t.Provider,{value:s},e.children)}}}]);