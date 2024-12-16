"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[63595],{88528:(e,n,t)=>{t.r(n),t.d(n,{contentTitle:()=>o,default:()=>d,frontMatter:()=>r,toc:()=>a});var s=t(74848),l=t(28453);const r={pagination_prev:null,pagination_next:null},o="%ZEN.Portal.selector",a=[{value:"Parameters",id:"parameters",level:2},{value:"DEFAULTCONTROLCLASS",id:"defaultcontrolclass",level:3},{value:"Properties",id:"properties",level:2},{value:"size",id:"size",level:3},{value:"context",id:"context",level:3},{value:"multiSelect",id:"multiselect",level:3},{value:"separator",id:"separator",level:3},{value:"onkeyup",id:"onkeyup",level:3},{value:"XDatas",id:"xdatas",level:2},{value:"CSS3Style",id:"css3style",level:3},{value:"Style",id:"style",level:3},{value:"Methods",id:"methods",level:2},{value:"%DrawHTML",id:"drawhtml",level:3},{value:"showSelector",id:"showselector",level:3},{value:"RenderDropdownContent",id:"renderdropdowncontent",level:3},{value:"%RenderDropdown",id:"renderdropdown",level:3},{value:"showDropdown",id:"showdropdown",level:3},{value:"onStartModalHandler",id:"onstartmodalhandler",level:3},{value:"onEndModalHandler",id:"onendmodalhandler",level:3},{value:"onresizeHandler",id:"onresizehandler",level:3},{value:"adjustDropdownPosition",id:"adjustdropdownposition",level:3},{value:"getModalDiv",id:"getmodaldiv",level:3},{value:"selectItem",id:"selectitem",level:3},{value:"setProperty",id:"setproperty",level:3},{value:"toggleIconDisplay",id:"toggleicondisplay",level:3},{value:"onkeyupHandler",id:"onkeyuphandler",level:3},{value:"onloadHandler",id:"onloadhandler",level:3},{value:"onDisplayHandler",id:"ondisplayhandler",level:3},{value:"adjustSize",id:"adjustsize",level:3}];function i(e){const n={br:"br",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,l.R)(),...e.components};return(0,s.jsxs)(s.Fragment,{children:[(0,s.jsx)(n.header,{children:(0,s.jsx)(n.h1,{id:"zenportalselector",children:"%ZEN.Portal.selector"})}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Class %ZEN.Portal.selector Extends %ZEN.Component.control [ Deprecated, System = 3 ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Selector component for Portal applications. This is a specialized form of text control that allows for free form text entry or context-aware selection from a list."}),"\n",(0,s.jsx)(n.h2,{id:"parameters",children:"Parameters"}),"\n",(0,s.jsx)(n.h3,{id:"defaultcontrolclass",children:"DEFAULTCONTROLCLASS"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Parameter DEFAULTCONTROLCLASS = "selectorInput";\n'})}),"\n",(0,s.jsx)(n.h2,{id:"properties",children:"Properties"}),"\n",(0,s.jsx)(n.h3,{id:"size",children:"size"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property size As %ZEN.Datatype.integer(MINVAL = 0);\n"})}),"\n",(0,s.jsx)(n.p,{children:"Size of the input area for this text control."}),"\n",(0,s.jsx)(n.h3,{id:"context",children:"context"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property context As %ZEN.Datatype.uri;\n"})}),"\n",(0,s.jsxs)(n.p,{children:["Context string used to determine the selection list for this component.",(0,s.jsx)(n.br,{}),"\nA context string take the form of a URL:",(0,s.jsx)(n.br,{}),"\nSearchClass/SearchName?parm1=value&parm2=value",(0,s.jsx)(n.br,{}),"\n",(0,s.jsx)(n.em,{children:"SearchClass"})," is the name of a %ZEN.Portal.ContextSearch search class that contains the search to perform.",(0,s.jsx)(n.br,{}),"\n",(0,s.jsx)(n.em,{children:"SearchName"})," is the name of the search method to invoke within the search class."]}),"\n",(0,s.jsx)(n.h3,{id:"multiselect",children:"multiSelect"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Property multiSelect As %ZEN.Datatype.boolean [ InitialExpression = 0 ];\n"})}),"\n",(0,s.jsxs)(n.p,{children:["Flag to indicate whether multiSelect mode should be used when displaying the dropdown menu. If this value is true, then the contents of the control are treated as a delimited list using separator as the delimiter. The dropdown will then present the user with a list of checkboxes with the previously entered values checked. Checking and unchecking values will toggle whether the property is included in the list.",(0,s.jsx)(n.br,{}),"\nNOTE: MultiSelect mode should not be used in conjunction with context-based lookups, as the behaviour which could come from this approach would not be intuitive or easy to use."]}),"\n",(0,s.jsx)(n.h3,{id:"separator",children:"separator"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property separator As %ZEN.Datatype.string [ InitialExpression = "," ];\n'})}),"\n",(0,s.jsx)(n.p,{children:"Define what delimiter to use for list properties when multiSelect is true."}),"\n",(0,s.jsx)(n.h3,{id:"onkeyup",children:"onkeyup"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'Property onkeyup As %ZEN.Datatype.eventHandler(HANDLER = """_$select((..onkeyup\'=""""): ""return zenFireEvent(\'""_..index_""\',\'""_$ZCVT($S(..onkeydown\'[""#("":..onkeydown,1:..%Eval(..onkeydown,""JS"")),""O"",""JS"")_""\',\'onkeydown\',event);"", 1: ""zenPage.getComponent(""_..index_"").onkeyupHandler(event,""_..index_"");"")_""");\n'})}),"\n",(0,s.jsx)(n.p,{children:"onkeyup event handler: This event is fired when a key is released when this control has focus. The HANDLER parameter is used to trigger the default onkeyup handler defined in onkeyupHandler(). If onkeyup is specified in the component, then that specific code will be invoked rather than that in the default event handler, and it is then the responsibility of the developer to call the onkeyupHandler() function defined in this class."}),"\n",(0,s.jsx)(n.h2,{id:"xdatas",children:"XDatas"}),"\n",(0,s.jsx)(n.h3,{id:"css3style",children:"CSS3Style"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"XData CSS3Style\n"})}),"\n",(0,s.jsx)(n.p,{children:"defines style sheet used by this component"}),"\n",(0,s.jsx)(n.h3,{id:"style",children:"Style"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"XData Style\n"})}),"\n",(0,s.jsx)(n.p,{children:"defines style sheet used by this component"}),"\n",(0,s.jsx)(n.h2,{id:"methods",children:"Methods"}),"\n",(0,s.jsx)(n.h3,{id:"drawhtml",children:"%DrawHTML"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"Method %DrawHTML()\n"})}),"\n",(0,s.jsx)(n.p,{children:"Draw content of control."}),"\n",(0,s.jsx)(n.h3,{id:"showselector",children:"showSelector"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod showSelector() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"User has pressed the selector button."}),"\n",(0,s.jsx)(n.h3,{id:"renderdropdowncontent",children:"RenderDropdownContent"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod RenderDropdownContent(pIndex As %Integer, pContext As %String, pSearchKey As %String, pMultiSelect As %Boolean, pSeparator As %String = ",") As %Boolean [ ZenMethod ]\n'})}),"\n",(0,s.jsxs)(n.p,{children:["Get the HTML contents of the dropdown area for the selector.",(0,s.jsx)(n.br,{}),"\npContext is the (resolved) context string for the control.",(0,s.jsx)(n.br,{}),"\npSearchKey is the current contents of the control.",(0,s.jsx)(n.br,{}),"\npMultiSelect is a flag to indicate whether a multiSelect dropdown should be displayed.",(0,s.jsx)(n.br,{}),"\npSeparator indicates which separator character should be used if pMultiSelect is true."]}),"\n",(0,s.jsx)(n.h3,{id:"renderdropdown",children:"%RenderDropdown"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:'ClassMethod %RenderDropdown(pIndex As %Integer, pContext As %String, pSearchKey As %String, pMultiSelect As %Boolean, pSeparator As %String = ",") As %Status\n'})}),"\n",(0,s.jsxs)(n.p,{children:["Render the HTML contents of the dropdown area for the selector.",(0,s.jsx)(n.br,{}),"\npContext is the (resolved) context string for the control.",(0,s.jsx)(n.br,{}),"\npSearchKey is the current contents of the control.",(0,s.jsx)(n.br,{}),"\npMultiSelect is a flag to indicate whether a multiSelect dropdown should be displayed.",(0,s.jsx)(n.br,{}),"\npSeparator indicates which separator character should be used if pMultiSelect is true."]}),"\n",(0,s.jsx)(n.h3,{id:"showdropdown",children:"showDropdown"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod showDropdown(html) [ Internal, Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Reveal the dropdown for this selector."}),"\n",(0,s.jsx)(n.h3,{id:"onstartmodalhandler",children:"onStartModalHandler"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onStartModalHandler(zindex) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Notification that this component is about to become modal."}),"\n",(0,s.jsx)(n.h3,{id:"onendmodalhandler",children:"onEndModalHandler"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onEndModalHandler(zindex) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Notification that this component is about to stop being modal."}),"\n",(0,s.jsx)(n.h3,{id:"onresizehandler",children:"onresizeHandler"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onresizeHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This client event is fired when the page is resized and the dropdown is visible. Resizing the window while the dropdown is open can cause the base component and its dropdown to become detached, this method traps such occurences and allows the dropdown to be repositioned."}),"\n",(0,s.jsx)(n.h3,{id:"adjustdropdownposition",children:"adjustDropdownPosition"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod adjustDropdownPosition() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"getmodaldiv",children:"getModalDiv"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod getModalDiv() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Find the div element used to display modal popups."}),"\n",(0,s.jsx)(n.h3,{id:"selectitem",children:"selectItem"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod selectItem(value) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"User has selected an item in the dropdown list."}),"\n",(0,s.jsx)(n.h3,{id:"setproperty",children:"setProperty"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod setProperty(property, value, value2) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Set the value of a named property."}),"\n",(0,s.jsx)(n.h3,{id:"toggleicondisplay",children:"toggleIconDisplay"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod toggleIconDisplay(hide) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.h3,{id:"onkeyuphandler",children:"onkeyupHandler"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onkeyupHandler(event, index) [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Default onkeyup handler to allow drop-down to be displayed (by pressing DOWN) or hidden (by pressing ESCAPE). This method is only invoked if no onkeyup event is defined for the selector using the standard onkeyup attribute. Should a developer make use of the onkeyup callback, it is his/her responsibility to determine whether this function should be invoked."}),"\n",(0,s.jsx)(n.h3,{id:"onloadhandler",children:"onloadHandler"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onloadHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This client event, if present, is fired when the page is loaded."}),"\n",(0,s.jsx)(n.h3,{id:"ondisplayhandler",children:"onDisplayHandler"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod onDisplayHandler() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"This client event, if present, is fired when the containing group is made visible."}),"\n",(0,s.jsx)(n.h3,{id:"adjustsize",children:"adjustSize"}),"\n",(0,s.jsx)(n.pre,{children:(0,s.jsx)(n.code,{className:"language-objectscript-class",children:"ClientMethod adjustSize() [ Language = javascript ]\n"})}),"\n",(0,s.jsx)(n.p,{children:"Adjust size of control."})]})}function d(e={}){const{wrapper:n}={...(0,l.R)(),...e.components};return n?(0,s.jsx)(n,{...e,children:(0,s.jsx)(i,{...e})}):i(e)}},28453:(e,n,t)=>{t.d(n,{R:()=>o,x:()=>a});var s=t(96540);const l={},r=s.createContext(l);function o(e){const n=s.useContext(r);return s.useMemo((function(){return"function"==typeof e?e(n):{...n,...e}}),[n,e])}function a(e){let n;return n=e.disableParentContext?"function"==typeof e.components?e.components(l):e.components||l:o(e.components),s.createElement(r.Provider,{value:n},e.children)}}}]);