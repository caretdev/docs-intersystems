"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[77513],{32362:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>a,default:()=>c,frontMatter:()=>r,toc:()=>i});var t=n(74848),o=n(28453);const r={pagination_prev:null,pagination_next:null},a="%Net.URLParser",i=[{value:"Methods",id:"methods",level:2},{value:"Parse",id:"parse",level:3},{value:"Decompose",id:"decompose",level:3},{value:"Compose",id:"compose",level:3},{value:"ParseHost",id:"parsehost",level:3}];function h(e){const s={a:"a",br:"br",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",host:"host",li:"li",p:"p",password:"password",path:"path",port:"port",pre:"pre",scheme:"scheme","scheme-specific-part":"scheme-specific-part",strong:"strong",ul:"ul","url-path":"url-path",user:"user",...(0,o.R)(),...e.components},n=s["scheme-specific-part"],r=s["url-path"];return(0,t.jsxs)(t.Fragment,{children:[(0,t.jsx)(s.header,{children:(0,t.jsx)(s.h1,{id:"neturlparser",children:"%Net.URLParser"})}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Net.URLParser Extends %Library.RegisteredObject [ Not ProcedureBlock, System = 3 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Parses a url into component parts"}),"\n",(0,t.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,t.jsx)(s.h3,{id:"parse",children:"Parse"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Parse(Url As %Library.String, ByRef Components As %Library.String) [ Deprecated, Final ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"WARNING: This method has been deprecated in favor of Decompose."}),"\n",(0,t.jsx)(s.p,{children:"Parses an url into its constituent components."}),"\n",(0,t.jsx)(s.p,{children:"The output parameter 'Components' will contain an array subscripted by the name of the component part with the parsed value as the data. E.G. for a URL such as"}),"\n",(0,t.jsx)(s.p,{children:(0,t.jsx)(s.a,{href:"http://www.intersystems.com",children:"http://www.intersystems.com"})}),"\n",(0,t.jsxs)(s.p,{children:['the Components array will contain the scheme in this form:- Components("scheme")="http"',(0,t.jsx)(s.br,{}),"\nURLs are described briefly below, please see RFC1738 for a full description"]}),"\n",(0,t.jsxs)(s.p,{children:["A URL contains the name of the scheme being used (",(0,t.jsxs)(s.scheme,{children:[") followed by a colon and then a string (the ",(0,t.jsx)(n,{children:") whose interpretation depends on the scheme."})]})]}),"\n",(0,t.jsx)(s.p,{children:'Scheme names consist of a sequence of characters. The lower case letters "a"--"z", digits, and the characters plus ("+"), period ("."), and hyphen ("-") are allowed. For resiliency, programs interpreting URLs should treat upper case letters as equivalent to lower case in scheme names (e.g., allow "HTTP" as well as "http").'}),"\n",(0,t.jsxs)(s.p,{children:["While the syntax for the rest of the URL may vary depending on the particular scheme selected, URL schemes that involve the direct use of an IP-based protocol to a specified host on the Internet use a common syntax for the scheme-specific data:",(0,t.jsx)(s.br,{}),"\n//",(0,t.jsxs)(s.user,{children:[":",(0,t.jsxs)(s.password,{children:["@",(0,t.jsxs)(s.host,{children:[":",(0,t.jsxs)(s.port,{children:["/",(0,t.jsx)(r,{})]})]})]})]})]}),"\n",(0,t.jsxs)(s.p,{children:['Some or all of the parts "',(0,t.jsxs)(s.user,{children:[":",(0,t.jsxs)(s.password,{children:['@", ":',(0,t.jsxs)(s.password,{children:['", ":',(0,t.jsxs)(s.port,{children:['", and "/',(0,t.jsx)(r,{children:'" may be excluded.'})]})]})]})]})]}),"\n",(0,t.jsx)(s.p,{children:'The scheme specific data start with a double slash "//" to indicate that it complies with the common Internet scheme syntax. The different components obey the following rules:'}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsxs)(s.li,{children:["user",(0,t.jsx)(s.br,{}),"\nAn optional user name. Some schemes (e.g., ftp) allow the specification of a user name.\npassword",(0,t.jsx)(s.br,{}),'\nAn optional password. If present, it follows the user name separated from it by a colon. The user name (and password), if present, are followed by a commercial at-sign "@". Within the user and password field, any ":", "@", or "/" must be encoded.']}),"\n"]}),"\n",(0,t.jsxs)(s.p,{children:["Note that an empty user name or password is different than no user name or password; there is no way to specify a password without specifying a user name. E.g., ",(0,t.jsx)(s.a,{href:"URL:ftp://@host.com/",children:"URL:ftp://@host.com/"})," has an empty user name and no password, ",(0,t.jsx)(s.a,{href:"URL:ftp://host.com/",children:"URL:ftp://host.com/"})," has no user name, while ",(0,t.jsx)(s.a,{href:"URL:ftp://foo:@host.com/",children:"URL:ftp://foo:@host.com/"}),' has a user name of "foo" and an empty password.']}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsxs)(s.li,{children:["\n",(0,t.jsxs)(s.p,{children:["host",(0,t.jsx)(s.br,{}),'\nThe fully qualified domain name of a network host, or its IP address as a set of four decimal digit groups separated by ".". Fully qualified domain names take the form as described in Section 3.5 of RFC 1034 [13] and Section 2.1 of RFC 1123 [5]: a sequence of domain labels separated by ".", each domain label starting and ending with an alphanumerical character and possibly also containing "-" characters. The rightmost domain label will never start with a digit, though, which syntactically distinguishes all domain names from the IP addresses.']}),"\n"]}),"\n",(0,t.jsxs)(s.li,{children:["\n",(0,t.jsxs)(s.p,{children:["port",(0,t.jsx)(s.br,{}),"\nThe port number to connect to. Most schemes designate protocols that have a default port number. Another port number may optionally be supplied, in decimal, separated from the host by a colon. If the port is omitted, the colon is as well."]}),"\n"]}),"\n",(0,t.jsxs)(s.li,{children:["\n",(0,t.jsxs)(s.p,{children:["path",(0,t.jsx)(s.br,{}),'\nThe rest of the locator consists of data specific to the scheme, and is known as the "path". It supplies the details of how the specified resource can be accessed. Note that the "/" between the host (or port) and the path is NOT part of the path. The path syntax depends on the scheme being used, as does the manner in which it is interpreted.']}),"\n"]}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"decompose",children:"Decompose"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Decompose(Url As %Library.String, ByRef Components As %Library.String) [ Final, ProcedureBlock = 1 ]\n"})}),"\n",(0,t.jsx)(s.p,{children:"Parses an URL into its constituent components."}),"\n",(0,t.jsxs)(s.p,{children:["The input parameters 'Url' is the string to parse. Some or all of the parts \"",(0,t.jsxs)(s.user,{children:[":",(0,t.jsxs)(s.password,{children:['@", ":',(0,t.jsxs)(s.password,{children:['", ":',(0,t.jsxs)(s.port,{children:['", and "/',(0,t.jsx)(s.path,{children:'" may be excluded.'})]})]})]})]})]}),"\n",(0,t.jsxs)(s.p,{children:["The output parameter 'Components' will contain an array subscripted by the name of the component part with the parsed value as the data.",(0,t.jsx)(s.br,{}),"\n",(0,t.jsx)(s.code,{children:'do ##class(%Net.URLParser).Decompose("http://user:pass@www.intersystems.com:80/path/",.Components)'}),' Components("host")="',(0,t.jsx)(s.a,{href:"http://www.intersystems.com",children:"www.intersystems.com"}),'"',(0,t.jsx)(s.br,{}),'\nComponents("netloc")="user:pass@',(0,t.jsx)(s.a,{href:"http://www.intersystems.com:80",children:"www.intersystems.com:80"}),'"',(0,t.jsx)(s.br,{}),'\nComponents("password")="pass"',(0,t.jsx)(s.br,{}),'\nComponents("path")="/path/"',(0,t.jsx)(s.br,{}),'\nComponents("port")=80',(0,t.jsx)(s.br,{}),'\nComponents("scheme")="http"',(0,t.jsx)(s.br,{}),'\nComponents("username")="user"']}),"\n",(0,t.jsx)(s.p,{children:"URLs are described briefly below, please see RFC1738 for a full description"}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsxs)(s.li,{children:["A URL contains the name of the scheme being used (",(0,t.jsxs)(s.scheme,{children:[") followed by a colon and then a string (the ",(0,t.jsx)(n,{children:") whose interpretation depends on the scheme."})]})]}),"\n",(0,t.jsx)(s.li,{children:'Scheme names consist of a sequence of characters. The lower case letters "a"--"z", digits, and the characters plus ("+"), period ("."), and hyphen ("-") are allowed. For resiliency, programs interpreting URLs should treat upper case letters as equivalent to lower case in scheme names (e.g., allow "HTTP" as well as "http").'}),"\n",(0,t.jsxs)(s.li,{children:["While the syntax for the rest of the URL may vary depending on the particular scheme selected, URL schemes that involve the direct use of an IP-based protocol to a specified host on the Internet use a common syntax for the scheme-specific data:",(0,t.jsx)(s.br,{}),"\n//",(0,t.jsxs)(s.user,{children:[":",(0,t.jsxs)(s.password,{children:["@",(0,t.jsxs)(s.host,{children:[":",(0,t.jsxs)(s.port,{children:["/",(0,t.jsx)(s.path,{})]})]})]})]})]}),"\n"]}),"\n",(0,t.jsx)(s.p,{children:'The scheme specific data start with a double slash "//" to indicate that it complies with the common Internet scheme syntax. The different components obey the following rules:'}),"\n",(0,t.jsxs)(s.ul,{children:["\n",(0,t.jsxs)(s.li,{children:[(0,t.jsx)(s.strong,{children:"user"})," - An optional user name. Some schemes (e.g., ftp) allow the specification of a user name."]}),"\n",(0,t.jsxs)(s.li,{children:[(0,t.jsx)(s.strong,{children:"password"}),' - An optional password. If present, it follows the user name separated from it by a colon. The user name (and password), if present, are followed by a commercial at-sign "@". Within the user and password field, any ":", "@", or "/" must be encoded.',(0,t.jsx)(s.br,{}),"\nNote that an empty user name or password is different than no user name or password; there is no way to specify a password without specifying a user name. E.g., ",(0,t.jsx)(s.a,{href:"URL:ftp://@host.com/",children:"URL:ftp://@host.com/"})," has an empty user name and no password, ",(0,t.jsx)(s.a,{href:"URL:ftp://host.com/",children:"URL:ftp://host.com/"})," has no user name, while ",(0,t.jsx)(s.a,{href:"URL:ftp://foo:@host.com/",children:"URL:ftp://foo:@host.com/"}),' has a user name of "foo" and an empty password.']}),"\n",(0,t.jsxs)(s.li,{children:[(0,t.jsx)(s.strong,{children:"host"}),' - The fully qualified domain name of a network host, or its IP address as a set of four decimal digit groups separated by ".". Fully qualified domain names take the form as described in Section 3.5 of RFC 1034 [13] and Section 2.1 of RFC 1123 [5]: a sequence of domain labels separated by ".", each domain label starting and ending with an alphanumerical character and possibly also containing "-" characters. The rightmost domain label will never start with a digit, though, which syntactically distinguishes all domain names from the IP addresses.']}),"\n",(0,t.jsxs)(s.li,{children:[(0,t.jsx)(s.strong,{children:"port"})," - The port number to connect to. Most schemes designate protocols that have a default port number. Another port number may optionally be supplied, in decimal, separated from the host by a colon. If the port is omitted, the colon is as well."]}),"\n",(0,t.jsxs)(s.li,{children:[(0,t.jsx)(s.strong,{children:"path"}),' - The rest of the locator consists of data specific to the scheme, and is known as the "path". It supplies the details of how the specified resource can be accessed.',(0,t.jsx)(s.br,{}),"\nThe path syntax depends on the scheme being used, as does the manner in which it is interpreted."]}),"\n",(0,t.jsxs)(s.li,{children:[(0,t.jsx)(s.strong,{children:"netloc"})," - The portion of the URL containing the username, password, host, and port. This is provided for when user needs the URL without any parsing. This is normally the same as ",(0,t.jsxs)(s.user,{children:[":",(0,t.jsxs)(s.password,{children:["@",(0,t.jsxs)(s.host,{children:[":",(0,t.jsx)(s.port,{children:", but not always."})]})]})]})]}),"\n"]}),"\n",(0,t.jsx)(s.h3,{id:"compose",children:"Compose"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Compose(ByRef Components As %Library.String) As %Library.String [ Final, ProcedureBlock = 1 ]\n"})}),"\n",(0,t.jsxs)(s.p,{children:["Composes a URL from its Components array as defined by the Decompose method.",(0,t.jsx)(s.br,{}),'\nThis method will use Components("netloc"), if defined. To compose a URL with Components("username"), Components("password"), Components("host"), or Components("port"),',(0,t.jsx)(s.br,{}),'\nset Components("netloc") to ""']}),"\n",(0,t.jsx)(s.h3,{id:"parsehost",children:"ParseHost"}),"\n",(0,t.jsx)(s.pre,{children:(0,t.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ParseHost(pHost As %String, ByRef Components As %Library.String) [ Private ]\n"})})]})}function c(e={}){const{wrapper:s}={...(0,o.R)(),...e.components};return s?(0,t.jsx)(s,{...e,children:(0,t.jsx)(h,{...e})}):h(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>a,x:()=>i});var t=n(96540);const o={},r=t.createContext(o);function a(e){const s=t.useContext(r);return t.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function i(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(o):e.components||o:a(e.components),t.createElement(r.Provider,{value:s},e.children)}}}]);