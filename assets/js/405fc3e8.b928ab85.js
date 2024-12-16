"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[60611],{3665:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>r,default:()=>o,frontMatter:()=>l,toc:()=>i});var n=t(74848),a=t(28453);const l={pagination_prev:null,pagination_next:null},r="%SYSTEM.MV",i=[{value:"Methods",id:"methods",level:2},{value:"TCL2Next",id:"tcl2next",level:3},{value:"parseDict",id:"parsedict",level:3},{value:"buildMVClassXref",id:"buildmvclassxref",level:3},{value:"createMVProperty",id:"createmvproperty",level:3},{value:"deleteMVProperty",id:"deletemvproperty",level:3},{value:"fileDescClassName",id:"filedescclassname",level:3},{value:"setPortNumber",id:"setportnumber",level:3},{value:"fileDescDataGlobal",id:"filedescdataglobal",level:3},{value:"validCacheName",id:"validcachename",level:3},{value:"camelCaseName",id:"camelcasename",level:3},{value:"decomposeStatus",id:"decomposestatus",level:3},{value:"newUniqueGlobal",id:"newuniqueglobal",level:3},{value:"getPrimaryMVClass",id:"getprimarymvclass",level:3},{value:"InputDataOnly",id:"inputdataonly",level:3},{value:"generateItypeMethods",id:"generateitypemethods",level:3},{value:"StackSetCOS",id:"stacksetcos",level:3},{value:"StackSetMV",id:"stacksetmv",level:3},{value:"StackGetCOS",id:"stackgetcos",level:3},{value:"StackGetMV",id:"stackgetmv",level:3},{value:"IteratorInit",id:"iteratorinit",level:3},{value:"IteratorTest",id:"iteratortest",level:3},{value:"IteratorGet",id:"iteratorget",level:3},{value:"ConvAnalyze",id:"convanalyze",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",table:"table",tbody:"tbody",td:"td",th:"th",thead:"thead",tr:"tr",...(0,a.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"systemmv",children:"%SYSTEM.MV"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SYSTEM.MV Extends Help [ Abstract, System = 4 ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"The class %SYSTEM.MV provides access to MV system level functions and elements for COS and MVBASIC programmers."}),"\n",(0,n.jsx)(s.p,{children:"This class should always be used in preference to direct access to the internals of the MV implementation, as it is guranteed to be in sync with any underlying structural changes."}),"\n",(0,n.jsx)(s.p,{children:"NEVER try to access MV elements at their base system level as upward compatiblity is not guranteed and this can in fact be dangerous."}),"\n",(0,n.jsxs)(s.p,{children:["COS language methods and programs should access this class using the special ",(0,n.jsx)(s.strong,{children:"$System"})," object: ",(0,n.jsx)(s.code,{children:'Set cosName = $System.MV.validCacheName("MVFILE.$TRANGEN4M3")'})]}),"\n",(0,n.jsxs)(s.p,{children:['MVBASIC programmers should access this class using the "%SYSTEM.MV" method: ',(0,n.jsx)(s.code,{children:'cosName = "%SYSTEM.MV"->validCacheName("MVFILE.$TRANGEN4M3")'})]}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"tcl2next",children:"TCL2Next"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod TCL2Next() As %Integer [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Call this method to get the next Item ID from the TCL II processed command line."}),"\n",(0,n.jsxs)(s.p,{children:["Note that you can enable TCL II (list, vs *, vs itemidlist) processing for an MVBASIC cataloged program by editing the CATALOG pointer for the program and adding '2' to Attribute 5:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.code,{children:"MYNEWVERB 0001 V 0002 MVB.3\ufffd%SYS 0003 B 0004 0005 2 0006 0007 L 0008 MYNEWVERB 0009 BP 0010 SYSPROG"})," You can additionaly add the the following letters to attribute 5:",(0,n.jsx)(s.br,{}),"\n'C' - will cause the item body to be copied into @RECORD.",(0,n.jsx)(s.br,{}),"\n'N' - will allow new items and not check for an item's existence.",(0,n.jsx)(s.br,{}),"\n'D' - will force an open of the DICT rather than DATA section."]}),"\n",(0,n.jsxs)(s.p,{children:["Returns:",(0,n.jsx)(s.br,{}),"\n1 - Success. The next Item Id has been placed in @ID and optionally the body has been copied into @RECORD",(0,n.jsx)(s.br,{}),"\n0 - End of Items or failure."]}),"\n",(0,n.jsx)(s.h3,{id:"parsedict",children:"parseDict"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod parseDict(dict As %MV.File, record As %String, name As %String) [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Parses the supplied DICT entry record as element name into the public variable %dictionary using the open dict file variable if it needs to reference other elements in the DICT. If the method returns 0, then you can just exit your program and the MV shell will display any ERRMSG that has occurred."}),"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",(0,n.jsxs)(s.table,{children:[(0,n.jsx)(s.thead,{children:(0,n.jsxs)(s.tr,{children:[(0,n.jsx)(s.th,{children:"Returns:"}),(0,n.jsx)(s.th,{children:"nnn"}),(0,n.jsx)(s.th,{children:"- Ordinal entry number in %dictionary"})]})}),(0,n.jsx)(s.tbody,{children:(0,n.jsxs)(s.tr,{children:[(0,n.jsx)(s.td,{}),(0,n.jsx)(s.td,{children:"0"}),(0,n.jsx)(s.td,{children:"- Could not open DICTionary or other error"})]})})]}),"\n",(0,n.jsx)(s.h3,{id:"buildmvclassxref",children:"buildMVClassXref"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod buildMVClassXref(classDef As %ObjectHandle, ByRef ClassXref As %Collection.AbstractArray) [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Build a cross reference of a MV class for maintenence purposes."}),"\n",(0,n.jsx)(s.h3,{id:"createmvproperty",children:"createMVProperty"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod createMVProperty(pname, pord, classDef As %ObjectHandle, ByRef ClassXref As %Collection.AbstractArray) [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Method designed for use in PROTOCLASS to generate a property defined by the MV DICT item that has been parsed and stored in %dictionary(pord)"}),"\n",(0,n.jsx)(s.h3,{id:"deletemvproperty",children:"deleteMVProperty"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod deleteMVProperty(pname, classDef As %ObjectHandle, ByRef ClassXref As %Collection.AbstractArray) [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Method designed for use in PROTOCLASS to delete a property and maintain the cross reference."}),"\n",(0,n.jsx)(s.h3,{id:"filedescclassname",children:"fileDescClassName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod fileDescClassName(fdsc As %MV.File) As %String [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Given an open file descriptor in fdsc, this method will suggest a valid name for a class or other ObjectScript identifier that can be used to name it outside the MV environment."}),"\n",(0,n.jsx)(s.h3,{id:"setportnumber",children:"setPortNumber"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod setPortNumber(portNo As %Integer) As %Status [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Given a port number supplied by the caller, this function will set the current port number for this process. Should be called early on in the start up of the process for predictability, but can be called any time in practice."}),"\n",(0,n.jsx)(s.h3,{id:"filedescdataglobal",children:"fileDescDataGlobal"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod fileDescDataGlobal(fdsc As %MV.File) As %String [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Given an open file descriptor, this method will return the fully qualified name of the global that stores the data."}),"\n",(0,n.jsx)(s.p,{children:'Fully qualified means that it includes the NAMESPACE (account) within it such as ^|"TESTACCOUNT"|JIM.DATA'}),"\n",(0,n.jsx)(s.h3,{id:"validcachename",children:"validCacheName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod validCacheName(input As %String) As %String [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Given an MV identifier name of some sort in input, such as a file name this method will return a name that is valid as a class or property name."}),"\n",(0,n.jsx)(s.h3,{id:"camelcasename",children:"camelCaseName"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod camelCaseName(input As %String) As %String [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Given an MV identifier name of some sort in input, such as a file name this method will return a name that is valid as a class or property name using Camel Case."}),"\n",(0,n.jsx)(s.h3,{id:"decomposestatus",children:"decomposeStatus"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod decomposeStatus(sc As %Integer) [ Final ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"If an error occurred in a call to an object or class, you can call this method and it will PRINT the error messages to the terminal."}),"\n",(0,n.jsx)(s.h3,{id:"newuniqueglobal",children:"newUniqueGlobal"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod newUniqueGlobal(prefix As %String) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Supplies the next available unique global name using the same mechanisms as CREATE-FILE. Calling this will reserve a global name for you that is guranteed to be exclusive for your use. Note that the name returned does not include any namespace information and is unique across namespaces too. It is up to you to decide where (namespace wise) the global will exist."}),"\n",(0,n.jsx)(s.h3,{id:"getprimarymvclass",children:"getPrimaryMVClass"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod getPrimaryMVClass(fdsc As %MV.File, createFlg As %Boolean, NewName As %String = "") As %ObjectHandle [ Final ]\n'})}),"\n",(0,n.jsxs)(s.p,{children:["Given an open file descriptor, this method will return the class associated with that file.",(0,n.jsx)(s.br,{}),"\nIf createFlg is set then the class will be created if it doesn't exist.",(0,n.jsx)(s.br,{}),"\nIf NewName is specified then that name willl be used to create the class."]}),"\n",(0,n.jsx)(s.h3,{id:"inputdataonly",children:"InputDataOnly"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod InputDataOnly(DataOnlyFlag As %Boolean) As %Boolean\n"})}),"\n",(0,n.jsxs)(s.p,{children:["This method sets or clears a flag that controls whether INPUT commands will read only stacked DATA or will also read from the input device. The argument is a boolean value 0 or 1. If DataOnlyFlag is 1, only stacked DATA will be available to INPUT commands. An attempt to read beyond the stacked DATA will result in an ABORT. If DataOnlyFlag is 0, the Data Only flag is cleared and INPUT commands will return to the default state of reading both stacked DATA and directly from the input device.",(0,n.jsx)(s.br,{}),"\nThe return value is the previous state of the flag. If no argument is given, the current state of the flag is returned without changing it."]}),"\n",(0,n.jsx)(s.h3,{id:"generateitypemethods",children:"generateItypeMethods"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod generateItypeMethods(classDef As %ObjectHandle)\n"})}),"\n",(0,n.jsx)(s.p,{children:"This method will search a class for properties that are defined as itypes and add implementations of the calc and calcsql metods for those itypes to the class"}),"\n",(0,n.jsx)(s.h3,{id:"stacksetcos",children:"StackSetCOS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod StackSetCOS(arg As %String = "") As %Boolean\n'})}),"\n",(0,n.jsx)(s.p,{children:"Set the passed string as the COS shell recall stack"}),"\n",(0,n.jsx)(s.h3,{id:"stacksetmv",children:"StackSetMV"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod StackSetMV(arg As %String = "") As %Boolean\n'})}),"\n",(0,n.jsx)(s.p,{children:"Set the passed string as the MV shell recall stack"}),"\n",(0,n.jsx)(s.h3,{id:"stackgetcos",children:"StackGetCOS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod StackGetCOS() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the COS shell recall stack"}),"\n",(0,n.jsx)(s.h3,{id:"stackgetmv",children:"StackGetMV"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod StackGetMV() As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"Get the MV shell recall stack"}),"\n",(0,n.jsx)(s.h3,{id:"iteratorinit",children:"IteratorInit"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IteratorInit()\n"})}),"\n",(0,n.jsx)(s.p,{children:"The Initializer for iterating through values and subvalues in conjunction with A and F correlatives. This clears the moreValues and moreSubValues flags and sets the current value and current subvalue counters to 1."}),"\n",(0,n.jsx)(s.h3,{id:"iteratortest",children:"IteratorTest"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IteratorTest() As %Boolean\n"})}),"\n",(0,n.jsx)(s.p,{children:"The method tests to see if there are more values to process as indicated by the moreValues and moreSubValues flags and sets the current value and current subvalue counters accordingly. These flags and counters are used by the Conversion Processor to handle multi-values in A and F correlatives."}),"\n",(0,n.jsx)(s.h3,{id:"iteratorget",children:"IteratorGet"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IteratorGet(attrNo As %Integer) As %String\n"})}),"\n",(0,n.jsx)(s.p,{children:"The method gets contents of the specified attribute, current value, current subvalue from @Record. Use to Iterate through all the (sub)values in conjunction with A or F correlatives. If the specific attr,val,subval does not exist then the funtion will return an empty string."}),"\n",(0,n.jsx)(s.h3,{id:"convanalyze",children:"ConvAnalyze"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ConvAnalyze(code As %String) As %String\n"})}),"\n",(0,n.jsxs)(s.p,{children:["The method passes a string to the conversion code compiler, checks for errors and returns a string of information. The returned string is a series of comma separated numbers:",(0,n.jsx)(s.br,{}),"\n1. Status code:",(0,n.jsx)(s.br,{}),"\nNegative value is a negated errmsg number.",(0,n.jsx)(s.br,{}),"\nPositive value is data type of result.",(0,n.jsx)(s.br,{}),"\n0 Unknown",(0,n.jsx)(s.br,{}),"\n1 String",(0,n.jsx)(s.br,{}),"\n2 Integer",(0,n.jsx)(s.br,{}),"\n3 Numeric",(0,n.jsx)(s.br,{}),"\n4 Boolean"]}),"\n",(0,n.jsxs)(s.p,{children:["2. Bit values that show the types of computational codes found.",(0,n.jsx)(s.br,{}),"\n1 Contains an A correlative",(0,n.jsx)(s.br,{}),"\n2 Contains an F correlative",(0,n.jsx)(s.br,{}),"\n4 Contains a Concatenate Correlative",(0,n.jsx)(s.br,{}),"\n8 Contains a Substitute Correlative",(0,n.jsx)(s.br,{}),"\n16 Contains a Call or B; Correlative invoked for each value",(0,n.jsx)(s.br,{}),"\n32 Contains a Call or B: Correlative invoked once for an attribute"]}),"\n",(0,n.jsx)(s.p,{children:"3+. If present, shows attributes referenced in the conversion code."})]})}function o(e={}){const{wrapper:s}={...(0,a.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>r,x:()=>i});var n=t(96540);const a={},l=n.createContext(a);function r(e){const s=n.useContext(l);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(a):e.components||a:r(e.components),n.createElement(l.Provider,{value:s},e.children)}}}]);