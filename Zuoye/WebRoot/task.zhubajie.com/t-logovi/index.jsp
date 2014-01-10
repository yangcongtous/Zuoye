<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>LOGO/VI设计，LOGO/VI设计最新任务、LOGO/VI设计需求大厅——猪八戒网</title>
    <meta name="keywords" content="LOGO/VI设计，LOGO/VI设计任务LOGO/VI设计价格" />
    <meta name="description" content="猪八戒网全球最大、最专业的LOGO/VI设计服务网站，提供LOGO/VI设计，LOGO/VI设计最新交易信息及LOGO/VI设计价格、LOGO/VI设计任务需求总数成功案例等信息，满意才付款，放心交易，有LOGO/VI设计需求，首选猪八戒网！" />
      <link rel="stylesheet" type="text/css" media="all" href="style.css">
      <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <link rel="shortcut icon" href="http://s.zbjimg.com/img/favicon.ico" type="image/x-icon"/>
    <link type="text/css" rel="stylesheet" href="t5.zbjimg.com/t5s/common/css/global.css~t=2ef5f5507e1f1763.css"/>
    <link rel="stylesheet" type="text/css" href="t5.zbjimg.com/v/webim/WebIM.css">                <style>.bdshare-slide-button-box{z-index:300}</style>
    <link type="text/css" rel="stylesheet" href="t5.zbjimg.com/t5s/task/css/tasklist.css~t=06b7f48b1e60e921.css"/>

<script>

function openme(){
document.getElementById('loginmodal').style.display='block';

}
function closeme(){
document.getElementById('loginmodal').style.display='none';

}
function login(){
   
   $.ajax({
   type:"post",//请求方式
  url:"../../servlet/login",//发送请求地址
   data:{//发送给数据库的数据
   username:$("#username").val(),
   password:$("#password").val()
   },
   dataType:'json',
   //请求成功后的回调函数有两个参数
   success:function(json){
    if(json!=1){
   alert("欢迎回来"+json);
   document.getElementById("loginchange").innerHTML=json;
   document.getElementById("loginchange").href="page/userzone.jsp";
   }
   else{
   alert("用户名不存在或密码错误，请重新登陆！");
   }
    
   }
   
   });
   closeme();
}
</script>
    
        <script>
            //存放一些基本的页面信息
            //pageDomain是domian。如zhubajie.con
            //baseURI 是主域名地址。比如t5.zbj.com
            window.ZBJInfo = {
                pageDomain: "zhubajie.com",
                baseURI: "zhubajie.com",
                staticURI: "http://t5.zbjimg.com"           };
           //旧的配置
            window.PUBCONFIG = {
                PUBURI: "http://task.zhubajie.com/pub",
                TITLEURI: "http://task.zhubajie.com/api/searchtitle",
                INVITEURI: "http://task.zhubajie.com/api/searchfriend",
                LABELURI: "http://task.zhubajie.com/api/searchtag",
                ADDLABELURI: "http://task.zhubajie.com/api/addtag",
                UPLOADURI: "http://task.zhubajie.com/pub/uploadnew",
                WORKUPLOADURI: "http://task.zhubajie.com/pub/uploadnew-key-1.html",
                PROGRESSURI: "http://task.zhubajie.com/pub/progress",
                SEVPUBURI:"http://u.zhubajie.com/services/pub",
                SEVUPLOADURI:"http://u.zhubajie.com/services/upload?t=1",
                SEVVIDEOURI:"http://u.zhubajie.com/services/video",
                SEVMUSICURI:"http://u.zhubajie.com/services/music",
                SEVGRESSURI:"http://u.zhubajie.com/services/progress",
                ATSOMEBODY : "http://task.zhubajie.com/api/atfollow/?num=10&jsonp=?",
                SETBOUNSURL:"http://www.zhubajie.com/list/setbonus",
                ALLOTURL:"http://www.zhubajie.com/list/allot"
            };
            window.COMMONURI = {
                ATTENTION: "http://task.zhubajie.com/api/follow",
                FAVORITE: "http://task.zhubajie.com/api/favorite",
                THINKS: "http://task.zhubajie.com/api/THINKS",
                HUANHUAN: "http://task.zhubajie.com/api/HUANHUAN",
                USERCARD: "http://task.zhubajie.com/api/getusertips",
                REPLY: "http://task.zhubajie.com/api/reply",
                LISTRELOAD: "http://www.zhubajie.com/main/show"
            }

        </script>
    
</head>
<body class="list task-hall">


<!--[if lte IE 7]>
<div class="ui-tips ui-tips-warning ie-update">
    你正在使用IE低级浏览器，为了您的猪八戒账号安全和更好的产品体验，<br />强烈建议您立即 <a href="http://windows.microsoft.com/zh-cn/internet-explorer/download-ie" target="_blank">升级IE浏览器</a> 或者用更快更安全的 <a href="https://www.google.com/intl/zh-CN/chrome/browser/?hl=zh-CN" target="_blank">谷歌浏览器Chrome</a> 。
