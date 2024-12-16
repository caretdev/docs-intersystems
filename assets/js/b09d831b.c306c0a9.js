"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[8128],{62633:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>a,default:()=>o,frontMatter:()=>i,toc:()=>l});var n=t(74848),r=t(28453);const i={pagination_prev:null,pagination_next:null},a="%Net.SSH.Session",l=[{value:"Parameters",id:"parameters",level:2},{value:"SSHPORT",id:"sshport",level:3},{value:"SSHTRACETRANS",id:"sshtracetrans",level:3},{value:"SSHTRACEKEX",id:"sshtracekex",level:3},{value:"SSHTRACEAUTH",id:"sshtraceauth",level:3},{value:"SSHTRACECONN",id:"sshtraceconn",level:3},{value:"SSHTRACESCP",id:"sshtracescp",level:3},{value:"SSHTRACESFTP",id:"sshtracesftp",level:3},{value:"SSHTRACEERROR",id:"sshtraceerror",level:3},{value:"SSHTRACEPUBLICKEY",id:"sshtracepublickey",level:3},{value:"SSHTRACESOCKET",id:"sshtracesocket",level:3},{value:"SSHHOSTKEYMD5",id:"sshhostkeymd5",level:3},{value:"SSHHOSTKEYSHA1",id:"sshhostkeysha1",level:3},{value:"SSHHOSTKEYSHA256",id:"sshhostkeysha256",level:3},{value:"Properties",id:"properties",level:2},{value:"HostKey",id:"hostkey",level:3},{value:"RemoteCharset",id:"remotecharset",level:3},{value:"LocalCharset",id:"localcharset",level:3},{value:"Session",id:"session",level:3},{value:"Methods",id:"methods",level:2},{value:"%OnNew",id:"onnew",level:3},{value:"SetPreferredAlgorithms",id:"setpreferredalgorithms",level:3},{value:"GetAlgorithms",id:"getalgorithms",level:3},{value:"GetSupportedAlgorithms",id:"getsupportedalgorithms",level:3},{value:"Connect",id:"connect",level:3},{value:"%OnClose",id:"onclose",level:3},{value:"Disconnect",id:"disconnect",level:3},{value:"AuthenticateWithUsername",id:"authenticatewithusername",level:3},{value:"AuthenticateWithKeyPair",id:"authenticatewithkeypair",level:3},{value:"AuthenticateWithKeyboardInteractive",id:"authenticatewithkeyboardinteractive",level:3},{value:"kbdintcallback",id:"kbdintcallback",level:3},{value:"OpenSFTP",id:"opensftp",level:3},{value:"Execute",id:"execute",level:3},{value:"TestExecute",id:"testexecute",level:3},{value:"ForwardPort",id:"forwardport",level:3},{value:"VersionInfo",id:"versioninfo",level:3},{value:"SetTimeout",id:"settimeout",level:3},{value:"GetTimeout",id:"gettimeout",level:3},{value:"TestForwardPort",id:"testforwardport",level:3},{value:"SetTraceMask",id:"settracemask",level:3},{value:"openXDEV",id:"openxdev",level:3},{value:"ssherror",id:"ssherror",level:3}];function c(e){const s={a:"a",blockquote:"blockquote",br:"br",category:"category",category1:"category1",code:"code",em:"em",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",option:"option",option1:"option1",p:"p",pre:"pre",strong:"strong",ul:"ul",...(0,r.R)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(s.header,{children:(0,n.jsx)(s.h1,{id:"netsshsession",children:"%Net.SSH.Session"})}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Net.SSH.Session Extends %RegisteredObject [ System = 3 ]\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Represents an SSH session object. Each SSH session object must first be connected, then authenticated with the remote system. Note that there are multiple methods of authentication, this class supports password and publickey. Once connected and authenticated, the SSH object can be used to perform SCP (Secure Copy) operations of single files to and from the remote system, it can also be used to execute remote commands, tunnel TCP traffic and forms the base connection for SFTP operations (see %Net.SSH.SFTP).",(0,n.jsx)(s.br,{}),"\nThe Test() method of this class illustrates some basic usage scenarios for this class.",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.strong,{children:"NOTE:"})," %Net.SSH is currently not supported on OpenVMS platforms."]}),"\n",(0,n.jsx)(s.h2,{id:"parameters",children:"Parameters"}),"\n",(0,n.jsx)(s.h3,{id:"sshport",children:"SSHPORT"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SSHPORT As INTEGER [ Final ] = 22;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Default SSH port"}),"\n",(0,n.jsx)(s.h3,{id:"sshtracetrans",children:"SSHTRACETRANS"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SSHTRACETRANS As INTEGER [ Final ] = 2;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Enables tracing of SSH transactions"}),"\n",(0,n.jsx)(s.h3,{id:"sshtracekex",children:"SSHTRACEKEX"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SSHTRACEKEX As INTEGER [ Final ] = 4;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Enables tracing of SSH key exchange"}),"\n",(0,n.jsx)(s.h3,{id:"sshtraceauth",children:"SSHTRACEAUTH"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SSHTRACEAUTH As INTEGER [ Final ] = 8;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Enables tracing of SSH authentication"}),"\n",(0,n.jsx)(s.h3,{id:"sshtraceconn",children:"SSHTRACECONN"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SSHTRACECONN As INTEGER [ Final ] = 16;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Enables tracing of SSH connections"}),"\n",(0,n.jsx)(s.h3,{id:"sshtracescp",children:"SSHTRACESCP"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SSHTRACESCP As INTEGER [ Final ] = 32;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Enables tracing of SSH/SCP operations"}),"\n",(0,n.jsx)(s.h3,{id:"sshtracesftp",children:"SSHTRACESFTP"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SSHTRACESFTP As INTEGER [ Final ] = 64;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Enables tracing of SSH/SFTP operations"}),"\n",(0,n.jsx)(s.h3,{id:"sshtraceerror",children:"SSHTRACEERROR"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SSHTRACEERROR As INTEGER [ Final ] = 128;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Enables tracing of SSH error operations"}),"\n",(0,n.jsx)(s.h3,{id:"sshtracepublickey",children:"SSHTRACEPUBLICKEY"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SSHTRACEPUBLICKEY As INTEGER [ Final ] = 256;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Enables tracing of SSH public key operations"}),"\n",(0,n.jsx)(s.h3,{id:"sshtracesocket",children:"SSHTRACESOCKET"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Parameter SSHTRACESOCKET As INTEGER [ Final ] = 512;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Enables tracing of low level socket operations"}),"\n",(0,n.jsx)(s.h3,{id:"sshhostkeymd5",children:"SSHHOSTKEYMD5"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter SSHHOSTKEYMD5 As STRING [ Final ] = "MD5";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Host Key Type: MD5"}),"\n",(0,n.jsx)(s.h3,{id:"sshhostkeysha1",children:"SSHHOSTKEYSHA1"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter SSHHOSTKEYSHA1 As STRING [ Final ] = "SHA1";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Host Key Type: SHA1"}),"\n",(0,n.jsx)(s.h3,{id:"sshhostkeysha256",children:"SSHHOSTKEYSHA256"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Parameter SSHHOSTKEYSHA256 As STRING [ Final ] = "SHA256";\n'})}),"\n",(0,n.jsx)(s.p,{children:"Host Key Type: SHA256"}),"\n",(0,n.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,n.jsx)(s.h3,{id:"hostkey",children:"HostKey"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property HostKey As %String;\n"})}),"\n",(0,n.jsx)(s.p,{children:"Remote host key. The hash type is determined from the number of bits (from the number of hex chars) in the hash:"}),"\n",(0,n.jsxs)(s.ul,{children:["\n",(0,n.jsx)(s.li,{children:"MD5: 128 bits / 32 hex chars"}),"\n",(0,n.jsx)(s.li,{children:"SHA1: 160 bits / 40 hex chars"}),"\n",(0,n.jsx)(s.li,{children:"SHA256: 256 bits / 64 hex chars"}),"\n"]}),"\n",(0,n.jsx)(s.h3,{id:"remotecharset",children:"RemoteCharset"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Property RemoteCharset As %String [ InitialExpression = "UTF8" ];\n'})}),"\n",(0,n.jsx)(s.p,{children:"Character set used by the remote server. Will almost certainly be UTF-8 for any SSH server."}),"\n",(0,n.jsx)(s.h3,{id:"localcharset",children:"LocalCharset"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property LocalCharset As %String [ InitialExpression = {$$GetPDefIO^%SYS.NLS(8)} ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"Character set used by the local system. Defaults to the system call translation table (which is likely UTF8 on UNIX)."}),"\n",(0,n.jsx)(s.h3,{id:"session",children:"Session"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Property Session As %String [ Internal, Private ];\n"})}),"\n",(0,n.jsx)(s.p,{children:"SSH Session handle"}),"\n",(0,n.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,n.jsx)(s.h3,{id:"onnew",children:"%OnNew"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnNew() As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]\n"})}),"\n",(0,n.jsx)(s.h3,{id:"setpreferredalgorithms",children:"SetPreferredAlgorithms"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method SetPreferredAlgorithms(preferences As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Called before connecting to a remote host to specify various preferred algorithms and methods that should be used. Format of the preferences string is as follows:"}),"\n",(0,n.jsxs)(s.blockquote,{children:["\n",(0,n.jsx)(s.p,{children:(0,n.jsxs)(s.category,{children:["=",(0,n.jsxs)(s.option,{children:["[:",(0,n.jsxs)(s.category1,{children:["=",(0,n.jsx)(s.option1,{children:"[:...]]"})]})]})]})}),"\n"]}),"\n",(0,n.jsxs)(s.p,{children:["Where ",(0,n.jsx)(s.category,{children:" is one of:"})]}),"\n",(0,n.jsxs)(s.ul,{children:["\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"KEX"})," Key Exchange Methods"]}),"\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"HOSTKEY"})," Hostkey public key algorithms"]}),"\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"CRYPT"})," Encryption algorithms"]}),"\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"MAC"})," MAC algorithms"]}),"\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"COMP"}),"Compression Algorithms\n",(0,n.jsx)(s.strong,{children:"NOTE:"})," The allowed values can be found here:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.a,{href:"http://libssh2.sourceforge.net/doc/#libssh2sessionmethodpref",children:"http://libssh2.sourceforge.net/doc/#libssh2sessionmethodpref"})," And ",(0,n.jsx)(s.option,{children:" is a comma delimited list of one or more values."})]}),"\n"]}),"\n",(0,n.jsx)(s.h3,{id:"getalgorithms",children:"GetAlgorithms"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetAlgorithms(ByRef preferences As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Called to retrieve the current set of negotiated algorithms/methods for various categories. Format of the result string is as follows:"}),"\n",(0,n.jsxs)(s.blockquote,{children:["\n",(0,n.jsx)(s.p,{children:(0,n.jsxs)(s.category,{children:["=",(0,n.jsxs)(s.option,{children:["[:",(0,n.jsxs)(s.category1,{children:["=",(0,n.jsx)(s.option1,{children:"[:...]]"})]})]})]})}),"\n"]}),"\n",(0,n.jsxs)(s.p,{children:["Where ",(0,n.jsx)(s.category,{children:" is one of:"})]}),"\n",(0,n.jsxs)(s.ul,{children:["\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"KEX"})," Key Exchange Methods"]}),"\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"HOSTKEY"})," Hostkey public key algorithms"]}),"\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"CRYPT"})," Encryption algorithms"]}),"\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"MAC"})," MAC algorithms"]}),"\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"COMP"}),"Compression Algorithms\n",(0,n.jsx)(s.strong,{children:"NOTE:"})," The allowed values can be found here:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.a,{href:"http://libssh2.sourceforge.net/doc/#libssh2sessionmethodpref",children:"http://libssh2.sourceforge.net/doc/#libssh2sessionmethodpref"})," And ",(0,n.jsx)(s.option,{children:" is a comma delimited list of one or more values."})]}),"\n"]}),"\n",(0,n.jsx)(s.h3,{id:"getsupportedalgorithms",children:"GetSupportedAlgorithms"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetSupportedAlgorithms(ByRef algs As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Called to retrieve the set of supported algorithms for various categories. Format of the string is as follows:"}),"\n",(0,n.jsxs)(s.blockquote,{children:["\n",(0,n.jsx)(s.p,{children:(0,n.jsxs)(s.category,{children:["=",(0,n.jsxs)(s.option,{children:["[:",(0,n.jsxs)(s.category1,{children:["=",(0,n.jsx)(s.option1,{children:"[:...]]"})]})]})]})}),"\n"]}),"\n",(0,n.jsxs)(s.p,{children:["Where ",(0,n.jsx)(s.category,{children:" is one of:"})]}),"\n",(0,n.jsxs)(s.ul,{children:["\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"KEX"})," Key Exchange Methods"]}),"\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"HOSTKEY"})," Hostkey public key algorithms"]}),"\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"CRYPT"})," Encryption algorithms"]}),"\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"MAC"})," MAC algorithms"]}),"\n",(0,n.jsxs)(s.li,{children:[(0,n.jsx)(s.strong,{children:"COMP"})," Compression Algorithms\n",(0,n.jsx)(s.strong,{children:"NOTE:"})," The allowed values can be found here:",(0,n.jsx)(s.br,{}),"\n",(0,n.jsx)(s.a,{href:"http://libssh2.sourceforge.net/doc/#libssh2sessionmethodpref",children:"http://libssh2.sourceforge.net/doc/#libssh2sessionmethodpref"})]}),"\n"]}),"\n",(0,n.jsx)(s.h3,{id:"connect",children:"Connect"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method Connect(hostname As %String, port As %Integer = {..#SSHPORT}, hostkey As %String = "", hostkeytype As %String = "") As %Status\n'})}),"\n",(0,n.jsx)(s.p,{children:"Connect to a remote host, specifying the hostname, and optionally the port and remote hostkey to match. The hostkey helps prevent impersonation attacks, it is a hash of the remote hosts' public key as a string of ASCII hex digits representing the bytes of the hash. The type of hash is determined from the number of bits (from the number of hex chars) in the hash:"}),"\n",(0,n.jsxs)(s.ul,{children:["\n",(0,n.jsx)(s.li,{children:"MD5: 128 bits / 32 hex chars"}),"\n",(0,n.jsx)(s.li,{children:"SHA1: 160 bits / 40 hex chars"}),"\n",(0,n.jsx)(s.li,{children:'SHA256: 256 bits / 64 hex chars\nThe returned host key can be specified by passing one of "MD5", "SHA1" or "SHA256" (see ..#SSHHOSTKEYxyz values), the default is "MD5". If the host key isn\'t available, it will be "" (e.g. MD5 in FIPS mode).'}),"\n"]}),"\n",(0,n.jsx)(s.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Clean up any resources"}),"\n",(0,n.jsx)(s.h3,{id:"disconnect",children:"Disconnect"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method Disconnect() As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Disconnect from the remote host"}),"\n",(0,n.jsx)(s.h3,{id:"authenticatewithusername",children:"AuthenticateWithUsername"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method AuthenticateWithUsername(username As %String, password As %String) As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:['Authenticate with the remote server using a username/password via the "password" authentication scheme. Note that this is NOT the same as keyboard-interactive which is typically what login sessions use.',(0,n.jsx)(s.br,{}),"\nSee notes in AuthenticateWithKeyPair() when using multiple forms of authentication."]}),"\n",(0,n.jsx)(s.h3,{id:"authenticatewithkeypair",children:"AuthenticateWithKeyPair"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method AuthenticateWithKeyPair(username As %String, publickeyfile As %String, privatekeyfile As %String, passphrase As %String) As %Status\n"})}),"\n",(0,n.jsxs)(s.p,{children:["Authenticate with the remote server using a public/private key pair and passphrase (for the private key). The private keys are PEM encoded and the public keys are in OpenSSH format.",(0,n.jsx)(s.br,{}),"\nIf multiple forms of authentication are required by the server, for example /etc/ssh/sshd_config contains:"]}),"\n",(0,n.jsx)(s.p,{children:"AuthenticationMethods publickey,password"}),"\n",(0,n.jsxs)(s.p,{children:['Then in this case read the "," (comma) as AND; the server will require ',(0,n.jsx)(s.em,{children:"both"})," forms of authentication.",(0,n.jsx)(s.br,{}),'\nCalling AuthenticateWithKeyPair fails with LIBSSH2_ERROR_PUBLICKEY_UNVERIFIED which is a bit misleading ... it\'s really "authenticated with partial success" so we can then try authenticating with a password which should then succeed (or keyboard-interactive).']}),"\n",(0,n.jsx)(s.h3,{id:"authenticatewithkeyboardinteractive",children:"AuthenticateWithKeyboardInteractive"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method AuthenticateWithKeyboardInteractive(username As %String, lambda As %String, ByRef context) As %Status [ PublicList = (lambda, context) ]\n"})}),"\n",(0,n.jsx)(s.p,{children:'Authenticate with the remote server using the "keyboard-interactive" authentication scheme. This requires a callback lambda/function that will be called with a list of one or challenges to which the lambda will return the responses to the challenge(s). The lambda is invoked with the following arguments:'}),"\n",(0,n.jsxs)(s.ul,{children:["\n",(0,n.jsx)(s.li,{children:"username As %String Username being authenticated"}),"\n",(0,n.jsx)(s.li,{children:"instructions As %String Instructions from the server (optional)"}),"\n",(0,n.jsx)(s.li,{children:"prompts As %List A $LIST of challenge prompt(s)"}),"\n",(0,n.jsx)(s.li,{children:"promptflags As %List A $LIST of flags for each of the challenge prompt(s)"}),"\n",(0,n.jsx)(s.li,{children:"ByRef context A pass-by-ref context value\nThe lambda must return a $LIST of responses, with each Nth element in the $LIST corresponding to the Nth challenge prompt. If there is no response for a prompt, then that Nth $LIST element should be empty. The allowed values for promptflags are as follows:"}),"\n",(0,n.jsxs)(s.li,{children:["E Echo on. If E is missing DO NOT ECHO! (e.g. password entry)\n",(0,n.jsx)(s.strong,{children:"NOTE:"})," The context can be anything of your choosing (an array, object or whatever) and it is passed by reference.",(0,n.jsx)(s.br,{}),"\nSee notes in AuthenticateWithKeyPair() when using multiple forms of authentication."]}),"\n"]}),"\n",(0,n.jsx)(s.h3,{id:"kbdintcallback",children:"kbdintcallback"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method kbdintcallback(username As %String, instructions As %String, prompts As %List, promptflags As %List) As %List [ CodeMode = expression, Internal, PublicList = (lambda, context) ]\n"})}),"\n",(0,n.jsx)(s.p,{children:"Internal helper method to act as a callback for keyboard-interactive authentication."}),"\n",(0,n.jsx)(s.h3,{id:"opensftp",children:"OpenSFTP"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method OpenSFTP(ByRef sftp As %Net.SSH.SFTP) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Open up an SFTP session for SFTP activity."}),"\n",(0,n.jsx)(s.h3,{id:"execute",children:"Execute"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method Execute(pCommand As %String, ByRef pDevice As %String, ByRef pEnv) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Execute a remote command on the remote system. In order to do I/O with the remote command, an XDEV device instance is passed back via the pDevice parameter. This is a normal device and can be used with the USE/READ/WRITE/CLOSE commands. Note that environment variables for the remote command can be passed as an array of name/value pairs."}),"\n",(0,n.jsx)(s.h3,{id:"testexecute",children:"TestExecute"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod TestExecute(host As %String, username As %String, password As %String, command As %String = "uname -a", pTimeout As %Integer = -1) As %Status\n'})}),"\n",(0,n.jsx)(s.p,{children:"Demonstrates the execution of a remote command (by default, uname -a)."}),"\n",(0,n.jsx)(s.h3,{id:"forwardport",children:"ForwardPort"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method ForwardPort(pRemoteHost As %String, pRemotePort As %Integer, ByRef pDevice As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Forwards traffic via the SSH connection to a remote host/port. The traffic is sent via an XDEV device that is opened by ForwardPort() and passed back by reference via the pDevice parameter."}),"\n",(0,n.jsx)(s.h3,{id:"versioninfo",children:"VersionInfo"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method VersionInfo(ByRef pClientVersion As %String, ByRef pServerVersion As %String) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Retrieves the client and server SSH versions. If the server version is not available, or if the session is not connected, then pServerVersion will be undefined. Note that the client version refers to the release of libssh2 being used."}),"\n",(0,n.jsx)(s.h3,{id:"settimeout",children:"SetTimeout"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method SetTimeout(pTimeoutMS As %Integer = -1) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Sets the timeout for SSH operations in milliseconds. An infinite timeout can be set by passing -1 to this methods; the default timeout is set to 30 seconds."}),"\n",(0,n.jsx)(s.h3,{id:"gettimeout",children:"GetTimeout"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetTimeout(ByRef pTimeoutMS As %Integer = -1) As %Status\n"})}),"\n",(0,n.jsx)(s.p,{children:"Gets the timeout for SSH operations in milliseconds. An infinite timeout is represented by the value of -1; the default timeout is set to 30 seconds."}),"\n",(0,n.jsx)(s.h3,{id:"testforwardport",children:"TestForwardPort"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod TestForwardPort(host As %String, username As %String, password As %String, remotehost As %String = "whatismyipaddress.com", remoteport As %Integer = 80) As %Status\n'})}),"\n",(0,n.jsx)(s.p,{children:"Demonstrates the use of port forwarding to whatismyipaddress.com via the remote SSH server."}),"\n",(0,n.jsx)(s.h3,{id:"settracemask",children:"SetTraceMask"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'Method SetTraceMask(pTraceMask As %Integer, pTraceFile As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Sets the trace mask and log file for SSH tracing/logging. The trace mask is a bitmap consisting of flags specified above in the SSHTRACE* parameters."}),"\n",(0,n.jsx)(s.h3,{id:"openxdev",children:"openXDEV"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod openXDEV(pXDEV As %String, pOwner As %String, pType As %String, ByRef pDevice As %String, pCharset As %String = "UTF8") As %Status [ Internal, Private ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Sets up an XDEV device for use with port forwarding or remote command execution."}),"\n",(0,n.jsx)(s.h3,{id:"ssherror",children:"ssherror"}),"\n",(0,n.jsx)(s.pre,{children:(0,n.jsx)(s.code,{className:"language-objectscript-class",children:'ClassMethod ssherror(pHResult As %Integer, pText As %String, pOrigin As %String = "") As %Status [ Internal ]\n'})}),"\n",(0,n.jsx)(s.p,{children:"Maps COM_HRESULT error codes to the equivalent status codes."})]})}function o(e={}){const{wrapper:s}={...(0,r.R)(),...e.components};return s?(0,n.jsx)(s,{...e,children:(0,n.jsx)(c,{...e})}):c(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>a,x:()=>l});var n=t(96540);const r={},i=n.createContext(r);function a(e){const s=n.useContext(i);return n.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:a(e.components),n.createElement(i.Provider,{value:s},e.children)}}}]);