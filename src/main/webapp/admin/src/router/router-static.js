import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import jianglidengji from '@/views/modules/jianglidengji/list'
    import news from '@/views/modules/news/list'
    import aboutus from '@/views/modules/aboutus/list'
    import tesemeishi from '@/views/modules/tesemeishi/list'
    import shoufeixinxi from '@/views/modules/shoufeixinxi/list'
    import youerqingjia from '@/views/modules/youerqingjia/list'
    import ziyuanxinxi from '@/views/modules/ziyuanxinxi/list'
    import jiaoshi from '@/views/modules/jiaoshi/list'
    import xueshengchengji from '@/views/modules/xueshengchengji/list'
    import huiyijilu from '@/views/modules/huiyijilu/list'
    import jibingdengji from '@/views/modules/jibingdengji/list'
    import daibanshixiang from '@/views/modules/daibanshixiang/list'
    import jiazhang from '@/views/modules/jiazhang/list'
    import discusstesemeishi from '@/views/modules/discusstesemeishi/list'
    import youerxinxi from '@/views/modules/youerxinxi/list'
    import jiaoshiqingjia from '@/views/modules/jiaoshiqingjia/list'
    import systemintro from '@/views/modules/systemintro/list'
    import gongzuorizhi from '@/views/modules/gongzuorizhi/list'
    import tijiandengji from '@/views/modules/tijiandengji/list'
    import yiqingshangbao from '@/views/modules/yiqingshangbao/list'
    import messages from '@/views/modules/messages/list'
    import banjixinxi from '@/views/modules/banjixinxi/list'
    import discussziyuanxinxi from '@/views/modules/discussziyuanxinxi/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/jianglidengji',
        name: '奖励登记',
        component: jianglidengji
      }
      ,{
	path: '/news',
        name: '新闻中心',
        component: news
      }
      ,{
	path: '/aboutus',
        name: '关于我们',
        component: aboutus
      }
      ,{
	path: '/tesemeishi',
        name: '特色美食',
        component: tesemeishi
      }
      ,{
	path: '/shoufeixinxi',
        name: '收费信息',
        component: shoufeixinxi
      }
      ,{
	path: '/youerqingjia',
        name: '幼儿请假',
        component: youerqingjia
      }
      ,{
	path: '/ziyuanxinxi',
        name: '资源信息',
        component: ziyuanxinxi
      }
      ,{
	path: '/jiaoshi',
        name: '教师',
        component: jiaoshi
      }
      ,{
	path: '/xueshengchengji',
        name: '学生成绩',
        component: xueshengchengji
      }
      ,{
	path: '/huiyijilu',
        name: '会议记录',
        component: huiyijilu
      }
      ,{
	path: '/jibingdengji',
        name: '疾病登记',
        component: jibingdengji
      }
      ,{
	path: '/daibanshixiang',
        name: '待办事项',
        component: daibanshixiang
      }
      ,{
	path: '/jiazhang',
        name: '家长',
        component: jiazhang
      }
      ,{
	path: '/discusstesemeishi',
        name: '特色美食评论',
        component: discusstesemeishi
      }
      ,{
	path: '/youerxinxi',
        name: '幼儿信息',
        component: youerxinxi
      }
      ,{
	path: '/jiaoshiqingjia',
        name: '教师请假',
        component: jiaoshiqingjia
      }
      ,{
	path: '/systemintro',
        name: '系统简介',
        component: systemintro
      }
      ,{
	path: '/gongzuorizhi',
        name: '工作日志',
        component: gongzuorizhi
      }
      ,{
	path: '/tijiandengji',
        name: '体检登记',
        component: tijiandengji
      }
      ,{
	path: '/yiqingshangbao',
        name: '疫情上报',
        component: yiqingshangbao
      }
      ,{
	path: '/messages',
        name: '家长留言',
        component: messages
      }
      ,{
	path: '/banjixinxi',
        name: '班级信息',
        component: banjixinxi
      }
      ,{
	path: '/discussziyuanxinxi',
        name: '资源信息评论',
        component: discussziyuanxinxi
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '系统首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
