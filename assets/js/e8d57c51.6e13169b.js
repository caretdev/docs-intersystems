"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[65489],{36585:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>a,default:()=>c,frontMatter:()=>r,toc:()=>o});var i=t(74848),s=t(28453);const r={pagination_prev:null,pagination_next:null},a="%DeepSee.ListingGroupDefinition",o=[{value:"XDatas",id:"xdatas",level:2},{value:"Listings",id:"listings",level:3},{value:"Methods",id:"methods",level:2},{value:"%Generate",id:"generate",level:3},{value:"%GetListingGroupName",id:"getlistinggroupname",level:3},{value:"%GetListingCaption",id:"getlistingcaption",level:3},{value:"%GetListingDescription",id:"getlistingdescription",level:3}];function l(e){const n={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,s.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(n.header,{children:(0,i.jsx)(n.h1,{id:"deepseelistinggroupdefinition",children:"%DeepSee.ListingGroupDefinition"})}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"Class %DeepSee.ListingGroupDefinition Extends (%RegisteredObject, %XML.Adaptor) [ Abstract, CompileAfter = (%DeepSee.Model.ListingGroup.listingGroup, %DeepSee.Generator), System = 4 ]\n"})}),"\n",(0,i.jsxs)(n.p,{children:['Subclasses of this class are used to define a DeepSee "listing group" that contain auxiliary detail listings.',(0,i.jsx)(n.br,{}),"\nThe Listings XDATA block defines the contents of a DeepSee listing group as an XML document."]}),"\n",(0,i.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,i.jsx)(n.h3,{id:"listings",children:"Listings"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:'XData Listings [ XMLNamespace = "http://www.intersystems.com/deepsee/listinggroup" ]\n'})}),"\n",(0,i.jsx)(n.p,{children:"This projection is used to keep track of when Cubes are compiled or deleted. This XData section provides the definition of the cube."}),"\n",(0,i.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,i.jsx)(n.h3,{id:"generate",children:"%Generate"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %Generate() As %Status [ CodeMode = objectgenerator, Final, Internal ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Process the model for this Subject Area and generate meta data."}),"\n",(0,i.jsx)(n.h3,{id:"getlistinggroupname",children:"%GetListingGroupName"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %GetListingGroupName() As %String [ CodeMode = objectgenerator, GenerateAfter = %Generate ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Return the logical name of the MDX cube defined by this subject area."}),"\n",(0,i.jsx)(n.h3,{id:"getlistingcaption",children:"%GetListingCaption"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %GetListingCaption(pListing As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Return the (localized) caption for a given listing within this listing group."}),"\n",(0,i.jsx)(n.h3,{id:"getlistingdescription",children:"%GetListingDescription"}),"\n",(0,i.jsx)(n.pre,{children:(0,i.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod %GetListingDescription(pListing As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %Generate, Internal ]\n"})}),"\n",(0,i.jsx)(n.p,{children:"Return the (localized) description for a given listing within this listing group."})]})}function c(e={}){const{wrapper:n}={...(0,s.R)(),...e.components};return n?(0,i.jsx)(n,{...e,children:(0,i.jsx)(l,{...e})}):l(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>a,x:()=>o});var i=t(96540);const s={},r=i.createContext(s);function a(e){const n=i.useContext(r);return i.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function o(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:a(e.components),i.createElement(r.Provider,{value:n},e.children)}}}]);