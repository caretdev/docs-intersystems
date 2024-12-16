"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[72418],{55165:(e,n,s)=>{s.r(n),s.d(n,{contentTitle:()=>r,default:()=>c,frontMatter:()=>a,toc:()=>t});var l=s(74848),o=s(28453);const a={pagination_prev:null,pagination_next:null},r="%CSP.UI.Component.RoleMemberTab",t=[{value:"Parameters",id:"parameters",level:2},{value:"DOMAIN",id:"domain",level:3},{value:"NAMESPACE",id:"namespace",level:3},{value:"Properties",id:"properties",level:2},{value:"PID",id:"pid",level:3},{value:"readOnly",id:"readonly",level:3},{value:"Type",id:"type",level:3},{value:"EscalationOnly",id:"escalationonly",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Methods",id:"methods",level:2},{value:"doAssignRole",id:"doassignrole",level:3},{value:"doChangeGrantOption",id:"dochangegrantoption",level:3},{value:"doRadioChange",id:"doradiochange",level:3},{value:"UpdateType",id:"updatetype",level:3},{value:"doRemoveRole",id:"doremoverole",level:3},{value:"doRemoveAllRoles",id:"doremoveallroles",level:3},{value:"AssignRoles",id:"assignroles",level:3},{value:"RemoveAllRoles",id:"removeallroles",level:3},{value:"RemoveRole",id:"removerole",level:3},{value:"DrawSelectBoxes",id:"drawselectboxes",level:3},{value:"%DrawHTML",id:"drawhtml",level:3}];function i(e){const n={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,o.R)(),...e.components};return(0,l.jsxs)(l.Fragment,{children:[(0,l.jsx)(n.header,{children:(0,l.jsx)(n.h1,{id:"cspuicomponentrolemembertab",children:"%CSP.UI.Component.RoleMemberTab"})}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Class %CSP.UI.Component.RoleMemberTab Extends (%ZEN.Component.component, %CSP.UI.Component.SelectBoxUtils) [ System = 3 ]\n"})}),"\n",(0,l.jsx)(n.p,{children:'Component for the "Members" tab on the Role edit page'}),"\n",(0,l.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,l.jsx)(n.h3,{id:"domain",children:"DOMAIN"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter DOMAIN [ Internal ] = "%Utility";\n'})}),"\n",(0,l.jsx)(n.h3,{id:"namespace",children:"NAMESPACE"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter NAMESPACE [ Internal ] = "http://www.intersystems.com/zen";\n'})}),"\n",(0,l.jsx)(n.p,{children:"This is the XML namespace for this component."}),"\n",(0,l.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,l.jsx)(n.h3,{id:"pid",children:"PID"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property PID As %ZEN.Datatype.string(ZENEXPRESSION = 1);\n"})}),"\n",(0,l.jsx)(n.p,{children:"Name of the Application/User being edited"}),"\n",(0,l.jsx)(n.h3,{id:"readonly",children:"readOnly"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property readOnly As %ZEN.Datatype.boolean(ZENEXPRESSION = 1) [ InitialExpression = 0 ];\n"})}),"\n",(0,l.jsx)(n.p,{children:"If true, tables are for display only"}),"\n",(0,l.jsx)(n.h3,{id:"type",children:"Type"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property Type As %ZEN.Datatype.string;\n"})}),"\n",(0,l.jsx)(n.p,{children:"Users or Roles, depending on which radio button is selected"}),"\n",(0,l.jsx)(n.h3,{id:"escalationonly",children:"EscalationOnly"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Property EscalationOnly As %ZEN.Datatype.boolean;\n"})}),"\n",(0,l.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,l.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,l.jsx)(n.p,{children:"This Style block contains component-specific CSS style definitions."}),"\n",(0,l.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,l.jsx)(n.h3,{id:"doassignrole",children:"doAssignRole"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doAssignRole(grantOption) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.h3,{id:"dochangegrantoption",children:"doChangeGrantOption"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doChangeGrantOption(roleID, isChecked) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.h3,{id:"doradiochange",children:"doRadioChange"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doRadioChange(newVal) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.h3,{id:"updatetype",children:"UpdateType"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClassMethod UpdateType(newVal As %String) As %Status [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(n.h3,{id:"doremoverole",children:"doRemoveRole"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doRemoveRole(roleID, type) [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.h3,{id:"doremoveallroles",children:"doRemoveAllRoles"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod doRemoveAllRoles() [ Language = javascript ]\n"})}),"\n",(0,l.jsx)(n.h3,{id:"assignroles",children:"AssignRoles"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method AssignRoles(PID As %String, MemberList As %String, GrantOption As %Boolean) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Assign a User or Role to the Role or change the grant option on a User/Role's existing Role PID: Role name MemberList: Comma- or Asterisk-delimited list of users or roles to change GrantOption: 1 - Add grant option, 0 - Remove grant option"}),"\n",(0,l.jsx)(n.h3,{id:"removeallroles",children:"RemoveAllRoles"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method RemoveAllRoles(PID As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(n.p,{children:"Remove all roles from a user"}),"\n",(0,l.jsx)(n.h3,{id:"removerole",children:"RemoveRole"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method RemoveRole(PID As %String, Member As %String, Type As %String) As %String [ ZenMethod ]\n"})}),"\n",(0,l.jsx)(n.p,{children:'Remove a Role from a User PID: Role name Member: Role or user to remove Type: "USER" or "ROLE"'}),"\n",(0,l.jsx)(n.h3,{id:"drawselectboxes",children:"DrawSelectBoxes"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method DrawSelectBoxes(ByRef ExcludedItems As %String) As %Status\n"})}),"\n",(0,l.jsx)(n.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,l.jsx)(n.pre,{children:(0,l.jsx)(n.code,{className:"language-objectscript-class",children:"Method %DrawHTML()\n"})}),"\n",(0,l.jsx)(n.p,{children:"The %DrawHTML method draws the initial HTML for this component."})]})}function c(e={}){const{wrapper:n}={...(0,o.R)(),...e.components};return n?(0,l.jsx)(n,{...e,children:(0,l.jsx)(i,{...e})}):i(e)}},28453:(e,n,s)=>{s.d(n,{R:()=>r,x:()=>t});var l=s(96540);const o={},a=l.createContext(o);function r(e){const n=l.useContext(a);return l.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function t(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(o):e.components||o:r(e.components),l.createElement(a.Provider,{value:n},e.children)}}}]);