</div>
<![endif]-->
    
        
            <div class="ui-header header" id="j-zbj-header">

    <div class="ui-header-top">
    <div class="grid">
        <div class="fr ui-header-nav">
                <span id="J-header-logic3" class="item-userinfo">
                <a data-process="1" href="https://login.zhubajie.com/register" class="item-regx">免费注册</a>
                <span class="split">|</span>

                <div class="ui-dropdown">
                <a data-process="1" href="javascript:openme()" class="ui-dropdown-hd item-login" id="loginchange">登录<b></b></a>
                </div>
                  <div id="loginmodal" style="display:none;">
    <h1>User Login</h1>
    
      <label for="username">Username:</label>
      <input type="text" name="username" id="username" class="txtfield" tabindex="1">
      
      <label for="password">Password:</label>
      <input type="password" name="password" id="password" class="txtfield" tabindex="2">
      
      <div class="center"><input type="button" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="Log In" tabindex="3" onClick="login()">
                          <input type="button" name="loginbtn" id="loginbtn" class="flatbtn-blu hidemodal" value="Cancel" tabindex="3" onClick="closeme()">
      </div>
    
  </div>

                </span>
                <span class="split">|</span>


            <a target="_blank" data-process="1" href="../../servlet/login">猪八戒首页</a>
            <span class="split">|</span>
            <div class="ui-dropdown">
                <a data-process="1" href="http://u.zhubajie.com/" class="ui-dropdown-hd">我的猪八戒 <b></b></a>
                <ul class="unstyled fr ui-dropdown-menu">
                    <li><a data-process="1" target="_blank" href="http://u.zhubajie.com/task/buyer">我发布的需求</a></li>
                    <li><a data-process="1" target="_blank" href="http://u.zhubajie.com/service/employ">我发起的雇佣</a></li>
                </ul>
            </div>
            <span class="split">|</span>
            <div class="ui-dropdown">
                <a data-process="1" href="http://u.zhubajie.com/seller" class="ui-dropdown-hd">服务商中心 <b></b></a>
                <ul class="unstyled fr ui-dropdown-menu">
                    <li><a data-process="1" target="_blank" href="http://u.zhubajie.com/task/seller">我参与的需求</a></li>
                    <li><a data-process="1" target="_blank" href="http://u.zhubajie.com/services/index">我发布的服务</a></li>
                    <li><a data-process="1" target="_blank" href="http://u.zhubajie.com/service/employ-s-1">我收到的雇佣</a></li>
                    <li><a data-process="1" target="_blank" href="http://u.zhubajie.com/service/index-s-1">我卖出的服务</a></li>
                </ul>
            </div>
            <span class="split">|</span>
                <a data-process="1"  target="_blank" href="http://www.zhubajie.com/vip/club">签约服务商</a>
                <span class="split">|</span>

                <div class="ui-dropdown ui-dropdown-active">
                    <a class="ui-dropdown-hd item-usersetting" href="#">设置<b></b></a>
                    <ul class="unstyled fr ui-dropdown-menu  item-usersetting-dropdown">
                        <li><a data-process="1" href="http://u.zhubajie.com/main/index">帐号设置</a></li>
                        <li><a href="#none" id="skinset">模版设置</a></li>
                        <li><a data-process="1"  href="http://www.zhubajie.com/vip/index">签约服务商</a></li>
                        <li><a href="http://union.zhubajie.com/">推广员</a></li>
                        <li><a data-process="1" href="http://www.zhubajie.com/user/reward">威客奖金</a></li>
                    </ul>
                </div>
                <span class="split">|</span>


            <div class="ui-dropdown">
                <a href="http://quanzi.zhubajie.com/" class="ui-dropdown-hd">圈子 <b></b></a>
                <ul class="unstyled fr ui-dropdown-menu">
                    <li><a target="_blank" href="http://quanzi.zhubajie.com/main/user">我的圈子</a></li>
                    <li><a target="_blank" href="http://quanzi.zhubajie.com/main/find">发现圈子</a></li>
                </ul>
            </div>
            <span class="split">|</span>
            <a id="j-mobiphone" target="_blank" href="http://m.zhubajie.com/index_pc.html"><i class="iconfont highlight">&#xe827;</i> 手机版</a>
            <div class="mqrcode-wrap"  id="j-tmp-mobile-entry">
                <!--<div class="mqrcode ui-poptipnoc ui-poptipnoc-bottom">
                    <div class="ui-poptipnoc-arrow"><i></i></div>
                    <div class="ui-poptipnoc-bd">
                        <div class="mqrcode-img"></div>
                        <p>手机客户端，你身边的猪八戒<br/>扫描二维码立即下载</p>
                    </div>
                </div>
                换为临时广告-->
                <div class="mqrcode ui-poptipnoc ui-poptipnoc-bottom" style="height: 20px;line-height: 20px;left: -105px; width:150px;top:12px;">
                    <div class="ui-poptipnoc-arrow" style="border-width: 6px;top:-12px;left:80px;"><i></i></div>
                    <div class="ui-poptipnoc-bd">
                        <p style="margin-bottom: 0;height: 20px;line-height: 20px;"><a target="_blank" href="http://zt.zhubajie.com/ztold/appdownload/index.html" style="text-decoration: underline">手机下单，领现金红包!</a><a href="javascript:void(0)" id="j-mobile-entry-close" style="position: absolute;right: 5px;">x</a></p>
                    </div>
                </div>
            </div>
            <span class="split">|</span>
            <div class="ui-dropdown ui-dropdown-multi">
                <a href="#none" class="ui-dropdown-hd">网站导航 <b></b></a>
                <ul class="unstyled fr ui-dropdown-menu">
                    <li class="highlight">
                        <a data-process="1"  target="_blank" href="http://www.zhubajie.com/special/logo">LOGO设计专场</a>
                        <a data-process="1"  target="_blank" href="http://www.zhubajie.com/renren">人人能任务专场</a>
                    </li>
                    <li>
                        <p>服务商</p>
                        <a data-process="1" target="_blank"  href="http://www.zhubajie.com/vip/index">签约服务商</a>
                        <a target="_blank" href="http://union.zhubajie.com/">推广员</a>
                        <a target="_blank" href="http://edu.zhubajie.com/">猪八戒大学</a>
                        <a data-process="1"  target="_blank" href="http://www.zhubajie.com/juhe/rank">风云榜</a>
                    </li>
                    <li>
                        <a data-process="1" target="_blank" href="http://help.zhubajie.com/">帮助中心</a>
                        <a data-process="1" target="_blank" href="http://chengxin.zhubajie.com/">诚信管理中心</a>
                        <a data-process="1" target="_blank" href="http://search.zhubajie.com/charlist/index.html">热门服务</a>
                    </li>
                    <li>
                        <a target="_blank" href="http://kuaiyin.zhubajie.com/">快印</a>
                        <a target="_blank" href="http://news.zhubajie.com/">新闻资讯</a>
                        <a data-process="1" target="_blank" href="http://zt.zhubajie.com/ztoper/wqindex">微企孵化园</a>
                        <a target="_blank" href="http://gl.zhubajie.com/">猪八戒攻略</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="ui-header-greet">
            欢迎您<a href="javascript:void(0)" class="current-site">中文主站</a> <span class="split">|</span> <a href="http://int.zhubajie.com/?utm_source=INT_LuPai&utm_medium=Top&utm_campaign=INT" target="_blank">中文国际站</a> <span class="split">|</span> <a href="http://en.zhubajie.com/?utm_source=INT_LuPai&utm_medium=Top&utm_campaign=INT" target="_blank">English</a>
        </div>
    </div>
