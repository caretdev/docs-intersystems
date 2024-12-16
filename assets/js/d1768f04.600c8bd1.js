"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[82647],{19199:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>a,default:()=>o,frontMatter:()=>r,toc:()=>c});var s=n(74848),l=n(28453);const r={pagination_prev:null,pagination_next:null},a="%ZEN.Component.text",c=[{value:"Parameters",id:"parameters",level:2},{value:"DEFAULTCONTROLCLASS",id:"defaultcontrolclass",level:3},{value:"Properties",id:"properties",level:2},{value:"size",id:"size",level:3},{value:"maxlength",id:"maxlength",level:3},{value:"placeholder",id:"placeholder",level:3},{value:"inputtype",id:"inputtype",level:3},{value:"spellcheck",id:"spellcheck",level:3},{value:"autocomplete",id:"autocomplete",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"Style",id:"style",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawHTML",id:"drawhtml",level:3},{value:"setProperty",id:"setproperty",level:3}];function i(e){const t={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(t.header,{children:(0,s.jsx)(t.h1,{id:"zencomponenttext",children:"%ZEN.Component.text"})}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Class %ZEN.Component.text Extends control [ Deprecated, System = 3 ]\n"})}),"\n",(0,s.jsxs)(t.p,{children:["Simple text input control.",(0,s.jsx)(t.br,{}),"\nThis is a simple wrapper around the HTML input=text control."]}),"\n",(0,s.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(t.h3,{id:"defaultcontrolclass",children:"DEFAULTCONTROLCLASS"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Parameter DEFAULTCONTROLCLASS = "text";\n'})}),"\n",(0,s.jsx)(t.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(t.h3,{id:"size",children:"size"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property size As %ZEN.Datatype.integer(MINVAL = 0);\n"})}),"\n",(0,s.jsx)(t.p,{children:"Size of the input area for this text control."}),"\n",(0,s.jsx)(t.h3,{id:"maxlength",children:"maxlength"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property maxlength As %ZEN.Datatype.integer(MINVAL = 0);\n"})}),"\n",(0,s.jsx)(t.p,{children:"Maximum number of characters allowed within the text control."}),"\n",(0,s.jsx)(t.h3,{id:"placeholder",children:"placeholder"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property placeholder As %ZEN.Datatype.caption;\n"})}),"\n",(0,s.jsx)(t.p,{children:"Expose placeholder attribute to Zen."}),"\n",(0,s.jsx)(t.h3,{id:"inputtype",children:"inputtype"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property inputtype As %ZEN.Datatype.string(VALUELIST = ",text,email,tel,password,url,search") [ InitialExpression = "text" ];\n'})}),"\n",(0,s.jsx)(t.p,{children:"Allow for alternate types of input controls such as telephone, email etc which give more feedback particularly on mobile devices"}),"\n",(0,s.jsx)(t.h3,{id:"spellcheck",children:"spellcheck"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Property spellcheck As %ZEN.Datatype.boolean [ InitialExpression = 1 ];\n"})}),"\n",(0,s.jsx)(t.p,{children:"If true, this control has spellcheck enabled. Assuming this is an HTML5 browser implementation. IE9 does not support this."}),"\n",(0,s.jsx)(t.h3,{id:"autocomplete",children:"autocomplete"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:'Property autocomplete As %ZEN.Datatype.string [ InitialExpression = "on" ];\n'})}),"\n",(0,s.jsx)(t.p,{children:"This attribute indicates how the value of the control can be automatically completed by the browser."}),"\n",(0,s.jsx)(t.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(t.h3,{id:"style",children:"Style"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,s.jsx)(t.p,{children:"defines style sheet used by this component"}),"\n",(0,s.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(t.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"Method %DrawHTML()\n"})}),"\n",(0,s.jsx)(t.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,s.jsx)(t.pre,{children:(0,s.jsx)(t.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(t.p,{children:"Set the value of a named property."})]})}function o(e={}){const{wrapper:t}={...(0,l.R)(),...e.components};return t?(0,s.jsx)(t,{...e,children:(0,s.jsx)(i,{...e})}):i(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>a,x:()=>c});var s=n(96540);const l={},r=s.createContext(l);function a(e){const t=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function c(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:a(e.components),s.createElement(r.Provider,{value:t},e.children)}}}]);