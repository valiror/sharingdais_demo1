/*!
 * jQuery Cookie Plugin v1.4.0
 * https://github.com/carhartl/jquery-cookie
 *
 * Copyright 2013 Klaus Hartl
 * Released under the MIT license
 */
!function(t){"function"==typeof define&&define.amd?define(["jquery"],t):t("object"==typeof exports?require("jquery"):jQuery)}(function(t){function e(t){return a.raw?t:encodeURIComponent(t)}function i(t){return a.raw?t:decodeURIComponent(t)}function n(t){return e(a.json?JSON.stringify(t):String(t))}function s(t){0===t.indexOf('"')&&(t=t.slice(1,-1).replace(/\\"/g,'"').replace(/\\\\/g,"\\"));try{return t=decodeURIComponent(t.replace(r," ")),a.json?JSON.parse(t):t}catch(e){}}function o(e,i){var n=a.raw?e:s(e);return t.isFunction(i)?i(n):n}var r=/\+/g,a=t.cookie=function(s,r,l){if(void 0!==r&&!t.isFunction(r)){if(l=t.extend({},a.defaults,l),"number"==typeof l.expires){var h=l.expires,c=l.expires=new Date;c.setTime(+c+864e5*h)}return document.cookie=[e(s),"=",n(r),l.expires?"; expires="+l.expires.toUTCString():"",l.path?"; path="+l.path:"",l.domain?"; domain="+l.domain:"",l.secure?"; secure":""].join("")}for(var u=s?void 0:{},d=document.cookie?document.cookie.split("; "):[],p=0,f=d.length;f>p;p++){var g=d[p].split("="),m=i(g.shift()),v=g.join("=");if(s&&s===m){u=o(v,r);break}s||void 0===(v=o(v))||(u[m]=v)}return u};a.defaults={},t.removeCookie=function(e,i){return void 0===t.cookie(e)?!1:(t.cookie(e,"",t.extend({},i,{expires:-1})),!t.cookie(e))}});