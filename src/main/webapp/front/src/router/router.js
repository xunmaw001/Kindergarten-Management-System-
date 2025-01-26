import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Messages from '../pages/messages/list'
import Storeup from '../pages/storeup/list'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import jiazhangList from '../pages/jiazhang/list'
import jiazhangDetail from '../pages/jiazhang/detail'
import jiazhangAdd from '../pages/jiazhang/add'
import jiaoshiList from '../pages/jiaoshi/list'
import jiaoshiDetail from '../pages/jiaoshi/detail'
import jiaoshiAdd from '../pages/jiaoshi/add'
import banjixinxiList from '../pages/banjixinxi/list'
import banjixinxiDetail from '../pages/banjixinxi/detail'
import banjixinxiAdd from '../pages/banjixinxi/add'
import youerxinxiList from '../pages/youerxinxi/list'
import youerxinxiDetail from '../pages/youerxinxi/detail'
import youerxinxiAdd from '../pages/youerxinxi/add'
import xueshengchengjiList from '../pages/xueshengchengji/list'
import xueshengchengjiDetail from '../pages/xueshengchengji/detail'
import xueshengchengjiAdd from '../pages/xueshengchengji/add'
import tijiandengjiList from '../pages/tijiandengji/list'
import tijiandengjiDetail from '../pages/tijiandengji/detail'
import tijiandengjiAdd from '../pages/tijiandengji/add'
import jianglidengjiList from '../pages/jianglidengji/list'
import jianglidengjiDetail from '../pages/jianglidengji/detail'
import jianglidengjiAdd from '../pages/jianglidengji/add'
import jibingdengjiList from '../pages/jibingdengji/list'
import jibingdengjiDetail from '../pages/jibingdengji/detail'
import jibingdengjiAdd from '../pages/jibingdengji/add'
import shoufeixinxiList from '../pages/shoufeixinxi/list'
import shoufeixinxiDetail from '../pages/shoufeixinxi/detail'
import shoufeixinxiAdd from '../pages/shoufeixinxi/add'
import gongzuorizhiList from '../pages/gongzuorizhi/list'
import gongzuorizhiDetail from '../pages/gongzuorizhi/detail'
import gongzuorizhiAdd from '../pages/gongzuorizhi/add'
import huiyijiluList from '../pages/huiyijilu/list'
import huiyijiluDetail from '../pages/huiyijilu/detail'
import huiyijiluAdd from '../pages/huiyijilu/add'
import daibanshixiangList from '../pages/daibanshixiang/list'
import daibanshixiangDetail from '../pages/daibanshixiang/detail'
import daibanshixiangAdd from '../pages/daibanshixiang/add'
import jiaoshiqingjiaList from '../pages/jiaoshiqingjia/list'
import jiaoshiqingjiaDetail from '../pages/jiaoshiqingjia/detail'
import jiaoshiqingjiaAdd from '../pages/jiaoshiqingjia/add'
import youerqingjiaList from '../pages/youerqingjia/list'
import youerqingjiaDetail from '../pages/youerqingjia/detail'
import youerqingjiaAdd from '../pages/youerqingjia/add'
import ziyuanxinxiList from '../pages/ziyuanxinxi/list'
import ziyuanxinxiDetail from '../pages/ziyuanxinxi/detail'
import ziyuanxinxiAdd from '../pages/ziyuanxinxi/add'
import tesemeishiList from '../pages/tesemeishi/list'
import tesemeishiDetail from '../pages/tesemeishi/detail'
import tesemeishiAdd from '../pages/tesemeishi/add'
import yiqingshangbaoList from '../pages/yiqingshangbao/list'
import yiqingshangbaoDetail from '../pages/yiqingshangbao/detail'
import yiqingshangbaoAdd from '../pages/yiqingshangbao/add'
import aboutusList from '../pages/aboutus/list'
import aboutusDetail from '../pages/aboutus/detail'
import aboutusAdd from '../pages/aboutus/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'messages',
					component: Messages
				},
				{
					path: 'storeup',
					component: Storeup
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'jiazhang',
					component: jiazhangList
				},
				{
					path: 'jiazhangDetail',
					component: jiazhangDetail
				},
				{
					path: 'jiazhangAdd',
					component: jiazhangAdd
				},
				{
					path: 'jiaoshi',
					component: jiaoshiList
				},
				{
					path: 'jiaoshiDetail',
					component: jiaoshiDetail
				},
				{
					path: 'jiaoshiAdd',
					component: jiaoshiAdd
				},
				{
					path: 'banjixinxi',
					component: banjixinxiList
				},
				{
					path: 'banjixinxiDetail',
					component: banjixinxiDetail
				},
				{
					path: 'banjixinxiAdd',
					component: banjixinxiAdd
				},
				{
					path: 'youerxinxi',
					component: youerxinxiList
				},
				{
					path: 'youerxinxiDetail',
					component: youerxinxiDetail
				},
				{
					path: 'youerxinxiAdd',
					component: youerxinxiAdd
				},
				{
					path: 'xueshengchengji',
					component: xueshengchengjiList
				},
				{
					path: 'xueshengchengjiDetail',
					component: xueshengchengjiDetail
				},
				{
					path: 'xueshengchengjiAdd',
					component: xueshengchengjiAdd
				},
				{
					path: 'tijiandengji',
					component: tijiandengjiList
				},
				{
					path: 'tijiandengjiDetail',
					component: tijiandengjiDetail
				},
				{
					path: 'tijiandengjiAdd',
					component: tijiandengjiAdd
				},
				{
					path: 'jianglidengji',
					component: jianglidengjiList
				},
				{
					path: 'jianglidengjiDetail',
					component: jianglidengjiDetail
				},
				{
					path: 'jianglidengjiAdd',
					component: jianglidengjiAdd
				},
				{
					path: 'jibingdengji',
					component: jibingdengjiList
				},
				{
					path: 'jibingdengjiDetail',
					component: jibingdengjiDetail
				},
				{
					path: 'jibingdengjiAdd',
					component: jibingdengjiAdd
				},
				{
					path: 'shoufeixinxi',
					component: shoufeixinxiList
				},
				{
					path: 'shoufeixinxiDetail',
					component: shoufeixinxiDetail
				},
				{
					path: 'shoufeixinxiAdd',
					component: shoufeixinxiAdd
				},
				{
					path: 'gongzuorizhi',
					component: gongzuorizhiList
				},
				{
					path: 'gongzuorizhiDetail',
					component: gongzuorizhiDetail
				},
				{
					path: 'gongzuorizhiAdd',
					component: gongzuorizhiAdd
				},
				{
					path: 'huiyijilu',
					component: huiyijiluList
				},
				{
					path: 'huiyijiluDetail',
					component: huiyijiluDetail
				},
				{
					path: 'huiyijiluAdd',
					component: huiyijiluAdd
				},
				{
					path: 'daibanshixiang',
					component: daibanshixiangList
				},
				{
					path: 'daibanshixiangDetail',
					component: daibanshixiangDetail
				},
				{
					path: 'daibanshixiangAdd',
					component: daibanshixiangAdd
				},
				{
					path: 'jiaoshiqingjia',
					component: jiaoshiqingjiaList
				},
				{
					path: 'jiaoshiqingjiaDetail',
					component: jiaoshiqingjiaDetail
				},
				{
					path: 'jiaoshiqingjiaAdd',
					component: jiaoshiqingjiaAdd
				},
				{
					path: 'youerqingjia',
					component: youerqingjiaList
				},
				{
					path: 'youerqingjiaDetail',
					component: youerqingjiaDetail
				},
				{
					path: 'youerqingjiaAdd',
					component: youerqingjiaAdd
				},
				{
					path: 'ziyuanxinxi',
					component: ziyuanxinxiList
				},
				{
					path: 'ziyuanxinxiDetail',
					component: ziyuanxinxiDetail
				},
				{
					path: 'ziyuanxinxiAdd',
					component: ziyuanxinxiAdd
				},
				{
					path: 'tesemeishi',
					component: tesemeishiList
				},
				{
					path: 'tesemeishiDetail',
					component: tesemeishiDetail
				},
				{
					path: 'tesemeishiAdd',
					component: tesemeishiAdd
				},
				{
					path: 'yiqingshangbao',
					component: yiqingshangbaoList
				},
				{
					path: 'yiqingshangbaoDetail',
					component: yiqingshangbaoDetail
				},
				{
					path: 'yiqingshangbaoAdd',
					component: yiqingshangbaoAdd
				},
				{
					path: 'aboutus',
					component: aboutusList
				},
				{
					path: 'aboutusDetail',
					component: aboutusDetail
				},
				{
					path: 'aboutusAdd',
					component: aboutusAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
