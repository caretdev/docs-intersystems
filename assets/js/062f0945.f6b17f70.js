"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[63501],{95552:(e,s,n)=>{n.r(s),n.d(s,{contentTitle:()=>a,default:()=>l,frontMatter:()=>i,toc:()=>o});var r=n(74848),t=n(28453);const i={pagination_prev:null,pagination_next:null},a="%SYSTEM.Event",o=[{value:"Methods",id:"methods",level:2},{value:"Create",id:"create",level:3},{value:"Wait",id:"wait",level:3},{value:"WaitMsg",id:"waitmsg",level:3},{value:"Signal",id:"signal",level:3},{value:"Clear",id:"clear",level:3},{value:"Count",id:"count",level:3},{value:"Delete",id:"delete",level:3},{value:"Defined",id:"defined",level:3},{value:"List",id:"list",level:3},{value:"ListClose",id:"listclose",level:3},{value:"ListExecute",id:"listexecute",level:3},{value:"ListFetch",id:"listfetch",level:3}];function c(e){const s={blockquote:"blockquote",code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",strong:"strong",ul:"ul",...(0,t.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(s.header,{children:(0,r.jsx)(s.h1,{id:"systemevent",children:"%SYSTEM.Event"})}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"Class %SYSTEM.Event Extends Help [ Not ProcedureBlock, System = 4 ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"The %SYSTEM.Event class provides an interface to the Event API."}),"\n  \n",(0,r.jsx)(s.p,{children:(0,r.jsx)(s.strong,{children:"Event Queueing in InterSystems IRIS"})}),"\n",(0,r.jsx)(s.p,{children:(0,r.jsx)(s.strong,{children:"Overview"})}),"\n",(0,r.jsx)(s.p,{children:'This feature allows processes to go to sleep waiting for a wakeup event for some resource. That "resource" can either be a "Named Resource" which can be used to queue multiple processes - one of which will be awakened for each wakeup event - or a Process ID Resource.'}),"\n",(0,r.jsx)(s.p,{children:"There are 2 types of resources on which processes can be queued for events:"}),"\n",(0,r.jsxs)(s.blockquote,{children:["\n",(0,r.jsxs)(s.ul,{children:["\n",(0,r.jsx)(s.li,{children:"Named resources (which may be either a name or a global reference and are explicitly created and deleted), and"}),"\n",(0,r.jsx)(s.li,{children:"Process ids (one of which implicitly exists for each process)"}),"\n"]}),"\n"]}),"\n",(0,r.jsx)(s.p,{children:"A process can wait on any Named Resource or on its own Process Id, but not on some other process' process id. A process can issue a wakeup to any resource."}),"\n",(0,r.jsx)(s.p,{children:"There are fundamentally 4 operations on resources:"}),"\n",(0,r.jsxs)(s.blockquote,{children:["\n",(0,r.jsxs)(s.ul,{children:["\n",(0,r.jsx)(s.li,{children:"Create a resource (Named Resources only),"}),"\n",(0,r.jsx)(s.li,{children:"Wait on a resource,"}),"\n",(0,r.jsx)(s.li,{children:"Issue a Wakeup event for that resource, and"}),"\n",(0,r.jsx)(s.li,{children:"Delete the resource (Named Resources only)."}),"\n"]}),"\n"]}),"\n",(0,r.jsx)(s.p,{children:"For both types of resources, when a wakeup call is issued, it either: a) wakes one of the processes that was waiting on that resource, or, if no-one was waiting, it b) queues up a wakeup for that resource so that as soon as a process tries to wait on that resource it immediately gets awakened. Thus wakeups can be queued prior to someone actually going to sleep on the resource."}),"\n",(0,r.jsx)(s.p,{children:"There is a one-to-one correspondence between wakeup events and process wakeups. E.g. if 5 processes are waiting for a Named Resource and 3 wakeup events occur for that resource, 3 of the processes will be issued wakeups. Similarly, if only one process ever waits on a particular resource and while the process is working on the result of one wakeup event 3 other wakeup events are queued for it, the next 3 calls by that process to the wait function for that resource will result in the process immediately continuing."}),"\n",(0,r.jsx)(s.p,{children:"When multiple processes are waiting on a Named Resource there is no guarantee as to which one will be awakened next. (Note only one process can wait on a given Process ID since only the process with that PID can wait on it.)"}),"\n",(0,r.jsx)(s.p,{children:"If a wait is issued for a resource that doesn't exist, it is an error."}),"\n",(0,r.jsx)(s.p,{children:"If a wakeup is issued for a resource that doesn't exist or for a non-existent PID, a 0 is returned to the caller."}),"\n",(0,r.jsx)(s.p,{children:"There is no networking support for these functions - processes can only wait on and awaken resources on the same system."}),"\n",(0,r.jsx)(s.p,{children:(0,r.jsx)(s.strong,{children:"Named Resources"})}),"\n",(0,r.jsx)(s.p,{children:'A "Named Resource" gets "created" by a system call and thereafter one or more processes can wait on that resource for "wakeup" events for that resource.'}),"\n",(0,r.jsx)(s.p,{children:"Once a Named Resource is created, it continues in existence until either it is explicitly deleted or the system is shutdown. Thus these resources survive process termination."}),"\n",(0,r.jsx)(s.p,{children:'A "Named Resource" is a string representation of a valid identifier. The syntax of the identifier is identical to the lock command.'}),"\n",(0,r.jsx)(s.p,{children:(0,r.jsx)(s.strong,{children:"Process ID Resources"})}),"\n",(0,r.jsx)(s.p,{children:'"Process ID Resources" are system-wide values corresponding to process identifiers (value of $J) for cache processes. They are automatically created when a process is created and automatically deleted when a process exits. A process may wait only on its own process identifier.'}),"\n",(0,r.jsx)(s.p,{children:"In the Methods below, ResourceName must be in $name format, or else a FUNCTION error is returned."}),"\n",(0,r.jsx)(s.h2,{id:"methods",children:"Methods"}),"\n",(0,r.jsx)(s.h3,{id:"create",children:"Create"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Create(ResourceName As %String) As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Create a Named Resource."}),"\n",(0,r.jsx)(s.p,{children:"ResourceName is a Named Resource, e.g. 'Lab', '^Queue(\"main\")', etc."}),"\n",(0,r.jsx)(s.p,{children:"Returns 0 if there was already a Named Resource by that name (in which case this function is ignored), else creates it and returns 1."}),"\n",(0,r.jsx)(s.h3,{id:"wait",children:"Wait"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Wait(ResourceName As %String = NULL, timeout As %Decimal = -1) As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Wait on a resource."}),"\n",(0,r.jsx)(s.p,{children:"Resource, if present, is the name of a Named Resource or a null string. The default value for Resource is the null string. A null string for Resource means wait on my Process ID resource."}),"\n",(0,r.jsx)(s.p,{children:"The timeout is identical to the lock command timeout, and affects the timeout in the same way (e.g., it can be integer or decimal values, it can be down to 100th seconds). The default value of timeout is -1."}),"\n",(0,r.jsx)(s.p,{children:"An attempt to wait on a resource that doesn't exist is an error (ERUNDEF)."}),"\n",(0,r.jsx)(s.p,{children:"Return value:"}),"\n",(0,r.jsxs)(s.ul,{children:["\n",(0,r.jsx)(s.li,{children:"-1 implies a delete of the resource occurred while we were waiting"}),"\n",(0,r.jsx)(s.li,{children:"0 implies a timeout occurred"}),"\n",(0,r.jsx)(s.li,{children:"1 implies we were awakened due to a wakeup event"}),"\n"]}),"\n",(0,r.jsx)(s.h3,{id:"waitmsg",children:"WaitMsg"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod WaitMsg(ResourceName As %String = NULL, timeout As %Numeric = -1) As %List [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Wait on a resource and receive a message."}),"\n",(0,r.jsx)(s.p,{children:"Identical to Event.Wait() except a string is returned along with the return code. See Signal()."}),"\n",(0,r.jsx)(s.p,{children:"Returns a $LIST item:"}),"\n",(0,r.jsxs)(s.ul,{children:["\n",(0,r.jsx)(s.li,{children:"Item #1 is the return code, identical to Wait()."}),"\n",(0,r.jsx)(s.li,{children:"Item #2 is the string sent with the signal (a null string if no message was sent)."}),"\n"]}),"\n",(0,r.jsx)(s.h3,{id:"signal",children:"Signal"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Signal(ResourceName As %String, Message As %String) As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Wakeup a process waiting for a resource."}),"\n",(0,r.jsx)(s.p,{children:"Enqueues a wakeup event for a resource. Resource may be either a Named Resource or a Process ID Resource. If it is a Process ID Resource, the target process' PID is used (i.e. $J of the process to be awakened - which must be an integer value.)"}),"\n",(0,r.jsx)(s.p,{children:"A return value of 1 implies success."}),"\n",(0,r.jsx)(s.p,{children:"If the resource does not exist, a Named Resource gives an error (ERUNDEF), while a Process ID Resource gives a return code of 0"}),"\n",(0,r.jsx)(s.p,{children:"An optional message may be sent with the signal, and received via WaitMsg. If the first process to receive the signal uses Wait(), the message is discarded."}),"\n",(0,r.jsx)(s.h3,{id:"clear",children:"Clear"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Clear(ResourceName As %String) As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Clear wakeup events."}),"\n",(0,r.jsx)(s.p,{children:"Sets the number of queued wakeup events for a resource to 0."}),"\n",(0,r.jsx)(s.p,{children:"Resource may be either a Named Resource or a Process ID Resource. If it is a Process ID Resource, the target process' PID is used (i.e. $J of the process to be awakened - which must be an integer value.)"}),"\n",(0,r.jsx)(s.p,{children:"A return value of 1 implies success."}),"\n",(0,r.jsx)(s.p,{children:"If the resource does not exist, a Named Resource gives an error (ERUNDEF), while a Process ID Resource gives a return code of 0"}),"\n",(0,r.jsx)(s.h3,{id:"count",children:"Count"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Count(ResourceName As %String) As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Count wakeup events."}),"\n",(0,r.jsx)(s.p,{children:"Resource may be either a Named Resource or a Process ID Resource. If it is a Process ID Resource, the target process' PID is used (i.e. $J of the process to be awakened - which must be an integer value.)"}),"\n",(0,r.jsx)(s.p,{children:"The return value is the current count of queued wakeup events for that resource."}),"\n",(0,r.jsx)(s.p,{children:"If the resource does not exist, a Named Resource gives an error (ERUNDEF), while a Process ID Resource gives a return code of -1"}),"\n",(0,r.jsx)(s.h3,{id:"delete",children:"Delete"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Delete(ResourceName As %String) As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Delete a Named Resource."}),"\n",(0,r.jsx)(s.p,{children:"The Named Resource is deleted and a value of 1 is returned, otherwise 0 is returned."}),"\n",(0,r.jsx)(s.p,{children:"Any processes that were waiting on the resource when it was deleted are awakened with a return code of -1."}),"\n",(0,r.jsx)(s.h3,{id:"defined",children:"Defined"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod Defined(ResourceName As %String) As %Integer [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Test if a Named Resource has been created."}),"\n",(0,r.jsx)(s.p,{children:"ResourceName is a Named Resource, e.g. 'Lab', '^Queue(\"main\")', etc."}),"\n",(0,r.jsx)(s.p,{children:"Returns 1 if there is a Named Resource by that name, else returns 0."}),"\n",(0,r.jsx)(s.h3,{id:"list",children:"List"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod List() As %List [ CodeMode = expression ]\n"})}),"\n",(0,r.jsx)(s.p,{children:"Returns a list of all the Named Resources currently defined."}),"\n",(0,r.jsx)(s.h3,{id:"listclose",children:"ListClose"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"listexecute",children:"ListExecute"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListExecute(ByRef qHandle As %Binary) As %Status [ Internal ]\n"})}),"\n",(0,r.jsx)(s.h3,{id:"listfetch",children:"ListFetch"}),"\n",(0,r.jsx)(s.pre,{children:(0,r.jsx)(s.code,{className:"language-objectscript-class",children:"ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]\n"})})]})}function l(e={}){const{wrapper:s}={...(0,t.R)(),...e.components};return s?(0,r.jsx)(s,{...e,children:(0,r.jsx)(c,{...e})}):c(e)}},28453:(e,s,n)=>{n.d(s,{R:()=>a,x:()=>o});var r=n(96540);const t={},i=r.createContext(t);function a(e){const s=r.useContext(i);return r.useMemo((function(){return"function"==typeof e?e(s):{...s,...e}}),[s,e])}function o(e){let s;return s=e.disableParentContext?"function"==typeof e.components?e.components(t):e.components||t:a(e.components),r.createElement(i.Provider,{value:s},e.children)}}}]);