"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[8822],{53549:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>r,default:()=>c,frontMatter:()=>n,toc:()=>o});var a=t(74848),l=t(28453);const n={pagination_prev:null,pagination_next:null},r="%Library.GlobalEdit",o=[{value:"Parameters",id:"parameters",level:2},{value:"DEFAULTCONCURRENCY",id:"defaultconcurrency",level:3},{value:"Properties",id:"properties",level:2},{value:"Collation",id:"collation",level:3},{value:"Directory",id:"directory",level:3},{value:"DatabaseBlockSize",id:"databaseblocksize",level:3},{value:"Exists",id:"exists",level:3},{value:"FirstDataBlock",id:"firstdatablock",level:3},{value:"GrowthBlock",id:"growthblock",level:3},{value:"IsKeep",id:"iskeep",level:3},{value:"IsEmpty",id:"isempty",level:3},{value:"Name",id:"name",level:3},{value:"PointerBlock",id:"pointerblock",level:3},{value:"Permission",id:"permission",level:3},{value:"ResourceName",id:"resourcename",level:3},{value:"System",id:"system",level:3},{value:"Methods",id:"methods",level:2},{value:"GetName",id:"getname",level:3},{value:"LoadFields",id:"loadfields",level:3},{value:"GrowthBlockPrompt",id:"growthblockprompt",level:3},{value:"PointerBlockPrompt",id:"pointerblockprompt",level:3},{value:"CollationPrompt",id:"collationprompt",level:3},{value:"IsKeepPrompt",id:"iskeepprompt",level:3},{value:"GetSize",id:"getsize",level:3},{value:"IsValidName",id:"isvalidname",level:3},{value:"InvalidateGlobalVector",id:"invalidateglobalvector",level:3},{value:"Open",id:"open",level:3},{value:"%LoadData",id:"loaddata",level:3},{value:"%SaveData",id:"savedata",level:3},{value:"Compact",id:"compact",level:3},{value:"CompactGlobal",id:"compactglobal",level:3},{value:"%OnNew",id:"onnew",level:3},{value:"CheckIntegrity",id:"checkintegrity",level:3},{value:"CheckGlobalIntegrity",id:"checkglobalintegrity",level:3},{value:"CollationSet",id:"collationset",level:3},{value:"Create",id:"create",level:3},{value:"FirstDataBlockGet",id:"firstdatablockget",level:3},{value:"DeleteDirectoryEntry",id:"deletedirectoryentry",level:3},{value:"CompareRange",id:"comparerange",level:3},{value:"GetGlobalSize",id:"getglobalsize",level:3},{value:"GetGlobalCountBySubscript",id:"getglobalcountbysubscript",level:3},{value:"GetGlobalSizeBySubscript",id:"getglobalsizebysubscript",level:3},{value:"GetGlobalSizeBySubscriptPrecise",id:"getglobalsizebysubscriptprecise",level:3},{value:"GetGlobalSizeBySubscriptEstimate",id:"getglobalsizebysubscriptestimate",level:3},{value:"EncodeKey",id:"encodekey",level:3},{value:"KillRange",id:"killrange",level:3},{value:"TranslateBEGINandEND",id:"translatebeginandend",level:3},{value:"GrowthBlockSet",id:"growthblockset",level:3},{value:"IsKeepSet",id:"iskeepset",level:3},{value:"NameSet",id:"nameset",level:3},{value:"PointerBlockSet",id:"pointerblockset",level:3}];function i(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(s.header,{children:(0,a.jsx)(s.h1,{id:"libraryglobaledit",children:"%Library.GlobalEdit"})}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Library.GlobalEdit Extends (%Persistent, %SYSTEM.Help) [ Inheritance = right, StorageStrategy = GlobalStorage, System = 4 ]\n"})}),"\n",(0,a.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,a.jsx)(s.h3,{id:"defaultconcurrency",children:"DEFAULTCONCURRENCY"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter DEFAULTCONCURRENCY = 0;\n"})}),"\n",(0,a.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(s.h3,{id:"collation",children:"Collation"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property Collation As %Library.Collate;\n"})}),"\n",(0,a.jsx)(s.p,{children:"Collation of the global."}),"\n",(0,a.jsx)(s.h3,{id:"directory",children:"Directory"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property Directory As %SysPath [ ReadOnly ];\n"})}),"\n",(0,a.jsx)(s.p,{children:"Directory global is located in."}),"\n",(0,a.jsx)(s.h3,{id:"databaseblocksize",children:"DatabaseBlockSize"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Property DatabaseBlockSize As %Integer(VALUELIST = ",2048,4096,8192,16384,32768,65536") [ InitialExpression = {$$$8k}, ReadOnly ];\n'})}),"\n",(0,a.jsx)(s.p,{children:"Block size of the database the global is in."}),"\n",(0,a.jsx)(s.h3,{id:"exists",children:"Exists"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property Exists As Security.Datatype.BooleanYN [ ReadOnly ];\n"})}),"\n",(0,a.jsx)(s.p,{children:"Global directory entry exists."}),"\n",(0,a.jsx)(s.h3,{id:"firstdatablock",children:"FirstDataBlock"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property FirstDataBlock As %Integer [ Calculated ];\n"})}),"\n",(0,a.jsxs)(s.p,{children:["First data block of the global.",(0,a.jsx)(s.br,{}),"\nNote referencing this property causes a $D(global) and I/O to occur."]}),"\n",(0,a.jsx)(s.h3,{id:"growthblock",children:"GrowthBlock"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property GrowthBlock As %Integer;\n"})}),"\n",(0,a.jsx)(s.p,{children:"Growth block for the global."}),"\n",(0,a.jsx)(s.h3,{id:"iskeep",children:"IsKeep"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property IsKeep As Security.Datatype.BooleanYN;\n"})}),"\n",(0,a.jsx)(s.p,{children:"Keep global directory attributes when deleted."}),"\n",(0,a.jsx)(s.h3,{id:"isempty",children:"IsEmpty"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property IsEmpty As Security.Datatype.BooleanYN [ ReadOnly ];\n"})}),"\n",(0,a.jsx)(s.p,{children:"Global contains no data."}),"\n",(0,a.jsx)(s.h3,{id:"name",children:"Name"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property Name As %String;\n"})}),"\n",(0,a.jsx)(s.p,{children:"Name of the global."}),"\n",(0,a.jsx)(s.h3,{id:"pointerblock",children:"PointerBlock"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property PointerBlock As %Integer;\n"})}),"\n",(0,a.jsx)(s.p,{children:"Top pointer block of the global."}),"\n",(0,a.jsx)(s.h3,{id:"permission",children:"Permission"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property Permission As Security.Datatype.Permission [ ReadOnly ];\n"})}),"\n",(0,a.jsx)(s.p,{children:'Current permission on the global. This is the "RW" value that the process who has this instance open has access to it.'}),"\n",(0,a.jsx)(s.h3,{id:"resourcename",children:"ResourceName"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property ResourceName As %String [ ReadOnly ];\n"})}),"\n",(0,a.jsx)(s.p,{children:"Resource name of the global."}),"\n",(0,a.jsx)(s.h3,{id:"system",children:"System"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property System As %String [ ReadOnly ];\n"})}),"\n",(0,a.jsx)(s.p,{children:"System name where global resides."}),"\n",(0,a.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(s.h3,{id:"getname",children:"GetName"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetName(Directory, Prompt, Value, Obj, Min, Max, Help, Flag, Timeout) As %Integer [ Internal ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"loadfields",children:"LoadFields"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod LoadFields(Field, Obj, New) [ Internal ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"growthblockprompt",children:"GrowthBlockPrompt"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GrowthBlockPrompt(Prompt, Obj)\n"})}),"\n",(0,a.jsx)(s.h3,{id:"pointerblockprompt",children:"PointerBlockPrompt"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod PointerBlockPrompt(Prompt, Obj)\n"})}),"\n",(0,a.jsx)(s.h3,{id:"collationprompt",children:"CollationPrompt"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CollationPrompt(Prompt, Obj)\n"})}),"\n",(0,a.jsx)(s.h3,{id:"iskeepprompt",children:"IsKeepPrompt"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsKeepPrompt(Prompt, Obj)\n"})}),"\n",(0,a.jsx)(s.h3,{id:"getsize",children:"GetSize"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetSize(ByRef Allocated As %Integer, ByRef Used As %Integer, fast As %Integer = 0) As %Integer [ Internal ]\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Return the space used, and the space allocated, in a global. including big string blocks 'Allocated' - total size, in MB, of blocks allocated for the global.",(0,a.jsx)(s.br,{}),"\n'Used' - total used data, in MB, for the global.",(0,a.jsx)(s.br,{}),"\n'fast' - 2 : returns stochastic estimates for both 'Allocated' and 'Used' (fastest option for large globals)",(0,a.jsx)(s.br,{}),"\n1 : only returns exact 'Allocated' value (avoids reads of data blocks)",(0,a.jsx)(s.br,{}),"\n0 : returns exact values for both 'Allocated' and 'Used'."]}),"\n",(0,a.jsx)(s.h3,{id:"isvalidname",children:"IsValidName"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsValidName(Name As %String) As %Boolean [ CodeMode = expression, Internal ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Validate the passed name is legal for a global name."}),"\n",(0,a.jsx)(s.h3,{id:"invalidateglobalvector",children:"InvalidateGlobalVector"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod InvalidateGlobalVector(Name As %String = "", Directory As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,a.jsx)(s.h3,{id:"open",children:"Open"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Open(Name As %String, Directory As %String = {$zu(12,"")}, System As %String = "", concurrency As %Integer = -1, ByRef sc As %Status = {$$$OK}) As %ObjectHandle\n'})}),"\n",(0,a.jsx)(s.p,{children:"Open an instance of a global."}),"\n",(0,a.jsx)(s.h3,{id:"loaddata",children:"%LoadData"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %LoadData(id As %String) As %Status [ Internal, Private ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"savedata",children:"%SaveData"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %SaveData(id As %String) As %Status [ Private ]\n"})}),"\n",(0,a.jsx)(s.h3,{id:"compact",children:"Compact"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Method Compact(PercentFull As %Integer = 90, ByRef MbProcessed As %Float, ByRef MbCompressed As %Float, MbToCompress As %Integer = 0, ByRef LastGlobalReference As %String = "") As %Status\n'})}),"\n",(0,a.jsxs)(s.p,{children:["Compact a global.",(0,a.jsx)(s.br,{}),"\nPercentFull - How full each data page should be, 50-100",(0,a.jsx)(s.br,{}),"\nMbProcessed - How many MB of the global was processed",(0,a.jsx)(s.br,{}),"\nMbCompressed - How many MB was it compressed to",(0,a.jsx)(s.br,{}),"\nMbToCompress - How many MB of the global to compress in this call (0=ALL)",(0,a.jsx)(s.br,{}),'\nLastGlobalReference - Last reference, "" = completed']}),"\n",(0,a.jsx)(s.p,{children:"Typical useage is as follows, which compacts the data pages to 80%full, and returns the amount of data processed, and the size it was compacted to:"}),"\n",(0,a.jsxs)(s.p,{children:['s x=##Class(%GlobalEdit).Open("X",dbdirectory)',(0,a.jsx)(s.br,{}),"\ns t=x.Compact(80,.CurrSize,.NewSize)"]}),"\n",(0,a.jsx)(s.p,{children:"Note that this function can be called repeatedly for the same global so that it can be done in chunks by using the last two parameters. The following example does 10MB chunks of the global at a time and accumulates and displays a status:"}),"\n",(0,a.jsxs)(s.p,{children:['s x=##Class(%GlobalEdit).Open("X",dbdirectory)',(0,a.jsx)(s.br,{}),"\ns TotalCurrSize=0,TotalNewSize=0",(0,a.jsx)(s.br,{}),"\ndo {",(0,a.jsx)(s.br,{}),"\ns t=x.Compact(80,.CurrSize,.NewSize,10,.LastReference)",(0,a.jsx)(s.br,{}),"\ns TotalCurrSize=TotalCurrSize+CurrSize",(0,a.jsx)(s.br,{}),"\ns TotalNewSize=TotalNewSize+NewSize",(0,a.jsx)(s.br,{}),'\nw !,"Global "_x.Name_" processed="_TotalCurrSize_", compacted to="_TotalNewSize',(0,a.jsx)(s.br,{}),'\n} while LastReference\'=""']}),"\n",(0,a.jsx)(s.h3,{id:"compactglobal",children:"CompactGlobal"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod CompactGlobal(Name As %String, Directory As %String = {$zu(12,"")}, PercentFull As %Integer = 90, ByRef MbProcessed As %Integer, ByRef MbCompressed As %Integer, MbToCompress As %Integer = 0, ByRef LastGlobalReference As %String = "") As %Status\n'})}),"\n",(0,a.jsxs)(s.p,{children:["Compact a global.",(0,a.jsx)(s.br,{}),"\nSee the method Compact for details on parameters."]}),"\n",(0,a.jsx)(s.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnNew(initvalue As %RawString) As %Status [ Private ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"This callback method is invoked by the %New method to provide notification that a new instance of an object is being created."}),"\n",(0,a.jsx)(s.p,{children:"If this method returns an error then the object will not be created."}),"\n",(0,a.jsx)(s.h3,{id:"checkintegrity",children:"CheckIntegrity"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method CheckIntegrity(Silent As %Boolean) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This checks the integrity of a global. The return value contains information about the global"}),"\n",(0,a.jsx)(s.h3,{id:"checkglobalintegrity",children:"CheckGlobalIntegrity"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod CheckGlobalIntegrity(Directory As %String = "", Name As %String, StopAfterAnyError As %Boolean) As %Status [ PublicList = errorreturn ]\n'})}),"\n",(0,a.jsx)(s.p,{children:"This checks the integrity of a single global. The return value contains information about the global"}),"\n",(0,a.jsx)(s.h3,{id:"collationset",children:"CollationSet"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method CollationSet(Arg As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.h3,{id:"create",children:"Create"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod Create(Namespace As %String = "", Name As %String, Collation As %String, GrowthBlock As %Integer, PointerBlock As %Integer, Keep As %Boolean, JournalState As %Integer, ByRef Exists As %Boolean) As %Status\n'})}),"\n",(0,a.jsx)(s.p,{children:"Create a global with specified characteristics. Parameter Namespace can be a namespace or a directory. If it is a namespace global mapping rules will apply."}),"\n",(0,a.jsx)(s.h3,{id:"firstdatablockget",children:"FirstDataBlockGet"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method FirstDataBlockGet() As %Integer\n"})}),"\n",(0,a.jsx)(s.h3,{id:"deletedirectoryentry",children:"DeleteDirectoryEntry"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DeleteDirectoryEntry(Directory, Global) As %Status\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Delete a directory entry for a global if the global does not exist.",(0,a.jsx)(s.br,{}),"\nThis should be called with Switch 10 set if the global is possibly being accessed by users."]}),"\n",(0,a.jsxs)(s.p,{children:["Parameters:",(0,a.jsx)(s.br,{}),"\nDirectory - Directory where the global lives.",(0,a.jsx)(s.br,{}),"\nGlobal - Name of the global to delete the directory entry for.",(0,a.jsx)(s.br,{}),"\nNote: You must have write access to the database to delete the directory entry."]}),"\n",(0,a.jsx)(s.h3,{id:"comparerange",children:"CompareRange"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod CompareRange(SrcDirectory As %String, DstDirectory As %String, StartingNode As %String, EndingNode As %String, MaxDifferences As %Integer = 0, MaxToCompare As %String = "0,0", Flags As %Integer = 7, ByRef Differences As %String) As %Status\n'})}),"\n",(0,a.jsx)(s.p,{children:"Compare the same global in two different databases."}),"\n",(0,a.jsx)(s.p,{children:'Parameters: SrcDirectory - Directory where the source nodes are located. DstDirectory - Directory where the destination nodes are located. StartingNode - Node where the compare is started. EndingNode - Node where the compare finishes. "" - (Default) Compare all nodes until end of global. MaxDifferences - Maximum number of differences to return. 0 - (Default) Return all differences. MaxToCompare - 2 Piece comma delimited string as follows:    If Flags Bit 3 - Off:"MaxMBToProcess,AverageNodeSize"     If MaxMBToProcess is 0, then the method will process the entire range.     If MaxMBToProcess is > 0, then the method will return after that number of MB has been processed.     If AverageNodeSize is 0, then the MB processed is calculated by adding the length of each node and its data value.     If AverageNodeSize is > 0, then the MB processed is calculated by multiplying the number of nodes processed by     the AverageNodeSize. This is more accurate.    If Flags Bit 3 - On: "MaxNodesToProcess,AverageNodeSize"     If MaxNodesToProcess is 0, then the method will process the entire range.     If MaxNodesToProcess is > 0, then the method will return after that number of nodes has been processed.     If AverageNodeSize is 0, then the MB processed is calculated by adding the length of each node and its data value.     If AverageNodeSize is is > 0, then the MB processed is calculated by multiplying the number of nodes processed by     the AverageNodeSize. This is more accurate.  Flags - Bit string of compare options.   Bit 0 - Return Data values   Bit 1 - Format Node names using %Library.Utility:FormatReference()   Bit 2 - Format Data values using %Library.Utility:FormatString()   Bit 3 - 0 - MaxMBToProcess is passed in MaxToCompare variable           1 - MaxNodesToProcess is passed in MaxToCompare variable  Return Values: Status - Return Status of the method.   1) If MaxMBToProcess is > 0, and we have reached the max, the error $$$ERROR($$$MaxMBToCompare) is returned.   2) If MaxNodesToProcess is > 0, and we have reached the max, the error $$$ERROR($$$MaxNodesToCompare) is returned.   3) If MaxDifferences > 0 and we have reached the max, the error $$$ERROR($$$MaxDifferencesReached) is returned.   4) If we have exceeded process storage space ($s) with a large amount of differences, the error $$$ERROR($$$MaxStorageReached) is returned.   In these four cases any differences found are returned in the Differences() array. The caller may then call this method again using the returned LastNodeProcessed as   the StartingNode to compare the next set of nodes.   5) $$$ERROR($$$DifferencesFound) - The compare completed successfuly, and some differences were found. Results are in the Differences() array.   6) $$$OK - The compare has completed successfully. No differences were found.  Differences - Number of differences Differences(0) - $lb(LastNodeProcessed,BlocksChecked,NodesChecked,MBChecked,BlockSize)   LastNodeProcessed - Last node processed in the compare. May be used as the StartingNode if the method is called again. Returns "" if at end of range.   BlocksChecked - Number of Blocks in the SrcDirectory processed. More accurate if AverageNodeSize is passed.   NodesChecked - Number of Nodes in the SrcDirectory processed.   MBChecked - Number of MB in the SrcDirectory processed. More accurate if AverageNodeSize is passed.   BlockSize - Blocksize of the SrcDirectory  Differences(1..x,1) - Global name. Always returned, may be formatted if specified in the Flags parameter. Differences(1..x,2) - Reason for difference   1 - Value is Different   2 - Node is in source but not destination   3 - Node is in destination but not source Differences(1..x,3) - Source data value or "" if source does not exist. Only returned if specified in the Flags parameter. May be formatted if specified in the Flags parameter Differences(1..x,4) - Destination data value or "" if destination does not exist. Only returned if specified in the Flags parameter. May be formatted if specified in the Flags parameter]]>  Notes: AverageNodeSize should be passed for most accurate values for BlocksChecked and MBChecked values in the Differences(0) return value. AverageNodeSize is returned by the method %Library.GetGlobalSizeBySubscript(). See this method for how this value is calculated.'}),"\n",(0,a.jsx)(s.h3,{id:"getglobalsize",children:"GetGlobalSize"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetGlobalSize(Directory As %String, GlobalName As %String, ByRef Allocated As %Integer, ByRef Used As %Integer, fast As %Integer = 0) As %Status\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Get size of this global",(0,a.jsx)(s.br,{}),"\n'Allocated' - total size, in MB, of blocks allocated for the global.",(0,a.jsx)(s.br,{}),"\n'Used' - total used data, in MB, for the global.",(0,a.jsx)(s.br,{}),"\n'fast' - 2 : returns stochastic estimates for both 'Allocated' and 'Used' (fastest option for large globals)",(0,a.jsx)(s.br,{}),"\n1 : only returns exact 'Allocated' value (avoids reads of data blocks)",(0,a.jsx)(s.br,{}),"\n0 : returns exact values for both 'Allocated' and 'Used'."]}),"\n",(0,a.jsx)(s.h3,{id:"getglobalcountbysubscript",children:"GetGlobalCountBySubscript"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetGlobalCountBySubscript(Directory As %String, StartingNode As %String, EndingNode As %String = "", ByRef Size As %String = 0)\n'})}),"\n",(0,a.jsxs)(s.p,{children:["Return the number of global nodes in the range, and journal sizing information.",(0,a.jsx)(s.br,{}),"\nThis method will return the number of global nodes in the range, and the sizes of data within that range. It will also return information about the amount of journal space which would be used if the range were merged into a different database, or moved via a DataMove operation."]}),"\n",(0,a.jsxs)(s.p,{children:["Parameters:",(0,a.jsx)(s.br,{}),"\nDirectory - Directory where global is located.",(0,a.jsx)(s.br,{}),'\nStartNode - Starting node of global. Note that you can specify ^GLOBAL(BEGIN) to mean the start of the global. This would include ^GLOBAL itself. You can also specify ^GLOBAL("XXX"_$c(1)_"*next)" to mean start counting after global ^GLOBAL("XXX").',(0,a.jsx)(s.br,{}),"\nEndNode - End Node of global. The returned sizes do not include the EndNode. Note that you can specify ^GLOBAL(END) to mean through the end of the global. An EndNode value of null, or equal to the value of StartNode will return the size of StartNode and all children of StartNode.",(0,a.jsx)(s.br,{}),"\nReturn Values:",(0,a.jsx)(s.br,{}),"\nThe method will return a %Status value of success, or an error.",(0,a.jsx)(s.br,{}),"\nThe array Size returns data and estimated journal sizes in both blocks and MB for the specified global range.",(0,a.jsx)(s.br,{}),"\nIf the global does not exist the sizes will all be set to 0. If any error occurs, sizes will not be set."]}),"\n",(0,a.jsxs)(s.p,{children:["Size=Number of data nodes",(0,a.jsx)(s.br,{}),'\nSize("DataSize","Bytes")=Size of global data in bytes',(0,a.jsx)(s.br,{}),'\nSize("DataSize","MB")=Size of global data in MB',(0,a.jsx)(s.br,{}),'\nSize("KeySize","Bytes")=Size of global keys in bytes',(0,a.jsx)(s.br,{}),'\nSize("KeySize","MB")=Size of global keys in MB',(0,a.jsx)(s.br,{}),'\nSize("TotalNodeSize","Bytes")=Total size of all global data in bytes (Datasize + KeySize)',(0,a.jsx)(s.br,{}),'\nSize("TotalNodeSize","MB")=Total size of all global data in MB (Datasize + KeySize)',(0,a.jsx)(s.br,{}),'\nSize("JournalOverHead","Bytes")=Estimate of size of journal overhead in bytes',(0,a.jsx)(s.br,{}),'\nSize("JournalOverHead","MB")=Estimate of size of journal overhead in MB',(0,a.jsx)(s.br,{}),'\nSize("TotalJournalSize","Bytes")=Estimate of total journal size in bytes',(0,a.jsx)(s.br,{}),'\nSize("TotalJournalSize","MB")=Estimate of total journal size in MB']}),"\n",(0,a.jsx)(s.p,{children:"Examples:"}),"\n",(0,a.jsxs)(s.p,{children:["Find the counts of global ^DATA",(0,a.jsx)(s.br,{}),'\ns Status=##Class(%GlobalEdit).GetGlobalCountBySubscript("c:\\iris\\mgr\\user\\","DATA","",.Size)']}),"\n",(0,a.jsxs)(s.p,{children:['Find the counts of global ^DATA("Jones")',(0,a.jsx)(s.br,{}),'\ns x=##Class(%GlobalEdit).GetGlobalCountBySubscript("c:\\iris\\mgr\\user\\","DATA(""Jones"")","",.Size)']}),"\n",(0,a.jsxs)(s.p,{children:['Find the count of nodes between nodes ^DATA("Jones") up to but not including ^DATA("Smith","zzzzz")',(0,a.jsx)(s.br,{}),'\ns x=##Class(%GlobalEdit).GetGlobalCountBySubscript("c:\\iris\\mgr\\user\\","DATA(""Jones"")","DATA(""Smith"",""zzzzz"")",.Size)']}),"\n",(0,a.jsxs)(s.p,{children:["Find the count of all the nodes after after node ^X(500)",(0,a.jsx)(s.br,{}),'\ns x=##Class(%GlobalEdit).GetGlobalCountBySubscript("c:\\db1\\","^X(500"_$c(1)_"*next)","^X(END)",.Size)']}),"\n",(0,a.jsxs)(s.p,{children:["Find the count of all the nodes from the beginning of the global up to but not including ^X(500)",(0,a.jsx)(s.br,{}),'\ns x=##Class(%GlobalEdit).GetGlobalCountBySubscript("c:\\db1\\","^X(BEGIN)","^X(500)",.Size)']}),"\n",(0,a.jsx)(s.h3,{id:"getglobalsizebysubscript",children:"GetGlobalSizeBySubscript"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetGlobalSizeBySubscript(Directory As %String, StartingNode As %String, EndingNode As %String = "", ByRef Size As %String = 0, Fast As %Boolean = 0, CalculateAverages As %Boolean = 0)\n'})}),"\n",(0,a.jsxs)(s.p,{children:["Return the size of a global or range of nodes in a global.",(0,a.jsx)(s.br,{}),"\nThis method will return the size of a global based on the number of database blocks the global resides in."]}),"\n",(0,a.jsxs)(s.p,{children:["Parameters:",(0,a.jsx)(s.br,{}),"\nDirectory - Directory where global is located.",(0,a.jsx)(s.br,{}),'\nStartNode - Starting node of global. Note that you can specify ^GLOBAL(BEGIN) to mean the start of the global. This would include ^GLOBAL itself. You can also specify ^GLOBAL("XXX"_$c(1)_"*next)" to mean start counting after global ^GLOBAL("XXX").',(0,a.jsx)(s.br,{}),"\nEndNode - End Node of global. The returned sizes do not include the EndNode. Note that you can specify ^GLOBAL(END) to mean through the end of the global. An EndNode value of null, or equal to the value of StartNode will return the size of StartNode and all children of StartNode.",(0,a.jsx)(s.br,{}),"\nSize - Maximum number of MB to count. If the size of the global exceeds this value, calculation stops, and an error is returned. If undefined or set to 0, then the entire range is counted. Be careful to reset this for multiple calls to the method.",(0,a.jsx)(s.br,{}),"\nFast - If set and the global is large, this method will attempt a stochastic sample instead of taking an exact measurement.",(0,a.jsx)(s.br,{}),"\nCalculateAverage - 0/1 - If set, then the following averages will be calculated and returned. Calculating the averages requires additional time as it samples the data pages of the global. If not set, the values will be set to 0.",(0,a.jsx)(s.br,{}),'\nSize("AverageNodesPerPage")',(0,a.jsx)(s.br,{}),'\nSize("AverageNodeSize")']}),"\n",(0,a.jsxs)(s.p,{children:["Return Values:",(0,a.jsx)(s.br,{}),"\nThe method will return a %Status value of success, or an error.",(0,a.jsx)(s.br,{}),"\nThe array Size returns the amount of data in both blocks and MB, for each level of the global, as well as the size of big string data, and a total. If the global does not exist the sizes will all be set to 0. If any error occurs, sizes will not be set.",(0,a.jsx)(s.br,{}),"\nSize=Total size in MB of the global range",(0,a.jsx)(s.br,{}),'\nSize("Blocks","1")=# Blocks in level 1',(0,a.jsx)(s.br,{}),'\nSize("Blocks","2")=# Blocks in level 2',(0,a.jsx)(s.br,{}),'\nSize("Blocks","3")=# Blocks in level 3',(0,a.jsx)(s.br,{}),'\nSize("Blocks","BigStrings")=# Big String Blocks',(0,a.jsx)(s.br,{}),'\nSize("Blocks","Total")=Total # Blocks in global range',(0,a.jsx)(s.br,{}),'\nSize("MB","1")=# MB in level 1',(0,a.jsx)(s.br,{}),'\nSize("MB","2")=# MB in level 2',(0,a.jsx)(s.br,{}),'\nSize("MB","3")=# MB in level 3',(0,a.jsx)(s.br,{}),'\nSize("MB","BigStrings")=# Big String MB',(0,a.jsx)(s.br,{}),'\nSize("MB","Total")=Total # MB in global range',(0,a.jsx)(s.br,{}),'\nSize("AverageNodesPerPage")=Average nodes per page (Estimate)',(0,a.jsx)(s.br,{}),"\nAverageNodesPerPage is calculated as follows:",(0,a.jsx)(s.br,{}),'\nAs each Bottom Pointer block is examined, 10 % of the data nodes pointed to by this pointer block are randomly selected and examined. The number of nodes is accumulated in each selected page and summed together, and the total size of data blocks examined is summed together. When we reach 20GB of data blocks examined, the loop continues, but we only select 2% of the data pages. After we process the last pointer block, The AverageNodesPerPage is calculated by dividing the size of the summed data pages by the number of summed nodes. Size("AverageNodeSize")=Average node size (Estimate)',(0,a.jsx)(s.br,{}),"\nAverageNodeSize is calculated by first estimating the total number of nodes in the global",(0,a.jsx)(s.br,{}),'\nTotalNodes = Size("AverageNodesPerPage") * (Size("Blocks","Total")-Size("Blocks","BigStrings"))',(0,a.jsx)(s.br,{}),"\nWe then use the following:",(0,a.jsx)(s.br,{}),'\nAverageNodeSize=$fn(Size*(1024*1024)/TotalNodes,"",1)',(0,a.jsx)(s.br,{}),"\nExamples:"]}),"\n",(0,a.jsxs)(s.p,{children:["Find the size of global ^DATA",(0,a.jsx)(s.br,{}),'\ns Status=##Class(%GlobalEdit).GetGlobalSizeBySubscript("c:\\132u1\\mgr\\user\\","DATA","",.Size)']}),"\n",(0,a.jsxs)(s.p,{children:['Find the size of data ^DATA("Jones")',(0,a.jsx)(s.br,{}),'\ns x=##Class(%GlobalEdit).GetGlobalSizeBySubscript("c:\\132u1\\mgr\\user\\","DATA(""Jones"")","",.Size)']}),"\n",(0,a.jsxs)(s.p,{children:['Find the size of data between nodes ^DATA("Jones") up to but not including ^DATA("Smith","zzzzz")',(0,a.jsx)(s.br,{}),'\ns x=##Class(%GlobalEdit).GetGlobalSizeBySubscript("c:\\132u1\\mgr\\user\\","DATA(""Jones"")","DATA(""Smith"",""zzzzz"")",.Size)']}),"\n",(0,a.jsxs)(s.p,{children:["Find the size of all the data after after node ^X(500)",(0,a.jsx)(s.br,{}),'\ns x=##Class(%GlobalEdit).GetGlobalSizeBySubscript("c:\\db1\\","^X(500"_$c(1)_"*next)","^X(END)",.Size)']}),"\n",(0,a.jsxs)(s.p,{children:["Find the size of all the data from the beginning of the global up to but not including ^X(500)",(0,a.jsx)(s.br,{}),'\ns x=##Class(%GlobalEdit).GetGlobalSizeBySubscript("c:\\db1\\","^X(BEGIN)","^X(500)",.Size)']}),"\n",(0,a.jsx)(s.h3,{id:"getglobalsizebysubscriptprecise",children:"GetGlobalSizeBySubscriptPrecise"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetGlobalSizeBySubscriptPrecise(Directory As %String, BlockSize As %String, MaxSize As %String, Block As %Integer, StartingNode As %String, EndingNode As %String, StartKey As %String, EndKey As %String = "", CalculateAverages As %Boolean = 0, ByRef Level As %String = 0, ByRef TotalNodes As %Integer = 0, ByRef TotalNodesPages As %Integer = 0) [ Internal ]\n'})}),"\n",(0,a.jsx)(s.p,{children:"Internal helper for GetGlobalSizeBySubscript. Relies on its caller for initial validation and the determination and encoding of the StartKey, EndKey values. Called for Fast=False."}),"\n",(0,a.jsx)(s.h3,{id:"getglobalsizebysubscriptestimate",children:"GetGlobalSizeBySubscriptEstimate"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetGlobalSizeBySubscriptEstimate(Directory As %String, BlockSize As %String, MaxSize As %String, Block As %Integer, StartingNode As %String, EndingNode As %String, StartKey As %String, EndKey As %String = "", CalculateAverages As %Boolean = 0, ByRef Level As %String = 0, ByRef TotalNodes As %Integer = 0, ByRef TotalNodesPages As %Integer = 0) [ Internal ]\n'})}),"\n",(0,a.jsx)(s.p,{children:"The stochastic estimate counterpart to GetGlobalSizeBySubscriptPrecise. For Fast=True. This borrows the algorithm from EstimatedSize^%GSIZE."}),"\n",(0,a.jsx)(s.h3,{id:"encodekey",children:"EncodeKey"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EncodeKey(GblRef As %String, Rule As %Integer, ByRef Key As %String) As %Status [ Internal ]\n"})}),"\n",(0,a.jsx)(s.p,{children:"Encode a Global reference."}),"\n",(0,a.jsx)(s.h3,{id:"killrange",children:"KillRange"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod KillRange(Directory As %String, StartingNode As %String, EndingNode As %String) As %Status\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Kill a subscripted range of a single global in a single database.",(0,a.jsx)(s.br,{}),"\nThis method will kill a range of globals node of a single global in a single database. The starting and ending global name must be the same. When a range is specified, the global is killed from the starting node up to but not including the ending node. The exception to this is if the starting and ending node is the same then that global is killed. The start and end nodes must not contain namespace specifications. Process private globals are not supported. Note that this method ignores all namespace specifications.",(0,a.jsx)(s.br,{}),"\nParameters:",(0,a.jsx)(s.br,{}),"\nDirectory - Location of global to kill.",(0,a.jsx)(s.br,{}),'\nStartingNode - First node of global range to kill. Note that you can specify ^GLOBAL(BEGIN) to mean the start of the global. This includes the global ^GLOBAL itself You can also specify ^GLOBAL("XXX"_$c(1)_"*next)" to mean start deleting after global ^GLOBAL("XXX").',(0,a.jsx)(s.br,{}),"\nEndingNode - Ending node of global range to kill, up to, but not including this node. Note that you can specify ^GLOBAL(END) to mean through the end of the global."]}),"\n",(0,a.jsxs)(s.p,{children:["Return Values:",(0,a.jsx)(s.br,{}),"\nThe method will return a %Status value of success, or an error."]}),"\n",(0,a.jsxs)(s.p,{children:["Examples:",(0,a.jsx)(s.br,{}),"\nKill nodes between ^X(1,5) and ^X(1,50), not including ^X(1,50)",(0,a.jsx)(s.br,{}),'\ns Status=##Class(%GlobalEdit).KillRange("c:\\db1\\","^X(1,5),"^X(1,50)")']}),"\n",(0,a.jsxs)(s.p,{children:["Kill node ^X(500) and all subnodes",(0,a.jsx)(s.br,{}),'\ns Status=##Class(%GlobalEdit).KillRange("c:\\db1\\","^X(500),"^X(500)")']}),"\n",(0,a.jsxs)(s.p,{children:["Kill everything after node ^X(500)",(0,a.jsx)(s.br,{}),'\ns Status=##Class(%GlobalEdit).KillRange("c:\\db1\\","^X(500"_$c(1)_"*next)","^X(END)")']}),"\n",(0,a.jsxs)(s.p,{children:["Kill everything from the beginning of the node up to but not including ^X(500)",(0,a.jsx)(s.br,{}),'\ns Status=##Class(%GlobalEdit).KillRange("c:\\db1\\","^X(BEGIN)","^X(500)")']}),"\n",(0,a.jsx)(s.h3,{id:"translatebeginandend",children:"TranslateBEGINandEND"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod TranslateBEGINandEND(Directory As %String = "", Node As %String, Flags As %Integer) As %String [ Internal ]\n'})}),"\n",(0,a.jsx)(s.p,{children:'Replaces "BEGIN","END", and "*next" in a global subscript with subscripts with real meaning where a $Query, or $Data can be executed on it. If Directory is not "", then prepends the directory specification to it. Flags = 0 - Start subscript Flags = 1 - End Subscript'}),"\n",(0,a.jsx)(s.h3,{id:"growthblockset",children:"GrowthBlockSet"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method GrowthBlockSet(Arg As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.h3,{id:"iskeepset",children:"IsKeepSet"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method IsKeepSet(Arg As %Boolean) As %Status\n"})}),"\n",(0,a.jsx)(s.h3,{id:"nameset",children:"NameSet"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method NameSet(Arg As %String) As %Status\n"})}),"\n",(0,a.jsxs)(s.p,{children:["Set the Global name.",(0,a.jsx)(s.br,{}),'\nIf prefaced by a "^" strip it off']}),"\n",(0,a.jsx)(s.h3,{id:"pointerblockset",children:"PointerBlockSet"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method PointerBlockSet(Arg As %String) As %Status\n"})})]})}function c(e={}){const{wrapper:s}={...(0,l.R)(),...e.components};return s?(0,a.jsx)(s,{...e,children:(0,a.jsx)(i,{...e})}):i(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>r,x:()=>o});var a=t(96540);const l={},n=a.createContext(l);function r(e){const s=a.useContext(n);return a.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function o(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:r(e.components),a.createElement(n.Provider,{value:s},e.children)}}}]);