"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[5081],{56733:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>o,default:()=>d,frontMatter:()=>i,toc:()=>a});var r=s(74848),t=s(28453);const i={pagination_prev:null,pagination_next:null},o="%DeepSee.Query.setFunction",a=[{value:"Parameters",id:"parameters",level:2},{value:"FUNCTIONCLASS",id:"functionclass",level:3},{value:"Properties",id:"properties",level:2},{value:"formatString",id:"formatstring",level:3},{value:"Methods",id:"methods",level:2},{value:"%BuildFunctionMetaData",id:"buildfunctionmetadata",level:3},{value:"%ToString",id:"tostring",level:3},{value:"%PreProcess",id:"preprocess",level:3},{value:"%ProcessAxes",id:"processaxes",level:3},{value:"%FindCrossJoinInfo",id:"findcrossjoininfo",level:3},{value:"%TestForCMBR",id:"testforcmbr",level:3},{value:"PreCrossjoin",id:"precrossjoin",level:3},{value:"PreFilter",id:"prefilter",level:3},{value:"%HasCurrentMember",id:"hascurrentmember",level:3},{value:"Filter",id:"filter",level:3},{value:"Rank",id:"rank",level:3},{value:"Hierarchize",id:"hierarchize",level:3},{value:"Order",id:"order",level:3},{value:"TopFunction",id:"topfunction",level:3},{value:"IIF",id:"iif",level:3},{value:"CellFunction",id:"cellfunction",level:3},{value:"Aggregate",id:"aggregate",level:3},{value:"%ApplyFilterToSet",id:"applyfiltertoset",level:3},{value:"%ApplyBreakingOrderToSet",id:"applybreakingordertoset",level:3},{value:"%OnNew",id:"onnew",level:3},{value:"%ProcessNodesForBreakingOrder",id:"processnodesforbreakingorder",level:3},{value:"%ApplyOrderToSet",id:"applyordertoset",level:3},{value:"%ProcessNodesForOrder",id:"processnodesfororder",level:3},{value:"Distinct",id:"distinct",level:3},{value:"Union",id:"union",level:3},{value:"Intersect",id:"intersect",level:3},{value:"HeadsOrTails",id:"headsortails",level:3},{value:"Cousin",id:"cousin",level:3},{value:"CrossJoin",id:"crossjoin",level:3},{value:"DispatchOrderingFunction",id:"dispatchorderingfunction",level:3},{value:"%CheckDepends",id:"checkdepends",level:3},{value:"%NodeToText",id:"nodetotext",level:3},{value:"VisualTotals",id:"visualtotals",level:3},{value:"AddParents",id:"addparents",level:3},{value:"%GetParentMember",id:"getparentmember",level:3},{value:"%ConstructMemberProvider",id:"constructmemberprovider",level:3},{value:"Label",id:"label",level:3},{value:"Space",id:"space",level:3},{value:"PeriodsToDate",id:"periodstodate",level:3},{value:"ParallelPeriod",id:"parallelperiod",level:3},{value:"Ancestor",id:"ancestor",level:3},{value:"Descendants",id:"descendants",level:3},{value:"%ProcessDescendantsGraphNode",id:"processdescendantsgraphnode",level:3},{value:"OpenClosePeriod",id:"opencloseperiod",level:3},{value:"PreMDX",id:"premdx",level:3},{value:"MDX",id:"mdx",level:3},{value:"PreKPI",id:"prekpi",level:3},{value:"KPI",id:"kpi",level:3},{value:"PreTimeWindow",id:"pretimewindow",level:3},{value:"PreTimeRange",id:"pretimerange",level:3},{value:"LagOrLeadEndpoint",id:"lagorleadendpoint",level:3},{value:"PreOR",id:"preor",level:3},{value:"CUBE",id:"cube",level:3},{value:"ORSET",id:"orset",level:3},{value:"TermList",id:"termlist",level:3},{value:"%IsOrderingFunction",id:"isorderingfunction",level:3},{value:"AnalyzeORNode",id:"analyzeornode",level:3},{value:"ORizeCrossJoin",id:"orizecrossjoin",level:3}];function l(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(n.header,{children:(0,r.jsx)(n.h1,{id:"deepseequerysetfunction",children:"%DeepSee.Query.setFunction"})}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.Query.setFunction Extends function [ System = 3 ]\n"})}),"\n",(0,r.jsxs)(n.p,{children:['This class defines a "set" function within a DeepSee query.',(0,r.jsx)(n.br,{}),"\nA set function takes the form: FUNC(a,b,c)."]}),"\n",(0,r.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(n.h3,{id:"functionclass",children:"FUNCTIONCLASS"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter FUNCTIONCLASS = "set";\n'})}),"\n",(0,r.jsx)(n.p,{children:"Used to indicate which class of functions this class supports."}),"\n",(0,r.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,r.jsx)(n.h3,{id:"formatstring",children:"formatString"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Property formatString As %String(MAXLEN = 255, XMLPROJECTION = "attribute");\n'})}),"\n",(0,r.jsx)(n.p,{children:"Format string to apply to this member."}),"\n",(0,r.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(n.h3,{id:"buildfunctionmetadata",children:"%BuildFunctionMetaData"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %BuildFunctionMetaData() As %Status\n"})}),"\n",(0,r.jsx)(n.p,{children:"Test if function metadata is in the DeepSeeFunctionGLVN global. If not, put it there."}),"\n",(0,r.jsx)(n.h3,{id:"tostring",children:"%ToString"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ToString(Output pSC As %Status) As %String\n"})}),"\n",(0,r.jsx)(n.p,{children:"Convert this node to its text representation."}),"\n",(0,r.jsx)(n.h3,{id:"preprocess",children:"%PreProcess"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %PreProcess(pIsSlicer As %Boolean = 0) As %Status\n"})}),"\n",(0,r.jsx)(n.p,{children:"Execute the pre-processing logic for this node."}),"\n",(0,r.jsx)(n.h3,{id:"processaxes",children:"%ProcessAxes"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ProcessAxes(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pVisible As %Boolean = 1) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Execute and build the axes output for this axis."}),"\n",(0,r.jsx)(n.h3,{id:"findcrossjoininfo",children:"%FindCrossJoinInfo"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %FindCrossJoinInfo(pArg As %DeepSee.Query.node, Output pDim As %Integer, Output pHier As %Integer, Output pLevel As %Integer) As %Boolean [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"JMD844: Utility function. For an argument to a CROSSJOIN, find the element reference (d,h,l) and return whether it is a candidate for optimized crossjoin (0 no, 1 perhaps, 2 yes)."}),"\n",(0,r.jsx)(n.h3,{id:"testforcmbr",children:"%TestForCMBR"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %TestForCMBR(pCubeIndex As %String, pKey As %String, pNodeNo As %Integer, Output pCmbrNode As %List) As %Boolean [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:'Utility function. Test if a node or any of its children have "cmbr" nodes. Returns a list of all cmbrs nodes found. No longer used.'}),"\n",(0,r.jsx)(n.h3,{id:"precrossjoin",children:"PreCrossjoin"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method PreCrossjoin(pIsSlicer As %Boolean = 0) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Perform a pre-Crossjoin operation. This prepares crossjoins for more optimal slicer behavior"}),"\n",(0,r.jsx)(n.h3,{id:"prefilter",children:"PreFilter"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method PreFilter(pIsSlicer As %Boolean = 0) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Perform a Pre-Filter operation. This creates the subquery needed for certain functions."}),"\n",(0,r.jsx)(n.h3,{id:"hascurrentmember",children:"%HasCurrentMember"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %HasCurrentMember(pSet As %DeepSee.Query.node) As %Boolean [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Utility method. Test if there is a currentMember reference within the query node."}),"\n",(0,r.jsx)(n.h3,{id:"filter",children:"Filter"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method Filter(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, ByRef pSets As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Perform a Filter operation the given items in pSets. The first item is a set and the second item is an expression."}),"\n",(0,r.jsx)(n.h3,{id:"rank",children:"Rank"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method Rank(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, ByRef pSets As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Perform a Rank operation the given items in pSets."}),"\n",(0,r.jsx)(n.h3,{id:"hierarchize",children:"Hierarchize"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method Hierarchize(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pFlag As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(n.p,{children:"Perform an Hierarchize operation on the given items in node pSet."}),"\n",(0,r.jsx)(n.h3,{id:"order",children:"Order"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method Order(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pSort As %String = "ASC") As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(n.p,{children:"Perform an Order operation on the given items in node pSet."}),"\n",(0,r.jsx)(n.h3,{id:"topfunction",children:"TopFunction"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method TopFunction(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pIndex As %Integer, pFunction As %String) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Perform one of the top operations on the given items in node pSet. These include TOPCOUNT,BOTTOMCOUNT,TOPPERCENT,BOTTOMPERCENT,TOPSUM, and BOTTOMSUM."}),"\n",(0,r.jsx)(n.h3,{id:"iif",children:"IIF"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method IIF(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pVisible As %Boolean = 1) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Process an IIF function."}),"\n",(0,r.jsx)(n.h3,{id:"cellfunction",children:"CellFunction"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method CellFunction(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, ByRef pNewNodeNo As %Integer, pParent As %Integer, ByRef pArgs As %Integer, pFunction As %String) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Process the given cell function: A cell function calculated values based on the actual cells in the final result. (e.g. %CELL)."}),"\n",(0,r.jsx)(n.h3,{id:"aggregate",children:"Aggregate"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method Aggregate(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, ByRef pSets As %Integer, pAggregate As %String, pFlag As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(n.p,{children:"Apply the given aggregate function, pFunction, to the members of the given set."}),"\n",(0,r.jsx)(n.h3,{id:"applyfiltertoset",children:"%ApplyFilterToSet"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ApplyFilterToSet(pCube As %String, pCubeIndex As %String, pKey As %String, pNodeNo As %Integer, pTempIndex As %Integer) As %Status [ Internal, Private ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Remove node pNode and its children from the axis tree. pTempIndex is the subscript in temp global containing the filter data set."}),"\n",(0,r.jsx)(n.h3,{id:"applybreakingordertoset",children:"%ApplyBreakingOrderToSet"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ApplyBreakingOrderToSet(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pTempIndex As %Integer, pSortFlag As %String, Output pNodeValues As %Double) As %Status [ Internal, Private ]\n"})}),"\n",(0,r.jsxs)(n.p,{children:["Apply ordering to node pSet and its children within the axis tree.",(0,r.jsx)(n.br,{}),"\nThis ordering breaks the hierarchy of the set: all children are sorted together.",(0,r.jsx)(n.br,{}),"\nOn return, pNodeValue contains, by node, the value used to sort the nodes."]}),"\n",(0,r.jsx)(n.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method %OnNew(pFunction As %String = "") As %Status [ Private, ServerOnly = 1 ]\n'})}),"\n",(0,r.jsx)(n.p,{children:"This callback method is invoked by the %New method to provide notification that a new instance of an object is being created. This allows the caller to immediately set the local function property by providing the function name in the call to %New."}),"\n",(0,r.jsx)(n.h3,{id:"processnodesforbreakingorder",children:"%ProcessNodesForBreakingOrder"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ProcessNodesForBreakingOrder(pCube As %String, pCubeIndex As %String, pKey As %String, pTempIndex As %Integer, pNodeNo As %Integer, pIndex As %Binary, ByRef pSortedListIndex) [ Internal, Private ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"This is used by %ApplyBreakingOrderToSet to visit child nodes recursively."}),"\n",(0,r.jsx)(n.h3,{id:"applyordertoset",children:"%ApplyOrderToSet"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method %ApplyOrderToSet(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pTempIndex As %Integer, pSortFlag As %String, pPostFlag As %Boolean = 0, pNestedSortKey As %String = "") As %Status [ Internal, Private ]\n'})}),"\n",(0,r.jsxs)(n.p,{children:["Apply ordering to node pSet and its children within the axis tree.",(0,r.jsx)(n.br,{}),"\nThis ordering preserves the hierarchy of the set."]}),"\n",(0,r.jsx)(n.h3,{id:"processnodesfororder",children:"%ProcessNodesForOrder"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ProcessNodesForOrder(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, ByRef pGraph, ByRef pFactToNode, pTempIndex As %Integer, pSortKey As %Integer, pSortDir As %Integer, pPostFlag As %Boolean = 0, pLevel As %Integer = 0) [ Internal, Private ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"This is used by %ApplyOrderToSet to visit child nodes recursively."}),"\n",(0,r.jsx)(n.h3,{id:"distinct",children:"Distinct"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method Distinct(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet1 As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Perform a Distinct on a set: remove any duplicate items."}),"\n",(0,r.jsx)(n.h3,{id:"union",children:"Union"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method Union(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet1 As %Integer, pSet2 As %Integer, pAllFlag As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsxs)(n.p,{children:["Perform a Union on 2 sets.",(0,r.jsx)(n.br,{}),'\nIf pAllFlag = "ALL", include all members otherwise remove duplicates.']}),"\n",(0,r.jsx)(n.h3,{id:"intersect",children:"Intersect"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method Intersect(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet1 As %Integer, pSet2 As %Integer, pAllFlag As %String = "", pExcept As %Boolean = 0) As %Status [ Internal ]\n'})}),"\n",(0,r.jsxs)(n.p,{children:["Perform an Intersect or Except on 2 sets.",(0,r.jsx)(n.br,{}),'\nIf pAllFlag = "ALL", include all members otherwise remove duplicates in the first set.',(0,r.jsx)(n.br,{}),"\nIf pExcept is true, then perform an Except otherwise perform an Intersect."]}),"\n",(0,r.jsx)(n.h3,{id:"headsortails",children:"HeadsOrTails"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method HeadsOrTails(pFunction As %String, pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet1 As %Integer, pDirection As %Integer, pStartIndex As %Integer, pCount As %Integer, pDelaySubset = 0) As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(n.p,{children:["Perform a Head,Tail, or SubSet on the given sets.",(0,r.jsx)(n.br,{}),"\nIf pDirection = 1, move forward through the set, if -1, move backwards.",(0,r.jsx)(n.br,{}),"\npStartIndex is index number if the first item to include. pCount is number of items in the resulting set."]}),"\n",(0,r.jsx)(n.h3,{id:"cousin",children:"Cousin"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method Cousin(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pMemberNo As %Integer, pAncestorNo As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(n.p,{children:["Perform a Cousin function on 2 members.",(0,r.jsx)(n.br,{}),"\nCOUSIN(member,ancestor) finds a new member under *ancestor* with the same relationship to *ancestor* that *member* has to the *ancestor* level."]}),"\n",(0,r.jsx)(n.h3,{id:"crossjoin",children:"CrossJoin"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method CrossJoin(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet1 As %Integer, pSet2 As %Integer, pNonEmpty As %Boolean = 0, pOptimized As %Boolean = 0, pHideChildren As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsxs)(n.p,{children:["Perform a CrossJoin on a pair sets.",(0,r.jsx)(n.br,{}),"\nIf pNonEmpty is true, remove empty tuples from the results.",(0,r.jsx)(n.br,{}),"\nIf pOptimized is true, then both sets are from the same hierarchy and we will restrict members of the second set against the current member of the first. If pHideChildren is true, remove labels for the second set."]}),"\n",(0,r.jsx)(n.h3,{id:"dispatchorderingfunction",children:"DispatchOrderingFunction"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method DispatchOrderingFunction(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pFunction As %String, pContextNode As %Integer, pParent As %Integer, pSet As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.h3,{id:"checkdepends",children:"%CheckDepends"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method %CheckDepends(pCubeIndex As %String, pDependIndex As %String, pKey1 As %String, pKey2 As %String, pRCube1 As %String, pRCube2 As %String = "") As %Boolean [ Internal ]\n'})}),"\n",(0,r.jsx)(n.p,{children:"Test if the given dependsOn index contains the combination of pKey1 and pKey2. pRCube1 and pRCube2 are set if there are relationships."}),"\n",(0,r.jsx)(n.h3,{id:"nodetotext",children:"%NodeToText"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %NodeToText(pCubeIndex As %String, pKey As %String, pNodeNo As %Integer, Output pText As %String) As %Status\n"})}),"\n",(0,r.jsx)(n.p,{children:"Convert an axis node to a text representation. This is used for duplicate elimination."}),"\n",(0,r.jsx)(n.h3,{id:"visualtotals",children:"VisualTotals"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method VisualTotals(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pPattern As %String) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Perform VisualTotals on a set."}),"\n",(0,r.jsx)(n.h3,{id:"addparents",children:"AddParents"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method AddParents(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(n.p,{children:["Perform a %AddParents on a set: add the (distinct) parent member of each member to the set.",(0,r.jsx)(n.br,{}),"\nIf called on a set with multiple dimensions, add parents at each level and add parent nodes without children."]}),"\n",(0,r.jsx)(n.h3,{id:"getparentmember",children:"%GetParentMember"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %GetParentMember(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pParent As %Integer, Output pSet As %List, pKey As %String, pName As %String) As %Status [ Internal, Private ]\n"})}),"\n",(0,r.jsxs)(n.p,{children:["Find the parent member for given member.",(0,r.jsx)(n.br,{}),"\nThis is a helper function used by some of the set functions."]}),"\n",(0,r.jsx)(n.h3,{id:"constructmemberprovider",children:"%ConstructMemberProvider"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method %ConstructMemberProvider(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, Output pMember As %DeepSee.Query.member, pKey As %String, pName As %String = "") As %Status [ Internal, Private ]\n'})}),"\n",(0,r.jsxs)(n.p,{children:["Construct a member provider for given member.",(0,r.jsx)(n.br,{}),"\nThis is a helper function used by some of the set functions."]}),"\n",(0,r.jsx)(n.h3,{id:"label",children:"Label"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method Label(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pParent As %Integer, pSet As %Integer, pLabel As %String, pFormat As %String, pSolveOrder As %Integer = 0, pStyle As %String = "", pHeaderStyle As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(n.p,{children:"Apply the %LABEL function to the given expression."}),"\n",(0,r.jsx)(n.h3,{id:"space",children:"Space"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method Space(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:'Apply the %SPACE function to the current axis (adds an empty " " to it).'}),"\n",(0,r.jsx)(n.h3,{id:"periodstodate",children:"PeriodsToDate"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method PeriodsToDate(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pLevel1 As %DeepSee.Query.node, pSet2 As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Perform a PeriodsToDate function."}),"\n",(0,r.jsx)(n.h3,{id:"parallelperiod",children:"ParallelPeriod"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method ParallelPeriod(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pLevel As %DeepSee.Query.node, pIndex As %Integer, pSet1 As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Perform a ParallelPeriod function."}),"\n",(0,r.jsx)(n.h3,{id:"ancestor",children:"Ancestor"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method Ancestor(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pMemberNo As %Integer, pLevelArg As %DeepSee.Query.node) As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(n.p,{children:["Perform an Ancestor function.",(0,r.jsx)(n.br,{}),"\nANCESTOR(member,level) returns the ancestor of *member* at the same level as *level*.",(0,r.jsx)(n.br,{}),"\n*level* can also be a number specifying distance from *member*."]}),"\n",(0,r.jsx)(n.h3,{id:"descendants",children:"Descendants"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method Descendants(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pMemberNo As %Integer, pMemberArg As %DeepSee.Query.node, pLevelArg As %DeepSee.Query.node, pFlag = "") [ Internal ]\n'})}),"\n",(0,r.jsxs)(n.p,{children:["Perform a Descendants function.",(0,r.jsx)(n.br,{}),"\nDESCENDANTS(member,level) returns the descendants of *member* at the same level as *level*.",(0,r.jsx)(n.br,{}),"\n*level* can also be a number specifying distance from *member*."]}),"\n",(0,r.jsx)(n.h3,{id:"processdescendantsgraphnode",children:"%ProcessDescendantsGraphNode"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method %ProcessDescendantsGraphNode(ByRef pGraph, pGraphNodeNo, pCube, pKey, ByRef pNodeNo, pParent, pFlag, pSelfLevelNo) [ Internal, Private ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Recursively process a member graph for the DESCENDANTS function. This places all members of the provided pGraph into the axis cache under a single parent. Each branch of the tree is completely written before moving to the next branch."}),"\n",(0,r.jsx)(n.h3,{id:"opencloseperiod",children:"OpenClosePeriod"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method OpenClosePeriod(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pLevel1 As %DeepSee.Query.node, pSet2 As %Integer, pClosing As %Boolean = 0) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Perform a Opening/ClosingPeriod function (determined by pClosing)."}),"\n",(0,r.jsx)(n.h3,{id:"premdx",children:"PreMDX"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method PreMDX(pIsSlicer As %Boolean = 0) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Pre-MDX: preprocessing for MDX() function."}),"\n",(0,r.jsx)(n.h3,{id:"mdx",children:"MDX"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method MDX(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, ByRef pNewNodeNo As %Integer, pParent As %Integer, ByRef pArgValue As %String, ByRef pSets As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Perform a %MDX (subquery) operation."}),"\n",(0,r.jsx)(n.h3,{id:"prekpi",children:"PreKPI"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method PreKPI(pIsSlicer As %Boolean = 0) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Pre-KPI: preprocessing for KPI() function."}),"\n",(0,r.jsx)(n.h3,{id:"kpi",children:"KPI"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method KPI(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, ByRef pNewNodeNo As %Integer, pParent As %Integer, ByRef pArgValue As %String, ByRef pSets As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Perform a %KPI (lookup KPI) operation."}),"\n",(0,r.jsx)(n.h3,{id:"pretimewindow",children:"PreTimeWindow"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method PreTimeWindow(pIsSlicer As %Boolean = 0) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Pre-TimeWindow: preprocessing for %TimeWindow() function."}),"\n",(0,r.jsx)(n.h3,{id:"pretimerange",children:"PreTimeRange"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method PreTimeRange(pIsSlicer As %Boolean = 0) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Pre-TimeRange: preprocessing for %TimeRange() function."}),"\n",(0,r.jsx)(n.h3,{id:"lagorleadendpoint",children:"LagOrLeadEndpoint"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod LagOrLeadEndpoint(pOldGroup As %DeepSee.Query.group, pCubeIndex As %String, pDirection As %String, Output pNewGroup As %DeepSee.Query.group) As %Status\n"})}),"\n",(0,r.jsx)(n.h3,{id:"preor",children:"PreOR"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method PreOR(pIsSlicer As %Boolean = 0) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Pre-OR: preprocessing for %OR() function."}),"\n",(0,r.jsx)(n.h3,{id:"cube",children:"CUBE"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method CUBE(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, ByRef pNewNodeNo As %Integer, pParent As %Integer, ByRef pArgValues As %String) As %Status [ Internal ]\n"})}),"\n",(0,r.jsxs)(n.p,{children:["Perform a CUBE operation on the given items in pArgValues, which takes the form:",(0,r.jsx)(n.br,{}),"\npArgValues(1) = The reference cube for this axis",(0,r.jsx)(n.br,{}),"\npArgValues(2) = The target dimension requested on this axis",(0,r.jsx)(n.br,{}),"\npArgValues(n) = shared dimensions between the cubes",(0,r.jsx)(n.br,{}),"\nThis function is generated and inserted into a subquery in the specific case where the target subcube does not itself define the target dimension."]}),"\n",(0,r.jsx)(n.h3,{id:"orset",children:"ORSET"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"Method ORSET(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pSet As %Integer) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(n.p,{children:"Construct a single member that is the OR of the elements of a given set."}),"\n",(0,r.jsx)(n.h3,{id:"termlist",children:"TermList"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method TermList(pCube As %String, pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pTermList As %String, pFlag As %String = "", pTermKey As %String = "", pField As %String = "", pDefaultValue As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,r.jsxs)(n.p,{children:["Implementation of the %TERMLIST/%LOOKUP function.",(0,r.jsx)(n.br,{}),"\nCreate a set from the elements within the given termlist.",(0,r.jsx)(n.br,{}),'\nIf pFlag is "EXCLUDE", create a tuple of %NOT members.']}),"\n",(0,r.jsx)(n.h3,{id:"isorderingfunction",children:"%IsOrderingFunction"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'Method %IsOrderingFunction(pFunctionName = "") As %Boolean\n'})}),"\n",(0,r.jsx)(n.p,{children:"Test to see whether this is an oredring function that might require special processing"}),"\n",(0,r.jsx)(n.h3,{id:"analyzeornode",children:"AnalyzeORNode"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod AnalyzeORNode(pQueryNode = {$$$NULLOREF}, ByRef pStructure = 0, pDepth = 0, pParent = 0, pMaxDepth = 0) As %Status\n"})}),"\n",(0,r.jsx)(n.p,{children:"Search out the AND/OR depth in a particular node"}),"\n",(0,r.jsx)(n.h3,{id:"orizecrossjoin",children:"ORizeCrossJoin"}),"\n",(0,r.jsx)(n.pre,{children:(0,r.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod ORizeCrossJoin(pCubeIndex As %String, pKey As %String, pCJRootNo As %Integer = "", ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pCJRootParent As %Integer, ByRef pNewCJRootNo As %Integer = 0) As %Status [ Internal ]\n'})}),"\n",(0,r.jsx)(n.p,{children:"Transform a crossjoin structure to be used within an established orset. The results will be the appropriate ortuple construct situated in the same position as the pCJRootNo reference node when this method was called. The incoming pNodeNo is expected to be the final node in the axis, and will be returned as the next available node after the transform. The pParent is the node this entire construct should ultimately be filed under."})]})}function d(e={}){const{wrapper:n}={...(0,t.R)(),...e.components};return n?(0,r.jsx)(n,{...e,children:(0,r.jsx)(l,{...e})}):l(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>o,x:()=>a});var r=s(96540);const t={},i=r.createContext(t);function o(e){const n=r.useContext(i);return r.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:o(e.components),r.createElement(i.Provider,{value:n},e.children)}}}]);