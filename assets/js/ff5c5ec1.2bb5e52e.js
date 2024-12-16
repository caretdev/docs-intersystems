"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[16385],{71448:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>l,default:()=>i,frontMatter:()=>a,toc:()=>o});var n=t(74848),r=t(28453);const a={pagination_prev:null,pagination_next:null},l="%Library.Populate",o=[{value:"Parameters",id:"parameters",level:2},{value:"POPSPEC;",id:"popspec",level:3},{value:"Methods",id:"methods",level:2},{value:"Populate",id:"populate",level:3},{value:"GetSuperExtents",id:"getsuperextents",level:3},{value:"PopulateSerial",id:"populateserial",level:3},{value:"OnPopulate",id:"onpopulate",level:3},{value:"Random",id:"random",level:3}];function c(e){const s={a:"a",br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",ol:"ol",p:"p",pre:"pre",strong:"strong",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"librarypopulate",children:"%Library.Populate"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Library.Populate [ Abstract, Not ProcedureBlock, PropertyClass = %Compiler.Type.Populate, System = 2 ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:[(0,n.jsx)(s.strong,{children:"For details on using this class"}),", see ",(0,n.jsx)(s.a,{href:"/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.Populate",children:"Using the Populate Utility"}),"."]}),"\n",(0,n.jsx)(s.p,{children:"%Populate is a utility class that provides the ability to create instances of an object populated with random data."}),"\n",(0,n.jsx)(s.p,{children:"To use the %Populate class do the following:"}),"\n",(0,n.jsxs)(s.ol,{children:["\n",(0,n.jsxs)(s.li,{children:["Create a persistent object class, such as ",(0,n.jsx)(s.strong,{children:"Employee"}),"."]}),"\n",(0,n.jsxs)(s.li,{children:["Add %Populate to the end of the class' superclass list:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.code,{children:"super = %Persistent,%Populate"})]}),"\n",(0,n.jsx)(s.li,{children:"Save and compile the class."}),"\n",(0,n.jsxs)(s.li,{children:["%Populate will add a class method, ",(0,n.jsx)(s.strong,{children:"Populate()"}),", to your class.\nRun this method to create instances of your class in the database:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.code,{children:"Do ##class(Employee).Populate(100)"})]}),"\n"]}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"popspec",children:"POPSPEC;"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter POPSPEC;\n"})}),"\n",(0,n.jsxs)(s.p,{children:["The ",(0,n.jsx)(s.em,{children:"POPSPEC"})," parameter provides a way to control how %Populate generates data for properties."]}),"\n",(0,n.jsxs)(s.p,{children:[(0,n.jsx)(s.strong,{children:"For details"}),", see ",(0,n.jsx)(s.a,{href:"/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.Populate",children:"Using the Populate Utility"}),"."]}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"populate",children:"Populate"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Populate(count As %Integer = 10, verbose As %Integer = 0, DeferIndices As %Integer = 1, ByRef objects As %Integer = 0, tune As %Integer = 1, deterministic As %Integer = 0) As %Integer [ CodeMode = generator, GenerateAfter = OnPopulate ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Creates up to count instances an object and stores them in the database."}),"\n",(0,n.jsx)(s.p,{children:"If verbose is true, then details are echoed to the console."}),"\n",(0,n.jsx)(s.p,{children:"If DeferIndices is true, then indices are sorted at the end of the operation."}),"\n",(0,n.jsx)(s.p,{children:"If objects is true, then each object that is created is returned in the objects array"}),"\n",(0,n.jsx)(s.p,{children:"If tune is true, then $SYSTEM.SQL.TuneTable is called after the instances of the class have been created. If tune>1, then $SYSTEM.SQL.TuneTable is also called for any tables projected by persistent superclasses of this class"}),"\n",(0,n.jsx)(s.p,{children:"If deterministic is true, then the set of objects produced by identical calls to Populate at different times will be identical."}),"\n",(0,n.jsx)(s.p,{children:"Returns the number of instances successfully created."}),"\n",(0,n.jsxs)(s.p,{children:[(0,n.jsx)(s.strong,{children:"For details"}),", see ",(0,n.jsx)(s.a,{href:"/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.Populate",children:"Using the Populate Utility"}),"."]}),"\n",(0,n.jsx)(s.h3,{id:"getsuperextents",children:"GetSuperExtents"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetSuperExtents(pClass) As %String [ Internal, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Given a class, return a '~' delimited list of the class's super extents"}),"\n",(0,n.jsx)(s.h3,{id:"populateserial",children:"PopulateSerial"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod PopulateSerial() As %String [ CodeMode = generator, GenerateAfter = OnPopulate ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Create a single instance of a serial object."}),"\n",(0,n.jsx)(s.h3,{id:"onpopulate",children:"OnPopulate"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method OnPopulate() As %Status [ Abstract, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"random",children:"Random"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Random(n As %Integer) As %Integer [ Internal, ProcedureBlock = 1 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Return a random number from 0-n using a seeded RNG. Identical to $$$PRand"})]})}function i(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>l,x:()=>o});var n=t(96540);const r={},a=n.createContext(r);function l(e){const s=n.useContext(a);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function o(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:l(e.components),n.createElement(a.Provider,{value:s},e.children)}}}]);