"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[10558],{42988:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>l,default:()=>d,frontMatter:()=>r,toc:()=>o});var t=n(74848),i=n(28453);const r={pagination_prev:null,pagination_next:null},l="%SYSTEM.Version",o=[{value:"Methods",id:"methods",level:2},{value:"Format",id:"format",level:3},{value:"GetBuildNumber",id:"getbuildnumber",level:3},{value:"GetBuildDate",id:"getbuilddate",level:3},{value:"GetBuildOS",id:"getbuildos",level:3},{value:"GetBuildTime",id:"getbuildtime",level:3},{value:"GetISCComponentVersionList",id:"getisccomponentversionlist",level:3},{value:"GetISCComponents",id:"getisccomponents",level:3},{value:"GetISCComponentVersion",id:"getisccomponentversion",level:3},{value:"GetISCProduct",id:"getiscproduct",level:3},{value:"ListISCComponents",id:"listisccomponents",level:3},{value:"ListISCComponentsVersions",id:"listisccomponentsversions",level:3},{value:"GetPatchId",id:"getpatchid",level:3},{value:"GetMajor",id:"getmajor",level:3},{value:"GetMinor",id:"getminor",level:3},{value:"GetNumber",id:"getnumber",level:3},{value:"GetOS",id:"getos",level:3},{value:"GetPlatform",id:"getplatform",level:3},{value:"GetPoint",id:"getpoint",level:3},{value:"GetProduct",id:"getproduct",level:3},{value:"GetVersion",id:"getversion",level:3},{value:"Is64Bits",id:"is64bits",level:3},{value:"IsBigEndian",id:"isbigendian",level:3},{value:"IsSingleUser",id:"issingleuser",level:3},{value:"IsUnicode",id:"isunicode",level:3},{value:"FeatureBits",id:"featurebits",level:3},{value:"GetCompBuild",id:"getcompbuild",level:3},{value:"GetCompBuildDate",id:"getcompbuilddate",level:3},{value:"GetCompBuildOS",id:"getcompbuildos",level:3},{value:"GetCompBuildTime",id:"getcompbuildtime",level:3},{value:"GetCompPatchId",id:"getcomppatchid",level:3},{value:"GetComponents",id:"getcomponents",level:3},{value:"GetCompilerVersion",id:"getcompilerversion",level:3},{value:"GetCompilerMajorVersion",id:"getcompilermajorversion",level:3},{value:"GetCompilerMinorVersion",id:"getcompilerminorversion",level:3},{value:"GetKernelCompiler",id:"getkernelcompiler",level:3},{value:"GetKernelLinker",id:"getkernellinker",level:3},{value:"GetKernelOrigin",id:"getkernelorigin",level:3},{value:"SystemMode",id:"systemmode",level:3}];function c(e){const s={br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",strong:"strong",ul:"ul",...(0,i.R)(),...e.components};return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"systemversion",children:"%SYSTEM.Version"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SYSTEM.Version Extends Help [ Abstract, System = 3 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"This class provides various product version information."}),"\n",(0,t.jsxs)(s.p,{children:["You can use it via the special ",(0,t.jsx)(s.strong,{children:"$system"})," object: ",(0,t.jsx)(s.code,{children:"Write $system.Version.GetBuildOS()"})]}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"format",children:"Format"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Format(Format As %Numeric = 0, zv As %String = {$zv}) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Formats the version info according to the following format types:"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsx)(s.li,{children:"0 - $ZV"}),"\n",(0,t.jsx)(s.li,{children:"1 - Product"}),"\n",(0,t.jsx)(s.li,{children:"2 - Product (Platform)"}),"\n",(0,t.jsx)(s.li,{children:"3 - Product (Platform) Version"}),"\n",(0,t.jsx)(s.li,{children:"4 - Product (Platform) Version (Build)"}),"\n",(0,t.jsx)(s.li,{children:"5 - Version (Build)"}),"\n",(0,t.jsx)(s.li,{children:'Other - ""'}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"getbuildnumber",children:"GetBuildNumber"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetBuildNumber(zv As %String = {$zv}) As %Integer\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the build number for the product."}),"\n",(0,t.jsx)(s.h3,{id:"getbuilddate",children:"GetBuildDate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetBuildDate(zv As %String = {$zv}) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the date the product was built in $HOROLOG format."}),"\n",(0,t.jsx)(s.h3,{id:"getbuildos",children:"GetBuildOS"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetBuildOS(zv As %String = {$zv}) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the operating system for which the product was built."}),"\n",(0,t.jsx)(s.h3,{id:"getbuildtime",children:"GetBuildTime"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetBuildTime(zv As %String = {$zv}) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the time of day the product was built in $HOROLOG format."}),"\n",(0,t.jsx)(s.h3,{id:"getisccomponentversionlist",children:"GetISCComponentVersionList"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetISCComponentVersionList(Product As %Integer = 0) As %List\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Return a %List of Component:Version for all components of ISC Product.",(0,t.jsx)(s.br,{}),"\nAt this time, InterSystems IRIS does not have components, so this method does not return anything for this product."]}),"\n",(0,t.jsx)(s.h3,{id:"getisccomponents",children:"GetISCComponents"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetISCComponents(Product As %Integer = {..GetISCProduct()}) As %List\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Returns the installed components for the ISC Product as a %List.",(0,t.jsx)(s.br,{}),"\nProduct: HealthShare = 3, InterSystems IRIS = 4",(0,t.jsx)(s.br,{}),"\nAt this time, InterSystems IRIS does not have components, so this method does not return anything for this product."]}),"\n",(0,t.jsx)(s.h3,{id:"getisccomponentversion",children:"GetISCComponentVersion"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetISCComponentVersion(Product As %Integer = {..GetISCProduct()}, Component As %String = "") As %String\n'})}),"\n",(0,t.jsxs)(s.p,{children:["Returns the ISC Product component's installed version string.",(0,t.jsx)(s.br,{}),"\nProduct: HealthShare = 3, InterSystems IRIS = 4",(0,t.jsx)(s.br,{}),"\nAt this time, InterSystems IRIS does not have components, so this method does not return anything for this product."]}),"\n",(0,t.jsx)(s.h3,{id:"getiscproduct",children:"GetISCProduct"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetISCProduct() As %Integer\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the installed ISC product code. HealthShare = 3, InterSystems IRIS = 4"}),"\n",(0,t.jsx)(s.h3,{id:"listisccomponents",children:"ListISCComponents"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListISCComponents(Product As %Integer = {..GetISCProduct()})\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Displays all Components for the ISC Product to the current I/O Device.",(0,t.jsx)(s.br,{}),"\nProduct: HealthShare = 3, InterSystems IRIS = 4",(0,t.jsx)(s.br,{}),"\nAt this time, InterSystems IRIS does not have components, so this method does not return anything for this product."]}),"\n",(0,t.jsx)(s.h3,{id:"listisccomponentsversions",children:"ListISCComponentsVersions"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListISCComponentsVersions(Product As %Integer = {..GetISCProduct()})\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Displays all Components:Version for the ISC Product to the current I/O Device.",(0,t.jsx)(s.br,{}),"\nProduct: HealthShare = 3, InterSystems IRIS = 4",(0,t.jsx)(s.br,{}),"\nAt this time, InterSystems IRIS does not have components, so this method does not return anything for this product."]}),"\n",(0,t.jsx)(s.h3,{id:"getpatchid",children:"GetPatchId"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetPatchId(zv As %String = {$zv}) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the patch ID[s] included in this version of the product;"}),"\n",(0,t.jsx)(s.h3,{id:"getmajor",children:"GetMajor"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetMajor(zv As %String = {$zv}) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the major version number for the product."}),"\n",(0,t.jsx)(s.h3,{id:"getminor",children:"GetMinor"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetMinor(zv As %String = {$zv}) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the minor version number for the product."}),"\n",(0,t.jsx)(s.h3,{id:"getnumber",children:"GetNumber"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetNumber(zv As %String = {$zv}) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the major.minor[.point] version number for the product."}),"\n",(0,t.jsx)(s.h3,{id:"getos",children:"GetOS"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetOS(zv As %String = {$zv}) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the OS for which the product was built."}),"\n",(0,t.jsx)(s.h3,{id:"getplatform",children:"GetPlatform"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetPlatform(zv As %String = {$zv}) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the platform for which the product was built."}),"\n",(0,t.jsx)(s.h3,{id:"getpoint",children:"GetPoint"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetPoint(zv As %String = {$zv}) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the point version number for the product."}),"\n",(0,t.jsx)(s.h3,{id:"getproduct",children:"GetProduct"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetProduct(zv As %String = {$zv}) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the product name."}),"\n",(0,t.jsx)(s.h3,{id:"getversion",children:"GetVersion"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetVersion(zv As %String = {$zv}) As %String [ CodeMode = expression ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns a string containing complete version information."}),"\n",(0,t.jsx)(s.h3,{id:"is64bits",children:"Is64Bits"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Is64Bits() As %Boolean\n"})}),"\n",(0,t.jsx)(s.p,{children:"Is this a 64-bit platform?"}),"\n",(0,t.jsx)(s.p,{children:"Returns a boolean value which tells if the kernel is 64-bit platform."}),"\n",(0,t.jsx)(s.h3,{id:"isbigendian",children:"IsBigEndian"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsBigEndian() As %Boolean\n"})}),"\n",(0,t.jsx)(s.p,{children:"Is this system built for a big endian platform?"}),"\n",(0,t.jsx)(s.p,{children:"Returns a boolean value which tells if the platform uses big endian bit ordering."}),"\n",(0,t.jsx)(s.h3,{id:"issingleuser",children:"IsSingleUser"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsSingleUser() As %Boolean\n"})}),"\n",(0,t.jsx)(s.p,{children:"Is this a single-user server kit?"}),"\n",(0,t.jsx)(s.p,{children:"Returns a boolean value which tells if the product server is running a single-user evaluation (_SU) kit."}),"\n",(0,t.jsx)(s.h3,{id:"isunicode",children:"IsUnicode"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsUnicode() As %Boolean\n"})}),"\n",(0,t.jsx)(s.p,{children:"Is this a UNICODE system?"}),"\n",(0,t.jsx)(s.p,{children:"Returns a boolean value which tells if the product server is a UNICODE system."}),"\n",(0,t.jsx)(s.h3,{id:"featurebits",children:"FeatureBits"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod FeatureBits(bit As %Integer = "") As %Binary\n'})}),"\n",(0,t.jsx)(s.p,{children:"Return all the feature codes stored in $zversion(0)"}),"\n",(0,t.jsx)(s.p,{children:"You can then test this for specific features using $zbitget(return,bit)"}),"\n",(0,t.jsx)(s.p,{children:"If you pass in a value for bit then this will test for this specific bit and return 1 if it is set otherwise 0."}),"\n",(0,t.jsx)(s.h3,{id:"getcompbuild",children:"GetCompBuild"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetCompBuild(component As %String = "SYS") As %Integer [ Deprecated ]\n'})}),"\n",(0,t.jsx)(s.p,{children:"Returns the build number for the specified component. (Deprecated)"}),"\n",(0,t.jsx)(s.h3,{id:"getcompbuilddate",children:"GetCompBuildDate"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetCompBuildDate(component As %String = "SYS") As %String [ Deprecated ]\n'})}),"\n",(0,t.jsx)(s.p,{children:"Returns the build date for the specified component. (Deprecated)"}),"\n",(0,t.jsx)(s.h3,{id:"getcompbuildos",children:"GetCompBuildOS"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetCompBuildOS(component As %String = "SYS") As %String [ Deprecated ]\n'})}),"\n",(0,t.jsx)(s.p,{children:"Returns the operating system a product component was built for. (Deprecated)"}),"\n",(0,t.jsx)(s.h3,{id:"getcompbuildtime",children:"GetCompBuildTime"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetCompBuildTime(component As %String = "SYS") As %String [ Deprecated ]\n'})}),"\n",(0,t.jsx)(s.p,{children:"Returns the Time of build for a product component. (Deprecated)"}),"\n",(0,t.jsx)(s.h3,{id:"getcomppatchid",children:"GetCompPatchId"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetCompPatchId(component As %String) As %String [ Deprecated ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the patch ID[s] included in a component of this version of the product (Deprecated)"}),"\n",(0,t.jsx)(s.h3,{id:"getcomponents",children:"GetComponents"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetComponents() As %List [ Deprecated ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns a list of components used by the %Version class. (Deprecated)"}),"\n",(0,t.jsx)(s.h3,{id:"getcompilerversion",children:"GetCompilerVersion"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetCompilerVersion() As %Numeric\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the major.minor version number of the language compiler."}),"\n",(0,t.jsx)(s.p,{children:"The system can only execute object code compiled with the same major version number. It can execute object code compiled with any minor version number that is less than or equal to the current minor version."}),"\n",(0,t.jsx)(s.h3,{id:"getcompilermajorversion",children:"GetCompilerMajorVersion"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetCompilerMajorVersion() As %Numeric\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the major version number of the language compiler."}),"\n",(0,t.jsx)(s.h3,{id:"getcompilerminorversion",children:"GetCompilerMinorVersion"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetCompilerMinorVersion() As %Numeric\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the minor version number of the language compiler."}),"\n",(0,t.jsx)(s.h3,{id:"getkernelcompiler",children:"GetKernelCompiler"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetKernelCompiler() As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the version of the C compiler used to build the kernel"}),"\n",(0,t.jsx)(s.h3,{id:"getkernellinker",children:"GetKernelLinker"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetKernelLinker() As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the version of the Linker used to link the kernel"}),"\n",(0,t.jsx)(s.h3,{id:"getkernelorigin",children:"GetKernelOrigin"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetKernelOrigin() As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:"Returns the string identifying who linked the kernel"}),"\n",(0,t.jsx)(s.p,{children:"InterSystems or User"}),"\n",(0,t.jsx)(s.h3,{id:"systemmode",children:"SystemMode"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SystemMode(mode As %String) As %String\n"})}),"\n",(0,t.jsx)(s.p,{children:'The SystemMode string is usually set by the System Management Portal but it can also be set by calling the $SYSTEM.Version.SystemMode(mode) method. The currently supported SystemMode strings are: "LIVE", "TEST", "DEVELOPMENT" and "FAILOVER". The SystemMode of the current instance is displayed in the Title of the System Management Portal web page. Attempting to set a nonsupported SystemMode string will clear out the currently set SystemMode.'}),"\n",(0,t.jsx)(s.p,{children:(0,t.jsx)(s.strong,{children:"Parameters"})}),"\n",(0,t.jsxs)(s.p,{children:[(0,t.jsx)(s.strong,{children:"mode"})," -- The new SystemMode string for the current instance"]}),"\n",(0,t.jsx)(s.p,{children:"Invoking $SYSTEM.Version.SystemMode() without specifiying the mode parameter returns the current SystemMode string without changing it."}),"\n",(0,t.jsxs)(s.p,{children:[(0,t.jsx)(s.strong,{children:"Return value"})," -- the SystemMode value prior to calling the $SYSTEM.Version.SystemMode method. Returns the empty string when a SystemMode has not been previously set."]})]})}function d(e={}){const{wrapper:s}={...(0,i.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(c,{...e})}):c(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>l,x:()=>o});var t=n(96540);const i={},r=t.createContext(i);function l(e){const s=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function o(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:l(e.components),t.createElement(r.Provider,{value:s},e.children)}}}]);