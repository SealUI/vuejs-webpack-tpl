<!DOCTYPE html>
<html>
  <head>
	<meta name="renderer" content="webkit" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta charset="utf-8">
	<meta content="{{ description }}" name="description">
	<meta content="SealUI,Vue" name="keywords">
	<link rel="dns-prefetch" href="">
	<link rel="icon" type="image/x-icon" href="/favicon.ico">
	<title>{{ name }}</title>
	{{#isMobile}}
	<script>!function(e,t){"use strict";!function(){var i=t.querySelector('meta[name="viewport"]'),n=t.querySelector('meta[name="sealuicss"]'),r=e.devicePixelRatio||1;if(n){var a=n.getAttribute("content");if(a){var s=a.match(/initial\-dpr=([\d\.]+)/);s&&(r=parseFloat(s[1]))}}t.documentElement.setAttribute("data-dpr",r);var o=1/r,m="width=device-width, initial-scale="+o+", minimum-scale="+o+", maximum-scale="+o+", user-scalable=no";i?i.setAttribute("content",m):(i=t.createElement("meta"),i.setAttribute("name","viewport"),i.setAttribute("content",m),t.head.appendChild(i))}();var i={};i.px2rem=function(e,t){return t||(t=parseInt(i.designWidth,10)),750*parseInt(e,10)/t/100},i.rem2px=function(e,t){return t||(t=parseInt(i.designWidth,10)),100*e*t/750},i.mresize=function(){var i=e.innerWidth;return i?void(t.documentElement.style.fontSize=100*i/750+"px"):!1},i.mresize(),e.addEventListener("resize",function(){clearTimeout(i.tid),i.tid=setTimeout(i.mresize,33)},!1),e.addEventListener("load",i.mresize,!1),setTimeout(function(){i.mresize()},333),e.sealuicss=i}(window,document);</script>
	{{/isMobile}}
	<script>
	if ( typeof $CONFIG == "undefined" || !$CONFIG ) {
	  var $CONFIG = {

	  }
	}
	</script>
  </head>
  <body {{#isMobile}}ontouchstart{{/isMobile}}>
	<div id="app"></div>
	<% if (process.env.NODE_ENV !== 'development') { %>
	{{#isMobile}}
	<script src="https://unpkg.com/zepto@1.2.0/dist/zepto.min.js"></script>
	<script src="https://unpkg.com/fastclick@1.0.6/lib/fastclick.js"></script>
	{{/isMobile}}
	<script src="https://unpkg.com/vue@2.3.4/dist/vue.min.js"></script>
	{{#router}}
	<script src="https://unpkg.com/vue-router@2.7.0/dist/vue-router.min.js"></script>
	{{/router}}
	{{#axios}}
	<script src="https://unpkg.com/axios@0.16.1/dist/axios.min.js"></script>
	{{/axios}}
	<% } %>
	<!-- built files will be auto injected -->
  </body>
</html>
