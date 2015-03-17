
(function(e,t){function _(e){var t=M[e]={};return v.each(e.split(y),function(e,n){t[n]=!0}),t}function H(e,n,r){if(r===t&&e.nodeType===1){var i="data-"+n.replace(P,"-$1").toLowerCase();r=e.getAttribute(i);if(typeof r=="string"){try{r=r==="true"?!0:r==="false"?!1:r==="null"?null:+r+""===r?+r:D.test(r)?v.parseJSON(r):r}catch(s){}v.data(e,n,r)}else r=t}return r}function B(e){var t;for(t in e){if(t==="data"&&v.isEmptyObject(e[t]))continue;if(t!=="toJSON")return!1}return!0}function et(){return!1}function tt(){return!0}function ut(e){return!e||!e.parentNode||e.parentNode.nodeType===11}function at(e,t){do e=e[t];while(e&&e.nodeType!==1);return e}function ft(e,t,n){t=t||0;if(v.isFunction(t))return v.grep(e,function(e,r){var i=!!t.call(e,r,e);return i===n});if(t.nodeType)return v.grep(e,function(e,r){return e===t===n});if(typeof t=="string"){var r=v.grep(e,function(e){return e.nodeType===1});if(it.test(t))return v.filter(t,r,!n);t=v.filter(t,r)}return v.grep(e,function(e,r){return v.inArray(e,t)>=0===n})}function lt(e){var t=ct.split("|"),n=e.createDocumentFragment();if(n.createElement)while(t.length)n.createElement(t.pop());return n}function Lt(e,t){return e.getElementsByTagName(t)[0]||e.appendChild(e.ownerDocument.createElement(t))}function At(e,t){if(t.nodeType!==1||!v.hasData(e))return;var n,r,i,s=v._data(e),o=v._data(t,s),u=s.events;if(u){delete o.handle,o.events={};for(n in u)for(r=0,i=u[n].length;r<i;r++)v.event.add(t,n,u[n][r])}o.data&&(o.data=v.extend({},o.data))}function Ot(e,t){var n;if(t.nodeType!==1)return;t.clearAttributes&&t.clearAttributes(),t.mergeAttributes&&t.mergeAttributes(e),n=t.nodeName.toLowerCase(),n==="object"?(t.parentNode&&(t.outerHTML=e.outerHTML),v.support.html5Clone&&e.innerHTML&&!v.trim(t.innerHTML)&&(t.innerHTML=e.innerHTML)):n==="input"&&Et.test(e.type)?(t.defaultChecked=t.checked=e.checked,t.value!==e.value&&(t.value=e.value)):n==="option"?t.selected=e.defaultSelected:n==="input"||n==="textarea"?t.defaultValue=e.defaultValue:n==="script"&&t.text!==e.text&&(t.text=e.text),t.removeAttribute(v.expando)}function Mt(e){return typeof e.getElementsByTagName!="undefined"?e.getElementsByTagName("*"):typeof e.querySelectorAll!="undefined"?e.querySelectorAll("*"):[]}function _t(e){Et.test(e.type)&&(e.defaultChecked=e.checked)}function Qt(e,t){if(t in e)return t;var n=t.charAt(0).toUpperCase()+t.slice(1),r=t,i=Jt.length;while(i--){t=Jt[i]+n;if(t in e)return t}return r}function Gt(e,t){return e=t||e,v.css(e,"display")==="none"||!v.contains(e.ownerDocument,e)}function Yt(e,t){var n,r,i=[],s=0,o=e.length;for(;s<o;s++){n=e[s];if(!n.style)continue;i[s]=v._data(n,"olddisplay"),t?(!i[s]&&n.style.display==="none"&&(n.style.display=""),n.style.display===""&&Gt(n)&&(i[s]=v._data(n,"olddisplay",nn(n.nodeName)))):(r=Dt(n,"display"),!i[s]&&r!=="none"&&v._data(n,"olddisplay",r))}for(s=0;s<o;s++){n=e[s];if(!n.style)continue;if(!t||n.style.display==="none"||n.style.display==="")n.style.display=t?i[s]||"":"none"}return e}function Zt(e,t,n){var r=Rt.exec(t);return r?Math.max(0,r[1]-(n||0))+(r[2]||"px"):t}function en(e,t,n,r){var i=n===(r?"border":"content")?4:t==="width"?1:0,s=0;for(;i<4;i+=2)n==="margin"&&(s+=v.css(e,n+$t[i],!0)),r?(n==="content"&&(s-=parseFloat(Dt(e,"padding"+$t[i]))||0),n!=="margin"&&(s-=parseFloat(Dt(e,"border"+$t[i]+"Width"))||0)):(s+=parseFloat(Dt(e,"padding"+$t[i]))||0,n!=="padding"&&(s+=parseFloat(Dt(e,"border"+$t[i]+"Width"))||0));return s}function tn(e,t,n){var r=t==="width"?e.offsetWidth:e.offsetHeight,i=!0,s=v.support.boxSizing&&v.css(e,"boxSizing")==="border-box";if(r<=0||r==null){r=Dt(e,t);if(r<0||r==null)r=e.style[t];if(Ut.test(r))return r;i=s&&(v.support.boxSizingReliable||r===e.style[t]),r=parseFloat(r)||0}return r+en(e,t,n||(s?"border":"content"),i)+"px"}function nn(e){if(Wt[e])return Wt[e];var t=v("<"+e+">").appendTo(i.body),n=t.css("display");t.remove();if(n==="none"||n===""){Pt=i.body.appendChild(Pt||v.extend(i.createElement("iframe"),{frameBorder:0,width:0,height:0}));if(!Ht||!Pt.createElement)Ht=(Pt.contentWindow||Pt.contentDocument).document,Ht.write("<!doctype html><html><body>"),Ht.close();t=Ht.body.appendChild(Ht.createElement(e)),n=Dt(t,"display"),i.body.removeChild(Pt)}return Wt[e]=n,n}function fn(e,t,n,r){var i;if(v.isArray(t))v.each(t,function(t,i){n||sn.test(e)?r(e,i):fn(e+"["+(typeof i=="object"?t:"")+"]",i,n,r)});else if(!n&&v.type(t)==="object")for(i in t)fn(e+"["+i+"]",t[i],n,r);else r(e,t)}function Cn(e){return function(t,n){typeof t!="string"&&(n=t,t="*");var r,i,s,o=t.toLowerCase().split(y),u=0,a=o.length;if(v.isFunction(n))for(;u<a;u++)r=o[u],s=/^\+/.test(r),s&&(r=r.substr(1)||"*"),i=e[r]=e[r]||[],i[s?"unshift":"push"](n)}}function kn(e,n,r,i,s,o){s=s||n.dataTypes[0],o=o||{},o[s]=!0;var u,a=e[s],f=0,l=a?a.length:0,c=e===Sn;for(;f<l&&(c||!u);f++)u=a[f](n,r,i),typeof u=="string"&&(!c||o[u]?u=t:(n.dataTypes.unshift(u),u=kn(e,n,r,i,u,o)));return(c||!u)&&!o["*"]&&(u=kn(e,n,r,i,"*",o)),u}function Ln(e,n){var r,i,s=v.ajaxSettings.flatOptions||{};for(r in n)n[r]!==t&&((s[r]?e:i||(i={}))[r]=n[r]);i&&v.extend(!0,e,i)}function An(e,n,r){var i,s,o,u,a=e.contents,f=e.dataTypes,l=e.responseFields;for(s in l)s in r&&(n[l[s]]=r[s]);while(f[0]==="*")f.shift(),i===t&&(i=e.mimeType||n.getResponseHeader("content-type"));if(i)for(s in a)if(a[s]&&a[s].test(i)){f.unshift(s);break}if(f[0]in r)o=f[0];else{for(s in r){if(!f[0]||e.converters[s+" "+f[0]]){o=s;break}u||(u=s)}o=o||u}if(o)return o!==f[0]&&f.unshift(o),r[o]}function On(e,t){var n,r,i,s,o=e.dataTypes.slice(),u=o[0],a={},f=0;e.dataFilter&&(t=e.dataFilter(t,e.dataType));if(o[1])for(n in e.converters)a[n.toLowerCase()]=e.converters[n];for(;i=o[++f];)if(i!=="*"){if(u!=="*"&&u!==i){n=a[u+" "+i]||a["* "+i];if(!n)for(r in a){s=r.split(" ");if(s[1]===i){n=a[u+" "+s[0]]||a["* "+s[0]];if(n){n===!0?n=a[r]:a[r]!==!0&&(i=s[0],o.splice(f--,0,i));break}}}if(n!==!0)if(n&&e["throws"])t=n(t);else try{t=n(t)}catch(l){return{state:"parsererror",error:n?l:"No conversion from "+u+" to "+i}}}u=i}return{state:"success",data:t}}function Fn(){try{return new e.XMLHttpRequest}catch(t){}}function In(){try{return new e.ActiveXObject("Microsoft.XMLHTTP")}catch(t){}}function $n(){return setTimeout(function(){qn=t},0),qn=v.now()}function Jn(e,t){v.each(t,function(t,n){var r=(Vn[t]||[]).concat(Vn["*"]),i=0,s=r.length;for(;i<s;i++)if(r[i].call(e,t,n))return})}function Kn(e,t,n){var r,i=0,s=0,o=Xn.length,u=v.Deferred().always(function(){delete a.elem}),a=function(){var t=qn||$n(),n=Math.max(0,f.startTime+f.duration-t),r=n/f.duration||0,i=1-r,s=0,o=f.tweens.length;for(;s<o;s++)f.tweens[s].run(i);return u.notifyWith(e,[f,i,n]),i<1&&o?n:(u.resolveWith(e,[f]),!1)},f=u.promise({elem:e,props:v.extend({},t),opts:v.extend(!0,{specialEasing:{}},n),originalProperties:t,originalOptions:n,startTime:qn||$n(),duration:n.duration,tweens:[],createTween:function(t,n,r){var i=v.Tween(e,f.opts,t,n,f.opts.specialEasing[t]||f.opts.easing);return f.tweens.push(i),i},stop:function(t){var n=0,r=t?f.tweens.length:0;for(;n<r;n++)f.tweens[n].run(1);return t?u.resolveWith(e,[f,t]):u.rejectWith(e,[f,t]),this}}),l=f.props;Qn(l,f.opts.specialEasing);for(;i<o;i++){r=Xn[i].call(f,e,l,f.opts);if(r)return r}return Jn(f,l),v.isFunction(f.opts.start)&&f.opts.start.call(e,f),v.fx.timer(v.extend(a,{anim:f,queue:f.opts.queue,elem:e})),f.progress(f.opts.progress).done(f.opts.done,f.opts.complete).fail(f.opts.fail).always(f.opts.always)}function Qn(e,t){var n,r,i,s,o;for(n in e){r=v.camelCase(n),i=t[r],s=e[n],v.isArray(s)&&(i=s[1],s=e[n]=s[0]),n!==r&&(e[r]=s,delete e[n]),o=v.cssHooks[r];if(o&&"expand"in o){s=o.expand(s),delete e[r];for(n in s)n in e||(e[n]=s[n],t[n]=i)}else t[r]=i}}function Gn(e,t,n){var r,i,s,o,u,a,f,l,c,h=this,p=e.style,d={},m=[],g=e.nodeType&&Gt(e);n.queue||(l=v._queueHooks(e,"fx"),l.unqueued==null&&(l.unqueued=0,c=l.empty.fire,l.empty.fire=function(){l.unqueued||c()}),l.unqueued++,h.always(function(){h.always(function(){l.unqueued--,v.queue(e,"fx").length||l.empty.fire()})})),e.nodeType===1&&("height"in t||"width"in t)&&(n.overflow=[p.overflow,p.overflowX,p.overflowY],v.css(e,"display")==="inline"&&v.css(e,"float")==="none"&&(!v.support.inlineBlockNeedsLayout||nn(e.nodeName)==="inline"?p.display="inline-block":p.zoom=1)),n.overflow&&(p.overflow="hidden",v.support.shrinkWrapBlocks||h.done(function(){p.overflow=n.overflow[0],p.overflowX=n.overflow[1],p.overflowY=n.overflow[2]}));for(r in t){s=t[r];if(Un.exec(s)){delete t[r],a=a||s==="toggle";if(s===(g?"hide":"show"))continue;m.push(r)}}o=m.length;if(o){u=v._data(e,"fxshow")||v._data(e,"fxshow",{}),"hidden"in u&&(g=u.hidden),a&&(u.hidden=!g),g?v(e).show():h.done(function(){v(e).hide()}),h.done(function(){var t;v.removeData(e,"fxshow",!0);for(t in d)v.style(e,t,d[t])});for(r=0;r<o;r++)i=m[r],f=h.createTween(i,g?u[i]:0),d[i]=u[i]||v.style(e,i),i in u||(u[i]=f.start,g&&(f.end=f.start,f.start=i==="width"||i==="height"?1:0))}}function Yn(e,t,n,r,i){return new Yn.prototype.init(e,t,n,r,i)}function Zn(e,t){var n,r={height:e},i=0;t=t?1:0;for(;i<4;i+=2-t)n=$t[i],r["margin"+n]=r["padding"+n]=e;return t&&(r.opacity=r.width=e),r}function tr(e){return v.isWindow(e)?e:e.nodeType===9?e.defaultView||e.parentWindow:!1}var n,r,i=e.document,s=e.location,o=e.navigator,u=e.jQuery,a=e.$,f=Array.prototype.push,l=Array.prototype.slice,c=Array.prototype.indexOf,h=Object.prototype.toString,p=Object.prototype.hasOwnProperty,d=String.prototype.trim,v=function(e,t){return new v.fn.init(e,t,n)},m=/[\-+]?(?:\d*\.|)\d+(?:[eE][\-+]?\d+|)/.source,g=/\S/,y=/\s+/,b=/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,w=/^(?:[^#<]*(<[\w\W]+>)[^>]*$|#([\w\-]*)$)/,E=/^<(\w+)\s*\/?>(?:<\/\1>|)$/,S=/^[\],:{}\s]*$/,x=/(?:^|:|,)(?:\s*\[)+/g,T=/\\(?:["\\\/bfnrt]|u[\da-fA-F]{4})/g,N=/"[^"\\\r\n]*"|true|false|null|-?(?:\d\d*\.|)\d+(?:[eE][\-+]?\d+|)/g,C=/^-ms-/,k=/-([\da-z])/gi,L=function(e,t){return(t+"").toUpperCase()},A=function(){i.addEventListener?(i.removeEventListener("DOMContentLoaded",A,!1),v.ready()):i.readyState==="complete"&&(i.detachEvent("onreadystatechange",A),v.ready())},O={};v.fn=v.prototype={constructor:v,init:function(e,n,r){var s,o,u,a;if(!e)return this;if(e.nodeType)return this.context=this[0]=e,this.length=1,this;if(typeof e=="string"){e.charAt(0)==="<"&&e.charAt(e.length-1)===">"&&e.length>=3?s=[null,e,null]:s=w.exec(e);if(s&&(s[1]||!n)){if(s[1])return n=n instanceof v?n[0]:n,a=n&&n.nodeType?n.ownerDocument||n:i,e=v.parseHTML(s[1],a,!0),E.test(s[1])&&v.isPlainObject(n)&&this.attr.call(e,n,!0),v.merge(this,e);o=i.getElementById(s[2]);if(o&&o.parentNode){if(o.id!==s[2])return r.find(e);this.length=1,this[0]=o}return this.context=i,this.selector=e,this}return!n||n.jquery?(n||r).find(e):this.constructor(n).find(e)}return v.isFunction(e)?r.ready(e):(e.selector!==t&&(this.selector=e.selector,this.context=e.context),v.makeArray(e,this))},selector:"",jquery:"1.8.3",length:0,size:function(){return this.length},toArray:function(){return l.call(this)},get:function(e){return e==null?this.toArray():e<0?this[this.length+e]:this[e]},pushStack:function(e,t,n){var r=v.merge(this.constructor(),e);return r.prevObject=this,r.context=this.context,t==="find"?r.selector=this.selector+(this.selector?" ":"")+n:t&&(r.selector=this.selector+"."+t+"("+n+")"),r},each:function(e,t){return v.each(this,e,t)},ready:function(e){return v.ready.promise().done(e),this},eq:function(e){return e=+e,e===-1?this.slice(e):this.slice(e,e+1)},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},slice:function(){return this.pushStack(l.apply(this,arguments),"slice",l.call(arguments).join(","))},map:function(e){return this.pushStack(v.map(this,function(t,n){return e.call(t,n,t)}))},end:function(){return this.prevObject||this.constructor(null)},push:f,sort:[].sort,splice:[].splice},v.fn.init.prototype=v.fn,v.extend=v.fn.extend=function(){var e,n,r,i,s,o,u=arguments[0]||{},a=1,f=arguments.length,l=!1;typeof u=="boolean"&&(l=u,u=arguments[1]||{},a=2),typeof u!="object"&&!v.isFunction(u)&&(u={}),f===a&&(u=this,--a);for(;a<f;a++)if((e=arguments[a])!=null)for(n in e){r=u[n],i=e[n];if(u===i)continue;l&&i&&(v.isPlainObject(i)||(s=v.isArray(i)))?(s?(s=!1,o=r&&v.isArray(r)?r:[]):o=r&&v.isPlainObject(r)?r:{},u[n]=v.extend(l,o,i)):i!==t&&(u[n]=i)}return u},v.extend({noConflict:function(t){return e.$===v&&(e.$=a),t&&e.jQuery===v&&(e.jQuery=u),v},isReady:!1,readyWait:1,holdReady:function(e){e?v.readyWait++:v.ready(!0)},ready:function(e){if(e===!0?--v.readyWait:v.isReady)return;if(!i.body)return setTimeout(v.ready,1);v.isReady=!0;if(e!==!0&&--v.readyWait>0)return;r.resolveWith(i,[v]),v.fn.trigger&&v(i).trigger("ready").off("ready")},isFunction:function(e){return v.type(e)==="function"},isArray:Array.isArray||function(e){return v.type(e)==="array"},isWindow:function(e){return e!=null&&e==e.window},isNumeric:function(e){return!isNaN(parseFloat(e))&&isFinite(e)},type:function(e){return e==null?String(e):O[h.call(e)]||"object"},isPlainObject:function(e){if(!e||v.type(e)!=="object"||e.nodeType||v.isWindow(e))return!1;try{if(e.constructor&&!p.call(e,"constructor")&&!p.call(e.constructor.prototype,"isPrototypeOf"))return!1}catch(n){return!1}var r;for(r in e);return r===t||p.call(e,r)},isEmptyObject:function(e){var t;for(t in e)return!1;return!0},error:function(e){throw new Error(e)},parseHTML:function(e,t,n){var r;return!e||typeof e!="string"?null:(typeof t=="boolean"&&(n=t,t=0),t=t||i,(r=E.exec(e))?[t.createElement(r[1])]:(r=v.buildFragment([e],t,n?null:[]),v.merge([],(r.cacheable?v.clone(r.fragment):r.fragment).childNodes)))},parseJSON:function(t){if(!t||typeof t!="string")return null;t=v.trim(t);if(e.JSON&&e.JSON.parse)return e.JSON.parse(t);if(S.test(t.replace(T,"@").replace(N,"]").replace(x,"")))return(new Function("return "+t))();v.error("Invalid JSON: "+t)},parseXML:function(n){var r,i;if(!n||typeof n!="string")return null;try{e.DOMParser?(i=new DOMParser,r=i.parseFromString(n,"text/xml")):(r=new ActiveXObject("Microsoft.XMLDOM"),r.async="false",r.loadXML(n))}catch(s){r=t}return(!r||!r.documentElement||r.getElementsByTagName("parsererror").length)&&v.error("Invalid XML: "+n),r},noop:function(){},globalEval:function(t){t&&g.test(t)&&(e.execScript||function(t){e.eval.call(e,t)})(t)},camelCase:function(e){return e.replace(C,"ms-").replace(k,L)},nodeName:function(e,t){return e.nodeName&&e.nodeName.toLowerCase()===t.toLowerCase()},each:function(e,n,r){var i,s=0,o=e.length,u=o===t||v.isFunction(e);if(r){if(u){for(i in e)if(n.apply(e[i],r)===!1)break}else for(;s<o;)if(n.apply(e[s++],r)===!1)break}else if(u){for(i in e)if(n.call(e[i],i,e[i])===!1)break}else for(;s<o;)if(n.call(e[s],s,e[s++])===!1)break;return e},trim:d&&!d.call("\ufeff\u00a0")?function(e){return e==null?"":d.call(e)}:function(e){return e==null?"":(e+"").replace(b,"")},makeArray:function(e,t){var n,r=t||[];return e!=null&&(n=v.type(e),e.length==null||n==="string"||n==="function"||n==="regexp"||v.isWindow(e)?f.call(r,e):v.merge(r,e)),r},inArray:function(e,t,n){var r;if(t){if(c)return c.call(t,e,n);r=t.length,n=n?n<0?Math.max(0,r+n):n:0;for(;n<r;n++)if(n in t&&t[n]===e)return n}return-1},merge:function(e,n){var r=n.length,i=e.length,s=0;if(typeof r=="number")for(;s<r;s++)e[i++]=n[s];else while(n[s]!==t)e[i++]=n[s++];return e.length=i,e},grep:function(e,t,n){var r,i=[],s=0,o=e.length;n=!!n;for(;s<o;s++)r=!!t(e[s],s),n!==r&&i.push(e[s]);return i},map:function(e,n,r){var i,s,o=[],u=0,a=e.length,f=e instanceof v||a!==t&&typeof a=="number"&&(a>0&&e[0]&&e[a-1]||a===0||v.isArray(e));if(f)for(;u<a;u++)i=n(e[u],u,r),i!=null&&(o[o.length]=i);else for(s in e)i=n(e[s],s,r),i!=null&&(o[o.length]=i);return o.concat.apply([],o)},guid:1,proxy:function(e,n){var r,i,s;return typeof n=="string"&&(r=e[n],n=e,e=r),v.isFunction(e)?(i=l.call(arguments,2),s=function(){return e.apply(n,i.concat(l.call(arguments)))},s.guid=e.guid=e.guid||v.guid++,s):t},access:function(e,n,r,i,s,o,u){var a,f=r==null,l=0,c=e.length;if(r&&typeof r=="object"){for(l in r)v.access(e,n,l,r[l],1,o,i);s=1}else if(i!==t){a=u===t&&v.isFunction(i),f&&(a?(a=n,n=function(e,t,n){return a.call(v(e),n)}):(n.call(e,i),n=null));if(n)for(;l<c;l++)n(e[l],r,a?i.call(e[l],l,n(e[l],r)):i,u);s=1}return s?e:f?n.call(e):c?n(e[0],r):o},now:function(){return(new Date).getTime()}}),v.ready.promise=function(t){if(!r){r=v.Deferred();if(i.readyState==="complete")setTimeout(v.ready,1);else if(i.addEventListener)i.addEventListener("DOMContentLoaded",A,!1),e.addEventListener("load",v.ready,!1);else{i.attachEvent("onreadystatechange",A),e.attachEvent("onload",v.ready);var n=!1;try{n=e.frameElement==null&&i.documentElement}catch(s){}n&&n.doScroll&&function o(){if(!v.isReady){try{n.doScroll("left")}catch(e){return setTimeout(o,50)}v.ready()}}()}}return r.promise(t)},v.each("Boolean Number String Function Array Date RegExp Object".split(" "),function(e,t){O["[object "+t+"]"]=t.toLowerCase()}),n=v(i);var M={};v.Callbacks=function(e){e=typeof e=="string"?M[e]||_(e):v.extend({},e);var n,r,i,s,o,u,a=[],f=!e.once&&[],l=function(t){n=e.memory&&t,r=!0,u=s||0,s=0,o=a.length,i=!0;for(;a&&u<o;u++)if(a[u].apply(t[0],t[1])===!1&&e.stopOnFalse){n=!1;break}i=!1,a&&(f?f.length&&l(f.shift()):n?a=[]:c.disable())},c={add:function(){if(a){var t=a.length;(function r(t){v.each(t,function(t,n){var i=v.type(n);i==="function"?(!e.unique||!c.has(n))&&a.push(n):n&&n.length&&i!=="string"&&r(n)})})(arguments),i?o=a.length:n&&(s=t,l(n))}return this},remove:function(){return a&&v.each(arguments,function(e,t){var n;while((n=v.inArray(t,a,n))>-1)a.splice(n,1),i&&(n<=o&&o--,n<=u&&u--)}),this},has:function(e){return v.inArray(e,a)>-1},empty:function(){return a=[],this},disable:function(){return a=f=n=t,this},disabled:function(){return!a},lock:function(){return f=t,n||c.disable(),this},locked:function(){return!f},fireWith:function(e,t){return t=t||[],t=[e,t.slice?t.slice():t],a&&(!r||f)&&(i?f.push(t):l(t)),this},fire:function(){return c.fireWith(this,arguments),this},fired:function(){return!!r}};return c},v.extend({Deferred:function(e){var t=[["resolve","done",v.Callbacks("once memory"),"resolved"],["reject","fail",v.Callbacks("once memory"),"rejected"],["notify","progress",v.Callbacks("memory")]],n="pending",r={state:function(){return n},always:function(){return i.done(arguments).fail(arguments),this},then:function(){var e=arguments;return v.Deferred(function(n){v.each(t,function(t,r){var s=r[0],o=e[t];i[r[1]](v.isFunction(o)?function(){var e=o.apply(this,arguments);e&&v.isFunction(e.promise)?e.promise().done(n.resolve).fail(n.reject).progress(n.notify):n[s+"With"](this===i?n:this,[e])}:n[s])}),e=null}).promise()},promise:function(e){return e!=null?v.extend(e,r):r}},i={};return r.pipe=r.then,v.each(t,function(e,s){var o=s[2],u=s[3];r[s[1]]=o.add,u&&o.add(function(){n=u},t[e^1][2].disable,t[2][2].lock),i[s[0]]=o.fire,i[s[0]+"With"]=o.fireWith}),r.promise(i),e&&e.call(i,i),i},when:function(e){var t=0,n=l.call(arguments),r=n.length,i=r!==1||e&&v.isFunction(e.promise)?r:0,s=i===1?e:v.Deferred(),o=function(e,t,n){return function(r){t[e]=this,n[e]=arguments.length>1?l.call(arguments):r,n===u?s.notifyWith(t,n):--i||s.resolveWith(t,n)}},u,a,f;if(r>1){u=new Array(r),a=new Array(r),f=new Array(r);for(;t<r;t++)n[t]&&v.isFunction(n[t].promise)?n[t].promise().done(o(t,f,n)).fail(s.reject).progress(o(t,a,u)):--i}return i||s.resolveWith(f,n),s.promise()}}),v.support=function(){var t,n,r,s,o,u,a,f,l,c,h,p=i.createElement("div");p.setAttribute("className","t"),p.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",n=p.getElementsByTagName("*"),r=p.getElementsByTagName("a")[0];if(!n||!r||!n.length)return{};s=i.createElement("select"),o=s.appendChild(i.createElement("option")),u=p.getElementsByTagName("input")[0],r.style.cssText="top:1px;float:left;opacity:.5",t={leadingWhitespace:p.firstChild.nodeType===3,tbody:!p.getElementsByTagName("tbody").length,htmlSerialize:!!p.getElementsByTagName("link").length,style:/top/.test(r.getAttribute("style")),hrefNormalized:r.getAttribute("href")==="/a",opacity:/^0.5/.test(r.style.opacity),cssFloat:!!r.style.cssFloat,checkOn:u.value==="on",optSelected:o.selected,getSetAttribute:p.className!=="t",enctype:!!i.createElement("form").enctype,html5Clone:i.createElement("nav").cloneNode(!0).outerHTML!=="<:nav></:nav>",boxModel:i.compatMode==="CSS1Compat",submitBubbles:!0,changeBubbles:!0,focusinBubbles:!1,deleteExpando:!0,noCloneEvent:!0,inlineBlockNeedsLayout:!1,shrinkWrapBlocks:!1,reliableMarginRight:!0,boxSizingReliable:!0,pixelPosition:!1},u.checked=!0,t.noCloneChecked=u.cloneNode(!0).checked,s.disabled=!0,t.optDisabled=!o.disabled;try{delete p.test}catch(d){t.deleteExpando=!1}!p.addEventListener&&p.attachEvent&&p.fireEvent&&(p.attachEvent("onclick",h=function(){t.noCloneEvent=!1}),p.cloneNode(!0).fireEvent("onclick"),p.detachEvent("onclick",h)),u=i.createElement("input"),u.value="t",u.setAttribute("type","radio"),t.radioValue=u.value==="t",u.setAttribute("checked","checked"),u.setAttribute("name","t"),p.appendChild(u),a=i.createDocumentFragment(),a.appendChild(p.lastChild),t.checkClone=a.cloneNode(!0).cloneNode(!0).lastChild.checked,t.appendChecked=u.checked,a.removeChild(u),a.appendChild(p);if(p.attachEvent)for(l in{submit:!0,change:!0,focusin:!0})f="on"+l,c=f in p,c||(p.setAttribute(f,"return;"),c=typeof p[f]=="function"),t[l+"Bubbles"]=c;return v(function(){var n,r,s,o,u="padding:0;margin:0;border:0;display:block;overflow:hidden;",a=i.getElementsByTagName("body")[0];if(!a)return;n=i.createElement("div"),n.style.cssText="visibility:hidden;border:0;width:0;height:0;position:static;top:0;margin-top:1px",a.insertBefore(n,a.firstChild),r=i.createElement("div"),n.appendChild(r),r.innerHTML="<table><tr><td></td><td>t</td></tr></table>",s=r.getElementsByTagName("td"),s[0].style.cssText="padding:0;margin:0;border:0;display:none",c=s[0].offsetHeight===0,s[0].style.display="",s[1].style.display="none",t.reliableHiddenOffsets=c&&s[0].offsetHeight===0,r.innerHTML="",r.style.cssText="box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;padding:1px;border:1px;display:block;width:4px;margin-top:1%;position:absolute;top:1%;",t.boxSizing=r.offsetWidth===4,t.doesNotIncludeMarginInBodyOffset=a.offsetTop!==1,e.getComputedStyle&&(t.pixelPosition=(e.getComputedStyle(r,null)||{}).top!=="1%",t.boxSizingReliable=(e.getComputedStyle(r,null)||{width:"4px"}).width==="4px",o=i.createElement("div"),o.style.cssText=r.style.cssText=u,o.style.marginRight=o.style.width="0",r.style.width="1px",r.appendChild(o),t.reliableMarginRight=!parseFloat((e.getComputedStyle(o,null)||{}).marginRight)),typeof r.style.zoom!="undefined"&&(r.innerHTML="",r.style.cssText=u+"width:1px;padding:1px;display:inline;zoom:1",t.inlineBlockNeedsLayout=r.offsetWidth===3,r.style.display="block",r.style.overflow="visible",r.innerHTML="<div></div>",r.firstChild.style.width="5px",t.shrinkWrapBlocks=r.offsetWidth!==3,n.style.zoom=1),a.removeChild(n),n=r=s=o=null}),a.removeChild(p),n=r=s=o=u=a=p=null,t}();var D=/(?:\{[\s\S]*\}|\[[\s\S]*\])$/,P=/([A-Z])/g;v.extend({cache:{},deletedIds:[],uuid:0,expando:"jQuery"+(v.fn.jquery+Math.random()).replace(/\D/g,""),noData:{embed:!0,object:"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000",applet:!0},hasData:function(e){return e=e.nodeType?v.cache[e[v.expando]]:e[v.expando],!!e&&!B(e)},data:function(e,n,r,i){if(!v.acceptData(e))return;var s,o,u=v.expando,a=typeof n=="string",f=e.nodeType,l=f?v.cache:e,c=f?e[u]:e[u]&&u;if((!c||!l[c]||!i&&!l[c].data)&&a&&r===t)return;c||(f?e[u]=c=v.deletedIds.pop()||v.guid++:c=u),l[c]||(l[c]={},f||(l[c].toJSON=v.noop));if(typeof n=="object"||typeof n=="function")i?l[c]=v.extend(l[c],n):l[c].data=v.extend(l[c].data,n);return s=l[c],i||(s.data||(s.data={}),s=s.data),r!==t&&(s[v.camelCase(n)]=r),a?(o=s[n],o==null&&(o=s[v.camelCase(n)])):o=s,o},removeData:function(e,t,n){if(!v.acceptData(e))return;var r,i,s,o=e.nodeType,u=o?v.cache:e,a=o?e[v.expando]:v.expando;if(!u[a])return;if(t){r=n?u[a]:u[a].data;if(r){v.isArray(t)||(t in r?t=[t]:(t=v.camelCase(t),t in r?t=[t]:t=t.split(" ")));for(i=0,s=t.length;i<s;i++)delete r[t[i]];if(!(n?B:v.isEmptyObject)(r))return}}if(!n){delete u[a].data;if(!B(u[a]))return}o?v.cleanData([e],!0):v.support.deleteExpando||u!=u.window?delete u[a]:u[a]=null},_data:function(e,t,n){return v.data(e,t,n,!0)},acceptData:function(e){var t=e.nodeName&&v.noData[e.nodeName.toLowerCase()];return!t||t!==!0&&e.getAttribute("classid")===t}}),v.fn.extend({data:function(e,n){var r,i,s,o,u,a=this[0],f=0,l=null;if(e===t){if(this.length){l=v.data(a);if(a.nodeType===1&&!v._data(a,"parsedAttrs")){s=a.attributes;for(u=s.length;f<u;f++)o=s[f].name,o.indexOf("data-")||(o=v.camelCase(o.substring(5)),H(a,o,l[o]));v._data(a,"parsedAttrs",!0)}}return l}return typeof e=="object"?this.each(function(){v.data(this,e)}):(r=e.split(".",2),r[1]=r[1]?"."+r[1]:"",i=r[1]+"!",v.access(this,function(n){if(n===t)return l=this.triggerHandler("getData"+i,[r[0]]),l===t&&a&&(l=v.data(a,e),l=H(a,e,l)),l===t&&r[1]?this.data(r[0]):l;r[1]=n,this.each(function(){var t=v(this);t.triggerHandler("setData"+i,r),v.data(this,e,n),t.triggerHandler("changeData"+i,r)})},null,n,arguments.length>1,null,!1))},removeData:function(e){return this.each(function(){v.removeData(this,e)})}}),v.extend({queue:function(e,t,n){var r;if(e)return t=(t||"fx")+"queue",r=v._data(e,t),n&&(!r||v.isArray(n)?r=v._data(e,t,v.makeArray(n)):r.push(n)),r||[]},dequeue:function(e,t){t=t||"fx";var n=v.queue(e,t),r=n.length,i=n.shift(),s=v._queueHooks(e,t),o=function(){v.dequeue(e,t)};i==="inprogress"&&(i=n.shift(),r--),i&&(t==="fx"&&n.unshift("inprogress"),delete s.stop,i.call(e,o,s)),!r&&s&&s.empty.fire()},_queueHooks:function(e,t){var n=t+"queueHooks";return v._data(e,n)||v._data(e,n,{empty:v.Callbacks("once memory").add(function(){v.removeData(e,t+"queue",!0),v.removeData(e,n,!0)})})}}),v.fn.extend({queue:function(e,n){var r=2;return typeof e!="string"&&(n=e,e="fx",r--),arguments.length<r?v.queue(this[0],e):n===t?this:this.each(function(){var t=v.queue(this,e,n);v._queueHooks(this,e),e==="fx"&&t[0]!=="inprogress"&&v.dequeue(this,e)})},dequeue:function(e){return this.each(function(){v.dequeue(this,e)})},delay:function(e,t){return e=v.fx?v.fx.speeds[e]||e:e,t=t||"fx",this.queue(t,function(t,n){var r=setTimeout(t,e);n.stop=function(){clearTimeout(r)}})},clearQueue:function(e){return this.queue(e||"fx",[])},promise:function(e,n){var r,i=1,s=v.Deferred(),o=this,u=this.length,a=function(){--i||s.resolveWith(o,[o])};typeof e!="string"&&(n=e,e=t),e=e||"fx";while(u--)r=v._data(o[u],e+"queueHooks"),r&&r.empty&&(i++,r.empty.add(a));return a(),s.promise(n)}});var j,F,I,q=/[\t\r\n]/g,R=/\r/g,U=/^(?:button|input)$/i,z=/^(?:button|input|object|select|textarea)$/i,W=/^a(?:rea|)$/i,X=/^(?:autofocus|autoplay|async|checked|controls|defer|disabled|hidden|loop|multiple|open|readonly|required|scoped|selected)$/i,V=v.support.getSetAttribute;v.fn.extend({attr:function(e,t){return v.access(this,v.attr,e,t,arguments.length>1)},removeAttr:function(e){return this.each(function(){v.removeAttr(this,e)})},prop:function(e,t){return v.access(this,v.prop,e,t,arguments.length>1)},removeProp:function(e){return e=v.propFix[e]||e,this.each(function(){try{this[e]=t,delete this[e]}catch(n){}})},addClass:function(e){var t,n,r,i,s,o,u;if(v.isFunction(e))return this.each(function(t){v(this).addClass(e.call(this,t,this.className))});if(e&&typeof e=="string"){t=e.split(y);for(n=0,r=this.length;n<r;n++){i=this[n];if(i.nodeType===1)if(!i.className&&t.length===1)i.className=e;else{s=" "+i.className+" ";for(o=0,u=t.length;o<u;o++)s.indexOf(" "+t[o]+" ")<0&&(s+=t[o]+" ");i.className=v.trim(s)}}}return this},removeClass:function(e){var n,r,i,s,o,u,a;if(v.isFunction(e))return this.each(function(t){v(this).removeClass(e.call(this,t,this.className))});if(e&&typeof e=="string"||e===t){n=(e||"").split(y);for(u=0,a=this.length;u<a;u++){i=this[u];if(i.nodeType===1&&i.className){r=(" "+i.className+" ").replace(q," ");for(s=0,o=n.length;s<o;s++)while(r.indexOf(" "+n[s]+" ")>=0)r=r.replace(" "+n[s]+" "," ");i.className=e?v.trim(r):""}}}return this},toggleClass:function(e,t){var n=typeof e,r=typeof t=="boolean";return v.isFunction(e)?this.each(function(n){v(this).toggleClass(e.call(this,n,this.className,t),t)}):this.each(function(){if(n==="string"){var i,s=0,o=v(this),u=t,a=e.split(y);while(i=a[s++])u=r?u:!o.hasClass(i),o[u?"addClass":"removeClass"](i)}else if(n==="undefined"||n==="boolean")this.className&&v._data(this,"__className__",this.className),this.className=this.className||e===!1?"":v._data(this,"__className__")||""})},hasClass:function(e){var t=" "+e+" ",n=0,r=this.length;for(;n<r;n++)if(this[n].nodeType===1&&(" "+this[n].className+" ").replace(q," ").indexOf(t)>=0)return!0;return!1},val:function(e){var n,r,i,s=this[0];if(!arguments.length){if(s)return n=v.valHooks[s.type]||v.valHooks[s.nodeName.toLowerCase()],n&&"get"in n&&(r=n.get(s,"value"))!==t?r:(r=s.value,typeof r=="string"?r.replace(R,""):r==null?"":r);return}return i=v.isFunction(e),this.each(function(r){var s,o=v(this);if(this.nodeType!==1)return;i?s=e.call(this,r,o.val()):s=e,s==null?s="":typeof s=="number"?s+="":v.isArray(s)&&(s=v.map(s,function(e){return e==null?"":e+""})),n=v.valHooks[this.type]||v.valHooks[this.nodeName.toLowerCase()];if(!n||!("set"in n)||n.set(this,s,"value")===t)this.value=s})}}),v.extend({valHooks:{option:{get:function(e){var t=e.attributes.value;return!t||t.specified?e.value:e.text}},select:{get:function(e){var t,n,r=e.options,i=e.selectedIndex,s=e.type==="select-one"||i<0,o=s?null:[],u=s?i+1:r.length,a=i<0?u:s?i:0;for(;a<u;a++){n=r[a];if((n.selected||a===i)&&(v.support.optDisabled?!n.disabled:n.getAttribute("disabled")===null)&&(!n.parentNode.disabled||!v.nodeName(n.parentNode,"optgroup"))){t=v(n).val();if(s)return t;o.push(t)}}return o},set:function(e,t){var n=v.makeArray(t);return v(e).find("option").each(function(){this.selected=v.inArray(v(this).val(),n)>=0}),n.length||(e.selectedIndex=-1),n}}},attrFn:{},attr:function(e,n,r,i){var s,o,u,a=e.nodeType;if(!e||a===3||a===8||a===2)return;if(i&&v.isFunction(v.fn[n]))return v(e)[n](r);if(typeof e.getAttribute=="undefined")return v.prop(e,n,r);u=a!==1||!v.isXMLDoc(e),u&&(n=n.toLowerCase(),o=v.attrHooks[n]||(X.test(n)?F:j));if(r!==t){if(r===null){v.removeAttr(e,n);return}return o&&"set"in o&&u&&(s=o.set(e,r,n))!==t?s:(e.setAttribute(n,r+""),r)}return o&&"get"in o&&u&&(s=o.get(e,n))!==null?s:(s=e.getAttribute(n),s===null?t:s)},removeAttr:function(e,t){var n,r,i,s,o=0;if(t&&e.nodeType===1){r=t.split(y);for(;o<r.length;o++)i=r[o],i&&(n=v.propFix[i]||i,s=X.test(i),s||v.attr(e,i,""),e.removeAttribute(V?i:n),s&&n in e&&(e[n]=!1))}},attrHooks:{type:{set:function(e,t){if(U.test(e.nodeName)&&e.parentNode)v.error("type property can't be changed");else if(!v.support.radioValue&&t==="radio"&&v.nodeName(e,"input")){var n=e.value;return e.setAttribute("type",t),n&&(e.value=n),t}}},value:{get:function(e,t){return j&&v.nodeName(e,"button")?j.get(e,t):t in e?e.value:null},set:function(e,t,n){if(j&&v.nodeName(e,"button"))return j.set(e,t,n);e.value=t}}},propFix:{tabindex:"tabIndex",readonly:"readOnly","for":"htmlFor","class":"className",maxlength:"maxLength",cellspacing:"cellSpacing",cellpadding:"cellPadding",rowspan:"rowSpan",colspan:"colSpan",usemap:"useMap",frameborder:"frameBorder",contenteditable:"contentEditable"},prop:function(e,n,r){var i,s,o,u=e.nodeType;if(!e||u===3||u===8||u===2)return;return o=u!==1||!v.isXMLDoc(e),o&&(n=v.propFix[n]||n,s=v.propHooks[n]),r!==t?s&&"set"in s&&(i=s.set(e,r,n))!==t?i:e[n]=r:s&&"get"in s&&(i=s.get(e,n))!==null?i:e[n]},propHooks:{tabIndex:{get:function(e){var n=e.getAttributeNode("tabindex");return n&&n.specified?parseInt(n.value,10):z.test(e.nodeName)||W.test(e.nodeName)&&e.href?0:t}}}}),F={get:function(e,n){var r,i=v.prop(e,n);return i===!0||typeof i!="boolean"&&(r=e.getAttributeNode(n))&&r.nodeValue!==!1?n.toLowerCase():t},set:function(e,t,n){var r;return t===!1?v.removeAttr(e,n):(r=v.propFix[n]||n,r in e&&(e[r]=!0),e.setAttribute(n,n.toLowerCase())),n}},V||(I={name:!0,id:!0,coords:!0},j=v.valHooks.button={get:function(e,n){var r;return r=e.getAttributeNode(n),r&&(I[n]?r.value!=="":r.specified)?r.value:t},set:function(e,t,n){var r=e.getAttributeNode(n);return r||(r=i.createAttribute(n),e.setAttributeNode(r)),r.value=t+""}},v.each(["width","height"],function(e,t){v.attrHooks[t]=v.extend(v.attrHooks[t],{set:function(e,n){if(n==="")return e.setAttribute(t,"auto"),n}})}),v.attrHooks.contenteditable={get:j.get,set:function(e,t,n){t===""&&(t="false"),j.set(e,t,n)}}),v.support.hrefNormalized||v.each(["href","src","width","height"],function(e,n){v.attrHooks[n]=v.extend(v.attrHooks[n],{get:function(e){var r=e.getAttribute(n,2);return r===null?t:r}})}),v.support.style||(v.attrHooks.style={get:function(e){return e.style.cssText.toLowerCase()||t},set:function(e,t){return e.style.cssText=t+""}}),v.support.optSelected||(v.propHooks.selected=v.extend(v.propHooks.selected,{get:function(e){var t=e.parentNode;return t&&(t.selectedIndex,t.parentNode&&t.parentNode.selectedIndex),null}})),v.support.enctype||(v.propFix.enctype="encoding"),v.support.checkOn||v.each(["radio","checkbox"],function(){v.valHooks[this]={get:function(e){return e.getAttribute("value")===null?"on":e.value}}}),v.each(["radio","checkbox"],function(){v.valHooks[this]=v.extend(v.valHooks[this],{set:function(e,t){if(v.isArray(t))return e.checked=v.inArray(v(e).val(),t)>=0}})});var $=/^(?:textarea|input|select)$/i,J=/^([^\.]*|)(?:\.(.+)|)$/,K=/(?:^|\s)hover(\.\S+|)\b/,Q=/^key/,G=/^(?:mouse|contextmenu)|click/,Y=/^(?:focusinfocus|focusoutblur)$/,Z=function(e){return v.event.special.hover?e:e.replace(K,"mouseenter$1 mouseleave$1")};v.event={add:function(e,n,r,i,s){var o,u,a,f,l,c,h,p,d,m,g;if(e.nodeType===3||e.nodeType===8||!n||!r||!(o=v._data(e)))return;r.handler&&(d=r,r=d.handler,s=d.selector),r.guid||(r.guid=v.guid++),a=o.events,a||(o.events=a={}),u=o.handle,u||(o.handle=u=function(e){return typeof v=="undefined"||!!e&&v.event.triggered===e.type?t:v.event.dispatch.apply(u.elem,arguments)},u.elem=e),n=v.trim(Z(n)).split(" ");for(f=0;f<n.length;f++){l=J.exec(n[f])||[],c=l[1],h=(l[2]||"").split(".").sort(),g=v.event.special[c]||{},c=(s?g.delegateType:g.bindType)||c,g=v.event.special[c]||{},p=v.extend({type:c,origType:l[1],data:i,handler:r,guid:r.guid,selector:s,needsContext:s&&v.expr.match.needsContext.test(s),namespace:h.join(".")},d),m=a[c];if(!m){m=a[c]=[],m.delegateCount=0;if(!g.setup||g.setup.call(e,i,h,u)===!1)e.addEventListener?e.addEventListener(c,u,!1):e.attachEvent&&e.attachEvent("on"+c,u)}g.add&&(g.add.call(e,p),p.handler.guid||(p.handler.guid=r.guid)),s?m.splice(m.delegateCount++,0,p):m.push(p),v.event.global[c]=!0}e=null},global:{},remove:function(e,t,n,r,i){var s,o,u,a,f,l,c,h,p,d,m,g=v.hasData(e)&&v._data(e);if(!g||!(h=g.events))return;t=v.trim(Z(t||"")).split(" ");for(s=0;s<t.length;s++){o=J.exec(t[s])||[],u=a=o[1],f=o[2];if(!u){for(u in h)v.event.remove(e,u+t[s],n,r,!0);continue}p=v.event.special[u]||{},u=(r?p.delegateType:p.bindType)||u,d=h[u]||[],l=d.length,f=f?new RegExp("(^|\\.)"+f.split(".").sort().join("\\.(?:.*\\.|)")+"(\\.|$)"):null;for(c=0;c<d.length;c++)m=d[c],(i||a===m.origType)&&(!n||n.guid===m.guid)&&(!f||f.test(m.namespace))&&(!r||r===m.selector||r==="**"&&m.selector)&&(d.splice(c--,1),m.selector&&d.delegateCount--,p.remove&&p.remove.call(e,m));d.length===0&&l!==d.length&&((!p.teardown||p.teardown.call(e,f,g.handle)===!1)&&v.removeEvent(e,u,g.handle),delete h[u])}v.isEmptyObject(h)&&(delete g.handle,v.removeData(e,"events",!0))},customEvent:{getData:!0,setData:!0,changeData:!0},trigger:function(n,r,s,o){if(!s||s.nodeType!==3&&s.nodeType!==8){var u,a,f,l,c,h,p,d,m,g,y=n.type||n,b=[];if(Y.test(y+v.event.triggered))return;y.indexOf("!")>=0&&(y=y.slice(0,-1),a=!0),y.indexOf(".")>=0&&(b=y.split("."),y=b.shift(),b.sort());if((!s||v.event.customEvent[y])&&!v.event.global[y])return;n=typeof n=="object"?n[v.expando]?n:new v.Event(y,n):new v.Event(y),n.type=y,n.isTrigger=!0,n.exclusive=a,n.namespace=b.join("."),n.namespace_re=n.namespace?new RegExp("(^|\\.)"+b.join("\\.(?:.*\\.|)")+"(\\.|$)"):null,h=y.indexOf(":")<0?"on"+y:"";if(!s){u=v.cache;for(f in u)u[f].events&&u[f].events[y]&&v.event.trigger(n,r,u[f].handle.elem,!0);return}n.result=t,n.target||(n.target=s),r=r!=null?v.makeArray(r):[],r.unshift(n),p=v.event.special[y]||{};if(p.trigger&&p.trigger.apply(s,r)===!1)return;m=[[s,p.bindType||y]];if(!o&&!p.noBubble&&!v.isWindow(s)){g=p.delegateType||y,l=Y.test(g+y)?s:s.parentNode;for(c=s;l;l=l.parentNode)m.push([l,g]),c=l;c===(s.ownerDocument||i)&&m.push([c.defaultView||c.parentWindow||e,g])}for(f=0;f<m.length&&!n.isPropagationStopped();f++)l=m[f][0],n.type=m[f][1],d=(v._data(l,"events")||{})[n.type]&&v._data(l,"handle"),d&&d.apply(l,r),d=h&&l[h],d&&v.acceptData(l)&&d.apply&&d.apply(l,r)===!1&&n.preventDefault();return n.type=y,!o&&!n.isDefaultPrevented()&&(!p._default||p._default.apply(s.ownerDocument,r)===!1)&&(y!=="click"||!v.nodeName(s,"a"))&&v.acceptData(s)&&h&&s[y]&&(y!=="focus"&&y!=="blur"||n.target.offsetWidth!==0)&&!v.isWindow(s)&&(c=s[h],c&&(s[h]=null),v.event.triggered=y,s[y](),v.event.triggered=t,c&&(s[h]=c)),n.result}return},dispatch:function(n){n=v.event.fix(n||e.event);var r,i,s,o,u,a,f,c,h,p,d=(v._data(this,"events")||{})[n.type]||[],m=d.delegateCount,g=l.call(arguments),y=!n.exclusive&&!n.namespace,b=v.event.special[n.type]||{},w=[];g[0]=n,n.delegateTarget=this;if(b.preDispatch&&b.preDispatch.call(this,n)===!1)return;if(m&&(!n.button||n.type!=="click"))for(s=n.target;s!=this;s=s.parentNode||this)if(s.disabled!==!0||n.type!=="click"){u={},f=[];for(r=0;r<m;r++)c=d[r],h=c.selector,u[h]===t&&(u[h]=c.needsContext?v(h,this).index(s)>=0:v.find(h,this,null,[s]).length),u[h]&&f.push(c);f.length&&w.push({elem:s,matches:f})}d.length>m&&w.push({elem:this,matches:d.slice(m)});for(r=0;r<w.length&&!n.isPropagationStopped();r++){a=w[r],n.currentTarget=a.elem;for(i=0;i<a.matches.length&&!n.isImmediatePropagationStopped();i++){c=a.matches[i];if(y||!n.namespace&&!c.namespace||n.namespace_re&&n.namespace_re.test(c.namespace))n.data=c.data,n.handleObj=c,o=((v.event.special[c.origType]||{}).handle||c.handler).apply(a.elem,g),o!==t&&(n.result=o,o===!1&&(n.preventDefault(),n.stopPropagation()))}}return b.postDispatch&&b.postDispatch.call(this,n),n.result},props:"attrChange attrName relatedNode srcElement altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(" "),fixHooks:{},keyHooks:{props:"char charCode key keyCode".split(" "),filter:function(e,t){return e.which==null&&(e.which=t.charCode!=null?t.charCode:t.keyCode),e}},mouseHooks:{props:"button buttons clientX clientY fromElement offsetX offsetY pageX pageY screenX screenY toElement".split(" "),filter:function(e,n){var r,s,o,u=n.button,a=n.fromElement;return e.pageX==null&&n.clientX!=null&&(r=e.target.ownerDocument||i,s=r.documentElement,o=r.body,e.pageX=n.clientX+(s&&s.scrollLeft||o&&o.scrollLeft||0)-(s&&s.clientLeft||o&&o.clientLeft||0),e.pageY=n.clientY+(s&&s.scrollTop||o&&o.scrollTop||0)-(s&&s.clientTop||o&&o.clientTop||0)),!e.relatedTarget&&a&&(e.relatedTarget=a===e.target?n.toElement:a),!e.which&&u!==t&&(e.which=u&1?1:u&2?3:u&4?2:0),e}},fix:function(e){if(e[v.expando])return e;var t,n,r=e,s=v.event.fixHooks[e.type]||{},o=s.props?this.props.concat(s.props):this.props;e=v.Event(r);for(t=o.length;t;)n=o[--t],e[n]=r[n];return e.target||(e.target=r.srcElement||i),e.target.nodeType===3&&(e.target=e.target.parentNode),e.metaKey=!!e.metaKey,s.filter?s.filter(e,r):e},special:{load:{noBubble:!0},focus:{delegateType:"focusin"},blur:{delegateType:"focusout"},beforeunload:{setup:function(e,t,n){v.isWindow(this)&&(this.onbeforeunload=n)},teardown:function(e,t){this.onbeforeunload===t&&(this.onbeforeunload=null)}}},simulate:function(e,t,n,r){var i=v.extend(new v.Event,n,{type:e,isSimulated:!0,originalEvent:{}});r?v.event.trigger(i,null,t):v.event.dispatch.call(t,i),i.isDefaultPrevented()&&n.preventDefault()}},v.event.handle=v.event.dispatch,v.removeEvent=i.removeEventListener?function(e,t,n){e.removeEventListener&&e.removeEventListener(t,n,!1)}:function(e,t,n){var r="on"+t;e.detachEvent&&(typeof e[r]=="undefined"&&(e[r]=null),e.detachEvent(r,n))},v.Event=function(e,t){if(!(this instanceof v.Event))return new v.Event(e,t);e&&e.type?(this.originalEvent=e,this.type=e.type,this.isDefaultPrevented=e.defaultPrevented||e.returnValue===!1||e.getPreventDefault&&e.getPreventDefault()?tt:et):this.type=e,t&&v.extend(this,t),this.timeStamp=e&&e.timeStamp||v.now(),this[v.expando]=!0},v.Event.prototype={preventDefault:function(){this.isDefaultPrevented=tt;var e=this.originalEvent;if(!e)return;e.preventDefault?e.preventDefault():e.returnValue=!1},stopPropagation:function(){this.isPropagationStopped=tt;var e=this.originalEvent;if(!e)return;e.stopPropagation&&e.stopPropagation(),e.cancelBubble=!0},stopImmediatePropagation:function(){this.isImmediatePropagationStopped=tt,this.stopPropagation()},isDefaultPrevented:et,isPropagationStopped:et,isImmediatePropagationStopped:et},v.each({mouseenter:"mouseover",mouseleave:"mouseout"},function(e,t){v.event.special[e]={delegateType:t,bindType:t,handle:function(e){var n,r=this,i=e.relatedTarget,s=e.handleObj,o=s.selector;if(!i||i!==r&&!v.contains(r,i))e.type=s.origType,n=s.handler.apply(this,arguments),e.type=t;return n}}}),v.support.submitBubbles||(v.event.special.submit={setup:function(){if(v.nodeName(this,"form"))return!1;v.event.add(this,"click._submit keypress._submit",function(e){var n=e.target,r=v.nodeName(n,"input")||v.nodeName(n,"button")?n.form:t;r&&!v._data(r,"_submit_attached")&&(v.event.add(r,"submit._submit",function(e){e._submit_bubble=!0}),v._data(r,"_submit_attached",!0))})},postDispatch:function(e){e._submit_bubble&&(delete e._submit_bubble,this.parentNode&&!e.isTrigger&&v.event.simulate("submit",this.parentNode,e,!0))},teardown:function(){if(v.nodeName(this,"form"))return!1;v.event.remove(this,"._submit")}}),v.support.changeBubbles||(v.event.special.change={setup:function(){if($.test(this.nodeName)){if(this.type==="checkbox"||this.type==="radio")v.event.add(this,"propertychange._change",function(e){e.originalEvent.propertyName==="checked"&&(this._just_changed=!0)}),v.event.add(this,"click._change",function(e){this._just_changed&&!e.isTrigger&&(this._just_changed=!1),v.event.simulate("change",this,e,!0)});return!1}v.event.add(this,"beforeactivate._change",function(e){var t=e.target;$.test(t.nodeName)&&!v._data(t,"_change_attached")&&(v.event.add(t,"change._change",function(e){this.parentNode&&!e.isSimulated&&!e.isTrigger&&v.event.simulate("change",this.parentNode,e,!0)}),v._data(t,"_change_attached",!0))})},handle:function(e){var t=e.target;if(this!==t||e.isSimulated||e.isTrigger||t.type!=="radio"&&t.type!=="checkbox")return e.handleObj.handler.apply(this,arguments)},teardown:function(){return v.event.remove(this,"._change"),!$.test(this.nodeName)}}),v.support.focusinBubbles||v.each({focus:"focusin",blur:"focusout"},function(e,t){var n=0,r=function(e){v.event.simulate(t,e.target,v.event.fix(e),!0)};v.event.special[t]={setup:function(){n++===0&&i.addEventListener(e,r,!0)},teardown:function(){--n===0&&i.removeEventListener(e,r,!0)}}}),v.fn.extend({on:function(e,n,r,i,s){var o,u;if(typeof e=="object"){typeof n!="string"&&(r=r||n,n=t);for(u in e)this.on(u,n,r,e[u],s);return this}r==null&&i==null?(i=n,r=n=t):i==null&&(typeof n=="string"?(i=r,r=t):(i=r,r=n,n=t));if(i===!1)i=et;else if(!i)return this;return s===1&&(o=i,i=function(e){return v().off(e),o.apply(this,arguments)},i.guid=o.guid||(o.guid=v.guid++)),this.each(function(){v.event.add(this,e,i,r,n)})},one:function(e,t,n,r){return this.on(e,t,n,r,1)},off:function(e,n,r){var i,s;if(e&&e.preventDefault&&e.handleObj)return i=e.handleObj,v(e.delegateTarget).off(i.namespace?i.origType+"."+i.namespace:i.origType,i.selector,i.handler),this;if(typeof e=="object"){for(s in e)this.off(s,n,e[s]);return this}if(n===!1||typeof n=="function")r=n,n=t;return r===!1&&(r=et),this.each(function(){v.event.remove(this,e,r,n)})},bind:function(e,t,n){return this.on(e,null,t,n)},unbind:function(e,t){return this.off(e,null,t)},live:function(e,t,n){return v(this.context).on(e,this.selector,t,n),this},die:function(e,t){return v(this.context).off(e,this.selector||"**",t),this},delegate:function(e,t,n,r){return this.on(t,e,n,r)},undelegate:function(e,t,n){return arguments.length===1?this.off(e,"**"):this.off(t,e||"**",n)},trigger:function(e,t){return this.each(function(){v.event.trigger(e,t,this)})},triggerHandler:function(e,t){if(this[0])return v.event.trigger(e,t,this[0],!0)},toggle:function(e){var t=arguments,n=e.guid||v.guid++,r=0,i=function(n){var i=(v._data(this,"lastToggle"+e.guid)||0)%r;return v._data(this,"lastToggle"+e.guid,i+1),n.preventDefault(),t[i].apply(this,arguments)||!1};i.guid=n;while(r<t.length)t[r++].guid=n;return this.click(i)},hover:function(e,t){return this.mouseenter(e).mouseleave(t||e)}}),v.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error contextmenu".split(" "),function(e,t){v.fn[t]=function(e,n){return n==null&&(n=e,e=null),arguments.length>0?this.on(t,null,e,n):this.trigger(t)},Q.test(t)&&(v.event.fixHooks[t]=v.event.keyHooks),G.test(t)&&(v.event.fixHooks[t]=v.event.mouseHooks)}),function(e,t){function nt(e,t,n,r){n=n||[],t=t||g;var i,s,a,f,l=t.nodeType;if(!e||typeof e!="string")return n;if(l!==1&&l!==9)return[];a=o(t);if(!a&&!r)if(i=R.exec(e))if(f=i[1]){if(l===9){s=t.getElementById(f);if(!s||!s.parentNode)return n;if(s.id===f)return n.push(s),n}else if(t.ownerDocument&&(s=t.ownerDocument.getElementById(f))&&u(t,s)&&s.id===f)return n.push(s),n}else{if(i[2])return S.apply(n,x.call(t.getElementsByTagName(e),0)),n;if((f=i[3])&&Z&&t.getElementsByClassName)return S.apply(n,x.call(t.getElementsByClassName(f),0)),n}return vt(e.replace(j,"$1"),t,n,r,a)}function rt(e){return function(t){var n=t.nodeName.toLowerCase();return n==="input"&&t.type===e}}function it(e){return function(t){var n=t.nodeName.toLowerCase();return(n==="input"||n==="button")&&t.type===e}}function st(e){return N(function(t){return t=+t,N(function(n,r){var i,s=e([],n.length,t),o=s.length;while(o--)n[i=s[o]]&&(n[i]=!(r[i]=n[i]))})})}function ot(e,t,n){if(e===t)return n;var r=e.nextSibling;while(r){if(r===t)return-1;r=r.nextSibling}return 1}function ut(e,t){var n,r,s,o,u,a,f,l=L[d][e+" "];if(l)return t?0:l.slice(0);u=e,a=[],f=i.preFilter;while(u){if(!n||(r=F.exec(u)))r&&(u=u.slice(r[0].length)||u),a.push(s=[]);n=!1;if(r=I.exec(u))s.push(n=new m(r.shift())),u=u.slice(n.length),n.type=r[0].replace(j," ");for(o in i.filter)(r=J[o].exec(u))&&(!f[o]||(r=f[o](r)))&&(s.push(n=new m(r.shift())),u=u.slice(n.length),n.type=o,n.matches=r);if(!n)break}return t?u.length:u?nt.error(e):L(e,a).slice(0)}function at(e,t,r){var i=t.dir,s=r&&t.dir==="parentNode",o=w++;return t.first?function(t,n,r){while(t=t[i])if(s||t.nodeType===1)return e(t,n,r)}:function(t,r,u){if(!u){var a,f=b+" "+o+" ",l=f+n;while(t=t[i])if(s||t.nodeType===1){if((a=t[d])===l)return t.sizset;if(typeof a=="string"&&a.indexOf(f)===0){if(t.sizset)return t}else{t[d]=l;if(e(t,r,u))return t.sizset=!0,t;t.sizset=!1}}}else while(t=t[i])if(s||t.nodeType===1)if(e(t,r,u))return t}}function ft(e){return e.length>1?function(t,n,r){var i=e.length;while(i--)if(!e[i](t,n,r))return!1;return!0}:e[0]}function lt(e,t,n,r,i){var s,o=[],u=0,a=e.length,f=t!=null;for(;u<a;u++)if(s=e[u])if(!n||n(s,r,i))o.push(s),f&&t.push(u);return o}function ct(e,t,n,r,i,s){return r&&!r[d]&&(r=ct(r)),i&&!i[d]&&(i=ct(i,s)),N(function(s,o,u,a){var f,l,c,h=[],p=[],d=o.length,v=s||dt(t||"*",u.nodeType?[u]:u,[]),m=e&&(s||!t)?lt(v,h,e,u,a):v,g=n?i||(s?e:d||r)?[]:o:m;n&&n(m,g,u,a);if(r){f=lt(g,p),r(f,[],u,a),l=f.length;while(l--)if(c=f[l])g[p[l]]=!(m[p[l]]=c)}if(s){if(i||e){if(i){f=[],l=g.length;while(l--)(c=g[l])&&f.push(m[l]=c);i(null,g=[],f,a)}l=g.length;while(l--)(c=g[l])&&(f=i?T.call(s,c):h[l])>-1&&(s[f]=!(o[f]=c))}}else g=lt(g===o?g.splice(d,g.length):g),i?i(null,o,g,a):S.apply(o,g)})}function ht(e){var t,n,r,s=e.length,o=i.relative[e[0].type],u=o||i.relative[" "],a=o?1:0,f=at(function(e){return e===t},u,!0),l=at(function(e){return T.call(t,e)>-1},u,!0),h=[function(e,n,r){return!o&&(r||n!==c)||((t=n).nodeType?f(e,n,r):l(e,n,r))}];for(;a<s;a++)if(n=i.relative[e[a].type])h=[at(ft(h),n)];else{n=i.filter[e[a].type].apply(null,e[a].matches);if(n[d]){r=++a;for(;r<s;r++)if(i.relative[e[r].type])break;return ct(a>1&&ft(h),a>1&&e.slice(0,a-1).join("").replace(j,"$1"),n,a<r&&ht(e.slice(a,r)),r<s&&ht(e=e.slice(r)),r<s&&e.join(""))}h.push(n)}return ft(h)}function pt(e,t){var r=t.length>0,s=e.length>0,o=function(u,a,f,l,h){var p,d,v,m=[],y=0,w="0",x=u&&[],T=h!=null,N=c,C=u||s&&i.find.TAG("*",h&&a.parentNode||a),k=b+=N==null?1:Math.E;T&&(c=a!==g&&a,n=o.el);for(;(p=C[w])!=null;w++){if(s&&p){for(d=0;v=e[d];d++)if(v(p,a,f)){l.push(p);break}T&&(b=k,n=++o.el)}r&&((p=!v&&p)&&y--,u&&x.push(p))}y+=w;if(r&&w!==y){for(d=0;v=t[d];d++)v(x,m,a,f);if(u){if(y>0)while(w--)!x[w]&&!m[w]&&(m[w]=E.call(l));m=lt(m)}S.apply(l,m),T&&!u&&m.length>0&&y+t.length>1&&nt.uniqueSort(l)}return T&&(b=k,c=N),x};return o.el=0,r?N(o):o}function dt(e,t,n){var r=0,i=t.length;for(;r<i;r++)nt(e,t[r],n);return n}function vt(e,t,n,r,s){var o,u,f,l,c,h=ut(e),p=h.length;if(!r&&h.length===1){u=h[0]=h[0].slice(0);if(u.length>2&&(f=u[0]).type==="ID"&&t.nodeType===9&&!s&&i.relative[u[1].type]){t=i.find.ID(f.matches[0].replace($,""),t,s)[0];if(!t)return n;e=e.slice(u.shift().length)}for(o=J.POS.test(e)?-1:u.length-1;o>=0;o--){f=u[o];if(i.relative[l=f.type])break;if(c=i.find[l])if(r=c(f.matches[0].replace($,""),z.test(u[0].type)&&t.parentNode||t,s)){u.splice(o,1),e=r.length&&u.join("");if(!e)return S.apply(n,x.call(r,0)),n;break}}}return a(e,h)(r,t,s,n,z.test(e)),n}function mt(){}var n,r,i,s,o,u,a,f,l,c,h=!0,p="undefined",d=("sizcache"+Math.random()).replace(".",""),m=String,g=e.document,y=g.documentElement,b=0,w=0,E=[].pop,S=[].push,x=[].slice,T=[].indexOf||function(e){var t=0,n=this.length;for(;t<n;t++)if(this[t]===e)return t;return-1},N=function(e,t){return e[d]=t==null||t,e},C=function(){var e={},t=[];return N(function(n,r){return t.push(n)>i.cacheLength&&delete e[t.shift()],e[n+" "]=r},e)},k=C(),L=C(),A=C(),O="[\\x20\\t\\r\\n\\f]",M="(?:\\\\.|[-\\w]|[^\\x00-\\xa0])+",_=M.replace("w","w#"),D="([*^$|!~]?=)",P="\\["+O+"*("+M+")"+O+"*(?:"+D+O+"*(?:(['\"])((?:\\\\.|[^\\\\])*?)\\3|("+_+")|)|)"+O+"*\\]",H=":("+M+")(?:\\((?:(['\"])((?:\\\\.|[^\\\\])*?)\\2|([^()[\\]]*|(?:(?:"+P+")|[^:]|\\\\.)*|.*))\\)|)",B=":(even|odd|eq|gt|lt|nth|first|last)(?:\\("+O+"*((?:-\\d)?\\d*)"+O+"*\\)|)(?=[^-]|$)",j=new RegExp("^"+O+"+|((?:^|[^\\\\])(?:\\\\.)*)"+O+"+$","g"),F=new RegExp("^"+O+"*,"+O+"*"),I=new RegExp("^"+O+"*([\\x20\\t\\r\\n\\f>+~])"+O+"*"),q=new RegExp(H),R=/^(?:#([\w\-]+)|(\w+)|\.([\w\-]+))$/,U=/^:not/,z=/[\x20\t\r\n\f]*[+~]/,W=/:not\($/,X=/h\d/i,V=/input|select|textarea|button/i,$=/\\(?!\\)/g,J={ID:new RegExp("^#("+M+")"),CLASS:new RegExp("^\\.("+M+")"),NAME:new RegExp("^\\[name=['\"]?("+M+")['\"]?\\]"),TAG:new RegExp("^("+M.replace("w","w*")+")"),ATTR:new RegExp("^"+P),PSEUDO:new RegExp("^"+H),POS:new RegExp(B,"i"),CHILD:new RegExp("^:(only|nth|first|last)-child(?:\\("+O+"*(even|odd|(([+-]|)(\\d*)n|)"+O+"*(?:([+-]|)"+O+"*(\\d+)|))"+O+"*\\)|)","i"),needsContext:new RegExp("^"+O+"*[>+~]|"+B,"i")},K=function(e){var t=g.createElement("div");try{return e(t)}catch(n){return!1}finally{t=null}},Q=K(function(e){return e.appendChild(g.createComment("")),!e.getElementsByTagName("*").length}),G=K(function(e){return e.innerHTML="<a href='#'></a>",e.firstChild&&typeof e.firstChild.getAttribute!==p&&e.firstChild.getAttribute("href")==="#"}),Y=K(function(e){e.innerHTML="<select></select>";var t=typeof e.lastChild.getAttribute("multiple");return t!=="boolean"&&t!=="string"}),Z=K(function(e){return e.innerHTML="<div class='hidden e'></div><div class='hidden'></div>",!e.getElementsByClassName||!e.getElementsByClassName("e").length?!1:(e.lastChild.className="e",e.getElementsByClassName("e").length===2)}),et=K(function(e){e.id=d+0,e.innerHTML="<a name='"+d+"'></a><div name='"+d+"'></div>",y.insertBefore(e,y.firstChild);var t=g.getElementsByName&&g.getElementsByName(d).length===2+g.getElementsByName(d+0).length;return r=!g.getElementById(d),y.removeChild(e),t});try{x.call(y.childNodes,0)[0].nodeType}catch(tt){x=function(e){var t,n=[];for(;t=this[e];e++)n.push(t);return n}}nt.matches=function(e,t){return nt(e,null,null,t)},nt.matchesSelector=function(e,t){return nt(t,null,null,[e]).length>0},s=nt.getText=function(e){var t,n="",r=0,i=e.nodeType;if(i){if(i===1||i===9||i===11){if(typeof e.textContent=="string")return e.textContent;for(e=e.firstChild;e;e=e.nextSibling)n+=s(e)}else if(i===3||i===4)return e.nodeValue}else for(;t=e[r];r++)n+=s(t);return n},o=nt.isXML=function(e){var t=e&&(e.ownerDocument||e).documentElement;return t?t.nodeName!=="HTML":!1},u=nt.contains=y.contains?function(e,t){var n=e.nodeType===9?e.documentElement:e,r=t&&t.parentNode;return e===r||!!(r&&r.nodeType===1&&n.contains&&n.contains(r))}:y.compareDocumentPosition?function(e,t){return t&&!!(e.compareDocumentPosition(t)&16)}:function(e,t){while(t=t.parentNode)if(t===e)return!0;return!1},nt.attr=function(e,t){var n,r=o(e);return r||(t=t.toLowerCase()),(n=i.attrHandle[t])?n(e):r||Y?e.getAttribute(t):(n=e.getAttributeNode(t),n?typeof e[t]=="boolean"?e[t]?t:null:n.specified?n.value:null:null)},i=nt.selectors={cacheLength:50,createPseudo:N,match:J,attrHandle:G?{}:{href:function(e){return e.getAttribute("href",2)},type:function(e){return e.getAttribute("type")}},find:{ID:r?function(e,t,n){if(typeof t.getElementById!==p&&!n){var r=t.getElementById(e);return r&&r.parentNode?[r]:[]}}:function(e,n,r){if(typeof n.getElementById!==p&&!r){var i=n.getElementById(e);return i?i.id===e||typeof i.getAttributeNode!==p&&i.getAttributeNode("id").value===e?[i]:t:[]}},TAG:Q?function(e,t){if(typeof t.getElementsByTagName!==p)return t.getElementsByTagName(e)}:function(e,t){var n=t.getElementsByTagName(e);if(e==="*"){var r,i=[],s=0;for(;r=n[s];s++)r.nodeType===1&&i.push(r);return i}return n},NAME:et&&function(e,t){if(typeof t.getElementsByName!==p)return t.getElementsByName(name)},CLASS:Z&&function(e,t,n){if(typeof t.getElementsByClassName!==p&&!n)return t.getElementsByClassName(e)}},relative:{">":{dir:"parentNode",first:!0}," ":{dir:"parentNode"},"+":{dir:"previousSibling",first:!0},"~":{dir:"previousSibling"}},preFilter:{ATTR:function(e){return e[1]=e[1].replace($,""),e[3]=(e[4]||e[5]||"").replace($,""),e[2]==="~="&&(e[3]=" "+e[3]+" "),e.slice(0,4)},CHILD:function(e){return e[1]=e[1].toLowerCase(),e[1]==="nth"?(e[2]||nt.error(e[0]),e[3]=+(e[3]?e[4]+(e[5]||1):2*(e[2]==="even"||e[2]==="odd")),e[4]=+(e[6]+e[7]||e[2]==="odd")):e[2]&&nt.error(e[0]),e},PSEUDO:function(e){var t,n;if(J.CHILD.test(e[0]))return null;if(e[3])e[2]=e[3];else if(t=e[4])q.test(t)&&(n=ut(t,!0))&&(n=t.indexOf(")",t.length-n)-t.length)&&(t=t.slice(0,n),e[0]=e[0].slice(0,n)),e[2]=t;return e.slice(0,3)}},filter:{ID:r?function(e){return e=e.replace($,""),function(t){return t.getAttribute("id")===e}}:function(e){return e=e.replace($,""),function(t){var n=typeof t.getAttributeNode!==p&&t.getAttributeNode("id");return n&&n.value===e}},TAG:function(e){return e==="*"?function(){return!0}:(e=e.replace($,"").toLowerCase(),function(t){return t.nodeName&&t.nodeName.toLowerCase()===e})},CLASS:function(e){var t=k[d][e+" "];return t||(t=new RegExp("(^|"+O+")"+e+"("+O+"|$)"))&&k(e,function(e){return t.test(e.className||typeof e.getAttribute!==p&&e.getAttribute("class")||"")})},ATTR:function(e,t,n){return function(r,i){var s=nt.attr(r,e);return s==null?t==="!=":t?(s+="",t==="="?s===n:t==="!="?s!==n:t==="^="?n&&s.indexOf(n)===0:t==="*="?n&&s.indexOf(n)>-1:t==="$="?n&&s.substr(s.length-n.length)===n:t==="~="?(" "+s+" ").indexOf(n)>-1:t==="|="?s===n||s.substr(0,n.length+1)===n+"-":!1):!0}},CHILD:function(e,t,n,r){return e==="nth"?function(e){var t,i,s=e.parentNode;if(n===1&&r===0)return!0;if(s){i=0;for(t=s.firstChild;t;t=t.nextSibling)if(t.nodeType===1){i++;if(e===t)break}}return i-=r,i===n||i%n===0&&i/n>=0}:function(t){var n=t;switch(e){case"only":case"first":while(n=n.previousSibling)if(n.nodeType===1)return!1;if(e==="first")return!0;n=t;case"last":while(n=n.nextSibling)if(n.nodeType===1)return!1;return!0}}},PSEUDO:function(e,t){var n,r=i.pseudos[e]||i.setFilters[e.toLowerCase()]||nt.error("unsupported pseudo: "+e);return r[d]?r(t):r.length>1?(n=[e,e,"",t],i.setFilters.hasOwnProperty(e.toLowerCase())?N(function(e,n){var i,s=r(e,t),o=s.length;while(o--)i=T.call(e,s[o]),e[i]=!(n[i]=s[o])}):function(e){return r(e,0,n)}):r}},pseudos:{not:N(function(e){var t=[],n=[],r=a(e.replace(j,"$1"));return r[d]?N(function(e,t,n,i){var s,o=r(e,null,i,[]),u=e.length;while(u--)if(s=o[u])e[u]=!(t[u]=s)}):function(e,i,s){return t[0]=e,r(t,null,s,n),!n.pop()}}),has:N(function(e){return function(t){return nt(e,t).length>0}}),contains:N(function(e){return function(t){return(t.textContent||t.innerText||s(t)).indexOf(e)>-1}}),enabled:function(e){return e.disabled===!1},disabled:function(e){return e.disabled===!0},checked:function(e){var t=e.nodeName.toLowerCase();return t==="input"&&!!e.checked||t==="option"&&!!e.selected},selected:function(e){return e.parentNode&&e.parentNode.selectedIndex,e.selected===!0},parent:function(e){return!i.pseudos.empty(e)},empty:function(e){var t;e=e.firstChild;while(e){if(e.nodeName>"@"||(t=e.nodeType)===3||t===4)return!1;e=e.nextSibling}return!0},header:function(e){return X.test(e.nodeName)},text:function(e){var t,n;return e.nodeName.toLowerCase()==="input"&&(t=e.type)==="text"&&((n=e.getAttribute("type"))==null||n.toLowerCase()===t)},radio:rt("radio"),checkbox:rt("checkbox"),file:rt("file"),password:rt("password"),image:rt("image"),submit:it("submit"),reset:it("reset"),button:function(e){var t=e.nodeName.toLowerCase();return t==="input"&&e.type==="button"||t==="button"},input:function(e){return V.test(e.nodeName)},focus:function(e){var t=e.ownerDocument;return e===t.activeElement&&(!t.hasFocus||t.hasFocus())&&!!(e.type||e.href||~e.tabIndex)},active:function(e){return e===e.ownerDocument.activeElement},first:st(function(){return[0]}),last:st(function(e,t){return[t-1]}),eq:st(function(e,t,n){return[n<0?n+t:n]}),even:st(function(e,t){for(var n=0;n<t;n+=2)e.push(n);return e}),odd:st(function(e,t){for(var n=1;n<t;n+=2)e.push(n);return e}),lt:st(function(e,t,n){for(var r=n<0?n+t:n;--r>=0;)e.push(r);return e}),gt:st(function(e,t,n){for(var r=n<0?n+t:n;++r<t;)e.push(r);return e})}},f=y.compareDocumentPosition?function(e,t){return e===t?(l=!0,0):(!e.compareDocumentPosition||!t.compareDocumentPosition?e.compareDocumentPosition:e.compareDocumentPosition(t)&4)?-1:1}:function(e,t){if(e===t)return l=!0,0;if(e.sourceIndex&&t.sourceIndex)return e.sourceIndex-t.sourceIndex;var n,r,i=[],s=[],o=e.parentNode,u=t.parentNode,a=o;if(o===u)return ot(e,t);if(!o)return-1;if(!u)return 1;while(a)i.unshift(a),a=a.parentNode;a=u;while(a)s.unshift(a),a=a.parentNode;n=i.length,r=s.length;for(var f=0;f<n&&f<r;f++)if(i[f]!==s[f])return ot(i[f],s[f]);return f===n?ot(e,s[f],-1):ot(i[f],t,1)},[0,0].sort(f),h=!l,nt.uniqueSort=function(e){var t,n=[],r=1,i=0;l=h,e.sort(f);if(l){for(;t=e[r];r++)t===e[r-1]&&(i=n.push(r));while(i--)e.splice(n[i],1)}return e},nt.error=function(e){throw new Error("Syntax error, unrecognized expression: "+e)},a=nt.compile=function(e,t){var n,r=[],i=[],s=A[d][e+" "];if(!s){t||(t=ut(e)),n=t.length;while(n--)s=ht(t[n]),s[d]?r.push(s):i.push(s);s=A(e,pt(i,r))}return s},g.querySelectorAll&&function(){var e,t=vt,n=/'|\\/g,r=/\=[\x20\t\r\n\f]*([^'"\]]*)[\x20\t\r\n\f]*\]/g,i=[":focus"],s=[":active"],u=y.matchesSelector||y.mozMatchesSelector||y.webkitMatchesSelector||y.oMatchesSelector||y.msMatchesSelector;K(function(e){e.innerHTML="<select><option selected=''></option></select>",e.querySelectorAll("[selected]").length||i.push("\\["+O+"*(?:checked|disabled|ismap|multiple|readonly|selected|value)"),e.querySelectorAll(":checked").length||i.push(":checked")}),K(function(e){e.innerHTML="<p test=''></p>",e.querySelectorAll("[test^='']").length&&i.push("[*^$]="+O+"*(?:\"\"|'')"),e.innerHTML="<input type='hidden'/>",e.querySelectorAll(":enabled").length||i.push(":enabled",":disabled")}),i=new RegExp(i.join("|")),vt=function(e,r,s,o,u){if(!o&&!u&&!i.test(e)){var a,f,l=!0,c=d,h=r,p=r.nodeType===9&&e;if(r.nodeType===1&&r.nodeName.toLowerCase()!=="object"){a=ut(e),(l=r.getAttribute("id"))?c=l.replace(n,"\\$&"):r.setAttribute("id",c),c="[id='"+c+"'] ",f=a.length;while(f--)a[f]=c+a[f].join("");h=z.test(e)&&r.parentNode||r,p=a.join(",")}if(p)try{return S.apply(s,x.call(h.querySelectorAll(p),0)),s}catch(v){}finally{l||r.removeAttribute("id")}}return t(e,r,s,o,u)},u&&(K(function(t){e=u.call(t,"div");try{u.call(t,"[test!='']:sizzle"),s.push("!=",H)}catch(n){}}),s=new RegExp(s.join("|")),nt.matchesSelector=function(t,n){n=n.replace(r,"='$1']");if(!o(t)&&!s.test(n)&&!i.test(n))try{var a=u.call(t,n);if(a||e||t.document&&t.document.nodeType!==11)return a}catch(f){}return nt(n,null,null,[t]).length>0})}(),i.pseudos.nth=i.pseudos.eq,i.filters=mt.prototype=i.pseudos,i.setFilters=new mt,nt.attr=v.attr,v.find=nt,v.expr=nt.selectors,v.expr[":"]=v.expr.pseudos,v.unique=nt.uniqueSort,v.text=nt.getText,v.isXMLDoc=nt.isXML,v.contains=nt.contains}(e);var nt=/Until$/,rt=/^(?:parents|prev(?:Until|All))/,it=/^.[^:#\[\.,]*$/,st=v.expr.match.needsContext,ot={children:!0,contents:!0,next:!0,prev:!0};v.fn.extend({find:function(e){var t,n,r,i,s,o,u=this;if(typeof e!="string")return v(e).filter(function(){for(t=0,n=u.length;t<n;t++)if(v.contains(u[t],this))return!0});o=this.pushStack("","find",e);for(t=0,n=this.length;t<n;t++){r=o.length,v.find(e,this[t],o);if(t>0)for(i=r;i<o.length;i++)for(s=0;s<r;s++)if(o[s]===o[i]){o.splice(i--,1);break}}return o},has:function(e){var t,n=v(e,this),r=n.length;return this.filter(function(){for(t=0;t<r;t++)if(v.contains(this,n[t]))return!0})},not:function(e){return this.pushStack(ft(this,e,!1),"not",e)},filter:function(e){return this.pushStack(ft(this,e,!0),"filter",e)},is:function(e){return!!e&&(typeof e=="string"?st.test(e)?v(e,this.context).index(this[0])>=0:v.filter(e,this).length>0:this.filter(e).length>0)},closest:function(e,t){var n,r=0,i=this.length,s=[],o=st.test(e)||typeof e!="string"?v(e,t||this.context):0;for(;r<i;r++){n=this[r];while(n&&n.ownerDocument&&n!==t&&n.nodeType!==11){if(o?o.index(n)>-1:v.find.matchesSelector(n,e)){s.push(n);break}n=n.parentNode}}return s=s.length>1?v.unique(s):s,this.pushStack(s,"closest",e)},index:function(e){return e?typeof e=="string"?v.inArray(this[0],v(e)):v.inArray(e.jquery?e[0]:e,this):this[0]&&this[0].parentNode?this.prevAll().length:-1},add:function(e,t){var n=typeof e=="string"?v(e,t):v.makeArray(e&&e.nodeType?[e]:e),r=v.merge(this.get(),n);return this.pushStack(ut(n[0])||ut(r[0])?r:v.unique(r))},addBack:function(e){return this.add(e==null?this.prevObject:this.prevObject.filter(e))}}),v.fn.andSelf=v.fn.addBack,v.each({parent:function(e){var t=e.parentNode;return t&&t.nodeType!==11?t:null},parents:function(e){return v.dir(e,"parentNode")},parentsUntil:function(e,t,n){return v.dir(e,"parentNode",n)},next:function(e){return at(e,"nextSibling")},prev:function(e){return at(e,"previousSibling")},nextAll:function(e){return v.dir(e,"nextSibling")},prevAll:function(e){return v.dir(e,"previousSibling")},nextUntil:function(e,t,n){return v.dir(e,"nextSibling",n)},prevUntil:function(e,t,n){return v.dir(e,"previousSibling",n)},siblings:function(e){return v.sibling((e.parentNode||{}).firstChild,e)},children:function(e){return v.sibling(e.firstChild)},contents:function(e){return v.nodeName(e,"iframe")?e.contentDocument||e.contentWindow.document:v.merge([],e.childNodes)}},function(e,t){v.fn[e]=function(n,r){var i=v.map(this,t,n);return nt.test(e)||(r=n),r&&typeof r=="string"&&(i=v.filter(r,i)),i=this.length>1&&!ot[e]?v.unique(i):i,this.length>1&&rt.test(e)&&(i=i.reverse()),this.pushStack(i,e,l.call(arguments).join(","))}}),v.extend({filter:function(e,t,n){return n&&(e=":not("+e+")"),t.length===1?v.find.matchesSelector(t[0],e)?[t[0]]:[]:v.find.matches(e,t)},dir:function(e,n,r){var i=[],s=e[n];while(s&&s.nodeType!==9&&(r===t||s.nodeType!==1||!v(s).is(r)))s.nodeType===1&&i.push(s),s=s[n];return i},sibling:function(e,t){var n=[];for(;e;e=e.nextSibling)e.nodeType===1&&e!==t&&n.push(e);return n}});var ct="abbr|article|aside|audio|bdi|canvas|data|datalist|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video",ht=/ jQuery\d+="(?:null|\d+)"/g,pt=/^\s+/,dt=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,vt=/<([\w:]+)/,mt=/<tbody/i,gt=/<|&#?\w+;/,yt=/<(?:script|style|link)/i,bt=/<(?:script|object|embed|option|style)/i,wt=new RegExp("<(?:"+ct+")[\\s/>]","i"),Et=/^(?:checkbox|radio)$/,St=/checked\s*(?:[^=]|=\s*.checked.)/i,xt=/\/(java|ecma)script/i,Tt=/^\s*<!(?:\[CDATA\[|\-\-)|[\]\-]{2}>\s*$/g,Nt={option:[1,"<select multiple='multiple'>","</select>"],legend:[1,"<fieldset>","</fieldset>"],thead:[1,"<table>","</table>"],tr:[2,"<table><tbody>","</tbody></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],col:[2,"<table><tbody></tbody><colgroup>","</colgroup></table>"],area:[1,"<map>","</map>"],_default:[0,"",""]},Ct=lt(i),kt=Ct.appendChild(i.createElement("div"));Nt.optgroup=Nt.option,Nt.tbody=Nt.tfoot=Nt.colgroup=Nt.caption=Nt.thead,Nt.th=Nt.td,v.support.htmlSerialize||(Nt._default=[1,"X<div>","</div>"]),v.fn.extend({text:function(e){return v.access(this,function(e){return e===t?v.text(this):this.empty().append((this[0]&&this[0].ownerDocument||i).createTextNode(e))},null,e,arguments.length)},wrapAll:function(e){if(v.isFunction(e))return this.each(function(t){v(this).wrapAll(e.call(this,t))});if(this[0]){var t=v(e,this[0].ownerDocument).eq(0).clone(!0);this[0].parentNode&&t.insertBefore(this[0]),t.map(function(){var e=this;while(e.firstChild&&e.firstChild.nodeType===1)e=e.firstChild;return e}).append(this)}return this},wrapInner:function(e){return v.isFunction(e)?this.each(function(t){v(this).wrapInner(e.call(this,t))}):this.each(function(){var t=v(this),n=t.contents();n.length?n.wrapAll(e):t.append(e)})},wrap:function(e){var t=v.isFunction(e);return this.each(function(n){v(this).wrapAll(t?e.call(this,n):e)})},unwrap:function(){return this.parent().each(function(){v.nodeName(this,"body")||v(this).replaceWith(this.childNodes)}).end()},append:function(){return this.domManip(arguments,!0,function(e){(this.nodeType===1||this.nodeType===11)&&this.appendChild(e)})},prepend:function(){return this.domManip(arguments,!0,function(e){(this.nodeType===1||this.nodeType===11)&&this.insertBefore(e,this.firstChild)})},before:function(){if(!ut(this[0]))return this.domManip(arguments,!1,function(e){this.parentNode.insertBefore(e,this)});if(arguments.length){var e=v.clean(arguments);return this.pushStack(v.merge(e,this),"before",this.selector)}},after:function(){if(!ut(this[0]))return this.domManip(arguments,!1,function(e){this.parentNode.insertBefore(e,this.nextSibling)});if(arguments.length){var e=v.clean(arguments);return this.pushStack(v.merge(this,e),"after",this.selector)}},remove:function(e,t){var n,r=0;for(;(n=this[r])!=null;r++)if(!e||v.filter(e,[n]).length)!t&&n.nodeType===1&&(v.cleanData(n.getElementsByTagName("*")),v.cleanData([n])),n.parentNode&&n.parentNode.removeChild(n);return this},empty:function(){var e,t=0;for(;(e=this[t])!=null;t++){e.nodeType===1&&v.cleanData(e.getElementsByTagName("*"));while(e.firstChild)e.removeChild(e.firstChild)}return this},clone:function(e,t){return e=e==null?!1:e,t=t==null?e:t,this.map(function(){return v.clone(this,e,t)})},html:function(e){return v.access(this,function(e){var n=this[0]||{},r=0,i=this.length;if(e===t)return n.nodeType===1?n.innerHTML.replace(ht,""):t;if(typeof e=="string"&&!yt.test(e)&&(v.support.htmlSerialize||!wt.test(e))&&(v.support.leadingWhitespace||!pt.test(e))&&!Nt[(vt.exec(e)||["",""])[1].toLowerCase()]){e=e.replace(dt,"<$1></$2>");try{for(;r<i;r++)n=this[r]||{},n.nodeType===1&&(v.cleanData(n.getElementsByTagName("*")),n.innerHTML=e);n=0}catch(s){}}n&&this.empty().append(e)},null,e,arguments.length)},replaceWith:function(e){return ut(this[0])?this.length?this.pushStack(v(v.isFunction(e)?e():e),"replaceWith",e):this:v.isFunction(e)?this.each(function(t){var n=v(this),r=n.html();n.replaceWith(e.call(this,t,r))}):(typeof e!="string"&&(e=v(e).detach()),this.each(function(){var t=this.nextSibling,n=this.parentNode;v(this).remove(),t?v(t).before(e):v(n).append(e)}))},detach:function(e){return this.remove(e,!0)},domManip:function(e,n,r){e=[].concat.apply([],e);var i,s,o,u,a=0,f=e[0],l=[],c=this.length;if(!v.support.checkClone&&c>1&&typeof f=="string"&&St.test(f))return this.each(function(){v(this).domManip(e,n,r)});if(v.isFunction(f))return this.each(function(i){var s=v(this);e[0]=f.call(this,i,n?s.html():t),s.domManip(e,n,r)});if(this[0]){i=v.buildFragment(e,this,l),o=i.fragment,s=o.firstChild,o.childNodes.length===1&&(o=s);if(s){n=n&&v.nodeName(s,"tr");for(u=i.cacheable||c-1;a<c;a++)r.call(n&&v.nodeName(this[a],"table")?Lt(this[a],"tbody"):this[a],a===u?o:v.clone(o,!0,!0))}o=s=null,l.length&&v.each(l,function(e,t){t.src?v.ajax?v.ajax({url:t.src,type:"GET",dataType:"script",async:!1,global:!1,"throws":!0}):v.error("no ajax"):v.globalEval((t.text||t.textContent||t.innerHTML||"").replace(Tt,"")),t.parentNode&&t.parentNode.removeChild(t)})}return this}}),v.buildFragment=function(e,n,r){var s,o,u,a=e[0];return n=n||i,n=!n.nodeType&&n[0]||n,n=n.ownerDocument||n,e.length===1&&typeof a=="string"&&a.length<512&&n===i&&a.charAt(0)==="<"&&!bt.test(a)&&(v.support.checkClone||!St.test(a))&&(v.support.html5Clone||!wt.test(a))&&(o=!0,s=v.fragments[a],u=s!==t),s||(s=n.createDocumentFragment(),v.clean(e,n,s,r),o&&(v.fragments[a]=u&&s)),{fragment:s,cacheable:o}},v.fragments={},v.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(e,t){v.fn[e]=function(n){var r,i=0,s=[],o=v(n),u=o.length,a=this.length===1&&this[0].parentNode;if((a==null||a&&a.nodeType===11&&a.childNodes.length===1)&&u===1)return o[t](this[0]),this;for(;i<u;i++)r=(i>0?this.clone(!0):this).get(),v(o[i])[t](r),s=s.concat(r);return this.pushStack(s,e,o.selector)}}),v.extend({clone:function(e,t,n){var r,i,s,o;v.support.html5Clone||v.isXMLDoc(e)||!wt.test("<"+e.nodeName+">")?o=e.cloneNode(!0):(kt.innerHTML=e.outerHTML,kt.removeChild(o=kt.firstChild));if((!v.support.noCloneEvent||!v.support.noCloneChecked)&&(e.nodeType===1||e.nodeType===11)&&!v.isXMLDoc(e)){Ot(e,o),r=Mt(e),i=Mt(o);for(s=0;r[s];++s)i[s]&&Ot(r[s],i[s])}if(t){At(e,o);if(n){r=Mt(e),i=Mt(o);for(s=0;r[s];++s)At(r[s],i[s])}}return r=i=null,o},clean:function(e,t,n,r){var s,o,u,a,f,l,c,h,p,d,m,g,y=t===i&&Ct,b=[];if(!t||typeof t.createDocumentFragment=="undefined")t=i;for(s=0;(u=e[s])!=null;s++){typeof u=="number"&&(u+="");if(!u)continue;if(typeof u=="string")if(!gt.test(u))u=t.createTextNode(u);else{y=y||lt(t),c=t.createElement("div"),y.appendChild(c),u=u.replace(dt,"<$1></$2>"),a=(vt.exec(u)||["",""])[1].toLowerCase(),f=Nt[a]||Nt._default,l=f[0],c.innerHTML=f[1]+u+f[2];while(l--)c=c.lastChild;if(!v.support.tbody){h=mt.test(u),p=a==="table"&&!h?c.firstChild&&c.firstChild.childNodes:f[1]==="<table>"&&!h?c.childNodes:[];for(o=p.length-1;o>=0;--o)v.nodeName(p[o],"tbody")&&!p[o].childNodes.length&&p[o].parentNode.removeChild(p[o])}!v.support.leadingWhitespace&&pt.test(u)&&c.insertBefore(t.createTextNode(pt.exec(u)[0]),c.firstChild),u=c.childNodes,c.parentNode.removeChild(c)}u.nodeType?b.push(u):v.merge(b,u)}c&&(u=c=y=null);if(!v.support.appendChecked)for(s=0;(u=b[s])!=null;s++)v.nodeName(u,"input")?_t(u):typeof u.getElementsByTagName!="undefined"&&v.grep(u.getElementsByTagName("input"),_t);if(n){m=function(e){if(!e.type||xt.test(e.type))return r?r.push(e.parentNode?e.parentNode.removeChild(e):e):n.appendChild(e)};for(s=0;(u=b[s])!=null;s++)if(!v.nodeName(u,"script")||!m(u))n.appendChild(u),typeof u.getElementsByTagName!="undefined"&&(g=v.grep(v.merge([],u.getElementsByTagName("script")),m),b.splice.apply(b,[s+1,0].concat(g)),s+=g.length)}return b},cleanData:function(e,t){var n,r,i,s,o=0,u=v.expando,a=v.cache,f=v.support.deleteExpando,l=v.event.special;for(;(i=e[o])!=null;o++)if(t||v.acceptData(i)){r=i[u],n=r&&a[r];if(n){if(n.events)for(s in n.events)l[s]?v.event.remove(i,s):v.removeEvent(i,s,n.handle);a[r]&&(delete a[r],f?delete i[u]:i.removeAttribute?i.removeAttribute(u):i[u]=null,v.deletedIds.push(r))}}}}),function(){var e,t;v.uaMatch=function(e){e=e.toLowerCase();var t=/(chrome)[ \/]([\w.]+)/.exec(e)||/(webkit)[ \/]([\w.]+)/.exec(e)||/(opera)(?:.*version|)[ \/]([\w.]+)/.exec(e)||/(msie) ([\w.]+)/.exec(e)||e.indexOf("compatible")<0&&/(mozilla)(?:.*? rv:([\w.]+)|)/.exec(e)||[];return{browser:t[1]||"",version:t[2]||"0"}},e=v.uaMatch(o.userAgent),t={},e.browser&&(t[e.browser]=!0,t.version=e.version),t.chrome?t.webkit=!0:t.webkit&&(t.safari=!0),v.browser=t,v.sub=function(){function e(t,n){return new e.fn.init(t,n)}v.extend(!0,e,this),e.superclass=this,e.fn=e.prototype=this(),e.fn.constructor=e,e.sub=this.sub,e.fn.init=function(r,i){return i&&i instanceof v&&!(i instanceof e)&&(i=e(i)),v.fn.init.call(this,r,i,t)},e.fn.init.prototype=e.fn;var t=e(i);return e}}();var Dt,Pt,Ht,Bt=/alpha\([^)]*\)/i,jt=/opacity=([^)]*)/,Ft=/^(top|right|bottom|left)$/,It=/^(none|table(?!-c[ea]).+)/,qt=/^margin/,Rt=new RegExp("^("+m+")(.*)$","i"),Ut=new RegExp("^("+m+")(?!px)[a-z%]+$","i"),zt=new RegExp("^([-+])=("+m+")","i"),Wt={BODY:"block"},Xt={position:"absolute",visibility:"hidden",display:"block"},Vt={letterSpacing:0,fontWeight:400},$t=["Top","Right","Bottom","Left"],Jt=["Webkit","O","Moz","ms"],Kt=v.fn.toggle;v.fn.extend({css:function(e,n){return v.access(this,function(e,n,r){return r!==t?v.style(e,n,r):v.css(e,n)},e,n,arguments.length>1)},show:function(){return Yt(this,!0)},hide:function(){return Yt(this)},toggle:function(e,t){var n=typeof e=="boolean";return v.isFunction(e)&&v.isFunction(t)?Kt.apply(this,arguments):this.each(function(){(n?e:Gt(this))?v(this).show():v(this).hide()})}}),v.extend({cssHooks:{opacity:{get:function(e,t){if(t){var n=Dt(e,"opacity");return n===""?"1":n}}}},cssNumber:{fillOpacity:!0,fontWeight:!0,lineHeight:!0,opacity:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{"float":v.support.cssFloat?"cssFloat":"styleFloat"},style:function(e,n,r,i){if(!e||e.nodeType===3||e.nodeType===8||!e.style)return;var s,o,u,a=v.camelCase(n),f=e.style;n=v.cssProps[a]||(v.cssProps[a]=Qt(f,a)),u=v.cssHooks[n]||v.cssHooks[a];if(r===t)return u&&"get"in u&&(s=u.get(e,!1,i))!==t?s:f[n];o=typeof r,o==="string"&&(s=zt.exec(r))&&(r=(s[1]+1)*s[2]+parseFloat(v.css(e,n)),o="number");if(r==null||o==="number"&&isNaN(r))return;o==="number"&&!v.cssNumber[a]&&(r+="px");if(!u||!("set"in u)||(r=u.set(e,r,i))!==t)try{f[n]=r}catch(l){}},css:function(e,n,r,i){var s,o,u,a=v.camelCase(n);return n=v.cssProps[a]||(v.cssProps[a]=Qt(e.style,a)),u=v.cssHooks[n]||v.cssHooks[a],u&&"get"in u&&(s=u.get(e,!0,i)),s===t&&(s=Dt(e,n)),s==="normal"&&n in Vt&&(s=Vt[n]),r||i!==t?(o=parseFloat(s),r||v.isNumeric(o)?o||0:s):s},swap:function(e,t,n){var r,i,s={};for(i in t)s[i]=e.style[i],e.style[i]=t[i];r=n.call(e);for(i in t)e.style[i]=s[i];return r}}),e.getComputedStyle?Dt=function(t,n){var r,i,s,o,u=e.getComputedStyle(t,null),a=t.style;return u&&(r=u.getPropertyValue(n)||u[n],r===""&&!v.contains(t.ownerDocument,t)&&(r=v.style(t,n)),Ut.test(r)&&qt.test(n)&&(i=a.width,s=a.minWidth,o=a.maxWidth,a.minWidth=a.maxWidth=a.width=r,r=u.width,a.width=i,a.minWidth=s,a.maxWidth=o)),r}:i.documentElement.currentStyle&&(Dt=function(e,t){var n,r,i=e.currentStyle&&e.currentStyle[t],s=e.style;return i==null&&s&&s[t]&&(i=s[t]),Ut.test(i)&&!Ft.test(t)&&(n=s.left,r=e.runtimeStyle&&e.runtimeStyle.left,r&&(e.runtimeStyle.left=e.currentStyle.left),s.left=t==="fontSize"?"1em":i,i=s.pixelLeft+"px",s.left=n,r&&(e.runtimeStyle.left=r)),i===""?"auto":i}),v.each(["height","width"],function(e,t){v.cssHooks[t]={get:function(e,n,r){if(n)return e.offsetWidth===0&&It.test(Dt(e,"display"))?v.swap(e,Xt,function(){return tn(e,t,r)}):tn(e,t,r)},set:function(e,n,r){return Zt(e,n,r?en(e,t,r,v.support.boxSizing&&v.css(e,"boxSizing")==="border-box"):0)}}}),v.support.opacity||(v.cssHooks.opacity={get:function(e,t){return jt.test((t&&e.currentStyle?e.currentStyle.filter:e.style.filter)||"")?.01*parseFloat(RegExp.$1)+"":t?"1":""},set:function(e,t){var n=e.style,r=e.currentStyle,i=v.isNumeric(t)?"alpha(opacity="+t*100+")":"",s=r&&r.filter||n.filter||"";n.zoom=1;if(t>=1&&v.trim(s.replace(Bt,""))===""&&n.removeAttribute){n.removeAttribute("filter");if(r&&!r.filter)return}n.filter=Bt.test(s)?s.replace(Bt,i):s+" "+i}}),v(function(){v.support.reliableMarginRight||(v.cssHooks.marginRight={get:function(e,t){return v.swap(e,{display:"inline-block"},function(){if(t)return Dt(e,"marginRight")})}}),!v.support.pixelPosition&&v.fn.position&&v.each(["top","left"],function(e,t){v.cssHooks[t]={get:function(e,n){if(n){var r=Dt(e,t);return Ut.test(r)?v(e).position()[t]+"px":r}}}})}),v.expr&&v.expr.filters&&(v.expr.filters.hidden=function(e){return e.offsetWidth===0&&e.offsetHeight===0||!v.support.reliableHiddenOffsets&&(e.style&&e.style.display||Dt(e,"display"))==="none"},v.expr.filters.visible=function(e){return!v.expr.filters.hidden(e)}),v.each({margin:"",padding:"",border:"Width"},function(e,t){v.cssHooks[e+t]={expand:function(n){var r,i=typeof n=="string"?n.split(" "):[n],s={};for(r=0;r<4;r++)s[e+$t[r]+t]=i[r]||i[r-2]||i[0];return s}},qt.test(e)||(v.cssHooks[e+t].set=Zt)});var rn=/%20/g,sn=/\[\]$/,on=/\r?\n/g,un=/^(?:color|date|datetime|datetime-local|email|hidden|month|number|password|range|search|tel|text|time|url|week)$/i,an=/^(?:select|textarea)/i;v.fn.extend({serialize:function(){return v.param(this.serializeArray())},serializeArray:function(){return this.map(function(){return this.elements?v.makeArray(this.elements):this}).filter(function(){return this.name&&!this.disabled&&(this.checked||an.test(this.nodeName)||un.test(this.type))}).map(function(e,t){var n=v(this).val();return n==null?null:v.isArray(n)?v.map(n,function(e,n){return{name:t.name,value:e.replace(on,"\r\n")}}):{name:t.name,value:n.replace(on,"\r\n")}}).get()}}),v.param=function(e,n){var r,i=[],s=function(e,t){t=v.isFunction(t)?t():t==null?"":t,i[i.length]=encodeURIComponent(e)+"="+encodeURIComponent(t)};n===t&&(n=v.ajaxSettings&&v.ajaxSettings.traditional);if(v.isArray(e)||e.jquery&&!v.isPlainObject(e))v.each(e,function(){s(this.name,this.value)});else for(r in e)fn(r,e[r],n,s);return i.join("&").replace(rn,"+")};var ln,cn,hn=/#.*$/,pn=/^(.*?):[ \t]*([^\r\n]*)\r?$/mg,dn=/^(?:about|app|app\-storage|.+\-extension|file|res|widget):$/,vn=/^(?:GET|HEAD)$/,mn=/^\/\//,gn=/\?/,yn=/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,bn=/([?&])_=[^&]*/,wn=/^([\w\+\.\-]+:)(?:\/\/([^\/?#:]*)(?::(\d+)|)|)/,En=v.fn.load,Sn={},xn={},Tn=["*/"]+["*"];try{cn=s.href}catch(Nn){cn=i.createElement("a"),cn.href="",cn=cn.href}ln=wn.exec(cn.toLowerCase())||[],v.fn.load=function(e,n,r){if(typeof e!="string"&&En)return En.apply(this,arguments);if(!this.length)return this;var i,s,o,u=this,a=e.indexOf(" ");return a>=0&&(i=e.slice(a,e.length),e=e.slice(0,a)),v.isFunction(n)?(r=n,n=t):n&&typeof n=="object"&&(s="POST"),v.ajax({url:e,type:s,dataType:"html",data:n,complete:function(e,t){r&&u.each(r,o||[e.responseText,t,e])}}).done(function(e){o=arguments,u.html(i?v("<div>").append(e.replace(yn,"")).find(i):e)}),this},v.each("ajaxStart ajaxStop ajaxComplete ajaxError ajaxSuccess ajaxSend".split(" "),function(e,t){v.fn[t]=function(e){return this.on(t,e)}}),v.each(["get","post"],function(e,n){v[n]=function(e,r,i,s){return v.isFunction(r)&&(s=s||i,i=r,r=t),v.ajax({type:n,url:e,data:r,success:i,dataType:s})}}),v.extend({getScript:function(e,n){return v.get(e,t,n,"script")},getJSON:function(e,t,n){return v.get(e,t,n,"json")},ajaxSetup:function(e,t){return t?Ln(e,v.ajaxSettings):(t=e,e=v.ajaxSettings),Ln(e,t),e},ajaxSettings:{url:cn,isLocal:dn.test(ln[1]),global:!0,type:"GET",contentType:"application/x-www-form-urlencoded; charset=UTF-8",processData:!0,async:!0,accepts:{xml:"application/xml, text/xml",html:"text/html",text:"text/plain",json:"application/json, text/javascript","*":Tn},contents:{xml:/xml/,html:/html/,json:/json/},responseFields:{xml:"responseXML",text:"responseText"},converters:{"* text":e.String,"text html":!0,"text json":v.parseJSON,"text xml":v.parseXML},flatOptions:{context:!0,url:!0}},ajaxPrefilter:Cn(Sn),ajaxTransport:Cn(xn),ajax:function(e,n){function T(e,n,s,a){var l,y,b,w,S,T=n;if(E===2)return;E=2,u&&clearTimeout(u),o=t,i=a||"",x.readyState=e>0?4:0,s&&(w=An(c,x,s));if(e>=200&&e<300||e===304)c.ifModified&&(S=x.getResponseHeader("Last-Modified"),S&&(v.lastModified[r]=S),S=x.getResponseHeader("Etag"),S&&(v.etag[r]=S)),e===304?(T="notmodified",l=!0):(l=On(c,w),T=l.state,y=l.data,b=l.error,l=!b);else{b=T;if(!T||e)T="error",e<0&&(e=0)}x.status=e,x.statusText=(n||T)+"",l?d.resolveWith(h,[y,T,x]):d.rejectWith(h,[x,T,b]),x.statusCode(g),g=t,f&&p.trigger("ajax"+(l?"Success":"Error"),[x,c,l?y:b]),m.fireWith(h,[x,T]),f&&(p.trigger("ajaxComplete",[x,c]),--v.active||v.event.trigger("ajaxStop"))}typeof e=="object"&&(n=e,e=t),n=n||{};var r,i,s,o,u,a,f,l,c=v.ajaxSetup({},n),h=c.context||c,p=h!==c&&(h.nodeType||h instanceof v)?v(h):v.event,d=v.Deferred(),m=v.Callbacks("once memory"),g=c.statusCode||{},b={},w={},E=0,S="canceled",x={readyState:0,setRequestHeader:function(e,t){if(!E){var n=e.toLowerCase();e=w[n]=w[n]||e,b[e]=t}return this},getAllResponseHeaders:function(){return E===2?i:null},getResponseHeader:function(e){var n;if(E===2){if(!s){s={};while(n=pn.exec(i))s[n[1].toLowerCase()]=n[2]}n=s[e.toLowerCase()]}return n===t?null:n},overrideMimeType:function(e){return E||(c.mimeType=e),this},abort:function(e){return e=e||S,o&&o.abort(e),T(0,e),this}};d.promise(x),x.success=x.done,x.error=x.fail,x.complete=m.add,x.statusCode=function(e){if(e){var t;if(E<2)for(t in e)g[t]=[g[t],e[t]];else t=e[x.status],x.always(t)}return this},c.url=((e||c.url)+"").replace(hn,"").replace(mn,ln[1]+"//"),c.dataTypes=v.trim(c.dataType||"*").toLowerCase().split(y),c.crossDomain==null&&(a=wn.exec(c.url.toLowerCase()),c.crossDomain=!(!a||a[1]===ln[1]&&a[2]===ln[2]&&(a[3]||(a[1]==="http:"?80:443))==(ln[3]||(ln[1]==="http:"?80:443)))),c.data&&c.processData&&typeof c.data!="string"&&(c.data=v.param(c.data,c.traditional)),kn(Sn,c,n,x);if(E===2)return x;f=c.global,c.type=c.type.toUpperCase(),c.hasContent=!vn.test(c.type),f&&v.active++===0&&v.event.trigger("ajaxStart");if(!c.hasContent){c.data&&(c.url+=(gn.test(c.url)?"&":"?")+c.data,delete c.data),r=c.url;if(c.cache===!1){var N=v.now(),C=c.url.replace(bn,"$1_="+N);c.url=C+(C===c.url?(gn.test(c.url)?"&":"?")+"_="+N:"")}}(c.data&&c.hasContent&&c.contentType!==!1||n.contentType)&&x.setRequestHeader("Content-Type",c.contentType),c.ifModified&&(r=r||c.url,v.lastModified[r]&&x.setRequestHeader("If-Modified-Since",v.lastModified[r]),v.etag[r]&&x.setRequestHeader("If-None-Match",v.etag[r])),x.setRequestHeader("Accept",c.dataTypes[0]&&c.accepts[c.dataTypes[0]]?c.accepts[c.dataTypes[0]]+(c.dataTypes[0]!=="*"?", "+Tn+"; q=0.01":""):c.accepts["*"]);for(l in c.headers)x.setRequestHeader(l,c.headers[l]);if(!c.beforeSend||c.beforeSend.call(h,x,c)!==!1&&E!==2){S="abort";for(l in{success:1,error:1,complete:1})x[l](c[l]);o=kn(xn,c,n,x);if(!o)T(-1,"No Transport");else{x.readyState=1,f&&p.trigger("ajaxSend",[x,c]),c.async&&c.timeout>0&&(u=setTimeout(function(){x.abort("timeout")},c.timeout));try{E=1,o.send(b,T)}catch(k){if(!(E<2))throw k;T(-1,k)}}return x}return x.abort()},active:0,lastModified:{},etag:{}});var Mn=[],_n=/\?/,Dn=/(=)\?(?=&|$)|\?\?/,Pn=v.now();v.ajaxSetup({jsonp:"callback",jsonpCallback:function(){var e=Mn.pop()||v.expando+"_"+Pn++;return this[e]=!0,e}}),v.ajaxPrefilter("json jsonp",function(n,r,i){var s,o,u,a=n.data,f=n.url,l=n.jsonp!==!1,c=l&&Dn.test(f),h=l&&!c&&typeof a=="string"&&!(n.contentType||"").indexOf("application/x-www-form-urlencoded")&&Dn.test(a);if(n.dataTypes[0]==="jsonp"||c||h)return s=n.jsonpCallback=v.isFunction(n.jsonpCallback)?n.jsonpCallback():n.jsonpCallback,o=e[s],c?n.url=f.replace(Dn,"$1"+s):h?n.data=a.replace(Dn,"$1"+s):l&&(n.url+=(_n.test(f)?"&":"?")+n.jsonp+"="+s),n.converters["script json"]=function(){return u||v.error(s+" was not called"),u[0]},n.dataTypes[0]="json",e[s]=function(){u=arguments},i.always(function(){e[s]=o,n[s]&&(n.jsonpCallback=r.jsonpCallback,Mn.push(s)),u&&v.isFunction(o)&&o(u[0]),u=o=t}),"script"}),v.ajaxSetup({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/javascript|ecmascript/},converters:{"text script":function(e){return v.globalEval(e),e}}}),v.ajaxPrefilter("script",function(e){e.cache===t&&(e.cache=!1),e.crossDomain&&(e.type="GET",e.global=!1)}),v.ajaxTransport("script",function(e){if(e.crossDomain){var n,r=i.head||i.getElementsByTagName("head")[0]||i.documentElement;return{send:function(s,o){n=i.createElement("script"),n.async="async",e.scriptCharset&&(n.charset=e.scriptCharset),n.src=e.url,n.onload=n.onreadystatechange=function(e,i){if(i||!n.readyState||/loaded|complete/.test(n.readyState))n.onload=n.onreadystatechange=null,r&&n.parentNode&&r.removeChild(n),n=t,i||o(200,"success")},r.insertBefore(n,r.firstChild)},abort:function(){n&&n.onload(0,1)}}}});var Hn,Bn=e.ActiveXObject?function(){for(var e in Hn)Hn[e](0,1)}:!1,jn=0;v.ajaxSettings.xhr=e.ActiveXObject?function(){return!this.isLocal&&Fn()||In()}:Fn,function(e){v.extend(v.support,{ajax:!!e,cors:!!e&&"withCredentials"in e})}(v.ajaxSettings.xhr()),v.support.ajax&&v.ajaxTransport(function(n){if(!n.crossDomain||v.support.cors){var r;return{send:function(i,s){var o,u,a=n.xhr();n.username?a.open(n.type,n.url,n.async,n.username,n.password):a.open(n.type,n.url,n.async);if(n.xhrFields)for(u in n.xhrFields)a[u]=n.xhrFields[u];n.mimeType&&a.overrideMimeType&&a.overrideMimeType(n.mimeType),!n.crossDomain&&!i["X-Requested-With"]&&(i["X-Requested-With"]="XMLHttpRequest");try{for(u in i)a.setRequestHeader(u,i[u])}catch(f){}a.send(n.hasContent&&n.data||null),r=function(e,i){var u,f,l,c,h;try{if(r&&(i||a.readyState===4)){r=t,o&&(a.onreadystatechange=v.noop,Bn&&delete Hn[o]);if(i)a.readyState!==4&&a.abort();else{u=a.status,l=a.getAllResponseHeaders(),c={},h=a.responseXML,h&&h.documentElement&&(c.xml=h);try{c.text=a.responseText}catch(p){}try{f=a.statusText}catch(p){f=""}!u&&n.isLocal&&!n.crossDomain?u=c.text?200:404:u===1223&&(u=204)}}}catch(d){i||s(-1,d)}c&&s(u,f,c,l)},n.async?a.readyState===4?setTimeout(r,0):(o=++jn,Bn&&(Hn||(Hn={},v(e).unload(Bn)),Hn[o]=r),a.onreadystatechange=r):r()},abort:function(){r&&r(0,1)}}}});var qn,Rn,Un=/^(?:toggle|show|hide)$/,zn=new RegExp("^(?:([-+])=|)("+m+")([a-z%]*)$","i"),Wn=/queueHooks$/,Xn=[Gn],Vn={"*":[function(e,t){var n,r,i=this.createTween(e,t),s=zn.exec(t),o=i.cur(),u=+o||0,a=1,f=20;if(s){n=+s[2],r=s[3]||(v.cssNumber[e]?"":"px");if(r!=="px"&&u){u=v.css(i.elem,e,!0)||n||1;do a=a||".5",u/=a,v.style(i.elem,e,u+r);while(a!==(a=i.cur()/o)&&a!==1&&--f)}i.unit=r,i.start=u,i.end=s[1]?u+(s[1]+1)*n:n}return i}]};v.Animation=v.extend(Kn,{tweener:function(e,t){v.isFunction(e)?(t=e,e=["*"]):e=e.split(" ");var n,r=0,i=e.length;for(;r<i;r++)n=e[r],Vn[n]=Vn[n]||[],Vn[n].unshift(t)},prefilter:function(e,t){t?Xn.unshift(e):Xn.push(e)}}),v.Tween=Yn,Yn.prototype={constructor:Yn,init:function(e,t,n,r,i,s){this.elem=e,this.prop=n,this.easing=i||"swing",this.options=t,this.start=this.now=this.cur(),this.end=r,this.unit=s||(v.cssNumber[n]?"":"px")},cur:function(){var e=Yn.propHooks[this.prop];return e&&e.get?e.get(this):Yn.propHooks._default.get(this)},run:function(e){var t,n=Yn.propHooks[this.prop];return this.options.duration?this.pos=t=v.easing[this.easing](e,this.options.duration*e,0,1,this.options.duration):this.pos=t=e,this.now=(this.end-this.start)*t+this.start,this.options.step&&this.options.step.call(this.elem,this.now,this),n&&n.set?n.set(this):Yn.propHooks._default.set(this),this}},Yn.prototype.init.prototype=Yn.prototype,Yn.propHooks={_default:{get:function(e){var t;return e.elem[e.prop]==null||!!e.elem.style&&e.elem.style[e.prop]!=null?(t=v.css(e.elem,e.prop,!1,""),!t||t==="auto"?0:t):e.elem[e.prop]},set:function(e){v.fx.step[e.prop]?v.fx.step[e.prop](e):e.elem.style&&(e.elem.style[v.cssProps[e.prop]]!=null||v.cssHooks[e.prop])?v.style(e.elem,e.prop,e.now+e.unit):e.elem[e.prop]=e.now}}},Yn.propHooks.scrollTop=Yn.propHooks.scrollLeft={set:function(e){e.elem.nodeType&&e.elem.parentNode&&(e.elem[e.prop]=e.now)}},v.each(["toggle","show","hide"],function(e,t){var n=v.fn[t];v.fn[t]=function(r,i,s){return r==null||typeof r=="boolean"||!e&&v.isFunction(r)&&v.isFunction(i)?n.apply(this,arguments):this.animate(Zn(t,!0),r,i,s)}}),v.fn.extend({fadeTo:function(e,t,n,r){return this.filter(Gt).css("opacity",0).show().end().animate({opacity:t},e,n,r)},animate:function(e,t,n,r){var i=v.isEmptyObject(e),s=v.speed(t,n,r),o=function(){var t=Kn(this,v.extend({},e),s);i&&t.stop(!0)};return i||s.queue===!1?this.each(o):this.queue(s.queue,o)},stop:function(e,n,r){var i=function(e){var t=e.stop;delete e.stop,t(r)};return typeof e!="string"&&(r=n,n=e,e=t),n&&e!==!1&&this.queue(e||"fx",[]),this.each(function(){var t=!0,n=e!=null&&e+"queueHooks",s=v.timers,o=v._data(this);if(n)o[n]&&o[n].stop&&i(o[n]);else for(n in o)o[n]&&o[n].stop&&Wn.test(n)&&i(o[n]);for(n=s.length;n--;)s[n].elem===this&&(e==null||s[n].queue===e)&&(s[n].anim.stop(r),t=!1,s.splice(n,1));(t||!r)&&v.dequeue(this,e)})}}),v.each({slideDown:Zn("show"),slideUp:Zn("hide"),slideToggle:Zn("toggle"),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(e,t){v.fn[e]=function(e,n,r){return this.animate(t,e,n,r)}}),v.speed=function(e,t,n){var r=e&&typeof e=="object"?v.extend({},e):{complete:n||!n&&t||v.isFunction(e)&&e,duration:e,easing:n&&t||t&&!v.isFunction(t)&&t};r.duration=v.fx.off?0:typeof r.duration=="number"?r.duration:r.duration in v.fx.speeds?v.fx.speeds[r.duration]:v.fx.speeds._default;if(r.queue==null||r.queue===!0)r.queue="fx";return r.old=r.complete,r.complete=function(){v.isFunction(r.old)&&r.old.call(this),r.queue&&v.dequeue(this,r.queue)},r},v.easing={linear:function(e){return e},swing:function(e){return.5-Math.cos(e*Math.PI)/2}},v.timers=[],v.fx=Yn.prototype.init,v.fx.tick=function(){var e,n=v.timers,r=0;qn=v.now();for(;r<n.length;r++)e=n[r],!e()&&n[r]===e&&n.splice(r--,1);n.length||v.fx.stop(),qn=t},v.fx.timer=function(e){e()&&v.timers.push(e)&&!Rn&&(Rn=setInterval(v.fx.tick,v.fx.interval))},v.fx.interval=13,v.fx.stop=function(){clearInterval(Rn),Rn=null},v.fx.speeds={slow:600,fast:200,_default:400},v.fx.step={},v.expr&&v.expr.filters&&(v.expr.filters.animated=function(e){return v.grep(v.timers,function(t){return e===t.elem}).length});var er=/^(?:body|html)$/i;v.fn.offset=function(e){if(arguments.length)return e===t?this:this.each(function(t){v.offset.setOffset(this,e,t)});var n,r,i,s,o,u,a,f={top:0,left:0},l=this[0],c=l&&l.ownerDocument;if(!c)return;return(r=c.body)===l?v.offset.bodyOffset(l):(n=c.documentElement,v.contains(n,l)?(typeof l.getBoundingClientRect!="undefined"&&(f=l.getBoundingClientRect()),i=tr(c),s=n.clientTop||r.clientTop||0,o=n.clientLeft||r.clientLeft||0,u=i.pageYOffset||n.scrollTop,a=i.pageXOffset||n.scrollLeft,{top:f.top+u-s,left:f.left+a-o}):f)},v.offset={bodyOffset:function(e){var t=e.offsetTop,n=e.offsetLeft;return v.support.doesNotIncludeMarginInBodyOffset&&(t+=parseFloat(v.css(e,"marginTop"))||0,n+=parseFloat(v.css(e,"marginLeft"))||0),{top:t,left:n}},setOffset:function(e,t,n){var r=v.css(e,"position");r==="static"&&(e.style.position="relative");var i=v(e),s=i.offset(),o=v.css(e,"top"),u=v.css(e,"left"),a=(r==="absolute"||r==="fixed")&&v.inArray("auto",[o,u])>-1,f={},l={},c,h;a?(l=i.position(),c=l.top,h=l.left):(c=parseFloat(o)||0,h=parseFloat(u)||0),v.isFunction(t)&&(t=t.call(e,n,s)),t.top!=null&&(f.top=t.top-s.top+c),t.left!=null&&(f.left=t.left-s.left+h),"using"in t?t.using.call(e,f):i.css(f)}},v.fn.extend({position:function(){if(!this[0])return;var e=this[0],t=this.offsetParent(),n=this.offset(),r=er.test(t[0].nodeName)?{top:0,left:0}:t.offset();return n.top-=parseFloat(v.css(e,"marginTop"))||0,n.left-=parseFloat(v.css(e,"marginLeft"))||0,r.top+=parseFloat(v.css(t[0],"borderTopWidth"))||0,r.left+=parseFloat(v.css(t[0],"borderLeftWidth"))||0,{top:n.top-r.top,left:n.left-r.left}},offsetParent:function(){return this.map(function(){var e=this.offsetParent||i.body;while(e&&!er.test(e.nodeName)&&v.css(e,"position")==="static")e=e.offsetParent;return e||i.body})}}),v.each({scrollLeft:"pageXOffset",scrollTop:"pageYOffset"},function(e,n){var r=/Y/.test(n);v.fn[e]=function(i){return v.access(this,function(e,i,s){var o=tr(e);if(s===t)return o?n in o?o[n]:o.document.documentElement[i]:e[i];o?o.scrollTo(r?v(o).scrollLeft():s,r?s:v(o).scrollTop()):e[i]=s},e,i,arguments.length,null)}}),v.each({Height:"height",Width:"width"},function(e,n){v.each({padding:"inner"+e,content:n,"":"outer"+e},function(r,i){v.fn[i]=function(i,s){var o=arguments.length&&(r||typeof i!="boolean"),u=r||(i===!0||s===!0?"margin":"border");return v.access(this,function(n,r,i){var s;return v.isWindow(n)?n.document.documentElement["client"+e]:n.nodeType===9?(s=n.documentElement,Math.max(n.body["scroll"+e],s["scroll"+e],n.body["offset"+e],s["offset"+e],s["client"+e])):i===t?v.css(n,r,i,u):v.style(n,r,i,u)},n,o?i:t,o,null)}})}),e.jQuery=e.$=v,typeof define=="function"&&define.amd&&define.amd.jQuery&&define("jquery",[],function(){return v})})(window);(function($)
{$.ui=$.ui||{};$.fn.tabs=function()
{var method=typeof arguments[0]=='string'&&arguments[0];var args=method&&Array.prototype.slice.call(arguments,1)||arguments;return method=='length'?$.data(this[0],'tabs').$tabs.length:this.each(function()
{if(method)
{var tabs=$.data(this,'tabs');if(tabs)tabs[method].apply(tabs,args);}else
new $.ui.tabs(this,args[0]||{});});};$.ui.tabs=function(el,options)
{var self=this;this.options=$.extend({},$.ui.tabs.defaults,options);this.element=el;if(options.selected===null)
this.options.selected=null;this.options.event+='.tabs';$(el).bind('setData.tabs',function(event,key,value)
{if((/^selected/).test(key))
self.select(value);else
{self.options[key]=value;self.tabify();}}).bind('getData.tabs',function(event,key)
{return self.options[key];});$.data(el,'tabs',this);this.tabify(true);};$.ui.tabs.defaults={selected:0,unselect:false,event:'click',disabled:[],cookie:null,spinner:'Loading&#8230;',cache:false,idPrefix:'ui-tabs-',ajaxOptions:{},fx:null,tabTemplate:'<li><a href="#{href}"><span>#{label}</span></a></li>',panelTemplate:'<div></div>',navClass:'tabs-nav',selectedClass:'tabs-selected',unselectClass:'tabs-unselect',disabledClass:'tabs-disabled',panelClass:'tabs-panel',hideClass:'tabs-hide',loadingClass:'tabs-loading'};$.extend($.ui.tabs.prototype,{tabId:function(a)
{return a.title&&a.title.replace(/\s/g,'_').replace(/[^A-Za-z0-9\-_:\.]/g,'')||this.options.idPrefix+$.data(a);},ui:function(tab,panel)
{return{instance:this,options:this.options,tab:tab,panel:panel};},tabify:function(init)
{this.$lis=$('li:has(a[href])',this.element);this.$tabs=this.$lis.map(function(){return $('a',this)[0];});this.$panels=$([]);var self=this,o=this.options;this.$tabs.each(function(i,a)
{if(a.hash&&a.hash.replace('#',''))
self.$panels=self.$panels.add(a.hash);else if($(a).attr('href')!='#')
{$.data(a,'href.tabs',a.href);$.data(a,'load.tabs',a.href);var id=self.tabId(a);a.href='#'+id;var $panel=$('#'+id);if(!$panel.length)
{$panel=$(o.panelTemplate).attr('id',id).addClass(o.panelClass).insertAfter(self.$panels[i-1]||self.element);$panel.data('destroy.tabs',true);}
self.$panels=self.$panels.add($panel);}
else
o.disabled.push(i+1);});if(init)
{$(this.element).hasClass(o.navClass)||$(this.element).addClass(o.navClass);this.$panels.each(function()
{var $this=$(this);$this.hasClass(o.panelClass)||$this.addClass(o.panelClass);});this.$tabs.each(function(i,a)
{if(location.hash)
{if(a.hash==location.hash)
{o.selected=i;if($.browser.msie||$.browser.opera)
{var $toShow=$(location.hash),toShowId=$toShow.attr('id');$toShow.attr('id','');setTimeout(function()
{$toShow.attr('id',toShowId);},500);}
scrollTo(0,0);return false;}}else if(o.cookie)
{var index=parseInt($.cookie('ui-tabs'+$.data(self.element)),10);if(index&&self.$tabs[index])
{o.selected=index;return false;}}else if(self.$lis.eq(i).hasClass(o.selectedClass))
{o.selected=i;return false;}});this.$panels.addClass(o.hideClass);this.$lis.removeClass(o.selectedClass);if(o.selected!==null)
{this.$panels.eq(o.selected).show().removeClass(o.hideClass);this.$lis.eq(o.selected).addClass(o.selectedClass);}
var href=o.selected!==null&&$.data(this.$tabs[o.selected],'load.tabs');if(href)
this.load(o.selected);o.disabled=$.unique(o.disabled.concat($.map(this.$lis.filter('.'+o.disabledClass),function(n,i){return self.$lis.index(n);}))).sort();$(window).bind('unload',function()
{self.$tabs.unbind('.tabs');self.$lis=self.$tabs=self.$panels=null;});}
for(var i=0,li;li=this.$lis[i];i++)
$(li)[$.inArray(i,o.disabled)!=-1&&!$(li).hasClass(o.selectedClass)?'addClass':'removeClass'](o.disabledClass);if(o.cache===false)
this.$tabs.removeData('cache.tabs');var hideFx,showFx,baseFx={'min-width':0,duration:1},baseDuration='normal';if(o.fx&&o.fx.constructor==Array)
hideFx=o.fx[0]||baseFx,showFx=o.fx[1]||baseFx;else
hideFx=showFx=o.fx||baseFx;var resetCSS={display:'',overflow:'',height:''};if(!$.browser.msie)
resetCSS.opacity='';function hideTab(clicked,$hide,$show)
{$hide.animate(hideFx,hideFx.duration||baseDuration,function()
{$hide.addClass(o.hideClass).css(resetCSS);if($.browser.msie&&hideFx.opacity)
$hide[0].style.filter='';if($show)
showTab(clicked,$show,$hide);});}
function showTab(clicked,$show,$hide)
{if(showFx===baseFx)
$show.css('display','block');$show.animate(showFx,showFx.duration||baseDuration,function()
{$show.removeClass(o.hideClass).css(resetCSS);if($.browser.msie&&showFx.opacity)
$show[0].style.filter='';$(self.element).triggerHandler('tabsshow',[self.ui(clicked,$show[0])],o.show);});}
function switchTab(clicked,$li,$hide,$show)
{$li.addClass(o.selectedClass).siblings().removeClass(o.selectedClass);hideTab(clicked,$hide,$show);}
this.$tabs.unbind('.tabs').bind(o.event,function()
{var $li=$(this).parents('li:eq(0)'),$hide=self.$panels.filter(':visible'),$show=$(this.hash);if(($li.hasClass(o.selectedClass)&&!o.unselect)||$li.hasClass(o.disabledClass)||$(this).hasClass(o.loadingClass)||$(self.element).triggerHandler('tabsselect',[self.ui(this,$show[0])],o.select)===false)
{this.blur();return false;}
self.options.selected=self.$tabs.index(this);if(o.unselect)
{if($li.hasClass(o.selectedClass))
{self.options.selected=null;$li.removeClass(o.selectedClass);self.$panels.stop();hideTab(this,$hide);this.blur();return false;}else if(!$hide.length)
{self.$panels.stop();var a=this;self.load(self.$tabs.index(this),function()
{$li.addClass(o.selectedClass).addClass(o.unselectClass);showTab(a,$show);});this.blur();return false;}}
if(o.cookie)
$.cookie('ui-tabs'+$.data(self.element),self.options.selected,o.cookie);self.$panels.stop();if($show.length)
{var a=this;self.load(self.$tabs.index(this),$hide.length?function()
{switchTab(a,$li,$hide,$show);}:function()
{$li.addClass(o.selectedClass);showTab(a,$show);});}else
throw'jQuery UI Tabs: Mismatching fragment identifier.';if($.browser.msie)
this.blur();return false;});if(!(/^click/).test(o.event))
this.$tabs.bind('click.tabs',function(){return false;});},add:function(url,label,index)
{if(index==undefined)
index=this.$tabs.length;var o=this.options;var $li=$(o.tabTemplate.replace(/#\{href\}/,url).replace(/#\{label\}/,label));$li.data('destroy.tabs',true);var id=url.indexOf('#')==0?url.replace('#',''):this.tabId($('a:first-child',$li)[0]);var $panel=$('#'+id);if(!$panel.length)
{$panel=$(o.panelTemplate).attr('id',id).addClass(o.panelClass).addClass(o.hideClass);$panel.data('destroy.tabs',true);}
if(index>=this.$lis.length)
{$li.appendTo(this.element);$panel.appendTo(this.element.parentNode);}else
{$li.insertBefore(this.$lis[index]);$panel.insertBefore(this.$panels[index]);}
o.disabled=$.map(o.disabled,function(n,i){return n>=index?++n:n});this.tabify();if(this.$tabs.length==1)
{$li.addClass(o.selectedClass);$panel.removeClass(o.hideClass);var href=$.data(this.$tabs[0],'load.tabs');if(href)
this.load(index,href);}
$(this.element).triggerHandler('tabsadd',[this.ui(this.$tabs[index],this.$panels[index])],o.add);},remove:function(index)
{var o=this.options,$li=this.$lis.eq(index).remove(),$panel=this.$panels.eq(index).remove();if($li.hasClass(o.selectedClass)&&this.$tabs.length>1)
this.select(index+(index+1<this.$tabs.length?1:-1));o.disabled=$.map($.grep(o.disabled,function(n,i){return n!=index;}),function(n,i){return n>=index?--n:n});this.tabify();$(this.element).triggerHandler('tabsremove',[this.ui($li.find('a')[0],$panel[0])],o.remove);},enable:function(index)
{var o=this.options;if($.inArray(index,o.disabled)==-1)
return;var $li=this.$lis.eq(index).removeClass(o.disabledClass);if($.browser.safari)
{$li.css('display','inline-block');setTimeout(function()
{$li.css('display','block');},0);}
o.disabled=$.grep(o.disabled,function(n,i){return n!=index;});$(this.element).triggerHandler('tabsenable',[this.ui(this.$tabs[index],this.$panels[index])],o.enable);},disable:function(index)
{var self=this,o=this.options;if(index!=o.selected)
{this.$lis.eq(index).addClass(o.disabledClass);o.disabled.push(index);o.disabled.sort();$(this.element).triggerHandler('tabsdisable',[this.ui(this.$tabs[index],this.$panels[index])],o.disable);}},select:function(index)
{if(typeof index=='string')
index=this.$tabs.index(this.$tabs.filter('[href$='+index+']')[0]);this.$tabs.eq(index).trigger(this.options.event);},load:function(index,callback)
{var self=this,o=this.options,$a=this.$tabs.eq(index),a=$a[0],bypassCache=callback==undefined||callback===false,url=$a.data('load.tabs');callback=callback||function(){};if(!url||($.data(a,'cache.tabs')&&!bypassCache))
{callback();return;}
if(o.spinner)
{var $span=$('span',a);$span.data('label.tabs',$span.html()).html('<em>'+o.spinner+'</em>');}
var finish=function()
{self.$tabs.filter('.'+o.loadingClass).each(function()
{$(this).removeClass(o.loadingClass);if(o.spinner)
{var $span=$('span',this);$span.html($span.data('label.tabs')).removeData('label.tabs');}});self.xhr=null;};var ajaxOptions=$.extend({},o.ajaxOptions,{url:url,success:function(r,s)
{$(a.hash).html(r);finish();callback();if(o.cache)
$.data(a,'cache.tabs',true);$(self.element).triggerHandler('tabsload',[self.ui(self.$tabs[index],self.$panels[index])],o.load);o.ajaxOptions.success&&o.ajaxOptions.success(r,s);}});if(this.xhr)
{this.xhr.abort();finish();}
$a.addClass(o.loadingClass);setTimeout(function()
{self.xhr=$.ajax(ajaxOptions);},0);},url:function(index,url)
{this.$tabs.eq(index).removeData('cache.tabs').data('load.tabs',url);},destroy:function()
{var o=this.options;$(this.element).unbind('.tabs').removeClass(o.navClass).removeData('tabs');this.$tabs.each(function()
{var href=$.data(this,'href.tabs');if(href)
this.href=href;var $this=$(this).unbind('.tabs');$.each(['href','load','cache'],function(i,prefix)
{$this.removeData(prefix+'.tabs');});});this.$lis.add(this.$panels).each(function()
{if($.data(this,'destroy.tabs'))
$(this).remove();else
$(this).removeClass([o.selectedClass,o.unselectClass,o.disabledClass,o.panelClass,o.hideClass].join(' '));});}});})(jQuery);(function($){$.fn.bgIframe=$.fn.bgiframe=function(s){if($.browser.msie&&$.browser.version=="6.0"){s=$.extend({top:'auto',left:'auto',width:'auto',height:'auto',opacity:true,src:'javascript:false;'},s||{});var prop=function(n){return n&&n.constructor==Number?n+'px':n;},html='<iframe class="bgiframe"frameborder="0"tabindex="-1"src="'+s.src+'"'+'style="display:block;position:absolute;z-index:-1;'+(s.opacity!==false?'filter:Alpha(Opacity=\'0\');':'')+'top:'+(s.top=='auto'?'expression(((parseInt(this.parentNode.currentStyle.borderTopWidth)||0)*-1)+\'px\')':prop(s.top))+';'+'left:'+(s.left=='auto'?'expression(((parseInt(this.parentNode.currentStyle.borderLeftWidth)||0)*-1)+\'px\')':prop(s.left))+';'+'width:'+(s.width=='auto'?'expression(this.parentNode.offsetWidth+\'px\')':prop(s.width))+';'+'height:'+(s.height=='auto'?'expression(this.parentNode.offsetHeight+\'px\')':prop(s.height))+';'+'"/>';return this.each(function(){if($('> iframe.bgiframe',this).length==0)this.insertBefore(document.createElement(html),this.firstChild);});}return this;};})(jQuery);(function($)
{$.fn.jcarousel=function(o)
{return this.each(function()
{new $jc(this,o);});};var defaults={vertical:false,start:1,offset:1,size:null,scroll:3,visible:null,animation:'normal',easing:'swing',auto:0,wrap:null,initCallback:null,reloadCallback:null,itemLoadCallback:null,itemFirstInCallback:null,itemFirstOutCallback:null,itemLastInCallback:null,itemLastOutCallback:null,itemVisibleInCallback:null,itemVisibleOutCallback:null,buttonNextHTML:'<div></div>',buttonPrevHTML:'<div></div>',buttonNextEvent:'click',buttonPrevEvent:'click',buttonNextCallback:null,buttonPrevCallback:null,showPrevNextLinks:true,visiblePage:0,lastPage:0,fromPageDots:false,cacheId:null};$.jcarousel=function(e,o)
{this.options=$.extend({},defaults,o||{});this.locked=false;this.container=null;this.clip=null;this.list=null;this.buttonNext=null;this.buttonPrev=null;this.wh=!this.options.vertical?'width':'height';this.lt=!this.options.vertical?'left':'top';var skin='',split=e.className.split(' ');for(var i=0;i<split.length;i++)
{if(split[i].indexOf('jcarousel-skin')!=-1)
{$(e).removeClass(split[i]);var skin=split[i];break;}}
if(e.nodeName=='UL'||e.nodeName=='OL')
{this.list=$(e);this.container=this.list.parent();if(this.container.hasClass('jcarousel-clip'))
{if(!this.container.parent().hasClass('jcarousel-container'))
this.container=this.container.wrap('<div></div>');this.container=this.container.parent();}else if(!this.container.hasClass('jcarousel-container'))
this.container=this.list.wrap('<div></div>').parent();}else
{this.container=$(e);this.list=$(e).find('>ul,>ol,div>ul,div>ol');}
if(skin!=''&&this.container.parent()[0].className.indexOf('jcarousel-skin')==-1)
this.container.wrap('<div class=" '+skin+'"></div>');this.clip=this.list.parent();if(!this.clip.length||!this.clip.hasClass('jcarousel-clip'))
this.clip=this.list.wrap('<div></div>').parent();if(this.options.showPrevNextLinks)
{this.buttonPrev=$('.jcarousel-prev',this.container);if(this.buttonPrev.size()==0&&this.options.buttonPrevHTML!=null)
this.buttonPrev=this.clip.before(this.options.buttonPrevHTML).prev();this.buttonPrev.addClass(this.className('jcarousel-prev'));this.buttonNext=$('.jcarousel-next',this.container);if(this.buttonNext.size()==0&&this.options.buttonNextHTML!=null)
this.buttonNext=this.clip.before(this.options.buttonNextHTML).prev();this.buttonNext.addClass(this.className('jcarousel-next'));}
this.clip.addClass(this.className('jcarousel-clip'));this.list.addClass(this.className('jcarousel-list'));this.container.addClass(this.className('jcarousel-container'));var di=this.options.visible!=null?Math.ceil(this.clipping()/this.options.visible):null;var li=this.list.children('li');var self=this;if(li.size()>0)
{var wh=0,i=this.options.offset;li.each(function()
{self.format(this,i++);wh+=self.dimension(this,di);});this.list.css(this.wh,wh+'px');if(!o||o.size===undefined)
this.options.size=li.size();}
this.container.css('display','block');if(this.buttonNext)
{this.buttonNext.css('display','block');this.funcNext=function(){self.next();};}
if(this.buttonPrev)
{this.buttonPrev.css('display','block');this.funcPrev=function(){self.prev();};}
this.funcResize=function(){self.reload();};if(this.options.initCallback!=null)
this.options.initCallback(this,'init');this.setup();};var $jc=$.jcarousel;$jc.fn=$jc.prototype={jcarousel:'0.2.3'};$jc.fn.extend=$jc.extend=$.extend;$jc.fn.extend({setup:function()
{this.first=null;this.last=null;this.prevFirst=null;this.prevLast=null;this.animating=false;this.timer=null;this.tail=null;this.inTail=false;if(this.locked)
return;this.list.css(this.lt,this.pos(this.options.offset)+'px');var p=this.pos(this.options.start);this.prevFirst=this.prevLast=null;this.animate(p,false);$(window).unbind('resize',this.funcResize).bind('resize',this.funcResize);},reset:function()
{this.list.empty();this.list.css(this.lt,'0px');this.list.css(this.wh,'10px');if(this.options.initCallback!=null)
this.options.initCallback(this,'reset');this.setup();},reload:function()
{if(this.tail!=null&&this.inTail)
this.list.css(this.lt,$jc.intval(this.list.css(this.lt))+this.tail);this.tail=null;this.inTail=false;if(this.options.reloadCallback!=null)
this.options.reloadCallback(this);if(this.options.visible!=null)
{var self=this;var di=Math.ceil(this.clipping()/this.options.visible),wh=0,lt=0;$('li',this.list).each(function(i)
{wh+=self.dimension(this,di);if(i+1<self.first)
lt=wh;});this.list.css(this.wh,wh+'px');this.list.css(this.lt,-lt+'px');}
this.scroll(this.first,false);},lock:function()
{this.locked=true;this.buttons();},unlock:function()
{this.locked=false;this.buttons();},size:function(s)
{if(s!=undefined)
{this.options.size=s;if(!this.locked)
this.buttons();}
return this.options.size;},has:function(i,i2)
{if(i2==undefined||!i2)
i2=i;if(this.options.size!==null&&i2>this.options.size)
i2=this.options.size;for(var j=i;j<=i2;j++)
{var e=this.get(j);if(!e.length||e.hasClass('jcarousel-item-placeholder'))
return false;}
return true;},get:function(i)
{return $('.jcarousel-item-'+i,this.list);},add:function(i,s)
{var e=this.get(i),old=0,add=0;if(e.length==0)
{var c,e=this.create(i),j=$jc.intval(i);while(c=this.get(--j))
{if(j<=0||c.length)
{j<=0?this.list.prepend(e):c.after(e);break;}}}else
old=this.dimension(e);e.removeClass(this.className('jcarousel-item-placeholder'));typeof s=='string'?e.html(s):e.empty().append(s);var di=this.options.visible!=null?Math.ceil(this.clipping()/this.options.visible):null;var wh=this.dimension(e,di)-old;if(i>0&&i<this.first)
this.list.css(this.lt,$jc.intval(this.list.css(this.lt))-wh+'px');this.list.css(this.wh,$jc.intval(this.list.css(this.wh))+wh+'px');return e;},remove:function(i)
{var e=this.get(i);if(!e.length||(i>=this.first&&i<=this.last))
return;var d=this.dimension(e);if(i<this.first)
this.list.css(this.lt,$jc.intval(this.list.css(this.lt))+d+'px');e.remove();this.list.css(this.wh,$jc.intval(this.list.css(this.wh))-d+'px');},next:function()
{this.stopAuto();if(this.tail!=null&&!this.inTail)
this.scrollTail(false);else
this.scroll(((this.options.wrap=='both'||this.options.wrap=='last')&&this.options.size!=null&&this.last==this.options.size)?1:this.first+this.options.scroll);},prev:function()
{this.stopAuto();if(this.tail!=null&&this.inTail)
this.scrollTail(true);else
this.scroll(((this.options.wrap=='both'||this.options.wrap=='first')&&this.options.size!=null&&this.first==1)?this.options.size:this.first-this.options.scroll);},scrollTail:function(b)
{if(this.locked||this.animating||!this.tail)
return;var pos=$jc.intval(this.list.css(this.lt));!b?pos-=this.tail:pos+=this.tail;this.inTail=!b;this.prevFirst=this.first;this.prevLast=this.last;this.animate(pos);},scroll:function(i,a)
{if(this.locked||this.animating)
return;this.animate(this.pos(i),a);},pos:function(i)
{if(this.locked||this.animating)
return;if(this.options.wrap!='circular')
i=i<1?1:(this.options.size&&i>this.options.size?this.options.size:i);var back=this.first>i;var pos=$jc.intval(this.list.css(this.lt));var f=this.options.wrap!='circular'&&this.first<=1?1:this.first;var c=back?this.get(f):this.get(this.last);var j=back?f:f-1;var e=null,l=0,p=false,d=0;while(back?--j>=i:++j<i)
{e=this.get(j);p=!e.length;if(e.length==0)
{e=this.create(j).addClass(this.className('jcarousel-item-placeholder'));c[back?'before':'after'](e);}
c=e;d=this.dimension(e);if(p)
l+=d;if(this.first!=null&&(this.options.wrap=='circular'||(j>=1&&(this.options.size==null||j<=this.options.size))))
pos=back?pos+d:pos-d;}
var clipping=this.clipping();var cache=[];var visible=0,j=i,v=0;var c=this.get(i-1);while(++visible)
{e=this.get(j);p=!e.length;if(e.length==0)
{e=this.create(j).addClass(this.className('jcarousel-item-placeholder'));c.length==0?this.list.prepend(e):c[back?'before':'after'](e);}
c=e;var d=this.dimension(e);if(d==0)
{return 0;}
if(this.options.wrap!='circular'&&this.options.size!==null&&j>this.options.size)
cache.push(e);else if(p)
l+=d;v+=d;if(v>=clipping)
break;j++;}
for(var x=0;x<cache.length;x++)
cache[x].remove();if(l>0)
{this.list.css(this.wh,this.dimension(this.list)+l+'px');if(back)
{pos-=l;this.list.css(this.lt,$jc.intval(this.list.css(this.lt))-l+'px');}}
var last=i+visible-1;if(this.options.wrap!='circular'&&this.options.size&&last>this.options.size)
last=this.options.size;if(j>last)
{visible=0,j=last,v=0;while(++visible)
{var e=this.get(j--);if(!e.length)
break;v+=this.dimension(e);if(v>=clipping)
break;}}
var first=last-visible+1;if(this.options.wrap!='circular'&&first<1)
first=1;if(this.inTail&&back)
{pos+=this.tail;this.inTail=false;}
this.tail=null;if(!($.browser.msie&&$.browser.version.substr(0,1)==6))
{if(this.options.wrap!='circular'&&last==this.options.size&&(last-visible+1)>=1)
{var m=$jc.margin(this.get(last),!this.options.vertical?'marginRight':'marginBottom');if((v-m)>clipping)
this.tail=v-clipping-m;}}
while(i-->first)
pos+=this.dimension(this.get(i));this.prevFirst=this.first;this.prevLast=this.last;this.first=first;this.last=last;return pos;},animate:function(p,a)
{if(this.locked||this.animating)
return;this.animating=true;var self=this;var scrolled=function()
{self.animating=false;if(p==0)
self.list.css(self.lt,0);if((self.options.wrap=='both'||self.options.wrap=='last'||self.options.size==null||self.last<self.options.size)&&self.options.auto>0)
{self.startAuto();}
self.buttons();self.notify('onAfterAnimation');};this.notify('onBeforeAnimation');if(!this.options.animation||a==false)
{this.list.css(this.lt,p+'px');scrolled();}else
{var o=!this.options.vertical?{'left':p}:{'top':p};this.list.animate(o,this.options.animation,this.options.easing,scrolled);}},startAuto:function(s)
{if(s!=undefined)
this.options.auto=s;if(this.options.auto==0)
return this.stopAuto();if(this.timer!=null)
return;var self=this;this.timer=setTimeout(function(){self.next();},this.options.auto*1000);},stopAuto:function()
{if(this.timer==null)
return;clearTimeout(this.timer);this.timer=null;},buttons:function(n,p)
{if(this.buttonNext==null&&this.buttonPrev==null)
{return;}
if(n==undefined||n==null)
{var n=!this.locked&&this.options.size!==0&&((this.options.wrap&&this.options.wrap!='first')||this.options.size==null||this.last<this.options.size);if(!this.locked&&(!this.options.wrap||this.options.wrap=='first')&&this.options.size!=null&&this.last>=this.options.size)
n=this.tail!=null&&!this.inTail;}
if(p==undefined||p==null)
{var p=!this.locked&&this.options.size!==0&&((this.options.wrap&&this.options.wrap!='last')||this.first>1);if(!this.locked&&(!this.options.wrap||this.options.wrap=='last')&&this.options.size!=null&&this.first==1)
p=this.tail!=null&&this.inTail;}
var self=this;this.buttonNext[n?'bind':'unbind'](this.options.buttonNextEvent,this.funcNext)[n?'removeClass':'addClass'](this.className('jcarousel-next-disabled')).attr('disabled',n?false:true);this.buttonPrev[p?'bind':'unbind'](this.options.buttonPrevEvent,this.funcPrev)[p?'removeClass':'addClass'](this.className('jcarousel-prev-disabled')).attr('disabled',p?false:true);if(this.buttonNext.length>0&&(this.buttonNext[0].jcarouselstate==undefined||this.buttonNext[0].jcarouselstate!=n)&&this.options.buttonNextCallback!=null)
{this.buttonNext.each(function(){self.options.buttonNextCallback(self,this,n);});this.buttonNext[0].jcarouselstate=n;}
if(this.buttonPrev.length>0&&(this.buttonPrev[0].jcarouselstate==undefined||this.buttonPrev[0].jcarouselstate!=p)&&this.options.buttonPrevCallback!=null)
{this.buttonPrev.each(function(){self.options.buttonPrevCallback(self,this,p);});this.buttonPrev[0].jcarouselstate=p;}},notify:function(evt)
{var state=this.prevFirst==null?'init':(this.prevFirst<this.first?'next':'prev');this.callback('itemLoadCallback',evt,state);if(this.prevFirst!==this.first)
{this.callback('itemFirstInCallback',evt,state,this.first);this.callback('itemFirstOutCallback',evt,state,this.prevFirst);}
if(this.prevLast!==this.last)
{this.callback('itemLastInCallback',evt,state,this.last);this.callback('itemLastOutCallback',evt,state,this.prevLast);}
this.callback('itemVisibleInCallback',evt,state,this.first,this.last,this.prevFirst,this.prevLast);this.callback('itemVisibleOutCallback',evt,state,this.prevFirst,this.prevLast,this.first,this.last);},callback:function(cb,evt,state,i1,i2,i3,i4)
{if(this.options[cb]==undefined||(typeof this.options[cb]!='object'&&evt!='onAfterAnimation'))
return;var callback=typeof this.options[cb]=='object'?this.options[cb][evt]:this.options[cb];if(!$.isFunction(callback))
return;var self=this;if(i1===undefined)
callback(self,state,evt);else if(i2===undefined)
this.get(i1).each(function(){callback(self,this,i1,state,evt);});else
{for(var i=i1;i<=i2;i++)
if(i!==null&&!(i>=i3&&i<=i4))
this.get(i).each(function(){callback(self,this,i,state,evt);});}},create:function(i)
{return this.format('<li></li>',i);},format:function(e,i)
{var $e=$(e).addClass(this.className('jcarousel-item')).addClass(this.className('jcarousel-item-'+i));$e.attr('jcarouselindex',i);return $e;},className:function(c)
{return c+' '+c+(!this.options.vertical?'-horizontal':'-vertical');},dimension:function(e,d)
{var el=e.jquery!=undefined?e[0]:e;var old=!this.options.vertical?el.offsetWidth+$jc.margin(el,'marginLeft')+$jc.margin(el,'marginRight'):el.offsetHeight+$jc.margin(el,'marginTop')+$jc.margin(el,'marginBottom');if(d==undefined||old==d)
return old;var w=!this.options.vertical?d-$jc.margin(el,'marginLeft')-$jc.margin(el,'marginRight'):d-$jc.margin(el,'marginTop')-$jc.margin(el,'marginBottom');$(el).css(this.wh,w+'px');return this.dimension(el);},clipping:function()
{return!this.options.vertical?this.clip[0].offsetWidth-$jc.intval(this.clip.css('borderLeftWidth'))-$jc.intval(this.clip.css('borderRightWidth')):this.clip[0].offsetHeight-$jc.intval(this.clip.css('borderTopWidth'))-$jc.intval(this.clip.css('borderBottomWidth'));},index:function(i,s)
{if(s==undefined)
s=this.options.size;return Math.round((((i-1)/s)-Math.floor((i-1)/s))*s)+1;}});$jc.extend({defaults:function(d)
{return $.extend(defaults,d||{});},margin:function(e,p)
{if(!e)
return 0;var el=e.jquery!=undefined?e[0]:e;return $jc.intval($.css(el,p));},intval:function(v)
{v=parseInt(v);return isNaN(v)?0:v;}});})(jQuery);dc={triggerElements:'*',parentElementId:null,uniqueCollapse:false,trigger:'trigger',triggeropen:'expanded',hideClass:'hide',showClass:'show',closedPic:'http://www1.ibdcd.com/images/icons/trigger-arrow.gif',closedAlt:'expand section',openPic:'http://www1.ibdcd.com/images/icons/expanded-arrow.gif',openAlt:'collapse section',init:function(e)
{var temp;if(!document.getElementById||!document.createTextNode){return;}
if(!dc.parentElementId)
{temp=document.getElementsByTagName(dc.triggerElements);}else if(document.getElementById(dc.parentElementId))
{temp=document.getElementById(dc.parentElementId).getElementsByTagName(dc.triggerElements);}else
{return;}
dc.tempLink=document.createElement('a');dc.tempLink.setAttribute('href','#');dc.tempLink.appendChild(document.createElement('img'));for(var i=0;i<temp.length;i++)
{if(dc.cssjs('check',temp[i],dc.trigger)||dc.cssjs('check',temp[i],dc.triggeropen))
{dc.makeTrigger(temp[i],e);}}},makeTrigger:function(o,e)
{var tl=dc.tempLink.cloneNode(true);var tohide=o.nextSibling;while(tohide.nodeType!=1)
{tohide=tohide.nextSibling;}
o.tohide=tohide;if(!dc.cssjs('check',o,dc.triggeropen))
{dc.cssjs('add',tohide,dc.hideClass);tl.getElementsByTagName('img')[0].setAttribute('src',dc.closedPic);tl.getElementsByTagName('img')[0].setAttribute('alt',dc.closedAlt);o.setAttribute('title',dc.closedAlt);}else
{dc.cssjs('add',tohide,dc.showClass);tl.getElementsByTagName('img')[0].setAttribute('src',dc.openPic);tl.getElementsByTagName('img')[0].setAttribute('alt',dc.openAlt);o.setAttribute('title',dc.openAlt);dc.currentOpen=o;}
dc.addEvent(o,'click',dc.addCollapse,false);o.insertBefore(tl,o.firstChild);dc.addEvent(tl,'click',dc.addCollapse,false);tl.onclick=function(){return false;}
o.onclick=function(){return false;}},addCollapse:function(e)
{var action,pic;if(self.screenTop&&self.screenX)
{window.resizeTo(self.outerWidth+1,self.outerHeight);window.resizeTo(self.outerWidth-1,self.outerHeight);}
if(dc.uniqueCollapse&&dc.currentOpen)
{dc.currentOpen.getElementsByTagName('img')[0].setAttribute('src',dc.closedPic);dc.currentOpen.getElementsByTagName('img')[0].setAttribute('alt',dc.closedAlt);dc.currentOpen.setAttribute('title',dc.closedAlt);dc.cssjs('swap',dc.currentOpen.tohide,dc.showClass,dc.hideClass);dc.cssjs('remove',dc.currentOpen,dc.triggeropen);dc.cssjs('add',dc.currentOpen,dc.trigger);}
var o=dc.getTarget(e);if(o.tohide)
{if(dc.cssjs('check',o.tohide,dc.hideClass))
{o.getElementsByTagName('img')[0].setAttribute('src',dc.openPic);o.getElementsByTagName('img')[0].setAttribute('alt',dc.openAlt);o.setAttribute('title',dc.openAlt);dc.cssjs('swap',o.tohide,dc.hideClass,dc.showClass);dc.cssjs('add',o,dc.triggeropen);dc.cssjs('remove',o,dc.trigger);}else
{o.getElementsByTagName('img')[0].setAttribute('src',dc.closedPic);o.getElementsByTagName('img')[0].setAttribute('alt',dc.closedAlt);o.setAttribute('title',dc.closedAlt);dc.cssjs('swap',o.tohide,dc.showClass,dc.hideClass);dc.cssjs('remove',o,dc.triggeropen);dc.cssjs('add',o,dc.trigger);}
dc.currentOpen=o;dc.cancelClick(e);}
else
{dc.cancelClick(e);}},getTarget:function(e)
{var target=window.event?window.event.srcElement:e?e.target:null;if(!target){return false;}
while(!target.tohide&&target.nodeName.toLowerCase()!='body')
{target=target.parentNode;}
return target;},cancelClick:function(e)
{if(window.event)
{window.event.cancelBubble=true;window.event.returnValue=false;return;}
if(e)
{e.stopPropagation();e.preventDefault();}},addEvent:function(elm,evType,fn,useCapture)
{if(elm.addEventListener)
{elm.addEventListener(evType,fn,useCapture);return true;}else if(elm.attachEvent)
{var r=elm.attachEvent('on'+evType,fn);return r;}else
{elm['on'+evType]=fn;}},cssjs:function(a,o,c1,c2)
{switch(a)
{case'swap':o.className=!dc.cssjs('check',o,c1)?o.className.replace(c2,c1):o.className.replace(c1,c2);break;case'add':if(!dc.cssjs('check',o,c1)){o.className+=o.className?' '+c1:c1;}
break;case'remove':var rep=o.className.match(' '+c1)?' '+c1:c1;o.className=o.className.replace(rep,'');break;case'check':return new RegExp("(^|\\s)"+c1+"(\\s|$)").test(o.className)
break;}}}
dc.addEvent(window,'load',dc.init,false);(function($)
{var height=$.fn.height,width=$.fn.width;$.fn.extend({height:function()
{if(!this[0])error();if(this[0]==window)
if($.browser.opera||($.browser.safari&&parseInt($.browser.version)>520))
return self.innerHeight-(($(document).height()>self.innerHeight)?getScrollbarWidth():0);else if($.browser.safari)
return self.innerHeight;else
return $.boxModel&&document.documentElement.clientHeight||document.body.clientHeight;if(this[0]==document)
return Math.max(($.boxModel&&document.documentElement.scrollHeight||document.body.scrollHeight),document.body.offsetHeight);return height.apply(this,arguments);},width:function()
{if(!this[0])error();if(this[0]==window)
if($.browser.opera||($.browser.safari&&parseInt($.browser.version)>520))
return self.innerWidth-(($(document).width()>self.innerWidth)?getScrollbarWidth():0);else if($.browser.safari)
return self.innerWidth;else
return $.boxModel&&document.documentElement.clientWidth||document.body.clientWidth;if(this[0]==document)
if($.browser.mozilla)
{var scrollLeft=self.pageXOffset;self.scrollTo(99999999,self.pageYOffset);var scrollWidth=self.pageXOffset;self.scrollTo(scrollLeft,self.pageYOffset);return document.body.offsetWidth+scrollWidth;}
else
return Math.max((($.boxModel&&!$.browser.safari)&&document.documentElement.scrollWidth||document.body.scrollWidth),document.body.offsetWidth);return width.apply(this,arguments);},innerHeight:function()
{if(!this[0])error();return this[0]==window||this[0]==document?this.height():this.is(':visible')?this[0].offsetHeight-num(this,'borderTopWidth')-num(this,'borderBottomWidth'):this.height()+num(this,'paddingTop')+num(this,'paddingBottom');},innerWidth:function()
{if(!this[0])error();return this[0]==window||this[0]==document?this.width():this.is(':visible')?this[0].offsetWidth-num(this,'borderLeftWidth')-num(this,'borderRightWidth'):this.width()+num(this,'paddingLeft')+num(this,'paddingRight');},outerHeight:function(options)
{if(!this[0])error();options=$.extend({margin:false},options||{});return this[0]==window||this[0]==document?this.height():this.is(':visible')?this[0].offsetHeight+(options.margin?(num(this,'marginTop')+num(this,'marginBottom')):0):this.height()
+num(this,'borderTopWidth')+num(this,'borderBottomWidth')
+num(this,'paddingTop')+num(this,'paddingBottom')
+(options.margin?(num(this,'marginTop')+num(this,'marginBottom')):0);},outerWidth:function(options)
{if(!this[0])error();options=$.extend({margin:false},options||{});return this[0]==window||this[0]==document?this.width():this.is(':visible')?this[0].offsetWidth+(options.margin?(num(this,'marginLeft')+num(this,'marginRight')):0):this.width()
+num(this,'borderLeftWidth')+num(this,'borderRightWidth')
+num(this,'paddingLeft')+num(this,'paddingRight')
+(options.margin?(num(this,'marginLeft')+num(this,'marginRight')):0);},scrollLeft:function(val)
{if(!this[0])error();if(val!=undefined)
return this.each(function()
{if(this==window||this==document)
window.scrollTo(val,$(window).scrollTop());else
this.scrollLeft=val;});if(this[0]==window||this[0]==document)
return self.pageXOffset||$.boxModel&&document.documentElement.scrollLeft||document.body.scrollLeft;return this[0].scrollLeft;},scrollTop:function(val)
{if(!this[0])error();if(val!=undefined)
return this.each(function()
{if(this==window||this==document)
window.scrollTo($(window).scrollLeft(),val);else
this.scrollTop=val;});if(this[0]==window||this[0]==document)
return self.pageYOffset||$.boxModel&&document.documentElement.scrollTop||document.body.scrollTop;return this[0].scrollTop;},position:function(returnObject)
{return this.offset({margin:false,scroll:false,relativeTo:this.offsetParent()},returnObject);},offset:function(options,returnObject)
{if(!this[0])error();var x=0,y=0,sl=0,st=0,elem=this[0],parent=this[0],op,parPos,elemPos=$.css(elem,'position'),mo=$.browser.mozilla,ie=$.browser.msie,oa=$.browser.opera,sf=$.browser.safari,sf3=$.browser.safari&&parseInt($.browser.version)>520,absparent=false,relparent=false,options=$.extend({margin:true,border:false,padding:false,scroll:true,lite:false,relativeTo:document.body},options||{});if(options.lite)return this.offsetLite(options,returnObject);if(options.relativeTo.jquery)options.relativeTo=options.relativeTo[0];if(elem.tagName=='BODY')
{x=elem.offsetLeft;y=elem.offsetTop;if(mo)
{x+=num(elem,'marginLeft')+(num(elem,'borderLeftWidth')*2);y+=num(elem,'marginTop')+(num(elem,'borderTopWidth')*2);}else
if(oa)
{x+=num(elem,'marginLeft');y+=num(elem,'marginTop');}else
if((ie&&jQuery.boxModel))
{x+=num(elem,'borderLeftWidth');y+=num(elem,'borderTopWidth');}else
if(sf3)
{x+=num(elem,'marginLeft')+num(elem,'borderLeftWidth');y+=num(elem,'marginTop')+num(elem,'borderTopWidth');}}else
{do
{parPos=$.css(parent,'position');x+=parent.offsetLeft;y+=parent.offsetTop;if((mo&&!parent.tagName.match(/^t[d|h]$/i))||ie||sf3)
{x+=num(parent,'borderLeftWidth');y+=num(parent,'borderTopWidth');if(mo&&parPos=='absolute')absparent=true;if(ie&&parPos=='relative')relparent=true;}
op=parent.offsetParent||document.body;if(options.scroll||mo)
{do
{if(options.scroll)
{sl+=parent.scrollLeft;st+=parent.scrollTop;}
if(oa&&($.css(parent,'display')||'').match(/table-row|inline/))
{sl=sl-((parent.scrollLeft==parent.offsetLeft)?parent.scrollLeft:0);st=st-((parent.scrollTop==parent.offsetTop)?parent.scrollTop:0);}
if(mo&&parent!=elem&&$.css(parent,'overflow')!='visible')
{x+=num(parent,'borderLeftWidth');y+=num(parent,'borderTopWidth');}
parent=parent.parentNode;}while(parent!=op);}
parent=op;if(parent==options.relativeTo&&!(parent.tagName=='BODY'||parent.tagName=='HTML'))
{if(mo&&parent!=elem&&$.css(parent,'overflow')!='visible')
{x+=num(parent,'borderLeftWidth');y+=num(parent,'borderTopWidth');}
if(((sf&&!sf3)||oa)&&parPos!='static')
{x-=num(op,'borderLeftWidth');y-=num(op,'borderTopWidth');}
break;}
if(parent.tagName=='BODY'||parent.tagName=='HTML')
{if(((sf&&!sf3)||(ie&&$.boxModel))&&elemPos!='absolute'&&elemPos!='fixed')
{x+=num(parent,'marginLeft');y+=num(parent,'marginTop');}
if(sf3||(mo&&!absparent&&elemPos!='fixed')||(ie&&elemPos=='static'&&!relparent))
{x+=num(parent,'borderLeftWidth');y+=num(parent,'borderTopWidth');}
break;}}while(parent);}
var returnValue=handleOffsetReturn(elem,options,x,y,sl,st);if(returnObject){$.extend(returnObject,returnValue);return this;}
else{return returnValue;}},offsetLite:function(options,returnObject)
{if(!this[0])error();var x=0,y=0,sl=0,st=0,parent=this[0],offsetParent,options=$.extend({margin:true,border:false,padding:false,scroll:true,relativeTo:document.body},options||{});if(options.relativeTo.jquery)options.relativeTo=options.relativeTo[0];do
{x+=parent.offsetLeft;y+=parent.offsetTop;offsetParent=parent.offsetParent||document.body;if(options.scroll)
{do
{sl+=parent.scrollLeft;st+=parent.scrollTop;parent=parent.parentNode;}while(parent!=offsetParent);}
parent=offsetParent;}while(parent&&parent.tagName!='BODY'&&parent.tagName!='HTML'&&parent!=options.relativeTo);var returnValue=handleOffsetReturn(this[0],options,x,y,sl,st);if(returnObject){$.extend(returnObject,returnValue);return this;}
else{return returnValue;}},offsetParent:function()
{if(!this[0])error();var offsetParent=this[0].offsetParent;while(offsetParent&&(offsetParent.tagName!='BODY'&&$.css(offsetParent,'position')=='static'))
offsetParent=offsetParent.offsetParent;return $(offsetParent);}});var error=function()
{throw"Dimensions: jQuery collection is empty";};var num=function(el,prop)
{return parseInt($.css(el.jquery?el[0]:el,prop))||0;};var handleOffsetReturn=function(elem,options,x,y,sl,st)
{if(!options.margin)
{x-=num(elem,'marginLeft');y-=num(elem,'marginTop');}
if(options.border&&(($.browser.safari&&parseInt($.browser.version)<520)||$.browser.opera))
{x+=num(elem,'borderLeftWidth');y+=num(elem,'borderTopWidth');}else if(!options.border&&!(($.browser.safari&&parseInt($.browser.version)<520)||$.browser.opera))
{x-=num(elem,'borderLeftWidth');y-=num(elem,'borderTopWidth');}
if(options.padding)
{x+=num(elem,'paddingLeft');y+=num(elem,'paddingTop');}
if(options.scroll&&(!$.browser.opera||elem.offsetLeft!=elem.scrollLeft&&elem.offsetTop!=elem.scrollLeft))
{sl-=elem.scrollLeft;st-=elem.scrollTop;}
return options.scroll?{top:y-st,left:x-sl,scrollTop:st,scrollLeft:sl}:{top:y,left:x};};var scrollbarWidth=0;var getScrollbarWidth=function()
{if(!scrollbarWidth)
{var testEl=$('<div>').css({width:100,height:100,overflow:'auto',position:'absolute',top:-1000,left:-1000}).appendTo('body');scrollbarWidth=100-testEl.append('<div>').find('div').css({width:'100%',height:200}).width();testEl.remove();}
return scrollbarWidth;};})(jQuery);(function($)
{$.fn.jqm=function(o)
{var _o={zIndex:2999999,overlay:50,overlayClass:'jqmOverlay',closeClass:'jqmClose',trigger:'.jqModal',ajax:false,target:false,modal:false,toTop:false,onShow:false,onHide:false,onLoad:false,ajaxClearBefore:false};return this.each(function()
{if(this._jqm)return;s++;this._jqm=s;H[s]={c:$.extend(_o,o),a:false,w:$(this).addClass('jqmID'+s),s:s};if(_o.trigger)$(this).jqmAddTrigger(_o.trigger);});};$.fn.jqmAddClose=function(e){hs(this,e,'jqmHide');return this;};$.fn.jqmAddTrigger=function(e){hs(this,e,'jqmShow');return this;};$.fn.jqmShow=function(t){return this.each(function(){if(!H[this._jqm].a)$.jqm.open(this._jqm,t)});};$.fn.jqmHide=function(t){return this.each(function(){if(H[this._jqm].a)$.jqm.close(this._jqm,t)});};$.jqm={hash:{},open:function(s,t)
{var h=H[s],c=h.c,cc='.'+c.closeClass,z=(/^\d+$/.test(h.w.css('z-index')))?h.w.css('z-index'):c.zIndex,o=$('<div></div>').css({height:'100%',width:'100%',position:'fixed',left:0,top:0,'z-index':z-1,opacity:c.overlay/100});if('opacity'in document.documentElement.style){o[0].style.opacity=c.overlay/100;}h.t=t;h.a=true;h.w.css('z-index',z);if(c.modal){if(!A[0])F('bind');A.push(s);o.css('cursor','wait');}
else if(c.overlay>0)h.w.jqmAddClose(o);else o=false;h.o=(o)?o.addClass(c.overlayClass).prependTo('body'):false;if(ie6){$('html,body').css({height:'100%',width:'100%'});if(o){o=o.css({position:'absolute'})[0];for(var y in{Top:1,Left:1})o.style.setExpression(y.toLowerCase(),"(_=(document.documentElement.scroll"+y+" || document.body.scroll"+y+"))+'px'");}}
if(c.ajax)
{var r=c.target||h.w,u=c.ajax,r=(typeof r=='string')?$(r,h.w):$(r),u=(u.substr(0,1)=='@')?$(t).attr(u.substring(1)):u;if(c.ajaxClearBefore){$(h.w).empty();}r.load(u,function(){if(c.onLoad)c.onLoad.call(this,h);if(cc)h.w.jqmAddClose($(cc,h.w));e(h);});}
else if(cc)h.w.jqmAddClose($(cc,h.w));if(c.toTop&&h.o)h.w.before('<span id="jqmP'+h.w[0]._jqm+'"></span>').insertAfter(h.o);(c.onShow)?c.onShow(h):h.w.show();e(h);return false;},close:function(s)
{var h=H[s];h.a=false;if(A[0]){A.pop();if(!A[0])F('unbind');}
if(h.c.toTop&&h.o)$('#jqmP'+h.w[0]._jqm).after(h.w).remove();if(h.c.onHide)h.c.onHide(h);else{h.w.hide();if(h.o)h.o.remove();}return false;}};var s=0,H=$.jqm.hash,A=[],ie6=$.browser.msie&&($.browser.version=="6.0"),i=$('<iframe src="javascript:false;document.write(\'\');" class="jqm"></iframe>').css({opacity:0}),e=function(h){if(ie6)if(h.o)h.o.html('<p style="width:100%;height:100%"/>').prepend(i);else if(!$('iframe.jqm',h.w)[0])h.w.prepend(i);f(h);},f=function(h){try{$(':input:visible',h.w)[0].focus();}catch(e){}},F=function(t){$()[t]("keypress",m)[t]("keydown",m)[t]("mousedown",m);},m=function(e){var h=H[A[A.length-1]],r=(!$(e.target).parents('.jqmID'+h.s)[0]);if(r)f(h);return!r;},hs=function(w,e,y)
{var s=[];w.each(function(){s.push(this._jqm)});$(e).each(function(){if(this[y])$.extend(this[y],s);else{this[y]=s;$(this).click(function(){for(var i in{jqmShow:1,jqmHide:1})for(var s in this[i])if(H[this[i][s]])H[this[i][s]].w[i](this);return false;});}});};})(jQuery);(function($)
{$.fn.hoverIntent=function(f,g)
{var cfg={sensitivity:7,interval:100,timeout:0};cfg=$.extend(cfg,g?{over:f,out:g}:f);var cX,cY,pX,pY;var track=function(ev)
{cX=ev.pageX;cY=ev.pageY;};var compare=function(ev,ob)
{ob.hoverIntent_t=clearTimeout(ob.hoverIntent_t);if((Math.abs(pX-cX)+Math.abs(pY-cY))<cfg.sensitivity)
{$(ob).unbind("mousemove",track);ob.hoverIntent_s=1;return cfg.over.apply(ob,[ev]);}else
{pX=cX;pY=cY;ob.hoverIntent_t=setTimeout(function(){compare(ev,ob);},cfg.interval);}};var delay=function(ev,ob)
{ob.hoverIntent_t=clearTimeout(ob.hoverIntent_t);ob.hoverIntent_s=0;return cfg.out.apply(ob,[ev]);};var handleHover=function(e)
{var p=(e.type=="mouseover"?e.fromElement:e.toElement)||e.relatedTarget;while(p&&p!=this){try{p=p.parentNode;}catch(e){p=this;}}
if(p==this){return false;}
var ev=jQuery.extend({},e);var ob=this;if(ob.hoverIntent_t){ob.hoverIntent_t=clearTimeout(ob.hoverIntent_t);}
if(e.type=="mouseover")
{pX=ev.pageX;pY=ev.pageY;$(ob).bind("mousemove",track);if(ob.hoverIntent_s!=1){ob.hoverIntent_t=setTimeout(function(){compare(ev,ob);},cfg.interval);}}else
{$(ob).unbind("mousemove",track);if(ob.hoverIntent_s==1){ob.hoverIntent_t=setTimeout(function(){delay(ev,ob);},cfg.timeout);}}};return this.mouseover(handleHover).mouseout(handleHover);};})(jQuery);(function($){var $cluetip,$cluetipInner,$cluetipOuter,$cluetipTitle,$dropShadow,imgCount;var msie6=$.browser.msie&&($.browser.version&&$.browser.version<7||(/5\.5|6.0/).test(navigator.userAgent));$.fn.cluetip=function(options){var defaults={width:275,height:'auto',local:false,hideLocal:true,attribute:'rel',titleAttribute:'title',splitTitle:'',showTitle:false,restoreTitle:true,cluetipClass:'default',hoverClass:'',waitImage:false,cursor:'help',arrows:false,dropShadow:true,dropShadowSteps:6,sticky:false,mouseOutClose:false,activation:'hover',closePosition:'top',closeText:'Close',truncate:0,cluezIndex:4000,positionBy:'auto',fx:{open:'show',openSpeed:'',close:'hide',closeSpeed:''},hoverIntent:{sensitivity:3,interval:500,timeout:0},onActivate:function(e){return true;},onShow:function(ct,c){},tag:'',ajaxCache:false,ajaxProcess:function(data)
{data=$(data).not('style, meta, link, script, title');return data;},ajaxSettings:{dataType:'html'}};if(options&&options.ajaxSettings)
{$.extend(defaults.ajaxSettings,options.ajaxSettings);delete options.ajaxSettings;}
if(options&&options.fx)
{$.extend(defaults.fx,options.fx);delete options.fx;}
if(options&&options.hoverIntent)
{$.extend(defaults.hoverIntent,options.hoverIntent);delete options.hoverIntent;}
$.extend(defaults,options);return this.each(function(){var cluetipContents=false;var cluezIndex=parseInt(defaults.cluezIndex,10)-1;var isActive=false;if(!$cluetip)
{$cluetipInner=$('<div id="cluetip-inner"></div>');$cluetipTitle=$('<div id="cluetip-title"></div>');$cluetipOuter=$('<div id="cluetip-outer"></div>').append($cluetipInner).prepend($cluetipTitle);$cluetip=$('<div></div>').attr({'id':'cluetip'}).css({zIndex:defaults.cluezIndex}).append($cluetipOuter)[insertionType](insertionElement).hide();$('<div id="cluetip-waitimage"></div>').css({position:'absolute',zIndex:cluezIndex-1}).insertBefore('#cluetip').hide();$cluetip.css({position:'absolute',zIndex:cluezIndex});$cluetipOuter.css({position:'relative',zIndex:cluezIndex+1});}
var dropShadowSteps=(defaults.dropShadow)?+defaults.dropShadowSteps:0;if(!$dropShadow){$dropShadow=$([]);for(var i=0;i<dropShadowSteps;i++)
{$dropShadow=$dropShadow.add($('<div></div>').css({zIndex:cluezIndex-i-1,opacity:.1,top:1+i,left:1+i}));};$dropShadow.css({position:'absolute',backgroundColor:'#000'}).prependTo($cluetip);}
var $this=$(this);var tipAttribute=$this.attr(defaults.attribute),ctClass=defaults.cluetipClass;if(!tipAttribute&&!defaults.splitTitle)return true;if(defaults.local&&defaults.hideLocal){$(tipAttribute).hide();}
var tipHeight,wHeight;var defHeight=isNaN(parseInt(defaults.height,10))?'auto':(/\D/g).test(defaults.height)?defaults.height:defaults.height+'px';var sTop,linkTop,posY,tipY,mouseY;var tipWidth=parseInt(defaults.width,10)+parseInt($cluetip.css('paddingLeft'))+parseInt($cluetip.css('paddingRight'))+dropShadowSteps;if(isNaN(tipWidth))tipWidth=275;var linkWidth=this.offsetWidth;var linkLeft,posX,tipX,mouseX,winWidth;var tipParts;var tipTitle=(defaults.attribute!='title')?$this.attr(defaults.titleAttribute):'';if(defaults.splitTitle){if(tipTitle!=null){tipParts=tipTitle.split(defaults.splitTitle);tipTitle=tipParts.shift();}}
var localContent;var showLeftArrow=false;var activate=function(event){if(!defaults.onActivate($this)){return false;}
isActive=true;$cluetip.removeClass().css({width:defaults.width});if(tipAttribute==$this.attr('href'))
{$this.css('cursor',defaults.cursor);}
$this.attr('title','');if(defaults.hoverClass)
{$this.addClass(defaults.hoverClass);}
linkTop=posY=$this.offset().top;linkLeft=$this.offset().left;mouseX=event.pageX;mouseY=event.pageY;if($this[0].tagName.toLowerCase()!='area')
{sTop=$(document).scrollTop();winWidth=$(window).width();}
posX=(linkWidth>linkLeft&&linkLeft>tipWidth)||linkLeft+linkWidth+tipWidth>winWidth?linkLeft-tipWidth-0:linkWidth+linkLeft-230;if(linkWidth>0)
{posX-=100;}
showLeftArrow=false;if(defaults.tag=='stockRoll')
{if(linkLeft<tipWidth+77){showLeftArrow=true;posX=linkLeft+linkWidth+25;}else posX-=(85+(linkWidth==0?63:0));}
else if(defaults.tag=='helpModal')posX=linkWidth+25;if($this[0].tagName.toLowerCase()=='area'||defaults.positionBy=='mouse'||linkWidth+tipWidth>winWidth){if(mouseX+20+tipWidth>winWidth)
{posX=(mouseX-tipWidth-20)>=0?mouseX-tipWidth-20:mouseX-(tipWidth/2);}else
{posX=mouseX+20;}
var pY=posX<0?event.pageY+20:event.pageY;}
$cluetip.addClass('clue-left-'+ctClass).removeClass('clue-right-'+ctClass);$cluetip.css({left:posX});wHeight=$(window).height();if(tipParts){for(var i=0;i<tipParts.length;i++){if(i==0)
{$cluetipInner.html(tipParts[i]);}else
{$cluetipInner.append('<div class="split-body">'+tipParts[i]+'</div>');}};cluetipShow(pY);}
else if(!defaults.local&&tipAttribute.indexOf('#')!=0){if(cluetipContents&&defaults.ajaxCache)
{$cluetipInner.html(cluetipContents);cluetipShow(pY);}
else{var ajaxSettings=defaults.ajaxSettings;ajaxSettings.url=tipAttribute;ajaxSettings.beforeSend=function(){$cluetipOuter.children().empty();if(defaults.waitImage)
{$('#cluetip-waitimage').css({top:mouseY-10,left:parseInt(posX+(tipWidth/2),10)}).show();}};ajaxSettings.error=function(){if(isActive)
{$cluetipInner.html('<i>sorry, the contents could not be loaded</i>');}};ajaxSettings.success=function(data){cluetipContents=defaults.ajaxProcess(data);if(isActive)
{$cluetipInner[0].innerHTML=data;}};ajaxSettings.complete=function(){imgCount=$('#cluetip-inner img').length;if(imgCount){$('#cluetip-inner img').load(function(){imgCount--;if(imgCount<1)
{$('#cluetip-waitimage').hide();if(isActive)cluetipShow(pY);}});}else
{$('#cluetip-waitimage').hide();cluetipShow(pY);}};$.ajax(ajaxSettings);}}else if(defaults.local&&tipAttribute.indexOf('#')==0)
{var localContent=$(tipAttribute).html();$cluetipInner.html(localContent);cluetipShow(pY);}};var cluetipShow=function(bpY){$cluetip.addClass('cluetip-'+ctClass);$this.doHideCluetip=true;if(defaults.truncate)
{var $truncloaded=$cluetipInner.text().slice(0,defaults.truncate)+'...';$cluetipInner.html($truncloaded);}
function doNothing(){};tipTitle?(defaults.showTitle)?$cluetipTitle.show().html(tipTitle):$cluetipTitle.hide():(defaults.showTitle)?$cluetipTitle.show().html('&nbsp;'):$cluetipTitle.hide();if(defaults.sticky){var $closeLink=$('<div id="cluetip-close"><a href="#">'+defaults.closeText+'</a></div>');(defaults.closePosition=='bottom')?$closeLink.appendTo($cluetipInner):(defaults.closePosition=='title')?$closeLink.prependTo($cluetipTitle):$closeLink.prependTo($cluetipInner);$closeLink.click(function()
{cluetipClose();return false;});if(defaults.mouseOutClose)
{$cluetip.hover(function(){doNothing();keepCluetipVisible();},function(){$closeLink.trigger('click');});}else
{$cluetip.unbind('mouseout');}}
$cluetipOuter.css({overflow:defHeight=='auto'?'visible':'auto',height:defHeight});tipHeight=defHeight=='auto'?$cluetip.outerHeight():parseInt(defHeight,10);tipY=posY;if(defaults.tag=='stockRoll')
{tipY-=205;}
else{if((posX<mouseX&&Math.max(posX,0)+tipWidth>mouseX)||defaults.positionBy=='auto')
{tipY=posY+tipHeight>sTop+wHeight&&mouseY-sTop>tipHeight+0?mouseY-tipHeight-16:mouseY-210;}else if(posY+tipHeight>sTop+wHeight)
{tipY=(tipHeight>=wHeight)?sTop:sTop+wHeight-tipHeight-10;}else if($this.css('display')=='block'||$this[0].tagName.toLowerCase()=='area'||defaults.positionBy=="mouse")
{tipY=bpY-10;}else
{tipY=posY-defaults.dropShadowSteps;}}
$cluetip.css({top:tipY+'px'});if(defaults.arrows){var bgPos='0 0';var bgY=(posY-tipY-defaults.dropShadowSteps);if($cluetip.is('.clue-left-'+ctClass))
{bgPos=posX>=0?'100% '+bgY+'px':'100% 0';}else if($cluetip.is('.clue-right-'+ctClass))
{bgPos=(posX>=0&&bgY>0)?'0 '+bgY+'px':'0 0';}}else
{bgPos='0 100%';}
$cluetip.css({backgroundPosition:bgPos});$dropShadow.hide();$cluetip.hide()[defaults.fx.open](defaults.fx.open!='show'&&defaults.fx.openSpeed);if(defaults.dropShadow)$dropShadow.css({height:tipHeight,width:defaults.width}).show();defaults.onShow.call($this,$cluetip,$cluetipInner);if((defaults.tag=='stockRoll')&&(showLeftArrow))
{$cluetipInner[0].innerHTML=$cluetipInner[0].innerHTML.replace(/class=\"?arrow\"?/,'class="arrow-left"');}};var inactivate=function(){isActive=false;$('#cluetip-waitimage').hide();if(!defaults.sticky)
{cluetipClose();}
else{if($this.stickyTimer)
{clearTimeout($this.stickyTimer);}
if($this.doHideCluetip)
{$this.closeStickyClueTip=true;}
$this.stickyTimer=setTimeout(closeClueTipOnMouseOut,300);}
if(defaults.hoverClass)
{$this.removeClass(defaults.hoverClass);}};var stickyTimer=null;var closeStickyClueTip=null;var doHideCluetip=true;var keepCluetipVisible=function(){$this.closeStickyClueTip=null;$this.doHideCluetip=null;if($this.stickyTimer)
{clearTimeout($this.stickyTimer);$this.stickyTimer=null;}}
var closeClueTipOnMouseOut=function(){if($this.stickyTimer)
{clearTimeout($this.stickyTimer);$this.stickyTimer=null;}
if($this.closeStickyClueTip)
{cluetipClose();}}
var cluetipClose=function(){$cluetipOuter.parent()[defaults.fx.close](defaults.fx.closeSpeed).removeClass().end().children().empty();if(tipTitle&&defaults.restoreTitle)
{$this.attr('title',tipTitle);}};if(defaults.activation=='click'||defaults.activation=='toggle'){$this.click(function(event){if($cluetip.is(':hidden'))
{activate(event);}else
{inactivate(event);}
this.blur();return false;});}else{$this.click(function(){if(tipAttribute==$this.attr('href'))
{return false;}});if($.fn.hoverIntent&&defaults.hoverIntent)
{$this.hoverIntent({sensitivity:defaults.hoverIntent.sensitivity,interval:defaults.hoverIntent.interval,over:function(event){activate(event);},timeout:defaults.hoverIntent.timeout,out:function(event){inactivate(event);}});}else{$this.hover(function(event)
{activate(event);},function(event)
{inactivate(event);});}}});};var insertionType='appendTo',insertionElement='body';$.cluetip={};$.cluetip.setup=function(options){if(options&&options.insertionType&&(options.insertionType).match(/appendTo|prependTo|insertBefore|insertAfter/))
{insertionType=options.insertionType;}
if(options&&options.insertionElement)
{insertionElement=options.insertionElement;}};})(jQuery);jQuery.fn.initTogglePane=function(props)
{props=jQuery.extend({headerClassClosed:null,startOpened:Infinity,speed:'fast'},props?props:{});if(false===props.startOpened)props.startOpened=NaN;else if(true===props.startOpened)props.startOpened=Infinity;var wrappers=jQuery('> div',this);var contents=jQuery('div:last',wrappers);var heads=jQuery('div:first',wrappers);if(!heads.lt)
{heads.lt=function(index){return heads.slice(0,index);};heads.gt=function(index){return heads.slice(index+1);};}
heads.click(function()
{var head=jQuery(this);head.next().slideToggle(props.speed,props.headerClassClosed?function(){head.toggleClass(props.headerClassClosed)}:undefined);});var so=props.startOpened;if(isNaN(so))
{heads.click();}
else if(!isFinite(so))
{1;}
else if((so>=0)&&(so<heads.length))
{heads.lt(so).click();heads.gt(so).click();}else
{1;}
return this;};jQuery.fn.extend({selectbox:function(options)
{return this.each(function()
{new jQuery.SelectBox(this,options);});}});jQuery.Autocompleter=function(input,options)
{var KEY={UP:38,DOWN:40,DEL:46,TAB:9,RETURN:13,ESC:27,COMMA:188};var $input=$(input).attr("autocomplete","off").addClass(options.inputClass);var timeout;var previousValue="";var cache=jQuery.Autocompleter.Cache(options);var hasFocus=0;var lastKeyPressCode;var select=jQuery.Autocompleter.Select(options,input,selectCurrent);$input.keydown(function(event)
{lastKeyPressCode=event.keyCode;switch(event.keyCode)
{case KEY.UP:event.preventDefault();if(select.visible())
{select.prev();}else
{onChange(0,true);}
break;case KEY.DOWN:event.preventDefault();if(select.visible())
{select.next();}else
{onChange(0,true);}
break;case options.multiple&&jQuery.trim(options.multipleSeparator)==","&&KEY.COMMA:case KEY.TAB:case KEY.RETURN:if(selectCurrent())
{if(!options.multiple)
$input.blur();event.preventDefault();}
break;case KEY.ESC:select.hide();break;default:clearTimeout(timeout);timeout=setTimeout(onChange,options.delay);break;}}).keypress(function()
{}).focus(function()
{hasFocus++;}).blur(function()
{hasFocus=0;hideResults();}).click(function()
{if(hasFocus++>1&&!select.visible())
{onChange(0,true);}}).bind("search",function()
{function findValueCallback(q,data)
{var result;if(data&&data.length)
{for(var i=0;i<data.length;i++)
{if(data[i].result.toLowerCase()==q.toLowerCase())
{result=data[i];break;}}}
$input.trigger("result",result&&[result.data,result.value]);}
jQuery.each(trimWords($input.val()),function(i,value)
{request(value,findValueCallback,findValueCallback);});});hideResultsNow();function selectCurrent()
{var selected=select.selected();if(!selected)
return false;var v=selected.result;previousValue=v;if(options.multiple)
{var words=trimWords($input.val());if(words.length>1)
{v=words.slice(0,words.length-1).join(options.multipleSeparator)+options.multipleSeparator+v;}
v+=options.multipleSeparator;}
$input.val(v);hideResultsNow();$input.trigger("result",[selected.data,selected.value]);return true;}
function onChange(crap,skipPrevCheck)
{if(lastKeyPressCode==KEY.DEL)
{select.hide();return;}
var currentValue=$input.val();if(!skipPrevCheck&&currentValue==previousValue)
return;previousValue=currentValue;currentValue=lastWord(currentValue);if(currentValue.length>=options.minChars)
{$input.addClass(options.loadingClass);if(!options.matchCase)
currentValue=currentValue.toLowerCase();request(currentValue,receiveData,stopLoading);}else
{stopLoading();select.hide();}};function trimWords(value)
{if(!value)
{return[""];}
var words=value.split(jQuery.trim(options.multipleSeparator));var result=[];jQuery.each(words,function(i,value)
{if(jQuery.trim(value))
result[i]=jQuery.trim(value);});return result;}
function lastWord(value)
{if(!options.multiple)
return value;var words=trimWords(value);return words[words.length-1];}
function autoFill(q,sValue)
{if(options.autoFill&&(lastWord($input.val()).toLowerCase()==q.toLowerCase())&&lastKeyPressCode!=8)
{$input.val($input.val()+sValue.substring(lastWord(previousValue).length));jQuery.Autocompleter.Selection(input,previousValue.length,previousValue.length+sValue.length);}};function hideResults()
{clearTimeout(timeout);timeout=setTimeout(hideResultsNow,200);};function hideResultsNow()
{select.hide();clearTimeout(timeout);stopLoading();if(options.mustMatch)
{if($input.val()!=previousValue)
{}}};function receiveData(q,data)
{if(data&&data.length&&hasFocus)
{stopLoading();select.display(data,q);autoFill(q,data[0].value);select.show();}else
{hideResultsNow();}};function request(term,success,failure)
{if(!options.matchCase)
term=term.toLowerCase();var data=cache.load(term);if(data&&data.length)
{success(term,data);}else if((typeof options.url=="string")&&(options.url.length>0))
{jQuery.ajax({url:options.url,data:jQuery.extend({q:lastWord(term),limit:options.max},options.extraParams),success:function(data)
{var parsed=options.parse&&options.parse(data)||parse(data);cache.add(term,parsed);success(term,parsed);}});}else
{failure(term);}}
function parse(data)
{var parsed=[];var rows=data.split("\n");for(var i=0;i<rows.length;i++)
{var row=jQuery.trim(rows[i]);if(row)
{row=row.split("|");parsed[parsed.length]={data:row,value:row[0],result:options.formatResult&&options.formatResult(row)||row[0]};}}
return parsed;}
function stopLoading()
{$input.removeClass(options.loadingClass);}}
jQuery.Autocompleter.defaults={inputClass:"ac_input",resultsClass:"ac_results",loadingClass:"ac_loading",minChars:1,delay:400,matchCase:false,matchSubset:true,matchContains:false,cacheLength:10,mustMatch:false,extraParams:{},selectFirst:true,max:10,autoFill:false,width:0,multiple:false,multipleSeparator:", "};jQuery.Autocompleter.Cache=function(options)
{var data={};var length=0;function matchSubset(s,sub)
{if(!options.matchCase)
s=s.toLowerCase();var i=s.indexOf(sub);if(i==-1)return false;return i==0||options.matchContains;};function add(q,value)
{if(length>options.cacheLength)
{this.flush();}
if(!data[q])
{length++;}
data[q]=value;}
if(options.data)
{var stMatchSets={},nullData=0;if(!options.url)options.cacheLength=1;stMatchSets[""]=[];jQuery.each(options.data,function(i,rawValue)
{value=options.formatItem?options.formatItem(rawValue,i+1,options.data.length):rawValue;var firstChar=value.charAt(0).toLowerCase();if(!stMatchSets[firstChar])
stMatchSets[firstChar]=[];var row={value:value,data:rawValue,result:options.formatResult&&options.formatResult(rawValue)||value}
stMatchSets[firstChar].push(row);if(nullData++<options.max)
{stMatchSets[""].push(row);}});jQuery.each(stMatchSets,function(i,value)
{options.cacheLength++;add(i,value);});}
return{flush:function()
{data={};length=0;},add:add,load:function(q)
{if(!options.cacheLength||!length)
return null;if(data[q])
return data[q];if(options.matchSubset)
{for(var i=q.length-1;i>=options.minChars;i--)
{var c=data[q.substr(0,i)];if(c)
{var csub=[];jQuery.each(c,function(i,x)
{if(matchSubset(x.value,q))
{csub[csub.length]=x;}});return csub;}}}
return null;}};};jQuery.Autocompleter.Select=function(options,input,select)
{var CLASSES={ACTIVE:"ac_over"};var element=jQuery("<div>").hide().addClass(options.resultsClass).css("position",$('#nav').css('position')==="fixed"?"fixed":"absolute").appendTo("body");var list=jQuery("<ul>").appendTo(element).mouseover(function(event)
{active=jQuery("li",list).removeClass(CLASSES.ACTIVE).index(target(event));jQuery(target(event)).addClass(CLASSES.ACTIVE);}).mouseout(function(event)
{jQuery(target(event)).removeClass(CLASSES.ACTIVE);}).click(function(event)
{jQuery(target(event)).addClass(CLASSES.ACTIVE);select();input.focus();return false;});var listItems,active=-1,data,term="";if(options.width>0)
element.css("width",options.width);function target(event)
{var element=event.target;while(element.tagName!="LI")
element=element.parentNode;return element;}
function moveSelect(step)
{active+=step;wrapSelection();listItems.removeClass(CLASSES.ACTIVE).eq(active).addClass(CLASSES.ACTIVE);};function wrapSelection()
{if(active<0)
{active=listItems.size()-1;}else if(active>=listItems.size())
{active=0;}}
function limitNumberOfItems(available)
{return(options.max>0)&&(options.max<available)?options.max:available;}
function dataToDom()
{var num=limitNumberOfItems(data.length);for(var i=0;i<num;i++)
{if(!data[i])
continue;function highlight(value)
{return value.replace(new RegExp("("+term+")","gi"),"<strong>$1</strong>");}
jQuery("<li>").html(options.formatItem?highlight(options.formatItem(data[i].data,i+1,num)):highlight(data[i].value)).appendTo(list);}
listItems=list.find("li");if(options.selectFirst)
{listItems.eq(0).addClass(CLASSES.ACTIVE);active=0;}}
return{display:function(d,q)
{data=d;term=q;list.empty();dataToDom();list.bgiframe();},next:function()
{moveSelect(1);},prev:function()
{moveSelect(-1);},hide:function()
{element.hide();active=-1;},visible:function()
{return element.is(":visible");},current:function()
{return this.visible()&&(listItems.filter("."+CLASSES.ACTIVE)[0]||options.selectFirst&&listItems[0]);},show:function()
{var offset=jQuery(input).offset({scroll:false,border:false});element.css({width:options.width>0?options.width:jQuery(input).width(),top:offset.top+input.offsetHeight,left:offset.left}).show();},selected:function()
{return data&&data[active];}};}
jQuery.Autocompleter.Selection=function(field,start,end)
{if(field.createTextRange)
{var selRange=field.createTextRange();selRange.collapse(true);selRange.moveStart("character",start);selRange.moveEnd("character",end);selRange.select();}else if(field.setSelectionRange)
{field.setSelectionRange(start,end);}else
{if(field.selectionStart)
{field.selectionStart=start;field.selectionEnd=end;}}
field.focus();};jQuery.cookie=function(name,value,options)
{if(typeof value!='undefined')
{options=options||{};if(value===null)
{value='';options.expires=-1;}
var expires='';if(options.expires&&(typeof options.expires=='number'||options.expires.toUTCString))
{var date;if(typeof options.expires=='number')
{date=new Date();date.setTime(date.getTime()+(options.expires*24*60*60*1000));}else
{date=options.expires;}
expires='; expires='+date.toUTCString();}
var path=options.path?'; path='+(options.path):'';var domain=options.domain?'; domain='+(options.domain):'';var secure=options.secure?'; secure':'';document.cookie=[name,'=',encodeURIComponent(value),expires,path,domain,secure].join('');}else
{var cookieValue=null;if(document.cookie&&document.cookie!='')
{var cookies=document.cookie.split(';');for(var i=0;i<cookies.length;i++)
{var cookie=jQuery.trim(cookies[i]);if(cookie.substring(0,name.length+1)==(name+'='))
{cookieValue=decodeURIComponent(cookie.substring(name.length+1));break;}}}
return cookieValue;}};(function(jQuery)
{this.version='(beta)(0.0.3)';this.all={};this.special_keys={27:'esc',9:'tab',32:'space',13:'return',8:'backspace',145:'scroll',20:'capslock',144:'numlock',19:'pause',45:'insert',36:'home',46:'del',35:'end',33:'pageup',34:'pagedown',37:'left',38:'up',39:'right',40:'down',112:'f1',113:'f2',114:'f3',115:'f4',116:'f5',117:'f6',118:'f7',119:'f8',120:'f9',121:'f10',122:'f11',123:'f12'};this.shift_nums={"`":"~","1":"!","2":"@","3":"#","4":"$","5":"%","6":"^","7":"&","8":"*","9":"(","0":")","-":"_","=":"+",";":":","'":"\"",",":"<",".":">","/":"?","\\":"|"};this.add=function(combi,options,callback)
{if(jQuery.isFunction(options))
{callback=options;options={};}
var opt={},defaults={type:'keydown',propagate:false,disableInInput:false,target:jQuery('html')[0],checkParent:true},that=this;opt=jQuery.extend(opt,defaults,options||{});combi=combi.toLowerCase();var inspector=function(event)
{event=jQuery.event.fix(event);var element=event.target;element=(element.nodeType==3)?element.parentNode:element;if(opt['disableInInput'])
{var target=jQuery(element);if(target.is("input")||target.is("textarea"))
{return;}}
var code=event.which,type=event.type,character=String.fromCharCode(code).toLowerCase(),special=that.special_keys[code],shift=event.shiftKey,ctrl=event.ctrlKey,alt=event.altKey,propagate=true,mapPoint=null;if(jQuery.browser.opera||jQuery.browser.safari||opt.checkParent)
{while(!that.all[element]&&element.parentNode)
{element=element.parentNode;}}
var cbMap=that.all[element].events[type].callbackMap;if(!shift&&!ctrl&&!alt)
{mapPoint=cbMap[special]||cbMap[character]}
else
{var modif='';if(alt)modif+='alt+';if(ctrl)modif+='ctrl+';if(shift)modif+='shift+';mapPoint=cbMap[modif+special]||cbMap[modif+character]||cbMap[modif+that.shift_nums[character]]}
if(mapPoint)
{mapPoint.cb(event);if(!mapPoint.propagate)
{event.stopPropagation();event.preventDefault();return false;}}};if(!this.all[opt.target])
{this.all[opt.target]={events:{}};}
if(!this.all[opt.target].events[opt.type])
{this.all[opt.target].events[opt.type]={callbackMap:{}}
jQuery.event.add(opt.target,opt.type,inspector);}
this.all[opt.target].events[opt.type].callbackMap[combi]={cb:callback,propagate:opt.propagate};return jQuery;};this.remove=function(exp,opt)
{opt=opt||{};target=opt.target||jQuery('html')[0];type=opt.type||'keydown';exp=exp.toLowerCase();delete this.all[target].events[type].callbackMap[exp]
return jQuery;};jQuery.hotkeys=this;return jQuery;})(jQuery);(function($)
{var m={'\b':'\\b','\t':'\\t','\n':'\\n','\f':'\\f','\r':'\\r','"':'\\"','\\':'\\\\'},s={'array':function(x)
{var a=['['],b,f,i,l=x.length,v;for(i=0;i<l;i+=1)
{v=x[i];f=s[typeof v];if(f)
{v=f(v);if(typeof v=='string')
{if(b)
{a[a.length]=',';}
a[a.length]=v;b=true;}}}
a[a.length]=']';return a.join('');},'boolean':function(x)
{return String(x);},'null':function(x)
{return"null";},'number':function(x)
{return isFinite(x)?String(x):'null';},'object':function(x)
{if(x)
{if(x instanceof Array)
{return s.array(x);}
var a=['{'],b,f,i,v;for(i in x)
{v=x[i];f=s[typeof v];if(f)
{v=f(v);if(typeof v=='string')
{if(b)
{a[a.length]=',';}
a.push(s.string(i),':',v);b=true;}}}
a[a.length]='}';return a.join('');}
return'null';},'string':function(x)
{if(/["\\\x00-\x1f]/.test(x))
{x=x.replace(/([\x00-\x1f\\"])/g,function(a,b)
{var c=m[b];if(c)
{return c;}
c=b.charCodeAt();return'\\u00'+
Math.floor(c/16).toString(16)+
(c%16).toString(16);});}
return'"'+x+'"';}};$.toJSON=function(v)
{var f=isNaN(v)?s[typeof v]:s['number'];if(f)return f(v);};$.parseJSON=function(v,safe)
{if(safe===undefined)safe=$.parseJSON.safe;if(safe&&!/^("(\\.|[^"\\\n\r])*?"|[,:{}\[\]0-9.\-+Eaeflnr-u \n\r\t])+?$/.test(v))
return undefined;return eval('('+v+')');};$.parseJSON.safe=false;})(jQuery);(function($)
{$.cookieJar=function(name,options)
{if(!$.parseJSON)return false;if(!$.toJSON)return false;if(!$.cookie)return false;return new function()
{function log(s)
{if(typeof console!='undefined'&&typeof console.log!='undefined')
{console.log('cookiejar:'+self.cookieName+' '+s);}else
{alert(s);}};function save()
{if(self.options.debug)log('save '+$.toJSON(self.cookieObject));return $.cookie(self.cookieName,$.toJSON(self.cookieObject),self.options.cookie);};function load()
{var cookieJSON=$.cookie(self.cookieName);if(typeof cookieJSON=='string')
{if(self.options.debug)log('load '+cookieJSON);self.cookieObject=$.parseJSON(cookieJSON,true);}else
{if(self.options.debug)log('load new');self.cookieObject={};save();}}
this.set=function(name,value)
{if(self.options.debug)log('set '+name+' = '+value);self.cookieObject[name]=value;return save();};this.get=function(name)
{if(!self.options.cacheCookie)
{load();}
if(self.options.debug)log('get '+name+' = '+self.cookieObject[name]);return self.cookieObject[name];};this.remove=function(name)
{if(self.options.debug)log('remove '+name);if(typeof name!='undefined')
{delete(self.cookieObject[name]);}else
{self.setFromObject({});}
return save();};this.setFromObject=function(object)
{if(typeof object=='object')
{if(self.options.debug)log('setFromObject');self.cookieObject=object;return save();}};this.toObject=function()
{if(self.options.debug)log('toObject');return self.cookieObject;};this.toString=function()
{if(self.options.debug)log('toString = '+$.toJSON(self.cookieObject));return $.toJSON(self.cookieObject);};this.destroy=function()
{if(self.options.debug)log('destroy');self.cookieObject={};return $.cookie(self.cookieName,null,self.options.cookie);};this.construct=function(name,options)
{self.options=$.extend({cookie:{expires:365,path:'/'},cacheCookie:true,cookiePrefix:'jqCookieJar_',debug:false},options);self.cookieName=self.options.cookiePrefix+name;load();return self;};var self=this;self.construct(name,options);};};})(jQuery);$(document).ready(function(){$(".secNav li").hover(function(){$("ul",this).fadeIn("fast");},function(){$("ul",this).hide();});if(document.all){$(".secNav li").hoverClass("sfHover");}});$.fn.hoverClass=function(c){return this.each(function(){$(this).hover(function(){$(this).addClass(c);},function(){$(this).removeClass(c);});});};function WaitForEx2(el)
{Won.ICom.Code.Services.SiteAjaxService.IsValidSession(onValidSessionComplete,onValidSessionError)
WaitForExt2Success(el);}
function CheckValidSession(e){Won.ICom.Code.Services.SiteAjaxService.IsValidSession(onValidSessionComplete,onValidSessionError);return true;}
function onValidSessionComplete(result){if(result==0){window.location=gRootPath+"SessionLogoff.aspx?signout=true";}}
function onValidSessionError(result){}
function WaitForExt2Success(el)
{if($("#ex2").length>0)
{$("body").css("cursor","");$(el).attr("onclick","");triggerEvent($(el)[0],'click');}
else
{$("body").css("cursor","wait");setTimeout(function(){WaitForEx2Success(el);},100);}}
function triggerEvent(obj,evtName)
{if(document.createEvent)
{var evt=document.createEvent('MouseEvents');evt.initEvent(evtName,true,true)
obj.dispatchEvent(evt);}
else if(document.createEventObject)
{obj.fireEvent('on'+evtName);}}
$(document).ready(function(){$("#tabCommunityStock").tabs({fxFade:true});$("#tabStockQuote").tabs({fxFade:true});});$(document).ready(function(){$('#ex2').jqm({ajax:'@href',ajaxClearBefore:true,trigger:'a.ex2trigger',toTop:true,modal:true,onLoad:RemoveViewStateField});$('#ex3').jqm({ajax:'@href',trigger:'a.ex3trigger',toTop:true,modal:true,overlayClass:'mediaWindow'});$('#ex4').jqm({overlay:0,trigger:false,ajax:'@href',overlayClass:'vidTutorial'});$('#ex5').jqm({ajax:'@rel',ajaxClearBefore:true,trigger:'a.ex5trigger',toTop:true,modal:true,onLoad:RemoveViewStateField});});function RemoveViewStateField(hash)
{$("input:hidden[id='__VIEWSTATE']",this).remove();$('a.helpRegister').cluetip({mouseOutClose:true,activation:'click',sticky:true,width:'357px',cluetipClass:'helpPopReg',dropShadow:false,showTitle:false,closePosition:'top',cluezIndex:1000,closeText:'<img src="http://www1.ibdcd.com/images/btn/helpPopupsCloseButton.gif" width="15" height="15" alt="close button" />'});UpdateGlossDefRollovers();}
function expandcollapse(obj)
{$('#'+obj).toggle();}
var newsHighlightCarousel=null;var newsHighlightCarouselNextBound=false;function modNewsHighlight_initCallback(carousel)
{jQuery('#newsHighlight .jcarousel-control a').bind('click',function()
{carousel.startAuto(0);var pg=jQuery.jcarousel.intval(jQuery(this).text());carousel.scroll(pg);carousel.options.visiblePage=pg;carousel.options.fromPageDots=true;return false;});jQuery('#newsHighlight-prev').bind('click',function()
{carousel.prev();return false;});modNewsHighlight_BindNext(carousel);newsHighlightCarousel=carousel;};function modNewsHighlight_itemVisibleInCallbackAfterAnimation(carousel,item,idx,state)
{$("#newsHighlight .jcarousel-control > a").removeClass('selected');var srcAnchor="a#modNewsHighlight-"+idx;$(srcAnchor).addClass('selected');if(idx==1)
{jQuery('#newsHighlight-prev').addClass("jcarousel-prev-disabled-horizontal");jQuery('#newsHighlight-prev').removeClass("jcarousel-prev-horizontal");if(carousel.options.size==1)
{jQuery('#newsHighlight-next').addClass("jcarousel-next-disabled-horizontal");jQuery('#newsHighlight-next').removeClass("jcarousel-next-horizontal");modNewsHighlight_UnBindNext();}
else
{jQuery('#newsHighlight-next').addClass("jcarousel-next-horizontal");jQuery('#newsHighlight-next').removeClass("jcarousel-next-disabled-horizontal");modNewsHighlight_BindNext(carousel);}}
else if(idx==carousel.options.size)
{jQuery('#newsHighlight-prev').addClass("jcarousel-prev-horizontal");jQuery('#newsHighlight-prev').removeClass("jcarousel-prev-disabled-horizontal");}
else
{jQuery('#newsHighlight-prev').addClass("jcarousel-prev-horizontal");jQuery('#newsHighlight-prev').removeClass("jcarousel-prev-disabled-horizontal");jQuery('#newsHighlight-next').addClass("jcarousel-next-horizontal");jQuery('#newsHighlight-next').removeClass("jcarousel-next-disabled-horizontal");modNewsHighlight_BindNext(carousel);}
carousel.options.visiblePage=idx;};function modNewsHighlight_BindNext(carousel)
{if(!newsHighlightCarouselNextBound)
{jQuery('#newsHighlight-next').bind('click',function()
{if(carousel.options.visiblePage==carousel.options.size)
{jQuery('#newsHighlight .jcarousel-list').fadeTo('fast',0.0);carousel.options.animation=50;featuredCourseFade=true;}
carousel.next();return false;});newsHighlightCarouselNextBound=true;}};function modNewsHighlight_UnBindNext()
{jQuery('#newsHighlight-next').unbind('click');newsHighlightCarouselNextBound=false;};function modNewsHighlight_itemFirstInCallbackAfterAnimation(carousel,item,idx,state)
{if(state=='init')
{carousel.options.visiblePage=1;return;}};function modNewsHighlight_itemLastOutCallbackBefore(carousel,item,idx,state)
{if(carousel.options.auto>0&&idx==carousel.options.size)
{jQuery('#newsHighlight .jcarousel-list').fadeTo('fast',0.0);carousel.options.animation=50;featuredCourseFade=true;}}
function modNewsHighlight_itemLastOutCallback(carousel,item,idx,state)
{if(featuredCourseFade)
{jQuery('#newsHighlight .jcarousel-list').fadeTo('fast',1.0);carousel.options.animation=700;featuredCourseFade=false;}
if(carousel.options.fromPageDots==true)
{carousel.options.fromPageDots=false;}
else
{carousel.options.visiblePage=idx+1;}};function modFsList_initCallback(carousel)
{if(jQuery('#modFsList .jcarousel-control a').length<=1)
{if(carousel.buttonPrev)
{carousel.buttonPrev.css('visibility','hidden');carousel.buttonPrev=null;}
if(carousel.buttonNext)
{carousel.buttonNext.css('visibility','hidden');carousel.buttonNext=null;}}
jQuery('#modFsList .jcarousel-control a').bind('click',function()
{var pg=jQuery.jcarousel.intval(jQuery(this).text());carousel.scroll(pg);carousel.options.visiblePage=pg;carousel.options.fromPageDots=true;return false;});jQuery('#modFsList .jcarousel-next').bind('click',function()
{if(carousel.options.visiblePage==jQuery('#modFsList .jcarousel-control a').length)
{jQuery('#modFsList .jcarousel-list').fadeOut('fast');carousel.options.animation=50;featuredCourseFade=true;}});};function modFsList_itemVisibleInCallbackAfterAnimation(carousel,item,idx,state)
{$("#modFsList .jcarousel-control > a").removeClass('selected');var srcAnchor="a#modFsList-"+idx;$(srcAnchor).addClass('selected');};function modFsList_itemFirstInCallbackAfterAnimation(carousel,item,idx,state)
{if(state=='init')
{carousel.options.visiblePage=1;return;}}
function modFsList_itemLastOutCallback(carousel,item,idx,state)
{if(featuredCourseFade)
{jQuery('#modFsList .jcarousel-list').fadeIn('fast');carousel.options.animation=700;featuredCourseFade=false;}
if(carousel.options.fromPageDots==true)
{carousel.options.fromPageDots=false;}
else{carousel.options.visiblePage=idx+1;}};jQuery(document).ready(function()
{jQuery("#modFsList").jcarousel({scroll:1,animation:700,initCallback:modFsList_initCallback,itemVisibleInCallback:{onAfterAnimation:modFsList_itemVisibleInCallbackAfterAnimation},itemFirstInCallback:{onAfterAnimation:modFsList_itemFirstInCallbackAfterAnimation},itemLastOutCallback:modFsList_itemLastOutCallback});});function modIbdBooks_initCallback(carousel){jQuery('#modIbdBooks .jcarousel-control a').bind('click',function(){carousel.scroll(jQuery.jcarousel.intval(jQuery(this).text()));return false;});};function modIbdBooks_itemVisibleInCallbackAfterAnimation(carousel,item,idx,state){$("#modIbdBooks .jcarousel-control > a").removeClass('selected');var srcAnchor="a#modIbdBooks-"+idx;$(srcAnchor).addClass('selected');};jQuery(document).ready(function(){jQuery("#modIbdBooks").jcarousel({scroll:1,animation:700,initCallback:modIbdBooks_initCallback,itemVisibleInCallback:{onAfterAnimation:modIbdBooks_itemVisibleInCallbackAfterAnimation}});});function modNewsAnalysis_initCallback(carousel)
{if(jQuery('#modNewsAnalysis .jcarousel-control a').length<=1)
{if(carousel.buttonPrev)
{carousel.buttonPrev.css('visibility','hidden');carousel.buttonPrev=null;}
if(carousel.buttonNext)
{carousel.buttonNext.css('visibility','hidden');carousel.buttonNext=null;}}
jQuery('#modNewsAnalysis .jcarousel-control a').bind('click',function(){carousel.scroll(jQuery.jcarousel.intval(jQuery(this).text()));return false;});};function modNewsAnalysis_itemVisibleInCallbackAfterAnimation(carousel,item,idx,state){$("#modNewsAnalysis .jcarousel-control > a").removeClass('selected');var srcAnchor="a#modNewsAnalysis-"+idx;$(srcAnchor).addClass('selected');};function modVidTutor_initCallback(carousel){jQuery('#modVidTutor .jcarousel-control a').bind('click',function(){carousel.scroll(jQuery.jcarousel.intval(jQuery(this).text()));return false;});};jQuery(document).ready(function(){jQuery("#modVidTutor").jcarousel({scroll:3,animation:700,initCallback:modVidTutor_initCallback});});var featuredCourseFade=false;function modFtrCse_initCallback(carousel)
{jQuery('#modFtrCse .jcarousel-control a').bind('click',function()
{var firstItem=carousel.first;var pg=jQuery.jcarousel.intval(jQuery(this).text());if(pg==carousel.options.visiblePage){return false;}
if((pg*carousel.options.scroll)>carousel.options.size){firstItem=carousel.options.size-carousel.options.scroll+1;}else{var adjust=((pg-carousel.options.visiblePage)*carousel.options.scroll);firstItem=firstItem+adjust;if(firstItem<1){firstItem=1;}}
carousel.scroll(jQuery.jcarousel.intval(firstItem));carousel.options.visiblePage=pg;carousel.options.fromPageDots=true;return false;});jQuery('#modFtrCse .jcarousel-next').bind('click',function()
{if(carousel.options.visiblePage==carousel.options.lastPage)
{jQuery('#modFtrCse .jcarousel-list').fadeOut('fast');carousel.options.animation=50;featuredCourseFade=true;}});};function modFtrCse_itemFirstInCallbackAfterAnimation(carousel,item,idx,state)
{if(state=='init')
{carousel.options.visiblePage=1;return;}}
function modFtrCse_itemLastOutCallback(carousel,item,idx,state)
{if(featuredCourseFade)
{jQuery('#modFtrCse .jcarousel-list').fadeIn('fast');carousel.options.animation=700;featuredCourseFade=false;}
$("#modFtrCse .jcarousel-control > a.selected").removeClass('selected');if(carousel.options.fromPageDots==true)
{carousel.options.fromPageDots=false;}
else{if(idx==1){carousel.options.visiblePage=1;}else if(state=='next'){carousel.options.visiblePage++;}else{carousel.options.visiblePage--;}}
$("a#modFtrCse-"+(carousel.options.visiblePage)).addClass('selected');};$(document).ready(function(){$('a.basic').cluetip({positionBy:'bottomTop'});$('a.helpCreditCard').cluetip({activation:'click',sticky:true,width:'357px',cluetipClass:'helpPopCc',dropShadow:false,showTitle:false,closePosition:'top',closeText:'<img src="http://www1.ibdcd.com/images/btn/helpPopupsCloseButton.gif" width="15" height="15" alt="close button" />'});$('a.helpYourInfo').cluetip({activation:'click',sticky:true,width:'357px',cluetipClass:'helpPopYi',dropShadow:false,showTitle:false,closePosition:'top',tag:'helpModal',closeText:'<img src="http://www1.ibdcd.com/images/btn/helpPopupsCloseButton.gif" width="15" height="15" alt="close button" />'});$('a.helpMostPop').cluetip({activation:'click',sticky:true,width:'357px',cluetipClass:'helpPopMp',dropShadow:false,showTitle:false,closePosition:'top',closeText:'<img src="http://www1.ibdcd.com/images/btn/helpPopupsCloseButton.gif" width="15" height="15" alt="close button" />'});$('a.helpMediaCenter').cluetip({activation:'click',sticky:true,width:'357px',cluetipClass:'helpMediaCenter',dropShadow:false,showTitle:false,closePosition:'top',closeText:'<img src="http://www1.ibdcd.com/images/btn/helpPopupsCloseButton.gif" width="15" height="15" alt="close button" />'});$('a.helpOptionCenter').cluetip({activation:'click',sticky:true,width:'357px',cluetipClass:'helpOptionCenter',dropShadow:false,showTitle:false,closePosition:'top',closeText:'<img src="http://www1.ibdcd.com/images/btn/helpPopupsCloseButton.gif" width="15" height="15" alt="close button" />'});$('a.helpMyRout').cluetip({activation:'click',sticky:true,width:'357px',cluetipClass:'helpPopMr',dropShadow:false,showTitle:false,closePosition:'top',closeText:'<img src="http://www1.ibdcd.com/images/btn/helpPopupsCloseButton.gif" width="15" height="15" alt="close button" />'});$('a.helpInTheNews').cluetip({activation:'click',sticky:true,width:'357px',cluetipClass:'helpPopYi',dropShadow:false,showTitle:false,closePosition:'top',closeText:'<img src="http://www1.ibdcd.com/images/btn/helpPopupsCloseButton.gif" width="15" height="15" alt="close button" />'});$('a.helpRegister').cluetip({activation:'click',sticky:true,width:'357px',cluetipClass:'helpPopReg',dropShadow:false,showTitle:false,closePosition:'top',closeText:'<img src="http://www1.ibdcd.com/images/btn/helpPopupsCloseButton.gif" width="15" height="15" alt="close button" />'});$('a.hdlineRoll').cluetip({sticky:false,mouseOutClose:true,cluetipClass:'hdPreview',width:'384px',showTitle:false,dropShadow:false,closeText:'',hoverIntent:false});UpdateStockRollovers();UpdateGlossDefRollovers();$('a.passDef').cluetip({mouseOutClose:true,cluetipClass:'passBubble',width:'113px',showTitle:false,dropShadow:false,closeText:'',local:true});$('span.alertNum').cluetip({showTitle:true,mouseOutClose:true,closeText:'Close',splitTitle:'|',attribute:'cluetip',titleAttribute:'cluetip',restoreTitle:false,sticky:true,closePosition:'title',cluetipClass:'alertMsg',positionBy:'bottomTop',dropShadow:true,arrows:false});if(typeof(Sys)!='undefined')
{var prm=Sys.WebForms.PageRequestManager.getInstance()
if(prm!=null)
{prm.add_endRequest(EndRequest);}}});function EndRequest(sender,args)
{UpdateStockRollovers();UpdateGlossDefRollovers();InitMSTracking();InitNavTracking();}
function UpdateStockRollovers(id)
{var selector='a.stockRoll';if(typeof(id)!='undefined'&&id!=null)
{selector="[id$='"+id+"'] "+selector;}
$(selector).cluetip({sticky:true,mouseOutClose:true,cluetipClass:'jtip',width:'303px',cluezIndex:2100000,showTitle:false,dropShadow:false,closeText:'',tag:'stockRoll',cursor:'pointer',onActivate:CheckValidSession,onShow:function(){if(typeof(InitializeRolloverBATS)!='undefined'&&InitializeRolloverBATS)InitializeRolloverBATS();}});}
function UpdateGlossDefRollovers(id)
{var selector='a.glossDef';if(typeof(id)!='undefined'&&id!=null){selector="[id$='"+id+"'] "+selector;}
$(selector).cluetip({mouseOutClose:true,cluetipClass:'glossBubble',width:'303px',showTitle:false,dropShadow:false,closeText:'',cursor:'pointer',onShow:function(ct,ci){if(this.height()>20&&typeof(adPage)!='undefined'&&adPage.toLowerCase().indexOf('article.aspx')>-1){var tipLeft=+$("#cluetip").css('left').replace('px','');$("#cluetip").css('left',tipLeft+120+'px');}}});}
$(document).ready(function(){$('#findStkDropSelect').selectbox();$('#evaluateStkDropSelect').selectbox();});$(document).ready(function(){$('#grpRank .selected').append('<div class="cover"></div>');});function GroupChange(item)
{$('.grpCat .cover').remove();$('.grpCat').removeClass('selected');$(item).addClass('selected');$(item).append('<div class="cover"></div>');return true;}
$(document).ready(function()
{$('.ttl-actions a').attr("title","Expand All");$('.ttl-actions a').toggle(function()
{$(this).html("Collapse All &raquo;");$(this).attr("title","Collapse All");$('.currSubScript > .trigger').addClass('expanded').removeClass('trigger');$('.currSubScript > .hide').removeClass('hide').addClass('show');return false;},function()
{$(this).html("Expand All &raquo;");$(this).attr("title","Expand All");$('.currSubScript > .expanded').addClass('trigger').removeClass('expanded');$('.currSubScript > .show').removeClass('show').addClass('hide');return false;});});function registerModalInit(){$('.toggle-expand').hide('fast');$("#mediaCtrTabs").tabs();$("#commentForm").hide();$(".commentWrite").click(function(){$("#commentsList").hide();$("#commentForm").show();});$("#cancelComment").click(function(){$("#commentForm").hide();$("#commentsList").show();});}
function registerVideoModalInit(){$('#modVidTutor').jcarousel({scroll:3,animation:700,initCallback:modVidTutor_initCallback});$('.vidTutor #player').load('inc/html/video-tutorial-1.html');$('#first').click(function(){$('.vidTutor #player').hide().load('inc/html/video-tutorial-1.html',function(){$('.select > li').removeClass('current');$('.select > li#first').addClass('current');$(this).fadeIn();});return false;});$('#second').click(function(){$('.vidTutor #player').hide().load('inc/html/video-tutorial-2.html',function(){$('.select > li').removeClass('current');$('.select > li#second').addClass('current');$(this).fadeIn();});return false;});$('#third').click(function(){$('.vidTutor #player').hide().load('inc/html/video-tutorial-3.html',function(){$('.select > li').removeClass('current');$('.select > li#third  ').addClass('current');$(this).fadeIn();});return false;});$("#close-window").click(function(){$('#ex3').jqmHide();});}
$(document).ready(function(){$(".topicAccordion > dd").hide();$("dt.expand").next().show();$(".topicAccordion > dt a").click(function(){$("dt.expand").next().slideUp("slow");$(this).parent().next().slideDown("slow");$("dt.expand").removeClass("expand");$(this).parent().addClass("expand");return false;});});$(document).ready(function(){$('#vTopictDropNavTerm').click(function(){$('#vTopicDropNavSub').toggleClass('hide');});});function ToBoolean(strValue)
{if(strValue==null||strValue.toLowerCase()=="false"||strValue.toLowerCase()=="0")
{return false;}
else
{return true;}}
function queryString(ji)
{hu=window.location.search.substring(1);gy=hu.split("&");for(i=0;i<gy.length;i++)
{ft=gy[i].split("=");if(ft[0].toLowerCase()==ji.toLowerCase())
{return ft[1];}}
return'';}
var prevScrollTop=0;function AdjustScrollPosition()
{var num1=$(window).scrollTop()+document.documentElement.clientHeight;var num2=$(window).height()-$('#divOverlayBottom').offset().top;var num3=$(window).height()-num2;var buffer=100;if(!blnEnableScrolling&&num1>(num3+buffer)){$(window).scrollTop(prevScrollTop);}
else if(!blnEnableScrolling){prevScrollTop=$(window).scrollTop();}
else{prevScrollTop=0;}}
function echeck(strValue)
{var at="@";var dot=".";var str=strValue.toString();var lat=str.indexOf(at);var lstr=str.length;var ldot=str.lastIndexOf(dot);if(str.indexOf(at)==-1||str.indexOf(at)==0||str.indexOf(at)==lstr-1){return 1;}
if(str.indexOf(dot)==-1||str.indexOf(dot)==0||str.lastIndexOf(dot)==lstr-1){return 1;}
if(str.indexOf(at,(lat+1))!=-1){return 1;}
if(str.substring(lat-1,lat)==dot||str.substring(lat+1,lat+2)==dot){return 1;}
var strsub=str.substring(lat+2);if(strsub.indexOf(dot)==-1){return 1;}
if(str.indexOf(" ")!=-1){return 1;}
var specialCharecters="/ = + & % < > , \\ ' # $ ~ ^ * ( ) ? !";arrSpecialCh=specialCharecters.split(" ");var i=0;while(i<arrSpecialCh.length)
{if(str.indexOf(arrSpecialCh[i])!=-1){return 2;}
i++;}
return 0;}
function IsNumeric(sText)
{var ValidChars="0123456789-";var IsNumber=true;var Char;for(i=0;i<sText.length&&IsNumber==true;i++)
{Char=sText.charAt(i);if(ValidChars.indexOf(Char)==-1)
IsNumber=false;}
return IsNumber;}
function fncSpeicalCharacters(sValue)
{var cChar;var isSpecialChr=false
var sSpecialCharacters="~!@#$%^*()<>,/?{}[]|\\+='\"";for(i=0;i<sValue.length&&isSpecialChr==false;i++)
{cChar=sValue.charAt(i);if(sSpecialCharacters.indexOf(cChar)!=-1)
isSpecialChr=true;}
return isSpecialChr;}
function CloseRegOverlay()
{if(strCloseRegPop=="1"){window.location="http://"+window.location.host+"/default.aspx";window.close();}
else if(strCloseReg=="1"){if(strCloseRegPath.length>0){window.location="http://"+window.location.host+strCloseRegPath;}
else if(history.length>1){history.go(numGoBackInHistory);}
else{window.location="http://"+window.location.host+"/default.aspx";window.close();}}
else if(blnCloseRegToHome)
{window.location="http://"+window.location.host+"/default.aspx";}
blnEnableScrolling=true;}
function fncValidatePhone(sValue)
{var cChar;var sSpecialCharacters="( ) - .";arrSpecialChr=sSpecialCharacters.split(" ");for(i=0;i<arrSpecialChr.length;i++)
sValue=sValue.toString().replace(arrSpecialChr[i],"");if(sValue.length>9&&IsNumeric(sValue))
return true;else
return false;}
function PagePopup(url,width,height,partnersAd)
{var popWidth=0;var popHeight=0;var popwinid="pagepopup_"+parseInt(new Date().getTime().toString().substring(0,10));var options="'directories=1,location=1,toolbar=1,menubar=1,status=1,resizable=1,scrollbars=1{0}'";if(typeof(width)!='undefined'&&width!=null)
{popWidth=width;}
if(typeof(height)!='undefined'&&height!=null)
{popHeight=height;}
if(typeof(partnersAd)!='undefined'&&partnersAd!=null)
{if(partnersAd=='1')
{options="'resizable=1,scrollbars=1{0}'";popwinid="adpopup";}}
if(popWidth>0&&popHeight>0)
{options=options.replace("{0}",",width="+popWidth+",height="+popHeight);}
else
{options=options.replace("{0}","");}
var pagePop=window.open(url,popwinid,options);if(pagePop!=null)
{pagePop.focus();}}
function openAddToStockListPopup(symbol,height,width){var popupPath=gRootPath+"MyIBD/AddToPortfolio.aspx?Symbol="+symbol;var dHeight=(height)?height:300;var dWidth=(width)?width:300;if(window.showModalDialog){window.showModalDialog(popupPath,"AddToMyStockList","dialogWidth:"+dWidth.toString()+"px;dialogHeight:"+dHeight.toString()+"px");}
else{window.open(popupPath,'AddToMyStockList','height='+dHeight.toString()+',width='+dHeight.toString()+',toolbar=no,directories=no,status=no,continued from previous linemenubar=no,scrollbars=no,resizable=no ,modal=yes');}}
function popupPicture(pstrPath,pstrCaption,pstrDocId)
{var popupUrl=gRootPath+'NewsAndAnalysis/PhotoPopup.aspx?path='+pstrPath+'&caption='+encodeURIComponent(pstrCaption);if(pstrDocId&&pstrDocId!='')popupUrl+='&docId='+pstrDocId;var objPopup=window.open(popupUrl,'fullsizephoto');objPopup.focus();}
function navigateToPage(pstrPath,skipRootPath)
{var bSkipRootPath=false;if(typeof(skipRootPath)!='undefined'&&skipRootPath!=null)
{if(skipRootPath==1)
bSkipRootPath=true;}
if(pstrPath.match("^"+"~")=="~")
{pstrPath=pstrPath.substring(1,pstrPath.length);}
if(pstrPath.match("^"+"/")=="/")
{pstrPath=pstrPath.substring(1,pstrPath.length);}
if(bSkipRootPath)
{window.location=pstrPath;}
else
{window.location=gRootPath+pstrPath;}}
function getOffsetX(oNode)
{var iOffsetLeft=0;while(oNode){iOffsetLeft+=oNode.offsetLeft;if(oNode.offsetParent){oNode=oNode.offsetParent;}
else{oNode=null;}}
return iOffsetLeft;}
function getOffsetY(oNode)
{var iOffsetTop=0;while(oNode){iOffsetTop+=oNode.offsetTop;if(oNode.offsetParent){oNode=oNode.offsetParent;}
else{oNode=null;}}
return iOffsetTop;}
function getPosition(objElement)
{var position=new Object();position.x=0;position.y=0;while(objElement.offsetParent)
{position.x+=objElement.offsetLeft-objElement.scrollLeft;position.y+=objElement.offsetTop-objElement.scrollTop;objElement=objElement.offsetParent;}
return position;}
var sTakeToPath="";var strCloseRegPath="";var blnEnableScrolling=true;var strCloseReg="";var numGoBackInHistory=-1;var strCloseRegPop="";var blnCloseRegToHome=false;var _navTopTabIdPrefix="topNav";var _navTopTabLinkIdPrefix="secNav";var _navTopActiveTab=0;var _navTopCurrentTab=0;var _navTimerId=null;var _navInitialized=false;var _navShowLink=false;var _navHoverTimerId=null;function jsfTopNavActivate(index){_navTopActiveTab=_navTopCurrentTab=index;jsfSetTabCssClass(_navTopActiveTab,"selected");jsfShowTabLinks(_navTopActiveTab,true);_navInitialized=true;NavHoverMenu.init();}
function jsfTopNavEnter(obj){if(_navInitialized){_navShowLink=false;jsfKillTimer();jsfSetTabCssClass(_navTopCurrentTab,"");jsfSetTabCssClass(_navTopActiveTab,"selected");obj.className="selected";_navTopCurrentTab=obj.id.substr(obj.id.indexOf(_navTopTabIdPrefix)+6,obj.id.length-1);if(_navTopCurrentTab!=_navTopActiveTab){jsfSetTabCssClass(_navTopCurrentTab,"light");}
var menuKey=$("#"+_navTopTabIdPrefix+_navTopCurrentTab).attr("data-menukey");if(typeof(menuKey)=='undefined'){$("#"+_navTopTabIdPrefix+_navTopCurrentTab).addClass("noarrow");}
_navHoverTimerId=setTimeout(jsfTopNavHoverShow,500);}}
function jsfTopNavLeave(obj){if(_navInitialized){jsfKillTimer();jsfKillHoverTimer();_navShowLink=true;_navTimerId=setTimeout("jsfSecNavShow()",100);}}
function jsfTopNavSelect(obj){if(_navInitialized){jsfKillTimer();jsfKillHoverTimer();_navShowLink=false;}}
function jsfSecNavLeave(obj){jsfKillTimer();jsfKillHoverTimer();_navShowLink=true;_navTimerId=setTimeout("jsfSecNavShow()",100);}
function jsfSecNavShow(){if(_navInitialized&&_navShowLink){jsfSetTabCssClass(_navTopCurrentTab,"");jsfSetTabCssClass(_navTopActiveTab,"selected");NavHoverMenu.HideAll();}}
function jsfSetTabCssClass(index,cssClass){var tab=document.getElementById(_navTopTabIdPrefix+index);if(tab!=null){tab.className=cssClass;}}
function jsfShowTabLinks(index,show){var tabGroup=document.getElementById(_navTopTabLinkIdPrefix+index);if(tabGroup!=null){tabGroup.style.display=show?"":"none";}}
function jsfKillTimer(){if(_navTimerId){clearTimeout(_navTimerId);_navTimerId=null;}}
function jsfTopNavHoverShow(){if(_navInitialized&&!_navShowLink){NavHoverMenu.Display($("#"+_navTopTabIdPrefix+_navTopCurrentTab).attr("data-menukey"));}}
function jsfKillHoverTimer(){if(_navHoverTimerId){clearTimeout(_navHoverTimerId);_navHoverTimerId=null;}}
var NavHoverMenu=new function(){var keys=new Array();var getOnlyKeys=function(){var onlyKeys=new Array();for(var i=0;i<keys.length;i++){onlyKeys.push(keys[i].Key);}
return onlyKeys;};var getIDFromKey=function(menuKey){for(var i=0;i<keys.length;i++){if(keys[i].Key==menuKey){return keys[i].ID;}}
return"";};var processLinks=function(links){var linksHtml="";if(links!=null&&links.length>0){linksHtml="<ul>";for(var i=0;i<links.length;i++){linksHtml+="<li><a href=\"";linksHtml+=links[i].Url+"\"";if(links[i].CssClass.length>0){linksHtml+=" class=\""+links[i].CssClass+"\"";}
if(links[i].OnClick.length>0){linksHtml+=" onclick=\""+links[i].OnClick+"\"";}
if(links[i].Target.length>0){linksHtml+=" target=\""+links[i].Target+"\"";}
linksHtml+=">"+links[i].Title;linksHtml+="</a></li>";}
linksHtml+="</ul>";}
return linksHtml;};var processCategories=function(categories){var catHtml="";if(categories!=null&&categories.length>0){for(var i=0;i<categories.length;i++){if(categories[i].Title.length>0&&(categories[i].Content.length>0||categories[i].Links.length>0)){catHtml+="<div class=\"navTitle\">"+categories[i].Title+"</div>";}
if(categories[i].Content.length>0){var content=categories[i].Content;if(content.indexOf("javascript:")==0){content=eval(content);}
catHtml+=content;}
else{catHtml+=processLinks(categories[i].Links);}}}
return catHtml;};var processMenu=function(id,menu){var html="<div class=\"navHoverMenu_t\">";var col="<div class=\"navColumn c{0}\">{1}</div>"
for(var i=0;i<menu.Columns.length;i++){var currentCol=processCategories(menu.Columns[i].Categories);currentCol+=processLinks(menu.Columns[i].Links);if(currentCol.length>0){html+=col.replace(/\{0\}/g,(i+1)).replace(/\{1\}/g,currentCol);}}
html+="</div>";html+="<div class=\"navHoverMenub\"></div>";if(html.length>0){$("#"+id).html(html);}};this.init=function(){$("#nav div.cont ul li").each(function(){var key=$(this).attr("data-menukey");var id=$(this).attr("id");if(typeof(key)!='undefined'){id="hoverMenu"+id.substr(6,id.length-1);$("body").append("<div id=\""+id+"\" class=\"navHoverMenu\" style=\"display:none;\"></div>");$("#"+id).mouseover(function(){jsfTopNavSelect(this);}).mouseout(function(){jsfSecNavLeave(this);});if(jQuery.browser.msie&&parseInt(jQuery.browser.version,10)<=8){$("#"+id).addClass("ieBoxShadow");}
keys.push({"Key":key,"ID":id});}});if(keys.length>0){var img1=new Image();var img2=new Image();var startUrl=document.location.protocol=="https:"?"":"http://www1.ibdcd.com";img1.src=startUrl+"/images/frames/nav_sprite.png";img2.src=startUrl+"/images/frames/dotteLine.png";var menuKeys=getOnlyKeys().join();Won.ICom.Code.Services.SiteAjaxService.GetNavHoverMenu(menuKeys,function(result){for(var i=0;i<result.length;i++){var ID=getIDFromKey(result[i].Key);if(ID.length>0){processMenu(ID,result[i]);}}
InitMSTracking();InitNavTracking();});}};this.Display=function(menuKey){NavHoverMenu.HideAll();var ID=getIDFromKey(menuKey);if(ID.length>0&&$("#"+ID).html().length>0){var nav=$("#nav").offset();$("#"+ID).css('left',$("#nav").css("position")=="fixed"?10+nav.left-9:nav.left-9+'px').css('top',nav.top-1+$("#nav").height()+'px').css('position',$("#nav").css("position")=="fixed"?"fixed":"absolute").show();}};this.HideAll=function(){for(var i=0;i<keys.length;i++){$("#"+keys[i].ID).hide();}};};var s_account="ibdibdnewinvestorscomstaging";var s_account_host=window.location.host.toLowerCase();if(s_account_host.indexOf("localhost")>-1||s_account_host.indexOf("dev.")>-1||s_account_host.indexOf("stage.")>-1||s_account_host.indexOf("qa.")>-1||s_account_host.indexOf("qtest.")>-1||s_account_host.indexOf("ptest.")>-1){s_account="ibdnonproduction";}
var s=s_gi(s_account)
s.charSet="ISO-8859-1"
s.trackDownloadLinks=true
s.trackExternalLinks=true
s.trackInlineStats=true
s.linkDownloadFileTypes="exe,zip,wav,mp3,mov,mpg,avi,wmv,doc,pdf,xls"
s.linkInternalFilters="javascript:,investors.com,investorsbusinessdaily.com,askibd.com,ibdsubscriber.com,ibdeditorials.com,investdaily.custhelp.com,ibdretail.com"
s.linkLeaveQueryString=false
s.linkTrackVars="None"
s.linkTrackEvents="None"
s.siteID=""
s.defaultPage="default.asp"
s.queryVarsList=""
s.pathExcludeDelim=";"
s.pathConcatDelim="/"
s.pathExcludeList=""
s.usePlugins=true
function s_doPlugins(s)
{if(!s.campaign)
s.campaign=s.getQueryParam('src')
s.campaign=s.getValOnce(s.campaign,'s_campaign',0)
s.temp_pageName=s.getPageName();if(s.hier1&&s.hier1.indexOf('+')!=-1)
{s.hier1=s.repl(s.hier1,' + ',',');}
if(!s.pageName){if(!s.channel)
{s.channel=s.channelExtract("/",1,s.temp_pageName);s.channel=s.repl(s.channel,'/','');}
if(!s.channel)s.channel="Root Directory";if(!s.prop3)s.prop3=s.channelExtract("/",2,s.temp_pageName);if(!s.prop4)s.prop4=s.channelExtract("/",3,s.temp_pageName);if(!s.prop5)s.prop5=s.channelExtract("/",4,s.temp_pageName);if(!s.hier1)
{s.hier1=s.channelExtract("/",10,s.temp_pageName,1);s.hier1=s.repl(s.hier1,'/',',')}}
if(!s.pageType&&!s.pageName&&s.temp_pageName)s.pageName=s.temp_pageName;if(!s.pageType&&s.pageName)
{s.pageName=unescape(s.pageName);s.pageName=unescape(s.pageName);}
if(s.channel)s.eVar4=s.channel;if(s.prop9)s.eVar9=s.prop9;if(s.prop1)
{s.prop1=s.prop1.toLowerCase();if(s.prop2=="0"||s.prop2=="zero")s.prop1=s.prop2+":"+s.prop1;s.eVar1=s.prop1
var t_search=s.getValOnce(s.eVar1,'ev1',0)
if(t_search)
s.events=s.apl(s.events,'event1',',',1)}
s.events=s.apl(s.events,'event2',',',1)
s.eVar26=s.getQueryParam('ven');var cDate=new Date();s.prop6=s.getTimeParting('h','-5',cDate.getFullYear().toString());s.prop7=s.getTimeParting('d','-5',cDate.getFullYear().toString());s.prop8=s.getTimeParting('w','-5',cDate.getFullYear().toString());if(s.prop6)s.eVar6=s.prop6;if(s.prop7)s.eVar7=s.prop7;if(s.prop8)s.eVar8=s.prop8;s.eVar13=s.getVisitNum();s.eVar14=s.getNewRepeat();if(s.campaign)
{s.temp_eVar10=s.getAndPersistValue('','s_ev10',365);if(s.temp_eVar10)s.eVar10=s.temp_eVar10+":"+s.campaign
else s.eVar10=s.campaign
s.eVar10=s.getAndPersistValue(s.eVar10,'s_ev10',365);}
var q_nav=s.getQueryParam('nav');if(q_nav&&!s.prop51){s.prop51=s.eVar19=q_nav;}
var q_ref=s.getQueryParam('ref');if(q_ref&&!s.prop53){s.prop53=s.eVar35=q_ref;}}
s.doPlugins=s_doPlugins
s.getPageName=new Function("u",""
+"var s=this,v=u?u:''+s.wd.location,x=v.indexOf(':'),y=v.indexOf('/',"
+"x+4),z=v.indexOf('?'),c=s.pathConcatDelim,e=s.pathExcludeDelim,g=s."
+"queryVarsList,d=s.siteID,n=d?d:'',q=z<0?'':v.substring(z+1),p=v.sub"
+"string(y+1,q?z:v.length);z=p.indexOf('#');p=z<0?p:s.fl(p,z);x=e?p.i"
+"ndexOf(e):-1;p=x<0?p:s.fl(p,x);p+=!p||p.charAt(p.length-1)=='/'?s.d"
+"efaultPage:'';y=c?c:'/';while(p){x=p.indexOf('/');x=x<0?p.length:x;"
+"z=s.fl(p,x);if(!s.pt(s.pathExcludeList,',','p_c',z))n+=n?y+z:z;p=p."
+"substring(x+1)}y=c?c:'?';while(g){x=g.indexOf(',');x=x<0?g.length:x"
+";z=s.fl(g,x);z=s.pt(q,'&','p_c',z);if(z){n+=n?y+z:z;y=c?c:'&'}g=g.s"
+"ubstring(x+1)}return n");s.channelExtract=new Function("d","p","u","pv",""
+"var s=this,v='';u=u?u:(s.pageURL?s.pageURL:s.wd.location);if(u=='f'"
+")u=s.gtfs().location;u=u+'';li=u.lastIndexOf(d);if(li>0){u=u.substr"
+"ing(0,li);var i,n,a=s.split(u,d),al=a.length;if(al<p){if(pv==1) p=a"
+"l;else return '';}for(i=0;i<p;i++){n=a[i];v=v+n+d;}return v}return "
+"'';");s.repl=new Function("x","o","n",""
+"var i=x.indexOf(o),l=n.length;while(x&&i>=0){x=x.substring(0,i)+n+x."
+"substring(i+o.length);i=x.indexOf(o,i+l)}return x");s.getQueryParam=new Function("p","d","u",""
+"var s=this,v='',i,t;d=d?d:'';u=u?u:(s.pageURL?s.pageURL:s.wd.locati"
+"on);if(u=='f')u=s.gtfs().location;while(p){i=p.indexOf(',');i=i<0?p"
+".length:i;t=s.p_gpv(p.substring(0,i),u+'');if(t)v+=v?d+t:t;p=p.subs"
+"tring(i==p.length?i:i+1)}return v");s.p_gpv=new Function("k","u",""
+"var s=this,v='',i=u.indexOf('?'),q;if(k&&i>-1){q=u.substring(i+1);v"
+"=s.pt(q,'&','p_gvf',k)}return v");s.p_gvf=new Function("t","k",""
+"if(t){var s=this,i=t.indexOf('='),p=i<0?t:t.substring(0,i),v=i<0?'T"
+"rue':t.substring(i+1);if(p.toLowerCase()==k.toLowerCase())return s."
+"epa(v)}return ''");s.apl=new Function("L","v","d","u",""
+"var s=this,m=0;if(!L)L='';if(u){var i,n,a=s.split(L,d);for(i=0;i<a."
+"length;i++){n=a[i];m=m||(u==1?(n==v):(n.toLowerCase()==v.toLowerCas"
+"e()));}}if(!m)L=L?L+d+v:v;return L");s.split=new Function("l","d",""
+"var i,x=0,a=new Array;while(l){i=l.indexOf(d);i=i>-1?i:l.length;a[x"
+"++]=l.substring(0,i);l=l.substring(i+d.length);}return a");s.getValOnce=new Function("v","c","e",""
+"var s=this,k=s.c_r(c),a=new Date;e=e?e:0;if(v){a.setTime(a.getTime("
+")+e*86400000);s.c_w(c,v,e?a:0);}return v==k?'':v");s.getTimeParting=new Function("t","z","y",""
+"dc=new Date('1/1/2000');f=15;ne=8;if(dc.getDay()!=6||"
+"dc.getMonth()!=0){return'Data Not Available'}else{;z=parseInt(z);"
+"if(y=='2009'){f=8;ne=1};gmar=new Date('3/1/'+y);dsts=f-gmar.getDay("
+");gnov=new Date('11/1/'+y);dste=ne-gnov.getDay();spr=new Date('3/'"
+"+dsts+'/'+y);fl=new Date('11/'+dste+'/'+y);cd=new Date();"
+"if(cd>spr&&cd<fl){z=z+1}else{z=z};utc=cd.getTime()+(cd.getTimezoneO"
+"ffset()*60000);tz=new Date(utc + (3600000*z));thisy=tz.getFullYear("
+");var days=['Sunday','Monday','Tuesday','Wednesday','Thursday','Fr"
+"iday','Saturday'];if(thisy!=y){return'Data Not Available'}else{;thi"
+"sh=tz.getHours();thismin=tz.getMinutes();thisd=tz.getDay();var dow="
+"days[thisd];var ap='AM';var dt='Weekday';var mint='00';if(thismin>3"
+"0){mint='30'}if(thish>=12){ap='PM';thish=thish-12};if (thish==0){th"
+"ish=12};if(thisd==6||thisd==0){dt='Weekend'};var timestring=thish+'"
+":'+mint+ap;var daystring=dow;var endstring=dt;if(t=='h'){return tim"
+"estring}if(t=='d'){return daystring};if(t=='w'){return en"
+"dstring}}};");s.getAndPersistValue=new Function("v","c","e",""
+"var s=this,a=new Date;e=e?e:0;a.setTime(a.getTime()+e*86400000);if("
+"v)s.c_w(c,v,e?a:0);return s.c_r(c);");s.getVisitNum=new Function(""
+"var s=this,e=new Date(),cval,cvisit,ct=e.getTime(),c='s_vnum',c2='s"
+"_invisit';e.setTime(ct+30*24*60*60*1000);cval=s.c_r(c);if(cval){var"
+" i=cval.indexOf('&vn='),str=cval.substring(i+4,cval.length),k;}cvis"
+"it=s.c_r(c2);if(cvisit){if(str){e.setTime(ct+30*60*1000);s.c_w(c2,'"
+"true',e);return str;}else return 'unknown visit number';}else{if(st"
+"r){str++;k=cval.substring(0,i);e.setTime(k);s.c_w(c,k+'&vn='+str,e)"
+";e.setTime(ct+30*60*1000);s.c_w(c2,'true',e);return str;}else{s.c_w"
+"(c,ct+30*24*60*60*1000+'&vn=1',e);e.setTime(ct+30*60*1000);s.c_w(c2"
+",'true',e);return 1;}}");s.getNewRepeat=new Function(""
+"var s=this,e=new Date(),cval,ct=e.getTime(),y=e.getYear();e.setTime"
+"(ct+30*24*60*60*1000);cval=s.c_r('s_nr');if(cval.length==0){s.c_w("
+"'s_nr',ct,e);return 'New';}if(cval.length!=0&&ct-cval<30*60*1000){s"
+".c_w('s_nr',ct,e);return 'New';}if(cval<1123916400001){e.setTime(cv"
+"al+30*24*60*60*1000);s.c_w('s_nr',ct,e);return 'Repeat';}else retur"
+"n 'Repeat';");s.visitorNamespace="investorsbusinessdaily"
s.trackingServer="stats.investors.com"
s.trackingServerSecure="sstats.investors.com"
s.dc=112
var s_code='',s_objectID;function s_gi(un,pg,ss){var c="s.version='H.25';s.an=s_an;s.logDebug=function(m){var s=this,tcf=new Function('var e;try{console.log(\"'+s.rep(s.rep(s.rep(m,\"\\\\\",\"\\\\\\"
+"\\\"),\"\\n\",\"\\\\n\"),\"\\\"\",\"\\\\\\\"\")+'\");}catch(e){}');tcf()};s.cls=function(x,c){var i,y='';if(!c)c=this.an;for(i=0;i<x.length;i++){n=x.substring(i,i+1);if(c.indexOf(n)>=0)y+=n}return "
+"y};s.fl=function(x,l){return x?(''+x).substring(0,l):x};s.co=function(o){return o};s.num=function(x){x=''+x;for(var p=0;p<x.length;p++)if(('0123456789').indexOf(x.substring(p,p+1))<0)return 0;retur"
+"n 1};s.rep=s_rep;s.sp=s_sp;s.jn=s_jn;s.ape=function(x){var s=this,h='0123456789ABCDEF',i,c=s.charSet,n,l,e,y='';c=c?c.toUpperCase():'';if(x){x=''+x;if(s.em==3)x=encodeURIComponent(x);else if(c=='AU"
+"TO'&&('').charCodeAt){for(i=0;i<x.length;i++){c=x.substring(i,i+1);n=x.charCodeAt(i);if(n>127){l=0;e='';while(n||l<4){e=h.substring(n%16,n%16+1)+e;n=(n-n%16)/16;l++}y+='%u'+e}else if(c=='+')y+='%2B"
+"';else y+=escape(c)}x=y}else x=escape(''+x);x=s.rep(x,'+','%2B');if(c&&c!='AUTO'&&s.em==1&&x.indexOf('%u')<0&&x.indexOf('%U')<0){i=x.indexOf('%');while(i>=0){i++;if(h.substring(8).indexOf(x.substri"
+"ng(i,i+1).toUpperCase())>=0)return x.substring(0,i)+'u00'+x.substring(i);i=x.indexOf('%',i)}}}return x};s.epa=function(x){var s=this;if(x){x=s.rep(''+x,'+',' ');return s.em==3?decodeURIComponent(x)"
+":unescape(x)}return x};s.pt=function(x,d,f,a){var s=this,t=x,z=0,y,r;while(t){y=t.indexOf(d);y=y<0?t.length:y;t=t.substring(0,y);r=s[f](t,a);if(r)return r;z+=y+d.length;t=x.substring(z,x.length);t="
+"z<x.length?t:''}return ''};s.isf=function(t,a){var c=a.indexOf(':');if(c>=0)a=a.substring(0,c);c=a.indexOf('=');if(c>=0)a=a.substring(0,c);if(t.substring(0,2)=='s_')t=t.substring(2);return (t!=''&&"
+"t==a)};s.fsf=function(t,a){var s=this;if(s.pt(a,',','isf',t))s.fsg+=(s.fsg!=''?',':'')+t;return 0};s.fs=function(x,f){var s=this;s.fsg='';s.pt(x,',','fsf',f);return s.fsg};s.mpc=function(m,a){var s"
+"=this,c,l,n,v;v=s.d.visibilityState;if(!v)v=s.d.webkitVisibilityState;if(v&&v=='prerender'){if(!s.mpq){s.mpq=new Array;l=s.sp('webkitvisibilitychange,visibilitychange',',');for(n=0;n<l.length;n++){"
+"s.d.addEventListener(l[n],new Function('var s=s_c_il['+s._in+'],c,v;v=s.d.visibilityState;if(!v)v=s.d.webkitVisibilityState;if(s.mpq&&v==\"visible\"){while(s.mpq.length>0){c=s.mpq.shift();s[c.m].ap"
+"ply(s,c.a)}s.mpq=0}'),false)}}c=new Object;c.m=m;c.a=a;s.mpq.push(c);return 1}return 0};s.si=function(){var s=this,i,k,v,c=s_gi+'var s=s_gi(\"'+s.oun+'\");s.sa(\"'+s.un+'\");';for(i=0;i<s.va_g.leng"
+"th;i++){k=s.va_g[i];v=s[k];if(v!=undefined){if(typeof(v)!='number')c+='s.'+k+'=\"'+s_fe(v)+'\";';else c+='s.'+k+'='+v+';'}}c+=\"s.lnk=s.eo=s.linkName=s.linkType=s.wd.s_objectID=s.ppu=s.pe=s.pev1=s."
+"pev2=s.pev3='';\";return c};s.c_d='';s.c_gdf=function(t,a){var s=this;if(!s.num(t))return 1;return 0};s.c_gd=function(){var s=this,d=s.wd.location.hostname,n=s.fpCookieDomainPeriods,p;if(!n)n=s.coo"
+"kieDomainPeriods;if(d&&!s.c_d){n=n?parseInt(n):2;n=n>2?n:2;p=d.lastIndexOf('.');if(p>=0){while(p>=0&&n>1){p=d.lastIndexOf('.',p-1);n--}s.c_d=p>0&&s.pt(d,'.','c_gdf',0)?d.substring(p):d}}return s.c_"
+"d};s.c_r=function(k){var s=this;k=s.ape(k);var c=' '+s.d.cookie,i=c.indexOf(' '+k+'='),e=i<0?i:c.indexOf(';',i),v=i<0?'':s.epa(c.substring(i+2+k.length,e<0?c.length:e));return v!='[[B]]'?v:''};s.c_"
+"w=function(k,v,e){var s=this,d=s.c_gd(),l=s.cookieLifetime,t;v=''+v;l=l?(''+l).toUpperCase():'';if(e&&l!='SESSION'&&l!='NONE'){t=(v!=''?parseInt(l?l:0):-60);if(t){e=new Date;e.setTime(e.getTime()+("
+"t*1000))}}if(k&&l!='NONE'){s.d.cookie=k+'='+s.ape(v!=''?v:'[[B]]')+'; path=/;'+(e&&l!='SESSION'?' expires='+e.toGMTString()+';':'')+(d?' domain='+d+';':'');return s.c_r(k)==v}return 0};s.eh=functio"
+"n(o,e,r,f){var s=this,b='s_'+e+'_'+s._in,n=-1,l,i,x;if(!s.ehl)s.ehl=new Array;l=s.ehl;for(i=0;i<l.length&&n<0;i++){if(l[i].o==o&&l[i].e==e)n=i}if(n<0){n=i;l[n]=new Object}x=l[n];x.o=o;x.e=e;f=r?x.b"
+":f;if(r||f){x.b=r?0:o[e];x.o[e]=f}if(x.b){x.o[b]=x.b;return b}return 0};s.cet=function(f,a,t,o,b){var s=this,r,tcf;if(s.apv>=5&&(!s.isopera||s.apv>=7)){tcf=new Function('s','f','a','t','var e,r;try"
+"{r=s[f](a)}catch(e){r=s[t](e)}return r');r=tcf(s,f,a,t)}else{if(s.ismac&&s.u.indexOf('MSIE 4')>=0)r=s[b](a);else{s.eh(s.wd,'onerror',0,o);r=s[f](a);s.eh(s.wd,'onerror',1)}}return r};s.gtfset=functi"
+"on(e){var s=this;return s.tfs};s.gtfsoe=new Function('e','var s=s_c_il['+s._in+'],c;s.eh(window,\"onerror\",1);s.etfs=1;c=s.t();if(c)s.d.write(c);s.etfs=0;return true');s.gtfsfb=function(a){return "
+"window};s.gtfsf=function(w){var s=this,p=w.parent,l=w.location;s.tfs=w;if(p&&p.location!=l&&p.location.host==l.host){s.tfs=p;return s.gtfsf(s.tfs)}return s.tfs};s.gtfs=function(){var s=this;if(!s.t"
+"fs){s.tfs=s.wd;if(!s.etfs)s.tfs=s.cet('gtfsf',s.tfs,'gtfset',s.gtfsoe,'gtfsfb')}return s.tfs};s.mrq=function(u){var s=this,l=s.rl[u],n,r;s.rl[u]=0;if(l)for(n=0;n<l.length;n++){r=l[n];s.mr(0,0,r.r,r"
+".t,r.u)}};s.flushBufferedRequests=function(){};s.mr=function(sess,q,rs,ta,u){var s=this,dc=s.dc,t1=s.trackingServer,t2=s.trackingServerSecure,tb=s.trackingServerBase,p='.sc',ns=s.visitorNamespace,u"
+"n=s.cls(u?u:(ns?ns:s.fun)),r=new Object,l,imn='s_i_'+(un),im,b,e;if(!rs){if(t1){if(t2&&s.ssl)t1=t2}else{if(!tb)tb='2o7.net';if(dc)dc=(''+dc).toLowerCase();else dc='d1';if(tb=='2o7.net'){if(dc=='d1'"
+")dc='112';else if(dc=='d2')dc='122';p=''}t1=un+'.'+dc+'.'+p+tb}rs='http'+(s.ssl?'s':'')+'://'+t1+'/b/ss/'+s.un+'/'+(s.mobile?'5.1':'1')+'/'+s.version+(s.tcn?'T':'')+'/'+sess+'?AQB=1&ndh=1'+(q?q:'')"
+"+'&AQE=1';if(s.isie&&!s.ismac)rs=s.fl(rs,2047)}if(s.d.images&&s.apv>=3&&(!s.isopera||s.apv>=7)&&(s.ns6<0||s.apv>=6.1)){if(!s.rc)s.rc=new Object;if(!s.rc[un]){s.rc[un]=1;if(!s.rl)s.rl=new Object;s.r"
+"l[un]=new Array;setTimeout('if(window.s_c_il)window.s_c_il['+s._in+'].mrq(\"'+un+'\")',750)}else{l=s.rl[un];if(l){r.t=ta;r.u=un;r.r=rs;l[l.length]=r;return ''}imn+='_'+s.rc[un];s.rc[un]++}if(s.debu"
+"gTracking){var d='AppMeasurement Debug: '+rs,dl=s.sp(rs,'&'),dln;for(dln=0;dln<dl.length;dln++)d+=\"\\n\\t\"+s.epa(dl[dln]);s.logDebug(d)}im=s.wd[imn];if(!im)im=s.wd[imn]=new Image;im.s_l=0;im.onlo"
+"ad=new Function('e','this.s_l=1;var wd=window,s;if(wd.s_c_il){s=wd.s_c_il['+s._in+'];s.bcr();s.mrq(\"'+un+'\");s.nrs--;if(!s.nrs)s.m_m(\"rr\")}');if(!s.nrs){s.nrs=1;s.m_m('rs')}else s.nrs++;im.src="
+"rs;if(s.useForcedLinkTracking||s.bcf){if(!s.forcedLinkTrackingTimeout)s.forcedLinkTrackingTimeout=250;setTimeout('var wd=window,s;if(wd.s_c_il){s=wd.s_c_il['+s._in+'];s.bcr()}',s.forcedLinkTracking"
+"Timeout);}else if((s.lnk||s.eo)&&(!ta||ta=='_self'||ta=='_top'||(s.wd.name&&ta==s.wd.name))){b=e=new Date;while(!im.s_l&&e.getTime()-b.getTime()<500)e=new Date}return ''}return '<im'+'g sr'+'c=\"'+"
+"rs+'\" width=1 height=1 border=0 alt=\"\">'};s.gg=function(v){var s=this;if(!s.wd['s_'+v])s.wd['s_'+v]='';return s.wd['s_'+v]};s.glf=function(t,a){if(t.substring(0,2)=='s_')t=t.substring(2);var s=t"
+"his,v=s.gg(t);if(v)s[t]=v};s.gl=function(v){var s=this;if(s.pg)s.pt(v,',','glf',0)};s.rf=function(x){var s=this,y,i,j,h,p,l=0,q,a,b='',c='',t;if(x&&x.length>255){y=''+x;i=y.indexOf('?');if(i>0){q=y"
+".substring(i+1);y=y.substring(0,i);h=y.toLowerCase();j=0;if(h.substring(0,7)=='http://')j+=7;else if(h.substring(0,8)=='https://')j+=8;i=h.indexOf(\"/\",j);if(i>0){h=h.substring(j,i);p=y.substring("
+"i);y=y.substring(0,i);if(h.indexOf('google')>=0)l=',q,ie,start,search_key,word,kw,cd,';else if(h.indexOf('yahoo.co')>=0)l=',p,ei,';if(l&&q){a=s.sp(q,'&');if(a&&a.length>1){for(j=0;j<a.length;j++){t"
+"=a[j];i=t.indexOf('=');if(i>0&&l.indexOf(','+t.substring(0,i)+',')>=0)b+=(b?'&':'')+t;else c+=(c?'&':'')+t}if(b&&c)q=b+'&'+c;else c=''}i=253-(q.length-c.length)-y.length;x=y+(i>0?p.substring(0,i):'"
+"')+'?'+q}}}}return x};s.s2q=function(k,v,vf,vfp,f){var s=this,qs='',sk,sv,sp,ss,nke,nk,nf,nfl=0,nfn,nfm;if(k==\"contextData\")k=\"c\";if(v){for(sk in v)if((!f||sk.substring(0,f.length)==f)&&v[sk]&&"
+"(!vf||vf.indexOf(','+(vfp?vfp+'.':'')+sk+',')>=0)&&(!Object||!Object.prototype||!Object.prototype[sk])){nfm=0;if(nfl)for(nfn=0;nfn<nfl.length;nfn++)if(sk.substring(0,nfl[nfn].length)==nfl[nfn])nfm="
+"1;if(!nfm){if(qs=='')qs+='&'+k+'.';sv=v[sk];if(f)sk=sk.substring(f.length);if(sk.length>0){nke=sk.indexOf('.');if(nke>0){nk=sk.substring(0,nke);nf=(f?f:'')+nk+'.';if(!nfl)nfl=new Array;nfl[nfl.leng"
+"th]=nf;qs+=s.s2q(nk,v,vf,vfp,nf)}else{if(typeof(sv)=='boolean'){if(sv)sv='true';else sv='false'}if(sv){if(vfp=='retrieveLightData'&&f.indexOf('.contextData.')<0){sp=sk.substring(0,4);ss=sk.substrin"
+"g(4);if(sk=='transactionID')sk='xact';else if(sk=='channel')sk='ch';else if(sk=='campaign')sk='v0';else if(s.num(ss)){if(sp=='prop')sk='c'+ss;else if(sp=='eVar')sk='v'+ss;else if(sp=='list')sk='l'+"
+"ss;else if(sp=='hier'){sk='h'+ss;sv=sv.substring(0,255)}}}qs+='&'+s.ape(sk)+'='+s.ape(sv)}}}}}if(qs!='')qs+='&.'+k}return qs};s.hav=function(){var s=this,qs='',l,fv='',fe='',mn,i,e;if(s.lightProfil"
+"eID){l=s.va_m;fv=s.lightTrackVars;if(fv)fv=','+fv+','+s.vl_mr+','}else{l=s.va_t;if(s.pe||s.linkType){fv=s.linkTrackVars;fe=s.linkTrackEvents;if(s.pe){mn=s.pe.substring(0,1).toUpperCase()+s.pe.subst"
+"ring(1);if(s[mn]){fv=s[mn].trackVars;fe=s[mn].trackEvents}}}if(fv)fv=','+fv+','+s.vl_l+','+s.vl_l2;if(fe){fe=','+fe+',';if(fv)fv+=',events,'}if (s.events2)e=(e?',':'')+s.events2}for(i=0;i<l.length;"
+"i++){var k=l[i],v=s[k],b=k.substring(0,4),x=k.substring(4),n=parseInt(x),q=k;if(!v)if(k=='events'&&e){v=e;e=''}if(v&&(!fv||fv.indexOf(','+k+',')>=0)&&k!='linkName'&&k!='linkType'){if(k=='timestamp'"
+")q='ts';else if(k=='dynamicVariablePrefix')q='D';else if(k=='visitorID')q='vid';else if(k=='pageURL'){q='g';v=s.fl(v,255)}else if(k=='referrer'){q='r';v=s.fl(s.rf(v),255)}else if(k=='vmk'||k=='visi"
+"torMigrationKey')q='vmt';else if(k=='visitorMigrationServer'){q='vmf';if(s.ssl&&s.visitorMigrationServerSecure)v=''}else if(k=='visitorMigrationServerSecure'){q='vmf';if(!s.ssl&&s.visitorMigrationS"
+"erver)v=''}else if(k=='charSet'){q='ce';if(v.toUpperCase()=='AUTO')v='ISO8859-1';else if(s.em==2||s.em==3)v='UTF-8'}else if(k=='visitorNamespace')q='ns';else if(k=='cookieDomainPeriods')q='cdp';els"
+"e if(k=='cookieLifetime')q='cl';else if(k=='variableProvider')q='vvp';else if(k=='currencyCode')q='cc';else if(k=='channel')q='ch';else if(k=='transactionID')q='xact';else if(k=='campaign')q='v0';e"
+"lse if(k=='resolution')q='s';else if(k=='colorDepth')q='c';else if(k=='javascriptVersion')q='j';else if(k=='javaEnabled')q='v';else if(k=='cookiesEnabled')q='k';else if(k=='browserWidth')q='bw';els"
+"e if(k=='browserHeight')q='bh';else if(k=='connectionType')q='ct';else if(k=='homepage')q='hp';else if(k=='plugins')q='p';else if(k=='events'){if(e)v+=(v?',':'')+e;if(fe)v=s.fs(v,fe)}else if(k=='ev"
+"ents2')v='';else if(k=='contextData'){qs+=s.s2q('c',s[k],fv,k,0);v=''}else if(k=='lightProfileID')q='mtp';else if(k=='lightStoreForSeconds'){q='mtss';if(!s.lightProfileID)v=''}else if(k=='lightIncr"
+"ementBy'){q='mti';if(!s.lightProfileID)v=''}else if(k=='retrieveLightProfiles')q='mtsr';else if(k=='deleteLightProfiles')q='mtsd';else if(k=='retrieveLightData'){if(s.retrieveLightProfiles)qs+=s.s2"
+"q('mts',s[k],fv,k,0);v=''}else if(s.num(x)){if(b=='prop')q='c'+n;else if(b=='eVar')q='v'+n;else if(b=='list')q='l'+n;else if(b=='hier'){q='h'+n;v=s.fl(v,255)}}if(v)qs+='&'+s.ape(q)+'='+(k.substring"
+"(0,3)!='pev'?s.ape(v):v)}}return qs};s.ltdf=function(t,h){t=t?t.toLowerCase():'';h=h?h.toLowerCase():'';var qi=h.indexOf('?');h=qi>=0?h.substring(0,qi):h;if(t&&h.substring(h.length-(t.length+1))=='"
+".'+t)return 1;return 0};s.ltef=function(t,h){t=t?t.toLowerCase():'';h=h?h.toLowerCase():'';if(t&&h.indexOf(t)>=0)return 1;return 0};s.lt=function(h){var s=this,lft=s.linkDownloadFileTypes,lef=s.lin"
+"kExternalFilters,lif=s.linkInternalFilters;lif=lif?lif:s.wd.location.hostname;h=h.toLowerCase();if(s.trackDownloadLinks&&lft&&s.pt(lft,',','ltdf',h))return 'd';if(s.trackExternalLinks&&h.substring("
+"0,1)!='#'&&(lef||lif)&&(!lef||s.pt(lef,',','ltef',h))&&(!lif||!s.pt(lif,',','ltef',h)))return 'e';return ''};s.lc=new Function('e','var s=s_c_il['+s._in+'],b=s.eh(this,\"onclick\");s.lnk=this;s.t()"
+";s.lnk=0;if(b)return this[b](e);return true');s.bcr=function(){var s=this;if(s.bct&&s.bce)s.bct.dispatchEvent(s.bce);if(s.bcf){if(typeof(s.bcf)=='function')s.bcf();else if(s.bct&&s.bct.href)s.d.loc"
+"ation=s.bct.href}s.bct=s.bce=s.bcf=0};s.bc=new Function('e','if(e&&e.s_fe)return;var s=s_c_il['+s._in+'],f,tcf,t,n;if(s.d&&s.d.all&&s.d.all.cppXYctnr)return;if(!s.bbc)s.useForcedLinkTracking=0;else"
+" if(!s.useForcedLinkTracking){s.b.removeEventListener(\"click\",s.bc,true);s.bbc=s.useForcedLinkTracking=0;return}else s.b.removeEventListener(\"click\",s.bc,false);s.eo=e.srcElement?e.srcElement:e"
+".target;s.t();s.eo=0;if(s.nrs>0&&s.useForcedLinkTracking&&e.target){t=e.target.target;if(e.target.dispatchEvent&&(!t||t==\\'_self\\'||t==\\'_top\\'||(s.wd.name&&t==s.wd.name))){e.stopPropagation();"
+"e.stopImmediatePropagation();e.preventDefault();n=s.d.createEvent(\"MouseEvents\");n.initMouseEvent(\"click\",e.bubbles,e.cancelable,e.view,e.detail,e.screenX,e.screenY,e.clientX,e.clientY,e.ctrlKe"
+"y,e.altKey,e.shiftKey,e.metaKey,e.button,e.relatedTarget);n.s_fe=1;s.bct=e.target;s.bce=n;}}');s.oh=function(o){var s=this,l=s.wd.location,h=o.href?o.href:'',i,j,k,p;i=h.indexOf(':');j=h.indexOf('?"
+"');k=h.indexOf('/');if(h&&(i<0||(j>=0&&i>j)||(k>=0&&i>k))){p=o.protocol&&o.protocol.length>1?o.protocol:(l.protocol?l.protocol:'');i=l.pathname.lastIndexOf('/');h=(p?p+'//':'')+(o.host?o.host:(l.ho"
+"st?l.host:''))+(h.substring(0,1)!='/'?l.pathname.substring(0,i<0?0:i)+'/':'')+h}return h};s.ot=function(o){var t=o.tagName;if(o.tagUrn||(o.scopeName&&o.scopeName.toUpperCase()!='HTML'))return '';t="
+"t&&t.toUpperCase?t.toUpperCase():'';if(t=='SHAPE')t='';if(t){if((t=='INPUT'||t=='BUTTON')&&o.type&&o.type.toUpperCase)t=o.type.toUpperCase();else if(!t&&o.href)t='A';}return t};s.oid=function(o){va"
+"r s=this,t=s.ot(o),p,c,n='',x=0;if(t&&!o.s_oid){p=o.protocol;c=o.onclick;if(o.href&&(t=='A'||t=='AREA')&&(!c||!p||p.toLowerCase().indexOf('javascript')<0))n=s.oh(o);else if(c){n=s.rep(s.rep(s.rep(s"
+".rep(''+c,\"\\r\",''),\"\\n\",''),\"\\t\",''),' ','');x=2}else if(t=='INPUT'||t=='SUBMIT'){if(o.value)n=o.value;else if(o.innerText)n=o.innerText;else if(o.textContent)n=o.textContent;x=3}else if(o"
+".src&&t=='IMAGE')n=o.src;if(n){o.s_oid=s.fl(n,100);o.s_oidt=x}}return o.s_oid};s.rqf=function(t,un){var s=this,e=t.indexOf('='),u=e>=0?t.substring(0,e):'',q=e>=0?s.epa(t.substring(e+1)):'';if(u&&q&"
+"&(','+u+',').indexOf(','+un+',')>=0){if(u!=s.un&&s.un.indexOf(',')>=0)q='&u='+u+q+'&u=0';return q}return ''};s.rq=function(un){if(!un)un=this.un;var s=this,c=un.indexOf(','),v=s.c_r('s_sq'),q='';if"
+"(c<0)return s.pt(v,'&','rqf',un);return s.pt(un,',','rq',0)};s.sqp=function(t,a){var s=this,e=t.indexOf('='),q=e<0?'':s.epa(t.substring(e+1));s.sqq[q]='';if(e>=0)s.pt(t.substring(0,e),',','sqs',q);"
+"return 0};s.sqs=function(un,q){var s=this;s.squ[un]=q;return 0};s.sq=function(q){var s=this,k='s_sq',v=s.c_r(k),x,c=0;s.sqq=new Object;s.squ=new Object;s.sqq[q]='';s.pt(v,'&','sqp',0);s.pt(s.un,','"
+",'sqs',q);v='';for(x in s.squ)if(x&&(!Object||!Object.prototype||!Object.prototype[x]))s.sqq[s.squ[x]]+=(s.sqq[s.squ[x]]?',':'')+x;for(x in s.sqq)if(x&&(!Object||!Object.prototype||!Object.prototyp"
+"e[x])&&s.sqq[x]&&(x==q||c<2)){v+=(v?'&':'')+s.sqq[x]+'='+s.ape(x);c++}return s.c_w(k,v,0)};s.wdl=new Function('e','var s=s_c_il['+s._in+'],r=true,b=s.eh(s.wd,\"onload\"),i,o,oc;if(b)r=this[b](e);fo"
+"r(i=0;i<s.d.links.length;i++){o=s.d.links[i];oc=o.onclick?\"\"+o.onclick:\"\";if((oc.indexOf(\"s_gs(\")<0||oc.indexOf(\".s_oc(\")>=0)&&oc.indexOf(\".tl(\")<0)s.eh(o,\"onclick\",0,s.lc);}return r');"
+"s.wds=function(){var s=this;if(s.apv>3&&(!s.isie||!s.ismac||s.apv>=5)){if(s.b&&s.b.attachEvent)s.b.attachEvent('onclick',s.bc);else if(s.b&&s.b.addEventListener){if(s.n&&s.n.userAgent.indexOf('WebK"
+"it')>=0&&s.d.createEvent){s.bbc=1;s.useForcedLinkTracking=1;s.b.addEventListener('click',s.bc,true)}s.b.addEventListener('click',s.bc,false)}else s.eh(s.wd,'onload',0,s.wdl)}};s.vs=function(x){var "
+"s=this,v=s.visitorSampling,g=s.visitorSamplingGroup,k='s_vsn_'+s.un+(g?'_'+g:''),n=s.c_r(k),e=new Date,y=e.getYear();e.setYear(y+10+(y<1900?1900:0));if(v){v*=100;if(!n){if(!s.c_w(k,x,e))return 0;n="
+"x}if(n%10000>v)return 0}return 1};s.dyasmf=function(t,m){if(t&&m&&m.indexOf(t)>=0)return 1;return 0};s.dyasf=function(t,m){var s=this,i=t?t.indexOf('='):-1,n,x;if(i>=0&&m){var n=t.substring(0,i),x="
+"t.substring(i+1);if(s.pt(x,',','dyasmf',m))return n}return 0};s.uns=function(){var s=this,x=s.dynamicAccountSelection,l=s.dynamicAccountList,m=s.dynamicAccountMatch,n,i;s.un=s.un.toLowerCase();if(x"
+"&&l){if(!m)m=s.wd.location.host;if(!m.toLowerCase)m=''+m;l=l.toLowerCase();m=m.toLowerCase();n=s.pt(l,';','dyasf',m);if(n)s.un=n}i=s.un.indexOf(',');s.fun=i<0?s.un:s.un.substring(0,i)};s.sa=functio"
+"n(un){var s=this;if(s.un&&s.mpc('sa',arguments))return;s.un=un;if(!s.oun)s.oun=un;else if((','+s.oun+',').indexOf(','+un+',')<0)s.oun+=','+un;s.uns()};s.m_i=function(n,a){var s=this,m,f=n.substring"
+"(0,1),r,l,i;if(!s.m_l)s.m_l=new Object;if(!s.m_nl)s.m_nl=new Array;m=s.m_l[n];if(!a&&m&&m._e&&!m._i)s.m_a(n);if(!m){m=new Object,m._c='s_m';m._in=s.wd.s_c_in;m._il=s._il;m._il[m._in]=m;s.wd.s_c_in+"
+"+;m.s=s;m._n=n;m._l=new Array('_c','_in','_il','_i','_e','_d','_dl','s','n','_r','_g','_g1','_t','_t1','_x','_x1','_rs','_rr','_l');s.m_l[n]=m;s.m_nl[s.m_nl.length]=n}else if(m._r&&!m._m){r=m._r;r."
+"_m=m;l=m._l;for(i=0;i<l.length;i++)if(m[l[i]])r[l[i]]=m[l[i]];r._il[r._in]=r;m=s.m_l[n]=r}if(f==f.toUpperCase())s[n]=m;return m};s.m_a=new Function('n','g','e','if(!g)g=\"m_\"+n;var s=s_c_il['+s._i"
+"n+'],c=s[g+\"_c\"],m,x,f=0;if(s.mpc(\"m_a\",arguments))return;if(!c)c=s.wd[\"s_\"+g+\"_c\"];if(c&&s_d)s[g]=new Function(\"s\",s_ft(s_d(c)));x=s[g];if(!x)x=s.wd[\\'s_\\'+g];if(!x)x=s.wd[g];m=s.m_i(n"
+",1);if(x&&(!m._i||g!=\"m_\"+n)){m._i=f=1;if((\"\"+x).indexOf(\"function\")>=0)x(s);else s.m_m(\"x\",n,x,e)}m=s.m_i(n,1);if(m._dl)m._dl=m._d=0;s.dlt();return f');s.m_m=function(t,n,d,e){t='_'+t;var "
+"s=this,i,x,m,f='_'+t,r=0,u;if(s.m_l&&s.m_nl)for(i=0;i<s.m_nl.length;i++){x=s.m_nl[i];if(!n||x==n){m=s.m_i(x);u=m[t];if(u){if((''+u).indexOf('function')>=0){if(d&&e)u=m[t](d,e);else if(d)u=m[t](d);e"
+"lse u=m[t]()}}if(u)r=1;u=m[t+1];if(u&&!m[f]){if((''+u).indexOf('function')>=0){if(d&&e)u=m[t+1](d,e);else if(d)u=m[t+1](d);else u=m[t+1]()}}m[f]=1;if(u)r=1}}return r};s.m_ll=function(){var s=this,g"
+"=s.m_dl,i,o;if(g)for(i=0;i<g.length;i++){o=g[i];if(o)s.loadModule(o.n,o.u,o.d,o.l,o.e,1);g[i]=0}};s.loadModule=function(n,u,d,l,e,ln){var s=this,m=0,i,g,o=0,f1,f2,c=s.h?s.h:s.b,b,tcf;if(n){i=n.inde"
+"xOf(':');if(i>=0){g=n.substring(i+1);n=n.substring(0,i)}else g=\"m_\"+n;m=s.m_i(n)}if((l||(n&&!s.m_a(n,g)))&&u&&s.d&&c&&s.d.createElement){if(d){m._d=1;m._dl=1}if(ln){if(s.ssl)u=s.rep(u,'http:','ht"
+"tps:');i='s_s:'+s._in+':'+n+':'+g;b='var s=s_c_il['+s._in+'],o=s.d.getElementById(\"'+i+'\");if(s&&o){if(!o.l&&s.wd.'+g+'){o.l=1;if(o.i)clearTimeout(o.i);o.i=0;s.m_a(\"'+n+'\",\"'+g+'\"'+(e?',\"'+e"
+"+'\"':'')+')}';f2=b+'o.c++;if(!s.maxDelay)s.maxDelay=250;if(!o.l&&o.c<(s.maxDelay*2)/100)o.i=setTimeout(o.f2,100)}';f1=new Function('e',b+'}');tcf=new Function('s','c','i','u','f1','f2','var e,o=0;"
+"try{o=s.d.createElement(\"script\");if(o){o.type=\"text/javascript\";'+(n?'o.id=i;o.defer=true;o.onload=o.onreadystatechange=f1;o.f2=f2;o.l=0;':'')+'o.src=u;c.appendChild(o);'+(n?'o.c=0;o.i=setTime"
+"out(f2,100)':'')+'}}catch(e){o=0}return o');o=tcf(s,c,i,u,f1,f2)}else{o=new Object;o.n=n+':'+g;o.u=u;o.d=d;o.l=l;o.e=e;g=s.m_dl;if(!g)g=s.m_dl=new Array;i=0;while(i<g.length&&g[i])i++;g[i]=o}}else "
+"if(n){m=s.m_i(n);m._e=1}return m};s.voa=function(vo,r){var s=this,l=s.va_g,i,k,v,x;for(i=0;i<l.length;i++){k=l[i];v=vo[k];if(v||vo['!'+k]){if(!r&&(k==\"contextData\"||k==\"retrieveLightData\")&&s[k"
+"])for(x in s[k])if(!v[x])v[x]=s[k][x];s[k]=v}}};s.vob=function(vo){var s=this,l=s.va_g,i,k;for(i=0;i<l.length;i++){k=l[i];vo[k]=s[k];if(!vo[k])vo['!'+k]=1}};s.dlt=new Function('var s=s_c_il['+s._in"
+"+'],d=new Date,i,vo,f=0;if(s.dll)for(i=0;i<s.dll.length;i++){vo=s.dll[i];if(vo){if(!s.m_m(\"d\")||d.getTime()-vo._t>=s.maxDelay){s.dll[i]=0;s.t(vo)}else f=1}}if(s.dli)clearTimeout(s.dli);s.dli=0;if"
+"(f){if(!s.dli)s.dli=setTimeout(s.dlt,s.maxDelay)}else s.dll=0');s.dl=function(vo){var s=this,d=new Date;if(!vo)vo=new Object;s.vob(vo);vo._t=d.getTime();if(!s.dll)s.dll=new Array;s.dll[s.dll.length"
+"]=vo;if(!s.maxDelay)s.maxDelay=250;s.dlt()};s.track=s.t=function(vo){var s=this,trk=1,tm=new Date,sed=Math&&Math.random?Math.floor(Math.random()*10000000000000):tm.getTime(),sess='s'+Math.floor(tm."
+"getTime()/10800000)%10+sed,y=tm.getYear(),vt=tm.getDate()+'/'+tm.getMonth()+'/'+(y<1900?y+1900:y)+' '+tm.getHours()+':'+tm.getMinutes()+':'+tm.getSeconds()+' '+tm.getDay()+' '+tm.getTimezoneOffset("
+"),tcf,tfs=s.gtfs(),ta=-1,q='',qs='',code='',vb=new Object;if(s.mpc('t',arguments))return;s.gl(s.vl_g);s.uns();s.m_ll();if(!s.td){var tl=tfs.location,a,o,i,x='',c='',v='',p='',bw='',bh='',j='1.0',k="
+"s.c_w('s_cc','true',0)?'Y':'N',hp='',ct='',pn=0,ps;if(String&&String.prototype){j='1.1';if(j.match){j='1.2';if(tm.setUTCDate){j='1.3';if(s.isie&&s.ismac&&s.apv>=5)j='1.4';if(pn.toPrecision){j='1.5'"
+";a=new Array;if(a.forEach){j='1.6';i=0;o=new Object;tcf=new Function('o','var e,i=0;try{i=new Iterator(o)}catch(e){}return i');i=tcf(o);if(i&&i.next)j='1.7'}}}}}if(s.apv>=4)x=screen.width+'x'+scree"
+"n.height;if(s.isns||s.isopera){if(s.apv>=3){v=s.n.javaEnabled()?'Y':'N';if(s.apv>=4){c=screen.pixelDepth;bw=s.wd.innerWidth;bh=s.wd.innerHeight}}s.pl=s.n.plugins}else if(s.isie){if(s.apv>=4){v=s.n."
+"javaEnabled()?'Y':'N';c=screen.colorDepth;if(s.apv>=5){bw=s.d.documentElement.offsetWidth;bh=s.d.documentElement.offsetHeight;if(!s.ismac&&s.b){tcf=new Function('s','tl','var e,hp=0;try{s.b.addBeha"
+"vior(\"#default#homePage\");hp=s.b.isHomePage(tl)?\"Y\":\"N\"}catch(e){}return hp');hp=tcf(s,tl);tcf=new Function('s','var e,ct=0;try{s.b.addBehavior(\"#default#clientCaps\");ct=s.b.connectionType}"
+"catch(e){}return ct');ct=tcf(s)}}}else r=''}if(s.pl)while(pn<s.pl.length&&pn<30){ps=s.fl(s.pl[pn].name,100)+';';if(p.indexOf(ps)<0)p+=ps;pn++}s.resolution=x;s.colorDepth=c;s.javascriptVersion=j;s.j"
+"avaEnabled=v;s.cookiesEnabled=k;s.browserWidth=bw;s.browserHeight=bh;s.connectionType=ct;s.homepage=hp;s.plugins=p;s.td=1}if(vo){s.vob(vb);s.voa(vo)}if((vo&&vo._t)||!s.m_m('d')){if(s.usePlugins)s.d"
+"oPlugins(s);var l=s.wd.location,r=tfs.document.referrer;if(!s.pageURL)s.pageURL=l.href?l.href:l;if(!s.referrer&&!s._1_referrer){s.referrer=r;s._1_referrer=1}s.m_m('g');if(s.lnk||s.eo){var o=s.eo?s."
+"eo:s.lnk,p=s.pageName,w=1,t=s.ot(o),n=s.oid(o),x=o.s_oidt,h,l,i,oc;if(s.eo&&o==s.eo){while(o&&!n&&t!='BODY'){o=o.parentElement?o.parentElement:o.parentNode;if(o){t=s.ot(o);n=s.oid(o);x=o.s_oidt}}if"
+"(!n||t=='BODY')o='';if(o){oc=o.onclick?''+o.onclick:'';if((oc.indexOf('s_gs(')>=0&&oc.indexOf('.s_oc(')<0)||oc.indexOf('.tl(')>=0)o=0}}if(o){if(n)ta=o.target;h=s.oh(o);i=h.indexOf('?');h=s.linkLeav"
+"eQueryString||i<0?h:h.substring(0,i);l=s.linkName;t=s.linkType?s.linkType.toLowerCase():s.lt(h);if(t&&(h||l)){s.pe='lnk_'+(t=='d'||t=='e'?t:'o');s.pev1=(h?s.ape(h):'');s.pev2=(l?s.ape(l):'')}else t"
+"rk=0;if(s.trackInlineStats){if(!p){p=s.pageURL;w=0}t=s.ot(o);i=o.sourceIndex;if(o.dataset&&o.dataset.sObjectId){s.wd.s_objectID=o.dataset.sObjectId;}else if(o.getAttribute&&o.getAttribute('data-s-o"
+"bject-id')){s.wd.s_objectID=o.getAttribute('data-s-object-id');}else if(s.useForcedLinkTracking){s.wd.s_objectID='';oc=o.onclick?''+o.onclick:'';if(oc){var ocb=oc.indexOf('s_objectID'),oce,ocq,ocx;"
+"if(ocb>=0){ocb+=10;while(ocb<oc.length&&(\"= \\t\\r\\n\").indexOf(oc.charAt(ocb))>=0)ocb++;if(ocb<oc.length){oce=ocb;ocq=ocx=0;while(oce<oc.length&&(oc.charAt(oce)!=';'||ocq)){if(ocq){if(oc.charAt("
+"oce)==ocq&&!ocx)ocq=0;else if(oc.charAt(oce)==\"\\\\\")ocx=!ocx;else ocx=0;}else{ocq=oc.charAt(oce);if(ocq!='\"'&&ocq!=\"'\")ocq=0}oce++;}oc=oc.substring(ocb,oce);if(oc){o.s_soid=new Function('s','"
+"var e;try{s.wd.s_objectID='+oc+'}catch(e){}');o.s_soid(s)}}}}}if(s.gg('objectID')){n=s.gg('objectID');x=1;i=1}if(p&&n&&t)qs='&pid='+s.ape(s.fl(p,255))+(w?'&pidt='+w:'')+'&oid='+s.ape(s.fl(n,100))+("
+"x?'&oidt='+x:'')+'&ot='+s.ape(t)+(i?'&oi='+i:'')}}else trk=0}if(trk||qs){s.sampled=s.vs(sed);if(trk){if(s.sampled)code=s.mr(sess,(vt?'&t='+s.ape(vt):'')+s.hav()+q+(qs?qs:s.rq()),0,ta);qs='';s.m_m('"
+"t');if(s.p_r)s.p_r();s.referrer=s.lightProfileID=s.retrieveLightProfiles=s.deleteLightProfiles=''}s.sq(qs)}}else s.dl(vo);if(vo)s.voa(vb,1);s.lnk=s.eo=s.linkName=s.linkType=s.wd.s_objectID=s.ppu=s."
+"pe=s.pev1=s.pev2=s.pev3='';if(s.pg)s.wd.s_lnk=s.wd.s_eo=s.wd.s_linkName=s.wd.s_linkType='';return code};s.trackLink=s.tl=function(o,t,n,vo,f){var s=this;s.lnk=o;s.linkType=t;s.linkName=n;if(f){s.bc"
+"t=o;s.bcf=f}s.t(vo)};s.trackLight=function(p,ss,i,vo){var s=this;s.lightProfileID=p;s.lightStoreForSeconds=ss;s.lightIncrementBy=i;s.t(vo)};s.setTagContainer=function(n){var s=this,l=s.wd.s_c_il,i,"
+"t,x,y;s.tcn=n;if(l)for(i=0;i<l.length;i++){t=l[i];if(t&&t._c=='s_l'&&t.tagContainerName==n){s.voa(t);if(t.lmq)for(i=0;i<t.lmq.length;i++){x=t.lmq[i];y='m_'+x.n;if(!s[y]&&!s[y+'_c']){s[y]=t[y];s[y+'"
+"_c']=t[y+'_c']}s.loadModule(x.n,x.u,x.d)}if(t.ml)for(x in t.ml)if(s[x]){y=s[x];x=t.ml[x];for(i in x)if(!Object.prototype[i]){if(typeof(x[i])!='function'||(''+x[i]).indexOf('s_c_il')<0)y[i]=x[i]}}if"
+"(t.mmq)for(i=0;i<t.mmq.length;i++){x=t.mmq[i];if(s[x.m]){y=s[x.m];if(y[x.f]&&typeof(y[x.f])=='function'){if(x.a)y[x.f].apply(y,x.a);else y[x.f].apply(y)}}}if(t.tq)for(i=0;i<t.tq.length;i++)s.t(t.tq"
+"[i]);t.s=s;return}}};s.wd=window;s.ssl=(s.wd.location.protocol.toLowerCase().indexOf('https')>=0);s.d=document;s.b=s.d.body;if(s.d.getElementsByTagName){s.h=s.d.getElementsByTagName('HEAD');if(s.h)"
+"s.h=s.h[0]}s.n=navigator;s.u=s.n.userAgent;s.ns6=s.u.indexOf('Netscape6/');var apn=s.n.appName,v=s.n.appVersion,ie=v.indexOf('MSIE '),o=s.u.indexOf('Opera '),i;if(v.indexOf('Opera')>=0||o>0)apn='Op"
+"era';s.isie=(apn=='Microsoft Internet Explorer');s.isns=(apn=='Netscape');s.isopera=(apn=='Opera');s.ismac=(s.u.indexOf('Mac')>=0);if(o>0)s.apv=parseFloat(s.u.substring(o+6));else if(ie>0){s.apv=pa"
+"rseInt(i=v.substring(ie+5));if(s.apv>3)s.apv=parseFloat(i)}else if(s.ns6>0)s.apv=parseFloat(s.u.substring(s.ns6+10));else s.apv=parseFloat(v);s.em=0;if(s.em.toPrecision)s.em=3;else if(String.fromCh"
+"arCode){i=escape(String.fromCharCode(256)).toUpperCase();s.em=(i=='%C4%80'?2:(i=='%U0100'?1:0))}if(s.oun)s.sa(s.oun);s.sa(un);s.vl_l='timestamp,dynamicVariablePrefix,visitorID,vmk,visitorMigrationK"
+"ey,visitorMigrationServer,visitorMigrationServerSecure,ppu,charSet,visitorNamespace,cookieDomainPeriods,cookieLifetime,pageName,pageURL,referrer,contextData,currencyCode,lightProfileID,lightStoreFo"
+"rSeconds,lightIncrementBy,retrieveLightProfiles,deleteLightProfiles,retrieveLightData';s.va_l=s.sp(s.vl_l,',');s.vl_mr=s.vl_m='timestamp,charSet,visitorNamespace,cookieDomainPeriods,cookieLifetime,"
+"contextData,lightProfileID,lightStoreForSeconds,lightIncrementBy';s.vl_t=s.vl_l+',variableProvider,channel,server,pageType,transactionID,purchaseID,campaign,state,zip,events,events2,products,linkNa"
+"me,linkType';var n;for(n=1;n<=75;n++){s.vl_t+=',prop'+n+',eVar'+n;s.vl_m+=',prop'+n+',eVar'+n}for(n=1;n<=5;n++)s.vl_t+=',hier'+n;for(n=1;n<=3;n++)s.vl_t+=',list'+n;s.va_m=s.sp(s.vl_m,',');s.vl_l2='"
+",tnt,pe,pev1,pev2,pev3,resolution,colorDepth,javascriptVersion,javaEnabled,cookiesEnabled,browserWidth,browserHeight,connectionType,homepage,plugins';s.vl_t+=s.vl_l2;s.va_t=s.sp(s.vl_t,',');s.vl_g="
+"s.vl_t+',trackingServer,trackingServerSecure,trackingServerBase,fpCookieDomainPeriods,disableBufferedRequests,mobile,visitorSampling,visitorSamplingGroup,dynamicAccountSelection,dynamicAccountList,"
+"dynamicAccountMatch,trackDownloadLinks,trackExternalLinks,trackInlineStats,linkLeaveQueryString,linkDownloadFileTypes,linkExternalFilters,linkInternalFilters,linkTrackVars,linkTrackEvents,linkNames"
+",lnk,eo,lightTrackVars,_1_referrer,un';s.va_g=s.sp(s.vl_g,',');s.pg=pg;s.gl(s.vl_g);s.contextData=new Object;s.retrieveLightData=new Object;if(!ss)s.wds();if(pg){s.wd.s_co=function(o){return o};s.w"
+"d.s_gs=function(un){s_gi(un,1,1).t()};s.wd.s_dc=function(un){s_gi(un,1).t()}}",w=window,l=w.s_c_il,n=navigator,u=n.userAgent,v=n.appVersion,e=v.indexOf('MSIE '),m=u.indexOf('Netscape6/'),a,i,j,x,s;if(un){un=un.toLowerCase();if(l)for(j=0;j<2;j++)for(i=0;i<l.length;i++){s=l[i];x=s._c;if((!x||x=='s_c'||(j>0&&x=='s_l'))&&(s.oun==un||(s.fs&&s.sa&&s.fs(s.oun,un)))){if(s.sa)s.sa(un);if(x=='s_c')return s}else s=0}}w.s_an='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';w.s_sp=new Function("x","d","var a=new Array,i=0,j;if(x){if(x.split)a=x.split(d);else if(!d)for(i=0;i<x.length;i++)a[a.length]=x.substring(i,i+1);else while(i>=0){j=x.indexOf(d,i);a[a.length]=x.subst"
+"ring(i,j<0?x.length:j);i=j;if(i>=0)i+=d.length}}return a");w.s_jn=new Function("a","d","var x='',i,j=a.length;if(a&&j>0){x=a[0];if(j>1){if(a.join)x=a.join(d);else for(i=1;i<j;i++)x+=d+a[i]}}return x");w.s_rep=new Function("x","o","n","return s_jn(s_sp(x,o),n)");w.s_d=new Function("x","var t='`^@$#',l=s_an,l2=new Object,x2,d,b=0,k,i=x.lastIndexOf('~~'),j,v,w;if(i>0){d=x.substring(0,i);x=x.substring(i+2);l=s_sp(l,'');for(i=0;i<62;i++)l2[l[i]]=i;t=s_sp(t,'');d"
+"=s_sp(d,'~');i=0;while(i<5){v=0;if(x.indexOf(t[i])>=0) {x2=s_sp(x,t[i]);for(j=1;j<x2.length;j++){k=x2[j].substring(0,1);w=t[i]+k;if(k!=' '){v=1;w=d[b+l2[k]]}x2[j]=w+x2[j].substring(1)}}if(v)x=s_jn("
+"x2,'');else{w=t[i]+' ';if(x.indexOf(w)>=0)x=s_rep(x,w,t[i]);i++;b+=62}}}return x");w.s_fe=new Function("c","return s_rep(s_rep(s_rep(c,'\\\\','\\\\\\\\'),'\"','\\\\\"'),\"\\n\",\"\\\\n\")");w.s_fa=new Function("f","var s=f.indexOf('(')+1,e=f.indexOf(')'),a='',c;while(s>=0&&s<e){c=f.substring(s,s+1);if(c==',')a+='\",\"';else if((\"\\n\\r\\t \").indexOf(c)<0)a+=c;s++}return a?'\"'+a+'\"':"
+"a");w.s_ft=new Function("c","c+='';var s,e,o,a,d,q,f,h,x;s=c.indexOf('=function(');while(s>=0){s++;d=1;q='';x=0;f=c.substring(s);a=s_fa(f);e=o=c.indexOf('{',s);e++;while(d>0){h=c.substring(e,e+1);if(q){i"
+"f(h==q&&!x)q='';if(h=='\\\\')x=x?0:1;else x=0}else{if(h=='\"'||h==\"'\")q=h;if(h=='{')d++;if(h=='}')d--}if(d>0)e++}c=c.substring(0,s)+'new Function('+(a?a+',':'')+'\"'+s_fe(c.substring(o+1,e))+'\")"
+"'+c.substring(e+1);s=c.indexOf('=function(')}return c;");c=s_d(c);if(e>0){a=parseInt(i=v.substring(e+5));if(a>3)a=parseFloat(i)}else if(m>0)a=parseFloat(u.substring(m+10));else a=parseFloat(v);if(a<5||v.indexOf('Opera')>=0||u.indexOf('Opera')>=0)c=s_ft(c);if(!s){s=new Object;if(!w.s_c_in){w.s_c_il=new Array;w.s_c_in=0}s._il=w.s_c_il;s._in=w.s_c_in;s._il[s._in]=s;w.s_c_in++;}s._c='s_c';(new Function("s","un","pg","ss",c))(s,un,pg,ss);return s}
function s_giqf(){var w=window,q=w.s_giq,i,t,s;if(q)for(i=0;i<q.length;i++){t=q[i];s=s_gi(t.oun);s.sa(t.un);s.setTagContainer(t.tagContainerName)}w.s_giq=0}s_giqf()
var _eIBDWebVersionUrl="";var _eIBDPdfVersionUrl="";sInitSymbol=escape("0S&P5");var sDGOProductsSite="";intWidth=750;intHeight=375;sigprops="top=25,left=25,width=640,height=400,directories=no,status=no,location=0,toolbar=no,scrollbars=yes,resizable=yes,menubar=no,copyhistory=no,alwaysRaised=1,dependent=yes";if(screen.width>1024)
{intWidth=1024;intWidthPVC=1034;intHeight=screen.height-125;dgowindowprops="top=25,left=25"+",width="+intWidth+",height="+intHeight+"directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";dgowindowprints="top=2,left=25"+",width="+intWidth+",height="+intHeight+"directories=0,status=1,location=0,toolbar=1,scrollbars=1,resizable=1,menubar=1,copyhistory=0,alwaysRaised=0";}else if(screen.width==1024)
{intWidth=screen.width-100;intWidthPVC=screen.width-100;intHeight=screen.height-125;dgowindowprops="top=25,left=25"+",width="+intWidth+",height="+intHeight+"directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";dgowindowprints="top=2,left=25"+",width="+intWidth+",height="+intHeight+"directories=0,status=1,location=0,toolbar=1,scrollbars=1,resizable=1,menubar=1,copyhistory=0,alwaysRaised=0";}else
{intWidth=screen.width-100;intWidthPVC=screen.width-100;intHeight=screen.height-125;dgowindowprops="top=0,left=0"+",width="+intWidth+",height="+intHeight+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";dgowindowprints="top=0,left=0"+",width="+intWidth+",height="+intHeight+",directories=0,status=1,location=0,toolbar=1,scrollbars=1,resizable=1,menubar=1,copyhistory=0,alwaysRaised=0";}
var xwidth;xwidth=screen.width/300;if(xwidth<6)xwidth=4;if(xwidth>6)xwidth=5;intWidthSml=xwidth*124;intWidthSm=intWidthSml+42;var xheight;xheight=screen.height;if(xheight>800)intHeightSm=xheight*17/20;if(xheight<800)intHeightSm=xheight*17/20;var tHeight;tHeight=screen.height;var tWidth;tWidth=screen.width;intWidth2=600
intWidth3=screen.width*.85
intHeight2=screen.height-220
intHeight3=screen.height*.7
fundwindowprops="top=15,left=15"+",width="+intWidth3+",height="+intHeight3+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";compwindowprops="top=55,left=55"+",width="+intWidth3+",height="+intHeight3+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";igwindowprops="top=45,left=45"+",width="+intWidth3+",height="+intHeight3+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";ogwindowprops="top=45,left=45"+",width="+intWidth3+",height="+intHeight3+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";cswindowprops="top=35,left=35"+",width="+intWidth2+",height="+intHeight2+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=1,copyhistory=0,alwaysRaised=0";advscrwindowprops="top=35,left=35,width=620,height="+intHeight2+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=1,copyhistory=0,alwaysRaised=0";ibddwindowprops="top=25,left=25"+",width="+intWidthPVC+",height="+intHeight+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";ibdwwindowprops="top=20,left=20"+",width="+intWidthSm+",height="+intHeight+",directories=0,status=1,location=0,toolbar=0,scrollbars=0,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";cupwindowprops="top=0,left=25"+",width="+intWidth+",height="+(intHeight-25)+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=1,copyhistory=0,alwaysRaised=0";var arrGraphPopup=new Array();arrGraphPopup[0,0]=0;arrGraphPopup[1,0]=0;arrGraphPopup[2,0]=0;function jsfOpenPowerTool(sSymbol,iType,sPage)
{if(iType=="")
{iType=1;}
switch(parseInt(iType))
{case 1:Won.ICom.Code.Services.SiteAjaxService.GetStockQuoteUrl(sSymbol,function(arg){window.location=arg;});break;case 2:Won.ICom.Code.Services.SiteAjaxService.GetStockCheckupUrl(sSymbol,function(arg){window.location=arg;});break;case 3:if(sPage.indexOf(";")>-1)
{arrAttr=sPage.split(";");jsfChartsControl(sSymbol,arrAttr[0],arrAttr[1],parseInt(arrAttr[2]),arrAttr[3]);}
else
{jsfChartsControl(sSymbol,'pvc','daily',0,sPage);}
break;}}
function goPopupStockLists(strSymbol,isFromPopup)
{window.name="winMain";strUrl="/MyIBD/EditPortfolio.aspx?action=new&symbol="+strSymbol;var popupStockLists=window.open(strUrl,"popupStockLists","width=530,height=300,directories=no,status=no,location=no,toolbar=no,scrollbars=yes,resize=yes,menubar=no,copyhistory=no,alwaysRaised=0,dependent=0");}
function goQuotes(ticker,sCampaign)
{document.forCharts.htmChartValue.value='1';document.forCharts.htmAdditionalValue.value=sCampaign;document.forCharts.htmTicker.value=ticker;document.forCharts.submit();}
function goCharts(ticker,sCampaign)
{if(sCampaign!='')
{jsfOpenPowerTool(ticker,3,lcase(sCampaign)+';daily;0;');}
else
{jsfOpenPowerTool(ticker,3,'pvc;daily;0;');}}
function goStockCheckups(ticker,sCampaign)
{document.forCharts.htmChartValue.value='2';document.forCharts.htmAdditionalValue.value=sCampaign;document.forCharts.htmTicker.value=ticker;document.forCharts.submit();}
function jsfCheckChartToOpen(strType)
{if(sAccess.length>0)
{return sAccess.toLowerCase();}
return strType;}
function myEIBDInitialize(regPageUrl,regDivId,webVersionUrl,pdfVersionUrl){_eIBDRegistrationPageUrl=regPageUrl;_eIBDRegistrationDivId=regDivId,_eIBDWebVersionUrl=webVersionUrl;_eIBDPdfVersionUrl=pdfVersionUrl;}
function myEIBD()
{Won.ICom.Code.Services.SiteAjaxService.GetMyEIBDDefaultSettings(onMyEIBDComplete,onMyEIBDTimeOut,onMyEIBDError);}
function onMyEIBDTimeOut(arg)
{alert(arg._message);}
function onMyEIBDError(arg)
{alert(arg._message);}
function onMyEIBDComplete(arg)
{switch(arg){default:{myEIBDOpenWebVersion();break;}
case 4:{myEIBDOpenPdfVersion();break;}
case 2:{myEIBDOpenPdfVersion();break;}
case-1:{window.location=gRootPath+"products/default.aspx?id=aei-n";break;}
case-2:{window.location=gRootPath+"sessionlogoff.aspx?signout=true";break;}}}
function myEIBDOpenWebVersion()
{Won.ICom.Code.Services.SiteAjaxService.TrackProduct('eIBD - Web','');if(_eIBDWebVersionUrl&&_eIBDWebVersionUrl!="")
{var popup=window.open(_eIBDWebVersionUrl,"MyEIBD");if(popup!=null){popup.focus();}else{window.location=_eIBDWebVersionUrl;}}}
function myEIBDOpenPdfVersion()
{Won.ICom.Code.Services.SiteAjaxService.TrackProduct('eIBD - PDF','');if(_eIBDPdfVersionUrl&&_eIBDPdfVersionUrl!="")
{var popup=window.open(_eIBDPdfVersionUrl,"MyEIBD");if(popup!=null){popup.focus();}else{window.location=_eIBDPdfVersionUrl;}}}
var mATSLHidePopup=true;var mATSLTimerID=null;var mATSLLastPopupID=null;function killATSLShareTimer()
{if(mATSLTimerID)
{clearTimeout(mATSLTimerID);mATSLTimerID=null;}}
function showATSLHeaderPopup(objLnk,strPopupID,blnStockRollover,strInfoSpan,strInnerHTML,SymbolName){hideATSLPopup(strPopupID);killATSLShareTimer();var objPopupDiv=document.getElementById(strPopupID);if(strInnerHTML!=null){strInnerHTML=strInnerHTML.replace("&apos;","'");}
var objHeaderDiv=document.getElementById('AddToYourListContent');if(SymbolName!="")
objHeaderDiv.innerHTML="Add to your lists ("+SymbolName+")";else
objHeaderDiv.innerHTML="Add to your lists";if((mATSLLastPopupID)&&(mATSLLastPopupID!=strPopupID))
{var objLastPopup=document.getElementById(mATSLLastPopupID);if(objLastPopup)
{objLastPopup.style.display="none";}}
mATSLLastPopupID=strPopupID;if(objPopupDiv)
{if(!blnStockRollover)
document.body.appendChild(objPopupDiv);if(objPopupDiv.style)
{if(objPopupDiv.style.display=="none")
{if(!blnStockRollover)
{var objPos=getPosition(objLnk);var iLeft=objPos.x+15;var iTop=objPos.y+objLnk.offsetHeight;if(iLeft+15+250>document.body.offsetWidth)
{var iNewLeft=iLeft-40-250;if(iNewLeft>0)
{iLeft=iNewLeft;objPopupDiv.style.left=iLeft.toString()+"px";}}
objPopupDiv.style.left=iLeft.toString()+"px";objPopupDiv.style.top=iTop.toString()+"px";}
var objInfoSpan=document.getElementById(strInfoSpan);if(objInfoSpan)
{objInfoSpan.innerHTML='';}
if(strInnerHTML)
{var objContentDiv=document.getElementById('addToStockListContainerContent');objContentDiv.innerHTML=strInnerHTML;}
objPopupDiv.style.display="";}}}}
function showATSLPopupContent(objLnk,strPopupID,blnStockRollover,strInfoSpan,strInnerHTML,SymbolName){Won.ICom.Code.Services.SiteAjaxService.GetAddToMyStockListDataHtml(SymbolName,function(response){if(response!=null){response=response.replace("&apos;","'");strInnerHTML=response;showATSLPopup(objLnk,strPopupID,blnStockRollover,strInfoSpan,strInnerHTML,SymbolName);}});}
function showATSLPopup(objLnk,strPopupID,blnStockRollover,strInfoSpan){showATSLHeaderPopup(objLnk,strPopupID,blnStockRollover,strInfoSpan,"","");}
function showATSLPopup(objLnk,strPopupID,blnStockRollover,strInfoSpan,strInnerHTML){showATSLHeaderPopup(objLnk,strPopupID,blnStockRollover,strInfoSpan,strInnerHTML,"");}
function showATSLPopup(objLnk,strPopupID,blnStockRollover,strInfoSpan,strInnerHTML,SymbolName){showATSLHeaderPopup(objLnk,strPopupID,blnStockRollover,strInfoSpan,strInnerHTML,SymbolName);}
function divATSLmouseLeave(strPopupID)
{mATSLHidePopup=true;mATSLTimerID=setTimeout("hideATSLPopup('"+strPopupID+"')",100);}
function divATSLmouseEnter()
{killATSLShareTimer();mATSLHidePopup=false;}
function hideATSLPopup(strPopupID)
{killATSLShareTimer();if(mATSLHidePopup)
{var objPopupDiv=document.getElementById(strPopupID);if(objPopupDiv)
{if(objPopupDiv.style)
{if(objPopupDiv.style.display=="")
{objPopupDiv.style.display="none";}}}}}
function chbATSLClick(objCheckBox,listId,symbol,name,infoSpanID){if(objCheckBox.checked)
{AddSymbolToList(objCheckBox,listId,symbol,name,infoSpanID);}
else
{DeleteStockFromList(listId,symbol,name,infoSpanID);}}
function AddSymbolToList(objCheckBox,listID,symbol,listName,infoSpanID){Won.ICom.Code.Services.SiteAjaxService.AddToStockList(listID,symbol,function(arg){var objInfoSpan=document.getElementById(infoSpanID);if(objInfoSpan!=null){objInfoSpan.innerHTML="";objInfoSpan.style.display='block';switch(arg){case-1:{objInfoSpan.innerHTML=symbol.toUpperCase()+' already exists in '+listName+'.';objCheckBox.checked=false;}break;case 0:{objInfoSpan.innerHTML=listName+" is full. "+symbol.toUpperCase()+" has not been added to "+listName+".";objCheckBox.checked=false;}break;case 1:{objInfoSpan.innerHTML=symbol.toUpperCase()+" has been added to "+listName+".";}break;}}},OnATSLTimeOut,OnATSLError);}
function DeleteStockFromList(listID,symbol,listName,infoSpanID)
{Won.ICom.Code.Services.SiteAjaxService.DeleteStockFromList(listID,symbol,function(arg){var objInfoSpan=document.getElementById(infoSpanID);if(objInfoSpan!=null){objInfoSpan.innerHTML="";objInfoSpan.style.display='block';if(arg==false)
{}
else
{objInfoSpan.innerHTML=symbol.toUpperCase()+" has been removed from "+listName+".";}}},OnATSLTimeOut,OnATSLError);}
function OnATSLTimeOut(arg)
{alert("Time Out arg: "+arg._message);}
function OnATSLError(arg)
{alert("Error arg: "+arg._message);}
var hdlblnDoNotHidePopup=false;var mARTimerID=null;var lastPopupID=null;function killARTimer()
{if(mARTimerID)
{clearTimeout(mARTimerID);mARTimerID=null;}}
function nhdlLnkMouseEnter(objLnk){killARTimer();if(lastPopupID){var objLastPopup=document.getElementById(lastPopupID);if(objLastPopup!=null){objLastPopup.style.visibility="hidden";}lastPopupID=null;}
var strPopupDivID=objLnk.getAttribute("PopupDivID");var objPopup=document.getElementById(strPopupDivID);var lnkHeight=$(objLnk).height();var topPos=getOffsetY(objLnk)-130;var leftPos=getOffsetX(objLnk)+objLnk.offsetWidth+5;objPopup.style.left=leftPos.toString()+"px";objPopup.style.top=topPos.toString()+"px";objPopup.style.visibility="visible";}
function nhdlLnkMouseLeave(objLnk)
{killARTimer();var strPopupDivID=objLnk.getAttribute("PopupDivID");lastPopupID=strPopupDivID;mARTimerID=setTimeout("hideNhdlPopup('"+strPopupDivID+"')",100);}
function hideNhdlPopup(strPopupDivID)
{if(!hdlblnDoNotHidePopup)
{var objPopup=document.getElementById(strPopupDivID);objPopup.style.visibility="hidden";}}
function nhdldivPopupMoseEnter(objPopup)
{killARTimer();hdlblnDoNotHidePopup=true;}
function nhdldivPopupMoseLeave(objPopup)
{killARTimer();hdlblnDoNotHidePopup=false;mARTimerID=setTimeout("hideNhdlPopup('"+objPopup.id+"')",100);}
var isBenefitsCarouselAdded=false;function toggleLogin(divLoginId,divBenefitsId)
{$("div[id$='"+divLoginId+"']").toggle();$("div[id$='"+divBenefitsId+"']").toggle();AddBenefitsCarousel();}
function AddBenefitsCarousel()
{if(!isBenefitsCarouselAdded)
{jQuery("#modRegBenefits").jcarousel({scroll:1,animation:700,initCallback:modRegBenefits_initCallback,itemVisibleInCallback:{onBeforeAnimation:modRegBenefits_itemVisibleInCallbackBeforeAnimation,onAfterAnimation:modRegBenefits_itemVisibleInCallbackAfterAnimation}});isBenefitsCarouselAdded=true;}}
function modRegBenefits_initCallback(carousel)
{jQuery('#modRegBenefits .jcarousel-control a').bind('click',function()
{carousel.scroll(jQuery.jcarousel.intval(jQuery(this).text()));return false;});}
function modRegBenefits_itemVisibleInCallbackBeforeAnimation(carousel,item,idx,state)
{if(state=='init')
{return;}
jQuery('div',item).show();}
function modRegBenefits_itemVisibleInCallbackAfterAnimation(carousel,item,idx,state)
{$("#modRegBenefits .jcarousel-control > a").removeClass('selected');var srcAnchor="a#modRegBenefits-"+idx;$(srcAnchor).addClass('selected');}
function DeleteMyMessage(messageId)
{Won.ICom.Code.Services.SiteAjaxService.DeleteMyMessage(messageId,OnDeleteMyMessageSuccess,OnDeleteMyMessageError);}
function OnDeleteMyMessageSuccess(result)
{if(result)
{document.location.reload();}
else
{alert("Unable to delete the selected message.");}}
function OnDeleteMyMessageError(result)
{alert("Unable to delete the selected message.");}
sInitSymbol=escape("0S&P5");var sDGOProductsSite="";intWidth=750;intHeight=375;sigprops="top=25,left=25,width=640,height=400,directories=no,status=no,location=0,toolbar=no,scrollbars=yes,resizable=yes,menubar=no,copyhistory=no,alwaysRaised=1,dependent=yes";if(screen.width>1024)
{intWidth=1024;intWidthPVC=1034;intHeight=screen.height-125;dgowindowprops="top=25,left=25"+",width="+intWidth+",height="+intHeight+"directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";dgowindowprints="top=2,left=25"+",width="+intWidth+",height="+intHeight+"directories=0,status=1,location=0,toolbar=1,scrollbars=1,resizable=1,menubar=1,copyhistory=0,alwaysRaised=0";}else if(screen.width==1024)
{intWidth=screen.width-100;intWidthPVC=screen.width-100;intHeight=screen.height-125;dgowindowprops="top=25,left=25"+",width="+intWidth+",height="+intHeight+"directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";dgowindowprints="top=2,left=25"+",width="+intWidth+",height="+intHeight+"directories=0,status=1,location=0,toolbar=1,scrollbars=1,resizable=1,menubar=1,copyhistory=0,alwaysRaised=0";}else
{intWidth=screen.width-100;intWidthPVC=screen.width-100;intHeight=screen.height-125;dgowindowprops="top=0,left=0"+",width="+intWidth+",height="+intHeight+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";dgowindowprints="top=0,left=0"+",width="+intWidth+",height="+intHeight+",directories=0,status=1,location=0,toolbar=1,scrollbars=1,resizable=1,menubar=1,copyhistory=0,alwaysRaised=0";}
var xwidth;xwidth=screen.width/300;if(xwidth<6)xwidth=4;if(xwidth>6)xwidth=5;intWidthSml=xwidth*124;intWidthSm=intWidthSml+42;var xheight;xheight=screen.height;if(xheight>800)intHeightSm=xheight*17/20;if(xheight<800)intHeightSm=xheight*17/20;var tHeight;tHeight=screen.height;var tWidth;tWidth=screen.width;intWidth2=600
intWidth3=screen.width*.85
intHeight2=screen.height-220
intHeight3=screen.height*.7
fundwindowprops="top=15,left=15"+",width="+intWidth3+",height="+intHeight3+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";compwindowprops="top=55,left=55"+",width="+intWidth3+",height="+intHeight3+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";igwindowprops="top=45,left=45"+",width="+intWidth3+",height="+intHeight3+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";ogwindowprops="top=45,left=45"+",width="+intWidth3+",height="+intHeight3+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";cswindowprops="top=35,left=35"+",width="+intWidth2+",height="+intHeight2+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=1,copyhistory=0,alwaysRaised=0";advscrwindowprops="top=35,left=35,width=620,height="+intHeight2+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=1,copyhistory=0,alwaysRaised=0";ibddwindowprops="top=25,left=25"+",width="+intWidthPVC+",height="+intHeight+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";ibdwwindowprops="top=20,left=20"+",width="+intWidthSm+",height="+intHeight+",directories=0,status=1,location=0,toolbar=0,scrollbars=0,resizable=1,menubar=0,copyhistory=0,alwaysRaised=0";cupwindowprops="top=0,left=25"+",width="+intWidth+",height="+(intHeight-25)+",directories=0,status=1,location=0,toolbar=0,scrollbars=1,resizable=1,menubar=1,copyhistory=0,alwaysRaised=0";var arrGraphPopup=new Array();arrGraphPopup[0,0]=0;arrGraphPopup[1,0]=0;arrGraphPopup[2,0]=0;var agent=navigator.userAgent.toLowerCase();var is_iphone=agent.indexOf('iphone')!=-1;var is_ipod=agent.indexOf('ipod')!=-1;var is_ipad=agent.indexOf('ipad')!=-1;function iOSversion(){if(/iP(hone|od|ad)/.test(navigator.platform)){var v=(navigator.appVersion).match(/OS (\d+)_(\d+)_?(\d+)?/);return[parseInt(v[1],10),parseInt(v[2],10),parseInt(v[3]||0,10)];}}
var iPadVer=null;if(is_ipad){window.ondevicemotion=function(event){if(navigator.platform.indexOf("iPad")!=-1){iPadVer=1;if(event.acceleration)
iPadVer+=window.devicePixelRatio;}
window.ondevicemotion=null;};}
var is_othermobile=agent.indexOf('iemobile')!=-1||agent.indexOf('blackberry')!=-1||agent.indexOf('sonyericsson')!=-1||agent.indexOf('samsung')!=-1||agent.indexOf('nokia')!=-1||agent.indexOf('kindle')!=-1||agent.indexOf('silk-accelerated')!=-1;function jsfOpenPowerTool(sSymbol,iType,sPage){if(is_ipad){if(typeof(hMouseMove)!='undefined'&&hMouseMove==true)
return;}
if(iType=="")
{iType=1;}
switch(parseInt(iType))
{case 1:Won.ICom.Code.Services.SiteAjaxService.GetStockQuoteUrl(sSymbol,function(arg){window.location=arg;});break;case 2:Won.ICom.Code.Services.SiteAjaxService.GetStockCheckupUrl(sSymbol,function(arg){window.location=arg;});break;case 3:if(sPage.indexOf(";")>-1){arrAttr=sPage.split(";");jsfChartsControl(sSymbol,arrAttr[0],arrAttr[1],parseInt(arrAttr[2]),arrAttr[3]);}
else{jsfChartsControl(sSymbol,'pvc','daily',0,sPage);}}}
function goPopupStockLists(strSymbol,isFromPopup)
{window.name="winMain";strUrl="/myibd/editportfolio.aspx?action=new&symbol="+strSymbol;var popupStockLists=window.open(strUrl,"popupStockLists","width=530,height=300,directories=no,status=no,location=no,toolbar=no,scrollbars=yes,resize=yes,menubar=no,copyhistory=no,alwaysRaised=0,dependent=0");}
function goQuotes(ticker,sCampaign)
{document.forCharts.htmChartValue.value='1';document.forCharts.htmAdditionalValue.value=sCampaign;document.forCharts.htmTicker.value=ticker;document.forCharts.submit();}
function goCharts(ticker,sCampaign)
{if(sCampaign!='')
{jsfOpenPowerTool(ticker,3,lcase(sCampaign)+';daily;0;');}
else
{jsfOpenPowerTool(ticker,3,'pvc;daily;0;');}}
function goStockCheckups(ticker,sCampaign)
{document.forCharts.htmChartValue.value='2';document.forCharts.htmAdditionalValue.value=sCampaign;document.forCharts.htmTicker.value=ticker;document.forCharts.submit();}
function jsfChartsControl(strTicker,sGraphType,sMode,iTypeOnly,sAddPrms)
{var iLogin="";var sType;var windowIndex=-1;var windowName;var windowTypes;var isNS=0;browserPlatform=navigator.platform
browserName=navigator.appName;browserVer=parseInt(navigator.appVersion);if(browserPlatform.toLowerCase().indexOf('mac')<0)
{strTicker=strTicker.replace(/ /gi,"");}
if(browserName=="Netscape"||browserName=="Mozilla")
isNS=1;if(window.name==""||window.name==null)
{window.name="winMain";}
strTicker=escape(strTicker);iLogin=iLoginFlag;iTypeOnly=parseInt(iTypeOnly);if(strTicker=="")
{strTicker=sInitSymbol;}
sType=sGraphType;if(iTypeOnly==0&&iLogin=="1")
{sType=jsfCheckChartToOpen(sGraphType);}
sType=sType.toLowerCase();sMode=sMode.toLowerCase();switch(sType)
{case"pvc":case"ift":case"tru":case"wbm":case"etf":case"mkt":case"enl":case"fsc":case"hbo":case"sod":case"mdc":default:windowIndex=0;ibdwindowprops=ibddwindowprops;windowTypes=sType.toUpperCase();windowName="ibd"+sMode+"N";break;}
try
{if(arrGraphPopup[windowIndex,0]==0)
{if(opener)
{if(opener.open&&!opener.closed)
{if(opener.window.name==windowName)
{arrGraphPopup[windowIndex,0]=1;arrGraphPopup[windowIndex,1]=window.opener.window;}}
else
{arrGraphPopup[windowIndex,0]=1;strTicker=strTicker.replace("%2526","%26");var surl="/stockresearch/ibd-charts.aspx?cht="+sType+"&type="+sMode+"&symbol="+strTicker+sAddPrms;arrGraphPopup[windowIndex,1]=window.open(surl,windowName,ibdwindowprops);arrGraphPopup[windowIndex,1].focus();return;}}
else{arrGraphPopup[windowIndex,0]=1;strTicker=strTicker.replace("%2526","%26");var surl="/stockresearch/ibd-charts.aspx?cht="+sType+"&type="+sMode+"&symbol="+strTicker+sAddPrms;arrGraphPopup[windowIndex,1]=window.open(surl,windowName,ibdwindowprops);arrGraphPopup[windowIndex,1].focus();return;}}
if(arrGraphPopup[windowIndex,1]&&arrGraphPopup[windowIndex,1].open&&!arrGraphPopup[windowIndex,1].closed)
{var currentUrl=arrGraphPopup[windowIndex,1].window.location.toString();if(arrGraphPopup[windowIndex,1].document.getElementById('plotwon1')&&(windowTypes.indexOf(arrGraphPopup[windowIndex,1].document.getElementById('plotwon1').GrId.toUpperCase())>-1))
{strTicker=unescape(strTicker);strTicker=strTicker.replace(/%26/gi,"&");arrGraphPopup[windowIndex,1].focus();if(arrGraphPopup[windowIndex,1].document.getElementById('htmTickerIFT'))
{arrGraphPopup[windowIndex,1].document.dgf1.htmTickerIFT.style.background="red";arrGraphPopup[windowIndex,1].document.dgf1.htmTickerIFT.value=strTicker;arrGraphPopup[windowIndex,1].Graph_onclick();arrGraphPopup[windowIndex,1].document.dgf1.htmTickerIFT.style.background="white";}
else
{arrGraphPopup[windowIndex,1].document.dgf1.htmTicker.style.background="red";arrGraphPopup[windowIndex,1].document.dgf1.htmTicker.value=strTicker;if(arrGraphPopup[windowIndex,1].Graph_onclick)
{arrGraphPopup[windowIndex,1].Graph_onclick();}
else
{if(isNS==0)
{arrGraphPopup[windowIndex,1].document.dgf1.plotwon1.grTyp=arrGraphPopup[windowIndex,1].document.dgf1.GrType.value;arrGraphPopup[windowIndex,1].document.dgf1.plotwon1.GrID=sType.toUpperCase();arrGraphPopup[windowIndex,1].document.dgf1.DPFMngr1.Symbol=strTicker;arrGraphPopup[windowIndex,1].document.dgf1.plotwon1.sym=strTicker;}
else
{arrGraphPopup[windowIndex,1].plotwon1.grTyp=arrGraphPopup[windowIndex,1].document.dgf1.GrType.value;arrGraphPopup[windowIndex,1].plotwon1.GrID=sType.toUpperCase();arrGraphPopup[windowIndex,1].DPFMngr1.Symbol=strTicker;arrGraphPopup[windowIndex,1].plotwon1.sym=strTicker;}}
arrGraphPopup[windowIndex,1].document.dgf1.htmTicker.style.background="white";}}
else{strTicker=strTicker.replace("%2526","%26");var surl=surl="/stockresearch/ibd-charts.aspx?cht="+sType+"&type="+sMode+"&symbol="+strTicker+sAddPrms;arrGraphPopup[windowIndex,1].location=surl;arrGraphPopup[windowIndex,1].focus();}}
else
{strTicker=strTicker.replace("%2526","%26");var surl=surl="/stockresearch/ibd-charts.aspx?cht="+sType+"&type="+sMode+"&symbol="+strTicker+sAddPrms;arrGraphPopup[windowIndex,0]=1;arrGraphPopup[windowIndex,1]=window.open(surl,windowName,ibdwindowprops);arrGraphPopup[windowIndex,1].focus();}}
catch(e)
{strTicker=strTicker.replace("%2526","%26");var surl="/stockresearch/ibd-charts.aspx?cht="+sType+"&type="+sMode+"&symbol="+strTicker+sAddPrms;arrGraphPopup[windowIndex,0]=1;arrGraphPopup[windowIndex,1]=window.open(surl,windowName,ibdwindowprops);arrGraphPopup[windowIndex,1].focus();}}
function jsfCheckChartToOpen(strType)
{if(sAccess.length>0)
{return sAccess.toLowerCase();}
return strType;}
function SetContextKey(e,cookieDomain)
{try{var value="All";if(e.childNodes[0].checked){value="Stock";}
$.cookie("serviceMethod",value,{expires:7,path:'/',domain:cookieDomain});}
catch(err){}}
function SetupSitePredictiveSearch(searchBoxID,resultsPosition,resultsId){$("#"+searchBoxID).autocomplete('/Services/AutoSuggest.asmx/GetPredictiveResults',{formType:"POST",dataType:"json",resultsPosition:resultsPosition,resultsId:resultsId,scroll:false,matchSubset:false,width:300,max:10,selectFirst:false,cacheLength:1,formatItem:function(data,i,n,value){return"<a href=\"#\">"+data.Text+"</a>";},parse:function(data){var rows=new Array();for(var i=0;i<data.d.length;i++)
{rows[i]={data:data.d[i],value:data.d[i].Value,result:data.d[i].Value};}
return rows;},extraParams:{"searchType":function(){var index=1;return index;}}}).result(function(event,item){if(item.Url.length>0){location.href=item.Url;}});}
String.prototype.trim=function(){return this.replace(/^\s+|\s+$/g,'');}
function AutoCompleteChartExtenderFunction(){__doPostBack('ctl00_ctl00_secondaryContent_leftContent_MyResearchTool1_EvaluateStocks1_MRTChart1_btnGoSearch','');}
function AutoCompleteStockSymbolExtenderFunction(){__doPostBack('ctl00_ctl00_secondaryContent_leftContent_MyResearchTool1_EvaluateStocks1_SmartSelectCheckup1_btnGoSearch','');}
function gotoMSSite(path){if(path&&path!='')Won.ICom.Code.Services.SiteAjaxService.GetMSSiteURLByRelativePath(path,onGetMSSiteURL,onGetMSSiteURLTimeOut,onGetMSSiteURLError);else Won.ICom.Code.Services.SiteAjaxService.GetMSSiteURL(onGetMSSiteURL,onGetMSSiteURLTimeOut,onGetMSSiteURLError);}
function onGetMSSiteURLTimeOut(arg){window.location='http://www.marketsmith.com';}
function onGetMSSiteURLError(arg){window.location='http://www.marketsmith.com';}
function onGetMSSiteURL(arg){var url='';url=arg;if(url.endsWith("'")){url=url.substr(0,url.length-1);}if(url.startsWith("/")){window.location=url;}else{window.open(url,"MSSite");}}
function textCounter(textControl,counterControl,maxLen){var cc=getControl('span',counterControl);if(textControl.value.length>maxLen){textControl.value=textControl.value.substring(0,maxLen);cc[0].innerHTML='0';}
else
if(textControl!=null&&cc!=null){var length=(maxLen-textControl.value.length).toString();cc[0].innerHTML=length;}
return null;}
function getControl(tag,controlName){var elem=document.getElementsByTagName(tag);var arr=new Array();for(i=0,iarr=0;i<elem.length;i++){att=elem[i].getAttribute("name");if(att==controlName){arr[iarr]=elem[i];iarr++;}}
return arr;}
$(document).ready(function(){InitMSTracking();InitNavTracking();});function InitMSTracking(){$(".mstracking").unbind('click',MSTrackHandler).bind('click',MSTrackHandler);}
function MSTrackHandler(){MSTrackLink(this);}
function MSTrackLink(link){try{if(typeof(s)!='undefined'){var val=$(link).hasClass('msNavLink')?'Navigation':'';var attrVal=$(link).attr('MSTrackName');if(attrVal!=null&&attrVal.length>0)
{val=attrVal;}
s.prop35=s.eVar1=val;s.prop1='';s.linkTrackVars='prop35,eVar1';s.tl(link,'o','MarketSmith Link Click');}}
catch(e){}}
function InitNavTracking(){$(".nvtk").unbind('click',NavTrackHandler).bind('click',NavTrackHandler);}
function NavTrackHandler(){NavTrackLink(this);}
function NavTrackLink(link){try{if(typeof(s)!='undefined'){var val="navigation";var attrVal=$(link).attr('class');var pos=attrVal.indexOf('nvtk-');if(attrVal!=null&&attrVal.length>0&&pos>-1)
{var posSpace=attrVal.indexOf(" ",pos);val=attrVal.substring(pos+5,posSpace>-1?posSpace:attrVal.length);}
s.prop51=s.eVar19=val;s.prop1='';s.linkTrackVars='prop51,eVar19';s.tl(link,'o','Navigation Link Click');}}
catch(e){}}
function gotoLeaderboard(loc){Won.ICom.Code.Services.SiteAjaxService.GetLeaderboardUrl(onGotoLeaderboard,onGotoLeaderboardTimeOut,onGotoLeaderboardError);}
function onGotoLeaderboardTimeOut(arg){window.location='http://leaderboard.investors.com';}
function onGotoLeaderboardError(arg){window.location='http://leaderboard.investors.com';}
function onGotoLeaderboard(arg){var url=arg;if(url=="overlay"){window.location=gRootPath+'products/default.aspx?id=ldb-n';}else{window.open(url,"LeaderboardSite");}}
function findPosX(obj){var curleft=0;if(obj&&obj.offsetParent){curleft=getOffsetX(obj);}else if(obj&&obj.x){curleft+=obj.x;}
return curleft;}
function findPosY(obj){var curtop=0;if(obj&&obj.offsetParent){curtop=getOffsetY(obj);}else if(obj&&obj.y){curtop+=obj.y;}
return curtop;}
var mobileTP=false;var gesture=false;var change=false;var hidden=false;var paddingTP=10;var paddingLine=2;var topMargin=7;var bottomMargin=3;var leftMargin=39;var rightMargin=8;var numDays=75;var trackpricelist=null;var isTrackPriceValid=false;var isTrackPrice1Valid=false;var imgGraphDIV=null;var imgGraphX=0;var imgGraphY=0;var miniChart=null;var trackPrice=document.getElementById('divTrackPrice');var trackPrice1=document.getElementById('divTrackPrice1');if(trackPrice!=null){isTrackPriceValid=true;}
if(trackPrice1!=null){isTrackPrice1Valid=true;}
var trackPriceHeight=68;var trackPriceWidth=122;var trackPrice1Height=0;var trackPrice2Width=0;var tick=0;var miniChartX=0;var miniChartY=0;var MCDcurrentIndex=0;var MCisIntraday=false;if(is_ipad||is_iphone){mobileTP=true;}
function defaultInit(){if(!trackPrice||trackPrice.style.display=='none'){numDays=65;leftMargin=14;rightMargin=35;topMargin=-3;bottomMargin=26;paddingTP=10;paddingLine=2;miniChart=document.getElementById('divMiniChart');trackPrice=document.getElementById('divTrackPrice');trackPrice1=document.getElementById('divTrackPrice1');trackPrice2=document.getElementById('divTrackPrice2');trackPrice.style.height=trackPriceHeight+'px';trackPrice.style.width=trackPriceWidth+'px';trackPrice1Height=200-bottomMargin;trackPrice2Width=305-leftMargin-rightMargin;trackPrice1.style.height=trackPrice1Height+'px';trackPrice2.style.width=trackPrice2Width+'px';tick=trackPrice2Width/numDays;imgGraphX=findPosX(miniChart)-miniChart.offsetLeft;imgGraphY=findPosY(miniChart)-miniChart.offsetTop;miniChartX=findPosX(miniChart)-imgGraphX;miniChartY=findPosY(miniChart)-imgGraphY;trackPrice1.style.top=(miniChartY+topMargin)+'px';trackPrice2.style.left=(miniChartX+leftMargin)+'px';if(document.getElementById("hdnListTrackPrice")){trackpricelist=eval("("+document.getElementById("hdnListTrackPrice").value+")");callUpdateBATSFuncsDefault();}}}
function callUpdateBATSFuncsDefault(){if(typeof(updateSymbolRolloverRefresh)!='undefined'&&updateSymbolRolloverRefresh){updateSymbolRolloverRefresh();}}
function eventMouseOver(e){if(trackPrice.style.display=='none'){MoveDiv(e,0);}
return false;}
function eventMouseMove(e){if(trackPrice&&(trackPrice.style.display!='none'||hidden)){MoveDiv(e,0);}
return false;}
function eventMouseOut(e){hidden=false;HideTrackPrice('none');return false;}
function eventTouchStart(e){if(trackPrice&&trackPrice.style.display=='none'){MoveDiv(e,1);}
return false;}
function eventTouchMove(e){event.preventDefault();if(!gesture&&(trackPrice.style.display!='none'||hidden)){MoveDiv(e,1);}
return false;}
function eventTouchEnd(e){hidden=false;HideTrackPrice('none');return false;}
function MoveDiv(e,mode){var relativeX=e.pageX-imgGraphX;var relativeY=e.pageY-imgGraphY;if(mode==1&&e.touches.length==1){var touch=e.touches[0];relativeX=touch.pageX-imgGraphX;relativeY=touch.pageY-imgGraphY;}
else{if(!e.pageX||!e.pageY){relativeX=e.clientX+document.body.scrollLeft+document.documentElement.scrollLeft-imgGraphX;relativeY=e.clientY+document.body.scrollTop+document.documentElement.scrollTop-imgGraphY;}}
if(miniChartX!=findPosX(miniChart)||miniChartY!=findPosY(miniChart)){change=true;miniChartX=findPosX(miniChart)-imgGraphX;miniChartY=findPosY(miniChart)-imgGraphY;if(imgGraphDIV){imgGraphX=findPosX(imgGraphDIV);imgGraphY=findPosY(imgGraphDIV);}}
if(relativeX<(miniChartX+leftMargin)||relativeX>(miniChartX+leftMargin+trackPrice2Width)||relativeY<(miniChartY+topMargin)||relativeY>(miniChartY+topMargin+trackPrice1Height)){hidden=true;HideTrackPrice('none');return;}
if(change){change=false;trackPrice1.style.top=(miniChartY+topMargin)+'px';trackPrice2.style.left=(miniChartX+leftMargin)+'px';}
if(trackPrice){if(mobileTP){if(mobileTP&&relativeY-paddingTP-(miniChartY+topMargin)-trackPriceHeight<=0)
{trackPrice.style.top=(relativeY+paddingTP)+'px';}
else
{trackPrice.style.top=(relativeY-paddingTP-trackPriceHeight)+'px';}}
else if(relativeY+paddingTP-(miniChartY+topMargin)+trackPriceHeight>trackPrice1Height){trackPrice.style.top=(relativeY-paddingTP-trackPriceHeight)+'px';}
else{trackPrice.style.top=(relativeY+paddingTP)+'px';}
if(relativeX+paddingTP-(miniChartX+leftMargin)+trackPriceWidth>trackPrice2Width){trackPrice.style.left=(relativeX-paddingTP-trackPriceWidth)+'px';}
else{trackPrice.style.left=(relativeX+paddingTP)+'px';}
if(trackPrice.innerHTML.indexOf("Day:")>-1)
{trackPrice.innerHTML=trackPrice.innerHTML.substr(0,trackPrice.innerHTML.indexOf("Day:")+4)+" "+Math.round((trackPrice2Width-(relativeX-(miniChartX+leftMargin)))/tick);}
if(trackpricelist){var i=Math.round((trackPrice2Width-(relativeX-(miniChartX+leftMargin)))/tick);if(trackpricelist[i]==null&&trackpricelist[i-1]==null){HideTrackPrice('none');hidden=true;return;}
if(i==0){i=1;}
MCDcurrentIndex=i-1;if(typeof(mobileChartType)!='undefined'){MCisIntraday=(mobileChartType=='Intraday5');}
if(trackpricelist[i-1]){if(document.getElementById("tickerpricedt"))
{document.getElementById("tickerpricedt").innerHTML=MCisIntraday?toIntradayDate(trackpricelist[i-1].Date):toDate(trackpricelist[i-1].Date);}
if(document.getElementById("tickerhigh"))
{document.getElementById("tickerhigh").innerHTML=PercentFormatted(trackpricelist[i-1].High);}
if(document.getElementById("tickerlow"))
{document.getElementById("tickerlow").innerHTML=PercentFormatted(trackpricelist[i-1].Low);}
if(document.getElementById("tickerlast"))
{document.getElementById("tickerlast").innerHTML=PercentFormatted(trackpricelist[i-1].Close);}
if(document.getElementById("tickerlastchg")){if(typeof(tickerlastchg)=='undefined'){tickerlastchg=document.getElementById("tickerlastchg");}
if(trackpricelist[i]){pricechg=PercentFormatted(trackpricelist[i-1].Close-trackpricelist[i].Close);tickerlastchg.style.color=pricechg<0?"#F6F":"#30F"
tickerlastchg.innerHTML="(";if(pricechg>0)
tickerlastchg.innerHTML+="+";tickerlastchg.innerHTML+=pricechg+')';}
else{tickerlastchg.innerHTML="";}}
if(document.getElementById("tickervol"))
{document.getElementById("tickervol").innerHTML=addCommas(trackpricelist[i-1].Volume);}}}
trackPrice1.style.left=(relativeX+paddingLine)+'px';trackPrice2.style.top=(relativeY+paddingLine)+'px';HideTrackPrice('block');}
return;}
function HideTrackPrice(status){if(trackPrice!=null&&trackPrice1!=null){trackPrice.style.display=status;trackPrice1.style.display=status;trackPrice2.style.display=status;}}
function toDate(s){if(!s){return null;}
var toDateRe=new RegExp("^/Date\\((\\d+)\\)/$");var constructor=s.replace(toDateRe,"new Date($1)");if(constructor==s){throw'Invalid serialized DateTime value: "'+s+'"';}
var tpdate=eval(constructor);tpdate=(tpdate.getMonth()+1)+"/"+tpdate.getDate()+"/"+tpdate.getFullYear();return tpdate;}
function toIntradayDate(s){if(!s){return null;}
var toDateRe=new RegExp("^/Date\\((\\d+)\\)/$");var constructor=s.replace(toDateRe,"new Date($1)");if(constructor==s){throw'Invalid serialized DateTime value: "'+s+'"';}
var tpdate=eval(constructor);var minutes=tpdate.getMinutes();if(tpdate.getMinutes()==0)minutes="00";else if(tpdate.getMinutes()==5)minutes="05";tpdate=(tpdate.getMonth()+1)+"/"+tpdate.getDate()+"/"+tpdate.getFullYear()+" "+tpdate.getHours()+":"+minutes;return tpdate;}
function addCommas(nStr){nStr+='';x=nStr.split('.');x1=x[0];x2=x.length>1?'.'+x[1]:'';var rgx=/(\d+)(\d{3})/;while(rgx.test(x1)){x1=x1.replace(rgx,'$1'+','+'$2');}
return x1+x2;}
function PercentFormatted(amount){var i=parseFloat(amount);if(isNaN(i)){i=0.00;}
var minus='';if(i<0){minus='-';}
i=Math.abs(i);i=parseInt((i+.005)*100);i=i/100;s=new String(i);if(s.indexOf('.')<0){s+='.00';}
if(s.indexOf('.')==(s.length-2)){s+='0';}
s=minus+s;return s;}
function jqmArtOnShow(hash){hash.w.show();var itemNum=hash.t.className.substr(hash.t.className.indexOf("artExtraOverlay")+15);var itemId="div.artExtraWin"+itemNum+" div.artOverflow";var overflow=getVerticalOverflow(itemId);if(overflow>1){$(itemId).css('height',$(window).height()-120-40);}
$(itemId).html($(itemId+" pre").html());var a=[self.pageXOffset||document.documentElement.scrollLeft||document.body.scrollLeft,self.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop];$(window).bind('scroll',{pos:a},lockArtScrollPosition);}
function jqmArtOnHide(hash){hash.o.remove();hash.w.hide();$(window).unbind('scroll',lockArtScrollPosition);}
function lockArtScrollPosition(e){var a=e.data.pos;window.scrollTo(a[0],a[1]);return false;}
function getVerticalOverflow(id){var queryObj=$(id);if(queryObj!=null&&queryObj.length>0){var obj=queryObj[0];if(obj.innerHTML.length==0){return 0};var overflow=obj.scrollHeight/obj.clientHeight;return overflow;}
return 1;}
function jsfLinkURLWithSrc(path){var src=queryString("src");if(src.length>0)
{path=path+"&src="+src;}
window.location.href=path;}
function VerifyRequest(pageUrl){if(document.cookie.indexOf("ibdpwv")==-1){var specialEnabled=false;Won.ICom.Code.Services.SiteAjaxService.ValidateRequest(pageUrl,specialEnabled,function(result){switch(result.ProcessType){case 1:$(document).ready(function(){$("a[id$='lnkPaywall']").click();});break;case 2:window.location=result.BlockUrl;break;}});}}
function ProcessCampaignsResult(response){if(response.ExitPopup.Url.length>0&&typeof jsfSetupExitPopup!='undefined'){jsfSetupExitPopup(response.ExitPopup.CookieName,response.ExitPopup.Url,response.CookieDomain);}
if(response.Campaign.Url.length>0){if(typeof(showExitPopup)!='undefined'){showExitPopup=false;}
if(response.Campaign.Type=='PopUp'){if(response.Campaign.DisplayDelay>0){setTimeout(function(){ProcessCampaignResultPopUpHandler(response);},response.Campaign.DisplayDelay*1000);}
else{ProcessCampaignResultPopUpHandler(response);}}
else if(response.Campaign.Type=='PopThrough'){window.location=response.Campaign.Url;}}}
function ProcessCampaignResultPopUpHandler(response){if(queryString('fromad')==''&&queryString('fromcampaign')==''){var campPopWin=window.open(response.Campaign.Url,"wndICOMSurvey","width="+response.Campaign.Width+",height="+response.Campaign.Height+",directories=no,status=no,location=no,scrollbars=yes,resizable=yes,menubar=no,copyhistory=no,alwaysRaised=1,dependent=yes");window.focus();if(campPopWin!=null){campPopWin.blur();if(response.Campaign.Focus){campPopWin.focus();}
else{window.focus();}}}}
function fnSetStdAddressValue(StdAddress1,StdAddress2,StdCity,StdState,StdCountry,StdZip,AddressType){var vAddress1=$("#"+StdAddress1).val();var vAddress2=$("#"+StdAddress2).val();var vCity=$("#"+StdCity).val();var vState=$("#"+StdState).val();var vCountry=$("#"+StdCountry).val();var vZip=$("#"+StdZip).val();fnAssignStdAddress(vAddress1,vAddress2,vCity,vState,vCountry,vZip,AddressType);return false;}
jQuery.cachedScript=function(url,success){var options={dataType:"script",cache:true,url:url,success:success};return jQuery.ajax(options);};function SetupBATS(clientUrl,url,timeout,cDomain,greenClr,redClr){$(document).ready(function(){$.cachedScript(clientUrl,function(){fm.utilities.ready();$.cachedScript("/cssjshandler.ashx?keys=S9.S78",function(){BATS.init(url,timeout,cDomain,greenClr,redClr);});});});}
function RotateUrls(){var value=Math.floor(Math.random()*arguments.length);var url=arguments[value];window.location=url;}
function RotateUrl(type){Won.ICom.Code.Services.SiteAjaxService.GetOfferUrl(type,function(url){window.location=url;});}
$(function(){if((typeof(Sys)!=='undefined'&&Sys.Browser.agent===Sys.Browser.InternetExplorer&&Sys.Browser.version===10)||!!window.MSInputMethodContext){Sys.WebForms.PageRequestManager.getInstance()._onFormElementActive=function Sys$WebForms$PageRequestManager$_onFormElementActive(element,offsetX,offsetY){if(element.disabled){return;}
this._activeElement=element;this._postBackSettings=this._getPostBackSettings(element,element.name);if(element.name){var tagName=element.tagName.toUpperCase();if(tagName==='INPUT'){var type=element.type;if(type==='submit'){this._additionalInput=encodeURIComponent(element.name)+'='+encodeURIComponent(element.value);}
else if(type==='image'){this._additionalInput=encodeURIComponent(element.name)+'.x='+Math.floor(offsetX)+'&'+encodeURIComponent(element.name)+'.y='+Math.floor(offsetY);}}
else if((tagName==='BUTTON')&&(element.name.length!==0)&&(element.type==='submit')){this._additionalInput=encodeURIComponent(element.name)+'='+encodeURIComponent(element.value);}}};}});var winLBChart=null;function openLBChart(chartUrl,symbol,type,listName,symbolList){var height=screen.availHeight;var width=screen.availWidth;var fullscreen=(document.all)?"no":"yes";var resizable="no";var toolbar="no";var status="no";var left=0;var top=0;var props="toolbar=no"+",fullscreen="+fullscreen+",status=no"+",resizable=yes"+",scrollbars=yes"+",menubar=no"+",location=no"+","+"width="+width+",height="+height+",left="+left+",top="+top;if(symbol.indexOf('&')>-1){symbol=escape(symbol);}
var url=chartUrl+'?symbol='+symbol+'&type='+type+'&listName='+listName+'&symbolList='+symbolList;var windowName="lbChart";if(winLBChart&&!winLBChart.closed){if(navigator.userAgent.toLowerCase().indexOf('android')!=-1){winLBChart=window.open(url,windowName,props);try{if(!navigator.userAgent.match(/chrome/i)){winLBChart.resizeTo(width,height);}
winLBChart.focus();}
catch(e){}}
else{winLBChart.location=url;try{winLBChart.focus();}
catch(e){}}}
else{winLBChart=window.open(url,windowName,props);try{if(!navigator.userAgent.match(/chrome/i)){winLBChart.resizeTo(width,height);}
winLBChart.focus();}
catch(e){}}}
function GetStickyNavAd(){Won.ICom.Code.Services.SiteAjaxService.GetStickyNavAd(function(arg){var objAd=document.getElementById('stickynavad');if(objAd!=null){objAd.innerHTML=arg;}});}
function validatePassword(selector){var password=$(selector).val();if(password.length<8){return'Password must be at least 8 characters in length.';}
if(password.search(/[A-Z]/)==-1){return'Password must contain at least one upper case letter.';}
if(password.search(/\d/)==-1){return'Password must contain at least one number.';}
return'';}
function validatePasswordValidator(sender,args,hideImage){var vp=validatePassword('#'+sender.controltovalidate);if(vp.length>0){var displayImage=typeof(hideImage)!='undefined'?!hideImage:true;var image=displayImage?('<img src=" "'+(window.location.protocol=='https:'?'':'http://www1.ibdcd.com')+'/images/icons/errorIco.gif" alt="error" />'):'';sender.errormessage=image+' '+vp;args.IsValid=false;}
else{args.IsValid=true;}}
function validatePasswordValidatorNoImage(sender,args){validatePasswordValidator(sender,args,true);}
function SetPopWindowOptions(){popWindow="top=25,left=25,width=500,height=500,toolbars=0,scrollbars=1,resizable=1,status=0";}
function PopupPic(URL){window.open("popup.aspx?"+URL,"","resizable=1,height=1,width=140");}
function SetQuantCastOptions(){_qoptions={qacct:"p-f19wqCsyAItjo"};}
function SetMobileAd(){if(navigator.userAgent.match(/iPad/i)||navigator.userAgent.match(/iPhone/i)||navigator.userAgent.match(/iPod/i)||navigator.userAgent.match(/BlackBerry/i)||navigator.userAgent.match(/Android/i)||navigator.userAgent.match(/Windows Phone/i)||navigator.userAgent.match(/iemobile/i)){if(typeof(OAS_AD)!='undefined'){var adId=typeof(adIdentifier)!='undefined'?adIdentifier:'';OAS_AD('mobileadhesion',adId);}}}
function InitializeRolloverBATS()
{if(typeof(BATS)!='undefined'){BATS.addEnableFunc(RolloverCheckForBATS);BATS.addReceiveFunc(RolloverSetPriceChanges);if(!BATS.isConnected()){BATS.connect();}
else{RolloverCheckForBATS();}}}
function RolloverCheckForBATS(){if(typeof(BATS)!='undefined'&&BATS.Enabled&&RolloverUseBATS()){if(BATS.isConnected()){BATS.subscribe(GetRolloverSymbol());}
else{setTimeout(RolloverCheckForBATS,1000);}}}
function RolloverUseBATS(){return $("#rolldataSrc").val()=='BATS';}
function GetRolloverSymbol(){return $("#rollSymb").text();}
function RolloverSetPriceChanges(data){if(jQuery.trim(data.Symbol).toUpperCase()==jQuery.trim(GetRolloverSymbol()).toUpperCase()&&RolloverUseBATS()){var obj=$("#rolllstPrice");var diff=BATS.getPriceDifference(obj,data.Last.toFixed(2));obj.text("$"+data.Last.toFixed(2));var prevClose=+$('#rollprevClose').val();var priceChange=(data.Last-prevClose).toFixed(2)
var priceChangeClass=getRolloverDiffCss(priceChange);obj=$("#rollprcChg");obj.text(priceChange).removeClass("zero").removeClass("nochange").removeClass("up").removeClass("down").addClass(priceChangeClass);BATS.startHighlight(obj,diff,'');$("#rollbatsMessage").text(BATS.getTimeStamp(data,true));updateTrackPriceRollover(data);var tickerlast=document.getElementById("tickerlast");var tickerlastchg=document.getElementById("tickerlastchg");var tickerhigh=document.getElementById("tickerhigh");var tickerlow=document.getElementById("tickerlow");if(typeof(tickerlast)!='undefined'&&typeof(MCDcurrentIndex)!='undefined'&&tickerlast&&MCDcurrentIndex==0){tickerlast.innerHTML=PercentFormatted(data.Last);if(typeof(tickerhigh)!='undefined'&&tickerhigh&&trackpricelist)
{tickerhigh.innerHTML=PercentFormatted(trackpricelist[MCDcurrentIndex].High);}
if(typeof(tickerlow)!='undefined'&&tickerlow&&trackpricelist)
{tickerlow.innerHTML=PercentFormatted(trackpricelist[MCDcurrentIndex].Low);}
if(typeof(tickerlastchg)!='undefined'&&tickerlastchg){pricechg=PercentFormatted(priceChange);tickerlastchg.style.color=pricechg<0?"#F6F":"#30F";tickerlastchg.innerHTML='(';if(pricechg>0){tickerlastchg.innerHTML+="+";}
tickerlastchg.innerHTML+=pricechg+')';BATS.startHighlight($(tickerlastchg),diff,'');}}}}
function getRolloverDiffCss(number){return number==0?"nochange":(number>0?"up":"down");}
function updateTrackPriceRollover(data){if(typeof(updateBATSTrackPrice)!='undefined'){updateBATSTrackPrice(data);}
else{if(trackpricelist!=null){if(trackpricelist[0].High<data.Last.toFixed(2))trackpricelist[0].High=data.Last.toFixed(2);if(trackpricelist[0].Low>data.Last.toFixed(2))trackpricelist[0].Low=data.Last.toFixed(2);trackpricelist[0].Close=data.Last.toFixed(2);}}}
function updateSymbolRolloverRefresh(){var obj=$("#rolllstPrice");var price=+obj.text().trim().replace("$","");updateTrackPriceRollover({"Last":price});};(function($){$.fn.extend({autocomplete:function(urlOrData,options){var isUrl=typeof urlOrData=="string";options=$.extend({},$.Autocompleter.defaults,{url:isUrl?urlOrData:null,data:isUrl?null:urlOrData,delay:isUrl?$.Autocompleter.defaults.delay:10,max:options&&!options.scroll?10:150},options);options.highlight=options.highlight||function(value){return value;};options.formatMatch=options.formatMatch||options.formatItem;return this.each(function(){new $.Autocompleter(this,options);});},result:function(handler){return this.bind("result",handler);},search:function(handler){return this.trigger("search",[handler]);},flushCache:function(){return this.trigger("flushCache");},setOptions:function(options){return this.trigger("setOptions",[options]);},unautocomplete:function(){return this.trigger("unautocomplete");}});$.Autocompleter=function(input,options){var KEY={UP:38,DOWN:40,DEL:46,TAB:9,RETURN:13,ESC:27,COMMA:188,PAGEUP:33,PAGEDOWN:34,BACKSPACE:8};var $input=$(input).attr("autocomplete","off").addClass(options.inputClass);var timeout;var previousValue="";var cache=$.Autocompleter.Cache(options);var hasFocus=0;var lastKeyPressCode;var config={mouseDownOnSelect:false};var select=$.Autocompleter.Select(options,input,selectCurrent,config);var blockSubmit;$.browser.opera&&$(input.form).bind("submit.autocomplete",function(){if(blockSubmit){blockSubmit=false;return false;}});$input.bind(($.browser.opera?"keypress":"keydown")+".autocomplete",function(event){hasFocus=1;lastKeyPressCode=event.keyCode;switch(event.keyCode){case KEY.UP:event.preventDefault();if(select.visible()){select.prev();}else{onChange(0,true);}
break;case KEY.DOWN:event.preventDefault();if(select.visible()){select.next();}else{onChange(0,true);}
break;case KEY.PAGEUP:event.preventDefault();if(select.visible()){select.pageUp();}else{onChange(0,true);}
break;case KEY.PAGEDOWN:event.preventDefault();if(select.visible()){select.pageDown();}else{onChange(0,true);}
break;case options.multiple&&$.trim(options.multipleSeparator)==","&&KEY.COMMA:case KEY.TAB:case KEY.RETURN:if(selectCurrent()){event.preventDefault();blockSubmit=true;return false;}
break;case KEY.ESC:select.hide();break;default:clearTimeout(timeout);timeout=setTimeout(onChange,options.delay);break;}}).focus(function(){hasFocus++;}).blur(function(){hasFocus=0;if(!config.mouseDownOnSelect){hideResults();}}).click(function(){if(hasFocus++>1&&!select.visible()){onChange(0,true);}}).bind("search",function(){var fn=(arguments.length>1)?arguments[1]:null;function findValueCallback(q,data){var result;if(data&&data.length){for(var i=0;i<data.length;i++){if(data[i].result.toLowerCase()==q.toLowerCase()){result=data[i];break;}}}
if(typeof fn=="function")fn(result);else $input.trigger("result",result&&[result.data,result.value]);}
$.each(trimWords($input.val()),function(i,value){request(value,findValueCallback,findValueCallback);});}).bind("flushCache",function(){cache.flush();}).bind("setOptions",function(){$.extend(options,arguments[1]);if("data"in arguments[1])cache.populate();}).bind("unautocomplete",function(){select.unbind();$input.unbind();$(input.form).unbind(".autocomplete");});function selectCurrent(){var selected=select.selected();if(!selected)return false;var v=selected.result;previousValue=v;if(options.multiple){var words=trimWords($input.val());if(words.length>1){var seperator=options.multipleSeparator.length;var cursorAt=$(input).selection().start;var wordAt,progress=0;$.each(words,function(i,word){progress+=word.length;if(cursorAt<=progress){wordAt=i;return false;}
progress+=seperator;});words[wordAt]=v;v=words.join(options.multipleSeparator);}
v+=options.multipleSeparator;}
$input.val(v);hideResultsNow();$input.trigger("result",[selected.data,selected.value]);return true;}
function onChange(crap,skipPrevCheck){if(lastKeyPressCode==KEY.DEL){select.hide();return;}
var currentValue=$input.val();if(!skipPrevCheck&&currentValue==previousValue)return;previousValue=currentValue;currentValue=lastWord(currentValue);if(currentValue.length>=options.minChars){$input.addClass(options.loadingClass);if(!options.matchCase)currentValue=currentValue.toLowerCase();request(currentValue,receiveData,hideResultsNow);}else{stopLoading();select.hide();}};function trimWords(value){if(!value)return[""];if(!options.multiple)return[$.trim(value)];return $.map(value.split(options.multipleSeparator),function(word){return $.trim(value).length?$.trim(word):null;});}
function lastWord(value){if(!options.multiple)return value;var words=trimWords(value);if(words.length==1)return words[0];var cursorAt=$(input).selection().start;if(cursorAt==value.length){words=trimWords(value)}else{words=trimWords(value.replace(value.substring(cursorAt),""));}
return words[words.length-1];}
function autoFill(q,sValue){if(options.autoFill&&(lastWord($input.val()).toLowerCase()==q.toLowerCase())&&lastKeyPressCode!=KEY.BACKSPACE){$input.val($input.val()+sValue.substring(lastWord(previousValue).length));$(input).selection(previousValue.length,previousValue.length+sValue.length);}};function hideResults(){clearTimeout(timeout);timeout=setTimeout(hideResultsNow,200);};function hideResultsNow(){var wasVisible=select.visible();select.hide();clearTimeout(timeout);stopLoading();if(options.mustMatch){$input.search(function(result){if(!result){if(options.multiple){var words=trimWords($input.val()).slice(0,-1);$input.val(words.join(options.multipleSeparator)+(words.length?options.multipleSeparator:""));}else{$input.val("");$input.trigger("result",null);}}});}};function receiveData(q,data){if(data&&data.length&&hasFocus){stopLoading();select.display(data,q);autoFill(q,data[0].value);select.show();}else{hideResultsNow();}};function request(term,success,failure){if(!options.matchCase)term=term.toLowerCase();var data=cache.load(term);if(data&&data.length&&options.cacheLength>1){success(term,data);}else if((typeof options.url=="string")&&(options.url.length>0)){var extraParams={};$.each(options.extraParams,function(key,param){extraParams[key]=typeof param=="function"?param():param;});$.ajax({type:options.formType,mode:"abort",port:"autocomplete"+input.name,contentType:"application/json; charset=utf-8",dataType:options.dataType,url:options.url,data:jQuery.stringifyJSON($.extend({q:lastWord(term),limit:options.max},extraParams)),success:function(data){var parsed=options.parse&&options.parse(data)||parse(data);cache.add(term,parsed);success(term,parsed);}});}else{select.emptyList();failure(term);}};function parse(data){var parsed=[];var rows=data.split("\n");for(var i=0;i<rows.length;i++){var row=$.trim(rows[i]);if(row){row=row.split("|");parsed[parsed.length]={data:row,value:row[0],result:options.formatResult&&options.formatResult(row,row[0])||row[0]};}}
return parsed;};function stopLoading(){$input.removeClass(options.loadingClass);};};$.Autocompleter.defaults={inputClass:"ac_input",resultsClass:"ac_results",loadingClass:"ac_loading",resultsPosition:"absolute",resultsId:"",minChars:1,delay:400,matchCase:false,matchSubset:true,matchContains:false,cacheLength:10,max:100,mustMatch:false,extraParams:{},selectFirst:true,formatItem:function(row){return row[0];},formatMatch:null,autoFill:false,width:0,multiple:false,multipleSeparator:", ",highlight:function(value,term){return value.replace(new RegExp("(?![^&;]+;)(?!<[^<>]*)("+term.replace(/([\^\$\(\)\[\]\{\}\*\.\+\?\|\\])/gi,"\\$1")+")(?![^<>]*>)(?![^&;]+;)","gi"),"<strong>$1</strong>");},scroll:true,scrollHeight:180};$.Autocompleter.Cache=function(options){var data={};var length=0;function matchSubset(s,sub){if(!options.matchCase)s=s.toLowerCase();var i=s.indexOf(sub);if(options.matchContains=="word"){i=s.toLowerCase().search("\\b"+sub.toLowerCase());}
if(i==-1)return false;return i==0||options.matchContains;};function add(q,value){if(length>options.cacheLength){flush();}
if(!data[q]){length++;}
data[q]=value;}
function populate(){if(!options.data)return false;var stMatchSets={},nullData=0;if(!options.url)options.cacheLength=1;stMatchSets[""]=[];for(var i=0,ol=options.data.length;i<ol;i++){var rawValue=options.data[i];rawValue=(typeof rawValue=="string")?[rawValue]:rawValue;var value=options.formatMatch(rawValue,i+1,options.data.length);if(value===false)continue;var firstChar=value.charAt(0).toLowerCase();if(!stMatchSets[firstChar])stMatchSets[firstChar]=[];var row={value:value,data:rawValue,result:options.formatResult&&options.formatResult(rawValue)||value};stMatchSets[firstChar].push(row);if(nullData++<options.max){stMatchSets[""].push(row);}};$.each(stMatchSets,function(i,value){options.cacheLength++;add(i,value);});}
setTimeout(populate,25);function flush(){data={};length=0;}
return{flush:flush,add:add,populate:populate,load:function(q){if(!options.cacheLength||!length)return null;if(!options.url&&options.matchContains){var csub=[];for(var k in data){if(k.length>0){var c=data[k];$.each(c,function(i,x){if(matchSubset(x.value,q)){csub.push(x);}});}}
return csub;}else
if(data[q]){return data[q];}else
if(options.matchSubset){for(var i=q.length-1;i>=options.minChars;i--){var c=data[q.substr(0,i)];if(c){var csub=[];$.each(c,function(i,x){if(matchSubset(x.value,q)){csub[csub.length]=x;}});return csub;}}}
return null;}};};$.Autocompleter.Select=function(options,input,select,config){var CLASSES={ACTIVE:"ac_over"};var listItems,active=-1,data,term="",needsInit=true,element,list;function init(){if(!needsInit)return;element=$("<div />").attr("id",options.resultsId).hide().addClass(options.resultsClass).css("position",options.resultsPosition).appendTo(document.body);list=$("<ul/>").appendTo(element).mouseover(function(event){if(target(event).nodeName&&target(event).nodeName.toUpperCase()=='LI'){active=$("li",list).removeClass(CLASSES.ACTIVE).index(target(event));$(target(event)).addClass(CLASSES.ACTIVE);}}).click(function(event){$(target(event)).addClass(CLASSES.ACTIVE);select();input.focus();return false;}).mousedown(function(){config.mouseDownOnSelect=true;}).mouseup(function(){config.mouseDownOnSelect=false;});if(options.width>0)element.css("width",options.width);needsInit=false;}
function target(event){var element=event.target;while(element&&element.tagName!="LI")element=element.parentNode;if(!element)return[];return element;}
function moveSelect(step){listItems.slice(active,active+1).removeClass(CLASSES.ACTIVE);movePosition(step);var activeItem=listItems.slice(active,active+1).addClass(CLASSES.ACTIVE);if(options.scroll){var offset=0;listItems.slice(0,active).each(function(){offset+=this.offsetHeight;});if((offset+activeItem[0].offsetHeight-list.scrollTop())>list[0].clientHeight){list.scrollTop(offset+activeItem[0].offsetHeight-list.innerHeight());}else if(offset<list.scrollTop()){list.scrollTop(offset);}}};function movePosition(step){active+=step;if(active<0){active=listItems.size()-1;}else if(active>=listItems.size()){active=0;}}
function limitNumberOfItems(available){return options.max&&options.max<available?options.max:available;}
function fillList(){list.empty();var max=limitNumberOfItems(data.length);for(var i=0;i<max;i++){if(!data[i])continue;var formatted=options.formatItem(data[i].data,i+1,max,data[i].value,term);if(formatted===false)continue;var li=$("<li/>").html(options.highlight(formatted,term)).addClass(i%2==0?"ac_even":"ac_odd").appendTo(list)[0];$.data(li,"ac_data",data[i]);}
listItems=list.find("li");if(options.selectFirst){listItems.slice(0,1).addClass(CLASSES.ACTIVE);active=0;}
if($.fn.bgiframe)list.bgiframe();}
return{display:function(d,q){init();data=d;term=q;fillList();},next:function(){moveSelect(1);},prev:function(){moveSelect(-1);},pageUp:function(){if(active!=0&&active-8<0){moveSelect(-active);}else{moveSelect(-8);}},pageDown:function(){if(active!=listItems.size()-1&&active+8>listItems.size()){moveSelect(listItems.size()-1-active);}else{moveSelect(8);}},hide:function(){element&&element.hide();listItems&&listItems.removeClass(CLASSES.ACTIVE);active=-1;},visible:function(){return element&&element.is(":visible");},current:function(){return this.visible()&&(listItems.filter("."+CLASSES.ACTIVE)[0]||options.selectFirst&&listItems[0]);},show:function(){var offset=$(input).offset();element.css({width:typeof options.width=="string"||options.width>0?options.width:$(input).width(),top:offset.top+input.offsetHeight,left:offset.left}).show();if(options.scroll){list.scrollTop(0);list.css({maxHeight:options.scrollHeight,overflow:'auto'});if($.browser.msie&&typeof document.body.style.maxHeight==="undefined"){var listHeight=0;listItems.each(function(){listHeight+=this.offsetHeight;});var scrollbarsVisible=listHeight>options.scrollHeight;list.css('height',scrollbarsVisible?options.scrollHeight:listHeight);if(!scrollbarsVisible){listItems.width(list.width()-parseInt(listItems.css("padding-left"))-parseInt(listItems.css("padding-right")));}}}},selected:function(){var selected=listItems&&listItems.filter("."+CLASSES.ACTIVE).removeClass(CLASSES.ACTIVE);return selected&&selected.length&&$.data(selected[0],"ac_data");},emptyList:function(){list&&list.empty();},unbind:function(){element&&element.remove();}};};$.fn.selection=function(start,end){if(start!==undefined){return this.each(function(){if(this.createTextRange){var selRange=this.createTextRange();if(end===undefined||start==end){selRange.move("character",start);selRange.select();}else{selRange.collapse(true);selRange.moveStart("character",start);selRange.moveEnd("character",end);selRange.select();}}else if(this.setSelectionRange){this.setSelectionRange(start,end);}else if(this.selectionStart){this.selectionStart=start;this.selectionEnd=end;}});}
var field=this[0];if(field.createTextRange){var range=document.selection.createRange(),orig=field.value,teststring="<->",textLength=range.text.length;range.text=teststring;var caretAt=field.value.indexOf(teststring);field.value=orig;this.selection(caretAt,caretAt+textLength);return{start:caretAt,end:caretAt+textLength}}else if(field.selectionStart!==undefined){return{start:field.selectionStart,end:field.selectionEnd}}};})(jQuery);(function($){var escapable=/[\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,meta={'\b':'\\b','\t':'\\t','\n':'\\n','\f':'\\f','\r':'\\r','"':'\\"','\\':'\\\\'};function quote(string){return'"'+string.replace(escapable,function(a){var c=meta[a];return typeof c==="string"?c:"\\u"+("0000"+a.charCodeAt(0).toString(16)).slice(-4);})+'"';}
function f(n){return n<10?"0"+n:n;}
function str(key,holder){var i,v,len,partial,value=holder[key],type=typeof value;if(value&&typeof value==="object"&&typeof value.toJSON==="function"){value=value.toJSON(key);type=typeof value;}
switch(type){case"string":return quote(value);case"number":return isFinite(value)?String(value):"null";case"boolean":return String(value);case"object":if(!value){return"null";}
switch(Object.prototype.toString.call(value)){case"[object Date]":return isFinite(value.valueOf())?'"'+value.getUTCFullYear()+"-"+f(value.getUTCMonth()+1)+"-"+f(value.getUTCDate())+"T"+
f(value.getUTCHours())+":"+f(value.getUTCMinutes())+":"+f(value.getUTCSeconds())+"Z"+'"':"null";case"[object Array]":len=value.length;partial=[];for(i=0;i<len;i++){partial.push(str(i,value)||"null");}
return"["+partial.join(",")+"]";default:partial=[];for(i in value){if(Object.prototype.hasOwnProperty.call(value,i)){v=str(i,value);if(v){partial.push(quote(i)+":"+v);}}}
return"{"+partial.join(",")+"}";}}}
$.stringifyJSON=function(value){if(window.JSON&&window.JSON.stringify){return window.JSON.stringify(value);}
return str("",{"":value});};}(jQuery));(function($){var ajax=$.ajax;var pendingRequests={};var synced=[];var syncedData=[];$.ajax=function(settings){settings=jQuery.extend(settings,jQuery.extend({},jQuery.ajaxSettings,settings));var port=settings.port;switch(settings.mode){case"abort":if(pendingRequests[port]){pendingRequests[port].abort();}
return pendingRequests[port]=ajax.apply(this,arguments);case"queue":var _old=settings.complete;settings.complete=function(){if(_old)
_old.apply(this,arguments);jQuery([ajax]).dequeue("ajax"+port);;};jQuery([ajax]).queue("ajax"+port,function(){ajax(settings);});return;case"sync":var pos=synced.length;synced[pos]={error:settings.error,success:settings.success,complete:settings.complete,done:false};syncedData[pos]={error:[],success:[],complete:[]};settings.error=function(){syncedData[pos].error=arguments;};settings.success=function(){syncedData[pos].success=arguments;};settings.complete=function(){syncedData[pos].complete=arguments;synced[pos].done=true;if(pos==0||!synced[pos-1])
for(var i=pos;i<synced.length&&synced[i].done;i++){if(synced[i].error)synced[i].error.apply(jQuery,syncedData[i].error);if(synced[i].success)synced[i].success.apply(jQuery,syncedData[i].success);if(synced[i].complete)synced[i].complete.apply(jQuery,syncedData[i].complete);synced[i]=null;syncedData[i]=null;}};}
return ajax.apply(this,arguments);};})(jQuery);var BATS=new function(){var requestUrl='';var requestTimeout=75000;var debug=false;var enableFuncs=new Array();var disconnectFuncs=new Array();var receiveFuncs=new Array();var cookieDomain='';var timeMsg='Real time prices by BATS. Volume delayed. ';var testIntID=null;var greenColor='#008000';var redColor='#FF0000';this.Enabled=true;var log=function(msg){var qsDebug=window.location.href.toString().toLowerCase().indexOf("batsdebug=1")>-1;if((debug||qsDebug)&&typeof(console)!='undefined'&&console.log){console.log("BATS: "+msg);}};var batsCookie=function(value){var retval=true;if(typeof(value)!='undefined'){$.cookie("BATSEnabled",value.toString(),{expires:365,path:'/',domain:cookieDomain});retval=value;log("cookie value set to: "+retval);}
else{var cookieValue=$.cookie("BATSEnabled");if(cookieValue!=null){retval=cookieValue=="true"?true:false;log("cookie value read: "+retval);}}
return retval;};this.EnableDebug=function(val){debug=val;};this.init=function(url,timeout,cDomain,green,red){requestUrl=url;cookieDomain=cDomain;greenColor=green;redColor=red;log("calling initialize with request url: "+requestUrl);fm.websync.client.initialize({requestUrl:requestUrl,stream:{timeout:timeout}});fm.utilities.error.verbose=false;this.Enabled=batsCookie();if(!this.Enabled){$("#batsToggle").removeClass("bats-toggleOn").addClass("bats-toggleOff");}
if(this.Enabled&&!this.isConnected()){this.connect();}};this.toggleOnOff=function(){if($("#batsToggle").hasClass("bats-toggleOn")){log("turned off by toggle");$("#batsToggle").removeClass("bats-toggleOn").addClass("bats-toggleOff");batsCookie(false);this.Enabled=false;if(fm.websync.client.isConnected()){this.unsubscribeAll();this.disconnect();}}
else{log("turned on by toggle");$("#batsToggle").removeClass("bats-toggleOff").addClass("bats-toggleOn");batsCookie(true);this.Enabled=true;this.connect();}
if(arrGraphPopup[0,1]!=undefined){arrGraphPopup[0,1].ToggleBATSFromCookie();}};this.getTimeMsg=function(){return timeMsg;}
this.isConnected=function(){if(fm){return fm.websync.client.isConnected();}else return false;};this.connect=function(){log("attempting connect");fm.websync.client.connect({requestUrl:requestUrl,onSuccess:function(args){if(args.isReconnect){log('Reconnected!');}else{log('Connected!');for(var i=0;i<enableFuncs.length;i++){enableFuncs[i]();}}},onFailure:function(args){if(args.isReconnect){log('Could not reconnect: '+args.error);}else{log('Could not connect: '+args.error);}},onStreamFailure:function(args){if(args.willReconnect){log('Connection to server lost, reconnecting..., '+args.error);}else{log('Connection to server lost permanently. '+args.error);}}});};this.disconnect=function(){log("attempting disconnect");fm.websync.client.disconnect({onSuccess:function(args){log('Disconnected!');},onFailure:function(args){log('Could not disconnect: '+args.error);}});for(var i=0;i<disconnectFuncs.length;i++){disconnectFuncs[i]();}};this.subscribe=function(symbol){var symbolUpper=symbol.toUpperCase();var channel='/'+symbolUpper;if(symbolUpper.length>0){log("attempting subscribe to channel: "+channel);fm.websync.client.subscribe({requestUrl:requestUrl,channel:channel,onSuccess:function(args){if(args.isResubscribe){log('Resubscribed to channel: '+channel);}else{log('Subscribed to channel: '+channel);}},onFailure:function(args){if(args.isResubscribe){log('Could not resubscribe: '+args.error);}else{log('Could not subscribe: '+args.error);}},onReceive:function(args){log('Received message: '+fm.json.stringify(args.data));for(var i=0;i<receiveFuncs.length;i++){receiveFuncs[i](args.data);}}});}};this.unsubscribe=function(symbol){var symbolUpper=symbol.toUpperCase();var channel='/'+symbolUpper;if(symbolUpper.length>0){log("attempting unsubscribe from channel: "+channel);fm.websync.client.unsubscribe({requestUrl:requestUrl,channel:channel,onSuccess:function(args){log('Unsubscribed from channel: '+channel);},onFailure:function(args){log('Could not unsubscribe: '+args.error);}});}};this.subscribeMulti=function(symbolArray){var channels=new Array();for(var i=0;i<symbolArray.length;i++){channels.push('/'+symbolArray[i].toUpperCase());}
if(channels.length>0){log("attempting subscribe to channels: "+channels);fm.websync.client.subscribe({requestUrl:requestUrl,channels:channels,onSuccess:function(args){if(args.isResubscribe){log('Resubscribed Multi to channels: '+channels);}else{log('Subscribed Multi to channels: '+channels);}},onFailure:function(args){if(args.isResubscribe){log('Could not resubscribe multi: '+args.error);}else{log('Could not subscribe multi: '+args.error);}},onReceive:function(args){log('Received message: '+fm.json.stringify(args.data));for(var i=0;i<receiveFuncs.length;i++){receiveFuncs[i](args.data);}}});}};this.unsubscribeMulti=function(symbolArray){var channels=new Array();for(var i=0;i<symbolArray.length;i++){channels.push('/'+symbolArray[i].toUpperCase());}
if(channels.length>0){log("attempting unsubscribe from channels: "+channels);fm.websync.client.unsubscribe({requestUrl:requestUrl,channels:channels,onSuccess:function(args){log('Unsubscribed multi from channels: '+channels);},onFailure:function(args){log('Could not unsubscribe multi: '+args.error);}});}};this.unsubscribeAll=function(){var allChannels=fm.websync.client.getSubscribedChannels();if(allChannels.length>0){log("attempting unsubscribe all from channels: "+allChannels);fm.websync.client.unsubscribe({requestUrl:requestUrl,channels:allChannels,onSuccess:function(args){log('Unsubscribed from all channels: '+allChannels);},onFailure:function(args){log('Could not unsubscribe all: '+args.error);}});}};this.addEnableFunc=function(enableFunc){enableFuncs.push(enableFunc);};this.addDisconnectFunc=function(disconnectFunc){disconnectFuncs.push(disconnectFunc);}
this.addReceiveFunc=function(receiveFunc){receiveFuncs.push(receiveFunc);};this.getPriceDifference=function(jQueryObj1,newPrice){if(jQueryObj1!=null&&jQueryObj1.length>0){var val1=+jQueryObj1.html().replace("$","").replace("%","");return newPrice-val1;}
return 0;};this.startHighlight=function(jQueryObj,value,bgColor){var newBackColor=greenColor;if(value<0){newBackColor=redColor;}
if(jQueryObj!=null&&jQueryObj.length>0&&(value>0||value<0)){try{jQueryObj.effect("highlight",{color:newBackColor,orgColor:bgColor},2000);}
catch(e){var color=bgColor!=null&&bgColor!=''?bgColor:'#fff';jQueryObj.css('backgroundColor',color);}}};this.getTimeStamp=function(data,withMessage){log("getting timestamp for: "+data.TradeTime+", offset: "+data.UtcOffset);var milliDate=$.extend(new Date(),data.TradeTime);var time=milliDate;var dt=Date.parse(milliDate);if(dt!=null){var dataOffset=Math.abs(data.UtcOffset);var offset=dt.getTimezoneOffset();if(offset>dataOffset){dt.addMinutes(offset-dataOffset);}
else if(offset<dataOffset){dt.addMinutes(offset+dataOffset);}
time=dt.toString("MM/dd/yyyy hh:mm tt")+" EST";}
var msg="";if(withMessage){msg=timeMsg;}
return msg+"Last Update: "+time;};this.startTester=function(symbol){var prc=360;testIntID=setInterval(function(){var data=new function(){this.Last=prc;this.High=prc;this.Low=prc;this.TradeTime=new Date();this.Symbol=symbol;};for(var i=0;i<receiveFuncs.length;i++){receiveFuncs[i](data);}
prc+=.5;},500);};this.stopTester=function(){if(testIntID!=null&&testIntID){clearInterval(testIntID);}};};