</div>
<div id="j-vipentry-wrap" style="background: #a71812;height: 60px;">
    <div class="grid" style="position: relative;">
        <a href="http://quanzi.zhubajie.com/main/topic-qid-5216-tid-315213" target="_blank" title="感恩回馈，买三赠一"><img alt="感恩回馈，买三赠一" src="http://p4.zbjimg.com/cms/2013-12/27/cmER37rd2h1129/52bcf311c3dd4.gif"></a>
    </div>
</div>



            <div class="grid ui-header-bd">
    <h1 class="fl ui-logo">
        <a data-process="1" href="http://www.zhubajie.com/" title="猪八戒网" class="ui-logo-main">
                        <img src="http://t5.zbjimg.com/t5s/lib/img/logo.png?v=1226" alt="猪八戒让人民为你服务"/>
                    </a>
                <a class="yahei ui-logo-sub" id="" href="http://task.zhubajie.com/index" data-process="1" title="需求市场">
            <span class="item-txt">需求市场</span>
                    </a>
            </h1>
    <div class="fr ui-header-entry">
        <a id="j-head-pubentry" data-process="1" class="ui-btn ui-btn-inverse ui-header-btn" href="http://task.zhubajie.com/pub/step1?from_cid=10001" target="_blank"><i class="iconfont">&#xe82c;</i>立即发布需求</a>
        <a data-process="1" class="ui-btn ui-btn-inverse ui-header-btn" href="http://www.zhubajie.com/active/wikeyentrance" target="_blank">免费开店<span class="right-arr"></span></a>
    </div>
    <div class="fl ui-header-search hashotwords" id="header-search">
        <form data-process="1" id="j-header-searchform" action="http://search.zhubajie.com/p/" class="ui-form-search">
            <div class="input-append">
                                    <div class="ui-dropdown" id="j-header-searchwrap">
                        <span class="ui-dropdown-hd"><span id="j-header-searchlabel">服务商</span><i class="iconfont">&#xe807;</i></span>
                        <ul class="unstyled ui-dropdown-menu">
                            <li class="hide" data-type="witkey"><a href="javascript:;">服务商</a></li>
                            <li data-type="task"><a href="javascript:;">需&nbsp;&nbsp;&nbsp;求</a></li>
                            <li data-type="service"><a href="javascript:;">服&nbsp;&nbsp;&nbsp;务</a></li>
                        </ul>
                    </div>
                                <input name="kw" id="j-header-kw" type="text"  class="search-query" placeholder="想找什么?输入关键字试试" autocomplete="off" disableautocomplete/>
                <button type="submit" class="ui-btn ui-btn-inverse"><i class="iconfont">&#xe809;</i></button>
             </div>
        </form>
                    <div class="ui-header-search-hotwords">
                                <a target="_blank" href="http://www.zhubajie.com/c-wzkf/">网站建设</a>
                                <a target="_blank" href="http://www.zhubajie.com/c-logovi/logo/p.html">logo设计</a>
                                <a target="_blank" href="http://www.zhubajie.com/c-tuiguang/">网络推广</a>
                                <a target="_blank" href="http://www.zhubajie.com/c-wdzx/">网店装修</a>
                                <a target="_blank" href="http://www.zhubajie.com/c-qiming/">起名</a>
                            </div>
            </div>
