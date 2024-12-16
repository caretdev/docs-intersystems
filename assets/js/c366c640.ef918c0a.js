"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[55978],{74402:(e,t,s)=>{s.r(t),s.d(t,{contentTitle:()=>l,default:()=>o,frontMatter:()=>i,toc:()=>a});var n=s(74848),r=s(28453);const i={pagination_prev:null,pagination_next:null},l="%DeepSee.AbstractKPI",a=[{value:"Parameters",id:"parameters",level:2},{value:"READONLYMODEL",id:"readonlymodel",level:3},{value:"PUBLIC",id:"public",level:3},{value:"RESOURCE",id:"resource",level:3},{value:"FORCECOMPUTE",id:"forcecompute",level:3},{value:"Properties",id:"properties",level:2},{value:"%thresholdLower",id:"thresholdlower",level:3},{value:"%thresholdUpper",id:"thresholdupper",level:3},{value:"%rangeLower",id:"rangelower",level:3},{value:"%rangeUpper",id:"rangeupper",level:3},{value:"%message",id:"message",level:3},{value:"%filterValues",id:"filtervalues",level:3},{value:"%fromCache",id:"fromcache",level:3},{value:"%cacheKey",id:"cachekey",level:3},{value:"%cubeName",id:"cubename",level:3},{value:"%queryKey",id:"querykey",level:3},{value:"%cellContext",id:"cellcontext",level:3},{value:"Methods",id:"methods",level:2},{value:"%IsPublic",id:"ispublic",level:3},{value:"OnPage",id:"onpage",level:3},{value:"%CheckResource",id:"checkresource",level:3},{value:"%GetKPIName",id:"getkpiname",level:3},{value:"%GetKPICaptionName",id:"getkpicaptionname",level:3},{value:"%GetKPICaption",id:"getkpicaption",level:3},{value:"%OnGetKPICaption",id:"ongetkpicaption",level:3},{value:"%OnGetListingSQL",id:"ongetlistingsql",level:3},{value:"%OnGetListingResultSet",id:"ongetlistingresultset",level:3},{value:"%GetSourceType",id:"getsourcetype",level:3},{value:"%ApplyDefaults",id:"applydefaults",level:3},{value:"%OnLoadModel",id:"onloadmodel",level:3},{value:"%OnLoadKPI",id:"onloadkpi",level:3},{value:"%GetKPIPropertyCaption",id:"getkpipropertycaption",level:3},{value:"%OnGetPropertyInfo",id:"ongetpropertyinfo",level:3},{value:"%GetKPIPropertyInfo",id:"getkpipropertyinfo",level:3},{value:"%OnGetKPIPropertyInfo",id:"ongetkpipropertyinfo",level:3},{value:"%OnExecute",id:"onexecute",level:3},{value:"%GetFilterList",id:"getfilterlist",level:3},{value:"%OnGetFilterList",id:"ongetfilterlist",level:3},{value:"%GetFilterMembers",id:"getfiltermembers",level:3},{value:"%OnGetFilterMembers",id:"ongetfiltermembers",level:3},{value:"%GetFilterDisplayValue",id:"getfilterdisplayvalue",level:3},{value:"%GetFilterLogicalValue",id:"getfilterlogicalvalue",level:3},{value:"%GetActionList",id:"getactionlist",level:3},{value:"%OnGetActionList",id:"ongetactionlist",level:3},{value:"%InvokeDashboardAction",id:"invokedashboardaction",level:3},{value:"%OnDashboardAction",id:"ondashboardaction",level:3},{value:"%IsAsync",id:"isasync",level:3},{value:"%IsCacheable",id:"iscacheable",level:3},{value:"%GetKPIValue",id:"getkpivalue",level:3},{value:"%PrintValue",id:"printvalue",level:3},{value:"%CreateKPIController",id:"createkpicontroller",level:3},{value:"%GetKPIValueArray",id:"getkpivaluearray",level:3},{value:"%GetMDX",id:"getmdx",level:3},{value:"%GetSQL",id:"getsql",level:3},{value:"%ClearKPICache",id:"clearkpicache",level:3},{value:"%GetFilterKey",id:"getfilterkey",level:3},{value:"%CreateLocalController",id:"createlocalcontroller",level:3},{value:"%GetKPIClassTimeStamp",id:"getkpiclasstimestamp",level:3}];function c(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.header,{children:(0,n.jsx)(t.h1,{id:"deepseeabstractkpi",children:"%DeepSee.AbstractKPI"})}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Class %DeepSee.AbstractKPI Extends (%CSP.Page, %ZEN.DataModel.ObjectDataModel, %DeepSee.QuerySource) [ Abstract, System = 4 ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"This is a common base class to different types of KPI."}),"\n",(0,n.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(t.h3,{id:"readonlymodel",children:"READONLYMODEL"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter READONLYMODEL = 1;\n"})}),"\n",(0,n.jsx)(t.p,{children:"KPI cannot be modified from a client (part of DataModel API)."}),"\n",(0,n.jsx)(t.h3,{id:"public",children:"PUBLIC"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter PUBLIC As BOOL = 1;\n"})}),"\n",(0,n.jsxs)(t.p,{children:["If true, this KPI is available for public use within dashboard (subject also to the RESOURCE parameter).",(0,n.jsx)(t.br,{}),"\nIf false it is not listed as an available KPI within the dashboard tools, but it can be used within pivot tables and may be visible within the Analyzer."]}),"\n",(0,n.jsx)(t.h3,{id:"resource",children:"RESOURCE"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter RESOURCE As STRING;\n"})}),"\n",(0,n.jsxs)(t.p,{children:["The resource needed to use this KPI:",(0,n.jsx)(t.br,{}),"\nIf defined and the current user holds the USE privilege on this resource, then the user may view (run queries against) this item."]}),"\n",(0,n.jsx)(t.h3,{id:"forcecompute",children:"FORCECOMPUTE"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter FORCECOMPUTE As BOOL = 0;\n"})}),"\n",(0,n.jsxs)(t.p,{children:["If true, always recompute the value of this KPI when used within an MDX query.",(0,n.jsx)(t.br,{}),"\nTypically a KPI (especially a plug-in) used within an MDX query does not need to be recalculated unless the class defining the KPI is recompiled. For KPIs that depend on external data, it may be convenient to always recompute the KPI value. Setting this parameter to true has the same effect as recompiling the KPI class before each use."]}),"\n",(0,n.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(t.h3,{id:"thresholdlower",children:"%thresholdLower"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %thresholdLower As %Double(ZENHIDDEN = 1);\n"})}),"\n",(0,n.jsx)(t.p,{children:"Lower threshold value for any meters connected to this KPI."}),"\n",(0,n.jsx)(t.h3,{id:"thresholdupper",children:"%thresholdUpper"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %thresholdUpper As %Double(ZENHIDDEN = 1);\n"})}),"\n",(0,n.jsx)(t.p,{children:"Upper threshold value for any meters connected to this KPI."}),"\n",(0,n.jsx)(t.h3,{id:"rangelower",children:"%rangeLower"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %rangeLower As %Double(ZENHIDDEN = 1);\n"})}),"\n",(0,n.jsx)(t.p,{children:"Lower range value for any meters connected to this KPI."}),"\n",(0,n.jsx)(t.h3,{id:"rangeupper",children:"%rangeUpper"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %rangeUpper As %Double(ZENHIDDEN = 1);\n"})}),"\n",(0,n.jsx)(t.p,{children:"Upper range value for any meters connected to this KPI."}),"\n",(0,n.jsx)(t.h3,{id:"message",children:"%message"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %message As %String(ZENHIDDEN = 1);\n"})}),"\n",(0,n.jsx)(t.p,{children:"Message to be displayed by dashboard widget."}),"\n",(0,n.jsx)(t.h3,{id:"filtervalues",children:"%filterValues"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %filterValues As %ZEN.proxyObject(ZENHIDDEN = 1);\n"})}),"\n",(0,n.jsx)(t.p,{children:"Proxy object containing filter values from the client."}),"\n",(0,n.jsx)(t.h3,{id:"fromcache",children:"%fromCache"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %fromCache As %String(ZENHIDDEN = 1) [ InitialExpression = 0 ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Set true if the current results are from the cache."}),"\n",(0,n.jsx)(t.h3,{id:"cachekey",children:"%cacheKey"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %cacheKey As %String(ZENHIDDEN = 1) [ Internal ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Cache key used for this query."}),"\n",(0,n.jsx)(t.h3,{id:"cubename",children:"%cubeName"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %cubeName As %String(ZENHIDDEN = 1) [ Internal ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Internal property that holds the current cube name used by this KPI (if any). Used for caching."}),"\n",(0,n.jsx)(t.h3,{id:"querykey",children:"%queryKey"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %queryKey As %String(ZENHIDDEN = 1) [ Internal ];\n"})}),"\n",(0,n.jsx)(t.p,{children:"Internal property that holds the current MDX query key used by this KPI (if any). Used for caching."}),"\n",(0,n.jsx)(t.h3,{id:"cellcontext",children:"%cellContext"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Property %cellContext As %ZEN.proxyObject(ZENHIDDEN = 1) [ Internal, MultiDimensional ];\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Internal property that holds the current cell context when this KPI is invoked from within an MDX statement.",(0,n.jsx)(t.br,{}),"\n(Note: type is an object to prevent MVC code generation)."]}),"\n",(0,n.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(t.h3,{id:"ispublic",children:"%IsPublic"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %IsPublic() As %Boolean\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return true if this KPI is public."}),"\n",(0,n.jsx)(t.h3,{id:"onpage",children:"OnPage"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod OnPage() As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Draw the test page."}),"\n",(0,n.jsx)(t.h3,{id:"checkresource",children:"%CheckResource"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %CheckResource() As %Boolean\n"})}),"\n",(0,n.jsx)(t.p,{children:"Test if the current user has access to this KPI."}),"\n",(0,n.jsx)(t.h3,{id:"getkpiname",children:"%GetKPIName"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %GetKPIName(pName As %String = "") As %String\n'})}),"\n",(0,n.jsx)(t.p,{children:"Return the logical name in its original form for this KPI. pName is the canonic form of the name."}),"\n",(0,n.jsx)(t.h3,{id:"getkpicaptionname",children:"%GetKPICaptionName"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %GetKPICaptionName(pName As %String = "") As %String\n'})}),"\n",(0,n.jsx)(t.p,{children:"Return the caption as defined in the XML for this KPI."}),"\n",(0,n.jsx)(t.h3,{id:"getkpicaption",children:"%GetKPICaption"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetKPICaption() As %String [ Final ]\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Return the caption for this KPI.",(0,n.jsx)(t.br,{}),"\nThis is either: (a) the value returned by %OnGetKPICaption, (b) the value of the caption attribute in the KPI definition, or (c) the name of the KPI, in that order."]}),"\n",(0,n.jsx)(t.h3,{id:"ongetkpicaption",children:"%OnGetKPICaption"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %OnGetKPICaption() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"This callback can return the (localized) caption for this KPI."}),"\n",(0,n.jsx)(t.h3,{id:"ongetlistingsql",children:"%OnGetListingSQL"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %OnGetListingSQL(ByRef pFilters As %String, ByRef pSelection As %String, pListingName As %String = "") As %String\n'})}),"\n",(0,n.jsxs)(t.p,{children:['This callback, if implemented, returns the text of an SQL query used to provide a "detail listing" for this KPI.',(0,n.jsx)(t.br,{}),"\npFilters is an array of current filter values: pFilters(name)=value.",(0,n.jsx)(t.br,{}),"\npSelection is an array containing information about the current selected items in the pivot. It contains 2 values:",(0,n.jsx)(t.br,{}),'\npSelection("selectedRange") contains the current selected cells in the pivot as a string in the form "startRow,startCol,endRow,endCol" (1-based). "" if no cells are selected.',(0,n.jsx)(t.br,{}),'\npSelection("rowValues") contains a csv-list of "row" values for the selected rows in the pivot (similar to the $$$VALUELIST value used for OpenWindow URLs. This may contain "\\," for "," within the data values.',(0,n.jsx)(t.br,{}),"\npListingName is the name of the listing to display. This is reserved for future use.",(0,n.jsx)(t.br,{}),"\nThis method is simply a convenient alternative to the %OnGetListingResultSet method. It takes precedence over the %OnGetListingResultSet method."]}),"\n",(0,n.jsx)(t.h3,{id:"ongetlistingresultset",children:"%OnGetListingResultSet"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %OnGetListingResultSet(ByRef pFilters As %String, ByRef pSelection As %String, pListingName As %String = "", Output pRS As %SQL.StatementResult) As %Status\n'})}),"\n",(0,n.jsxs)(t.p,{children:['This callback, if implemented, can prepare and execute a listing query used to provide a "detail listing" for this KPI. pFilters is an array of current filter values.',(0,n.jsx)(t.br,{}),"\npListingName is the name of the listing to display. This is reserved for future use."]}),"\n",(0,n.jsx)(t.h3,{id:"getsourcetype",children:"%GetSourceType"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetSourceType() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the sourceType for this KPI"}),"\n",(0,n.jsx)(t.h3,{id:"applydefaults",children:"%ApplyDefaults"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %ApplyDefaults()\n"})}),"\n",(0,n.jsx)(t.p,{children:"Apply property defaults from the KPI model."}),"\n",(0,n.jsx)(t.h3,{id:"onloadmodel",children:"%OnLoadModel"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnLoadModel(pSource As %RegisteredObject) As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"This callback method does the actual work of loading values from the source object."}),"\n",(0,n.jsx)(t.h3,{id:"onloadkpi",children:"%OnLoadKPI"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnLoadKPI() As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Notify subclass that KPI is has just be executed. This is a good place to override properties, such as range and threshold."}),"\n",(0,n.jsx)(t.h3,{id:"getkpipropertycaption",children:"%GetKPIPropertyCaption"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetKPIPropertyCaption(pProperty As %String) As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the display name for a property within this KPI."}),"\n",(0,n.jsx)(t.h3,{id:"ongetpropertyinfo",children:"%OnGetPropertyInfo"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %OnGetPropertyInfo(pIndex As %Integer, ByRef pList As %String, pExtended As %Boolean = 0, pModelId As %String = "") As %Status [ Final ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Return list of properties. This is part of the DataModel API; this version returns the set of properties defined by this KPI."}),"\n",(0,n.jsx)(t.h3,{id:"getkpipropertyinfo",children:"%GetKPIPropertyInfo"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %GetKPIPropertyInfo(Output pList As %String, pModelId As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Return information on properties defined in the KPI block. This takes the form:",(0,n.jsx)(t.br,{}),"\npList(n) = name",(0,n.jsx)(t.br,{}),'\npList(n,"caption") = displayed caption',(0,n.jsx)(t.br,{}),'\npList(n,"defaultValue") = value',(0,n.jsx)(t.br,{}),'\npList(n,"columnNo") = #']}),"\n",(0,n.jsx)(t.h3,{id:"ongetkpipropertyinfo",children:"%OnGetKPIPropertyInfo"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %OnGetKPIPropertyInfo(ByRef pList As %String, pPropNo As %Integer, pModelId As %String = "") As %Status\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Add additional properties beyond those defined in the KPI block. This takes the form:",(0,n.jsx)(t.br,{}),"\npList(n) = name",(0,n.jsx)(t.br,{}),'\npList(n,"defaultValue") = value',(0,n.jsx)(t.br,{}),'\npList(n,"columnNo") = #',(0,n.jsx)(t.br,{}),"\npPropNo is the number of next open slot in the list."]}),"\n",(0,n.jsx)(t.h3,{id:"onexecute",children:"%OnExecute"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %OnExecute() As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Get data for this KPI manually. This is implemented by subclasses that provide manual data."}),"\n",(0,n.jsx)(t.h3,{id:"getfilterlist",children:"%GetFilterList"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %GetFilterList(Output pFilters As %List, pDataSourceName As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Return list of possible filters for this KPI. This drives the list of filter selections for widget connected to this KPI. This takes the form:",(0,n.jsx)(t.br,{}),"\npFilters(n)=$LB(name,caption,filterProperty,multiSelect,dependsOn)"]}),"\n",(0,n.jsx)(t.h3,{id:"ongetfilterlist",children:"%OnGetFilterList"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %OnGetFilterList(Output pFilters As %List, pDataSourceName As %String = "") As %Status\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Callback to get additional possible filters for this KPI. This drives the list of filter selections for widget connected to this KPI. This takes the form:",(0,n.jsx)(t.br,{}),"\npFilters($I(pFilters))=$LB(name,caption,value,multiSelect,dependsOn)"]}),"\n",(0,n.jsx)(t.h3,{id:"getfiltermembers",children:"%GetFilterMembers"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %GetFilterMembers(pFilter As %String, Output pMembers As %List, Output pDefaultValue As %String, pSearchKey As %String = "", pDataSourceName As %String = "", ByRef pFilterValues As %String) As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Return a list of possible filter values for a given filter. This takes the form:",(0,n.jsx)(t.br,{}),"\npMembers(n)=$LB(text,value)"]}),"\n",(0,n.jsx)(t.h3,{id:"ongetfiltermembers",children:"%OnGetFilterMembers"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %OnGetFilterMembers(pFilter As %String, Output pMembers As %List, pSearchKey As %String = "", pDataSourceName As %String = "", ByRef pFilterValues As %String) As %Status\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Callback to get additional members for a KPI filter. This takes the form:",(0,n.jsx)(t.br,{}),"\npMembers($I(pMembers))=$LB(text,value)",(0,n.jsx)(t.br,{}),"\npSearchKey is the search key entered by the user, if applicable.",(0,n.jsx)(t.br,{}),"\npFilterValues is an array of all current filter values."]}),"\n",(0,n.jsx)(t.h3,{id:"getfilterdisplayvalue",children:"%GetFilterDisplayValue"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %GetFilterDisplayValue(pFilter As %String, pValue As %String, pDataSourceName As %String = "") As %String\n'})}),"\n",(0,n.jsx)(t.p,{children:"Given a filter and its logical value, return its display value."}),"\n",(0,n.jsx)(t.h3,{id:"getfilterlogicalvalue",children:"%GetFilterLogicalValue"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %GetFilterLogicalValue(pFilter As %String, pText As %String, pDataSourceName As %String = "", ByRef pFilterValues) As %String\n'})}),"\n",(0,n.jsx)(t.p,{children:"Given a filter and its display value (pText), return its logical value. If there is not a one-to-one correspondence for logic and display values, then the result of this call is indeterminate."}),"\n",(0,n.jsx)(t.h3,{id:"getactionlist",children:"%GetActionList"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %GetActionList(ByRef pActions As %List, pDataSourceName As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Return list of possible actions for this KPI. This drives the list of action selections for widget connected to this KPI. This takes the form:",(0,n.jsx)(t.br,{}),"\npActions(n)=$LB(name,caption)"]}),"\n",(0,n.jsx)(t.h3,{id:"ongetactionlist",children:"%OnGetActionList"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %OnGetActionList(ByRef pActions As %List, pDataSourceName As %String = "") As %Status\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Callback to get additional actions for a KPI. This takes the form:",(0,n.jsx)(t.br,{}),"\npActions($I(pActions))=$LB(name,caption)"]}),"\n",(0,n.jsx)(t.h3,{id:"invokedashboardaction",children:"%InvokeDashboardAction"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %InvokeDashboardAction(pAction As %String, pContext As %ZEN.proxyObject, pDataSourceName As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(t.p,{children:"Internal method that gets invoked from a client dashboard and dispatches to a user callback."}),"\n",(0,n.jsx)(t.h3,{id:"ondashboardaction",children:"%OnDashboardAction"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %OnDashboardAction(pAction As %String, pContext As %ZEN.proxyObject, pDataSourceName As %String = "") As %Status\n'})}),"\n",(0,n.jsxs)(t.p,{children:["This callback is invoked from a dashboard when an action defined by this dashboard is invoked.",(0,n.jsx)(t.br,{}),"\npAction is the logical name of the action.",(0,n.jsx)(t.br,{}),"\npContext is a proxy object that contains various information about the action and provides a way for the method to return information to the client."]}),"\n",(0,n.jsx)(t.h3,{id:"isasync",children:"%IsAsync"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %IsAsync() As %Boolean\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return true if this kpi should be computed asynchronously (for plug-ins)."}),"\n",(0,n.jsx)(t.h3,{id:"iscacheable",children:"%IsCacheable"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %IsCacheable() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the cube this KPI is based on."}),"\n",(0,n.jsx)(t.h3,{id:"getkpivalue",children:"%GetKPIValue"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %GetKPIValue(pKPIName As %String, Output pValue As %String, pKPIProperty As %String = "", pSeries As %String = "", ByRef pFilters As %String, pCellContext As %String = "", ByRef pCacheKey As %String, Output pPctComplete As %Integer, pParentQueryKey As %String = "", Output pKPIStatus As %Status) As %Status\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Get a specific value from this KPI.",(0,n.jsx)(t.br,{}),"\nThis is best used with simple KPIs implemented in manual mode as it can be expensive otherwise.",(0,n.jsx)(t.br,{}),"\nOn return, pPctComplete indicates whether this value is completely computed (100) or in progress (that is, it is being computed by a background agent).",(0,n.jsx)(t.br,{}),"\npCacheKey is the cache key associated with this request in the case of an asynchronous KPI. This is returned by reference.",(0,n.jsx)(t.br,{}),"\npFilters is an array of filters and their (display) values.",(0,n.jsx)(t.br,{}),"\npCellContext is the cell context passed in by the %KPI function."]}),"\n",(0,n.jsx)(t.h3,{id:"printvalue",children:"%PrintValue"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %PrintValue(pKPIProperty As %String = "", pSeries As %String = "", ByRef pFilters As %String, pAsync As %Boolean = 0) As %Status\n'})}),"\n",(0,n.jsxs)(t.p,{children:["Get the value of the given KPI property and print it to the console.",(0,n.jsx)(t.br,{}),"\nThis is provided as a diagnostic aid for KPIs. The KPI is forced to execute in the foreground, even if it is defined to be asynchronous, unless pAsync is set to true (1)."]}),"\n",(0,n.jsx)(t.h3,{id:"createkpicontroller",children:"%CreateKPIController"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:'ClassMethod %CreateKPIController(Output pController As %ZEN.Auxiliary.dataController, pKPIName As %String, ByRef pFilters As %String, pCellContext As %String = "", pParentQueryKey As %String = "") As %Status\n'})}),"\n",(0,n.jsx)(t.p,{children:"Set up the context for and execute this KPI. Return the instance of data controller used to drive the KPI."}),"\n",(0,n.jsx)(t.h3,{id:"getkpivaluearray",children:"%GetKPIValueArray"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetKPIValueArray(pKPIName As %String, Output pValues As %String, pPropertyList As %List, ByRef pFilters As %String) As %Status\n"})}),"\n",(0,n.jsxs)(t.p,{children:["Get an array of values from this KPI.",(0,n.jsx)(t.br,{}),"\npPropertyList is a $List of property names: $LB(prop1,prop2). On return, pValues contains an array of values of the properties listed in pPropertyList: pValues(n) = $LB(prop1,prop2)",(0,n.jsx)(t.br,{}),'\nUse "%series" in property list to get the series name',(0,n.jsx)(t.br,{}),"\n."]}),"\n",(0,n.jsx)(t.h3,{id:"getmdx",children:"%GetMDX"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetMDX(Output pMDX As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return an MDX statement to provide the KPI data."}),"\n",(0,n.jsx)(t.h3,{id:"getsql",children:"%GetSQL"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetSQL(Output pSQL As %String) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return an MDX statement to provide the KPI data."}),"\n",(0,n.jsx)(t.h3,{id:"clearkpicache",children:"%ClearKPICache"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %ClearKPICache() As %Status\n"})}),"\n",(0,n.jsx)(t.p,{children:"Utility method. Clear all KPI cache entries for this KPI."}),"\n",(0,n.jsx)(t.h3,{id:"getfilterkey",children:"%GetFilterKey"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"Method %GetFilterKey() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Utility method. Compute a hash code based on the current filter values for this KPI. This is used for caching KPI results."}),"\n",(0,n.jsx)(t.h3,{id:"createlocalcontroller",children:"%CreateLocalController"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %CreateLocalController(Output pController As %ZEN.Auxiliary.dataController, pModelClass As %String, pModelId As %String, pCriteria As %ZEN.proxyObject) As %Status [ Internal ]\n"})}),"\n",(0,n.jsx)(t.p,{children:"Utility method. Create a local instance of data controller to drive the KPI. This is used to get values from a KPI on the server."}),"\n",(0,n.jsx)(t.h3,{id:"getkpiclasstimestamp",children:"%GetKPIClassTimeStamp"}),"\n",(0,n.jsx)(t.pre,{children:(0,n.jsx)(t.code,{className:"language-objectscript-class",children:"ClassMethod %GetKPIClassTimeStamp() As %String\n"})}),"\n",(0,n.jsx)(t.p,{children:"Return the last modified date for this KPI class."})]})}function o(e={}){const{wrapper:t}={...(0,r.R)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,t,s)=>{s.d(t,{R:()=>l,x:()=>a});var n=s(96540);const r={},i=n.createContext(r);function l(e){const t=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),n.createElement(i.Provider,{value:t},e.children)}}}]);