(this["webpackJsonpvuexy-react-admin-dashboard"]=this["webpackJsonpvuexy-react-admin-dashboard"]||[]).push([[33],{404:function(e,t,a){"use strict";a.r(t);var c=a(19),n=a(6),s=a(11),r=a(7),i=a(1),o=a(121),l=a(51),u=a(49),b=a(5),j=a(43),d=a(125),h=a(124),O=a(126),f=a(50),m=a.n(f),p=a(123),v=a(52),g=a(10);t.default=function(){var e=Object(u.b)(),t=Object(u.c)((function(e){return e.auth})),a=Object(b.l)(),f=Object(i.useState)(!1),x=Object(r.a)(f,2),k=x[0],T=x[1],w=Object(i.useState)(null),y=Object(r.a)(w,2),P=y[0],S=y[1],J=Object(i.useState)(""),N=Object(r.a)(J,2),z=N[0],B=N[1],C=d.e().shape({file:d.g().required()}),D=Object(h.f)({mode:"onChange",resolver:Object(O.a)(C),defaultValues:{file:""}}),G=D.control,L=D.formState.errors,q=D.handleSubmit,A=D.reset,E=o.a.create();E.interceptors.request.use(function(){var a=Object(s.a)(Object(n.a)().mark((function a(c){var s,r,i;return Object(n.a)().wrap((function(a){for(;;)switch(a.prev=a.next){case 0:if(a.prev=0,!(1e3*(null===t||void 0===t||null===(s=t.user)||void 0===s?void 0:s.exp)<Date.now()||""===t.accessToken)&&t.accessToken){a.next=11;break}return a.next=4,o.a.get(p.b.token);case 4:r=a.sent,c.headers.Authorization="Bearer ".concat(r.data.accessToken),i=Object(l.a)(r.data.accessToken),e(Object(v.b)(r.data.accessToken)),e(Object(v.c)(i)),a.next=12;break;case 11:c.headers.Authorization="Bearer ".concat(t.accessToken);case 12:a.next=16;break;case 14:a.prev=14,a.t0=a.catch(0);case 16:return a.prev=16,a.abrupt("return",c);case 19:case"end":return a.stop()}}),a,null,[[0,14,16,19]])})));return function(e){return a.apply(this,arguments)}}(),(function(e){return Promise.reject(e)})),Object(i.useEffect)((function(){var c;(""===t.accessToken||!t.accessToken||1e3*(null===(c=t.user)||void 0===c?void 0:c.exp)<Date.now())&&o.a.get(p.b.token).then((function(t){var a=t.data,c=Object(l.a)(a.accessToken);e(Object(v.b)(a.accessToken)),e(Object(v.c)(c))})).catch((function(e){console.log(e),a("/auth/login")}))}),[]);return Object(g.jsx)("div",{children:Object(g.jsx)(j.h,{children:Object(g.jsxs)(j.i,{children:[Object(g.jsx)(j.n,{tag:"h4",className:"mb-1",children:"Photo Profile"}),Object(g.jsxs)(j.t,{onSubmit:q((function(){T(!0);var t=new FormData;t.append("file",P),E.post("".concat(p.a,"/user/image"),t,{headers:{"content-type":"multipart/form-data"}}).then((function(t){var a=t.data,c=Object(l.a)(a.accessToken);e(Object(v.b)(a.accessToken)),e(Object(v.c)(c)),T(!1),S(null),B(""),A(),m.a.success(a.message)})).catch((function(e){var t,a;T(!1),m.a.error(null===e||void 0===e||null===(t=e.response)||void 0===t||null===(a=t.data)||void 0===a?void 0:a.message)}))})),children:[Object(g.jsx)("div",{className:"mb-1",children:Object(g.jsxs)(j.J,{children:[Object(g.jsx)(j.o,{sm:"3",children:Object(g.jsx)("img",{src:P?z:"".concat(p.a,"/image/").concat(t.user.image),alt:"File",className:"img-thumbnail",crossOrigin:"use-credentials"})}),Object(g.jsxs)(j.o,{sm:"9",children:[Object(g.jsx)("p",{children:"Photo ini berfungsi untuk gambar profile di web dan gambar di menu bot"}),Object(g.jsx)("p",{children:"Maximal size gambar adalah 512KB dan berekstensi JPG, JPEG, PNG"}),Object(g.jsx)(j.w,{children:Object(g.jsx)(h.a,{id:"file",name:"file",control:G,render:function(e){var t=e.field;return Object(g.jsx)(j.v,Object(c.a)(Object(c.a)({},t),{},{type:"file",accept:"image/*",placeholder:"file",onChange:function(e){!function(e){e.target.files.length?(S(e.target.files[0]),B(URL.createObjectURL(e.target.files[0]))):S(null)}(e),t.onChange(e)},invalid:L.file&&!0}))}})}),L.file&&Object(g.jsx)(j.u,{children:L.file.message})]})]})}),k?Object(g.jsxs)(j.f,{variant:"primary",disabled:!0,children:[Object(g.jsx)(j.K,{as:"span",animation:"grow",size:"sm",role:"status","aria-hidden":"true"})," ","Loading..."]}):Object(g.jsx)(j.f,{type:"submit",color:"primary",className:"me-1",children:"Submit"})]})]})})})}}}]);
//# sourceMappingURL=33.16d4eead.chunk.js.map