</div>



</div>        
        
                        <div class="hall-nav yahei">
                <div class="grid" style="position:relative;">
                    <ul class="fl clearfix unstyled">
                        <li><a href="http://task.zhubajie.com/index">首页</a></li>
                        <li class="cur"><a href="http://task.zhubajie.com/">所有需求</a></li>
                        <li><a href="http://www.zhubajie.com/zhuti">主题需求</a></li>
                        <li><a href="http://task.zhubajie.com/witmart.html">国际需求</a></li>
                        <li><a href="http://zt.zhubajie.com/" target="_blank">专题活动</a></li>
                        <li><a href="http://task.zhubajie.com/paypal">Paypal专区</a></li>
                        <li><a href="http://match.zhubajie.com/" target="_blank">大赛频道</a></li>
                        <li><a href="http://task.zhubajie.com/index/mobile">语音需求</a></li>
                        <li><a href="http://task.zhubajie.com/main/taskmap" target="_blank">地图</a></li>
                        <li><a href="http://task.zhubajie.com/index/intro" target="_blank">了解如何使用</a></li>
                    </ul>
                </div>
            </div>
            
        
            <div class="grid list-category-nav">
            <form method="get" action="http://task.zhubajie.com/t-logovi/">
                <div class="ui-dropdown ui-dropdown-level1">
                    <a href="http://task.zhubajie.com/" class="ui-dropdown-hd">全部分类 <b></b></a>
                    <ul class="unstyled ui-dropdown-menu">
                                                    <li>
                                                                    <a href="t-logovi.html" class="active">LOGO/VI设计</a>
                                                                    <a href="http://task.zhubajie.com/t-mpkpsj/" >名片/卡片设计</a>
                                                            </li>
                                                    <li>
                                                                    <a href="http://task.zhubajie.com/t-wzkf/" >网站建设</a>
                                                                    <a href="http://task.zhubajie.com/t-rjkf/" >软件开发</a>
                                                                    <a href="http://task.zhubajie.com/t-uisheji/" >UI设计</a>
                                                            </li>
                                                    <li>
                                                                    <a href="http://task.zhubajie.com/t-ydyykf/" >APP开发</a>
                                                                    <a href="http://task.zhubajie.com/t-weixinkf/" >微信公众平台开发</a>
                                                            </li>
                                                    <li>
                                                                    <a href="http://task.zhubajie.com/t-bzsj/" >包装设计</a>
                                                                    <a href="http://task.zhubajie.com/t-xcpsj/" >宣传品设计</a>
                                                            </li>
                                                    <li>
                                                                    <a href="http://task.zhubajie.com/t-tuiguang/" >网络推广</a>
                                                                    <a href="http://task.zhubajie.com/t-seo/" >SEO</a>
                                                            </li>
                                                    <li>
                                                                    <a href="http://task.zhubajie.com/t-wdtg/" >网店推广</a>
                                                                    <a href="http://task.zhubajie.com/t-wdzx/" >网店装修</a>
                                                            </li>
                                                    <li>
                                                                    <a href="http://task.zhubajie.com/t-gycpsj/" >工业设计</a>
                                                                    <a href="http://task.zhubajie.com/t-fuzhuang/" >服装设计</a>
                                                            </li>
                                                    <li>
                                                                    <a href="http://task.zhubajie.com/t-photo/" >照片处理</a>
                                                                    <a href="http://task.zhubajie.com/t-sjzzsj/" >书籍装帧</a>
                                                            </li>
                                                    <li>
                                                                    <a href="http://task.zhubajie.com/t-mhsj/" >漫画制作</a>
                                                                    <a href="http://task.zhubajie.com/t-dhsj/" >动画设计</a>
                                                            </li>
                                                    <li>
                                                                    <a href="http://task.zhubajie.com/t-jjzx/" >家居装修</a>
                                                                    <a href="http://task.zhubajie.com/t-syzxiu/" >商业装修</a>
                                                                    <a href="http://task.zhubajie.com/t-jzsj/" >建筑设计</a>
                                                            </li>
                                                    <li>
                                                                    <a href="http://task.zhubajie.com/t-qiming/" >起名取名</a>
                                                                    <a href="http://task.zhubajie.com/t-zhufu/" >创意祝福</a>
                                                            </li>
                                                    <li>
                                                                    <a href="http://task.zhubajie.com/t-wzxz/" >文章代写</a>
                                                                    <a href="http://task.zhubajie.com/t-fangan/" >方案策划</a>
                                                                    <a href="http://task.zhubajie.com/t-fy/" >专业翻译</a>
                                                            </li>
                                                    <li>
                                                                    <a href="http://task.zhubajie.com/t-yszz/" >影视制作</a>
                                                                    <a href="http://task.zhubajie.com/t-py/" >配音</a>
                                                                    <a href="http://task.zhubajie.com/t-youxisw/" >游戏试玩</a>
                                                            </li>
                                                    <li>
                                                                    <a href="http://task.zhubajie.com/t-paotui/" >生活服务</a>
                                                            </li>
                                            </ul>
                </div>
                                    <span class="ui-breadcrumb-divider">&gt;</span>
                    <div class="ui-dropdown ui-dropdown-level2">
                        <a href="t-logovi.html" class="ui-dropdown-hd">LOGO/VI设计 <b></b></a>
                        <ul class="unstyled ui-dropdown-menu">
                                                                                                                                                            <li>
                                        <a href="http://task.zhubajie.com/t-mpkpsj/">名片/卡片设计</a>
                                    </li>
                                                                                    </ul>
                    </div>
                
                
                <span class="ui-breadcrumb-divider">&gt;</span>
                <div class="category-nav-search">
                    <input name="kw" type="text" placeholder="当前条件下搜索"  value="" /><button type="submit" class="ui-btn"><i class="iconfont">&#xe809;</i></button>
                </div>
            </form>
        </div>
    
        
    <div class="grid grid-inverse">
        <div class="main-wrap">
            <div class="main mainContent">
                
    <div class="list-container">
        

        <div class="list-container-hd clearfix">
        <h2 class="fl yahei">
                            LOGO/VI设计需求<span class="list-number">(242409)</span>
                    </h2>
                    <span class="list-container-pub-entry fr">
                <a class="blue" href="http://m.zhubajie.com/wk/">抢单神器——猪八戒抢单宝</a>
                <a href="javascript:;" class="wontTop" id="J-iwont-top" act-href="http://task.zhubajie.com/api/paidslisting-do-page.html?jsonpcallback=?"><em>置顶</em>，提高曝光率！</a>
            </span>
            </div>



    <div class="list-container-hd list-container-hd-border clearfix" >
        <ul class="list-change">
            <li class="current">    
                                                
        
        <a href="http://task.zhubajie.com/t-logovi/s5.html" >
            进行中
        </a>
    </li>
            <li>    
                                                
        
        <a href="http://task.zhubajie.com/t-logovi/s4.html" >
            圆满结束
        </a>
    </li>
        </ul>
        <a class="fr" style="margin-top: 20px; color: #0B73BB;" href="http://www.zhubajie.com/vip/dear" target="_blank">走进服务商，了解服务商心声</a>
    </div>


    <div class="list-sortby clearfix">
    <form method="get" id="zbj-storprice1" action="http://task.zhubajie.com/t-logovi/" class="">
        <div class="list-sorttag">
                                
                                                                        <a href="http://task.zhubajie.com/t-logovi/o0.html" class="selected">
                综合
            </a>
            
                                        
                                            <a href="http://task.zhubajie.com/t-logovi/o7.html" >
                发布时间
                                    <i class="iconfont">
                        &#xe80c;                    </i>
                            </a>
            
                
                                            <a href="http://task.zhubajie.com/t-logovi/o1.html" >
                剩余时间
                                    <i class="iconfont">
                        &#xe80c;                    </i>
                            </a>
            
                
                                            <a href="http://task.zhubajie.com/t-logovi/o3.html" >
                参与数
                                    <i class="iconfont">
                        &#xe80c;                    </i>
                            </a>
            
                
                                            <a href="http://task.zhubajie.com/t-logovi/o5.html" >
                价格
                                    <i class="iconfont">
                        &#xe80c;                    </i>
                            </a>
            
        </div>
        <div class="price-range">
            <p class="js_range_input">
                ￥
                <input type="text" name="j" id="minPrice" class="text js_number_type" value="" />
                至
                <input type="text" name="b" id="maxPrice" class="text js_number_type" value="" />
                <button type="submit" class="ui-btn ui-btn-mini js_range_submit">确定</button>
            </p>
            <div class="show-dor">
                <ul class="unstyled">
                                                            <li data-max="100" data-min="">
                        <a rel="nofollow" href="http://task.zhubajie.com/t-logovi/?b=100">100元以下</a>
                    </li>
                    <li data-max="500" data-min="100">
                        <a rel="nofollow" href="http://task.zhubajie.com/t-logovi/?j=100&b=500">100—500</a>
                    </li>
                    <li data-max="1000" data-min="500">
                        <a rel="nofollow" href="http://task.zhubajie.com/t-logovi/?j=500&b=1000">500—1000</a>
                    </li>
                    <li data-max="2000" data-min="1000">
                        <a rel="nofollow" href="http://task.zhubajie.com/t-logovi/?j=1000&b=2000">1000—2000</a>
                    </li>
                    <li data-max="5000" data-min="2000">
                        <a rel="nofollow" href="http://task.zhubajie.com/t-logovi/?j=2000&b=5000">2000—5000</a>
                    </li>
                    <li data-max="20000" data-min="5000">
                        <a rel="nofollow" href="http://task.zhubajie.com/t-logovi/?j=5000&b=20000">5000—20000</a>
                    </li>
                    <li data-max="" data-min="20000">
                        <a rel="nofollow" href="http://task.zhubajie.com/t-logovi/?j=20000">2万元以上</a>
                    </li>
                </ul>
            </div>
        </div>
        
    <script type="text/template" id="area-items">
        <ul class="unstyled">
        <li><a href="javascript:;" data-id="">全部</a></li>
        <#for(var i = 0; i < cities.length; i++){#>
            <li><a href="javascript:;" onclick="return false;" data-id="<#=cities[i].region_id#>"><#=cities[i].region_name#></a></li>
        <#}#>
        </ul>
    </script>
    <div   class="ui-dropdown task-area-select" data-url="http://task.zhubajie.com/t-logovi/" data-area-pid="" data-area-cid="">
        <a href="#none" class="ui-dropdown-hd"><i class="iconfont">&#xe800;</i>&nbsp;所在地</a>
        <div class="unstyled ui-dropdown-menu area-select-content">
          </div>
        </div>
        </div>
    </div>
        
        <div class="list-search-box ui-form-minisearch" title="输入关键字搜索需求">
            <input type="text" class="search-query list-search-kw" placeholder="请输入关键字" value="" name="kw"><button type="submit" class="ui-btn ui-btn-link"><i class="iconfont">&#xe809;</i></button>
        </div>
    </form>
