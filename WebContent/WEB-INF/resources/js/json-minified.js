window.jsonParse=function(){function n(f,g,c){return g?h[g]:String.fromCharCode(parseInt(c,16))}var p=new RegExp('(?:false|true|null|[\\{\\}\\[\\]]|(?:-?\\b(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][+-]?[0-9]+)?\\b)|(?:"(?:[^\\0-\\x08\\x0a-\\x1f"\\\\]|\\\\(?:["/\\\\bfnrt]|u[0-9A-Fa-f]{4}))*"))',"g"),q=RegExp("\\\\(?:([^u])|u(.{4}))","g"),h={'"':'"',"/":"/","\\":"\\",b:"\b",f:"\f",n:"\n",r:"\r",t:"\t"},r=new String(""),t=Object.hasOwnProperty;return function(f,g){f=f.match(p);var c,b=f[0],k=!1;"{"===b? c={}:"["===b?c=[]:(c=[],k=!0);for(var d,e=[c],l=1-k,h=f.length;l<h;++l){var b=f[l],a;switch(b.charCodeAt(0)){default:a=e[0];a[d||a.length]=+b;d=void 0;break;case 34:b=b.substring(1,b.length-1);-1!==b.indexOf("\\")&&(b=b.replace(q,n));a=e[0];if(!d)if(a instanceof Array)d=a.length;else{d=b||r;break}a[d]=b;d=void 0;break;case 91:a=e[0];e.unshift(a[d||a.length]=[]);d=void 0;break;case 93:e.shift();break;case 102:a=e[0];a[d||a.length]=!1;d=void 0;break;case 110:a=e[0];a[d||a.length]=null;d=void 0;break; case 116:a=e[0];a[d||a.length]=!0;d=void 0;break;case 123:a=e[0];e.unshift(a[d||a.length]={});d=void 0;break;case 125:e.shift()}}if(k){if(1!==e.length)throw Error();c=c[0]}else if(e.length)throw Error();if(g){var m=function(a,d){var b=a[d];if(b&&"object"===typeof b){var e=null,c;for(c in b)if(t.call(b,c)&&b!==a){var f=m(b,c);void 0!==f?b[c]=f:(e||(e=[]),e.push(c))}if(e)for(c=e.length;0<=--c;)delete b[e[c]]}return g.call(a,d,b)};c=m({"":c},"")}return c}}();