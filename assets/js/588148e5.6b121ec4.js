"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[32427],{14907:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>a,default:()=>o,frontMatter:()=>l,toc:()=>r});var c=n(74848),s=n(28453);const l={pagination_prev:null,pagination_next:null},a="%Net.Cloud.Storage.AmazonS3Client",r=[{value:"Methods",id:"methods",level:2},{value:"GetS3AccountId",id:"gets3accountid",level:3},{value:"CreateAcl",id:"createacl",level:3},{value:"PutObjectFromString",id:"putobjectfromstring",level:3},{value:"PutObjectFromFile",id:"putobjectfromfile",level:3},{value:"PutObjectFromStream",id:"putobjectfromstream",level:3},{value:"GetBucketAcl",id:"getbucketacl",level:3},{value:"GetObjectAcl",id:"getobjectacl",level:3},{value:"SetBucketAcl",id:"setbucketacl",level:3},{value:"SetObjectAcl",id:"setobjectacl",level:3},{value:"GrantCanonicalPermission",id:"grantcanonicalpermission",level:3},{value:"GrantEmailPermission",id:"grantemailpermission",level:3},{value:"GetObjectMetadata",id:"getobjectmetadata",level:3},{value:"CreateBucketWithAcl",id:"createbucketwithacl",level:3}];function i(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",li:"li",p:"p",pre:"pre",ul:"ul",...(0,s.R)(),...e.components};return(0,c.jsxs)(c.Fragment,{children:[(0,c.jsx)(t.header,{children:(0,c.jsx)(t.h1,{id:"netcloudstorageamazons3client",children:"%Net.Cloud.Storage.AmazonS3Client"})}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Net.Cloud.Storage.AmazonS3Client Extends Client\n"})}),"\n",(0,c.jsx)(t.h2,{id:"methods",children:"Methods"}),"\n",(0,c.jsx)(t.h3,{id:"gets3accountid",children:"GetS3AccountId"}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetS3AccountId() As %String\n"})}),"\n",(0,c.jsx)(t.p,{children:"Get AWS S3 account id"}),"\n",(0,c.jsx)(t.h3,{id:"createacl",children:"CreateAcl"}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:'Method CreateAcl(ownerId As %String = "", ownerDisplayName As %String = "") As %Net.Remote.Object\n'})}),"\n",(0,c.jsx)(t.p,{children:"Create an S3 AccessControlList object from scratch"}),"\n",(0,c.jsx)(t.h3,{id:"putobjectfromstring",children:"PutObjectFromString"}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:'Method PutObjectFromString(bucketName As %String, keyName As %String, content As %String, customHeaders As %ArrayOfDataTypes = "", sse As %Boolean = 1, acl As %String = "") As %String\n'})}),"\n",(0,c.jsx)(t.p,{children:"Upload a String object to the cloud"}),"\n",(0,c.jsxs)(t.ul,{children:["\n",(0,c.jsx)(t.li,{children:"bucketName: Bucket name"}),"\n",(0,c.jsx)(t.li,{children:"keyName: Object key name"}),"\n",(0,c.jsx)(t.li,{children:"content: String content of the object"}),"\n",(0,c.jsx)(t.li,{children:"customHeaders: Custom header name value pairs"}),"\n",(0,c.jsx)(t.li,{children:"sse: Server side encryption flag"}),"\n",(0,c.jsx)(t.li,{children:"acl: Canned ACL value. Possible values: AuthenticatedRead, AwsExecRead, BucketOwnerFullControl, BucketOwnerRead, LogDeliveryWrite, Private, PublicRead, PublicReadWrite\nReturn json representation of S3 PutObjectResult"}),"\n"]}),"\n",(0,c.jsx)(t.h3,{id:"putobjectfromfile",children:"PutObjectFromFile"}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:'Method PutObjectFromFile(bucketName As %String, keyName As %String, filePath As %String, customHeaders As %ArrayOfDataTypes = "", sse As %Boolean = 1, acl As %String = "") As %String\n'})}),"\n",(0,c.jsx)(t.p,{children:"Upload a File object to the cloud"}),"\n",(0,c.jsxs)(t.ul,{children:["\n",(0,c.jsx)(t.li,{children:"bucketName: Bucket name"}),"\n",(0,c.jsx)(t.li,{children:"keyName: Object key name"}),"\n",(0,c.jsx)(t.li,{children:"filePath: File name with path"}),"\n",(0,c.jsx)(t.li,{children:"customHeaders: Custom header name value pairs"}),"\n",(0,c.jsx)(t.li,{children:"sse: Server side encryption flag"}),"\n",(0,c.jsx)(t.li,{children:"acl: Canned ACL value. Possible values: AuthenticatedRead, AwsExecRead, BucketOwnerFullControl, BucketOwnerRead, LogDeliveryWrite, Private, PublicRead, PublicReadWrite\nReturn json representation of S3 PutObjectResult"}),"\n"]}),"\n",(0,c.jsx)(t.h3,{id:"putobjectfromstream",children:"PutObjectFromStream"}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:'Method PutObjectFromStream(bucketName As %String, keyName As %String, stream As %Stream.Object, customHeaders As %ArrayOfDataTypes = "", sse As %Boolean = 1, acl As %String = "") As %String\n'})}),"\n",(0,c.jsx)(t.p,{children:"Upload IRIS binary or character stream object to the cloud"}),"\n",(0,c.jsxs)(t.ul,{children:["\n",(0,c.jsx)(t.li,{children:"bucketName: Bucket name"}),"\n",(0,c.jsx)(t.li,{children:"keyName: Object key name"}),"\n",(0,c.jsx)(t.li,{children:"stream: IRIS stream object to be uploaded. A character stream will be converted to a binary stream with UTF-8 encoding."}),"\n",(0,c.jsx)(t.li,{children:"customHeaders: Custom header name value pairs"}),"\n",(0,c.jsx)(t.li,{children:"sse: Server side encryption flag"}),"\n",(0,c.jsx)(t.li,{children:"acl: Canned ACL value. Possible values: AuthenticatedRead, AwsExecRead, BucketOwnerFullControl, BucketOwnerRead, LogDeliveryWrite, Private, PublicRead, PublicReadWrite\nReturn json representation of S3 PutObjectResult"}),"\n"]}),"\n",(0,c.jsx)(t.h3,{id:"getbucketacl",children:"GetBucketAcl"}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetBucketAcl(bucketName As %String) As %Net.Remote.Object\n"})}),"\n",(0,c.jsx)(t.p,{children:"Get bucket access control list"}),"\n",(0,c.jsxs)(t.ul,{children:["\n",(0,c.jsx)(t.li,{children:"bucketName: Bucket name\nReturn ACL ACL Java object"}),"\n"]}),"\n",(0,c.jsx)(t.h3,{id:"getobjectacl",children:"GetObjectAcl"}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetObjectAcl(bucketName As %String, keyName As %String) As %Net.Remote.Object\n"})}),"\n",(0,c.jsx)(t.p,{children:"Get object access control list"}),"\n",(0,c.jsxs)(t.ul,{children:["\n",(0,c.jsx)(t.li,{children:"bucketName: Bucket name"}),"\n",(0,c.jsx)(t.li,{children:"keyName: Object key name\nReturn an ACL Java object"}),"\n"]}),"\n",(0,c.jsx)(t.h3,{id:"setbucketacl",children:"SetBucketAcl"}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:"Method SetBucketAcl(bucketName As %String, acl As %Net.Remote.Object) As %Net.Remote.Object\n"})}),"\n",(0,c.jsx)(t.p,{children:"Set bucket access control list"}),"\n",(0,c.jsxs)(t.ul,{children:["\n",(0,c.jsx)(t.li,{children:"bucketName: Bucket name"}),"\n",(0,c.jsx)(t.li,{children:"acl: acl Java object"}),"\n"]}),"\n",(0,c.jsx)(t.h3,{id:"setobjectacl",children:"SetObjectAcl"}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:"Method SetObjectAcl(bucketName As %String, keyName As %String, acl As %Net.Remote.Object) As %Net.Remote.Object\n"})}),"\n",(0,c.jsx)(t.p,{children:"Set object access control list"}),"\n",(0,c.jsxs)(t.ul,{children:["\n",(0,c.jsx)(t.li,{children:"bucketName: Bucket name"}),"\n",(0,c.jsx)(t.li,{children:"keyName: Object key name"}),"\n",(0,c.jsx)(t.li,{children:"acl: ACL Java object"}),"\n"]}),"\n",(0,c.jsx)(t.h3,{id:"grantcanonicalpermission",children:"GrantCanonicalPermission"}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:"Method GrantCanonicalPermission(acl As %Net.Remote.Object, id As %String, permission As %String)\n"})}),"\n",(0,c.jsx)(t.p,{children:"Possible permission values: FullControl, Read, ReadAcp, Write, WriteAcp"}),"\n",(0,c.jsx)(t.h3,{id:"grantemailpermission",children:"GrantEmailPermission"}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:"Method GrantEmailPermission(acl As %Net.Remote.Object, email As %String, permission As %String)\n"})}),"\n",(0,c.jsx)(t.p,{children:"Possible permission values: FullControl, Read, ReadAcp, Write, WriteAcp"}),"\n",(0,c.jsx)(t.h3,{id:"getobjectmetadata",children:"GetObjectMetadata"}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:"Method GetObjectMetadata(bucketName As %String, keyName As %String) As %String\n"})}),"\n",(0,c.jsx)(t.p,{children:"Get object metadata"}),"\n",(0,c.jsxs)(t.ul,{children:["\n",(0,c.jsx)(t.li,{children:"bucketName: Bucket name"}),"\n",(0,c.jsx)(t.li,{children:"keyName: Object key name\nReturn json representation of ObjectMetadata"}),"\n"]}),"\n",(0,c.jsx)(t.h3,{id:"createbucketwithacl",children:"CreateBucketWithAcl"}),"\n",(0,c.jsx)(t.pre,{children:(0,c.jsx)(t.code,{className:"language-objectscript-class",children:'Method CreateBucketWithAcl(bucketName As %String, region As %String = "")\n'})}),"\n",(0,c.jsx)(t.p,{children:"Create a bucket with default canned ACL that the bucket owner is granted full control"}),"\n",(0,c.jsxs)(t.ul,{children:["\n",(0,c.jsx)(t.li,{children:"bucketName: Bucket name"}),"\n",(0,c.jsx)(t.li,{children:"region: Region name"}),"\n"]})]})}function o(e={}){const{wrapper:t}={...(0,s.R)(),...e.components};return t?(0,c.jsx)(t,{...e,children:(0,c.jsx)(i,{...e})}):i(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>a,x:()=>r});var c=n(96540);const s={},l=c.createContext(s);function a(e){const t=c.useContext(l);return c.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function r(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(s):e.components||s:a(e.components),c.createElement(l.Provider,{value:t},e.children)}}}]);