<%--
  Created by IntelliJ IDEA.
  User: Nikitos
  Date: 05.01.2021
  Time: 02:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:setLocale value="${sessionScope.language}"/>
<fmt:setBundle basename="locale" var="locale"/>
<fmt:message bundle="${locale}" key="locale.siteName" var="siteName"/>
<div class="col-sm-2 sidenav" style="padding-left: 0px;">
    <script type="text/javascript">
        (function(f,g,c,j,d,l,k){/*! Jssor */
            new(function(){});var e={Sd:function(a){return-c.cos(a*c.PI)/2+.5},Jd:function(a){return a},gd:function(a){return-a*(a-2)}};var b=new function(){var h=this,Ab=/\S+/g,F=1,yb=2,fb=3,eb=4,jb=5,G,r=0,i=0,s=0,X=0,z=0,I=navigator,ob=I.appName,o=I.userAgent,p=parseFloat;function Ib(){if(!G){G={Ce:"ontouchstart"in f||"createTouch"in g};var a;if(I.pointerEnabled||(a=I.msPointerEnabled))G.ed=a?"msTouchAction":"touchAction"}return G}function v(j){if(!r){r=-1;if(ob=="Microsoft Internet Explorer"&&!!f.attachEvent&&!!f.ActiveXObject){var e=o.indexOf("MSIE");r=F;s=p(o.substring(e+5,o.indexOf(";",e)));/*@cc_on X=@_jscript_version@*/;i=g.documentMode||s}else if(ob=="Netscape"&&!!f.addEventListener){var d=o.indexOf("Firefox"),b=o.indexOf("Safari"),h=o.indexOf("Chrome"),c=o.indexOf("AppleWebKit");if(d>=0){r=yb;i=p(o.substring(d+8))}else if(b>=0){var k=o.substring(0,b).lastIndexOf("/");r=h>=0?eb:fb;i=p(o.substring(k+1,b))}else{var a=/Trident\/.*rv:([0-9]{1,}[\.0-9]{0,})/i.exec(o);if(a){r=F;i=s=p(a[1])}}if(c>=0)z=p(o.substring(c+12))}else{var a=/(opera)(?:.*version|)[ \/]([\w.]+)/i.exec(o);if(a){r=jb;i=p(a[2])}}}return j==r}function q(){return v(F)}function Q(){return q()&&(i<6||g.compatMode=="BackCompat")}function db(){return v(fb)}function ib(){return v(jb)}function vb(){return db()&&z>534&&z<535}function J(){v();return z>537||i>42||r==F&&i>=11}function O(){return q()&&i<9}function wb(a){var b,c;return function(f){if(!b){b=d;var e=a.substr(0,1).toUpperCase()+a.substr(1);n([a].concat(["WebKit","ms","Moz","O","webkit"]),function(g,d){var b=a;if(d)b=g+e;if(f.style[b]!=k)return c=b})}return c}}function ub(b){var a;return function(c){a=a||wb(b)(c)||b;return a}}var K=ub("transform");function nb(a){return{}.toString.call(a)}var kb={};n(["Boolean","Number","String","Function","Array","Date","RegExp","Object"],function(a){kb["[object "+a+"]"]=a.toLowerCase()});function n(b,d){var a,c;if(nb(b)=="[object Array]"){for(a=0;a<b.length;a++)if(c=d(b[a],a,b))return c}else for(a in b)if(c=d(b[a],a,b))return c}function C(a){return a==j?String(a):kb[nb(a)]||"object"}function lb(a){for(var b in a)return d}function A(a){try{return C(a)=="object"&&!a.nodeType&&a!=a.window&&(!a.constructor||{}.hasOwnProperty.call(a.constructor.prototype,"isPrototypeOf"))}catch(b){}}function u(a,b){return{x:a,y:b}}function rb(b,a){setTimeout(b,a||0)}function H(b,d,c){var a=!b||b=="inherit"?"":b;n(d,function(c){var b=c.exec(a);if(b){var d=a.substr(0,b.index),e=a.substr(b.index+b[0].length+1,a.length-1);a=d+e}});a=c+(!a.indexOf(" ")?"":" ")+a;return a}function tb(b,a){if(i<9)b.style.filter=a}h.ze=Ib;h.fd=q;h.nd=db;h.De=J;wb("transform");h.Fc=function(){return i};h.pc=rb;function Y(a){a.constructor===Y.caller&&a.oc&&a.oc.apply(a,Y.caller.arguments)}h.oc=Y;h.yb=function(a){if(h.we(a))a=g.getElementById(a);return a};function t(a){return a||f.event}h.nc=t;h.Hb=function(b){b=t(b);var a=b.target||b.srcElement||g;if(a.nodeType==3)a=h.kc(a);return a};h.jc=function(a){a=t(a);return{x:a.pageX||a.clientX||0,y:a.pageY||a.clientY||0}};function D(c,d,a){if(a!==k)c.style[d]=a==k?"":a;else{var b=c.currentStyle||c.style;a=b[d];if(a==""&&f.getComputedStyle){b=c.ownerDocument.defaultView.getComputedStyle(c,j);b&&(a=b.getPropertyValue(d)||b[d])}return a}}function ab(b,c,a,d){if(a!==k){if(a==j)a="";else d&&(a+="px");D(b,c,a)}else return p(D(b,c))}function m(c,a){var d=a?ab:D,b;if(a&4)b=ub(c);return function(e,f){return d(e,b?b(e):c,f,a&2)}}function Db(b){if(q()&&s<9){var a=/opacity=([^)]*)/.exec(b.style.filter||"");return a?p(a[1])/100:1}else return p(b.style.opacity||"1")}function Fb(b,a,f){if(q()&&s<9){var h=b.style.filter||"",i=new RegExp(/[\s]*alpha\([^\)]*\)/g),e=c.round(100*a),d="";if(e<100||f)d="alpha(opacity="+e+") ";var g=H(h,[i],d);tb(b,g)}else b.style.opacity=a==1?"":c.round(a*100)/100}var L={T:["rotate"],N:["rotateX"],M:["rotateY"],wb:["skewX"],vb:["skewY"]};if(!J())L=B(L,{m:["scaleX",2],n:["scaleY",2],C:["translateZ",1]});function M(d,a){var c="";if(a){if(q()&&i&&i<10){delete a.N;delete a.M;delete a.C}b.e(a,function(d,b){var a=L[b];if(a){var e=a[1]||0;if(N[b]!=d)c+=" "+a[0]+"("+d+(["deg","px",""])[e]+")"}});if(J()){if(a.R||a.X||a.C!=k)c+=" translate3d("+(a.R||0)+"px,"+(a.X||0)+"px,"+(a.C||0)+"px)";if(a.m==k)a.m=1;if(a.n==k)a.n=1;if(a.m!=1||a.n!=1)c+=" scale3d("+a.m+", "+a.n+", 1)"}}d.style[K(d)]=c}h.Ec=m("transformOrigin",4);h.pe=m("backfaceVisibility",4);h.qe=m("transformStyle",4);h.se=m("perspective",6);h.ve=m("perspectiveOrigin",4);h.ce=function(a,b){if(q()&&s<9||s<10&&Q())a.style.zoom=b==1?"":b;else{var c=K(a),f="scale("+b+")",e=a.style[c],g=new RegExp(/[\s]*scale\(.*?\)/g),d=H(e,[g],f);a.style[c]=d}};h.Dc=function(b,a){return function(c){c=t(c);var e=c.type,d=c.relatedTarget||(e=="mouseout"?c.toElement:c.fromElement);(!d||d!==a&&!h.ne(a,d))&&b(c)}};h.a=function(a,d,b,c){a=h.yb(a);if(a.addEventListener){d=="mousewheel"&&a.addEventListener("DOMMouseScroll",b,c);a.addEventListener(d,b,c)}else if(a.attachEvent){a.attachEvent("on"+d,b);c&&a.setCapture&&a.setCapture()}};h.v=function(a,c,d,b){a=h.yb(a);if(a.removeEventListener){c=="mousewheel"&&a.removeEventListener("DOMMouseScroll",d,b);a.removeEventListener(c,d,b)}else if(a.detachEvent){a.detachEvent("on"+c,d);b&&a.releaseCapture&&a.releaseCapture()}};h.Ab=function(a){a=t(a);a.preventDefault&&a.preventDefault();a.cancel=d;a.returnValue=l};h.he=function(a){a=t(a);a.stopPropagation&&a.stopPropagation();a.cancelBubble=d};h.P=function(d,c){var a=[].slice.call(arguments,2),b=function(){var b=a.concat([].slice.call(arguments,0));return c.apply(d,b)};return b};h.ub=function(d,c){for(var b=[],a=d.firstChild;a;a=a.nextSibling)(c||a.nodeType==1)&&b.push(a);return b};function mb(a,c,e,b){b=b||"u";for(a=a?a.firstChild:j;a;a=a.nextSibling)if(a.nodeType==1){if(U(a,b)==c)return a;if(!e){var d=mb(a,c,e,b);if(d)return d}}}h.z=mb;function gb(a,c,d){for(a=a?a.firstChild:j;a;a=a.nextSibling)if(a.nodeType==1){if(a.tagName==c)return a;if(!d){var b=gb(a,c,d);if(b)return b}}}h.Ge=gb;function B(){var e=arguments,d,c,b,a,g=1&e[0],f=1+g;d=e[f-1]||{};for(;f<e.length;f++)if(c=e[f])for(b in c){a=c[b];if(a!==k){a=c[b];var h=d[b];d[b]=g&&(A(h)||A(a))?B(g,{},h,a):a}}return d}h.ib=B;function Z(f,g){var d={},c,a,b;for(c in f){a=f[c];b=g[c];if(a!==b){var e;if(A(a)&&A(b)){a=Z(a,b);e=!lb(a)}!e&&(d[c]=a)}}return d}h.rc=function(a){return C(a)=="function"};h.we=function(a){return C(a)=="string"};h.Ae=function(a){return!isNaN(p(a))&&isFinite(a)};h.e=n;function R(a){return g.createElement(a)}h.tb=function(){return R("DIV")};h.uc=function(){};function V(b,c,a){if(a==k)return b.getAttribute(c);b.setAttribute(c,a)}function U(a,b){return V(a,b)||V(a,"data-"+b)}h.A=V;h.f=U;function x(b,a){if(a==k)return b.className;b.className=a}h.xc=x;function qb(b){var a={};n(b,function(b){if(b!=k)a[b]=b});return a}function sb(b,a){return b.match(a||Ab)}function P(b,a){return qb(sb(b||"",a))}h.wd=sb;function bb(b,c){var a="";n(c,function(c){a&&(a+=b);a+=c});return a}function E(a,c,b){x(a,bb(" ",B(Z(P(x(a)),P(c)),P(b))))}h.kc=function(a){return a.parentNode};h.I=function(a){h.J(a,"none")};h.W=function(a,b){h.J(a,b?"none":"")};h.sd=function(b,a){b.removeAttribute(a)};h.rd=function(){return q()&&i<10};h.qd=function(d,a){if(a)d.style.clip="rect("+c.round(a.i||a.o||0)+"px "+c.round(a.u)+"px "+c.round(a.q)+"px "+c.round(a.j||a.p||0)+"px)";else if(a!==k){var g=d.style.cssText,f=[new RegExp(/[\s]*clip: rect\(.*?\)[;]?/i),new RegExp(/[\s]*cliptop: .*?[;]?/i),new RegExp(/[\s]*clipright: .*?[;]?/i),new RegExp(/[\s]*clipbottom: .*?[;]?/i),new RegExp(/[\s]*clipleft: .*?[;]?/i)],e=H(g,f,"");b.Ub(d,e)}};h.D=function(){return+new Date};h.Q=function(b,a){b.appendChild(a)};h.Xb=function(b,a,c){(c||a.parentNode).insertBefore(b,a)};h.qc=function(b,a){a=a||b.parentNode;a&&a.removeChild(b)};h.kd=function(a,b){n(a,function(a){h.qc(a,b)})};h.yc=function(a){h.kd(h.ub(a,d),a)};h.jd=function(a,b){var c=h.kc(a);b&1&&h.E(a,(h.k(c)-h.k(a))/2);b&2&&h.O(a,(h.l(c)-h.l(a))/2)};h.id=function(b,a){return parseInt(b,a||10)};h.hd=p;h.ne=function(b,a){var c=g.body;while(a&&b!==a&&c!==a)try{a=a.parentNode}catch(d){return l}return b===a};function W(d,c,b){var a=d.cloneNode(!c);!b&&h.sd(a,"id");return a}h.fb=W;h.gb=function(e,f){var a=new Image;function b(e,d){h.v(a,"load",b);h.v(a,"abort",c);h.v(a,"error",c);f&&f(a,d)}function c(a){b(a,d)}if(ib()&&i<11.6||!e)b(!e);else{h.a(a,"load",b);h.a(a,"abort",c);h.a(a,"error",c);a.src=e}};h.yd=function(d,a,e){var c=d.length+1;function b(b){c--;if(a&&b&&b.src==a.src)a=b;!c&&e&&e(a)}n(d,function(a){h.gb(a.src,b)});b()};function Gb(a){var l=this,p="",r=["av","pv","ds","dn"],e=[],q,j=0,f=0,d=0;function i(){E(a,q,e[d||j||f&2||f]);b.G(a,"pointer-events",d?"none":"")}function c(){j=0;i();h.v(g,"mouseup",c);h.v(g,"touchend",c);h.v(g,"touchcancel",c)}function o(a){if(d)h.Ab(a);else{j=4;i();h.a(g,"mouseup",c);h.a(g,"touchend",c);h.a(g,"touchcancel",c)}}l.Gb=function(a){if(a===k)return!d;d=a?0:3;i()};l.V=a=h.yb(a);var m=b.wd(x(a));if(m)p=m.shift();n(r,function(a){e.push(p+a)});q=bb(" ",e);e.unshift("");h.a(a,"mousedown",o);h.a(a,"touchstart",o)}h.wc=function(a){return new Gb(a)};h.G=D;h.Eb=m("overflow");h.O=m("top",2);h.E=m("left",2);h.k=m("width",2);h.l=m("height",2);h.zc=m("marginLeft",2);h.Kc=m("marginTop",2);h.B=m("position");h.J=m("display");h.s=m("zIndex",1);h.Mb=function(b,a,c){if(a!=k)Fb(b,a,c);else return Db(b)};h.Ub=function(a,b){if(b!=k)a.style.cssText=b;else return a.style.cssText};var T={lb:h.Mb,i:h.O,j:h.E,Cb:h.k,Fb:h.l,nb:h.B,Re:h.J,cb:h.s};function w(f,l){var e=O(),b=J(),d=vb(),g=K(f);function i(b,d,a){var e=b.bb(u(-d/2,-a/2)),f=b.bb(u(d/2,-a/2)),g=b.bb(u(d/2,a/2)),h=b.bb(u(-d/2,a/2));b.bb(u(300,300));return u(c.min(e.x,f.x,g.x,h.x)+d/2,c.min(e.y,f.y,g.y,h.y)+a/2)}function a(d,a){a=a||{};var n=a.C||0,p=(a.N||0)%360,q=(a.M||0)%360,u=(a.T||0)%360,l=a.m,m=a.n,f=a.Se;if(l==k)l=1;if(m==k)m=1;if(f==k)f=1;if(e){n=0;p=0;q=0;f=0}var c=new Cb(a.R,a.X,n);c.N(p);c.M(q);c.Qd(u);c.Pd(a.wb,a.vb);c.Bc(l,m,f);if(b){c.eb(a.p,a.o);d.style[g]=c.Md()}else if(!X||X<9){var o="",j={x:0,y:0};if(a.F)j=i(c,a.F,a.ab);h.Kc(d,j.y);h.zc(d,j.x);o=c.Id();var s=d.style.filter,t=new RegExp(/[\s]*progid:DXImageTransform\.Microsoft\.Matrix\([^\)]*\)/g),r=H(s,[t],o);tb(d,r)}}w=function(e,c){c=c||{};var g=c.p,i=c.o,f;n(T,function(a,b){f=c[b];f!==k&&a(e,f)});h.qd(e,c.c);if(!b){g!=k&&h.E(e,(c.sc||0)+g);i!=k&&h.O(e,(c.Ic||0)+i)}if(c.Hd)if(d)rb(h.P(j,M,e,c));else a(e,c)};h.qb=M;if(d)h.qb=w;if(e)h.qb=a;else if(!b)a=M;h.H=w;w(f,l)}h.qb=w;h.H=w;function Cb(i,k,o){var d=this,b=[1,0,0,0,0,1,0,0,0,0,1,0,i||0,k||0,o||0,1],h=c.sin,g=c.cos,l=c.tan;function f(a){return a*c.PI/180}function n(a,b){return{x:a,y:b}}function m(c,e,l,m,o,r,t,u,w,z,A,C,E,b,f,k,a,g,i,n,p,q,s,v,x,y,B,D,F,d,h,j){return[c*a+e*p+l*x+m*F,c*g+e*q+l*y+m*d,c*i+e*s+l*B+m*h,c*n+e*v+l*D+m*j,o*a+r*p+t*x+u*F,o*g+r*q+t*y+u*d,o*i+r*s+t*B+u*h,o*n+r*v+t*D+u*j,w*a+z*p+A*x+C*F,w*g+z*q+A*y+C*d,w*i+z*s+A*B+C*h,w*n+z*v+A*D+C*j,E*a+b*p+f*x+k*F,E*g+b*q+f*y+k*d,E*i+b*s+f*B+k*h,E*n+b*v+f*D+k*j]}function e(c,a){return m.apply(j,(a||b).concat(c))}d.Bc=function(a,c,d){if(a!=1||c!=1||d!=1)b=e([a,0,0,0,0,c,0,0,0,0,d,0,0,0,0,1])};d.eb=function(a,c,d){b[12]+=a||0;b[13]+=c||0;b[14]+=d||0};d.N=function(c){if(c){a=f(c);var d=g(a),i=h(a);b=e([1,0,0,0,0,d,i,0,0,-i,d,0,0,0,0,1])}};d.M=function(c){if(c){a=f(c);var d=g(a),i=h(a);b=e([d,0,-i,0,0,1,0,0,i,0,d,0,0,0,0,1])}};d.Qd=function(c){if(c){a=f(c);var d=g(a),i=h(a);b=e([d,i,0,0,-i,d,0,0,0,0,1,0,0,0,0,1])}};d.Pd=function(a,c){if(a||c){i=f(a);k=f(c);b=e([1,l(k),0,0,l(i),1,0,0,0,0,1,0,0,0,0,1])}};d.bb=function(c){var a=e(b,[1,0,0,0,0,1,0,0,0,0,1,0,c.x,c.y,0,1]);return n(a[12],a[13])};d.Md=function(){return"matrix3d("+b.join(",")+")"};d.Id=function(){return"progid:DXImageTransform.Microsoft.Matrix(M11="+b[0]+", M12="+b[4]+", M21="+b[1]+", M22="+b[5]+", SizingMethod='auto expand')"}}new function(){var a=this;function b(d,g){for(var j=d[0].length,i=d.length,h=g[0].length,f=[],c=0;c<i;c++)for(var k=f[c]=[],b=0;b<h;b++){for(var e=0,a=0;a<j;a++)e+=d[c][a]*g[a][b];k[b]=e}return f}a.m=function(b,c){return a.mc(b,c,0)};a.n=function(b,c){return a.mc(b,0,c)};a.mc=function(a,c,d){return b(a,[[c,0],[0,d]])};a.bb=function(d,c){var a=b(d,[[c.x],[c.y]]);return u(a[0][0],a[1][0])}};var N={sc:0,Ic:0,p:0,o:0,Z:1,m:1,n:1,T:0,N:0,M:0,R:0,X:0,C:0,wb:0,vb:0};h.Dd=function(a){var c=a||{};if(a)if(b.rc(a))c={fc:c};else if(b.rc(a.c))c.c={fc:a.c};return c};h.Bd=function(l,m,x,q,z,A,n){var a=m;if(l){a={};for(var g in m){var B=A[g]||1,w=z[g]||[0,1],f=(x-w[0])/w[1];f=c.min(c.max(f,0),1);f=f*B;var u=c.floor(f);if(f!=u)f-=u;var h=q.fc||e.Sd,i,C=l[g],o=m[g];if(b.Ae(o)){h=q[g]||h;var y=h(f);i=C+o*y}else{i=b.ib({zb:{}},l[g]);var v=q[g]||{};b.e(o.zb||o,function(d,a){h=v[a]||v.fc||h;var c=h(f),b=d*c;i.zb[a]=b;i[a]+=b})}a[g]=i}var t=b.e(m,function(b,a){return N[a]!=k});t&&b.e(N,function(c,b){if(a[b]==k&&l[b]!==k)a[b]=l[b]});if(t){if(a.Z)a.m=a.n=a.Z;a.F=n.F;a.ab=n.ab;a.Hd=d}}if(m.c&&n.eb){var p=a.c.zb,s=(p.i||0)+(p.q||0),r=(p.j||0)+(p.u||0);a.j=(a.j||0)+r;a.i=(a.i||0)+s;a.c.j-=r;a.c.u-=r;a.c.i-=s;a.c.q-=s}if(a.c&&b.rd()&&!a.c.i&&!a.c.j&&!a.c.o&&!a.c.p&&a.c.u==n.F&&a.c.q==n.ab)a.c=j;return a}};function n(){var a=this,d=[];function i(a,b){d.push({cc:a,gc:b})}function h(a,c){b.e(d,function(b,e){b.cc==a&&b.gc===c&&d.splice(e,1)})}a.jb=a.addEventListener=i;a.removeEventListener=h;a.g=function(a){var c=[].slice.call(arguments,1);b.e(d,function(b){b.cc==a&&b.gc.apply(f,c)})}}var m=function(z,C,g,K,N,M){z=z||0;var a=this,q,o,p,u,A=0,G,H,F,B,y=0,i=0,m=0,D,k,e,h,n,J,w=[],x;function P(a){e+=a;h+=a;k+=a;i+=a;m+=a;y+=a}function t(p){var f=p;if(n){if(f>=h||f<=e&&!J)f=((f-e)%n+n)%n+e;if(g.Kd&&f<=e)f=e+n}if(!D||u||i!=f){var j=c.min(f,h);j=c.max(j,e);if(!D||u||j!=m){if(M){var l=(j-k)/(C||1);if(g.Rd)l=1-l;var o=b.Bd(N,M,l,G,F,H,g);if(x)b.e(o,function(b,a){x[a]&&x[a](K,b)});else b.H(K,o)}a.Lb(m-k,j-k);var r=m,q=m=j;b.e(w,function(b,c){var a=f<=i?w[w.length-c-1]:b;a.K(m-y)});i=f;D=d;a.rb(r,q)}}}function E(a,b,d){b&&a.Vb(h);if(!d){e=c.min(e,a.Cc()+y);h=c.max(h,a.Pb()+y)}w.push(a)}var r=f.requestAnimationFrame||f.webkitRequestAnimationFrame||f.mozRequestAnimationFrame||f.msRequestAnimationFrame;if(b.nd()&&b.Fc()<7)r=j;r=r||function(a){b.pc(a,g.Gc)};function I(){if(q){var d=b.D(),e=c.min(d-A,g.Hc),a=i+e*p;A=d;if(a*p>=o*p)a=o;t(a);if(!u&&a*p>=o*p)L(B);else r(I)}}function s(f,g,j){if(!q){q=d;u=j;B=g;f=c.max(f,e);f=c.min(f,h);o=f;p=o<i?-1:1;a.tc();A=b.D();r(I)}}function L(b){if(q){u=q=B=l;a.Ac();b&&b()}}a.hc=function(a,b,c){s(a?i+a:h,b,c)};a.ic=s;a.Y=L;a.td=function(a){s(a)};a.L=function(){return i};a.Lc=function(){return o};a.ob=function(){return m};a.K=t;a.eb=function(a){t(i+a)};a.vc=function(){return q};a.Wd=function(a){n=a};a.Vb=P;a.Jc=function(a,b){E(a,0,b)};a.Wb=function(a){E(a,1)};a.Cc=function(){return e};a.Pb=function(){return h};a.rb=a.tc=a.Ac=a.Lb=b.uc;a.ac=b.D();g=b.ib({Gc:16,Hc:50},g);n=g.Sb;J=g.Ud;x=g.Vd;e=k=z;h=z+C;H=g.Ad||{};F=g.zd||{};G=b.Dd(g.hb)};new(function(){});var i=function(p,fc){var h=this;function Bc(){var a=this;m.call(a,-1e8,2e8);a.Ie=function(){var b=a.ob(),d=c.floor(b),f=t(d),e=b-c.floor(b);return{U:f,Fe:d,nb:e}};a.rb=function(b,a){var e=c.floor(a);if(e!=a&&a>b)e++;Tb(e,d);h.g(i.ue,t(a),t(b),a,b)}}function Ac(){var a=this;m.call(a,0,0,{Sb:r});b.e(C,function(b){D&1&&b.Wd(r);a.Wb(b);b.Vb(kb/bc)})}function zc(){var a=this,b=Ub.V;m.call(a,-1,2,{hb:e.Jd,Vd:{nb:Zb},Sb:r},b,{nb:1},{nb:-2});a.Tb=b}function mc(o,n){var b=this,e,f,g,k,c;m.call(b,-1e8,2e8,{Hc:100});b.tc=function(){M=d;R=j;h.g(i.te,t(w.L()),w.L())};b.Ac=function(){M=l;k=l;var a=w.Ie();h.g(i.ae,t(w.L()),w.L());!a.nb&&Dc(a.Fe,s)};b.rb=function(i,h){var b;if(k)b=c;else{b=f;if(g){var d=h/g;b=a.be(d)*(f-e)+e}}w.K(b)};b.xb=function(a,d,c,h){e=a;f=d;g=c;w.K(a);b.K(0);b.ic(c,h)};b.de=function(a){k=d;c=a;b.hc(a,j,d)};b.ee=function(a){c=a};w=new Bc;w.Jc(o);w.Jc(n)}function oc(){var c=this,a=Xb();b.s(a,0);b.G(a,"pointerEvents","none");c.V=a;c.Bb=function(){b.I(a);b.yc(a)}}function xc(o,f){var e=this,q,M,v,k,y=[],x,B,W,H,S,F,g,w,p;m.call(e,-u,u+1,{});function E(a){q&&q.bd();T(o,a,0);F=d;q=new I.S(o,I,b.hd(b.f(o,"idle"))||lc);q.K(0)}function Z(){q.ac<I.ac&&E()}function O(p,r,o){if(!H){H=d;if(k&&o){var g=o.width,c=o.height,n=g,m=c;if(g&&c&&a.mb){if(a.mb&3&&(!(a.mb&4)||g>K||c>J)){var j=l,q=K/J*c/g;if(a.mb&1)j=q>1;else if(a.mb&2)j=q<1;n=j?g*J/c:K;m=j?J:c*K/g}b.k(k,n);b.l(k,m);b.O(k,(J-m)/2);b.E(k,(K-n)/2)}b.B(k,"absolute");h.g(i.ge,f)}}b.I(r);p&&p(e)}function Y(b,c,d,g){if(g==R&&s==f&&N)if(!Cc){var a=t(b);A.Be(a,f,c,e,d);c.je();U.Vb(a-U.Cc()-1);U.K(a);z.xb(b,b,0)}}function bb(b){if(b==R&&s==f){if(!g){var a=j;if(A)if(A.U==f)a=A.Zd();else A.Bb();Z();g=new vc(o,f,a,q);g.Mc(p)}!g.vc()&&g.Nb()}}function G(d,h,l){if(d==f){if(d!=h)C[h]&&C[h].Nc();else!l&&g&&g.ke();p&&p.Gb();var m=R=b.D();e.gb(b.P(j,bb,m))}else{var k=c.min(f,d),i=c.max(f,d),o=c.min(i-k,k+r-i),n=u+a.me-1;(!S||o<=n)&&e.gb()}}function db(){if(s==f&&g){g.Y();p&&p.oe();p&&p.re();g.Sc()}}function eb(){s==f&&g&&g.Y()}function ab(a){!P&&h.g(i.le,f,a)}function Q(){p=w.pInstance;g&&g.Mc(p)}e.gb=function(c,a){a=a||v;if(y.length&&!H){b.W(a);if(!W){W=d;h.g(i.ie,f);b.e(y,function(a){if(!b.A(a,"src")){a.src=b.f(a,"src2");b.J(a,a["display-origin"])}})}b.yd(y,k,b.P(j,O,c,a))}else O(c,a)};e.fe=function(){var i=f;if(a.Tc<0)i-=r;var d=i+a.Tc*tc;if(D&2)d=t(d);if(!(D&1)&&!ib)d=c.max(0,c.min(d,r-u));if(d!=f){if(A){var g=A.Ee(r);if(g){var k=R=b.D(),h=C[t(d)];return h.gb(b.P(j,Y,d,h,g,k),v)}}cb(d)}else if(a.kb){e.Nc();G(f,f)}};e.Rb=function(){G(f,f,d)};e.Nc=function(){p&&p.oe();p&&p.re();e.Uc();g&&g.ye();g=j;E()};e.je=function(){b.I(o)};e.Uc=function(){b.W(o)};e.xe=function(){p&&p.Gb()};function T(a,c,e){if(b.A(a,"jssor-slider"))return;if(!F){if(a.tagName=="IMG"){y.push(a);if(!b.A(a,"src")){S=d;a["display-origin"]=b.J(a);b.I(a)}}if(e){b.s(a,(b.s(a)||0)+1);b.Kc(a,0);b.zc(a,0);b.qb(a,{C:0})}}var f=b.ub(a);b.e(f,function(f){var h=f.tagName,i=b.f(f,"u");if(i=="player"&&!w){w=f;if(w.pInstance)Q();else b.a(w,"dataavailable",Q)}if(i=="caption"){if(c){b.Ec(f,b.f(f,"to"));b.pe(f,b.f(f,"bf"));b.f(f,"3d")&&b.qe(f,"preserve-3d")}else if(!b.fd()){var g=b.fb(f,l,d);b.Xb(g,f,a);b.qc(f,a);f=g;c=d}}else if(!F&&!e&&!k){if(h=="A"){if(b.f(f,"u")=="image")k=b.Ge(f,"IMG");else k=b.z(f,"image",d);if(k){x=f;b.J(x,"block");b.H(x,V);B=b.fb(x,d);b.B(x,"relative");b.Mb(B,0);b.G(B,"backgroundColor","#000")}}else if(h=="IMG"&&b.f(f,"u")=="image")k=f;if(k){k.border=0;b.H(k,V)}}T(f,c,e+1)})}e.Lb=function(c,b){var a=u-b;Zb(M,a)};e.U=f;n.call(e);b.se(o,b.f(o,"p"));b.ve(o,b.f(o,"po"));var L=b.z(o,"thumb",d);if(L){b.fb(L);b.I(L)}b.W(o);v=b.fb(gb);b.s(v,1e3);b.a(o,"click",ab);E(d);e.He=k;e.ad=B;e.Tb=M=o;b.Q(M,v);h.jb(203,G);h.jb(28,eb);h.jb(24,db)}function vc(y,f,p,q){var a=this,n=0,u=0,g,j,e,c,k,t,r,o=C[f];m.call(a,0,0);function v(){b.yc(L);cc&&k&&o.ad&&b.Q(L,o.ad);b.W(L,!k&&o.He)}function w(){a.Nb()}function x(b){r=b;a.Y();a.Nb()}a.Nb=function(){var b=a.ob();if(!B&&!M&&!r&&s==f){if(!b){if(g&&!k){k=d;a.Sc(d);h.g(i.Xd,f,n,u,g,c)}v()}var l,p=i.Oc;if(b!=c)if(b==e)l=c;else if(b==j)l=e;else if(!b)l=j;else l=a.Lc();h.g(p,f,b,n,j,e,c);var m=N&&(!E||F);if(b==c)(e!=c&&!(E&12)||m)&&o.fe();else(m||b!=e)&&a.ic(l,w)}};a.ke=function(){e==c&&e==a.ob()&&a.K(j)};a.ye=function(){A&&A.U==f&&A.Bb();var b=a.ob();b<c&&h.g(i.Oc,f,-b-1,n,j,e,c)};a.Sc=function(a){p&&b.Eb(lb,a&&p.lc.Pe?"":"hidden")};a.Lb=function(b,a){if(k&&a>=g){k=l;v();o.Uc();A.Bb();h.g(i.vd,f,n,u,g,c)}h.g(i.ud,f,a,n,j,e,c)};a.Mc=function(a){if(a&&!t){t=a;a.jb($JssorPlayer$.ld,x)}};p&&a.Wb(p);g=a.Pb();a.Wb(q);j=g+q.Zc;e=g+q.Yc;c=a.Pb()}function Kb(a,c,d){b.E(a,c);b.O(a,d)}function Zb(c,b){var a=x>0?x:fb,d=zb*b*(a&1),e=Ab*b*(a>>1&1);Kb(c,d,e)}function Pb(){qb=M;Ib=z.Lc();G=w.L()}function gc(){Pb();if(B||!F&&E&12){z.Y();h.g(i.pd)}}function ec(f){if(!B&&(F||!(E&12))&&!z.vc()){var d=w.L(),b=c.ceil(G);if(f&&c.abs(H)>=a.Xc){b=c.ceil(d);b+=jb}if(!(D&1))b=c.min(r-u,c.max(b,0));var e=c.abs(b-d);e=1-c.pow(1-e,5);if(!P&&qb)z.td(Ib);else if(d==b){tb.xe();tb.Rb()}else z.xb(d,b,e*Vb)}}function Hb(a){!b.f(b.Hb(a),"nodrag")&&b.Ab(a)}function rc(a){Yb(a,1)}function Yb(a,c){a=b.nc(a);var k=b.Hb(a);if(!O&&!b.f(k,"nodrag")&&sc()&&(!c||a.touches.length==1)){B=d;yb=l;R=j;b.a(g,c?"touchmove":"mousemove",Bb);b.D();P=0;gc();if(!qb)x=0;if(c){var f=a.touches[0];ub=f.clientX;vb=f.clientY}else{var e=b.jc(a);ub=e.x;vb=e.y}H=0;hb=0;jb=0;h.g(i.xd,t(G),G,a)}}function Bb(e){if(B){e=b.nc(e);var f;if(e.type!="mousemove"){var l=e.touches[0];f={x:l.clientX,y:l.clientY}}else f=b.jc(e);if(f){var j=f.x-ub,k=f.y-vb;if(c.floor(G)!=G)x=x||fb&O;if((j||k)&&!x){if(O==3)if(c.abs(k)>c.abs(j))x=2;else x=1;else x=O;if(ob&&x==1&&c.abs(k)-c.abs(j)>3)yb=d}if(x){var a=k,i=Ab;if(x==1){a=j;i=zb}if(!(D&1)){if(a>0){var g=i*s,h=a-g;if(h>0)a=g+c.sqrt(h)*5}if(a<0){var g=i*(r-u-s),h=-a-g;if(h>0)a=-g-c.sqrt(h)*5}}if(H-hb<-2)jb=0;else if(H-hb>2)jb=-1;hb=H;H=a;sb=G-H/i/(Y||1);if(H&&x&&!yb){b.Ab(e);if(!M)z.de(sb);else z.ee(sb)}}}}}function bb(){qc();if(B){B=l;b.D();b.v(g,"mousemove",Bb);b.v(g,"touchmove",Bb);P=H;z.Y();var a=w.L();h.g(i.od,t(a),a,t(G),G);E&12&&Pb();ec(d)}}function jc(c){if(P){b.he(c);var a=b.Hb(c);while(a&&v!==a){a.tagName=="A"&&b.Ab(c);try{a=a.parentNode}catch(d){break}}}}function Jb(a){C[s];s=t(a);tb=C[s];Tb(a);return s}function Dc(a,b){x=0;Jb(a);h.g(i.Yd,t(a),b)}function Tb(a,c){wb=a;b.e(S,function(b){b.dc(t(a),a,c)})}function sc(){var b=i.Wc||0,a=X;if(ob)a&1&&(a&=1);i.Wc|=a;return O=a&~b}function qc(){if(O){i.Wc&=~X;O=0}}function Xb(){var a=b.tb();b.H(a,V);b.B(a,"absolute");return a}function t(a){return(a%r+r)%r}function kc(b,d){if(d)if(!D){b=c.min(c.max(b+wb,0),r-u);d=l}else if(D&2){b=t(b+wb);d=l}cb(b,a.bc,d)}function xb(){b.e(S,function(a){a.Yb(a.sb.Oe<=F)})}function hc(){if(!F){F=1;xb();if(!B){E&12&&ec();E&3&&C[s].Rb()}}}function Ec(){if(F){F=0;xb();B||!(E&12)||gc()}}function ic(){V={Cb:K,Fb:J,i:0,j:0};b.e(T,function(a){b.H(a,V);b.B(a,"absolute");b.Eb(a,"hidden");b.I(a)});b.H(gb,V)}function ab(b,a){cb(b,a,d)}function cb(g,f,j){if(Rb&&(!B&&(F||!(E&12))||a.Vc)){M=d;B=l;z.Y();if(f==k)f=Vb;var e=Cb.ob(),b=g;if(j){b=e+g;if(g>0)b=c.ceil(b);else b=c.floor(b)}if(D&2)b=t(b);if(!(D&1))b=c.max(0,c.min(b,r-u));var i=(b-e)%r;b=e+i;var h=e==b?0:f*c.abs(i);h=c.min(h,f*u*1.5);z.xb(e,b,h||1)}}h.hc=function(){if(!N){N=d;C[s]&&C[s].Rb()}};function W(){return b.k(y||p)}function nb(){return b.l(y||p)}h.F=W;h.ab=nb;function Eb(c,d){if(c==k)return b.k(p);if(!y){var a=b.tb(g);b.xc(a,b.xc(p));b.Ub(a,b.Ub(p));b.J(a,"block");b.B(a,"relative");b.O(a,0);b.E(a,0);b.Eb(a,"visible");y=b.tb(g);b.B(y,"absolute");b.O(y,0);b.E(y,0);b.k(y,b.k(p));b.l(y,b.l(p));b.Ec(y,"0 0");b.Q(y,a);var h=b.ub(p);b.Q(p,y);b.G(p,"backgroundImage","");b.e(h,function(c){b.Q(b.f(c,"noscale")?p:a,c);b.f(c,"autocenter")&&Lb.push(c)})}Y=c/(d?b.l:b.k)(y);b.ce(y,Y);var f=d?Y*W():c,e=d?c:Y*nb();b.k(p,f);b.l(p,e);b.e(Lb,function(a){var c=b.id(b.f(a,"autocenter"));b.jd(a,c)})}h.Td=Eb;n.call(h);h.V=p=b.yb(p);var a=b.ib({mb:0,me:1,Jb:1,Ib:0,Kb:l,kb:1,pb:d,Vc:d,Tc:1,Rc:3e3,Qc:1,bc:500,be:e.gd,Xc:20,Pc:0,db:1,dd:0,Od:1,Db:1,Zb:1},fc);a.pb=a.pb&&b.De();if(a.Nd!=k)a.Rc=a.Nd;if(a.Ld!=k)a.dd=a.Ld;var fb=a.Db&3,tc=(a.Db&4)/-4||1,mb=a.Qe,I=b.ib({S:q,pb:a.pb},a.Je);I.Qb=I.Qb||I.Le;var Fb=a.Ke,Z=a.Fd,eb=a.Ne,Q=!a.Od,y,v=b.z(p,"slides",Q),gb=b.z(p,"loading",Q)||b.tb(g),Nb=b.z(p,"navigator",Q),dc=b.z(p,"arrowleft",Q),ac=b.z(p,"arrowright",Q),Mb=b.z(p,"thumbnavigator",Q),pc=b.k(v),nc=b.l(v),V,T=[],uc=b.ub(v);b.e(uc,function(a){a.tagName=="DIV"&&!b.f(a,"u")&&T.push(a);b.s(a,(b.s(a)||0)+1)});var s=-1,wb,tb,r=T.length,K=a.Ed||pc,J=a.Cd||nc,Wb=a.Pc,zb=K+Wb,Ab=J+Wb,bc=fb&1?zb:Ab,u=c.min(a.db,r),lb,x,O,yb,S=[],Qb,Sb,Ob,cc,Cc,N,E=a.Qc,lc=a.Rc,Vb=a.bc,rb,ib,kb,Rb=u<r,D=Rb?a.kb:0,X,P,F=1,M,B,R,ub=0,vb=0,H,hb,jb,Cb,w,U,z,Ub=new oc,Y,Lb=[];if(r){if(a.pb)Kb=function(a,c,d){b.qb(a,{R:c,X:d})};N=a.Kb;h.sb=fc;ic();b.A(p,"jssor-slider",d);b.s(v,b.s(v)||0);b.B(v,"absolute");lb=b.fb(v,d);b.Xb(lb,v);if(mb){cc=mb.Me;rb=mb.S;ib=u==1&&r>1&&rb&&(!b.fd()||b.Fc()>=8)}kb=ib||u>=r||!(D&1)?0:a.dd;X=(u>1||kb?fb:-1)&a.Zb;var Gb=v,C=[],A,L,Db=b.ze(),ob=Db.Ce,G,qb,Ib,sb;Db.ed&&b.G(Gb,Db.ed,([j,"pan-y","pan-x","none"])[X]||"");U=new zc;if(ib)A=new rb(Ub,K,J,mb,ob);b.Q(lb,U.Tb);b.Eb(v,"hidden");L=Xb();b.G(L,"backgroundColor","#000");b.Mb(L,0);b.Xb(L,Gb.firstChild,Gb);for(var db=0;db<T.length;db++){var wc=T[db],yc=new xc(wc,db);C.push(yc)}b.I(gb);Cb=new Ac;z=new mc(Cb,U);b.a(v,"click",jc,d);b.a(p,"mouseout",b.Dc(hc,p));b.a(p,"mouseover",b.Dc(Ec,p));if(X){b.a(v,"mousedown",Yb);b.a(v,"touchstart",rc);b.a(v,"dragstart",Hb);b.a(v,"selectstart",Hb);b.a(g,"mouseup",bb);b.a(g,"touchend",bb);b.a(g,"touchcancel",bb);b.a(f,"blur",bb)}E&=ob?10:5;if(Nb&&Fb){Qb=new Fb.S(Nb,Fb,W(),nb());S.push(Qb)}if(Z&&dc&&ac){Z.kb=D;Z.db=u;Sb=new Z.S(dc,ac,Z,W(),nb());S.push(Sb)}if(Mb&&eb){eb.Ib=a.Ib;Ob=new eb.S(Mb,eb);S.push(Ob)}b.e(S,function(a){a.ec(r,C,gb);a.jb(o.cd,kc)});b.G(p,"visibility","visible");Eb(W());xb();a.Jb&&b.a(g,"keydown",function(b){if(b.keyCode==37)ab(-a.Jb);else b.keyCode==39&&ab(a.Jb)});var pb=a.Ib;if(!(D&1))pb=c.max(0,c.min(pb,r-u));z.xb(pb,pb,0)}};i.le=21;i.xd=22;i.od=23;i.te=24;i.ae=25;i.ie=26;i.ge=27;i.pd=28;i.ue=202;i.Yd=203;i.Xd=206;i.vd=207;i.ud=208;i.Oc=209;var o={cd:1};var r=function(a,g,h){var c=this;n.call(c);var r,e,f,i;b.k(a);b.l(a);var p,m;function k(a){c.g(o.cd,a,d)}function t(c){b.W(a,c);b.W(g,c)}function s(){p.Gb(h.kb||e>0);m.Gb(h.kb||e<r-h.db)}c.dc=function(b,a,c){if(c)e=a;else{e=b;s()}};c.Yb=t;var q;c.ec=function(c){r=c;e=0;if(!q){b.a(a,"click",b.P(j,k,-i));b.a(g,"click",b.P(j,k,i));p=b.wc(a);m=b.wc(g);q=d}};c.sb=f=b.ib({md:1},h);i=f.md;if(f.Bc==l){b.A(a,"noscale",d);b.A(g,"noscale",d)}if(f.Ob){b.A(a,"autocenter",f.Ob);b.A(g,"autocenter",f.Ob)}};function q(e,d,c){var a=this;m.call(a,0,c);a.bd=b.uc;a.Zc=0;a.Yc=c}jssor_1_slider_init=function(){var g={Kb:d,Zb:2,Db:2,Fd:{S:r}},e=new i("jssor_1",g);function a(){var b=e.V.parentNode.clientWidth;if(b){b=c.min(b,600);e.Td(b)}else f.setTimeout(a,30)}a();b.a(f,"load",a);b.a(f,"resize",a);b.a(f,"orientationchange",a)}})(window,document,Math,null,true,false)
    </script>
    <style>
        .jssora08l,.jssora08r{display:block;position:absolute;width:50px;height:50px;cursor:pointer;background:url('img/a08.png') no-repeat;overflow:hidden;opacity:.4;filter:alpha(opacity=40)}.jssora08l{background-position:-5px -35px}.jssora08r{background-position:-65px -35px}.jssora08l:hover{background-position:-5px -35px;opacity:.8;filter:alpha(opacity=80)}.jssora08r:hover{background-position:-65px -35px;opacity:.8;filter:alpha(opacity=80)}.jssora08l.jssora08ldn{background-position:-5px -35px;opacity:.3;filter:alpha(opacity=30)}.jssora08r.jssora08rdn{background-position:-65px -35px;opacity:.3;filter:alpha(opacity=30)}.jssora08l.jssora08lds{background-position:-5px -35px;opacity:.3;pointer-events:none}.jssora08r.jssora08rds{background-position:-65px -35px;opacity:.3;pointer-events:none}
    </style>
    <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 280px; height: 400px; overflow: hidden; visibility: hidden;">
        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; min-width: 280px; height: 400px; overflow: hidden;">
            <a data-u="any" href="http://www.jssor.com" style="display:none">Vertical Slider</a>
            <div data-p="112.50">

            </div>
            <div data-p="112.50" style="display:none;">

            </div>
            <div data-p="112.50" style="display:none;">

            </div>
            <div data-p="112.50" style="display:none;">

            </div>
            <div data-p="112.50" style="display:none;">

            </div>
            <div data-p="112.50" style="display:none;">

            </div>
            <div data-p="112.50" style="display:none;">

            </div>
            <div data-p="112.50" style="display:none;">

            </div>
            <div data-p="112.50" style="display:none;">

            </div>
            <div data-p="112.50" style="display:none;">

            </div>
        </div>
        <span data-u="arrowleft" class="jssora08l" style="top:8px;left:8px;width:50px;height:50px;" data-autocenter="1"></span>
        <span data-u="arrowright" class="jssora08r" style="bottom:8px;right:8px;width:50px;height:50px;" data-autocenter="1"></span>
    </div>
    <script type="text/javascript">jssor_1_slider_init();</script>
</div>
