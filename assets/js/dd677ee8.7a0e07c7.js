"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[82297],{23675:(e,s,t)=>{t.r(s),t.d(s,{contentTitle:()=>r,default:()=>c,frontMatter:()=>i,toc:()=>l});var a=t(74848),n=t(28453);const i={pagination_prev:null,pagination_next:null},r="%Net.FetchMailProtocol",l=[{value:"Properties",id:"properties",level:2},{value:"Connected",id:"connected",level:3},{value:"AttachDir",id:"attachdir",level:3},{value:"StoreAttachToFile",id:"storeattachtofile",level:3},{value:"StoreInlineToFile",id:"storeinlinetofile",level:3},{value:"Debug",id:"debug",level:3},{value:"Methods",id:"methods",level:2},{value:"Connect",id:"connect",level:3},{value:"GetMailBoxStatus",id:"getmailboxstatus",level:3},{value:"GetSizeOfMessages",id:"getsizeofmessages",level:3},{value:"GetMessageUIDArray",id:"getmessageuidarray",level:3},{value:"GetMessageUID",id:"getmessageuid",level:3},{value:"Fetch",id:"fetch",level:3},{value:"FetchFromStream",id:"fetchfromstream",level:3},{value:"FetchMessage",id:"fetchmessage",level:3},{value:"FetchMessageInfo",id:"fetchmessageinfo",level:3},{value:"DeleteMessage",id:"deletemessage",level:3},{value:"RollbackDeletes",id:"rollbackdeletes",level:3},{value:"QuitAndCommit",id:"quitandcommit",level:3},{value:"QuitAndRollback",id:"quitandrollback",level:3},{value:"Ping",id:"ping",level:3},{value:"%OnClose",id:"onclose",level:3}];function o(e){const s={a:"a",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",strong:"strong",...(0,n.R)(),...e.components};return(0,a.jsxs)(a.Fragment,{children:[(0,a.jsx)(s.header,{children:(0,a.jsx)(s.h1,{id:"netfetchmailprotocol",children:"%Net.FetchMailProtocol"})}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Class %Net.FetchMailProtocol Extends %RegisteredObject [ Abstract, Not ProcedureBlock, System = 3 ]\n"})}),"\n",(0,a.jsxs)(s.p,{children:[(0,a.jsx)(s.strong,{children:"For information on using the API provided by this class"}),", see ",(0,a.jsx)(s.a,{href:"/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Net.FetchMailProtocol",children:"Sending and Receiving Email"}),"."]}),"\n",(0,a.jsx)(s.p,{children:"Abstract Class that %Net.POP3 implements."}),"\n",(0,a.jsx)(s.p,{children:"Methods are Connect,,GetMailBoxStatus, GetSizeOfMessages,GetMessageUIDArray, FetchMessage,DeleteMessage, RollbackDeletes,QuitAndCommit, QuitAndRollback,Ping."}),"\n",(0,a.jsx)(s.p,{children:"Important after Connect is called, you must call before your session ends either QuitAndCommit or QuitAndRollback."}),"\n",(0,a.jsx)(s.p,{children:"Each of the methods of this class returns a value of type %Status indicating success or failure."}),"\n",(0,a.jsx)(s.p,{children:"The charset used for each text mail message part is returned in the Charset property of the %Net.MailMessagePart class. The data is automatically translated to the current cache locale's default character set when reading from the TextData text stream."}),"\n",(0,a.jsx)(s.p,{children:"The following shows an example of getting messages:"}),"\n",(0,a.jsx)(s.p,{children:(0,a.jsx)(s.code,{children:'#include %occOptions #include %occStatus ; display mail but don\'t delete from mailbox testmail6 ; new mailserver,status,err,mailMsg set mailserver=##class(%Net.POP3).%New() set mailserver.AttachDir="d:\\attach\\" ; need terminating \\ set mailserver.StoreAttachToFile=1 write !,"Calling Connect" set status=mailserver.Connect("moon.kinich.com","testjsl","jsltest") if $$$ISERR(status) do DecomposeStatus^%apiOBJ(status,.err) write !,err(err),! quit write !,"Calling Fetch to retrieve the oldest message on the server." set status=mailserver.Fetch(1,.mailMsg,0) if $$$ISERR(status) do DecomposeStatus^%apiOBJ(status,.err) write !,err(err),! quit write !,"from="_mailMsg.From write !,"to="_mailMsg.Headers.GetAt("to") write !,"date="_mailMsg.Date write !,"subject="_mailMsg.Subject write !,"messagesize="_mailMsg.MessageSize do DumpMessage(mailMsg) quit DumpMessage(msg) new i,index,value,len if msg.IsMultiPart { for i=1:1:msg.Parts.Count() write !,"Dumping part "_i do DumpMessage(msg.Parts.GetAt(i)) quit } set index="" for set value=msg.Headers.GetNext(.index) quit:index="" write !,"Headers("_index_")="_value if msg.IsBinary { write !,"msg is binary, filename="_msg.FileName_" filename="_msg.GetAttribute("content-disposition","filename") } else { write !,"Dumping text msg Filename="_msg.FileName_" filename="_msg.GetAttribute("content-disposition","filename"),! set stream=msg.TextData do stream.Rewind() set len=32763 while \'stream.AtEnd { write stream.Read(.len) } } quit'})}),"\n",(0,a.jsx)(s.h2,{id:"properties",children:"Properties"}),"\n",(0,a.jsx)(s.h3,{id:"connected",children:"Connected"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property Connected As %Boolean;\n"})}),"\n",(0,a.jsx)(s.h3,{id:"attachdir",children:"AttachDir"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property AttachDir As %String;\n"})}),"\n",(0,a.jsx)(s.p,{children:"When receiving messages using POP3, the directory where attached files will be stored"}),"\n",(0,a.jsx)(s.h3,{id:"storeattachtofile",children:"StoreAttachToFile"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property StoreAttachToFile As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(s.p,{children:'We always store attachments as a part in the message. If StoreAttachToFile=true and content-disposition MIME header of attachment part = "attachment", we ALSO store to the directory specified in AttachDir'}),"\n",(0,a.jsx)(s.h3,{id:"storeinlinetofile",children:"StoreInlineToFile"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property StoreInlineToFile As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(s.p,{children:'We always store attachments as a part in the message. If StoreInlineToFile=true and content-disposition MIME header of attachment part = "inline", we ALSO store to the directory specified in AttachDir'}),"\n",(0,a.jsx)(s.h3,{id:"debug",children:"Debug"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Property Debug As %Integer [ InitialExpression = 0 ];\n"})}),"\n",(0,a.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,a.jsx)(s.h3,{id:"connect",children:"Connect"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method Connect(PopServer As %String, UserName As %String, Password As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Use to logon to your mail server using the username and password that are the parameters to this routine."}),"\n",(0,a.jsx)(s.h3,{id:"getmailboxstatus",children:"GetMailBoxStatus"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetMailBoxStatus(ByRef NumberOfMessages As %Integer, ByRef NumberOfBytes As %Integer) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Get information about your mail box, the number of bytes it contains, and the number of messages;"}),"\n",(0,a.jsx)(s.h3,{id:"getsizeofmessages",children:"GetSizeOfMessages"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Method GetSizeOfMessages(MessageNumber As %String = "", ByRef ListOfSizes As %ArrayOfDataTypes) As %Status\n'})}),"\n",(0,a.jsx)(s.p,{children:'If you pass in an empty string "", an array with an element for each of the messages not marked for deletion is returned. Each element of the array has the message number as its index and the size of the message in bytes as its value..'}),"\n",(0,a.jsx)(s.p,{children:"If you pass in a message number, a one element array is returned. The element has the message number as its index and the size of the message in bytes as its value. An error status is returned if a message with this message number does not exist or has been marked for deletion."}),"\n",(0,a.jsx)(s.h3,{id:"getmessageuidarray",children:"GetMessageUIDArray"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:'Method GetMessageUIDArray(MessageNumber As %String = "", ByRef ListOfUniqueIDs As %ArrayOfDataTypes) As %Status\n'})}),"\n",(0,a.jsx)(s.p,{children:'If you pass in an empty string "", an array with an element for each of the messages not marked for deletion is returned. Each element of the array has the message number as its index and the unique message identifier (UID) as its value..'}),"\n",(0,a.jsx)(s.p,{children:"If you pass in a message number, a one element array is returned. The element has the message number as its index and unique message identifier (UID) as its value. An error status is returned if a message with this message number does not exist or has been marked for deletion."}),"\n",(0,a.jsx)(s.p,{children:"The unique message identifier is at most 70 characters long and each character is ASCII and printable (0x21 to 0x7E)."}),"\n",(0,a.jsx)(s.p,{children:"Each identifier is unique within the mailbox and is persistent. If a given message has a particular unique identifier in one session, it must have the same unique ID in all sessions. Once used, a given UID can never be reused even if the corresponding message is deleted."}),"\n",(0,a.jsx)(s.p,{children:"If a specified message (corresponding to MessageNumber) does not exist or is marked for deletion, the function returns an error status."}),"\n",(0,a.jsx)(s.p,{children:"This command is used to implement a poor man's server-based message store. Basically, a client does not automatically delete messages, after getting messages, then at the start of each session, it calls GetMessageUIDArray to obtain an array of all messages currently on the server. Any UIDs not currently known by the client are retrieved. That of course requires the client to keep track of the UIDs for all retrieved messages."}),"\n",(0,a.jsx)(s.h3,{id:"getmessageuid",children:"GetMessageUID"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method GetMessageUID(MessageNumber As %Integer, ByRef UniqueID As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"For the message number singled out by MessageNumber, this function returns the corresponding unique id. The message number must not correspond to a non-existent message or a message already marked for deletion or an error message is returned."}),"\n",(0,a.jsx)(s.p,{children:"The unique message identifier is at most 70 characters long and each character is ASCII and printable (0x21 to 0x7E)."}),"\n",(0,a.jsx)(s.p,{children:"Each identifier is unique within the mailbox and is persistent. If a given message has a particular unique identifier in one session, it must have the same unique ID in all sessions. Once used, a given UID can never be reused even if the corresponding message is deleted."}),"\n",(0,a.jsx)(s.p,{children:"If a specified message (corresponding to MessageNumber) does not exist or is marked for deletion, the function returns an error %Status."}),"\n",(0,a.jsx)(s.p,{children:"This command is used to implement a poor mans server-based message store. Basically, a client does not automatically delete messages, after getting messages, then at the start of each session, it calls GetMessageUIDs to obtain a list of all messages currently on the server. Any UIDs not currently known by the client are retrieved. That of course requires the client to keep track of the UIDs for all retrieved messages."}),"\n",(0,a.jsx)(s.h3,{id:"fetch",children:"Fetch"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method Fetch(MessageNumber As %Integer, ByRef Msg As %Net.MailMessage, Delete As %Boolean, messageStream As %BinaryStream) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This method retrieves a single message. MessageNumber must be a valid message number and the message must not be currently marked for deletion."}),"\n",(0,a.jsx)(s.p,{children:"Msg is a MailMessage (possibly multipart) and a return parameter. The fetched mail message is returned in this parameter"}),"\n",(0,a.jsx)(s.p,{children:"If Delete is 1, the message is deleted. If 0, it is not deleted."}),"\n",(0,a.jsx)(s.p,{children:"If messageStream is specified, then the original message is written to this binary stream. messageStream needs to be a binary stream since mail messages may include binary data and multiple charsets."}),"\n",(0,a.jsx)(s.h3,{id:"fetchfromstream",children:"FetchFromStream"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method FetchFromStream(messageStream As %BinaryStream, ByRef Msg As %Net.MailMessage) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This method retrieves a single eml format message from a binary stream. messageStream must be a binary stream containing the message."}),"\n",(0,a.jsx)(s.p,{children:"Msg is a MailMessage (possibly multipart) and a return parameter. The fetched mail message is returned in this parameter"}),"\n",(0,a.jsx)(s.h3,{id:"fetchmessage",children:"FetchMessage"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method FetchMessage(MessageNumber As %Integer, ByRef From As %String, ByRef To As %String, ByRef Date As %String, ByRef Subject As %String, ByRef MessageSize As %Integer, ByRef MsgHeaders As %ArrayOfDataTypes, ByRef Msg As %Net.MailMessage, Delete As %Boolean) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This method retrieves a single message. MessageNumber must be a valid message number and the message must not be currently marked for deletion."}),"\n",(0,a.jsx)(s.p,{children:"Msg is a MailMessage (possibly multipart) and a return parameter. The fetched mail message is returned in this parameter"}),"\n",(0,a.jsx)(s.p,{children:"If Delete is 1, the message is deleted. If 0, it is not deleted."}),"\n",(0,a.jsx)(s.p,{children:"FetchMessage also returns selected headers in additional by reference parameters as well as the array of all headers."}),"\n",(0,a.jsx)(s.h3,{id:"fetchmessageinfo",children:"FetchMessageInfo"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method FetchMessageInfo(MessageNumber As %Integer, Lines As %Integer, ByRef From As %String, ByRef To As %String, ByRef Date As %String, ByRef Subject As %String, ByRef MessageSize As %Integer, ByRef MsgHeaders As %ArrayOfDataTypes, ByRef MessageText As %String) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This method retrieves a single message. MessageNumber must be a valid message number and the message must not be currently marked for deletion."}),"\n",(0,a.jsx)(s.p,{children:"An upper bound is put on number of lines of message text retrieved by Lines."}),"\n",(0,a.jsx)(s.p,{children:"The text of the retrieved message is returned in the MessageText argument as a %String."}),"\n",(0,a.jsx)(s.p,{children:"FetchMessageInfo is typically used to get From, Date, and other header information without actually getting the message text. This allows one to filter out messages from parties one wishes to exclude or to zero in on messages one particularly wants. Since getting message text is something that can happen over a slow modem, this is a desirable feature."}),"\n",(0,a.jsx)(s.h3,{id:"deletemessage",children:"DeleteMessage"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method DeleteMessage(MessageNumber As %Integer) As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This method deletes a single message. MessageNumber must be a valid message number and the message must not be currently marked for deletion."}),"\n",(0,a.jsx)(s.h3,{id:"rollbackdeletes",children:"RollbackDeletes"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method RollbackDeletes() As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This method unmarks any messages previously marked for deletion."}),"\n",(0,a.jsx)(s.h3,{id:"quitandcommit",children:"QuitAndCommit"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method QuitAndCommit() As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This method ends the session of this Protocl object with the mail server."}),"\n",(0,a.jsx)(s.p,{children:"Also, as a side-effect, any messages marked for deletion are deleted."}),"\n",(0,a.jsx)(s.p,{children:"This function (or its companion QuitAndRollback) must be executed before the process that issued a connect ends or havoc could be wreaked upon the mail server. (Mail servers do not have to bullet proof themselves against connects not followed by a quit.)"}),"\n",(0,a.jsx)(s.h3,{id:"quitandrollback",children:"QuitAndRollback"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method QuitAndRollback() As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This function calls RollbackDeletes and then quits."}),"\n",(0,a.jsx)(s.p,{children:"This method ends the session of this Protocl object with the mail server."}),"\n",(0,a.jsx)(s.p,{children:"This function (or its companion QuitAndCommit) must be executed before the process that issued a connect ends or havoc could be wreaked upon the mail server. (Mail servers do not have to bullet proof themselves against connects not followed by a quit.)"}),"\n",(0,a.jsx)(s.h3,{id:"ping",children:"Ping"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method Ping() As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"This function is used to prevent an autologout timer from expiring or to determine if the server is still functioning on the connection."}),"\n",(0,a.jsx)(s.h3,{id:"onclose",children:"%OnClose"}),"\n",(0,a.jsx)(s.pre,{children:(0,a.jsx)(s.code,{className:"language-objectscript-class",children:"Method %OnClose() As %Status\n"})}),"\n",(0,a.jsx)(s.p,{children:"Protect against terminating without doing a quit"})]})}function c(e={}){const{wrapper:s}={...(0,n.R)(),...e.components};return s?(0,a.jsx)(s,{...e,children:(0,a.jsx)(o,{...e})}):o(e)}},28453:(e,s,t)=>{t.d(s,{R:()=>r,x:()=>l});var a=t(96540);const n={},i=a.createContext(n);function r(e){const s=a.useContext(i);return a.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function l(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(n):e.components||n:r(e.components),a.createElement(i.Provider,{value:s},e.children)}}}]);