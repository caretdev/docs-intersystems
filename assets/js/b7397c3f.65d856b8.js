"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[94795],{4910:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>s,default:()=>c,frontMatter:()=>r,toc:()=>a});var i=n(74848),l=n(28453);const r={pagination_prev:null,pagination_next:null},s="%ZEN.Auxiliary.gridColumnDescriptor",a=[{value:"Parameters",id:"parameters",level:2},{value:"XMLNAME",id:"xmlname",level:3},{value:"Properties",id:"properties",level:2},{value:"type",id:"type",level:3},{value:"columns",id:"columns",level:3},{value:"caption",id:"caption",level:3},{value:"value",id:"value",level:3},{value:"format",id:"format",level:3},{value:"style",id:"style",level:3},{value:"headerStyle",id:"headerstyle",level:3},{value:"align",id:"align",level:3},{value:"headerAlign",id:"headeralign",level:3},{value:"priority",id:"priority",level:3},{value:"readOnly",id:"readonly",level:3},{value:"width",id:"width",level:3},{value:"height",id:"height",level:3},{value:"image",id:"image",level:3},{value:"hidden",id:"hidden",level:3},{value:"ongetlookupspec",id:"ongetlookupspec",level:3}];function o(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,i.jsxs)(i.Fragment,{children:[(0,i.jsx)(t.header,{children:(0,i.jsx)(t.h1,{id:"zenauxiliarygridcolumndescriptor",children:"%ZEN.Auxiliary.gridColumnDescriptor"})}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:"Class %ZEN.Auxiliary.gridColumnDescriptor Extends %ZEN.Component.object [ Deprecated, System = 3 ]\n"})}),"\n",(0,i.jsx)(t.p,{children:"Defines a column descriptor within a %ZEN.Component.dataGrid component."}),"\n",(0,i.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,i.jsx)(t.h3,{id:"xmlname",children:"XMLNAME"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter XMLNAME = "columnDescriptor";\n'})}),"\n",(0,i.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,i.jsx)(t.h3,{id:"type",children:"type"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property type As %ZEN.Datatype.string(VALUELIST = ",string,image,button,checkbox,link,lookup,user", XMLPROJECTION = "attribute") [ InitialExpression = "string" ];\n'})}),"\n",(0,i.jsxs)(t.p,{children:['Type of this column. This is used to determine what kind of editing can occur within this cell when the dataGrid is in "cells" mode.',(0,i.jsx)(t.br,{}),'\n"string" -- display a string value and edit as a string.',(0,i.jsx)(t.br,{}),'\n"image" -- display an image (using the url in the image property).',(0,i.jsx)(t.br,{}),'\n"button" -- display a button. You must implement an onaction handler for this to take effect.',(0,i.jsx)(t.br,{}),'\n"checkbox" -- display a checkbox.',(0,i.jsx)(t.br,{}),'\n"link" -- display an HTML link. You must implement an onaction handler for this to take effect.',(0,i.jsx)(t.br,{}),'\n"lookup" -- display a lookup control. You must implement an ongetlookupdata handler for this to take effect.',(0,i.jsx)(t.br,{}),'\n"user" -- display arbitary HTML as defined by the ondrawcell callback.']}),"\n",(0,i.jsx)(t.h3,{id:"columns",children:"columns"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property columns As list Of %ZEN.Auxiliary.gridColumnDescriptor(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE", ZENSETTING = 0);\n'})}),"\n",(0,i.jsx)(t.p,{children:"Optional child descriptors for this column."}),"\n",(0,i.jsx)(t.h3,{id:"caption",children:"caption"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property caption As %ZEN.Datatype.caption(XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(t.p,{children:"Optional caption to apply to this element."}),"\n",(0,i.jsx)(t.h3,{id:"value",children:"value"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property value As %ZEN.Datatype.string(XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsxs)(t.p,{children:["Optional default value for this column.",(0,i.jsx)(t.br,{}),'\nThis can be a literal value or an expression: "=[@Name]"']}),"\n",(0,i.jsx)(t.h3,{id:"format",children:"format"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property format As %ZEN.Datatype.string(XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(t.p,{children:"Optional format to apply to this element."}),"\n",(0,i.jsx)(t.h3,{id:"style",children:"style"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property style As %ZEN.Datatype.string(XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(t.p,{children:"Style string for this column."}),"\n",(0,i.jsx)(t.h3,{id:"headerstyle",children:"headerStyle"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property headerStyle As %ZEN.Datatype.string(XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(t.p,{children:"Style string to apply to the header for this column."}),"\n",(0,i.jsx)(t.h3,{id:"align",children:"align"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property align As %ZEN.Datatype.string(VALUELIST = ",left,right,center", XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(t.p,{children:"Optional horizontal alignment to apply to this column. Use this rather than the style property."}),"\n",(0,i.jsx)(t.h3,{id:"headeralign",children:"headerAlign"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property headerAlign As %ZEN.Datatype.string(VALUELIST = ",left,right,center", XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsxs)(t.p,{children:["Optional horizontal alignment to apply to the header for this column. If not defined, then the align is used.",(0,i.jsx)(t.br,{}),"\nUse this rather than the style property."]}),"\n",(0,i.jsx)(t.h3,{id:"priority",children:"priority"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property priority As %ZEN.Datatype.integer(MAXVAL = 2, MINVAL = 0, XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(t.p,{children:"Optional priority to apply to this element."}),"\n",(0,i.jsx)(t.h3,{id:"readonly",children:"readOnly"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property readOnly As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(t.p,{children:"Optional readOnly attribute to apply to this element."}),"\n",(0,i.jsx)(t.h3,{id:"width",children:"width"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property width As %ZEN.Datatype.length(XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(t.p,{children:"Optional default minimum width to apply to this column (in pixels - no units need be supplied) upon initial rendering. The actual width may be adjusted higher as needed depending on the actual widths of data in the cells themselves. This setting does not preclude the end user from manually resizing the column width to a smaller value."}),"\n",(0,i.jsx)(t.h3,{id:"height",children:"height"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property height As %ZEN.Datatype.length(XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(t.p,{children:"Optional height to apply to this element."}),"\n",(0,i.jsx)(t.h3,{id:"image",children:"image"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property image As %ZEN.Datatype.uri(XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(t.p,{children:"For image columns, this is the name of the image to display."}),"\n",(0,i.jsx)(t.h3,{id:"hidden",children:"hidden"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property hidden As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];\n'})}),"\n",(0,i.jsx)(t.p,{children:"Do not show this column."}),"\n",(0,i.jsx)(t.h3,{id:"ongetlookupspec",children:"ongetlookupspec"}),"\n",(0,i.jsx)(t.pre,{children:(0,i.jsx)(t.code,{className:"language-objectscript-class",children:'Property ongetlookupspec As %ZEN.Datatype.eventHandler(XMLPROJECTION = "attribute");\n'})}),"\n",(0,i.jsx)(t.p,{children:"This event is used to compute the lookup (popup) information for this column.!!!"})]})}function c(e={}){const{wrapper:t}={...(0,l.R)(),...e.components};return t?(0,i.jsx)(t,{...e,children:(0,i.jsx)(o,{...e})}):o(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>s,x:()=>a});var i=n(96540);const l={},r=i.createContext(l);function s(e){const t=i.useContext(r);return i.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function a(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:s(e.components),i.createElement(r.Provider,{value:t},e.children)}}}]);