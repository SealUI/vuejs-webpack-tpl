import Vue from 'vue'{{#if_eq lintConfig "airbnb"}};{{/if_eq}}
import VueRouter from 'vue-router'{{#if_eq lintConfig "airbnb"}};{{/if_eq}}
Vue.use(VueRouter){{#if_eq lintConfig "airbnb"}};{{/if_eq}}

export default new VueRouter({
  mode:'history',
  base: process.env.NODE_ENV === 'development' ? '/' : '/',
  routes: [
    {
      path: '/',
      name: 'Hello',
      component: resolve => require(['@/views/Hello'], resolve){{#if_eq lintConfig "airbnb"}},{{/if_eq}}
    }{{#if_eq lintConfig "airbnb"}},{{/if_eq}}
  ]{{#if_eq lintConfig "airbnb"}},{{/if_eq}}
}){{#if_eq lintConfig "airbnb"}};{{/if_eq}}
