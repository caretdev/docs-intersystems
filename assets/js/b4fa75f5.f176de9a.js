"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[56205],{92640:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>a,default:()=>u,frontMatter:()=>i,toc:()=>l});var r=t(74848),n=t(28453);const i={pagination_prev:null,pagination_next:null},a="%DeepSee.CubeManager.Utils",l=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"Methods",id:"methods",level:2},{value:"BuildCube",id:"buildcube",level:3},{value:"RepairBuild",id:"repairbuild",level:3},{value:"BuildAllRegisteredGroups",id:"buildallregisteredgroups",level:3},{value:"BuildOneRegisteredGroup",id:"buildoneregisteredgroup",level:3},{value:"ExecuteCustomCode",id:"executecustomcode",level:3},{value:"SynchronizeCube",id:"synchronizecube",level:3},{value:"RegisterCube",id:"registercube",level:3},{value:"GetLastUpdate",id:"getlastupdate",level:3},{value:"IsUpdate",id:"isupdate",level:3},{value:"RegisterGroup",id:"registergroup",level:3},{value:"UnregisterCube",id:"unregistercube",level:3},{value:"UnregisterGroup",id:"unregistergroup",level:3},{value:"GetActiveRegistry",id:"getactiveregistry",level:3},{value:"SetActiveRegistry",id:"setactiveregistry",level:3},{value:"BuildRegistryMap",id:"buildregistrymap",level:3},{value:"WriteToRegistry",id:"writetoregistry",level:3},{value:"ScheduleUpdaterTasks",id:"scheduleupdatertasks",level:3},{value:"GetSynchScheduleParameters",id:"getsynchscheduleparameters",level:3},{value:"GetCubeSize",id:"getcubesize",level:3},{value:"UnregisterAll",id:"unregisterall",level:3},{value:"GetCubeGroup",id:"getcubegroup",level:3},{value:"MergeCubeGroups",id:"mergecubegroups",level:3},{value:"IsValidGroup",id:"isvalidgroup",level:3},{value:"IsValidCubeSchedule",id:"isvalidcubeschedule",level:3},{value:"GetCubeGroups",id:"getcubegroups",level:3},{value:"FindCubeGroups",id:"findcubegroups",level:3},{value:"FindGroupBuildOrders",id:"findgroupbuildorders",level:3},{value:"GetDependentCubes",id:"getdependentcubes",level:3},{value:"DisableCube",id:"disablecube",level:3},{value:"EnableCube",id:"enablecube",level:3},{value:"GetDSItemItinerary",id:"getdsitemitinerary",level:3},{value:"SetIndependentGroupSync",id:"setindependentgroupsync",level:3},{value:"GetIndependentGroupSync",id:"getindependentgroupsync",level:3}];function d(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,n.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"deepseecubemanagerutils",children:"%DeepSee.CubeManager.Utils"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %DeepSee.CubeManager.Utils Extends %RegisteredObject [ System = 4 ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Utility container for the cube manager"}),"\n",(0,r.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(s.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter DOMAIN = "%DeepSee";\n'})}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"buildcube",children:"BuildCube"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod BuildCube(pCubeName As %String = "", pAsync As %Boolean = 1, pVerbose As %Boolean = 1, pIndexOnly As %Boolean = 0, pMaxFacts As %Integer = 0, pTracking As %Boolean = 0, pRepair As %Boolean = 0, pMapCube As %DeepSee.CubeManager.RegistryMapCube = "", ByRef pBuildStats, pFactList As %String = "") As %Status\n'})}),"\n",(0,r.jsx)(s.p,{children:"A wrapper for %DeepSee.Utils.%BuildCube which records cube event information when building the cube. All arguments listed after pCubeName perfrom the identical function as they do in %BuildCube, with the exception of pRepair. This argument changes the event type in the logs to note that this cube was rebuilt as part of a repair build."}),"\n",(0,r.jsx)(s.h3,{id:"repairbuild",children:"RepairBuild"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod RepairBuild(pCubeName As %String, pMap As %DeepSee.CubeManager.RegistryMap = "", pAsync As %Boolean = 1, pVerbose As %Boolean = 1, pIndexOnly As %Boolean = 0, pMaxFacts As %Integer = 0, pTracking As %Boolean = 0, ByRef pBuildStats, pFactList As %String = "") As %Status\n'})}),"\n",(0,r.jsxs)(s.p,{children:["This method provides a means of doing an unscheduled repair build of a registered cube. This method will build the target cube, and then trigger a build of the entire list of cubes that depend on it through cube relationships.",(0,r.jsx)(s.br,{}),"\nBuild statistics for each cube in the registry can be returned by reference in pBuildStats(CUBENAME)."]}),"\n",(0,r.jsx)(s.h3,{id:"buildallregisteredgroups",children:"BuildAllRegisteredGroups"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod BuildAllRegisteredGroups(pMap As %DeepSee.CubeManager.RegistryMap = "", ByRef pBuildStats, pVerbose As %Boolean = 1) As %Status\n'})}),"\n",(0,r.jsxs)(s.p,{children:["This is a utility method which executes a complete build of all currently registered cubes in the current cube registry. The build initiated by this utility will walk through every cube and build it in the order it is listed in the DeepSee Cube Registry page. This can be used to initialize the system, for example after importing a new registry definition or restoring a backup of the source data.",(0,r.jsx)(s.br,{}),"\nBuild statistics for each cube in the registry can be returned by reference in pBuildStats(CUBENAME)."]}),"\n",(0,r.jsx)(s.h3,{id:"buildoneregisteredgroup",children:"BuildOneRegisteredGroup"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod BuildOneRegisteredGroup(pGroupName = "", pMap As %DeepSee.CubeManager.RegistryMap = "", ByRef pBuildStats, pVerbose As %Boolean = 1) As %Status\n'})}),"\n",(0,r.jsx)(s.p,{children:"This is a utility method which executes a complete build of one registered cube group in the current cube registry. The build initiated by this utility will walk through every cube and build it in the order it is listed in the DeepSee Cube Registry page."}),"\n",(0,r.jsxs)(s.p,{children:["The value of pGroupName must exactly match the case of the registered group name to inititate the group build.",(0,r.jsx)(s.br,{}),"\nBuild statistics for each cube in the group can be returned by reference in pBuildStats(CUBENAME)."]}),"\n",(0,r.jsx)(s.h3,{id:"executecustomcode",children:"ExecuteCustomCode"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ExecuteCustomCode(pCustomCode As %String = "", pCubeKey As %String = "", pEventType As %String = "", ByRef pAbortSynch) As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(s.p,{children:"Method to execute and log custom user code stored with a cube."}),"\n",(0,r.jsx)(s.h3,{id:"synchronizecube",children:"SynchronizeCube"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod SynchronizeCube(pCubeName As %String = "", pVerbose As %Boolean = 1, Output pFactsUpdated As %Integer, pReadCommitted As %Boolean = 1, pCheckReferences As %Boolean = 1, pAsync As %Boolean = 0, pMapCube As %DeepSee.CubeManager.RegistryMapCube = "", ByRef pSynchronizeStats) As %Status\n'})}),"\n",(0,r.jsxs)(s.p,{children:["A wrapper for %DeepSee.Utils.%SynchronizeCube which records cube event information when building the cube. This method will quit with an error if",(0,r.jsx)(s.br,{}),"\n- pCubeName refers to an unregistered cube",(0,r.jsx)(s.br,{}),"\n- pCubeName is marked as disabled in the registry"]}),"\n",(0,r.jsx)(s.h3,{id:"registercube",children:"RegisterCube"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod RegisterCube(pCube As %DeepSee.CubeManager.RegistryMapCube = "", pGroup As %DeepSee.CubeManager.RegistryMapGroup = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(s.p,{children:"Used to enter cube information into the Cube Registry Table. This will return an error if pCubeName refers to a subject area or is undefined. The method automatically determines whether to update or create a new entry in the registry based on the existence of pCubeName."}),"\n",(0,r.jsx)(s.p,{children:"This can be called from the command line or from UI server processes."}),"\n",(0,r.jsx)(s.h3,{id:"getlastupdate",children:"GetLastUpdate"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetLastUpdate(pCubeKey, pUpdateType = "synch") As %String\n'})}),"\n",(0,r.jsx)(s.p,{children:"Retrieves the timestamp of the the last registered data update for the cube. Updates performed outside of the Cube Manager will not be recognized in this check."}),"\n",(0,r.jsx)(s.h3,{id:"isupdate",children:"IsUpdate"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsUpdate(pCube As %DeepSee.CubeManager.RegistryMapCube, pGroupName As %String) As %Boolean\n"})}),"\n",(0,r.jsx)(s.p,{children:"Utility method used to determine whether this cube needs to be processed when we write to the registry. Cubes that have not been updated don't get processed because we don't want to generate a cube history event unnecessarily."}),"\n",(0,r.jsx)(s.h3,{id:"registergroup",children:"RegisterGroup"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod RegisterGroup(pGroup As %DeepSee.CubeManager.RegistryMapGroup) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"DEPRECATED - We do not need the group table within the XML storage scheme. Records a group's default build information to the group table."}),"\n",(0,r.jsx)(s.h3,{id:"unregistercube",children:"UnregisterCube"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod UnregisterCube(pCubeName As %String = "", pMapCube As %DeepSee.CubeManager.RegistryMapCube = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(s.p,{children:"This does the actual work of removing a cube from the SQL registry table, and records the event."}),"\n",(0,r.jsx)(s.h3,{id:"unregistergroup",children:"UnregisterGroup"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod UnregisterGroup(pGroupName As %String = "", pMapGroup As %DeepSee.CubeManager.RegistryMapGroup = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(s.p,{children:"Deletes a whole group from the SQL registry table."}),"\n",(0,r.jsx)(s.h3,{id:"getactiveregistry",children:"GetActiveRegistry"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetActiveRegistry() As %String\n"})}),"\n",(0,r.jsx)(s.p,{children:"Retrieve the name of the Cube Registry currently marked Active"}),"\n",(0,r.jsx)(s.h3,{id:"setactiveregistry",children:"SetActiveRegistry"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod SetActiveRegistry(pClassName = "DeepSee.CubeManager.CubeRegistryDefinition", pMustExist = 1) As %Status\n'})}),"\n",(0,r.jsx)(s.p,{children:"Change which Cube Registry is currently active. The Active Registry is the only one that is visible to the updater tasks."}),"\n",(0,r.jsx)(s.h3,{id:"buildregistrymap",children:"BuildRegistryMap"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod BuildRegistryMap(ByRef pStatus, pClassName = "", pRegisteredOnly = 0, ByRef pLookup) As %DeepSee.CubeManager.RegistryMap\n'})}),"\n",(0,r.jsxs)(s.p,{children:["Retrieve the map that describes the current state of the Cube Registry and all other unregistered cubes on the system. By default, the currently active registry is loaded first and then this is augmented with the remaining unregistered natural cube groups. The registry object can be loaded from a non-active registry class by supplying the name of the alternate storage class in the pClassName parameter. The unregistered groups may be ignored when loading the class by setting",(0,r.jsx)(s.br,{}),"\npRegisteredOnly = 1"]}),"\n",(0,r.jsxs)(s.p,{children:["Optionally pLookup may be constructed to provide an index of the ordered locations of every cube loaded into the map object. This takes the form",(0,r.jsx)(s.br,{}),"\npLookup(CubeKey) = $LB(GroupPosition,CubePosition)",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.code,{children:'Set CubeName = "HOLEFOODS" Set Map = ##class(%DeepSee.CubeManager.Utils).BuildRegistryMap(,,,.Lookup) Set GroupIdx = $LG(Lookup("cubes",CubeName),1) Set CubeIdx = $LG(Lookup("cubes",CubeName),2) Set Cube = Map.Groups.GetAt(GroupIdx).Cubes.GetAt(CubeIdx)'})]}),"\n",(0,r.jsx)(s.h3,{id:"writetoregistry",children:"WriteToRegistry"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WriteToRegistry(ByRef pCubeMap As %DeepSee.CubeManager.RegistryMap, ByRef pValidation) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Walk through a CubeManager.RegistryMap object and register the cubes. This saves the complete registry to an XData block in a container class, and saves limited information to the registry table for SQL reference."}),"\n",(0,r.jsx)(s.h3,{id:"scheduleupdatertasks",children:"ScheduleUpdaterTasks"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ScheduleUpdaterTasks(pCubeMap As %DeepSee.CubeManager.RegistryMap = "", Output pTaskInfo As %DynamicObject = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsxs)(s.p,{children:["Schedule the build and synch tasks according to the settings in a CubeManager.RegistryMap object. A return status of $$$OK indicates that every attempt to create or modify a build/synch task was successful. If the scheduling encounters an error, the error will be logged to the DeepSee logs and returned in the pTaskInfo object in the properties",(0,r.jsx)(s.br,{}),"\n- pTaskInfo.ScheduleBuildSC",(0,r.jsx)(s.br,{}),"\n- pTaskInfo.ScheduleSynchSC"]}),"\n",(0,r.jsx)(s.h3,{id:"getsynchscheduleparameters",children:"GetSynchScheduleParameters"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetSynchScheduleParameters(pScheduleSynchInterval As %String = 0, Output pDailyFrequency, Output pDailyFrequencyTime, Output pDailyIncrement, Output pDailyStartTime) [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Convenience method -- takes the number of seconds between synchs and sets the parameters for the call to ##class(%DeepSee.CubeManager.Task.Synch).Schedule"}),"\n",(0,r.jsx)(s.h3,{id:"getcubesize",children:"GetCubeSize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetCubeSize(pCubeKey) As %Integer [ Internal ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["- DEPRECATED -",(0,r.jsx)(s.br,{}),"\n%DeepSee.Utils.%GetCubeFactCount should be used instead."]}),"\n",(0,r.jsx)(s.h3,{id:"unregisterall",children:"UnregisterAll"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod UnregisterAll() As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["- DEPRECATED -",(0,r.jsx)(s.br,{}),"\nResets the entire cube registry table."]}),"\n",(0,r.jsx)(s.h3,{id:"getcubegroup",children:"GetCubeGroup"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetCubeGroup(pGroupName As %String, pMap As %DeepSee.CubeManager.RegistryMap = "", Output pStatus) As %DeepSee.CubeManager.RegistryMapGroup [ Internal ]\n'})}),"\n",(0,r.jsx)(s.p,{children:"Retrieves a group by name from the Cube Registry."}),"\n",(0,r.jsx)(s.h3,{id:"mergecubegroups",children:"MergeCubeGroups"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod MergeCubeGroups(ByRef pGroup1, ByRef pGroup2, ByRef pMergeGroup, pMergedGroupName = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(s.p,{children:"Merge two array-based cube groups together into a single group. This will automatically determine an acceptable build order for the resulting group and return this in the pMergeGroup array."}),"\n",(0,r.jsx)(s.p,{children:'If pMergedGroupName is supplied, this will be the new group name. If this argument is "", the group will inherit the name stored in the array pGroup1.'}),"\n",(0,r.jsx)(s.h3,{id:"isvalidgroup",children:"IsValidGroup"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsValidGroup(ByRef pGroup As %DeepSee.CubeManager.RegistryMapGroup, ByRef pStatus As %Status, ByRef pGroups, ByRef pCubes, ByRef pBuildOrders) As %Boolean\n"})}),"\n",(0,r.jsx)(s.p,{children:"Boolean test which returns 1 if the group supplied as the argument is no less than the union of the natural groups of each of its members. If this test returns 0, the specific reason for the failure will be recorded in pStatus."}),"\n",(0,r.jsx)(s.h3,{id:"isvalidcubeschedule",children:"IsValidCubeSchedule"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsValidCubeSchedule(pCube As %DeepSee.CubeManager.RegistryMapCube, Output pStatus) As %Boolean\n"})}),"\n",(0,r.jsx)(s.p,{children:"Validation for the current cube settings."}),"\n",(0,r.jsx)(s.h3,{id:"getcubegroups",children:"GetCubeGroups"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetCubeGroups(ByRef pGroups, ByRef pCubes, ByRef pBuildOrders, pReg = 0) As %Status\n"})}),"\n",(0,r.jsx)(s.p,{children:"Calculates the natural groups for all cubes on the system. Group information is returned in array form. These arrays are organized as follows:"}),"\n",(0,r.jsxs)(s.p,{children:["pGroups(groupName,cubeKey) = buildOrder",(0,r.jsx)(s.br,{}),"\npCubes(cubeKey) = groupName",(0,r.jsx)(s.br,{}),"\npBuildOrders(groupName,buildPosition) = cubeKey"]}),"\n",(0,r.jsx)(s.p,{children:"If the cube has dependencies, there will be an additional array"}),"\n",(0,r.jsx)(s.p,{children:'pCubes(cubeKey,"dependents")'}),"\n",(0,r.jsx)(s.p,{children:"which will list the cubes that must be updated if this one has been updated."}),"\n",(0,r.jsx)(s.h3,{id:"findcubegroups",children:"FindCubeGroups"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FindCubeGroups(ByRef pGroups, ByRef pCubes) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Automatically assign groups based on cube relationships. All cubes which are independent of each other will be assigned to their own group."}),"\n",(0,r.jsx)(s.h3,{id:"findgroupbuildorders",children:"FindGroupBuildOrders"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod FindGroupBuildOrders(ByRef pGroups, ByRef pBuildOrders) As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["Pass in an array of group members, as found by GetCubeGroups, and determine an acceptable build order. The order is returned as an integer stored in each node of the group:",(0,r.jsx)(s.br,{}),"\npGroups(group #,Cube) = Build order"]}),"\n",(0,r.jsx)(s.h3,{id:"getdependentcubes",children:"GetDependentCubes"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetDependentCubes(pCubeName = "", pMap As %DeepSee.CubeManager.RegistryMap = "", Output pDependentCubes, ByRef pGroups, ByRef pCubes, ByRef pBuildOrders) As %Status\n'})}),"\n",(0,r.jsxs)(s.p,{children:["This method accumulates the complete list of cubes dependent on this target cube, based on defined relationships. Every cube in pDependentCubes must be built following a build of pCubeName. This is an alphabetical list, it is not a build order.",(0,r.jsx)(s.br,{}),"\nThe registry map can optionally be passed in as pMap to take advantage of the relationship information already stored in the cube registry, avoiding the recalcualtion of natural groups on the system."]}),"\n",(0,r.jsx)(s.h3,{id:"disablecube",children:"DisableCube"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DisableCube(pCubeName) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"This is an internal method to keep the SQL references current with the RegistryMap object representation. This does the actual work of marking the cube referenced by pCubeName as disabled in the Registry table."}),"\n",(0,r.jsx)(s.h3,{id:"enablecube",children:"EnableCube"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnableCube(pCubeName As %String) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"This is an internal method to keep the SQL references current with the RegistryMap object representation. This does the actual work of marking the cube referenced by pCubeName as enabled in the Registry table."}),"\n",(0,r.jsx)(s.h3,{id:"getdsitemitinerary",children:"GetDSItemItinerary"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetDSItemItinerary(ByRef byCube, ByRef bySource) As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["Compile a reference index to look up DeepSee folder items that depend on cubes and data sources. Each branch of the return array",(0,r.jsx)(s.br,{}),"\npCubeIdx(cube)",(0,r.jsx)(s.br,{}),"\nholds all folder items that ",(0,r.jsx)(s.strong,{children:"might"})," be dependent upon this cube. Before cube removal, all items in this branch of the tree should be checked for dependency beginning at the leaf nodes."]}),"\n",(0,r.jsx)(s.p,{children:"A similar strategy should be used when removiung a data source, ie a pivot or a KPI. In this case, the pSourceIdx should be used, as it sorts information according to the data source."}),"\n",(0,r.jsx)(s.p,{children:"it is not trivial to tell if you are actually USING the relationships when they are defined so the assumption is made that all folderitems pointing to one are using dimensions from the others in a relationship network."}),"\n",(0,r.jsx)(s.h3,{id:"setindependentgroupsync",children:"SetIndependentGroupSync"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetIndependentGroupSync(pIndependent = 0) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Set the flag which unlocks the ability to choose independent synchronization in the Cube Registry page. Independent synchronization allows for the group synchronization to skip the triggered update due to relationship dependency and trigger the update only due to scheduling."}),"\n",(0,r.jsx)(s.h3,{id:"getindependentgroupsync",children:"GetIndependentGroupSync"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetIndependentGroupSync() As %Boolean [ Internal ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Get the flag which unlocks the ability to choose independent synchronization in the Cube Registry page."})]})}function u(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(d,{...e})}):d(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>a,x:()=>l});var r=t(96540);const n={},i=r.createContext(n);function a(e){const s=r.useContext(i);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:a(e.components),r.createElement(i.Provider,{value:s},e.children)}}}]);