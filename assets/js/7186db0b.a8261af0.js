"use strict";(self.webpackChunkdocs_intersystems=self.webpackChunkdocs_intersystems||[]).push([[86085],{19105:(e,t,n)=>{n.r(t),n.d(t,{contentTitle:()=>a,default:()=>c,frontMatter:()=>s,toc:()=>o});var r=n(74848),i=n(28453);const s={pagination_prev:null,pagination_next:null},a="%Library.Embedding",o=[{value:"Parameters",id:"parameters",level:2},{value:"MODEL",id:"model",level:3},{value:"SOURCE",id:"source",level:3}];function d(e){const t={code:"code",h1:"h1",h2:"h2",h3:"h3",header:"header",p:"p",pre:"pre",...(0,i.R)(),...e.components};return(0,r.jsxs)(r.Fragment,{children:[(0,r.jsx)(t.header,{children:(0,r.jsx)(t.h1,{id:"libraryembedding",children:"%Library.Embedding"})}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Class %Library.Embedding Extends %Library.Vector\n"})}),"\n",(0,r.jsx)(t.p,{children:'%Library.Embedding datatype is a subclass of %Library.Vector with DATATYPE="DOUBLE"'}),"\n",(0,r.jsx)(t.p,{children:"The value stored in this property is a $vector. The IRIS engine keeps this embedding updated based on 'SOURCE' properties as these source property items are modified. The property value will be computed/recompiled when the record is saved as needed."}),"\n",(0,r.jsx)(t.p,{children:"%Library.Embedding has the following property parameters:"}),"\n",(0,r.jsx)(t.p,{children:"MODEL - Name of the embedding endpoint to use to construct embedding from the embedding endpoints table"}),"\n",(0,r.jsx)(t.p,{children:"SOURCE - Comma separated list of property names of other properties in this class which are used as the source values for calculating the embedding. Names can be quoted with ' character to handle cases where referenced property name contains ',' characters. If a property referenced in this list does not exist it will throw a compile-time error. Wild card '*' indicator is supported and any name prefixed by '-' will remove this specific property from the list."}),"\n",(0,r.jsx)(t.p,{children:"The LEN property parameter will be read from the MODEL embedding endpoint table and inserted as a property parameter automatically, so the user does not need to specify this explicitly. This means the LEN becomes fixed at compile-time based on the endpoint table value for length."}),"\n",(0,r.jsx)(t.p,{children:"If none of the SOURCE properties are modified, and this is an update to an existing %Persistent instance we will not recompile the embedding value when this instance is saved."}),"\n",(0,r.jsx)(t.p,{children:"When a new embedding needs to be computed, a dynamic object based on the SOURCE properties will be constructued with the key being the property name and the value being the data value that is passed to the endpoint interfaces 'Embedding' or 'EmbeddingList' along with the MODEL endpoint name and the configuration information read from the endpoint table."}),"\n",(0,r.jsx)(t.p,{children:"Example:"}),"\n",(0,r.jsx)(t.p,{children:(0,r.jsx)(t.code,{children:"property MyEmbed as %Embedding(MODEL='text-embedding-3-small', SOURCE='Description,Name');"})}),"\n",(0,r.jsx)(t.p,{children:"This definition generates ComputeOnChange logic for Description and Name properties of this class to update this property by calling the 'Embedding' method of the endpoint interface class when either of these change. It stores a single embedding value for the description, name no matter how long these fields are. To handle multiple embeddings, we also support the 'list of' collection syntax:"}),"\n",(0,r.jsx)(t.p,{children:(0,r.jsx)(t.code,{children:"property MyEmbed as List Of %Embedding(MODEL='text-embedding-3-small', SOURCE='Description,Name');"})}),"\n",(0,r.jsx)(t.p,{children:"This calls the 'EmbeddingList' method of the endpoint interface class and stores the list of embeddings that are returned. This list collection will be projected to SQL as a child table to allow JOIN queries between the embeddings and the parent table."}),"\n",(0,r.jsx)(t.h2,{id:"parameters",children:"Parameters"}),"\n",(0,r.jsx)(t.h3,{id:"model",children:"MODEL"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter MODEL As STRING;\n"})}),"\n",(0,r.jsx)(t.p,{children:"Name of embedding endpoint to use to construct embedding from the embedding endpoints table"}),"\n",(0,r.jsx)(t.h3,{id:"source",children:"SOURCE"}),"\n",(0,r.jsx)(t.pre,{children:(0,r.jsx)(t.code,{className:"language-objectscript-class",children:"Parameter SOURCE As STRING;\n"})}),"\n",(0,r.jsx)(t.p,{children:"Comma separated list of property names of other properties in this class which are used as the source values for calculating the embedding. Names can be quoted with ' character to handle case where referenced property name contains ',' characters. If a property referenced in this list does not exist it will throw a compile time error. Wild card '*' indicator is supported and any name prefixed by '-' will remove this specific property from the list."})]})}function c(e={}){const{wrapper:t}={...(0,i.R)(),...e.components};return t?(0,r.jsx)(t,{...e,children:(0,r.jsx)(d,{...e})}):d(e)}},28453:(e,t,n)=>{n.d(t,{R:()=>a,x:()=>o});var r=n(96540);const i={},s=r.createContext(i);function a(e){const t=r.useContext(s);return r.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(i):e.components||i:a(e.components),r.createElement(s.Provider,{value:t},e.children)}}}]);