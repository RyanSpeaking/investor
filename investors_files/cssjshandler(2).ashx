
var t_MI;var timer_is_on_MI=0;var g_ConValue_MI;var g_Refresh_MI;function InitMarketIndices(Refresh,ConValue){g_ConValue_MI=ConValue;g_Refresh_MI=Refresh;LoadTimer();}
function LoadTimer(){if(!timer_is_on_MI){timer_is_on_MI=1;LoadMarketIndices();}}
function LoadMarketIndices(){Won.ICom.Code.Services.SiteAjaxService.GetMarketIndices(onGetMarketIndicesComplete);}
function return_MI_URLAttributes(getSortedIndicesValue,i){var Index=getSortedIndicesValue[i].Symbol;var point=3;var chartinfo='pvc;daily;1;';return"\'"+Index+"\'"+','+point+','+"\'"+chartinfo+"\'";}
function getIndexValuePctChangeCss(getSortedIndicesValue,i,SpecialIndex){var PctChange;if(SpecialIndex)
PctChange=getSortedIndicesValue[i].IndexVolumePctChange;else
PctChange=getSortedIndicesValue[i].IndexValuePctChange;var CssClass;if(PctChange>0){CssClass="upPercent";}
else if(PctChange<0){CssClass="downPercent";}
else
{CssClass="Percent";}
return CssClass;}
function getIndexValueChangeCss(getSortedIndicesValue,i,SpecialIndex){var Change;if(SpecialIndex)
Change=getSortedIndicesValue[i].IndexVolumeChange;else
Change=getSortedIndicesValue[i].IndexValueChange;var CssClass;if(Change>0){CssClass="upPercent";}
else if(Change<0){CssClass="downPercent";}
else
{CssClass="Percent";}
return CssClass;}
function getAppendedIndexName(getSortedIndicesValue,i,SpecialIndex){var AppendIndexName;if(getSortedIndicesValue[i].Symbol=="0S&P5"){AppendIndexName=getSortedIndicesValue[i].IndexAbbr+"*";}
if(getSortedIndicesValue[i].Symbol=="0DJIA"){AppendIndexName=getSortedIndicesValue[i].IndexAbbr+"*";}
if(getSortedIndicesValue[i].Symbol=="0NYC"){AppendIndexName=getSortedIndicesValue[i].IndexAbbr+" VOL";}
if(getSortedIndicesValue[i].Symbol=="0NDQC"){AppendIndexName=getSortedIndicesValue[i].IndexAbbr;}
if((getSortedIndicesValue[i].Symbol=="0NDQC")&&(SpecialIndex)){AppendIndexName=getSortedIndicesValue[i].IndexAbbr+" VOL";}
return AppendIndexName;}
function getAppendedText(getSortedIndicesValue,i,SpecialIndex){var AppendedText="";if(SpecialIndex){var chg=getSortedIndicesValue[i].IndexVolumeChange;chg/=1000;var MathAbsVal=Math.abs(chg);AppendedText="(MIL)";}
return AppendedText;}
function getFormattedIndexValues(getSortedIndicesValue,i,SpecialIndex){var FormattedValue;var vol=getSortedIndicesValue[i].IndexValue;FormattedValue=getFormattedValue(vol,SpecialIndex);return FormattedValue;}
function getFormattedValue(num,SpecialIndex){num=num.toString().replace(/\$|\,/g,'');if(isNaN(num))
num="0";sign=(num==(num=Math.abs(num)));num=Math.floor(num*100+0.50000000001);dec=num%100;num=Math.floor(num/100).toString();if(dec<10)
dec="0"+dec;for(var i=0;i<Math.floor((num.length-(1+i))/3);i++)
num=num.substring(0,num.length-(4*i+3))+','+
num.substring(num.length-(4*i+3));if(SpecialIndex)
return(((sign)?'':'-')+num);else
return(((sign)?'':'-')+num+'.'+dec);}
function truncate(_value){if(_value<0)return Math.ceil(_value);else return Math.floor(_value);}
function getFormattedIndexVolumes(getSortedIndicesValue,i,SpecialIndex){var FormattedVolume;var vol=getSortedIndicesValue[i].IndexVolume;vol/=1000;vol/=10;FormattedVolume=truncate(vol);FormattedVolume=getFormattedValue(FormattedVolume,SpecialIndex);return FormattedVolume;}
function getFormattedIndexVolumeChange(getSortedIndicesValue,i,SpecialIndex){var FormattedVolume;var volchg=getSortedIndicesValue[i].IndexVolumeChange;if(volchg!=0)
volchg/=1000;volchg/=10;FormattedVolume=getFormattedValue(volchg,SpecialIndex)
return FormattedVolume;}
function getArrayEntryBySymbol(arr,symbol){for(var i=0;i<arr.length;i++){if(arr[i].Symbol==symbol){return arr[i];}}
return null;}
function onGetMarketIndicesComplete(result){var getSortedIndicesValue=new Array();var dynamicHtml="";var SpecialIndex=false;if(result.marketIndices!=null){var val=getArrayEntryBySymbol(result.marketIndices,"0NDQC");if(val!=null){getSortedIndicesValue.push(val);getSortedIndicesValue.push(val);}
val=getArrayEntryBySymbol(result.marketIndices,"0NYC");if(val!=null){getSortedIndicesValue.push(val);}
val=getArrayEntryBySymbol(result.marketIndices,"0DJIA");if(val!=null){getSortedIndicesValue.push(val);}
val=getArrayEntryBySymbol(result.marketIndices,"0S&P5");if(val!=null){getSortedIndicesValue.push(val);}}
for(var i=0;i<getSortedIndicesValue.length;i++){if(((i==0)&&(getSortedIndicesValue[i].Symbol=="0NDQC"))||(getSortedIndicesValue[i].Symbol=="0NYC")){SpecialIndex=true;}
else{SpecialIndex=false;}
var IndexAbbrSpanID="spanMarketIndexAbbr_"+i.toString();var IndexValueSpanID="spanMarketIndexValue_"+i.toString();var IndexAppendedText=getAppendedText(getSortedIndicesValue,i,SpecialIndex);var IndexValuePctChangeSpanID="spanMarketIndexValuePctChange_"+i.toString();var IndexValueChangeSpanID="spanMarketIndexValueChange_"+i.toString();var getIndexName=getAppendedIndexName(getSortedIndicesValue,i,SpecialIndex);var IndexVolumePctChangeCss=getIndexValuePctChangeCss(getSortedIndicesValue,i,SpecialIndex);var IndexVolumeChangeCss=getIndexValueChangeCss(getSortedIndicesValue,i,SpecialIndex);var get_MI_URLAttributes=return_MI_URLAttributes(getSortedIndicesValue,i);dynamicHtml+="<table class=\"MarketIndexPanel\"><tr><td><span id=\""+IndexAbbrSpanID+"\" class=\"stkName\" onclick=\"javascript:jsfOpenPowerTool(";dynamicHtml+=get_MI_URLAttributes;dynamicHtml+=");return false;\" style=\"cursor: pointer;\">";dynamicHtml+=getIndexName;dynamicHtml+="</span><span class=\"stkName\" style=\"font-size: 8px; vertical-align: bottom;\">"+IndexAppendedText+"</span></td><td class=\"col2\"><span id=\""+IndexValueSpanID+"\" class=\"volume\">";if(SpecialIndex){var FormattedIndexVolumes=getFormattedIndexVolumes(getSortedIndicesValue,i,SpecialIndex);dynamicHtml+=FormattedIndexVolumes;}
else{var FormattedIndexValues=getFormattedIndexValues(getSortedIndicesValue,i,SpecialIndex);dynamicHtml+=FormattedIndexValues;}
dynamicHtml+="</span></td></tr><tr><td><span id=\""+IndexValueSpanID+"\" class=\""+IndexVolumePctChangeCss+"\">";if(SpecialIndex){dynamicHtml+=getSortedIndicesValue[i].IndexVolumePctChange+"%";}
else{dynamicHtml+=getSortedIndicesValue[i].IndexValuePctChange+"%";}
dynamicHtml+="</span></td><td class=\"col2\"><span id=\""+IndexValueChangeSpanID+"\" class=\""+IndexVolumeChangeCss+"\">";if(SpecialIndex){var FormattedIndexVolumeChange=getFormattedIndexVolumeChange(getSortedIndicesValue,i,SpecialIndex);dynamicHtml+=FormattedIndexVolumeChange;}
else{dynamicHtml+=getSortedIndicesValue[i].IndexValueChange;}
dynamicHtml+="</span></td></tr></table>";}
document.getElementById('divMarketIndices').innerHTML=dynamicHtml;t_MI=setTimeout("LoadMarketIndices()",g_Refresh_MI);}
var SocialMedia=new function(){var delaySocial=null;var gFirst=true;var fbFirst=true;var linFirst=true;var fbHeaderUrl='';this.Init=function(fbHeadUrl){fbHeaderUrl=fbHeadUrl;addSocialEvents("a.lFacebook","div.hFacebook");addSocialEvents("a.lTwitter","div.hTwitter");addSocialEvents("a.lGoogle","div.hGoogle");addSocialEvents("a.lLinkedin","div.hLinkedin");}
this.InitExternal=function(fbId,rootPath,afterInit){window.___gcfg={parsetags:'explicit'};$.getScript('https://apis.google.com/js/plusone.js',function(){gapi.plusone.go();});$(document).ready(function(){var scriptTag=document.createElement('script');scriptTag.type='text/javascript';scriptTag.async=true;scriptTag.src='https://platform.twitter.com/widgets.js';var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(scriptTag,s);});$(document).ready(function(){var scriptTag=document.createElement('script');scriptTag.type='text/javascript';scriptTag.async=true;scriptTag.src='https://platform.linkedin.com/in.js';var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(scriptTag,s);});window.fbAsyncInit=function(){FB.init({appId:fbId,status:true,cookie:true,oauth:true,xfbml:true});if(typeof(afterInit)!='undefined'){afterInit();}
FB.Event.subscribe('edge.create',function(response){logFBEvent(response,'fb:like');});FB.Event.subscribe('edge.remove',function(response){logFBEvent(response,'fb:unlike');});};(function(d){var js,id='facebook-jssdk',ref=d.getElementsByTagName('script')[0];if(d.getElementById(id)){return;}
js=d.createElement('script');js.id=id;js.async=true;js.src="//connect.facebook.net/en_US/all.js";ref.parentNode.insertBefore(js,ref);}(document));};this.initPInterest=function(){$.getScript('https://assets.pinterest.com/js/pinit.js');};var addSocialEvents=function(lnkSelector,divSelector){$(lnkSelector).click(function(){clearSocialMedia();showSocial(lnkSelector,divSelector);$(divSelector).mouseover(function(){showSocial(lnkSelector,divSelector);}).mouseout(function(){BeginHideSocial();});return false;}).mouseout(function(){BeginHideSocial();});$(divSelector+" .h4 span").click(function(){clearSocialMedia();});};var clearSocialMedia=function(){$(".hSocial").hide();if(typeof delaySocial!="undefined"){clearTimeout(delaySocial);}};var showSocial=function(lnkSelector,divSelector){var pos=$(lnkSelector).position();var css={'top':(pos.top-4).toString()+'px','left':(pos.left-24).toString()+'px'};$(divSelector).css(css).show();if(divSelector.toLowerCase().indexOf("google")>-1&&gFirst){gFirst=false;gapi.plus.render("GoogleBadge",{href:"https://plus.google.com/108468197399314074552",width:"260",height:"69"});}
if(divSelector.toLowerCase().indexOf("facebook")>-1&&fbFirst){fbFirst=false;$("#FacebookHeader").empty().html("<fb:like send=\"false\" width=\"90\" show_faces=\"false\" layout=\"button_count\" ref=\"header\" href=\""+fbHeaderUrl+"\"></fb:like>");FB.XFBML.parse($("#FacebookHeader")[0]);}
if(divSelector.toLowerCase().indexOf("linkedin")>-1&&linFirst){linFirst=false;}
if(typeof delaySocial!="undefined"){clearTimeout(delaySocial);}};var loadLinkedinFollow=function(){var s=document.getElementById('LinkedinHeader');var scriptTag=document.createElement('script');scriptTag.type='text/javascript';scriptTag.async=true;var att=document.createAttribute('data-id');att.nodeValue='11970';scriptTag.attributes.setNamedItem(att);att=document.createAttribute('data-counter');att.nodeValue='right';scriptTag.attributes.setNamedItem(att);att=document.createAttribute('type');att.nodeValue='IN/FollowCompany'
scriptTag.attributes.setNamedItem(att);s.appendChild(scriptTag);};var BeginHideSocial=function(){if(typeof delaySocial!="undefined"){clearTimeout(delaySocial);}
delaySocial=setTimeout(clearSocialMedia,1000);};var logFBEvent=function(href,type){try{if(typeof(s)!='undefined'){s.linkTrackVars="prop11,prop12,prop48,eVar11,eVar33,events";s.linkTrackEvents="event32";s.prop48=type;s.eVar33=type;s.events="event32";s.tl(this,"o",type+"-"+href);}}
catch(e){}};};jQuery.cookie=function(name,value,options){if(typeof value!='undefined'){options=options||{};if(value===null){value='';options.expires=-1;}
var expires='';if(options.expires&&(typeof options.expires=='number'||options.expires.toUTCString)){var date;if(typeof options.expires=='number'){date=new Date();date.setTime(date.getTime()+(options.expires*24*60*60*1000));}else{date=options.expires;}
expires='; expires='+date.toUTCString();}
var path=options.path?'; path='+(options.path):'';var domain=options.domain?'; domain='+(options.domain):'';var secure=options.secure?'; secure':'';document.cookie=[name,'=',encodeURIComponent(value),expires,path,domain,secure].join('');}else{var cookieValue=null;if(document.cookie&&document.cookie!=''){var cookies=document.cookie.split(';');for(var i=0;i<cookies.length;i++){var cookie=jQuery.trim(cookies[i]);if(cookie.substring(0,name.length+1)==(name+'=')){cookieValue=decodeURIComponent(cookie.substring(name.length+1));break;}}}
return cookieValue;}};(function(){var supports=(function(){var supports={};var html;var work=this.document.createElement('div');html="<P><I></P></I>";work.innerHTML=html;supports.tagSoup=work.innerHTML!==html;work.innerHTML="<P><i><P></P></i></P>";supports.selfClose=work.childNodes.length===2;return supports;})();var startTag=/^<([\-A-Za-z0-9_]+)((?:\s+[\w\-]+(?:\s*=\s*(?:(?:"[^"]*")|(?:'[^']*')|[^>\s]+))?)*)\s*(\/?)>/;var endTag=/^<\/([\-A-Za-z0-9_]+)[^>]*>/;var attr=/([\-A-Za-z0-9_]+)(?:\s*=\s*(?:(?:"((?:\\.|[^"])*)")|(?:'((?:\\.|[^'])*)')|([^>\s]+)))?/g;var fillAttr=/^(checked|compact|declare|defer|disabled|ismap|multiple|nohref|noresize|noshade|nowrap|readonly|selected)$/i;var DEBUG=false;function htmlParser(stream,options){stream=stream||'';options=options||{};for(var key in supports){if(supports.hasOwnProperty(key)){if(options.autoFix){options['fix_'+key]=true;}
options.fix=options.fix||options['fix_'+key];}}
var stack=[];var append=function(str){stream+=str;};var prepend=function(str){stream=str+stream;};var detect={comment:/^<!--/,endTag:/^<\//,atomicTag:/^<\s*(script|style|noscript)[\s>]/i,startTag:/^</,chars:/^[^<]/};var reader={comment:function(){var index=stream.indexOf("-->");if(index>=0){return{content:stream.substr(4,index),length:index+3};}},endTag:function(){var match=stream.match(endTag);if(match){return{tagName:match[1],length:match[0].length};}},atomicTag:function(){var start=reader.startTag();if(start){var rest=stream.slice(start.length);if(rest.match(new RegExp("<\/\\s*"+start.tagName+"\\s*>","i"))){var match=rest.match(new RegExp("([\\s\\S]*?)<\/\\s*"+start.tagName+"\\s*>","i"));if(match){return{tagName:start.tagName,attrs:start.attrs,content:match[1],length:match[0].length+start.length};}}}},startTag:function(){var match=stream.match(startTag);if(match){var attrs={};match[2].replace(attr,function(match,name){var value=arguments[2]||arguments[3]||arguments[4]||fillAttr.test(name)&&name||null;attrs[name]=value;});return{tagName:match[1],attrs:attrs,unary:!!match[3],length:match[0].length};}},chars:function(){var index=stream.indexOf("<");return{length:index>=0?index:stream.length};}};var readToken=function(){for(var type in detect){if(detect[type].test(stream)){if(DEBUG){console.log('suspected '+type);}
var token=reader[type]();if(token){if(DEBUG){console.log('parsed '+type,token);}
token.type=token.type||type;token.text=stream.substr(0,token.length);stream=stream.slice(token.length);return token;}
return null;}}};var readTokens=function(handlers){var tok;while(tok=readToken()){if(handlers[tok.type]&&handlers[tok.type](tok)===false){return;}}};var clear=function(){var rest=stream;stream='';return rest;};var rest=function(){return stream;};if(options.fix){(function(){var EMPTY=/^(AREA|BASE|BASEFONT|BR|COL|FRAME|HR|IMG|INPUT|ISINDEX|LINK|META|PARAM|EMBED)$/i;var CLOSESELF=/^(COLGROUP|DD|DT|LI|OPTIONS|P|TD|TFOOT|TH|THEAD|TR)$/i;var stack=[];stack.last=function(){return this[this.length-1];};stack.lastTagNameEq=function(tagName){var last=this.last();return last&&last.tagName&&last.tagName.toUpperCase()===tagName.toUpperCase();};stack.containsTagName=function(tagName){for(var i=0,tok;tok=this[i];i++){if(tok.tagName===tagName){return true;}}
return false;};var correct=function(tok){if(tok&&tok.type==='startTag'){tok.unary=EMPTY.test(tok.tagName)||tok.unary;}
return tok;};var readTokenImpl=readToken;var peekToken=function(){var tmp=stream;var tok=correct(readTokenImpl());stream=tmp;return tok;};var closeLast=function(){var tok=stack.pop();prepend('</'+tok.tagName+'>');};var handlers={startTag:function(tok){var tagName=tok.tagName;if(tagName.toUpperCase()==='TR'&&stack.lastTagNameEq('TABLE')){prepend('<TBODY>');prepareNextToken();}else if(options.fix_selfClose&&CLOSESELF.test(tagName)&&stack.containsTagName(tagName)){if(stack.lastTagNameEq(tagName)){closeLast();}else{prepend('</'+tok.tagName+'>');prepareNextToken();}}else if(!tok.unary){stack.push(tok);}},endTag:function(tok){var last=stack.last();if(last){if(options.fix_tagSoup&&!stack.lastTagNameEq(tok.tagName)){closeLast();}else{stack.pop();}}else if(options.fix_tagSoup){skipToken();}}};var skipToken=function(){readTokenImpl();prepareNextToken();};var prepareNextToken=function(){var tok=peekToken();if(tok&&handlers[tok.type]){handlers[tok.type](tok);}};readToken=function(){prepareNextToken();return correct(readTokenImpl());};})();}
return{append:append,readToken:readToken,readTokens:readTokens,clear:clear,rest:rest,stack:stack};}
htmlParser.supports=supports;htmlParser.tokenToString=function(tok){var handler={comment:function(tok){return'<--'+tok.content+'-->';},endTag:function(tok){return'</'+tok.tagName+'>';},atomicTag:function(tok){console.log(tok);return handler.startTag(tok)+
tok.content+
handler.endTag(tok);},startTag:function(tok){var str='<'+tok.tagName;for(var key in tok.attrs){var val=tok.attrs[key];str+=' '+key+'="'+(val?val.replace(/(^|[^\\])"/g,'$1\\\"'):'')+'"';}
return str+(tok.unary?'/>':'>');},chars:function(tok){return tok.text;}};return handler[tok.type](tok);};htmlParser.escapeAttributes=function(attrs){var escapedAttrs={};for(var name in attrs){var value=attrs[name];escapedAttrs[name]=value&&value.replace(/(^|[^\\])"/g,'$1\\\"');}
return escapedAttrs;};for(var key in supports){htmlParser.browserHasFlaw=htmlParser.browserHasFlaw||(!supports[key])&&key;}
this.htmlParser=htmlParser;})();(function(){var global=this;if(global.postscribe){return;}
var DEBUG=true;var DEBUG_CHUNK=false;var slice=Array.prototype.slice;function doNothing(){}
function isFunction(x){return"function"===typeof x;}
function each(arr,fn,_this){var i,len=(arr&&arr.length)||0;for(i=0;i<len;i++){fn.call(_this,arr[i],i);}}
function eachKey(obj,fn,_this){var key;for(key in obj){if(obj.hasOwnProperty(key)){fn.call(_this,key,obj[key]);}}}
function set(obj,props){eachKey(props,function(key,value){obj[key]=value;});return obj;}
function defaults(options,_defaults){options=options||{};eachKey(_defaults,function(key,val){if(options[key]==null){options[key]=val;}});return options;}
function toArray(obj){try{return slice.call(obj);}catch(e){var ret=[];each(obj,function(val){ret.push(val);});return ret;}}
function isScript(tok){return(/^script$/i).test(tok.tagName);}
var WriteStream=(function(){var BASEATTR='data-ps-';function data(el,name,value){var attr=BASEATTR+name;if(arguments.length===2){var val=el.getAttribute(attr);return val==null?val:String(val);}else if(value!=null&&value!==''){el.setAttribute(attr,value);}else{el.removeAttribute(attr);}}
function WriteStream(root,options){var doc=root.ownerDocument;set(this,{root:root,options:options,win:doc.defaultView||doc.parentWindow,doc:doc,parser:global.htmlParser('',{autoFix:true}),actuals:[root],proxyHistory:'',proxyRoot:doc.createElement(root.nodeName),scriptStack:[],writeQueue:[]});data(this.proxyRoot,'proxyof',0);}
WriteStream.prototype.write=function(){[].push.apply(this.writeQueue,arguments);var arg;while(!this.deferredRemote&&this.writeQueue.length){arg=this.writeQueue.shift();if(isFunction(arg)){this.callFunction(arg);}else{this.writeImpl(arg);}}};WriteStream.prototype.callFunction=function(fn){var tok={type:"function",value:fn.name||fn.toString()};this.onScriptStart(tok);fn.call(this.win,this.doc);this.onScriptDone(tok);};WriteStream.prototype.writeImpl=function(html){this.parser.append(html);var tok,tokens=[];while((tok=this.parser.readToken())&&!isScript(tok)){tokens.push(tok);}
this.writeStaticTokens(tokens);if(tok){this.handleScriptToken(tok);}};WriteStream.prototype.writeStaticTokens=function(tokens){var chunk=this.buildChunk(tokens);if(!chunk.actual){return;}
chunk.html=this.proxyHistory+chunk.actual;this.proxyHistory+=chunk.proxy;this.proxyRoot.innerHTML=chunk.html;if(DEBUG_CHUNK){chunk.proxyInnerHTML=this.proxyRoot.innerHTML;}
this.walkChunk();if(DEBUG_CHUNK){chunk.actualInnerHTML=this.root.innerHTML;}
return chunk;};WriteStream.prototype.buildChunk=function(tokens){var nextId=this.actuals.length,raw=[],actual=[],proxy=[];each(tokens,function(tok){raw.push(tok.text);if(tok.attrs){if(!(/^noscript$/i).test(tok.tagName)){var id=nextId++;actual.push(tok.text.replace(/(\/?>)/,' '+BASEATTR+'id='+id+' $1'));if(tok.attrs.id!=="ps-script"){proxy.push(tok.type==='atomicTag'?'':'<'+tok.tagName+' '+BASEATTR+'proxyof='+id+(tok.unary?'/>':'>'));}}}else{actual.push(tok.text);proxy.push(tok.type==='endTag'?tok.text:'');}});return{tokens:tokens,raw:raw.join(''),actual:actual.join(''),proxy:proxy.join('')};};WriteStream.prototype.walkChunk=function(){var node,stack=[this.proxyRoot];while((node=stack.shift())!=null){var isElement=node.nodeType===1;var isProxy=isElement&&data(node,'proxyof');if(!isProxy){if(isElement){this.actuals[data(node,'id')]=node;data(node,'id',null);}
var parentIsProxyOf=node.parentNode&&data(node.parentNode,'proxyof');if(parentIsProxyOf){this.actuals[parentIsProxyOf].appendChild(node);}}
stack.unshift.apply(stack,toArray(node.childNodes));}};WriteStream.prototype.handleScriptToken=function(tok){var remainder=this.parser.clear();if(remainder){this.writeQueue.unshift(remainder);}
tok.src=tok.attrs.src||tok.attrs.SRC;if(tok.src&&this.scriptStack.length){this.deferredRemote=tok;}else{this.onScriptStart(tok);}
var _this=this;this.writeScriptToken(tok,function(){_this.onScriptDone(tok);});};WriteStream.prototype.onScriptStart=function(tok){tok.outerWrites=this.writeQueue;this.writeQueue=[];this.scriptStack.unshift(tok);};WriteStream.prototype.onScriptDone=function(tok){if(tok!==this.scriptStack[0]){this.options.error({message:"Bad script nesting or script finished twice"});return;}
this.scriptStack.shift();this.write.apply(this,tok.outerWrites);if(!this.scriptStack.length&&this.deferredRemote){this.onScriptStart(this.deferredRemote);this.deferredRemote=null;}};WriteStream.prototype.writeScriptToken=function(tok,done){var el=this.buildScript(tok);if(tok.src){el.src=tok.src;this.scriptLoadHandler(el,done);}
try{this.insertScript(el);if(!tok.src){done();}}catch(e){this.options.error(e);done();}};WriteStream.prototype.buildScript=function(tok){var el=this.doc.createElement(tok.tagName);eachKey(tok.attrs,function(name,value){el.setAttribute(name,value);});if(tok.content){el.text=tok.content;}
return el;};WriteStream.prototype.insertScript=function(el){this.writeImpl('<span id="ps-script"/>');var cursor=this.doc.getElementById("ps-script");cursor.parentNode.replaceChild(el,cursor);};WriteStream.prototype.scriptLoadHandler=function(el,done){function cleanup(){el=el.onload=el.onreadystatechange=el.onerror=null;done();}
var error=this.options.error;set(el,{onload:function(){cleanup();},onreadystatechange:function(){if(/^(loaded|complete)$/.test(el.readyState)){cleanup();}},onerror:function(){error({message:'remote script failed '+el.src});cleanup();}});};return WriteStream;}());var postscribe=(function(){var nextId=0;var queue=[];var active=null;function nextStream(){var args=queue.shift();if(args){args.stream=runStream.apply(null,args);}}
function runStream(el,html,options){active=new WriteStream(el,options);active.id=nextId++;active.name=options.name||active.id;postscribe.streams[active.name]=active;var doc=el.ownerDocument;var stash={write:doc.write,writeln:doc.writeln};function write(str){str=options.beforeWrite(str);active.write(str);options.afterWrite(str);}
set(doc,{write:write,writeln:function(str){write(str+'\n');}});var oldOnError=active.win.onerror||doNothing;active.win.onerror=function(msg,url,line){options.error({msg:msg+' - '+url+':'+line});oldOnError.apply(active.win,arguments);};active.write(html,function streamDone(){set(doc,stash);active.win.onerror=oldOnError;options.done();active=null;nextStream();});return active;}
function postscribe(el,html,options){if(isFunction(options)){options={done:options};}
options=defaults(options,{done:doNothing,error:function(e){throw e;},beforeWrite:function(str){return str;},afterWrite:doNothing});el=(/^#/).test(el)?global.document.getElementById(el.substr(1)):el.jquery?el[0]:el;var args=[el,html,options];el.postscribe={cancel:function(){if(args.stream){args.stream.abort();}else{args[1]=doNothing;}}};queue.push(args);if(!active){nextStream();}
return el.postscribe;}
return set(postscribe,{streams:{},queue:queue,WriteStream:WriteStream});}());global.postscribe=postscribe;}());var inTheNewsTimer=600000;$(document).ready(function()
{setTimeout(InitGetInTheNews,inTheNewsTimer);});function InitGetInTheNews()
{GetInTheNews();setTimeout(InitGetInTheNews,inTheNewsTimer);}
function GetInTheNews()
{Won.ICom.Code.Services.SiteAjaxService.GetInTheNewsJSON(OnInTheNewsSuccess,function(){});}
function OnInTheNewsSuccess(result)
{$("#inTheNewsContent span[id$='NoRecordsLabel']").hide();$("#viewAllSection").show();var viewAll=$("#inTheNewsContent .viewAll");$("#inTheNewsContent div").remove();$("#inTheNewsContent .viewAll").remove();for(var i=0;i<result.length;i++)
{ProcessInTheNewsItem(result[i],i);}
$("#inTheNewsContent").append(viewAll);}
function ProcessInTheNewsItem(newsItem,index)
{var content="<div class=\"newsStory\">";if(newsItem.Summary.length>0)
{content+="<h3><a id=\"inthenews_"+index+"\" href=\""+newsItem.Url.replace(/'/g,"\\'").replace(/\"/g,"'")+"\" PopupDivID=\"inthenews_"+index+"_Popup\" onmouseover=\"nhdlLnkMouseEnter(this);\" onmouseout=\"nhdlLnkMouseLeave(this);\">"+newsItem.Title+"</a></h3>";content+="<div id=\"inthenews_"+index+"_Popup\" class=\"hdPreview\" style=\"visibility: hidden; position: absolute; z-index: 99; background: url(http://www1.ibdcd.com/images/frames/headline-preview-frame.png) no-repeat; padding: 8px 15px 0 35px; width: 388px; height: 185px; white-space: pre-wrap; white-space: -moz-pre-wrap; white-space: -pre-wrap; white-space: -o-pre-wrap; word-wrap: break-word;\" onmouseover=\"nhdldivPopupMoseEnter(this);\" onmouseout=\"nhdldivPopupMoseLeave(this);\"><dl><dd>"+newsItem.Summary+"</dd></dl></div>";}
else if(newsItem.IsThirdParty)
{content+="<h3><a id=\"inthenews_"+index+"\" href=\""+newsItem.Url.replace(/'/g,"\\'").replace(/\"/g,"'")+"\">"+newsItem.Title+"</a></h3>";}
else
{content+="<h3>"+newsItem.Title+"</h3>";}
content+="<span class=\"byLine\">&nbsp;"+newsItem.PublishDate+"</span>"+"</div>";$("#inTheNewsContent").append(content);}
$(document).ready(function(){var regmember=queryString('regmember');var src=queryString('src');var eibd=queryString('eibd');if(regmember=="1"){if(src.length>0){var rel=$("a.ex5trigger[id$='RegMemberLink']").attr("rel");$("a.ex5trigger[id$='RegMemberLink']").attr("rel",rel+"&src="+src);}
$("a.ex5trigger[id$='RegMemberLink']").click();}
if(eibd=="1"){myEIBD();}});$(document).ready(function(){if($("#ieversion-overlay").length==0||!$("#ieversion-overlay").is(':visible')){Won.ICom.Code.Services.SiteAjaxService.ProcessInterstitial(adPage,function(response){if(response.Display){var adUrl=GetAdUrl('intropage','');if(adUrl.length>0){$("#interstitial-overlay-content").empty();postscribe("#interstitial-overlay-content",'<script src="'+adUrl+'"></script>',{done:function(){$("#interstitial-overlay").jqm({modal:true,zIndex:3000000}).jqmShow();if(response.TimerInterval>0){setTimeout(function(){$("#interstitial-overlay").jqm().jqmHide();},response.TimerInterval);}
var expiresDt=new Date();expiresDt.setTime(expiresDt.getTime()+(7*24*60*60*1000));var cookie=response.Cookie.Name+"="+response.Cookie.Value+"; expires="+expiresDt.toGMTString()+"; path=/; domain="+response.Cookie.Domain;document.cookie=cookie;}});}}},function(){});}});function GetStickyNavAd(){Won.ICom.Code.Services.SiteAjaxService.GetStickyNavAd(function(arg){var objAd=document.getElementById('stickynavad');if(objAd!=null){objAd.innerHTML=arg;}});}
jQuery.SelectBox=function(selectobj,options)
{var opt=options||{};opt.inputClass=opt.inputClass||"selectbox";opt.containerClass=opt.containerClass||"selectbox-wrapper";opt.hoverClass=opt.hoverClass||"selected";opt.debug=opt.debug||false;var elm_id=selectobj.id;var active=-1;var inFocus=false;var hasfocus=0;var $select=$(selectobj);var $container=setupContainer(opt);var $input=setupInput(opt);$select.hide().before($input).before($container);init();$input.click(function()
{$container.toggle();}).keydown(function(event)
{switch(event.keyCode)
{case 38:event.preventDefault();moveSelect(-1);break;case 40:event.preventDefault();moveSelect(1);break;case 13:event.preventDefault();setCurrent();hideMe();break;}}).blur(function()
{if($container.is(':visible')&&hasfocus>0)
{if(opt.debug)console.log('container visible and has focus')}else
{hideMe();}});function hideMe()
{hasfocus=0;$container.hide();}
function init()
{$container.append(getSelectOptions()).hide();var width=$input.width()
$container.width(width);}
function setupContainer(options)
{var container=document.createElement("div");$container=$(container);$container.attr('id',elm_id+'_container');$container.addClass(options.containerClass);return $container;}
function setupInput(options)
{var input=document.createElement("input");var $input=$(input);$input.attr("id",elm_id+"_input");$input.attr("type","button");$input.addClass(options.inputClass);$input.attr("autocomplete","off");$input.attr("readonly","readonly");$input.attr("tabIndex",$select.attr("tabindex"));return $input;}
function moveSelect(step)
{var lis=$("li",$container);if(!lis)return;active+=step;if(active<0)
{active=0;}else if(active>=lis.size())
{active=lis.size()-1;}
lis.removeClass(opt.hoverClass);$(lis[active]).addClass(opt.hoverClass);}
function setCurrent()
{var li=$("li."+opt.hoverClass,$container).get(0);var el=li.id
$select.val(el);$input.val($(li).html());return true;}
function getCurrentSelected()
{return $select.val();}
function getCurrentValue()
{return $input.val();}
function getSelectOptions()
{var select_options=new Array();var ul=document.createElement('ul');$select.children('option').each(function()
{var li=document.createElement('li');li.setAttribute('id',$(this).val());li.innerHTML=$(this).html();if($(this).is(':selected'))
{$input.val($(this).html());}
ul.appendChild(li);$(li).mouseover(function(event)
{hasfocus=1;if(opt.debug)console.log('out on : '+this.id);jQuery(event.target,$container).addClass(opt.hoverClass);}).mouseout(function(event)
{hasfocus=-1;if(opt.debug)console.log('out on : '+this.id);jQuery(event.target,$container).removeClass(opt.hoverClass);}).click(function(event)
{if(opt.debug)console.log('click on :'+this.id);$(this).addClass(opt.hoverClass);setCurrent();var ddList=this.parentNode.parentNode.id;ddList=ddList.replace("_container","");__doPostBack(ddList,"");hideMe();});});return ul;}};jQuery.fn.extend({autocomplete:function(urlOrData,options)
{var isUrl=typeof urlOrData=="string";options=jQuery.extend({},jQuery.Autocompleter.defaults,{url:isUrl?urlOrData:null,data:isUrl?null:urlOrData,delay:isUrl?jQuery.Autocompleter.defaults.delay:10},options);return this.each(function()
{new jQuery.Autocompleter(this,options);});},result:function(handler)
{return this.bind("result",handler);},search:function()
{return this.trigger("search");}});var eventOrigionator="";var eventOrigionatorCount=0;function BeginRequestMRT(sender,args){eventOrigionator=args.get_postBackElement().id;eventOrigionatorCount++;if(eventOrigionator.indexOf("MyResearchTool1")>-1||eventOrigionator.indexOf("SiteScriptManager")>-1){$(".darkClass").attr("style","");}}
function EndRequestMRT(sender,args){eventOrigionatorCount--;var err=args.get_error();if(err!=null&&err.name=='Sys.WebForms.PageRequestManagerTimeoutException'){args.set_errorHandled(true);$(".darkClass").css("display","none");}
else{if(eventOrigionator.indexOf("MyResearchTool1")>-1||eventOrigionator.indexOf("SiteScriptManager")>-1){if(eventOrigionator.indexOf("miniChart")==-1&&eventOrigionatorCount==0){$('.mrtDDList').selectbox();}
if(eventOrigionator.indexOf("FindStocks")>-1||eventOrigionator.indexOf("FindStocks1")>-1){LoadStocksOnTheMove();}
$(".darkClass").css("display","none");ChangeMRTAd();$('#ex5').jqmAddTrigger('a.ex5trigger');UpdateGlossDefRollovers();InitMSTracking();InitNavTracking();LoadMRTPredictiveSearch();}}}
function DisplayAdSponsorText(pos){if(typeof(OAS_TranslatePos)!='undefined'){var newPos=OAS_TranslatePos(pos,'');if(newPos!=''){if(displaySponsorshipText){$("dl.toolsSponsorHd dt").html("Sponsored By:");}
else{$("dl.toolsSponsorHd dt").html("&nbsp;");}}}}
function ChangeMRTAd(){if(typeof(UpdateSiteAdControl_mrtAd)!='undefined'){var selectedTab=$("#blkMRT ul li.tabs-selected").attr('id');var pos='toolsmodbtn1';if(selectedTab.indexOf("_LI1")>-1){pos='toolsmodbtn1';}
else if(selectedTab.indexOf("_LI2")>-1){pos='toolsmodbtn2';}
else if(selectedTab.indexOf("_LI3")>-1){pos='toolsmodbtn3';}
else if(selectedTab.indexOf("_LI4")>-1){pos='toolsmodbtn4';}
if(!UpdateSiteAdControl_mrtAd(pos,'')){$(".toolsSponsorHd").hide();}
else{DisplayAdSponsorText(pos);}}}
function LoadMRTPredictiveSearch(){var selectedTab=$("#blkMRT ul li.tabs-selected").attr('id');if(selectedTab.indexOf("_LI3")>-1){var ids={id:'',postid:''};ids.id="ctl00_ctl00_secondaryContent_leftContent_MyResearchTool1_EvaluateStocks1_MRTChart1_sleSearchBox_txtStock";ids.postid="ctl00_ctl00_secondaryContent_leftContent_MyResearchTool1_EvaluateStocks1_MRTChart1_btnGoSearch";if(!document.getElementById(ids.id)){ids.id="ctl00_ctl00_secondaryContent_leftContent_MyResearchTool1_EvaluateStocks1_SmartSelectCheckup1_sleSearchBox_txtStock";ids.postid="ctl00_ctl00_secondaryContent_leftContent_MyResearchTool1_EvaluateStocks1_SmartSelectCheckup1_btnGoSearch";if(!document.getElementById(ids.id)){ids.id="";ids.postid="";}}
if(ids.id.length>0){initMRTAutoComplete(ids.id,ids.postid);}}}
function initMRTAutoComplete(id,postid){$("#"+id).attr("onkeydown","if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) { document.getElementById('"+postid+"').focus(); return true;}} else {return true;} ");postid=postid.replace(/_/gi,'$');$("#"+id).autocomplete('/Services/AutoSuggest.asmx/GetPredictiveTickers',{formType:"POST",dataType:"json",scroll:false,matchSubset:false,width:300,max:10,selectFirst:false,cacheLength:1,formatItem:function(data,i,n,value){return data.symbol+"    "+data.company;},parse:function(data){var rows=new Array();for(var i=0;i<data.d.length;i++){var value=data.d[i];var dataobj={symbol:'',company:''};dataobj.symbol=value;if(value.indexOf("-")>-1){dataobj.symbol=value.substring(0,value.indexOf("-"));dataobj.company=value.substring(value.indexOf("-")+4);}
rows[i]={data:dataobj,value:dataobj.symbol,result:dataobj.symbol};}
return rows;}}).result(function(event,item){if(postid.length>0){__doPostBack(postid,'');}});}
var t_SOTM;var timer_is_on_SOTM=0;var g_Refresh_SOTM;var StockListSymbolArr=new Array();var sotmMiniUseBATS=true;var sotmMiniSource='IDC';var sotmMiniInitAdd=false;var sotmUPcount=0;var sotmDOWNcount=0;var sotmSubscribedSymbols=new Array();var sotmViewAllUrl='';function InitStocksOnTheMove(refresh){g_Refresh_SOTM=refresh;StocksOnTheMoveTimer();}
function useBATSForSOTM(){return sotmMiniUseBATS&&sotmMiniSource=='BATS';}
function SOTMcheckForBATS(){if(typeof(BATS)!='undefined'&&BATS.Enabled){if(BATS.isConnected()){if(useBATSForSOTM()){var symbols=SOTMgetSymbolsForSubscription();if(symbols!=null&&symbols.length>0){BATS.subscribeMulti(symbols);}}}
else{setTimeout(SOTMcheckForBATS,1000);}}}
function SOTMgetAllStocks(){var symbols=new Array();$("#SOTMUPHTML tbody td.symbol a, #SOTMDOWNHTML tbody td.symbol a").each(function(){var symbol=jQuery.trim($(this).text());if(symbol.length>0){symbols.push(symbol);}});return symbols;}
function SOTMgetSymbolsForSubscription(){var allSymbols=SOTMgetAllStocks();if(sotmSubscribedSymbols==null||sotmSubscribedSymbols.length==0){sotmSubscribedSymbols=allSymbols;return sotmSubscribedSymbols;}
else{var newSymbols=new Array();for(var i=0;i<allSymbols.length;i++){var symbol=allSymbols[i];if(jQuery.inArray(symbol,sotmSubscribedSymbols)==-1){newSymbols.push(symbol);}}
if(newSymbols.length>0){sotmSubscribedSymbols=sotmSubscribedSymbols.concat(newSymbols);return newSymbols;}
else{return null;}}}
function SOTMClearSubscribedSymbols(){sotmSubscribedSymbols=null;}
function SOTMSetPriceChanges(data){if(useBATSForSOTM()){var found=null;$("#SOTMUPHTML tbody td.symbol a, #SOTMDOWNHTML tbody td.symbol a").each(function(){if(jQuery.trim($(this).text()).toUpperCase()==jQuery.trim(data.Symbol).toUpperCase()){found=$(this);return false;}});if(found!=null&&found.length>0){var symbol=found.text();var bgColor='';var price=0;var elPriceStart=document.getElementById("PriceStart_"+symbol);if(elPriceStart!=null){price=+$(elPriceStart).text();if($(elPriceStart).parent().parent().hasClass('odd')){bgColor=$(elPriceStart).parent().parent().css('backgroundColor');}}
var diff=0;var elPrice=document.getElementById("Price_"+symbol);if(elPrice!=null){diff=BATS.getPriceDifference($(elPrice),data.Last.toFixed(2));$(elPrice).text(data.Last.toFixed(2));}
var priceChange=(data.Last-price).toFixed(2);var priceChangeClass=getSOTMCss(priceChange);var elPriceChg=document.getElementById("PriceChg_"+symbol);if(elPriceChg!=null){$(elPriceChg).text(priceChange).removeClass("PercentSOTM").removeClass("upPercentSOTM").removeClass("downPercentSOTM").addClass(priceChangeClass);BATS.startHighlight($(elPriceChg),diff,bgColor);}
var pricePcentChange=(((data.Last-price)/price)*100).toFixed(2);var pricePcentChangeClass=getSOTMCss(pricePcentChange);var elPricePcentChange=document.getElementById("PricePercChg_"+symbol);if(elPricePcentChange!=null){$(elPricePcentChange).text(pricePcentChange+"%").removeClass("PercentSOTM").removeClass("upPercentSOTM").removeClass("downPercentSOTM").addClass(pricePcentChangeClass);BATS.startHighlight($(elPricePcentChange),diff,bgColor);}
var status=document.getElementById('SOTMtxtMarketStatus');var message=document.getElementById('SOTMtxtDateTime');if(status!=null&&message!=null){status=status.innerHTML;if(status.indexOf("Market Close")==-1){message.innerHTML=BATS.getTimeStamp(data,true);}}}}}
function StocksOnTheMoveTimer(){if(!timer_is_on_SOTM){timer_is_on_SOTM=1;LoadStocksOnTheMove();}}
var SOTMnumofList=5;function LoadStocksOnTheMove(){LoadStocksOnTheMoves(SOTMnumofList);}
function LoadStocksOnTheMoveExpanded(){SOTMnumofList=10;LoadStocksOnTheMoves(SOTMnumofList);if(document.getElementById('lnkExpandSOTM')){document.getElementById('lnkExpandSOTM').style.display='none';}}
function LoadStocksOnTheMoves(numofList){if(document.getElementById('htmTeaser')!=null&&numofList<=10){Won.ICom.Code.Services.SiteAjaxService.GetNumOfStocksOnTheMoveData(numofList,onGetSOTMComplete);}}
function getChartUrlAttributes(obj,DGO){var Index=jQuery.trim(obj.Symbol);var point=3;var value=0;var chartinfo='pvc;daily;'+value+';';return"\'"+Index+"\'"+','+point+','+"\'"+chartinfo+"\'";}
function getSOTMCss(value){var CssClass="PercentSOTM";if(value>0){CssClass="upPercentSOTM";}
else if(value<0){CssClass="downPercentSOTM";}
return CssClass;}
function getStockCheckUpContents(obj){var conameArr=new Array();var exnameArr=new Array();var returnContents="";var exchname=jQuery.trim(obj.ExchangeName);var coname=jQuery.trim(obj.Coname);var coname=coname.replace("&","and").replace(/\'/g,"");conameArr=coname.split(" ");returnContents=exchname;for(var a=0;a<conameArr.length;a++){returnContents+="-"+conameArr[a];}
returnContents=returnContents+"-"+obj.Symbol;returnContents=jQuery.trim(returnContents);return returnContents.toLowerCase();}
function getdynamicSOTMHtml(obj,flag,ldbInfo){var NON_LOGGED_IN=flag.indexOf("0")>-1;var DGO=flag.indexOf("1")>-1;var IBD=flag.indexOf("2")>-1;var MS=flag.indexOf("3")>-1;var LDB=flag.indexOf("5")>-1;var FREE_USER=flag.indexOf("4")>-1;var dynamicSOTMHtml="";if(obj==null||obj.length==0){dynamicSOTMHtml+="<p>There are currently no stocks that meet the Stocks on the Move criteria.</p>";}
else{dynamicSOTMHtml+="<table cellspacing=\"0\" border=\"0\" style=\"border-collapse: collapse;\" id=\"GridHead\" class=\"stockTable\"><tbody><tr><th scope=\"col\">Symbol</th><th scope=\"col\">Company</th><th scope=\"col\">Price</th><th scope=\"col\">Price Chg.</th><th scope=\"col\">Price % Chg.</th><th scope=\"col\">Volume % Chg.</th><th scope=\"col\">IBD Tools</th></tr>";for(var i=0;i<obj.length;i++){var CompanyNameID="Name_"+obj[i].Symbol;var PriceID="Price_"+obj[i].Symbol;var PriceStartID="PriceStart_"+obj[i].Symbol;var PriceChgID="PriceChg_"+obj[i].Symbol;var PricePercChgID="PricePercChg_"+obj[i].Symbol;var VolumePercChgID="VolumePercChg_"+obj[i].Symbol;var StockGraphID="StockGraph_"+obj[i].Symbol;var PriceChangeCss=getSOTMCss(obj[i].PriceChange);var PricePercChangeCss=getSOTMCss(obj[i].PricePctChange);var ChartUrlAttributes=getChartUrlAttributes(obj[i],DGO);var StockCheckUpContents=getStockCheckUpContents(obj[i]);if(i%2==0){dynamicSOTMHtml+="<tr>";}
else{dynamicSOTMHtml+="<tr class=\"odd\">";}
dynamicSOTMHtml+="<td class=\"symbol\"><a href=\"/stockresearch/quotes/"+StockCheckUpContents+".htm\" class=\"stockRoll\" rel=\"/stocksymbol.axd?symbol="+obj[i].Symbol+"\">"+obj[i].Symbol+"</a>";dynamicSOTMHtml+="</td><td>";dynamicSOTMHtml+="<span id=\""+CompanyNameID+"\">"+obj[i].Coname+"</span>";dynamicSOTMHtml+="</td><td>";dynamicSOTMHtml+="<span id=\""+PriceID+"\">"+roundNumber(obj[i].Price0,2)+"</span>";dynamicSOTMHtml+="<span id=\""+PriceStartID+"\" style=\"display:none;\">"+roundNumber(obj[i].Price,2)+"</span>";dynamicSOTMHtml+="</td><td>";dynamicSOTMHtml+="<span style=\"font-weight: bold;\" class=\""+PriceChangeCss+"\" id=\""+PriceChgID+"\">"+roundNumber(obj[i].PriceChange,2)+"</span>";dynamicSOTMHtml+="</td><td>";dynamicSOTMHtml+="<span style=\"font-weight: bold;\" class=\""+PricePercChangeCss+"\" id=\""+PricePercChgID+"\">"+roundNumber(obj[i].PricePctChange,2)+"%</span>";dynamicSOTMHtml+="</td><td>";dynamicSOTMHtml+="<span style=\"font-weight: normal\" id=\""+VolumePercChgID+"\">"+obj[i].VolumePctChange.toFixed(0)+"%</span>";dynamicSOTMHtml+="</td><td class=\"sotm_tools\">";dynamicSOTMHtml+="<a title=\"View the Stock Checkup report for this stock.\" class=\"CUPBtn\" href=\"javascript:void(0);\" onmouseover=\"this.style.cursor='hand'\" onclick=\"window.open('/stockresearch/stock-checkup/"+StockCheckUpContents+".aspx', '_checkupWindow');\"></a>";if(((NON_LOGGED_IN)||(IBD)||(FREE_USER))&&(!DGO)){dynamicSOTMHtml+="<a href=\"javascript:void(0);\" onclick=\"javascript:jsfOpenPowerTool("+ChartUrlAttributes+");return false;\" class=\"PVCBtn\" title=\"Click to view a stock graph.\" id=\""+StockGraphID+"\"></a>";}
if((DGO)&&(!MS||!LDB)){dynamicSOTMHtml+="<a href=\"javascript:void(0);\" onclick=\"javascript:jsfOpenPowerTool("+ChartUrlAttributes+");return false;\" class=\"PVCBtn\" title=\"Click to view a stock graph.\" id=\""+StockGraphID+"\"></a>";}
if(MS){dynamicSOTMHtml+="<a href=\"javascript:;\" class=\"MSBtn mstracking\" title=\"View in MarketSmith&#0174;\" onclick=\"javascript:launchMSTool('"+jQuery.trim(obj[i].Symbol)+"');\" MSTrackName=\"MRT-SOTM\"><span class='icon'></span></a>";}
else{dynamicSOTMHtml+="<a mstrackname=\"MRT-SOTM\" title=\"Use MarketSmith® to master stock investing. Click to learn how.\" class=\"MSBtn mstracking\" href=\"/products/default.aspx?id=mslt-n\"><span class=\"icon\"></span></a>";}
if(!NON_LOGGED_IN){dynamicSOTMHtml+="<span id=\""+jQuery.trim(obj[i].Symbol)+"_lnkAddToList\" class=\"AddToListBtn\"";dynamicSOTMHtml+="onmouseout=\"divATSLmouseLeave('addToStockListContainer')\"";dynamicSOTMHtml+="onmouseover=\"getMyStockListContents(this,'"+jQuery.trim(obj[i].Symbol)+"');\">";dynamicSOTMHtml+="</span>";}
else{dynamicSOTMHtml+="<a title=\"Register or log in to add this stock to your stock list\" rel=\"/register/member.aspx?regloc=stockrollover\" href=\"javascript:void(0);\" class=\"ex5trigger AddToListBtn\"></a>";}
if(LDB){dynamicSOTMHtml+="<a href=\"javascript:void(0);\" class=\"LDBBtn\" title=\"View in Leaderboard&trade;\" onclick=\"openLBChart('"+ldbInfo.ChartUrl+"','"+jQuery.trim(obj[i].Symbol)+"','daily','','');return false;\"><span class=\"icon\"></span></a>";}
else{dynamicSOTMHtml+="<a href=\""+ldbInfo.ProdUrl+"\" class=\"LDBBtn\" title=\"Leaderboard&trade; charts give you buy points, sell signals and more. Click to see.\"><span class=\"icon\"></span></a>";}
dynamicSOTMHtml+="</td></tr>";}
dynamicSOTMHtml+="</tbody></table>";}
return dynamicSOTMHtml;}
function onGetSOTMComplete(result){if(result.sotm!=null){if(document.getElementById('colorBar')&&document.getElementById('colorBar').className!="redBar"){document.getElementById('htmTeaser').innerHTML="Stocks being <span style=\"color:#009900;font-weight:bold\">BOUGHT</span> heavily by institutional investors.<br />Click icons for analysis. <a href=\"/education/financialdictionary.aspx?termID=6075&term=Stocks%20On%20The%20Move%20list&mode=searchResults\">Learn More</a>";}
sotmUPcount=result.UpsTotal;sotmDOWNcount=result.DownsTotal;ToggleExpandLink('btn1');sotmMiniUseBATS=result.useBATS;sotmMiniSource=result.source;document.getElementById('SOTMtxtDateTime').innerHTML="";if(useBATSForSOTM()){document.getElementById('SOTMtxtDateTime').innerHTML=BATS.getTimeMsg()+" Last Update: "+result.sotm.MarketDate;}
else{document.getElementById('SOTMtxtDateTime').innerHTML="Last Update: "+result.sotm.MarketDate;}
document.getElementById('SOTMtxtMarketStatus').innerHTML=result.sotm.MarketStatus;document.getElementById('SOTMUPHTML').innerHTML=getdynamicSOTMHtml(result.sotm.UpStocks,result.getAllFlags,result.LDB);document.getElementById('SOTMDOWNHTML').innerHTML=getdynamicSOTMHtml(result.sotm.DownStocks,result.getAllFlags,result.LDB);if(typeof(UpdateStockRollovers)!='undefined'){UpdateStockRollovers();}
if(result.getAllFlags.indexOf("0")>-1){$('#ex5').jqmAddTrigger('a.ex5trigger');}
SOTMcheckForBATS();if(!sotmMiniInitAdd&&typeof(BATS)!='undefined'){sotmMiniInitAdd=true;BATS.addEnableFunc(SOTMcheckForBATS);BATS.addDisconnectFunc(SOTMClearSubscribedSymbols);BATS.addReceiveFunc(SOTMSetPriceChanges);}}
if(t_SOTM!=null){clearTimeout(t_SOTM);}
t_SOTM=setTimeout(LoadStocksOnTheMove,g_Refresh_SOTM);}
function SwitchTab(obj){if(sotmViewAllUrl==''){sotmViewAllUrl=document.getElementById('lnkViewAll').href;}
if(obj=='btn1'){document.getElementById('htmTeaser').innerHTML="Stocks being <span style=\"color:#009900;font-weight:bold\">BOUGHT</span> heavily by institutional investors.<br />Click icons for analysis. <a href=\"/education/financialdictionary.aspx?termID=6075&term=Stocks%20On%20The%20Move%20list&mode=searchResults\">Learn More</a>";document.getElementById('colorBar').className="greenBar";document.getElementById('SOTMUPHTML').style.display="Block";document.getElementById('SOTMDOWNHTML').style.display="None";document.getElementById('lnkViewAll').href=sotmViewAllUrl+"?stklist=up";}
else if(obj=='btn2'){document.getElementById('htmTeaser').innerHTML="Stocks being <span style=\"color:#ff0000;font-weight:bold\">SOLD</span> heavily by institutional investors.<br />Click icons for analysis.";document.getElementById('colorBar').className="redBar";document.getElementById('SOTMUPHTML').style.display="None";document.getElementById('SOTMDOWNHTML').style.display="Block";document.getElementById('lnkViewAll').href=sotmViewAllUrl+"?stklist=downs";}
UpdateStockRollovers();ToggleExpandLink(obj);}
function ToggleExpandLink(obj){if(SOTMnumofList!=10){document.getElementById('lnkExpandSOTM').style.display="Block";if(obj=='btn1'){if(sotmUPcount<=5){document.getElementById('lnkExpandSOTM').style.display='none';}}
else if(obj=='btn2'){if(sotmDOWNcount<=5){document.getElementById('lnkExpandSOTM').style.display='none';}}}}
var objLnk=null;var SymbolName="";var IsCheckBoxClicked=false;var update=false;function getMyStockListContents(objValue,symbol){objLnk=objValue;SymbolName=symbol;var bFound=false;var ccState;if(IsCheckBoxClicked==true){ccState=true;update=true;IsCheckBoxClicked=false;}
if(update){StockListSymbolArr.length=0;}
if(ccState){ccState=false;bFound=false;}
else{for(var i=0;i<StockListSymbolArr.length;i++){if(StockListSymbolArr[i].Symbol==symbol){ongetMyStockListContentsComplete(StockListSymbolArr[i]);bFound=true;}}}
if(!bFound)
Won.ICom.Code.Services.SiteAjaxService.GetAddToMyStockListData(symbol,ongetMyStockListContentsComplete);}
var ListId;function ongetMyStockListContentsComplete(response){var bFound=false;for(var i=0;i<StockListSymbolArr.length;i++){if(StockListSymbolArr[i].Symbol==response.Symbol){bFound=true;}}
if((!bFound)||(update))
StockListSymbolArr.push(response);update=false;if(response.Symbol==SymbolName){var DynamicHtmlForAddToMyStockList=getDynamicHtmlForAddToMyStockList(response);if(response!=null)
showATSLHeaderPopup(objLnk,'addToStockListContainer',false,'addToStockListContainer_InfoSpan_'+ListId,DynamicHtmlForAddToMyStockList,response.Symbol);}}
function getDynamicHtmlForAddToMyStockList(response){var innerHtmlOfAddToStockList="";var ListID,ListName;for(var i=0;i<response.StockLists.length;i++){ListID=jQuery.trim(response.StockLists[i].ListID.toString());ListName=jQuery.trim(response.StockLists[i].ListName.toString());ListId=ListID;if(i==0)
innerHtmlOfAddToStockList+="<div class=\"all\">";else
innerHtmlOfAddToStockList+="<div>";innerHtmlOfAddToStockList+="<input type=\"checkbox\" enableviewstate=\"true\" id=\"chb_"+ListID+"\" value=\""+ListName.replace(/"/g,'&quot;')+"\" name=\"chb_Hr"+ListID+"\"";innerHtmlOfAddToStockList+="onclick=\"CheckboxOnChange();chbATSLClick(this,'"+ListID+"', '"+response.Symbol+"', '"+ListName.replace(/'/g,'&#92;&#39;').replace(/"/g,'&#34;')+"', 'addToStockListContainer_InfoSpan_"+ListID+"');\"";if(response.StockLists[i].isSymbolInList)
innerHtmlOfAddToStockList+="checked=\"checked\"></input>";else
innerHtmlOfAddToStockList+="></input>";innerHtmlOfAddToStockList+="<a href=\"/my-ibd/portfolio/"+cleanText(ListName)+"/"+ListID+"\" title=\""+ListName+"\">"+ListName+"</a>";innerHtmlOfAddToStockList+="</div>";innerHtmlOfAddToStockList+="<span id=\"addToStockListContainer_InfoSpan_"+ListID+"\" style=\"display:none;word-wrap:break-word;padding-left:15px\"></span>";}
return innerHtmlOfAddToStockList;}
function CheckboxOnChange(){IsCheckBoxClicked=true;}
function cleanText(inputText){inputText=inputText.replace(/&/g,"and");inputText=inputText.replace(/[^a-zA-Z 0-9]+/g,'');inputText=inputText.replace(/ /g,"-");if(inputText.Length>200)
inputText=inputText.substring(0,150);return inputText.toLowerCase();}
function roundNumber(num,dec){var result=(Math.round(num*Math.pow(10,dec))/Math.pow(10,dec)).toFixed(2);return result;}
var tile=1;function OAS_NORMAL_DC(pos,identifier)
{var objSiteAd=null;snippet='';if(typeof(OAS_TranslatePos)!='undefined')
{pos=OAS_TranslatePos(pos,identifier);}
dcopt="";var strKeyword=GetAdKeywords();if(strKeyword.length>0)
{strKeyword=';kw='+strKeyword;}
var strUserSubType=typeof(userSubType)!='undefined'?userSubType:"0";strUserSubType=';sub='+strUserSubType;var strAdTrade=GetAdVariable('trade');var strAdTime=GetAdVariable('time');var strAdHold=GetAdVariable('hold');var strAdJob=GetAdVariable('job');var strAdAge=GetAdVariable('age');var strRefUrl='';if(window.location.host.toLowerCase().indexOf('ibdtv')>-1)
{strRefUrl=";dc_ref="+encodeURIComponent(window.location);}
if((pos=='pushdown'||pos=='pos=pushdown;')&&dartResponsive.getCurrentDeviceView()==3){width="";height="";return objSiteAd;}
if(site!=""&&pos!='')
{if(pos=='pos=leader;'&&window.location.toString().toLowerCase().indexOf('/testadpage.aspx')>-1)
{dcopt=";dcopt=ist";}
document.write('<SCR'+'IPT language="JavaScript" src="http://ad.doubleclick.net/N4824/adj/'+site+strKeyword+strUserSubType+strAdTrade+strAdTime+strAdHold+strAdJob+strAdAge+strRefUrl+';tile='+tile+';'+pos+section+dcopt+'sz='+width+'x'+height+snippet+';ord='+ord+'?" type="text/javascript"></scr'+'ipt>');document.write('<a href="http://ad.doubleclick.net/N4824/jump/'+site+strKeyword+strUserSubType+strAdTrade+strAdTime+strAdHold+strAdJob+strAdAge+strRefUrl+';tile='+tile+';'+pos+section+dcopt+'sz='+width+'x'+height+snippet+';ord='+ord+'?" style="display:none;"><img src="http://www1.ibdcd.com/images/eTables/px.gif" width="2px" height="1px" /></a>');objSiteAd=new SiteAd(site,pos,section,width,height,tile,displaySponsorshipText);IncreaseTileCount();}
width="";height="";return objSiteAd;}
function OAS_IFRAME_DC(pos,identifier,iFrameId)
{var objSiteAd=null;snippet='';if(typeof(OAS_TranslatePos)!='undefined')
{pos=OAS_TranslatePos(pos,identifier);}
dcopt="";var strKeyword=GetAdKeywords();if(strKeyword.length>0)
{strKeyword=';kw='+strKeyword;}
var strUserSubType=typeof(userSubType)!='undefined'?userSubType:"0";strUserSubType=';sub='+strUserSubType;var strAdTrade=GetAdVariable('trade');var strAdTime=GetAdVariable('time');var strAdHold=GetAdVariable('hold');var strAdJob=GetAdVariable('job');var strAdAge=GetAdVariable('age');if(site!=""&&pos!='')
{var frameAdUrl='http://ad.doubleclick.net/N4824/adi/'+site+strKeyword+strUserSubType+strAdTrade+strAdTime+strAdHold+strAdJob+strAdAge+';tile='+tile+';'+pos+section+'sz='+width+'x'+height+';ord='+ord+'?';var frameNode="<iframe src=\""+frameAdUrl+"\" id=\""+iFrameId+"_frame\" width=\""+width+"\" height=\""+height+"\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe>";$(document).ready(function()
{$("#"+iFrameId).empty();$("#"+iFrameId).append(frameNode);});objSiteAd=new SiteAd(site,pos,section,width,height,tile,displaySponsorshipText);IncreaseTileCount();}
width="";height="";return objSiteAd;}
function OAS_IFRAME_SPONSOR_DC(pos,identifier,iFrameId,page)
{var objSiteAd=null;var pos2='';if(typeof(OAS_TranslatePos)!='undefined')
{pos2=OAS_TranslatePos(pos,identifier);}
if(site!=""&&pos2!='')
{var frameAdUrl='/SiteAds/Sponsorship.aspx?page='+page+'&position='+pos+'&identifier='+identifier+'&tile='+tile+'&ord='+ord;var frameNode="<iframe src=\""+frameAdUrl+"\" id=\""+iFrameId+"_frame\" width=\""+width+"\" height=\""+height+"\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe>";$(document).ready(function()
{$("#"+iFrameId).empty();$("#"+iFrameId).append(frameNode);});objSiteAd=new SiteAd(site,pos2,section,width,height,tile,displaySponsorshipText);IncreaseTileCount();}
width="";height="";return objSiteAd;}
function OAS_IFRAME_SITE_DC(pos,identifier,iFrameId,page,adPage)
{var objSiteAd=null;var pos2='';if(typeof(OAS_TranslatePos)!='undefined')
{pos2=OAS_TranslatePos(pos,identifier);}
if(site!=""&&pos2!='')
{var frameAdUrl=adPage+'?page='+page+'&position='+pos+'&identifier='+identifier+'&tile='+tile+'&ord='+ord;var frameNode="<iframe src=\""+frameAdUrl+"\" id=\""+iFrameId+"_frame\" width=\""+width+"\" height=\""+height+"\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe>";$(document).ready(function()
{$("#"+iFrameId).empty().append(frameNode);});objSiteAd=new SiteAd(site,pos2,section,width,height,tile,displaySponsorshipText);IncreaseTileCount();}
width="";height="";return objSiteAd;}
function GetAdUrl(pos,identifier)
{var adUrl='';snippet='';if(typeof(OAS_TranslatePos)!='undefined')
{pos=OAS_TranslatePos(pos,identifier);}
dcopt="";var strKeyword=GetAdKeywords();if(strKeyword.length>0)
{strKeyword=';kw='+strKeyword;}
var strUserSubType=typeof(userSubType)!='undefined'?userSubType:"0";strUserSubType=';sub='+strUserSubType;var strAdTrade=GetAdVariable('trade');var strAdTime=GetAdVariable('time');var strAdHold=GetAdVariable('hold');var strAdJob=GetAdVariable('job');var strAdAge=GetAdVariable('age');var strRefUrl='';if(site!=""&&pos!='')
{dartResponsive.setSizesForPhoneView(pos);adUrl='http://ad.doubleclick.net/N4824/adj/'+site+strKeyword+strUserSubType+strAdTrade+strAdTime+strAdHold+strAdJob+strAdAge+strRefUrl+';tile='+tile+';'+pos+section+dcopt+'sz='+width+'x'+height+snippet+';ord='+ord+'?';IncreaseTileCount();}
width="";height="";return adUrl;}
function OAS_AD(pos,identifier)
{return OAS_NORMAL_DC(pos,identifier);}
function IncreaseTileCount()
{var maxTiles=16;tile++;if(tile>maxTiles)
{tile=1;}}
function SiteAd(pSite,pPosition,pSection,pWidth,pHeight,pTileCount,pDisplaySponsorshipText)
{this.Site=pSite;this.Position=pPosition;this.Section=pSection;this.Width=pWidth;this.Height=pHeight;this.TileCount=pTileCount;this.DisplaySponsorshipText=pDisplaySponsorshipText;}
function GetAdUrlChartsPage(pos,identifier){var adUrl='';snippet='';if(typeof(OAS_TranslatePos)!='undefined'){pos=OAS_TranslatePos(pos,identifier);}
dcopt="";if(typeof(GetAdKeywords)==typeof(Function))
{var strKeyword=GetAdKeywords();if(strKeyword.length>0){strKeyword=';kw='+strKeyword;}}
var strUserSubType=typeof(userSubType)!='undefined'?userSubType:"0";strUserSubType=';sub='+strUserSubType;if(typeof(GetAdVariable)==typeof(Function)){var strAdTrade=GetAdVariable('trade');var strAdTime=GetAdVariable('time');var strAdHold=GetAdVariable('hold');var strAdJob=GetAdVariable('job');var strAdAge=GetAdVariable('age');var strRefUrl='';ord=GetNewOrdValue();if(site!=""&&pos!=''){adUrl='http://ad.doubleclick.net/N4824/adj/'+site+strKeyword+strUserSubType+strAdTrade+strAdTime+strAdHold+strAdJob+strAdAge+strRefUrl+';tile='+tile+';'+pos+section+dcopt+'sz='+width+'x'+height+snippet+';ord='+ord+'?';}}
width="";height="";return adUrl;}
var dartResponsive=new function(){var debugMode=false;this.init=function(){consoleLog('DART: init');resizeChecker(false);};this.onResize=function(){consoleLog('DART: resize');resizeChecker(true);};this.getCurrentDeviceView=function(){return currentDeviceView();};this.setSizesForPhoneView=function(position){var currentView=this.getCurrentDeviceView();if(currentView==3){if(position=='pos=rec1;'||position=='pos=rec2;'){consoleLog('setting size for phone position: '+position);width="300";height="250";}
else if(position=='pos=housetop;'){consoleLog('setting size for phone position: '+position);width="300";height="130";}}};var consoleLog=function(msg){if(console&&debugMode){console.log(msg);}};var inIframe=function(){try{return window.self!==window.top;}catch(e){return true;}};var deviceView={Desktop:0,Tablet_Horizontal:1,Tablet_Vertical:2,Phone:3};var currentDeviceView=function(){var doc=document;if(doc.getElementById('header')==null){doc=parent.document;}
var header=doc.getElementById('header');var sideBar=doc.getElementById('sideBar');var mobileMenuSearch=doc.getElementById('mobile-menu-search');var isHeaderVisible=header!=null?doc.defaultView.getComputedStyle(header).display!='none':false;var isSideBarVisible=sideBar!=null?doc.defaultView.getComputedStyle(sideBar).display!='none':false;var isMobileMenuSearchVisible=mobileMenuSearch!=null?doc.defaultView.getComputedStyle(mobileMenuSearch).display=='block':false;var isDesktopView=isHeaderVisible;var isHorzTabletView=!isHeaderVisible&&isSideBarVisible;var isVertTabletView=!isHeaderVisible&&!isSideBarVisible;var isPhoneView=!isHeaderVisible&&!isSideBarVisible&&!isMobileMenuSearchVisible;if(isDesktopView){return deviceView.Desktop;}
else if(isHorzTabletView){return deviceView.Tablet_Horizontal;}
else if(isVertTabletView&&!isPhoneView){return deviceView.Tablet_Vertical;}
else if(isPhoneView){return deviceView.Phone;}
else{return deviceView.Desktop;}};var addMobileAd=function(id,pos,identifier){var adUrl=GetAdUrl(pos,identifier);if(adUrl.length>0){consoleLog('postscribe for ad position: '+pos+', at id: '+id);postscribe("#"+id,'<script src="'+adUrl+'"></script>');}};var resizeChecker=function(isResize){consoleLog('DART: is resize method call: '+isResize);if(typeof(adPage)=='undefined'||(adPage.toLowerCase()!='/newsandanalysis/article.aspx'&&adPage.toLowerCase()!='/testpages/testmobile.aspx')){return;}
var currentView=currentDeviceView();var textPTags=$('#article-content-full > p');var dfpResizeSelector=new Array();var identifier=typeof(adIdentifier)!='undefined'?adIdentifier:'';if(currentView==deviceView.Desktop){consoleLog('DART: desktop view');if(isResize){$('#mobile-ad-leader').hide();$('#mobile-ad-horz-housetop2').hide();$('#mobile-ad-vert-housetop').hide();$('#mobile-ad-vert-rec1').hide();$('#mobile-ad-vert-rec2').hide();$('#mobile-ad-phone-housetop').hide();$('#mobile-ad-phone-rec1').hide();$('#mobile-ad-phone-rec2').hide();}}
else if(currentView==deviceView.Tablet_Horizontal){consoleLog('DART: horizontal table view');$('#mobile-ad-vert-housetop').hide();$('#mobile-ad-vert-rec1').hide();$('#mobile-ad-vert-rec2').hide();$('#mobile-ad-phone-housetop').hide();$('#mobile-ad-phone-rec1').hide();$('#mobile-ad-phone-rec2').hide();if($('#mobile-ad-leader').length==0){var leaderItem=$('<div align="center"></div>');leaderItem.attr('id','mobile-ad-leader');leaderItem.insertBefore($('div.colWrap'));addMobileAd('mobile-ad-leader','leader',identifier);}
else if(isResize&&!$('#mobile-ad-leader').is(':visible')){$('#mobile-ad-leader').show();}
if($('#mobile-ad-horz-housetop2').length==0){var ht2Item=$('<div id="mobile-ad-horz-housetop2" align="center"></div>');if(textPTags.length>4){ht2Item.insertAfter(textPTags[4]);addMobileAd('mobile-ad-horz-housetop2','housetop2',identifier);}}
else if(isResize&&!$('#mobile-ad-horz-housetop2').is(':visible')){$('#mobile-ad-horz-housetop2').show();}}
else if(currentView==deviceView.Tablet_Vertical){consoleLog('DART: vertical tablet view');$('#mobile-ad-horz-housetop2').hide();$('#mobile-ad-phone-housetop').hide();$('#mobile-ad-phone-rec1').hide();$('#mobile-ad-phone-rec2').hide();if($('#mobile-ad-leader').length==0){var leaderItem=$('<div align="center"></div>');leaderItem.attr('id','mobile-ad-leader');leaderItem.insertBefore($('div.colWrap'));addMobileAd('mobile-ad-leader','leader',identifier);}
else if(isResize&&!$('#mobile-ad-leader').is(':visible')){$('#mobile-ad-leader').show();}
if($('#mobile-ad-vert-housetop').length==0){var htItem=$('<div align="center"></div>');htItem.attr('id','mobile-ad-vert-housetop');if(textPTags.length>1){htItem.insertAfter(textPTags[1]);addMobileAd('mobile-ad-vert-housetop','housetop',identifier);}}
else if(isResize&&!$('#mobile-ad-vert-housetop').is(':visible')){$('#mobile-ad-vert-housetop').show();}
if($('#mobile-ad-vert-rec1').length==0){var rec1Item=$('<div align="center" style="clear:both;"></div>');rec1Item.attr('id','mobile-ad-vert-rec1');var isAdded=false;if(textPTags.length>5){rec1Item.insertAfter(textPTags[5]);isAdded=true;}
else if(textPTags.length>=3||textPTags.length<=5){rec1Item.insertAfter(textPTags[textPTags.length-1]);isAdded=true;}
if(isAdded){addMobileAd('mobile-ad-vert-rec1','rec1',identifier);}}
else if(isResize&&!$('#mobile-ad-vert-rec1').is(':visible')){$('#mobile-ad-vert-rec1').show();}
if($('#mobile-ad-vert-rec2').length==0){var rec2Item=$('<div align="center"></div>');rec2Item.attr('id','mobile-ad-vert-rec2');var isAdded=false;if(textPTags.length>9){rec2Item.insertAfter(textPTags[9]);isAdded=true;}
else if(textPTags.length>=8&&textPTags.length<=9){rec2Item.insertAfter(textPTags[textPTags.length-1]);isAdded=true;}
if(isAdded){addMobileAd('mobile-ad-vert-rec2','rec2',identifier);}}
else if(isResize&&!$('#mobile-ad-vert-rec2').is(':visible')){$('#mobile-ad-vert-rec2').show();}}
else if(currentView==deviceView.Phone){consoleLog('DART: phone view');$('#mobile-ad-leader').hide();$('#mobile-ad-horz-housetop2').hide();$('#mobile-ad-vert-housetop').hide();$('#mobile-ad-vert-rec1').hide();$('#mobile-ad-vert-rec2').hide();if($('#mobile-ad-phone-housetop').length==0){var htItem=$('<div align="center"></div>');htItem.attr('id','mobile-ad-phone-housetop');htItem.insertBefore($('div.colWrap'));addMobileAd('mobile-ad-phone-housetop','housetop',identifier);}
else if(isResize&&!$('#mobile-ad-phone-housetop').is(':visible')){$('#mobile-ad-phone-housetop').show();}
if($('#mobile-ad-phone-rec1').length==0){var rec1Item=$('<div align="center"></div>');rec1Item.attr('id','mobile-ad-phone-rec1');if(textPTags.length>1){rec1Item.insertAfter(textPTags[1]);addMobileAd('mobile-ad-phone-rec1','rec1',identifier);}}
else if(isResize&&!$('#mobile-ad-phone-rec1').is(':visible')){$('#mobile-ad-phone-rec1').show();}
if($('#mobile-ad-phone-rec2').length==0){var rec2Item=$('<div align="center"></div>');rec2Item.attr('id','mobile-ad-phone-rec2');if(textPTags.length>5){rec2Item.insertAfter(textPTags[5]);addMobileAd('mobile-ad-phone-rec2','rec2',identifier);}}
else if(isResize&&!$('#mobile-ad-phone-rec2').is(':visible')){$('#mobile-ad-phone-rec2').show();}}};};if(typeof($)!='undefined'){$(document).ready(function(){dartResponsive.init();$(window).on('resize',function(){dartResponsive.onResize();});});}
var width="";var height="";var site="";var section="";var displaySponsorshipText=false;function GetNewOrdValue(){return Math.random()*10000000000000000;}
ord=GetNewOrdValue();function QueryStringForAd(ji)
{hu=window.location.search.substring(1);gy=hu.split("&");for(i=0;i<gy.length;i++)
{ft=gy[i].split("=");if(ft[0].toLowerCase()==ji.toLowerCase())
{return ft[1];}}
try
{if(parent!=null&&parent.window!=null)
{hu=parent.window.location.search.substring(1);gy=hu.split("&");for(i=0;i<gy.length;i++)
{ft=gy[i].split("=");if(ft[0].toLowerCase()==ji.toLowerCase())
{return ft[1];}}}}
catch(e){}
return'';}
function CleanSearchKeywords(strSearch)
{var cleanString=decodeURIComponent(strSearch);cleanString=cleanString.replace(/#|\"|,|\*|\.|\(|\)|=|\+|<|>|\[|\]|%|;/gi,'');if(cleanString.length>55)
{cleanString=cleanString.substring(0,55);}
return cleanString;}
function GetAdKeywords()
{var strKeywords='';var strTicker=QueryStringForAd('Symbol');var strQuoteTicker=GetQuoteCheckupTicker();var strSearch=QueryStringForAd('ntt');if(typeof(ibdChartSymbol)!='undefined'&&ibdChartSymbol.length>0)
{strTicker=ibdChartSymbol;}
if(strTicker.length>0)
{strKeywords=strTicker.toUpperCase();}
else if(strQuoteTicker.length>0)
{strKeywords=strQuoteTicker.toUpperCase();}
else if(strSearch.length>0)
{strKeywords=CleanSearchKeywords(strSearch);}
return strKeywords;}
function GetQuoteCheckupTicker()
{var ticker='';var url=window.location.href.toLowerCase();if(url.indexOf('/quotes/')>-1||url.indexOf('/stock-checkup/')>-1)
{var pos=url.lastIndexOf('-');if(pos>-1)
{pos+=1;var ext=url.indexOf('.htm')>-1?'.htm':'.aspx';ticker=url.substr(pos,url.indexOf(ext)-pos);}}
try
{if(ticker.length==0&&parent!=null&&parent.window!=null)
{url=parent.window.location.href.toLowerCase();if(url.indexOf('/quotes/')>-1||url.indexOf('/stock-checkup/')>-1)
{var pos=url.lastIndexOf('-');if(pos>-1)
{pos+=1;var ext=url.indexOf('.htm')>-1?'.htm':'.aspx';ticker=url.substr(pos,url.indexOf(ext)-pos);}}}}
catch(e){}
return ticker;}
function GetAdVariable(name,forMediaCenter)
{var adVar="";var isMedia=((typeof(forMediaCenter)!='undefined'&&forMediaCenter)?true:false);switch(name)
{case"trade":if(typeof(userAdTrade)!='undefined'&&userAdTrade.length>0)
{adVar=(isMedia?"":";")+"trade="+userAdTrade;}
break;case"time":if(typeof(userAdTime)!='undefined'&&userAdTime.length>0)
{adVar=(isMedia?"":";")+"time="+userAdTime;}
break;case"hold":if(typeof(userAdHold)!='undefined'&&userAdHold.length>0)
{var holdVars=userAdHold.split(',');for(var i=0;i<holdVars.length;i++)
{if(isMedia)
{var val=holdVars[i];if(val=='funds/etfs')
{val="funds";}
if(adVar.length>0)
{adVar=adVar+",";}
adVar=adVar+val;}
else
{if(holdVars[i]=='funds/etfs')
adVar=adVar+";hold=funds";else
adVar=adVar+";hold="+holdVars[i];}}
if(isMedia&&adVar.length>0)
{adVar="hold="+adVar;}}
break;case"job":if(typeof(userAdJob)!='undefined'&&userAdJob.length>0)
{adVar=(isMedia?"":";")+"job="+userAdJob;}
break;case"age":if(typeof(userAdAge)!='undefined'&&userAdAge.length>0)
{adVar=(isMedia?"":";")+"age="+userAdAge;}
break;}
return adVar;}
function GetMediaCenterAdURL()
{var strUrl='';if(typeof(OAS_TranslatePos)!='undefined')
{pos=OAS_TranslatePos('video','');}
if(site!=""&&pos!='')
{var folder='video';if(window.location.host.toLowerCase().indexOf('ptest')>-1)
{folder='test';}
strUrl='http://pubads.g.doubleclick.net/gampad/ads?'+'env=vp'+'&gdfp_req=1'+'&impl=s'+'&output=xml_vast2'+'&iu=%2F4824%2F'+site+'%2F'+folder+'&sz='+width+'x'+height+'&unviewed_position_start=1'+'&url='+encodeURIComponent(window.location)+'&ciu_szs=728x90'+'&cust_params='+GetMediaCenterCustomParams()+'&correlator='+ord;}
width="";height="";return strUrl;}
function GetArticleMediaCenterAdURL(){var strUrl='';if(typeof(OAS_TranslatePos)!='undefined'){pos=OAS_TranslatePos('newsvideo',parent.adIdentifier);}
if(site!=""&&pos!=''){var folder='newsvideo';if(window.location.host.toLowerCase().indexOf('ptest')>-1){folder='test';}
strUrl='http://pubads.g.doubleclick.net/gampad/ads?'+'env=vp'+'&gdfp_req=1'+'&impl=s'+'&output=xml_vast2'+'&iu=%2F4824%2F'+site+'&sz='+width+'x'+height+'&unviewed_position_start=1'+'&url='+encodeURIComponent(window.location)+'&ciu_szs='+'&cust_params='+GetMediaCenterCustomParams()+'&correlator='+ord;}
width="";height="";return strUrl;}
function GetMediaCenterCustomParams()
{var params='';var strUserSubType=typeof(userSubType)!='undefined'?userSubType:"0";strUserSubType='sub='+strUserSubType;var strAdTrade=GetAdVariable('trade',true);var strAdTime=GetAdVariable('time',true);var strAdHold=GetAdVariable('hold',true);var strAdJob=GetAdVariable('job',true);var strAdAge=GetAdVariable('age',true);params=strUserSubType;if(strAdTrade.length>0){params+="&"+strAdTrade;}
if(strAdTime.length>0){params+="&"+strAdTime;}
if(strAdHold.length>0){params+="&"+strAdHold;}
if(strAdJob.length>0){params+="&"+strAdJob;}
if(strAdAge.length>0){params+="&"+strAdAge;}
return params.replace(/=/g,'%3D').replace(/&/g,'%26').replace(/,/g,'%2C');}
function GetMediaCenterCompanionAdSlot()
{if(typeof(OAS_TranslatePos)!='undefined')
{pos=OAS_TranslatePos('leader','');}
var adInfo={Slot:'',Width:728,Height:90};if(site!=""&&pos!='')
{adInfo.Slot='/4824/'+site+'/leader';adInfo.Width=+width;adInfo.Height=+height;}
width="";height="";return adInfo;}