</div>
  <c:if test="${not empty Demo2}">
<c:forEach items="${Demo2}" var="item" varStatus="i">
        <table class="list-task"><colgroup><col><col width="110px"><col width="130px"><col width="105px"></colgroup><tr><td><p><em class="list-task-reward">&yen;&nbsp;${Demo2[i.count-1].price} </em><a rel="nofollow" class="list-task-title" href="servlet/singlenews?taskid=${Demo2[i.count-1].taskid}" target="_blank" data-zbjlog="{obj:'main'}">${Demo2[i.count-1].tasktitle}</a><a tool-map="top" tool-text="来自LOGO设计专场的需求" class="zbj-tooltip task-icons task-icons-logo " href="http://www.zhubajie.com/special/logo" target="_blank"></a><a tool-map="top" tool-text="屏蔽搜索引擎 " class="zbj-tooltip task-icons task-icons-spider" href="javascript:return false;"></a><span class='list-icon-top' act-type="window" act-href="http://task.zhubajie.com/api/paidslisting-do-page.html?jsonpcallback=?">置顶</span></p><p class="list-task-ctn"></p></td><td><p><em class="list-task-trusteeship">已托管</em></p></td>
        <td><a class="blue" rel="nofollow" href="taskinfo.html" target="_blank" data-zbjlog="{obj:'main'}">32</a><span class="text">参与</span><span class="text"> | </span><span class="text">比稿</span></td><td><span class="text">6天 后截止</span></td></tr></table>
        
        </c:forEach>
