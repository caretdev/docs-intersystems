"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[9007],{78328:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>d,default:()=>l,frontMatter:()=>i,toc:()=>a});var r=n(74848),t=n(28453);const i={pagination_prev:null,pagination_next:null},d="%SYSTEM.INetInfo",a=[{value:"Methods",id:"methods",level:2},{value:"AddrToHostName",id:"addrtohostname",level:3},{value:"AddrType",id:"addrtype",level:3},{value:"BinaryAddrToText",id:"binaryaddrtotext",level:3},{value:"DisableIPV6",id:"disableipv6",level:3},{value:"EnableIPV6",id:"enableipv6",level:3},{value:"GetServiceByName",id:"getservicebyname",level:3},{value:"GetServiceByPort",id:"getservicebyport",level:3},{value:"HostNameToAddr",id:"hostnametoaddr",level:3},{value:"HostNameToAddrMulti",id:"hostnametoaddrmulti",level:3},{value:"HostToNetLong",id:"hosttonetlong",level:3},{value:"HostToNetShort",id:"hosttonetshort",level:3},{value:"IsIPV6Enabled",id:"isipv6enabled",level:3},{value:"LocalHostName",id:"localhostname",level:3},{value:"NetToHostLong",id:"nettohostlong",level:3},{value:"NetToHostShort",id:"nettohostshort",level:3},{value:"OSsupportsIPV6",id:"ossupportsipv6",level:3},{value:"TextAddrToBinary",id:"textaddrtobinary",level:3},{value:"TCPName",id:"tcpname",level:3},{value:"TCPStats",id:"tcpstats",level:3},{value:"EthernetAddress",id:"ethernetaddress",level:3},{value:"Connected",id:"connected",level:3},{value:"CheckInterfaceExist",id:"checkinterfaceexist",level:3},{value:"CheckAddressExist",id:"checkaddressexist",level:3},{value:"CheckSubnetMatch",id:"checksubnetmatch",level:3},{value:"GetInterfacesInfo",id:"getinterfacesinfo",level:3},{value:"GetListOfConfiguredInterfaces",id:"getlistofconfiguredinterfaces",level:3},{value:"CheckArpingInstalled",id:"checkarpinginstalled",level:3},{value:"SetListenQSize",id:"setlistenqsize",level:3}];function o(e){const s={br:"br",code:"code",funct:"funct",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",strong:"strong",ul:"ul",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"systeminetinfo",children:"%SYSTEM.INetInfo"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SYSTEM.INetInfo Extends %SYSTEM.Help [ System = 4 ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["The %SYSTEM.INetInfo class provides an interface for Internet address manipulation.",(0,r.jsx)(s.br,{}),"\nThese interfaces support both IPV6 and IPV4 internet addresses."]}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"addrtohostname",children:"AddrToHostName"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AddrToHostName(Addr As %String) As %String\n"})}),"\n",(0,r.jsx)(s.p,{children:"Find a host name for an Internet address."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Addr"})," - An Internet address in binary form. The length is 4 for IPV4, 16 for IPV6.",(0,r.jsx)(s.br,{}),"\nThe address should be in Network order."]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nThis method returns a host name string, it returns a null string if no host name is associated with the Internet address."]}),"\n",(0,r.jsx)(s.h3,{id:"addrtype",children:"AddrType"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod AddrType(Addr As %String) As %Integer\n"})}),"\n",(0,r.jsx)(s.p,{children:"Find the type of an address text."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Addr"})," - A text string could be a hostname, an IPV4 dotted address or an IPV6 colon-hex text address."]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nThis method returns 0 for hostname, 1 for IPV4 address type or 2 for IPV6 address type."]}),"\n",(0,r.jsx)(s.h3,{id:"binaryaddrtotext",children:"BinaryAddrToText"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod BinaryAddrToText(Addr As %String) As %String\n"})}),"\n",(0,r.jsx)(s.p,{children:"Convert a binary Internet address to a readable text string."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Addr"})," - An Internet address in binary form. The length is 4 for IPV4, 16 for IPV6.",(0,r.jsx)(s.br,{}),"\nThe address should be in Network order."]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nThis method returns a 'dotted' decimal string if the input address is IPV4 address (worked as inet_ntoa()).",(0,r.jsx)(s.br,{}),"\nIt returns colon-hex address string if the input address is IPV6 address.",(0,r.jsx)(s.br,{}),"\nIf the address could not be translated, a null string is returned."]}),"\n",(0,r.jsx)(s.h3,{id:"disableipv6",children:"DisableIPV6"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod DisableIPV6(System As %Integer = 0) As %Integer\n"})}),"\n",(0,r.jsx)(s.p,{children:"Disable IPV6 process or system wide."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"System"})," - Disable IPV6 for process or system wide, 1 for system wide, 0 for process wide (default)."]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nReturn whether the IPV6 was enabled or not, 1 - was enabled, 0 - was disabled."]}),"\n",(0,r.jsx)(s.h3,{id:"enableipv6",children:"EnableIPV6"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EnableIPV6(System As %Integer = 0) As %Integer\n"})}),"\n",(0,r.jsx)(s.p,{children:"Enable IPV6 process or system wide."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"System"})," - Enable IPV6 for process or system wide, 1 for system wide, 0 for process wide (default)."]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nReturn whether the IPV6 was enabled or not, 1 - was enabled, 0 - was disabled."]}),"\n",(0,r.jsx)(s.h3,{id:"getservicebyname",children:"GetServiceByName"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetServiceByName(Name As %String, Proto As %String = "", Family As %Integer = 0) As %List\n'})}),"\n",(0,r.jsx)(s.p,{children:"Get port number, protocol name and IP Family from a service name."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Name"})," - The service name string to be translated.",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Proto"}),' - The protocol of service to be returned. If this parameter is omitted the default value is "". The value could be:']}),"\n",(0,r.jsxs)(s.ul,{children:["\n",(0,r.jsx)(s.li,{children:'"": return services for both TCP and UDP protocols.'}),"\n",(0,r.jsx)(s.li,{children:'"tcp": return service for TCP protocol.'}),"\n",(0,r.jsxs)(s.li,{children:['"udp": return service for UDP protocol.\n',(0,r.jsx)(s.strong,{children:"Family"})," - The family of the service to be returned. If this parameter is omitted the default value is 0. The value could be:"]}),"\n",(0,r.jsx)(s.li,{children:"0: depends on value of $SYSTEM.INetInfo.IsIPV6Enabled(), if IPV6 is NOT enabled IPV4 service is returned, otherwise it returns services for both IPV4 and IPV6."}),"\n",(0,r.jsx)(s.li,{children:"1: Only return IPV4 service, if no IPV4 service then return null string as failure."}),"\n",(0,r.jsxs)(s.li,{children:["2: Only return IPV6 service, if no IPV6 service then return null string as failure.\n",(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),'\nReturns a List, its element is port number, protocol name and family type separated by "," (e.g. 23,tcp,IPV4).',(0,r.jsx)(s.br,{}),"\nThe port number returned is in Host order.",(0,r.jsx)(s.br,{}),"\nReturns null string if the service name could not be resolved."]}),"\n"]}),"\n",(0,r.jsx)(s.h3,{id:"getservicebyport",children:"GetServiceByPort"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod GetServiceByPort(Port As %Integer, Family As %Integer = 0) As %String\n"})}),"\n",(0,r.jsx)(s.p,{children:"Get a service name from a port number."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Port"})," - The port number to be translated. This port number is in Host order."]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Family"})," - The family of the service to be returned. If this parameter is omitted the default value is 0. The value could be:"]}),"\n",(0,r.jsxs)(s.ul,{children:["\n",(0,r.jsx)(s.li,{children:"0: depends on value of $SYSTEM.INetInfo.IsIPV6Enabled(), if IPV6 is NOT enabled IPV4 service is returned, otherwise it returns services for IPV6."}),"\n",(0,r.jsx)(s.li,{children:"1: Only return IPV4 service, if no IPV4 service then return null string as failure."}),"\n",(0,r.jsxs)(s.li,{children:["2: Only return IPV6 service, if no IPV6 service then return null string as failure.\n",(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nReturns a service name string.",(0,r.jsx)(s.br,{}),"\nReturns null string if the service name could not be found."]}),"\n"]}),"\n",(0,r.jsx)(s.h3,{id:"hostnametoaddr",children:"HostNameToAddr"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HostNameToAddr(HostName As %String, Family As %Integer = 0, Format As %Integer = 0) As %String\n"})}),"\n",(0,r.jsx)(s.p,{children:"Get one IP address from a host name."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"HostName"})," - The host name string to be translated.",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Family"})," - The family of the IP address to be returned. If this argument is omitted the default value is 0. The value could be:"]}),"\n",(0,r.jsxs)(s.ul,{children:["\n",(0,r.jsx)(s.li,{children:"0: depends on value of $SYSTEM.INetInfo.IsIPV6Enabled(), if IPV6 is NOT enabled IPV4 address is returned, otherwise it returns whatever the system supports."}),"\n",(0,r.jsx)(s.li,{children:"1: Always return IPV4 address, if no IPV4 address then return null string as failure."}),"\n",(0,r.jsxs)(s.li,{children:["2: Always return IPV6 address, if no IPV6 address then return null string as failure.\n",(0,r.jsx)(s.strong,{children:"Format"})," - The format of address to be returned. If this argument is omitted the default value is 0. The value could be:"]}),"\n",(0,r.jsx)(s.li,{children:"0: in text format, 'dotted' decimal string for IPV4, colon-hex address string for IPV6."}),"\n",(0,r.jsxs)(s.li,{children:["1: in binary format, 4 character length for IPV4, 16 characters for IPV6.\n",(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nReturns the primary IP address of the specified host name. It could be in binary or text format depends on the ",(0,r.jsx)(s.strong,{children:"Format"})," parameter. For binary format the IP address is in Network order.",(0,r.jsx)(s.br,{}),"\nIf the host name could not be resolved a null string is returned."]}),"\n"]}),"\n",(0,r.jsx)(s.h3,{id:"hostnametoaddrmulti",children:"HostNameToAddrMulti"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HostNameToAddrMulti(HostName As %String, Family As %Integer = 0, Format As %Integer = 0) As %List\n"})}),"\n",(0,r.jsx)(s.p,{children:"Get all IP addresses from a host name."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"HostName"})," - The host name string to be translated.",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Family"})," - The family of the IP address to be returned. If this argument is omitted the default value is 0. The value could be:"]}),"\n",(0,r.jsxs)(s.ul,{children:["\n",(0,r.jsx)(s.li,{children:"0: depends on value of $SYSTEM.INetInfo.IsIPV6Enabled(), if IPV6 is NOT enabled IPV4 address is returned, otherwise it returns whatever the system supports."}),"\n",(0,r.jsx)(s.li,{children:"1: Always return IPV4 address, if no IPV4 address then return null string as failure."}),"\n",(0,r.jsxs)(s.li,{children:["2: Always return IPV6 address, if no IPV6 address then return null string as failure.\n",(0,r.jsx)(s.strong,{children:"Format"})," - The format of address to be returned. If this argument is omitted the default value is 0. The value could be:"]}),"\n",(0,r.jsx)(s.li,{children:"0: in text format, 'dotted' decimal string for IPV4, colon-hex address string for IPV6."}),"\n",(0,r.jsxs)(s.li,{children:["1: in binary format, 4 character length for IPV4, 16 characters for IPV6.\n",(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nReturns all the IP addresses of the specified host name in a List. Each IP address in the List could be in binary or text format depends on the ",(0,r.jsx)(s.strong,{children:"Format"})," parameter. For binary format the IP address is in Network order.",(0,r.jsx)(s.br,{}),"\nIf the host name could not be resolved a null string is returned."]}),"\n"]}),"\n",(0,r.jsx)(s.h3,{id:"hosttonetlong",children:"HostToNetLong"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HostToNetLong(Addr As %Integer) As %Integer\n"})}),"\n",(0,r.jsx)(s.p,{children:"Convert a 4-byte unsigned integer from Host order to Network order (htonl()). This is used to convert the binary IPV4 address."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Port"})," - A 4-byte unsigned integer as a binary IPV4 address in Host order."]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nReturn a A 4-byte unsigned integer as a binary IPV4 address in Network order."]}),"\n",(0,r.jsx)(s.h3,{id:"hosttonetshort",children:"HostToNetShort"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod HostToNetShort(Port As %Integer) As %Integer\n"})}),"\n",(0,r.jsx)(s.p,{children:"Convert a 2-byte unsigned integer from Host order to Network order (htons()). This is used to convert the Port number."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Port"})," - A 2-byte unsigned integer as a port number in Host order."]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nReturn a 2-byte unsigned integer as a port number in Network order."]}),"\n",(0,r.jsx)(s.h3,{id:"isipv6enabled",children:"IsIPV6Enabled"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod IsIPV6Enabled(System As %Integer = 0) As %String [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Check if IPV6 is enabled."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"System"})," - Check for process or system wide, 1 for system wide, 0 for process wide (default).",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nReturn whether the IPV6 is enabled or not, 1 - is enabled, 0 - is disabled."]}),"\n",(0,r.jsx)(s.h3,{id:"localhostname",children:"LocalHostName"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod LocalHostName() As %String [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Return the local host name (by using the system call gethostname(); works on all supported operating systems)."}),"\n",(0,r.jsx)(s.h3,{id:"nettohostlong",children:"NetToHostLong"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod NetToHostLong(Addr As %Integer) As %Integer\n"})}),"\n",(0,r.jsx)(s.p,{children:"Convert a 4-byte unsigned integer from Network order to Host order (htonl()). This is used to convert the binary IPV4 address."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Port"})," - A 4-byte unsigned integer as a binary IPV4 address in Network order."]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nReturn a 4-byte unsigned integer as a binary IPV4 address in Host order."]}),"\n",(0,r.jsx)(s.h3,{id:"nettohostshort",children:"NetToHostShort"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod NetToHostShort(Port As %Integer) As %Integer\n"})}),"\n",(0,r.jsx)(s.p,{children:"Convert a 2-byte unsigned integer from Network order to Host order (ntohs()). This is used to convert the Port number."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Port"})," - A 2-byte unsigned integer as a port number in Network order."]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nReturn a 2-byte unsigned integer as a port number in Host order."]}),"\n",(0,r.jsx)(s.h3,{id:"ossupportsipv6",children:"OSsupportsIPV6"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod OSsupportsIPV6() As %Integer\n"})}),"\n",(0,r.jsx)(s.p,{children:"$SYSTEM.InetInfo.OSsupportsIPV6() provides a way to determine if IPV6 is supported by the operating system."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nReturns 1 if the operating system supports IPV6.",(0,r.jsx)(s.br,{}),"\nReturns 0 if the operating system does not support IPV6."]}),"\n",(0,r.jsx)(s.h3,{id:"textaddrtobinary",children:"TextAddrToBinary"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod TextAddrToBinary(Addr As %String) As %String\n"})}),"\n",(0,r.jsx)(s.p,{children:"Convert a readable Internet address text string to a binary Internet address string."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Addr"})," - Internet address, a string with address in text form. It is a 'dotted' decimal string for IPV4, colon-hex address string for IPV6."]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nThis method (worked as inet_addr()) returns a binary IP address in Network order, the length is 4 for IPV4, 16 for IPV6.",(0,r.jsx)(s.br,{}),"\nIf the address could not be translated, a null string is returned."]}),"\n",(0,r.jsx)(s.h3,{id:"tcpname",children:"TCPName"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod TCPName() As %String\n"})}),"\n",(0,r.jsx)(s.p,{children:"TCPName is a class method called by a child process to retrieve the TCP device name assigned by the parent process."}),"\n",(0,r.jsx)(s.h3,{id:"tcpstats",children:"TCPStats"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod TCPStats(Code As %Integer) As %Integer\n"})}),"\n",(0,r.jsx)(s.p,{children:"TCPStats(Code) returns statistics from the current TCP device."}),"\n",(0,r.jsx)(s.p,{children:(0,r.jsx)(s.strong,{children:"Description"})}),"\n",(0,r.jsx)(s.p,{children:"TCPStats(2) returns the number of bytes that have been read from the current TCP device."}),"\n",(0,r.jsx)(s.p,{children:"TCPStats(3) returns the number of bytes that have been read from the current TCP device and clears the counter."}),"\n",(0,r.jsx)(s.p,{children:"TCPStats(4) returns the number of bytes that have been written to the current TCP device."}),"\n",(0,r.jsx)(s.p,{children:"TCPStats(5) returns the number of bytes that have been written to the current TCP device and clears the counter."}),"\n",(0,r.jsx)(s.h3,{id:"ethernetaddress",children:"EthernetAddress"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod EthernetAddress(flag As %Integer, Name As %String) As %String\n"})}),"\n",(0,r.jsx)(s.p,{children:"EthernetAddress(flag[,name]) is a class method that determines Ethernet address."}),"\n",(0,r.jsx)(s.p,{children:(0,r.jsx)(s.strong,{children:"Description"})}),"\n",(0,r.jsx)(s.p,{children:"You can return a string containing ethernet address information by issuing a call to the following class method."}),"\n",(0,r.jsx)(s.p,{children:"EthernetAddress(0) returns the address of the primary ethernet device. This primary ethernet device is the first ethernet device found on the device names list with a valid ethernet address. Any ethernet device can be designated the primary ethernet device."}),"\n",(0,r.jsx)(s.p,{children:"EthernetAddress(0,name) returns the address of any attached ethernet device specified by name. On OpenVMS systems, this is the physical port address of the ethernet device, not the hardware address. The ethernet address is returned as a string of 12 characters that represent the 48-bit ethernet address. The name is not case sensitive. The maximum length of a device names list is platform-dependent, but the name of an individual device cannot be more than 15 characters in length. An invalid name value results in a  error."}),"\n",(0,r.jsx)(s.p,{children:"EthernetAddress(0) returns a null string, rather than an ethernet address if:"}),"\n",(0,r.jsx)(s.p,{children:"The primary ethernet device is not present in the device names list. EthernetAddress(0,name) returns a null string if the named device is not present in the device names list, or has no corresponding ethernet address."}),"\n",(0,r.jsx)(s.p,{children:"On Windows systems, the InterSystems Packet Driver is not installed."}),"\n",(0,r.jsx)(s.p,{children:"On IBM AIX(r) systems, the DLPI (Data Link Provider Interface) packages are not installed."}),"\n",(0,r.jsx)(s.p,{children:"The ethernet adapters are protected against access by non-root users, and the process invoking EthernetAddress(0) is not the root user."}),"\n",(0,r.jsx)(s.p,{children:"EthernetAddress(1) returns the current list of attached ethernet device names, delimited by $CHAR(1). The first name in this list is the primary ethernet device."}),"\n",(0,r.jsx)(s.p,{children:"EthernetAddress(2) returns the current list of ethernet device names, delimited by commas. This feature is not available on Windows systems."}),"\n",(0,r.jsx)(s.p,{children:"EthernetAddress(2,name) replaces the current ethernet device names list with the list specified in name; it then returns the ethernet device names list prior to the replacement. This feature is not available on Windows systems."}),"\n",(0,r.jsx)(s.p,{children:(0,r.jsx)(s.strong,{children:"Parameters"})}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"flag"})," -- The switch that specifies the information that EthernetAddress is to return. Valid values are:"]}),"\n",(0,r.jsx)(s.p,{children:"0 Returns the address of an attached ethernet device. When name is specified, it returns the address of the named device. When name is not specified, it returns the primary ethernet device."}),"\n",(0,r.jsx)(s.p,{children:"1 Returns a list of the ethernet device names actually present on the system. This is a subset of the list returned by flag= 2. Listed names are separated by the $CHAR(1) character."}),"\n",(0,r.jsx)(s.p,{children:"2 Returns the current list of ethernet device names, as set by system startup or by a subsequent invocation of EthernetAddress(2,name). Listed names are separated by commas. This flag value is not available on Windows systems."}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"name"})," Optional -- Ethernet device name(s). Valid values are:"]}),"\n",(0,r.jsx)(s.p,{children:"When flag = 0 name is the name of a specific ethernet device. EthernetAddress(0,name) returns the address of the named device."}),"\n",(0,r.jsx)(s.p,{children:"When flag= 2 name is an ethernet device names list, enclosed in quotes with individual device names separated by commas. A name list specified in EthernetAddress(2,name) cannot contain control characters. The ethernet device names cannot be changed on Windows systems."}),"\n",(0,r.jsx)(s.h3,{id:"connected",children:"Connected"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Connected() As %Boolean [ CodeMode = expression ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["The Connected() class method checks if the current device is a TCP device has been disconnected from the remote site. It returns 0 if the TCP device is disconnected. It returns 1 if the TCP device is still connected. An error ",(0,r.jsx)(s.funct,{children:" is generated if the current device is not a TCP device."})]}),"\n",(0,r.jsx)(s.p,{children:"You can also have the system poll asynchronously for a TCP disconnect by using the D mode option for the OPEN or USE command."}),"\n",(0,r.jsx)(s.h3,{id:"checkinterfaceexist",children:"CheckInterfaceExist"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CheckInterfaceExist(Interface As %String, MatchExact As %Integer = 0) As %Integer\n"})}),"\n",(0,r.jsx)(s.p,{children:"CheckInterfaceExist:"}),"\n",(0,r.jsx)(s.p,{children:(0,r.jsx)(s.strong,{children:"Description"})}),"\n",(0,r.jsxs)(s.p,{children:["Check if the specific network interface exists in the system or not.",(0,r.jsx)(s.br,{}),"\nReturns 1 if the network interface exists in the system, otherwise return 0."]}),"\n",(0,r.jsx)(s.h3,{id:"checkaddressexist",children:"CheckAddressExist"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CheckAddressExist(IPAddr As %String) As %Integer\n"})}),"\n",(0,r.jsx)(s.p,{children:"CheckAddressExist:"}),"\n",(0,r.jsx)(s.p,{children:(0,r.jsx)(s.strong,{children:"Description"})}),"\n",(0,r.jsxs)(s.p,{children:["Check if the specific IP address exists in the network or not.",(0,r.jsx)(s.br,{}),"\nReturns 1 if the IP address exists in the network, otherwise return 0."]}),"\n",(0,r.jsx)(s.h3,{id:"checksubnetmatch",children:"CheckSubnetMatch"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CheckSubnetMatch(Interface As %String, IPAddr As %String) As %Integer\n"})}),"\n",(0,r.jsx)(s.p,{children:"CheckSubnetMatch:"}),"\n",(0,r.jsx)(s.p,{children:(0,r.jsx)(s.strong,{children:"Description"})}),"\n",(0,r.jsxs)(s.p,{children:["Check to see if the subnets for the IP for a given physical interface match a requested virtual IP.",(0,r.jsx)(s.br,{}),"\nReturns 1 if the subnets match, otherwise return 0."]}),"\n",(0,r.jsx)(s.h3,{id:"getinterfacesinfo",children:"GetInterfacesInfo"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetInterfacesInfo(Interface As %String = "") As %String\n'})}),"\n",(0,r.jsxs)(s.p,{children:["Get interfaces information configured in the system.",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Interface"})," - Null string will return information of all interfaces otherwise it returns the information of the specified interface."]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nEach interface is separated by $c(0) character. Within each interface it contains interface name and IP addresses separated by $c(1) character.",(0,r.jsx)(s.br,{}),"\nThe first field separated by $c(1) is interface name and rest fields of them are the IP addresses configured on this interface."]}),"\n",(0,r.jsx)(s.h3,{id:"getlistofconfiguredinterfaces",children:"GetListOfConfiguredInterfaces"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod GetListOfConfiguredInterfaces(InterfaceNamesOnly As %Boolean = 0, VIP As %String = "") As %List\n'})}),"\n",(0,r.jsxs)(s.p,{children:["Get interfaces information configured in the system excluding loopback interface.",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Parameters:"}),(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"InterfaceNamesOnly"})," - If set it will return only interface name otherwise return interface name and IP address.",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"VIP"})," - If this is non-null string it will return only interfaces with matching subnet of the VIP."]}),"\n",(0,r.jsxs)(s.p,{children:[(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nFor ",(0,r.jsx)(s.strong,{children:"InterfaceNamesOnly"})," is set, it returns all the interface names in $LIST() format, e.g. $LB(InterfaceName1,InterfaceName2,...)",(0,r.jsx)(s.br,{}),"\nIf it is not set it returns all interfaces in a nested $LIST() format, e.g. $LB(Interface1,Interface2,...)",(0,r.jsx)(s.br,{}),'\nEach interface is also a $LIST() containing interface name and IP addresses, e.g. $LB(InterfaceName,IPv4,IPv6). Please note that the sequence of IPv4 and IPv6 might be reversed, you need to check whether it is IPv4 or not by $Length(IP,":"), if it is > 2 then it is IPv6 otherwise it is IPv4. And there can be more than one IPV4 or IPV6 addresses in the interfaces.']}),"\n",(0,r.jsx)(s.h3,{id:"checkarpinginstalled",children:"CheckArpingInstalled"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod CheckArpingInstalled() As %Boolean\n"})}),"\n",(0,r.jsxs)(s.p,{children:["Check if 'arping' command is installed in the system.",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\nFor non-Linux system this function always returns True. This function is for Linux/Ubuntu system only.",(0,r.jsx)(s.br,{}),"\nReturns 1 if 'arping' is installed in the system, otherwse returns 0."]}),"\n",(0,r.jsx)(s.h3,{id:"setlistenqsize",children:"SetListenQSize"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod SetListenQSize() As %Integer [ Deprecated ]\n"})}),"\n",(0,r.jsxs)(s.p,{children:["This funciton is DEPRECATED. Set queue size for listen() when /CLOSELISTEN option is set on TCP device.",(0,r.jsx)(s.br,{}),"\nFor non-Linux system, the queue size is always set to 0.",(0,r.jsx)(s.br,{}),"\nFor Linux system the queue size is set based on the value of net.ipv4.tcp_syncookies, when net.ipv4.tcp_syncookies is set to 1 then the listen queue will be set to 0, otherwise the listen queue is set to 1.",(0,r.jsx)(s.br,{}),"\nThis method needs to be called whenever users change the setting of net.ipv4.tcp_syncookies while IRIS is running.",(0,r.jsx)(s.br,{}),"\n",(0,r.jsx)(s.strong,{children:"Return:"}),(0,r.jsx)(s.br,{}),"\n1 - the listen queue size is 1 when /CLOSELISTEN option is set.",(0,r.jsx)(s.br,{}),"\n0 - the listen queue size is 0 when /CLOSELISTEN option is set."]})]})}function l(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(o,{...e})}):o(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>d,x:()=>a});var r=n(96540);const t={},i=r.createContext(t);function d(e){const s=r.useContext(i);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function a(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:d(e.components),r.createElement(i.Provider,{value:s},e.children)}}}]);