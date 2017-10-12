<!DOCTYPE html>
<html>
  <head>
	<meta name="renderer" content="webkit" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta charset="utf-8">
	<meta content="{{ description }}" name="description">
	<meta content="SealUI,Vue" name="keywords">
	<link rel="dns-prefetch" href="">
	<link rel="icon" type="image/x-icon" href="/favicon.ico">
	<title>{{ name }}</title>
	{{#isMobile}}
	<script>!function(a,b){function c(){var b=f.getBoundingClientRect().width;b/i>540&&(b=540*i);var c=b/10;f.style.fontSize=c+"px",k.rem=a.rem=c}var d,e=a.document,f=e.documentElement,g=e.querySelector('meta[name="viewport"]'),h=e.querySelector('meta[name="flexible"]'),i=0,j=0,k=b.flexible||(b.flexible={});if(g){console.warn("将根据已有的meta标签来设置缩放比例");var l=g.getAttribute("content").match(/initial\-scale=([\d\.]+)/);l&&(j=parseFloat(l[1]),i=parseInt(1/j))}else if(h){var m=h.getAttribute("content");if(m){var n=m.match(/initial\-dpr=([\d\.]+)/),o=m.match(/maximum\-dpr=([\d\.]+)/);n&&(i=parseFloat(n[1]),j=parseFloat((1/i).toFixed(2))),o&&(i=parseFloat(o[1]),j=parseFloat((1/i).toFixed(2)))}}if(!i&&!j){var p=(a.navigator.appVersion.match(/android/gi),a.navigator.appVersion.match(/iphone/gi)),q=a.devicePixelRatio;i=p?q>=3&&(!i||i>=3)?3:q>=2&&(!i||i>=2)?2:1:1,j=1/i}if(f.setAttribute("data-dpr",i),!g)if(g=e.createElement("meta"),g.setAttribute("name","viewport"),g.setAttribute("content","initial-scale="+j+", maximum-scale="+j+", minimum-scale="+j+", user-scalable=no"),f.firstElementChild)f.firstElementChild.appendChild(g);else{var r=e.createElement("div");r.appendChild(g),e.write(r.innerHTML)}a.addEventListener("resize",function(){clearTimeout(d),d=setTimeout(c,300)},!1),a.addEventListener("pageshow",function(a){a.persisted&&(clearTimeout(d),d=setTimeout(c,300))},!1),"complete"===e.readyState?e.body.style.fontSize=12*i+"px":e.addEventListener("DOMContentLoaded",function(){e.body.style.fontSize=12*i+"px"},!1),c(),k.dpr=a.dpr=i,k.refreshRem=c,k.rem2px=function(a){var b=parseFloat(a)*this.rem;return"string"==typeof a&&a.match(/rem$/)&&(b+="px"),b},k.px2rem=function(a){var b=parseFloat(a)/this.rem;return"string"==typeof a&&a.match(/px$/)&&(b+="rem"),b}}(window,window.lib||(window.lib={}));</script>
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