</c:if>
        <div class="list-footer"><div class="list-search-box"><form class="ui-form-minisearch" method="get" action="http://search.zhubajie.com/t/"  title="快速搜索需求"><input type="text" class="search-query list-search-kw" placeholder="快速搜索需求" name="kw"><button type="submit" class="ui-btn ui-btn-link"><i class="iconfont">&#xe809;</i></button></form></div><div class="pagination">


</div><div class="asset-a-d" id="CHANNEL_COMMON"></div></div>    </div>

            </div>
        </div>
            
 
    </div>
</div>        </div>
    

    
              

<div style='text-align:center;margin:18px auto;'>
    <script>var cpro_id = 'u1412240';</script>
    <script src="../../cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>
</div>
        
        
                            
<div class="link-friendship">
    <div class="grid">
        <table>
                        <tr>
                <th>频道简介：</th>
                <td>猪八戒网<a href="http://www.zhubajie.com/c-logovi/logo/p.html">logo设计</a>频道是以logo设计、站标设计、logo征集、标志设计、logo制作为主打的logo设计外包平台,征集所有logo、标志、会徵、吉祥物设计、企业logo设计等服务，感谢您选择logo设计外包平台。</td>
            </tr>
                                    <tr>
                <th>热门服务：</th>
                <td>
                                        <a target="_blank" href="http://www.zhubajie.com/c-logovi/vi/p.html">vi设计</a>
                                        <a target="_blank" href="http://www.zhubajie.com/c-logovi/logo/p.html">logo</a>
                                        <a target="_blank" href="http://www.zhubajie.com/c-logovi/logo/p.html">公司logo设计</a>
                                        <a target="_blank" href="http://www.zhubajie.com/c-logovi/ziti/p.html">字体设计</a>
                                        <a target="_blank" href="http://www.zhubajie.com/c-logovi/tubiao/p.html">图标设计</a>
                                        <a target="_blank" href="http://www.zhubajie.com/c-mpkpsj/mpsj/p.html">名片设计</a>
                                        <a target="_blank" href="http://www.zhubajie.com/c-mpkpsj/hyksj/p.html">会员卡设计</a>
                                        <a target="_blank" href="http://www.zhubajie.com/c-mpkpsj/hekasj/s.html">贺卡设计</a>
                                        <a target="_blank" href="http://www.zhubajie.com/c-bzsj/baozhuang/p.html">包装设计</a>
                                        <a target="_blank" href="http://www.zhubajie.com/c-xcpsj/">宣传品设计</a>
                                        <a target="_blank" href="http://www.zhubajie.com/c-xcpsj/haibaosj/p.html">海报设计</a>
                                        <a target="_blank" href="http://www.zhubajie.com/c-ggsj/">广告设计</a>
                                    </td>
            </tr>
                        <tr>
                <th>友情链接：</th>
                <td>
                                        <a target="_blank" href="http://www.witmart.com/cn/logo-design">国际Logo/VI设计服务</a>
                                        <a data-linkname="" href="#" id="list-join-friendship" class="link-join-btn">友情链接申请</a>
                </td>
            </tr>
        </table>
    </div>
