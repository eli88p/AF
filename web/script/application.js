/*!
 * Modernizr v2.6.2
 * www.modernizr.com
 *
 * Copyright (c) Faruk Ates, Paul Irish, Alex Sexton
 * Available under the BSD and MIT licenses: www.modernizr.com/license/
 */
window.Modernizr=function(e,t,i){function n(e){_.cssText=e}function s(e,t){return n(k.join(e+";")+(t||""))}function a(e,t){return typeof e===t}function o(e,t){return!!~(""+e).indexOf(t)}function r(e,t){for(var n in e){var s=e[n];if(!o(s,"-")&&_[s]!==i)return"pfx"==t?s:!0}return!1}function l(e,t,n){for(var s in e){var o=t[e[s]];if(o!==i)return n===!1?e[s]:a(o,"function")?o.bind(n||t):o}return!1}function c(e,t,i){var n=e.charAt(0).toUpperCase()+e.slice(1),s=(e+" "+$.join(n+" ")+n).split(" ");return a(t,"string")||a(t,"undefined")?r(s,t):(s=(e+" "+T.join(n+" ")+n).split(" "),l(s,t,i))}function u(){f.input=function(i){for(var n=0,s=i.length;s>n;n++)E[i[n]]=!!(i[n]in y);return E.list&&(E.list=!(!t.createElement("datalist")||!e.HTMLDataListElement)),E}("autocomplete autofocus list placeholder max min multiple pattern required step".split(" ")),f.inputtypes=function(e){for(var n,s,a,o=0,r=e.length;r>o;o++)y.setAttribute("type",s=e[o]),n="text"!==y.type,n&&(y.value=w,y.style.cssText="position:absolute;visibility:hidden;",/^range$/.test(s)&&y.style.WebkitAppearance!==i?(g.appendChild(y),a=t.defaultView,n=a.getComputedStyle&&"textfield"!==a.getComputedStyle(y,null).WebkitAppearance&&0!==y.offsetHeight,g.removeChild(y)):/^(search|tel)$/.test(s)||(n=/^(url|email)$/.test(s)?y.checkValidity&&y.checkValidity()===!1:y.value!=w)),I[e[o]]=!!n;return I}("search tel url email datetime date month week time datetime-local number range color".split(" "))}var d,h,p="2.6.2",f={},m=!0,g=t.documentElement,v="modernizr",b=t.createElement(v),_=b.style,y=t.createElement("input"),w=":)",x={}.toString,k=" -webkit- -moz- -o- -ms- ".split(" "),C="Webkit Moz O ms",$=C.split(" "),T=C.toLowerCase().split(" "),S={svg:"http://www.w3.org/2000/svg"},D={},I={},E={},j=[],P=j.slice,A=function(e,i,n,s){var a,o,r,l,c=t.createElement("div"),u=t.body,d=u||t.createElement("body");if(parseInt(n,10))for(;n--;)r=t.createElement("div"),r.id=s?s[n]:v+(n+1),c.appendChild(r);return a=["&#173;",'<style id="s',v,'">',e,"</style>"].join(""),c.id=v,(u?c:d).innerHTML+=a,d.appendChild(c),u||(d.style.background="",d.style.overflow="hidden",l=g.style.overflow,g.style.overflow="hidden",g.appendChild(d)),o=i(c,e),u?c.parentNode.removeChild(c):(d.parentNode.removeChild(d),g.style.overflow=l),!!o},M=function(t){var i=e.matchMedia||e.msMatchMedia;if(i)return i(t).matches;var n;return A("@media "+t+" { #"+v+" { position: absolute; } }",function(t){n="absolute"==(e.getComputedStyle?getComputedStyle(t,null):t.currentStyle).position}),n},z=function(){function e(e,s){s=s||t.createElement(n[e]||"div"),e="on"+e;var o=e in s;return o||(s.setAttribute||(s=t.createElement("div")),s.setAttribute&&s.removeAttribute&&(s.setAttribute(e,""),o=a(s[e],"function"),a(s[e],"undefined")||(s[e]=i),s.removeAttribute(e))),s=null,o}var n={select:"input",change:"input",submit:"form",reset:"form",error:"img",load:"img",abort:"img"};return e}(),N={}.hasOwnProperty;h=a(N,"undefined")||a(N.call,"undefined")?function(e,t){return t in e&&a(e.constructor.prototype[t],"undefined")}:function(e,t){return N.call(e,t)},Function.prototype.bind||(Function.prototype.bind=function(e){var t=this;if("function"!=typeof t)throw new TypeError;var i=P.call(arguments,1),n=function(){if(this instanceof n){var s=function(){};s.prototype=t.prototype;var a=new s,o=t.apply(a,i.concat(P.call(arguments)));return Object(o)===o?o:a}return t.apply(e,i.concat(P.call(arguments)))};return n}),D.flexbox=function(){return c("flexWrap")},D.flexboxlegacy=function(){return c("boxDirection")},D.canvas=function(){var e=t.createElement("canvas");return!(!e.getContext||!e.getContext("2d"))},D.canvastext=function(){return!(!f.canvas||!a(t.createElement("canvas").getContext("2d").fillText,"function"))},D.webgl=function(){return!!e.WebGLRenderingContext},D.touch=function(){var i;return"ontouchstart"in e||e.DocumentTouch&&t instanceof DocumentTouch?i=!0:A(["@media (",k.join("touch-enabled),("),v,")","{#modernizr{top:9px;position:absolute}}"].join(""),function(e){i=9===e.offsetTop}),i},D.geolocation=function(){return"geolocation"in navigator},D.postmessage=function(){return!!e.postMessage},D.websqldatabase=function(){return!!e.openDatabase},D.indexedDB=function(){return!!c("indexedDB",e)},D.hashchange=function(){return z("hashchange",e)&&(t.documentMode===i||t.documentMode>7)},D.history=function(){return!(!e.history||!history.pushState)},D.draganddrop=function(){var e=t.createElement("div");return"draggable"in e||"ondragstart"in e&&"ondrop"in e},D.websockets=function(){return"WebSocket"in e||"MozWebSocket"in e},D.rgba=function(){return n("background-color:rgba(150,255,150,.5)"),o(_.backgroundColor,"rgba")},D.hsla=function(){return n("background-color:hsla(120,40%,100%,.5)"),o(_.backgroundColor,"rgba")||o(_.backgroundColor,"hsla")},D.multiplebgs=function(){return n("background:url(https://),url(https://),red url(https://)"),/(url\s*\(.*?){3}/.test(_.background)},D.backgroundsize=function(){return c("backgroundSize")},D.borderimage=function(){return c("borderImage")},D.borderradius=function(){return c("borderRadius")},D.boxshadow=function(){return c("boxShadow")},D.textshadow=function(){return""===t.createElement("div").style.textShadow},D.opacity=function(){return s("opacity:.55"),/^0.55$/.test(_.opacity)},D.cssanimations=function(){return c("animationName")},D.csscolumns=function(){return c("columnCount")},D.cssgradients=function(){var e="background-image:",t="gradient(linear,left top,right bottom,from(#9f9),to(white));",i="linear-gradient(left top,#9f9, white);";return n((e+"-webkit- ".split(" ").join(t+e)+k.join(i+e)).slice(0,-e.length)),o(_.backgroundImage,"gradient")},D.cssreflections=function(){return c("boxReflect")},D.csstransforms=function(){return!!c("transform")},D.csstransforms3d=function(){var e=!!c("perspective");return e&&"webkitPerspective"in g.style&&A("@media (transform-3d),(-webkit-transform-3d){#modernizr{left:9px;position:absolute;height:3px;}}",function(t){e=9===t.offsetLeft&&3===t.offsetHeight}),e},D.csstransitions=function(){return c("transition")},D.fontface=function(){var e;return A('@font-face {font-family:"font";src:url("https://")}',function(i,n){var s=t.getElementById("smodernizr"),a=s.sheet||s.styleSheet,o=a?a.cssRules&&a.cssRules[0]?a.cssRules[0].cssText:a.cssText||"":"";e=/src/i.test(o)&&0===o.indexOf(n.split(" ")[0])}),e},D.generatedcontent=function(){var e;return A(["#",v,"{font:0/0 a}#",v,':after{content:"',w,'";visibility:hidden;font:3px/1 a}'].join(""),function(t){e=t.offsetHeight>=3}),e},D.video=function(){var e=t.createElement("video"),i=!1;try{(i=!!e.canPlayType)&&(i=new Boolean(i),i.ogg=e.canPlayType('video/ogg; codecs="theora"').replace(/^no$/,""),i.h264=e.canPlayType('video/mp4; codecs="avc1.42E01E"').replace(/^no$/,""),i.webm=e.canPlayType('video/webm; codecs="vp8, vorbis"').replace(/^no$/,""))}catch(n){}return i},D.audio=function(){var e=t.createElement("audio"),i=!1;try{(i=!!e.canPlayType)&&(i=new Boolean(i),i.ogg=e.canPlayType('audio/ogg; codecs="vorbis"').replace(/^no$/,""),i.mp3=e.canPlayType("audio/mpeg;").replace(/^no$/,""),i.wav=e.canPlayType('audio/wav; codecs="1"').replace(/^no$/,""),i.m4a=(e.canPlayType("audio/x-m4a;")||e.canPlayType("audio/aac;")).replace(/^no$/,""))}catch(n){}return i},D.localstorage=function(){try{return localStorage.setItem(v,v),localStorage.removeItem(v),!0}catch(e){return!1}},D.sessionstorage=function(){try{return sessionStorage.setItem(v,v),sessionStorage.removeItem(v),!0}catch(e){return!1}},D.webworkers=function(){return!!e.Worker},D.applicationcache=function(){return!!e.applicationCache},D.svg=function(){return!!t.createElementNS&&!!t.createElementNS(S.svg,"svg").createSVGRect},D.inlinesvg=function(){var e=t.createElement("div");return e.innerHTML="<svg/>",(e.firstChild&&e.firstChild.namespaceURI)==S.svg},D.smil=function(){return!!t.createElementNS&&/SVGAnimate/.test(x.call(t.createElementNS(S.svg,"animate")))},D.svgclippaths=function(){return!!t.createElementNS&&/SVGClipPath/.test(x.call(t.createElementNS(S.svg,"clipPath")))};for(var F in D)h(D,F)&&(d=F.toLowerCase(),f[d]=D[F](),j.push((f[d]?"":"no-")+d));return f.input||u(),f.addTest=function(e,t){if("object"==typeof e)for(var n in e)h(e,n)&&f.addTest(n,e[n]);else{if(e=e.toLowerCase(),f[e]!==i)return f;t="function"==typeof t?t():t,"undefined"!=typeof m&&m&&(g.className+=" "+(t?"":"no-")+e),f[e]=t}return f},n(""),b=y=null,function(e,t){function i(e,t){var i=e.createElement("p"),n=e.getElementsByTagName("head")[0]||e.documentElement;return i.innerHTML="x<style>"+t+"</style>",n.insertBefore(i.lastChild,n.firstChild)}function n(){var e=v.elements;return"string"==typeof e?e.split(" "):e}function s(e){var t=g[e[f]];return t||(t={},m++,e[f]=m,g[m]=t),t}function a(e,i,n){if(i||(i=t),u)return i.createElement(e);n||(n=s(i));var a;return a=n.cache[e]?n.cache[e].cloneNode():p.test(e)?(n.cache[e]=n.createElem(e)).cloneNode():n.createElem(e),a.canHaveChildren&&!h.test(e)?n.frag.appendChild(a):a}function o(e,i){if(e||(e=t),u)return e.createDocumentFragment();i=i||s(e);for(var a=i.frag.cloneNode(),o=0,r=n(),l=r.length;l>o;o++)a.createElement(r[o]);return a}function r(e,t){t.cache||(t.cache={},t.createElem=e.createElement,t.createFrag=e.createDocumentFragment,t.frag=t.createFrag()),e.createElement=function(i){return v.shivMethods?a(i,e,t):t.createElem(i)},e.createDocumentFragment=Function("h,f","return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&("+n().join().replace(/\w+/g,function(e){return t.createElem(e),t.frag.createElement(e),'c("'+e+'")'})+");return n}")(v,t.frag)}function l(e){e||(e=t);var n=s(e);return!v.shivCSS||c||n.hasCSS||(n.hasCSS=!!i(e,"article,aside,figcaption,figure,footer,header,hgroup,nav,section{display:block}mark{background:#FF0;color:#000}")),u||r(e,n),e}var c,u,d=e.html5||{},h=/^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i,p=/^(?:a|b|code|div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|style|table|tbody|td|th|tr|ul)$/i,f="_html5shiv",m=0,g={};!function(){try{var e=t.createElement("a");e.innerHTML="<xyz></xyz>",c="hidden"in e,u=1==e.childNodes.length||function(){t.createElement("a");var e=t.createDocumentFragment();return"undefined"==typeof e.cloneNode||"undefined"==typeof e.createDocumentFragment||"undefined"==typeof e.createElement}()}catch(i){c=!0,u=!0}}();var v={elements:d.elements||"abbr article aside audio bdi canvas data datalist details figcaption figure footer header hgroup mark meter nav output progress section summary time video",shivCSS:d.shivCSS!==!1,supportsUnknownElements:u,shivMethods:d.shivMethods!==!1,type:"default",shivDocument:l,createElement:a,createDocumentFragment:o};e.html5=v,l(t)}(this,t),f._version=p,f._prefixes=k,f._domPrefixes=T,f._cssomPrefixes=$,f.mq=M,f.hasEvent=z,f.testProp=function(e){return r([e])},f.testAllProps=c,f.testStyles=A,f.prefixed=function(e,t,i){return t?c(e,t,i):c(e,"pfx")},g.className=g.className.replace(/(^|\s)no-js(\s|$)/,"$1$2")+(m?" js "+j.join(" "):""),f}(this,this.document);