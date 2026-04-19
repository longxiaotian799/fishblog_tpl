import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/home/Home.vue";
import Article from "../views/article/Article.vue";
import Archive from "../views/archive/Archive.vue";
import Tag from "../views/tag/Tag.vue";
import Category from "../views/category/Category.vue";
import Link from "../views/link/Link.vue";
import About from "../views/about/About.vue";
import Message from "../views/message/Messsage.vue";
import ArticleList from "../components/ArticleList.vue";
import User from "../views/user/User.vue";
import OauthLogin from "../components/OauthLogin.vue";
import AIAgent from '../views/ai/AIAgent.vue'
import Favorites from '../views/favorites/Favorites.vue'
import store from '../store';

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    component: () => import('../views/home/Home.vue'),
    meta: {
      title: "龙啸天799的个人博客"
    }
  },
  {
    path: "/articles/:articleId",
    component: () => import('../views/article/Article.vue')
  },
  {
    path: "/archives",
    component: () => import('../views/archive/Archive.vue'),
    meta: {
      title: "归档"
    }
  },
  {
    path: "/tags",
    component: () => import('../views/tag/Tag.vue'),
    meta: {
      title: "标签"
    }
  },
  {
    path: "/categories",
    component: () => import('../views/category/Category.vue'),
    meta: {
      title: "分类"
    }
  },
  {
    path: "/categories/*",
    component: () => import('../components/ArticleList.vue')
  },
  {
    path: "/links",
    component: () => import('../views/link/Link.vue'),
    meta: {
      title: "友链列表"
    }
  },
  {
    path: "/about",
    component: () => import('../views/about/About.vue'),
    meta: {
      title: "关于我"
    }
  },
  {
    path: "/message",
    component: () => import('../views/message/Messsage.vue'),
    meta: {
      title: "留言板"
    }
  },
  {
    path: "/tags/*",
    component: () => import('../components/ArticleList.vue')
  },
  {
    path: "/user",
    component: () => import('../views/user/User.vue'),
    meta: {
      title: "个人中心"
    }
  },
  {
    path: "/oauth/login/qq",
    component: () => import('../components/OauthLogin.vue')
  },
  {
    path: "/oauth/login/weibo",
    component: () => import('../components/OauthLogin.vue')
  },
  {
    path: "/oauth/login/github",
    component: () => import("../components/OauthLogin")
  },
  {
    path: '/ai-assistant',
    name: 'AIAssistant',
    component: () => import('../views/ai/AIAgent.vue'),
    meta: {
      title: 'AI智能助手 - 龙啸天799'
    }
  },
  {
    path: '/favorites',
    component: () => import('../views/favorites/Favorites.vue'),
    meta: {
      title: '我的收藏'
    }
  }
];

const router = new VueRouter({
  mode: 'history',
  base: '/',
  routes
});

// 添加全局前置守卫
router.beforeEach((to, from, next) => {
  // 显示加载遮罩
  store.dispatch('showLoading', '页面加载中...');
  next();
});

// 添加全局后置钩子
router.afterEach(() => {
  // 延迟一点隐藏加载遮罩，让页面有时间渲染
  setTimeout(() => {
    store.dispatch('hideLoading');
  }, 300);
});

export default router;