</div>
                            
<input name="ab_sid" value="updatetimesort" type="hidden"/>
<input name="catagory_id" value="1000002" type="hidden"/>
<div class="ui-footer" >
    <div class="grid">
        <div class="ui-footer-about clearfix">
            <dl class="item-about">
                <dt>新手入门</dt>
                <dd><a target="_blank" href="http://help.zhubajie.com/">帮助中心</a></dd>
                <dd><a target="_blank" href="http://chengxin.zhubajie.com/report/rule-g-2317">规则中心</a></dd>
                <dd><a target="_blank" href="http://www.zhubajie.com/main/guide">新手上路</a></dd>
                <dd><a target="_blank" href="">在线客服</a></dd>
            </dl>
            <dl class="item-safe">
                <dt>交易保障</dt>
                <dd><a target="_blank" href="http://www.zhubajie.com/main/map">担保交易</a></dd>
                <dd><a target="_blank" href="http://chengxin.zhubajie.com/security/buyer">消费者保障</a></dd>
                <dd><a target="_blank" href="http://www.zhubajie.com/user/renzheng">威客认证</a></dd>
                <dd><a target="_blank" href="http://chengxin.zhubajie.com/">诚信管理中心</a></dd>
            </dl>
            <dl class="item-spacial">
                <dt>猪八戒特色</dt>
                <dd><a target="_blank" href="http://www.zhubajie.com/active/wikeyentrance">服务商入驻</a></dd>
                <dd><a target="_blank" href="http://union.zhubajie.com/">推广员</a></dd>
                <dd><a target="_blank" href="http://gl.zhubajie.com/">猪八戒攻略</a></dd>
            </dl>
            <dl class="item-witmart">
                <dt>猪八戒国际版</dt>
                <dd><a target="_blank" href="http://www.zhubajie.com/witmart/r?l=http://www.witmart.com/cn/zbj&utm_source=ZBJ_LuPai&utm_medium=Footer&utm_campaign=ZBJ"><img src="http://t5.zbjimg.com/t5s/lib/img/witmart-logo.png"></a></dd>
            </dl>
            <dl class="item-app">
                <dt>手机客户端</dt>
                <dd>
                    <a href="http://m.zhubajie.com/" target="_blank" class="yahei"><i class="ui-ico ui-ico-mobile"></i> 下载客户端</a>
                    <!--临时广告--><a target="_blank" href="http://zt.zhubajie.com/ztold/appdownload/index.html" style="height: 20px;background: none;font-size: 12px;">手机下单，领现金红包!</a>
                </dd>
            </dl>

            <dl class="item-weibo">
                <dt>关注我们</dt>
                <dd><a target="_blank" href="http://weibo.com/zhubajiewang"><i class="ui-ico ui-ico-sina"></i>新浪微博</a></dd>
                <dd><a target="_blank" href="http://t.qq.com/zhubajie"><i class="ui-ico ui-ico-qq"></i>腾讯微博</a></dd>
                <dd><a target="_blank" href="http://t.sohu.com/u/108262596"><i class="ui-ico ui-ico-sohu"></i>搜狐微博</a></dd>
            </dl>
            <dl class="item-weixin">
                <dt>微信二维码</dt>
                <dd>
                    <img src="http://t5.zbjimg.com/t5s/lib/img/weixin-zbj.png">
                </dd>
            </dl>
        </div>
                <div class="ui-footer-sitelink">
            <a href="http://www.zhubajie.com/about/index.html" target="_blank">关于我们</a><span class="split">|</span>
            <a href="http://www.zhubajie.com/about/contactus.html" target="_blank">联系方式</a><span class="split">|</span>
            <a href="http://zt.zhubajie.com/ztold/adhelp/" target="_blank">广告服务</a><span class="split">|</span>
            <a href="http://news.zhubajie.com/" target="_blank">新闻中心</a><span class="split">|</span>
            <a href="http://www.zhubajie.com/main/map" target="_blank">网站地图</a><span class="split">|</span>
            <a href="http://www.zhubajie.com/zizhi/gszz.html" target="_blank">公司资质</a><span class="split">|</span>
            <a href="http://job.zhubajie.com/" target="_blank">加入我们</a><span class="split">|</span>
            <a href="http://www.zhubajie.com/about/payment.html" target="_blank">支付方式</a><span class="split">|</span>
            <a href="http://zt.zhubajie.com/ztold/zbjhezuo/" target="_blank">我也要与猪八戒网合作</a><span class="split">|</span>
            <a href="http://www.zhubajie.com/abc123" target="_blank">简版猪八戒</a><span class="split">|</span>
            <a target="_blank" href="http://search.zhubajie.com/charlist/index.html">热门服务</a>
        </div>
        <div class="ui-footer-copyright clearfix">
            <p class="item-tel">服务热线：400-188-6666（免长话） 023-61690100</p>
            <p class="item-icp">Copyright 2005-2013 zhubajie.com  版权所有  <a href="http://www.miitbeian.gov.cn/" target="_blank">渝ICP备10202274-1号</a> <a href="http://www.cqca.gov.cn/" target="_blank">渝B2-20080005</a></p>
        </div>
        <div class="ui-footer-gov">
            <a href="http://www.cqgseb.cn/ztgsgl/WebMonitor/GUILayer/eImgMana/dztbInfo.aspx?sfdm=120090611153726046127" target="_blank">
                <img src="http://t5.zbjimg.com/r/page/ebs.png" alt="市场监督管理局企业主体身份公示"><span class="item-txt">工商网监电子标识</span>
            </a>
            <a href="http://www.cqgseb.cn/ztgsgl/WebSiteMonitoring/WebUI/XFWQ/Index.aspx?xh=19" target="_blank">
                <img src="http://t5.zbjimg.com/r/page/xfz.jpg" alt="消费维权服务"><span class="item-txt">消费者维权服务站</span>
            </a>
            <a href="http://kxlogo.knet.cn/verifyseal.dll?sn=e13091311010042477ead0000000" target="_blank">
                <img src="http://t5.zbjimg.com/t5s/lib/img/time_cnnic.jpg" width="128" height="47" alt="可信网站身份验证"><span class="item-txt">可信网站身份验证</span>
            </a>
        </div>
    </div>
</div>


<script>
    window.WEBIMCONFIG = {
        host:"http://webim.zhubajie.com:32768",
        getbrandnameurl:"http://u.zhubajie.com/ajax/getbrandname",
        userHost : "http://u.zhubajie.com",
        filterUrl : "http://task.zhubajie.com/api/filter",
        getAboutUrl :"http://task.zhubajie.com/api/urltitle",
        defaultIcon : 'http://t4.zbjimg.com/r/p/task/48.gif',
        rulepage : 'http://help.zhubajie.com/1037.html'
    }
</script>
        
    
    
        <script src="../../t5.zbjimg.com/c/product/webim/socket.io.js"></script>
<script src="../../t5.zbjimg.com/c/product/webim/WebIM.max.js"></script>
<script src="../../t5.zbjimg.com/c/product/webim/WebIM.UI.max.js"></script>
 <script type="text/javascript" src="../../t5.zbjimg.com/t5s/output/pkg/common/js/global.js~t=c34f0e54b4cba6ab"></script>

<script type="text/javascript" src="../../t5.zbjimg.com/t5s/common/js/count.js"></script>        <script type="text/javascript" src="../../cbjs.baidu.com/js/o.js"></script>
                <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"1","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"0","bdPos":"left","bdTop":"170"}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=86326610.js?cdnversion='+~(-new Date()/36e5)];</script>
            
    
     <script type="text/javascript" src="../../t5.zbjimg.com/t5s/output/pkg/task/js/task.js~t=fe4c6d9fa523cbd8"></script>


    
<script type="text/javascript">
    BAIDU_CLB_fillSlotAsync('768543','TASK_L1');
    BAIDU_CLB_fillSlotAsync('768544','TASK_L2');
    BAIDU_CLB_fillSlotAsync('770819','TASK_L3');
    BAIDU_CLB_fillSlotAsync('770622','TASK_L4');
        BAIDU_CLB_fillSlotAsync('768531','TASK_L5');
    
    BAIDU_CLB_fillSlotAsync('743585','CHANNEL_COMMON');
</script>

    
<script type="text/javascript">
var _py = [];
_py.push(['a', '_C.6W.vMHkSlGJrq6pnHDJBDspz0']);
_py.push(['domain','stats.ipinyou.com']);
_py.push(['e','']);
-function(d){
 var f = 'https:' == location.protocol;
 f = (f ? 'https' : 'http') + '://'+(f?'file.ipinyou.com':'file.ipinyou.com.cn')+'/j/adv.js';
 d.write('<script src="'+f+'"><\/script>');
}(document)
</script>
<noscript><img src="http://stats.ipinyou.com/adv.gif?a=_C.6W.vMHkSlGJrq6pnHDJBDspz0&e=" style="display:none;"/></noscript>

</body>
</html>