<!DOCTYPE html>
<html lang='zh-CN'>
<head>
<title>install.sh · chxuan/vimplus - Gitee.com</title>
<meta content='on' http-equiv='x-dns-prefetch-control'>
<link href='//e.gitee.com' rel='dns-prefetch'>
<link href='//files.gitee.com' rel='dns-prefetch'>
<link href='//toscode.gitee.com' rel='dns-prefetch'>
<link href='https://assets.gitee.com' rel='dns-prefetch'>
<link href='https://portrait.gitee.com' rel='dns-prefetch'>
<link href="https://assets.gitee.com/assets/favicon-9007bd527d8a7851c8330e783151df58.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
<link href="https://gitee.com/chxuan/vimplus" rel="canonical" />
<meta content='gitee.com/chxuan/vimplus git https://gitee.com/chxuan/vimplus.git' name='go-import'>
<meta charset='utf-8'>
<meta content='always' name='referrer'>
<meta content='Gitee' property='og:site_name'>
<meta content='Object' property='og:type'>
<meta content='http://gitee.com/chxuan/vimplus/blob/master/install.sh' property='og:url'>
<meta content='https://gitee.com/static/images/logo_themecolor.png' itemprop='image' property='og:image'>
<meta content='install.sh · chxuan/vimplus - Gitee.com' itemprop='name' property='og:title'>
<meta content='An automatic configuration program for vim' property='og:description'>
<meta content='码云,Gitee,代码托管,Git,Git@OSC,Gitee.com,开源,内源,项目管理,版本控制,开源代码,代码分享,项目协作,开源项目托管,免费代码托管,Git代码托管,Git托管服务' name='Keywords'>
<meta content='An automatic configuration program for vim' itemprop='description' name='Description'>

<meta content="IE=edge" http-equiv="X-UA-Compatible" />
<meta content="authenticity_token" name="csrf-param" />
<meta content="CIPIwkK2j0w8/+UumHQOooX8+353poxjkxpVb5sr5+M=" name="csrf-token" />

<link href="https://assets.gitee.com/assets/application-75555718459818dfc67ca2ca56baaada.css" media="all" rel="stylesheet" />
<script>
//<![CDATA[
window.gon = {};gon.locale="zh-CN";gon.sentry_dsn=null;gon.baidu_register_hm_push=null;gon.sensor={"server_url":"https://haveaniceday.gitee.com:3443/sa?project=production","page_type":"其他"};gon.info={"controller_path":"blob","action_name":"show","current_user":false};gon.tour_env={"current_user":null,"action_name":"show","original_url":"http://gitee.com/chxuan/vimplus/blob/master/install.sh","controller_path":"blob"};gon.http_clone="https://gitee.com/chxuan/vimplus.git";gon.user_project="chxuan/vimplus";gon.manage_branch="管理分支";gon.manage_tag="管理标签";gon.enterprise_id=0;gon.create_reaction_path="/chxuan/vimplus/reactions";gon.ref="master";
//]]>
</script>
<script src="https://assets.gitee.com/assets/static/sensor-5984a2e9c24e9047ba28a1ddc8442b67.js"></script>
<script src="https://assets.gitee.com/assets/static/sentry-5.1.0-a823fb0be1b61c5d7ca4a89f0536cb0a.js"></script>
<script src="https://assets.gitee.com/assets/application-76507dd0e454e815cd825de6f02c8e04.js"></script>
<script src="https://assets.gitee.com/assets/lib/jquery.timeago.zh-CN-4a4818e98c1978d2419ab19fabcba740.js"></script>

<link href="https://assets.gitee.com/assets/projects/application-705b8d764a3d4201795216aad0ed4b70.css" media="all" rel="stylesheet" />
<script src="https://assets.gitee.com/assets/projects/app-5f6464057aeb9137e9b7654030e6843a.js"></script>

<script src="//res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
<script>
  var title = document.title.replace(/( - Gitee| - 码云)$/, '')
      imgUrl = '';
  
  document.addEventListener('DOMContentLoaded', function(event) {
    var imgUrlEl = document.querySelector('.readme-box .markdown-body > img, .readme-box .markdown-body :not(a) > img');
    imgUrl = imgUrlEl && imgUrlEl.getAttribute('src');
  
    if (!imgUrl) {
      imgUrlEl = document.querySelector('meta[itemprop=image]');
      imgUrl = imgUrlEl && imgUrlEl.getAttribute('content');
      imgUrl = imgUrl || "https://gitee.com/static/images/logo_themecolor.png";
    }
  
    wx.config({
      debug: false,
      appId: "wxff219d611a159737",
      timestamp: "1625547786",
      nonceStr: "5a2a0494bb1561d128505e63a01957fb",
      signature: "e7a9eb422b07ecee78936cbaba3c45d2b80ae3ab",
      jsApiList: [
        'onMenuShareTimeline',
        'onMenuShareAppMessage'
      ]
    });
  
    wx.ready(function () {
      wx.onMenuShareTimeline({
        title: title, // 分享标题
        link: "https://gitee.com/chxuan/vimplus/blob/master/install.sh", // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
        imgUrl: imgUrl // 分享图标
      });
      wx.onMenuShareAppMessage({
        title: title, // 分享标题
        link: "https://gitee.com/chxuan/vimplus/blob/master/install.sh", // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
        desc: document.querySelector('meta[name=Description]').getAttribute('content'),
        imgUrl: imgUrl // 分享图标
      });
    });
    wx.error(function(res){
      console.error('err', res)
    });
  })
</script>

<script type='text/x-mathjax-config'>
MathJax.Hub.Config({
  tex2jax: {
    inlineMath: [['$','$'], ['\\(','\\)']],
    displayMath: [["$$","$$"],["\\[","\\]"]],
    processEscapes: true,
    skipTags: ['script', 'noscript', 'style', 'textarea', 'pre', 'code'],
    ignoreClass: "container|files",
    processClass: "markdown-body"
  }
});
</script>
<script src="https://assets.gitee.com/uploads/resources/MathJax-2.7.2/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>

<script>
  (function () {
    var messages = {
      'zh-CN': {
        addResult: '增加 <b>{term}</b>',
        count: '已选择 {count}',
        maxSelections: '最多 {maxCount} 个选择',
        noResults: '未找到结果',
        serverError: '连接服务器时发生错误'
      },
      'zh-TW': {
        addResult: '增加 <b>{term}</b>',
        count: '已選擇 {count}',
        maxSelections: '最多 {maxCount} 個選擇',
        noResults: '未找到結果',
        serverError: '連接服務器時發生錯誤'
      }
    }
  
    if (messages[gon.locale]) {
      $.fn.dropdown.settings.message = messages[gon.locale]
    }
  }());
</script>

<script>
  var userAgent = navigator.userAgent;
  var isLessIE11 = userAgent.indexOf('compatible') > -1 && userAgent.indexOf('MSIE') > -1;
  if(isLessIE11){
    var can_access = ""
    if (can_access != "true"){
      window.location.href = "/incompatible.html";
    }
  }
  document.addEventListener("error", function (ev) {
    var elem = ev.target;
    if (elem.tagName.toLowerCase() === 'img') {
      elem.src = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAAAAACIM/FCAAACh0lEQVR4Ae3ch5W0OgyG4dt/mQJ2xgQPzJoM1m3AbALrxzrf28FzsoP0HykJEEAAAUQTBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEkKK0789+GK/I2ezfQB522PnS1qc8pGgXvr4tE4aY0XOUWlGImThWgyCk6DleixzE7qwBkg/MGiDPlVVAyp1VQGrPKiACDhFI6VkF5LmzCki+sg7IwDoglnVAil0IMkeG9CyUiwsxLFUVFzJJOQaKCjFCDN9RXMjIX7W6ztZXZDKKCyn8sWJvH+nca7WHDN9lROlAliPH9iRKCPI4cswFJQWxB46toLQgQ9jhn5QYZA9DOkoMUoQde5YapAxDWkoNYsOQR3KQd9CxUnIQF4S49CB9ENKlBxmDEKsFUgMCCCCAAHIrSF61f6153Ajy8nyiPr8L5MXnmm4CyT2fzN4DUvHZ+ntA2tOQBRBAAAEEEEAAAQQQ7ZBaC6TwSiDUaYHQ2yuB0MN+ft+43whyrs4rgVCjBUKTFshLC6TUAjGA3AxSaYFYLZBOC2RUAsk8h5qTg9QcbEoOsoQhQ2qQhsO5xCD5dgB5JQaZ+KBKGtKecvR81Ic0ZDjByKdDx0rSEDZ/djQbH+bkIdvfJFm98BfV8hD2zprfVdlu9PxVeyYAkciREohRAplJCaRSAplJCcQogTjSAdlyHRBvSAekJR0QRzogA+mADJkOiCPSAPEtqYBshlRAXC43hxix2QiOuEZkVERykGyNo9idIZKE0HO7XrG6OiMShlDWjstVzdPgXtUH9v0CEidAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQP4HgjZxTpdEii0AAAAASUVORK5CYII=";
    }
  }, true);
</script>
</head>

<body class='git-project lang-zh-CN large'>
<header class='common-header fixed noborder' id='git-header-nav'>
<div class='ui container'>
<div class='ui menu header-menu header-container'>
<div class='git-nav-expand-bar'>
<i class='iconfont icon-mode-table'></i>
</div>
<div class='gitee-nav__sidebar'>
<div class='gitee-nav__sidebar-container'>
<div class='gitee-nav__sidebar-top'>
<div class='gitee-nav__avatar-box'></div>
<div class='gitee-nav__buttons-box'>
<a class="ui button small fluid orange" href="/login">登录</a>
<a class="ui button small fluid basic is-register" href="/signup">注册</a>
</div>
</div>
<div class='gitee-nav__sidebar-middle'>
<div class='gitee-nav__sidebar-list'>
<ul>
<li class='gitee-nav__sidebar-item'>
<a href="/explore"><i class='iconfont icon-ic-discover'></i>
<span class='gitee-nav__sidebar-name'>开源软件</span>
</a></li>
<li class='gitee-nav__sidebar-item'>
<a href="/enterprises"><i class='iconfont icon-ic-enterprise'></i>
<span class='gitee-nav__sidebar-name'>企业版</span>
</a></li>
<li class='gitee-nav__sidebar-item'>
<a href="/education"><i class='iconfont icon-ic-education'></i>
<span class='gitee-nav__sidebar-name'>高校版</span>
</a></li>
<li class='gitee-nav__sidebar-item split-line'></li>
<li class='gitee-nav__sidebar-item'>
<a href="/search"><i class='iconfont icon-ic-search'></i>
<span class='gitee-nav__sidebar-name'>搜索</span>
</a></li>
<li class='gitee-nav__sidebar-item'>
<a href="/help"><i class='iconfont icon-help-circle'></i>
<span class='gitee-nav__sidebar-name'>帮助中心</span>
</a></li>
<li class='gitee-nav__sidebar-item'>
<a href="/terms"><i class='iconfont icon-file'></i>
<span class='gitee-nav__sidebar-name'>使用条款</span>
</a></li>
<li class='gitee-nav__sidebar-item'>
<a href="/about_us"><i class='iconfont icon-issuepx'></i>
<span class='gitee-nav__sidebar-name'>关于我们</span>
</a></li>
</ul>
</div>
</div>
<div class='gitee-nav__sidebar-bottom'>
<div class='gitee-nav__sidebar-close-button'>
<i class='fa fa-angle-double-left'></i>
</div>
</div>
</div>
</div>

<div class='item gitosc-logo'>
<a href="/"><img alt='Gitee — 基于 Git 的代码托管和研发协作平台' class='ui inline image' height='28' src='/static/images/logo.svg?t=158106664' title='Gitee — 基于 Git 的代码托管和研发协作平台' width='95'>
<img alt='Gitee — 基于 Git 的代码托管和研发协作平台' class='ui inline black image' height='28' src='/static/images/logo-black.svg?t=158106664' title='Gitee — 基于 Git 的代码托管和研发协作平台' width='95'>
</a></div>
<a class="item " href="/explore" title="开源软件">开源软件
</a><a class="item " href="/enterprises" title="企业版">企业版
<sup class='ui red label'>
特惠
</sup>
</a><a class="item " href="/education" title="高校版">高校版
</a><a class="item" href="https://blog.gitee.com/" id="gitee-blog" target="_blank" title="博客">博客
</a><div class='center responsive-logo'>
<a href="/"><img alt='Gitee — 基于 Git 的代码托管和研发协作平台' class='ui inline image' height='24' src='/static/images/logo.svg?t=158106664' title='Gitee — 基于 Git 的代码托管和研发协作平台' width='85'>
<img alt='Gitee — 基于 Git 的代码托管和研发协作平台' class='ui inline black image' height='24' src='/static/images/logo-black.svg?t=158106664' title='Gitee — 基于 Git 的代码托管和研发协作平台' width='85'>
</a></div>
<div class='right menu userbar right-header' id='git-nav-user-bar'>
<form accept-charset="UTF-8" action="/search" class="ui item" data-text-filter="搜索格式不正确" data-text-require="搜索关键字不能少于1个" id="navbar-search-form" method="get"><div style="display:none"><input name="utf8" type="hidden" value="&#x2713;" /></div>
<input id="navbar-search-type" name="type" type="hidden" />
<input id="fork_filter" name="fork_filter" type="hidden" value="on" />
<div class='ui search header-search'>
<input class="prompt" id="navbar-search-input" name="q" placeholder="搜开源" type="text" value="" />
</div>
</form>

<script>
  var can_search_in_repo = 1,
      repo = "VG1wWk0wMUVTWGROVjBVelRtcE9iV0UzTmpObWE3NjNm",
      reponame = "chxuan/vimplus";
  
  $(function() {
    var $search = $('#navbar-search-form .ui.search');
    $search.search({
      apiSettings: {
        url: '/search/relative_project?q={query}',
        onResponse: function (res) {
          if (res && res.status === 200 && res.data) {
            var query = htmlSafe($search.search('get value'));
  
            res.data.map(function (item) {
              item.path_ns = '/' + item.path_ns;
              item.icon = 'iconfont icon-project-public';
            });
            res.data.unshift({
              name_ns: "在全站搜索 <b class='hl'>" + query +"</b> 相关项目",
              path_ns: '/search?fork_filter=on&q=' + query,
              icon: 'iconfont icon-search'
            });
            return res;
          } else {
            return { data: [] };
          }
        }
      },
      fields: {
        results: 'data',
        description: 'name_ns',
        url: 'path_ns',
        icon: 'icon'
      },
      minCharacters: 1,
      maxResults: 10,
      searchDelay: 250,
      showNoResults: false,
      transition: 'fade'
    });
  });
</script>

<div class='ui item' id='feature-update-notice'>
<div class='notice-update-icon'>
<a class="notice-update-popup click-knowed" href="javascript:void(0)" title=""><img alt="功能更新" class="bubl_icon bubl-off-icon" src="https://assets.gitee.com/assets/bulb_off-24ee940be20998aace89a3f040cbc704.svg" title="" />
<img alt="功能更新" class="bubl_icon bubl-on-icon" src="https://assets.gitee.com/assets/bulb_on-3986b1dc417285398e3d15671bd8f261.svg" title="" />
</a></div>
<div class='feature-update-notice-panel menu'>
<div class='notice-img'>
<img alt="" class="notice-img-show" src="" title="" />
</div>
<div class='notice-update-title'></div>
<div class='notice-update-des'></div>
<div class='notice-btn-list d-flex-between'>
<button class="ui basic orange button btn-notice btn-knowed click-knowed" name="button" style="margin-right: 0" type="button">我知道了</button>
<a class="ui button orange btn-notice btn-details click-knowed" href="" target="_blank">查看详情</a>
</div>
</div>
</div>

<a class="item git-nav-user__login-item" href="/login" sa_evt="login_show" sa_referrer_action="站导航右上角-登录按钮" sa_referrer_type="其他" sa_referrer_url="">登录
</a><a class="item git-nav-user__register-item" href="/signup" sa_evt="register_show" sa_referrer_action="站导航右上角-注册按钮" sa_referrer_type="其他" sa_referrer_url="">注册
</a><script>
  $('.destroy-user-session').on('click', function() {
    $.cookie('access_token', null, { path: '/' });
  })
</script>

</div>
</div>
</div>
</header>
<script>
  Gitee.initNavbar()
  Gitee.initRepoRemoteWay()
  $.cookie('user_locale',null)
</script>

<script>
  var userAgent = navigator.userAgent;
  var isLessIE11 = userAgent.indexOf('compatible') > -1 && userAgent.indexOf('MSIE') > -1;
  if(isLessIE11){
    var can_access = ""
    if (can_access != "true"){
      window.location.href = "/incompatible.html";
    }
  }
</script>

<div class='fixed-notice-infos'>
<div class='all-messages'>
</div>
<div class='ui container'>
<div class='flash-messages' id='messages-container'></div>
</div>
<script>
  (function() {
    $(function() {
      var $error_box, alertTip, notify_content, notify_options, template;
      template = '<div data-notify="container" class="ui {0} message" role="alert">' + '<i data-notify="dismiss" class="close icon"></i>' + '<span data-notify="message">{2}</span>' + '</div>';
      notify_content = null;
      notify_options = {};
      alertTip = '';
      $error_box = $(".flash_error.flash_error_box");
      if (notify_options.type === 'error' && $error_box.length > 0 && !$.isEmptyObject(notify_content.message)) {
        if (notify_content.message === 'captcha_fail') {
          alertTip = "验证码不正确";
        } else if (notify_content.message === 'captcha_expired') {
          alertTip = "验证码已过期，请点击刷新";
        } else if (notify_content.message === 'not_found_in_database') {
          alertTip = "帐号或者密码错误";
        } else if (notify_content.message === 'not_found_and_show_captcha') {
          alertTip = "帐号或者密码错误";
        } else if (notify_content.message === 'phone_captcha_fail') {
          alertTip = "手机验证码不通过";
        } else {
          alertTip = notify_content.message;
        }
        return $error_box.html(alertTip).show();
      } else if (notify_content) {
        if ("show" === 'third_party_binding') {
          return $('#third_party_binding-message').html(notify_content.message).addClass('ui message red');
        }
        notify_options.delay = 3000;
        notify_options.template = template;
        notify_options.offset = {
          x: 10,
          y: 30
        };
        notify_options.element = '#messages-container';
        return $.notify(notify_content, notify_options);
      }
    });
  
  }).call(this);
</script>

</div>
<script>
  (function() {
    $(function() {
      var setCookie;
      setCookie = function(name, value) {
        $.cookie(name, value, {
          path: '/',
          expires: 365
        });
      };
      $('#remove-bulletin, #remove-bulletin-dashboard').on('click', function() {
        setCookie('remove_bulletin', "gitee-maintain-1625066668");
        $('#git-bulletin').hide();
      });
      $('#remove-member-bulletin').on('click', function() {
        setCookie('remove_member_bulletin', "gitee_member_bulletin");
        $(this).parent().hide();
      });
      return $('#remove-gift-bulletin').on('click', function() {
        setCookie('remove_gift_bulletin', "gitee-gift-bulletin");
        $(this).parent().hide();
      });
    });
  
  }).call(this);
</script>
<script>
  function closeMessageBanner(pthis, type, val) {
    var json = {}
  
    val = typeof val === 'undefined' ? null : val
    $(pthis).parent().remove()
    if (type === 'out_of_enterprise_member') {
      json = {type: type, data: val}
    } else if (type === 'enterprise_overdue') {
      json = {type: type, data: val}
    }
    $.post('/profile/close_flash_tip', json)
  }
</script>

<div class='site-content'>
<div class='git-project-header'>
<div class='fixed-notice-infos'>
<div class='ui info icon floating message green' id='fetch-ok' style='display: none'>
<div class='content'>
<div class='header status-title'>
<i class='info icon status-icon'></i>
代码拉取完成，页面将自动刷新
</div>
</div>
</div>
<div class='ui info icon floating message error' id='fetch-error' style='display: none'>
<div class='content'>
<div class='header status-title'>
<i class='info icon status-icon'></i>
<span class='error_msg'></span>
</div>
</div>
</div>
</div>
<div class='ui container'>
<div class='git-project-categories'>
<a href="/explore">开源项目</a>
<span class='symbol'>></span>
<a href="/explore/application-tools">应用工具</a>
<span class='symbol'>&gt;</span>
<a href="/explore/text-editor">文本编辑</a>
<span class='symbol and-symbol'>&&</span>
</div>

<div class='git-project-header-details'>
<div class='git-project-header-container'>
<div class='git-project-header-actions'>
<div class='ui tiny modal project-donate-modal' id='project-donate-modal'>
<i class='iconfont icon-close close'></i>
<div class='header'>捐赠</div>
<div class='content'>
捐赠前请先登录
</div>
<div class='actions'>
<a class='ui blank button cancel'>取消</a>
<a class='ui orange ok button' href='/login'>前往登录</a>
</div>
</div>
<div class='ui small modal wepay-qrcode'>
<i class='iconfont icon-close close'></i>
<div class='header'>
扫描微信二维码支付
<span class='wepay-cash'></span>
</div>
<div class='content weqcode-center'>
<img id='wepay-qrcode' src=''>
</div>
<div class='actions'>
<div class='ui cancel blank button'>取消</div>
<div class='ui ok orange button'>
支付完成
</div>
</div>
</div>
<div class='ui mini modal' id='confirm-alipay-modal'>
<div class='header'>支付提示</div>
<div class='content'>
将跳转至支付宝完成支付
</div>
<div class='actions'>
<div class='ui approve orange button'>
确定
</div>
<div class='ui blank cancel button'>
取消
</div>
</div>
</div>

<span class='ui buttons basic watch-container'>
<div class='ui dropdown button js-project-watch' data-watch-type='unwatch'>
<input type='hidden' value=''>
<i class='iconfont icon-watch'></i>
<div class='text'>
Watch
</div>
<i class='dropdown icon'></i>
<div class='menu'>
<a class="item" data-method="post" data-value="unwatch" href="/chxuan/vimplus/unwatch" rel="nofollow" sa_evt="loginInform_show" sa_referrer_action="Watch" sa_referrer_type="其他" sa_referrer_url=""><i class='iconfont icon-msg-read'></i>
不关注
</a><a class="item" data-method="post" data-value="watching" href="/chxuan/vimplus/watch" rel="nofollow" sa_evt="loginInform_show" sa_referrer_action="Watch" sa_referrer_type="其他" sa_referrer_url=""><i class='iconfont icon-msg-read'></i>
关注所有动态
</a><a class="disabled item" data-method="post" data-value="releases_only" href="/chxuan/vimplus/release_only_watch" rel="nofollow" sa_evt="loginInform_show" sa_referrer_action="Watch" sa_referrer_type="其他" sa_referrer_url=""><i class='iconfont icon-msg-read'></i>
仅关注版本发行动态
</a><a class="item" data-method="post" data-value="ignoring" href="/chxuan/vimplus/ignoring_watch" rel="nofollow" sa_evt="loginInform_show" sa_referrer_action="Watch" sa_referrer_type="其他" sa_referrer_url=""><i class='iconfont icon-msg-read'></i>
关注但不提醒动态
</a></div>
</div>
<style>
  .js-project-watch .text .iconfont {
    display: none; }
  .js-project-watch a, .js-project-watch a:hover {
    color: #000; }
  .js-project-watch .item > .iconfont {
    visibility: hidden;
    margin-left: -10px; }
  .js-project-watch .selected .iconfont {
    visibility: visible; }
  .js-project-watch .menu {
    margin-top: 4px !important; }
</style>
<script>
  $('.js-project-watch').dropdown({
    action: 'select',
    onChange: function(value, text, $selectedItem) {
      var type = value === 'unwatch' ? 'Watch' : 'Watching';
      $(this).children('.text').text(type);
      $(this).dropdown('set selected', value)
    }
  });
</script>

<a class="ui button action-social-count" href="/chxuan/vimplus/watchers" title="14">14
</a></span>
<span class='basic buttons star-container ui'>
<a class="ui button star" href="/login" sa_evt="loginInform_show" sa_referrer_action="Star" sa_referrer_type="其他" sa_referrer_url=""><i class='iconfont icon-star'></i>
Star
</a><a class="ui button action-social-count " href="/chxuan/vimplus/stargazers" title="59">59
</a></span>
<span class='ui basic buttons fork-container' title='无权 Fork 此仓库'>
<a class="ui button fork" href="/login" sa_evt="loginInform_show" sa_referrer_action="Fork" sa_referrer_type="其他" sa_referrer_url="" title="你必须登录后才可以fork一个仓库"><i class='iconfont icon-fork'></i>
Fork
</a><a class="ui button action-social-count disabled-style" href="/chxuan/vimplus/members" title="20">20
</a></span>
</div>
<h2 class='git-project-title'>
<span class="project-title"><i class="project-icon iconfont icon-project-public" title="这是一个公开仓库"></i> <a class="author" href="/chxuan" title="chxuan">chxuan</a> / <a class="repository" href="/chxuan/vimplus" sa_evt="repoClick" sa_location="其他" sa_repo_id="6670201" sa_url="" style="padding-bottom: 0px" target="" title="vimplus">vimplus</a></span><span class="project-badges"><a class="git-project-recommend-badge" href="/explore" title="已被推荐"><i class='iconfont icon-recommended'></i>
</a><style>
  .gitee-modal {
    width: 500px !important; }
</style>
</span>
<input id="recomm_at" name="recomm_at" type="hidden" value="2019-09-03 10:11" />
<input id="project_title" name="project_title" type="hidden" value="chxuan/vimplus" />
</h2>
</div>
</div>
</div>
<script>
  var title_import_url = "https://github.com/chxuan/vimplus.git";
  var title_post_url = "/chxuan/vimplus/update_import";
  var title_fork_url = "/chxuan/vimplus/sync_fork";
  var title_project_path = "vimplus";
  var title_p_name = "vimplus";
  var title_p_id= "6670201";
  var title_description = "An automatic configuration program for vim";
  var title_form_authenticity_token = "CIPIwkK2j0w8/+UumHQOooX8+353poxjkxpVb5sr5+M=";
  var watch_type = "unwatch";
  
  $('.js-project-watch').dropdown('set selected', watch_type);
  $('.checkbox.sync-wiki').checkbox();
</script>
<style>
  i.loading {
    -webkit-animation: icon-loading 1.2s linear infinite;
    animation: icon-loading 1.2s linear infinite;
  }
  .qrcode_cs {
    float: left;
  }
  .check-sync-wiki {
    float: left;
    height: 28px;
    line-height: 28px;
  }
  .sync-wiki-warn {
    color: #e28560;
  }
</style>

<div class='git-project-nav'>
<div class='ui container'>
<div class='ui secondary pointing menu'>
<a class="item active" href="/chxuan/vimplus"><i class='iconfont icon-code'></i>
代码
</a><a class="item " href="/chxuan/vimplus/issues"><i class='iconfont icon-task'></i>
Issues
<span class='ui mini circular label'>
1
</span>
</a><a class="item big-wide " href="/chxuan/vimplus/pulls"><i class='iconfont icon-pull-request'></i>
Pull Requests
<span class='ui mini circular label'>
0
</span>
</a><a class="item " href="/chxuan/vimplus/wikis"><i class='iconfont icon-wiki'></i>
Wiki
</a><a class="item  " href="/chxuan/vimplus/graph/master"><i class='iconfont icon-statistics'></i>
统计
</a><div class='item project-devops-item'>
<div class='ui pointing top right dropdown project-devops-dropdown'>
<div class='text'>
<i class='iconfont icon-devops'></i>
DevOps
</div>
<i class='dropdown icon'></i>
<div class='menu' style='display:none'>
<a class="item" href="/chxuan/vimplus/gitee_go"><img alt="Giteego" src="https://assets.gitee.com/assets/giteego-7ec42270742374f05850d0d3ad09e303.png" />
<div class='item-title'>
Gitee Go
</div>
</a><a class="item" href="https://gitee.com/help/articles/4285" target="_blank"><img alt="Baidu efficiency cloud" src="https://assets.gitee.com/assets/baidu_efficiency_cloud-81a98c2eb67fac83b1453ca3d2feb326.svg" />
<div class='item-title'>
百度效率云
</div>
</a><a class="item" href="https://gitee.com/help/articles/4318" target="_blank"><img alt="Cloudbase" src="https://assets.gitee.com/assets/cloudbase-1197b95ea3398aff1df7fe17c65a6d42.png?20200925" />
<div class='item-title'>
腾讯云托管
</div>
</a><a class="item" href="https://gitee.com/help/articles/4330" target="_blank"><img alt="Cloud serverless" src="https://assets.gitee.com/assets/cloud_serverless-686cf926ced5d6d2f1d6e606d270b81e.png" />
<div class='item-title'>
腾讯云 Serverless
</div>
</a><a class="item" href="https://gitee.com/help/articles/4193" target="_blank"><img alt="Jenkins for gitee" src="https://assets.gitee.com/assets/jenkins_for_gitee-554ec65c490d0f1f18de632c48acc4e7.png" />
<div class='item-title'>
Jenkins for Gitee
</div>
</a></div>
</div>
</div>
<div class='item'>
<div class='ui pointing top right dropdown git-project-service'>
<div class='text'>
<i class='iconfont icon-service'></i>
服务
</div>
<i class='dropdown icon'></i>
<div class='menu' style='display:none'>
<a class="item" href="/chxuan/vimplus/pages"><img alt="Logo en" src="/static/images/logo-en.svg" />
<div class='item-title'>
Gitee Pages
</div>
</a><a class="item" href="/chxuan/vimplus/quality_analyses?platform=sonar_qube"><img alt="Sonar mini" src="https://assets.gitee.com/assets/sonar_mini-5e1b54bb9f6c951d97fb778ef623afea.png" />
<div class='item-title'>
质量分析
</div>
</a><a class="item" href="/chxuan/vimplus/quality_analyses?platform=codesafe"><img alt="Codesafe mini" src="https://assets.gitee.com/assets/codesafe_mini-accbe1e555e9864c552620240d10e4de.png" width="100%" />
<div class='item-title'>
奇安信代码卫士
</div>
</a><a class="item" href="/chxuan/vimplus/gitee_scans"><img alt="Giteescan" src="https://assets.gitee.com/assets/giteescan-cd9ab4076bd751faf7e30888eb10f782.png" />
<div class='item-title'>Gitee Scan</div>
</a><button class='ui orange basic button quit-button' id='quiting-button'>
我知道了，不再自动展开
</button>
</div>
</div>
</div>
</div>
</div>
</div>
<script>
  $('.git-project-nav .ui.dropdown').dropdown({ action: 'nothing' });
</script>
<style>
  .git-project-nav i.checkmark.icon {
    color: green;
  }
  #quiting-button {
    display: none;
  }
  
  .git-project-nav .dropdown .menu.hidden:after {
    visibility: hidden !important;
  }
</style>
<script>
  isSignIn = false
  isClickGuide = false
  $('#git-versions.dropdown').dropdown();
  $.ajax({
    url:"/chxuan/vimplus/access/add_access_log",
    type:"GET"
  });
  $('#quiting-button').on('click',function() {
    $('.git-project-service').click();
    if (isSignIn) {
      $.post("/projects/set_service_guide")
    }
    $.cookie("Serve_State", true, { expires: 3650, path: '/'})
    $('#quiting-button').hide();
  });
  if (!(isClickGuide || $.cookie("Serve_State") == 'true')) {
    $('.git-project-service').click()
    $('#quiting-button').show()
  }
</script>

</div>
<div class='ui container'>
<div class='register-guide'>
<div class='register-container'>
<div class='regist'>
加入 Gitee
</div>
<div class='description'>
与超过 600 万 开发者一起发现、参与优秀开源项目，私有仓库也完全免费 ：）
</div>
<a class="ui orange button free-registion" href="/signup?from=project-guide" sa_evt="register_show" sa_referrer_action="免费加入" sa_referrer_type="其他" sa_referrer_url="">免费加入</a>
<div class='login'>
已有帐号？
<a href="/login?from=project-guide">立即登录</a>
</div>
</div>
</div>

<div class='git-project-content-wrapper'>
<div class='ui grid' id='project-wrapper'>
<div class='sixteen wide column'>
<div class='git-project-content' id='git-project-content'>
<div class='row'>
<div class='git-project-desc-wrapper'>
<script>
  if (false) {
    gon.project_new_blob_path = "/chxuan/vimplus/new/master/install.sh"
    bindShowModal({
      el: $('.no-license .project-license__create'),
      complete: function(data, modal) {
        if (!data.haveNoChoice && !data.data) {
          Flash.show('请选择一项开源许可证')
        } else {
          location.href = gon.project_new_blob_path + '?license=' + data.data
        }
      },
      skip: function () {
        location.href = gon.project_new_blob_path + '?license'
      }
    });
  }
  
  $('i.help.circle.icon').popup({
    popup: '.no-license .ui.popup',
    position: 'right center'
  });
  
  $('#remove-no-license-message').on('click', function() {
    $.cookie("skip_repo_no_license_message_6670201", 'hide', { expires: 365 });
    $('#user-no-license-message').hide();
    return;
  });
</script>
</div>

</div>
<div class='git-project-bread' id='git-project-bread'>
<div class='ui horizontal list mr-1'>
<div class='item git-project-branch-item'>
<input id="path" name="path" type="hidden" value="install.sh" />
<div class='ui top left pointing dropdown gradient button dropdown-has-tabs' id='git-project-branch'>
<input id="ref" name="ref" type="hidden" value="master" />
<div class='default text'>
master
</div>
<i class='dropdown icon'></i>
<div class='menu'>
<div class='ui left icon search input'>
<i class='iconfont icon-search'></i>
<input class='search-branch' placeholder='搜索分支' type='text'>
</div>
<div class='tab-menu'>
<div class='tab-menu-action' data-tab='branches'>
<a class="ui link button" href="/chxuan/vimplus/branches">管理</a>
</div>
<div class='tab-menu-action' data-tab='tags'>
<a class="ui link button" href="/chxuan/vimplus/tags">管理</a>
</div>
<div class='tab-menu-item' data-placeholder='搜索分支' data-tab='branches'>
分支 (1)
</div>
</div>
<div class='tab scrolling menu' data-tab='branches'>
<div class="item" data-value="master"><span>master</span></div>
</div>
</div>
</div>
<style>
  .iconfont.icon-shieldlock {
    color: #8c92a4;
  }
</style>

<script>
  $(function () {
    Gitee.initTabsInDropdown($('#git-project-branch').dropdown({
      fullTextSearch: true,
      selectOnKeydown: true,
      action: function (text,value,el) {
        var oItemOrInitObject = el[0] || el
        var isNotSelect = oItemOrInitObject.dataset.tab && oItemOrInitObject.dataset.tab === 'branches'
        if(isNotSelect){
          console.warn("You didn't choose a branch")
          return
        } 
        var path = $('#path').val();
        var href = ['/chxuan/vimplus/tree', encodeURIComponent(value), path].join('/');
        window.location.href = href;
        return true
      },
      onNoResults: function (searchTerm) {
        //未找到结果
        return true
      },
    }));
    $('.protected-branch-popup').popup()
  })
</script>

</div>
</div>
<div class='git-project-right-actions pull-right'>
<div class='ui orange button' id='btn-dl-or-clone'>
克隆/下载
<i class='dropdown icon'></i>
</div>
<div class='git-project-download-panel for-project ui bottom right popup'>
<div class='ui small secondary pointing menu'>
<a class='item active' data-text='' data-type='http' data-url='https://gitee.com/chxuan/vimplus.git'>HTTPS</a>
<a class='item' data-text='' data-type='ssh' data-url='git@gitee.com:chxuan/vimplus.git'>SSH</a>
<a class='item' data-text="该仓库未启用SVN访问，请仓库管理员前往【&lt;a target='_blank' href=/chxuan/vimplus/settings&gt;仓库设置&lt;/a&gt;】开启。" data-type='svn' data-url=''>SVN</a>
<a class='item' data-text="该仓库未启用SVN访问，请仓库管理员前往【&lt;a target='_blank' href=/chxuan/vimplus/settings&gt;仓库设置&lt;/a&gt;】开启。" data-type='svn_ssh' data-url=''>SVN+SSH</a>
</div>
<div class='ui fluid right labeled small input download-url-panel'>
<input id="project_clone_url" name="project_clone_url" onclick="focus();select()" readonly="readonly" type="text" value="https://gitee.com/chxuan/vimplus.git" />
<div class='ui basic label'>
<div class='ui small basic orange button' data-clipboard-target='#project_clone_url' id='btn-copy-clone-url'>
复制
</div>
</div>
</div>
<div class='ui fluid right labeled warning-text forbid-warning-text'>

</div>
<hr>
<a class="ui fluid download link button" href="javascript:void(0);" sa_evt="loginInform_show" sa_referrer_action="克隆/下载" sa_referrer_type="其他" sa_referrer_url=""><i class='icon download'></i>
下载ZIP
</a><div class='download_repository_zip form modal tiny ui' id='unlanding-complaint-modal'>
<i class='iconfont icon-close close'></i>
<div class='header'>
登录提示
</div>
<div class='container actions'>
<div class='content'>
该操作需登录 Gitee 帐号，请先登录后再操作。
</div>
<div class='ui orange icon large button ok'>
立即登录
</div>
<div class='ui button blank cancel'>
没有帐号，去注册
</div>
</div>
</div>
<script>
  var $elm = $('.download');
  
  $elm.on('click', function() {
    var modals = $("#unlanding-complaint-modal.download_repository_zip");
    if (modals.length > 1) {
      modals.eq(0).modal('show');
    } else {
      modals.modal('show');
    }
  })
  $("#unlanding-complaint-modal.download_repository_zip").modal({
    onDeny: function() {
      window.location.href = "/signup?from=download_repository_zip";
    },
    onApprove: function() {
      window.location.href = "/login?from=download_repository_zip";
    }
  })
</script>

</div>
<script>
  (function() {
    var $btnClone, $btnCopy, $input, $panel;
  
    $btnClone = $('#btn-dl-or-clone');
  
    $panel = $('.git-project-download-panel');
  
    $input = $('#project_clone_url');
  
    $btnCopy = $('#btn-copy-clone-url');
  
    $btnClone.popup({
      on: 'click',
      hoverable: true,
      position: 'bottom center'
    });
  
    $panel.find('.menu > .item').on('click', function(e) {
      var $item, dataUrl;
      $item = $(this).addClass('active');
      $item.siblings().removeClass('active');
      dataUrl = $item.attr('data-url');
      if (dataUrl) {
        $panel.find('.download-url-panel').show();
        $input.val(dataUrl);
        $panel.find('.forbid-warning-text').html('');
      } else {
        $panel.find('.download-url-panel').hide();
        $panel.find('.forbid-warning-text').html($item.attr('data-text') || '');
      }
      return $.cookie('remote_way', $item.attr('data-type'), {
        expires: 365,
        path: '/'
      });
    }).filter('[data-type="' + ($.cookie('remote_way') || 'http') + '"]').trigger('click');
  
    new Clipboard($btnCopy[0]).on('success', function() {
      $btnCopy.popup({
        content: '已复制',
        position: 'right center',
        onHidden: function() {
          return $btnCopy.popup('destroy');
        }
      });
      return $btnCopy.popup('show');
    });
  
  }).call(this);
</script>

</div>
<div class='d-inline pull-right' id='git-project-root-actions'>
<script>
  $('.disabled-upload-readonly').popup({
    content: "只读目录不允许上传文件",
    className: {
      popup: 'ui popup',
    },
    position: 'bottom center',
  })
  $('.disabled-create-folder').popup({
    content: "只读目录不允许创建目录",
    className: {
      popup: 'ui popup',
    },
    position: 'bottom center',
  })
  $('.disabled-create-file').popup({
    content: "只读目录不允许创建文件",
    className: {
      popup: 'ui popup',
    },
    position: 'bottom center',
  })
  $('.disabled-upload-readonly').click(function() {
    return false
  })
  $('.disabled-create-folder').click(function() {
    return false
  })
  $('.disabled-create-file').click(function() {
    return false
  })
</script>
<style>
  .disabled-upload-readonly, .disabled-create-file, .disabled-create-folder {
    background-color: #dcddde !important;
    color: rgba(0, 0, 0, 0.4) !important;
    opacity: 0.3 !important;
    background-image: none !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important; }
</style>


</div>
<div class='breadcrumb_path path-breadcrumb-contrainer' id='git-project-breadcrumb'>
<div class='ui breadcrumb path project-path-breadcrumb' id='path-breadcrumb'>
<a class="section repo-name" data-direction="back" href="/chxuan/vimplus/tree/master" style="font-weight: bold">vimplus
</a><div class='divider'>
/
</div>
<strong>
install.sh
</strong>
<i class='iconfont icon-clone' data-clipboard-text='install.sh' id='btn-copy-file-path'></i>
</div>
<style>
  #btn-copy-file-path {
    vertical-align: middle;
    cursor: pointer;
  }
</style>
<script>
  $btnCopy = $('#btn-copy-file-path')
  $btnCopy.popup({
    content: '复制路径'
  })
  
  if ($btnCopy[0]) {
    new Clipboard($btnCopy[0]).on('success', function() {
      $btnCopy.popup('destroy').popup({
        content: '已复制',
        on: 'manual'
      }).popup('show');
      setTimeout(function () {
        $btnCopy.popup('destroy').popup({
          content: '复制路径'
        });
      }, 2000)
    });
  }
</script>


</div>
<div class='ui horizontal list repo-action-list branches-tags' style='display: none;'>
<div class='item'>
<a class="ui blank button" href="/chxuan/vimplus/branches"><i class='iconfont icon-branches'></i>
分支 1
</a></div>
<div class='item mr-3'>
<a class="ui blank button" href="/chxuan/vimplus/tags"><i class='iconfont icon-tag'></i>
标签 0
</a></div>
</div>
</div>
<script>
  if(window.gon.locale == 'en')
    $('.branches-tags').css('margin-top', '12px')
</script>

<style>
  .ui.dropdown .menu > .header {
    text-transform: none; }
</style>
<script>
  $(function () {
    var $tip = $('#apk-download-tip');
    if (!$tip.length) {
      return;
    }
    $tip.find('.btn-close').on('click', function () {
      $tip.hide();
    });
  });
  (function(){
    function pathAutoRender() {
      var $parent = $('#git-project-bread'),
          $child = $('#git-project-bread').children('.ui.horizontal.list'),
          mainWidth = 0;
      $child.each(function (i,item) {
        mainWidth += $(item).width()
      });
      $('.breadcrumb.path.fork-path').remove();
      if (mainWidth > 995) {
        $('#path-breadcrumb').hide();
        $parent.append('<div class="ui breadcrumb path fork-path">' + $('#path-breadcrumb').html() + '<div/>')
      } else {
        $('#path-breadcrumb').show();
      }
    }
    window.pathAutoRender = pathAutoRender;
    pathAutoRender();
  })();
</script>

<div class='row column tree-holder' id='tree-holder'>
<div class='tree-content-holder' id='tree-content-holder'>
<div class='file_holder'>
<div class='file_title'>
<div class='blob-header-title'>
<div class='blob-description'>
<i class="iconfont icon-file"></i>
<span class='file_name' title='install.sh'>
install.sh
</span>
<small>20.94 KB</small>
</div>
<div class='options'><div class='ui mini buttons basic'>

<textarea id="blob_raw" name="blob_raw" style="display:none;">
#!/usr/bin/env bash&#x000A;&#x000A;# 获取linux发行版名称&#x000A;function get_linux_distro()&#x000A;{&#x000A;    if grep -Eq &quot;Ubuntu&quot; /etc/*-release; then&#x000A;        echo &quot;Ubuntu&quot;&#x000A;    elif grep -Eq &quot;Deepin&quot; /etc/*-release; then&#x000A;        echo &quot;Deepin&quot;&#x000A;    elif grep -Eq &quot;Raspbian&quot; /etc/*-release; then&#x000A;        echo &quot;Raspbian&quot;&#x000A;    elif grep -Eq &quot;uos&quot; /etc/*-release; then&#x000A;        echo &quot;UOS&quot;&#x000A;    elif grep -Eq &quot;LinuxMint&quot; /etc/*-release; then&#x000A;        echo &quot;LinuxMint&quot;&#x000A;    elif grep -Eq &quot;elementary&quot; /etc/*-release; then&#x000A;        echo &quot;elementaryOS&quot;&#x000A;    elif grep -Eq &quot;Debian&quot; /etc/*-release; then&#x000A;        echo &quot;Debian&quot;&#x000A;    elif grep -Eq &quot;Kali&quot; /etc/*-release; then&#x000A;        echo &quot;Kali&quot;&#x000A;    elif grep -Eq &quot;Parrot&quot; /etc/*-release; then&#x000A;        echo &quot;Parrot&quot;&#x000A;    elif grep -Eq &quot;CentOS&quot; /etc/*-release; then&#x000A;        echo &quot;CentOS&quot;&#x000A;    elif grep -Eq &quot;fedora&quot; /etc/*-release; then&#x000A;        echo &quot;fedora&quot;&#x000A;    elif grep -Eq &quot;openSUSE&quot; /etc/*-release; then&#x000A;        echo &quot;openSUSE&quot;&#x000A;    elif grep -Eq &quot;Arch Linux&quot; /etc/*-release; then&#x000A;        echo &quot;ArchLinux&quot;&#x000A;    elif grep -Eq &quot;ManjaroLinux&quot; /etc/*-release; then&#x000A;        echo &quot;ManjaroLinux&quot;&#x000A;    elif grep -Eq &quot;Gentoo&quot; /etc/*-release; then&#x000A;        echo &quot;Gentoo&quot;&#x000A;    elif grep -Eq &quot;alpine&quot; /etc/*-release; then&#x000A;        echo &quot;Alpine&quot;&#x000A;    else&#x000A;        echo &quot;Unknow&quot;&#x000A;    fi&#x000A;}&#x000A;&#x000A;# 获取日期&#x000A;function get_datetime()&#x000A;{&#x000A;    time=$(date &quot;+%Y%m%d%H%M%S&quot;)&#x000A;    echo $time&#x000A;}&#x000A;&#x000A;# 判断文件是否存在&#x000A;function is_exist_file()&#x000A;{&#x000A;    filename=$1&#x000A;    if [ -f $filename ]; then&#x000A;        echo 1&#x000A;    else&#x000A;        echo 0&#x000A;    fi&#x000A;}&#x000A;&#x000A;# 判断目录是否存在&#x000A;function is_exist_dir()&#x000A;{&#x000A;    dir=$1&#x000A;    if [ -d $dir ]; then&#x000A;        echo 1&#x000A;    else&#x000A;        echo 0&#x000A;    fi&#x000A;}&#x000A;&#x000A;#备份原有的.vimrc文件&#x000A;function backup_vimrc_file()&#x000A;{&#x000A;    old_vimrc=$HOME&quot;/.vimrc&quot;&#x000A;    is_exist=$(is_exist_file $old_vimrc)&#x000A;    if [ $is_exist == 1 ]; then&#x000A;        time=$(get_datetime)&#x000A;        backup_vimrc=$old_vimrc&quot;_bak_&quot;$time&#x000A;        read -p &quot;Find &quot;$old_vimrc&quot; already exists,backup &quot;$old_vimrc&quot; to &quot;$backup_vimrc&quot;? [Y/N] &quot; ch&#x000A;        if [[ $ch == &quot;Y&quot; ]] || [[ $ch == &quot;y&quot; ]]; then&#x000A;            cp $old_vimrc $backup_vimrc&#x000A;        fi&#x000A;    fi&#x000A;}&#x000A;&#x000A;#备份原有的.vimrc.custom.plugins文件&#x000A;function backup_vimrc_custom_plugins_file()&#x000A;{&#x000A;    old_vimrc_plugins=$HOME&quot;/.vimrc.custom.plugins&quot;&#x000A;    is_exist=$(is_exist_file $old_vimrc_plugins)&#x000A;    if [ $is_exist == 1 ]; then&#x000A;        time=$(get_datetime)&#x000A;        backup_vimrc_plugins=$old_vimrc_plugins&quot;_bak_&quot;$time&#x000A;        read -p &quot;Find &quot;$old_vimrc_plugins&quot; already exists,backup &quot;$old_vimrc_plugins&quot; to &quot;$backup_vimrc_plugins&quot;? [Y/N] &quot; ch&#x000A;        if [[ $ch == &quot;Y&quot; ]] || [[ $ch == &quot;y&quot; ]]; then&#x000A;            cp $old_vimrc_plugins $backup_vimrc_plugins&#x000A;        fi&#x000A;    fi&#x000A;}&#x000A;&#x000A;#备份原有的.vimrc.custom.config文件&#x000A;function backup_vimrc_custom_config_file()&#x000A;{&#x000A;    old_vimrc_config=$HOME&quot;/.vimrc.custom.config&quot;&#x000A;    is_exist=$(is_exist_file $old_vimrc_config)&#x000A;    if [ $is_exist == 1 ]; then&#x000A;        time=$(get_datetime)&#x000A;        backup_vimrc_config=$old_vimrc_config&quot;_bak_&quot;$time&#x000A;        read -p &quot;Find &quot;$old_vimrc_config&quot; already exists,backup &quot;$old_vimrc_config&quot; to &quot;$backup_vimrc_config&quot;? [Y/N] &quot; ch&#x000A;        if [[ $ch == &quot;Y&quot; ]] || [[ $ch == &quot;y&quot; ]]; then&#x000A;            cp $old_vimrc_config $backup_vimrc_config&#x000A;        fi&#x000A;    fi&#x000A;}&#x000A;&#x000A;#备份原有的.vim目录&#x000A;function backup_vim_dir()&#x000A;{&#x000A;    old_vim=$HOME&quot;/.vim&quot;&#x000A;    is_exist=$(is_exist_dir $old_vim)&#x000A;    if [ $is_exist == 1 ]; then&#x000A;        time=$(get_datetime)&#x000A;        backup_vim=$old_vim&quot;_bak_&quot;$time&#x000A;        read -p &quot;Find &quot;$old_vim&quot; already exists,backup &quot;$old_vim&quot; to &quot;$backup_vim&quot;? [Y/N] &quot; ch&#x000A;        if [[ $ch == &quot;Y&quot; ]] || [[ $ch == &quot;y&quot; ]]; then&#x000A;            cp -R $old_vim $backup_vim&#x000A;        fi&#x000A;    fi&#x000A;}&#x000A;&#x000A;# 备份原有的.vimrc和.vim&#x000A;function backup_vimrc_and_vim()&#x000A;{&#x000A;    backup_vimrc_file&#x000A;    backup_vimrc_custom_plugins_file&#x000A;    backup_vimrc_custom_config_file&#x000A;    backup_vim_dir&#x000A;}&#x000A;&#x000A;# 获取ubuntu版本&#x000A;function get_ubuntu_version()&#x000A;{&#x000A;    line=$(cat /etc/lsb-release | grep &quot;DISTRIB_RELEASE&quot;)&#x000A;    arr=(${line//=/ })&#x000A;    version=(${arr[1]//./ })&#x000A;&#x000A;    echo ${version[0]}&#x000A;}&#x000A;&#x000A;# 获取alpine版本&#x000A;function get_alpine_version()&#x000A;{&#x000A;    version=$(cat /etc/os-release | grep &#39;VERSION_ID&#39; | awk -F &#39;=&#39; &#39;{print $2}&#39;)&#x000A;    &#x000A;    echo $version&#x000A;}&#x000A;&#x000A;# 获取centos版本&#x000A;function get_centos_version()&#x000A;{&#x000A;    version=`cat /etc/redhat-release | awk &#39;{print $4}&#39; | awk -F . &#39;{printf &quot;%s&quot;,$1}&#39;`&#x000A;    echo $version&#x000A;}&#x000A;&#x000A;# 判断是否是macos10.14版本&#x000A;function is_macos1014()&#x000A;{&#x000A;    product_version=$(sw_vers | grep ProductVersion)&#x000A;    if [[ $product_version =~ &quot;10.14&quot; ]]; then&#x000A;        echo 1&#x000A;    else&#x000A;        echo 0&#x000A;    fi&#x000A;}&#x000A;&#x000A;# 在alpine上直装vim8.2&#x000A;# function compile_vim_on_alpine()&#x000A;# {&#x000A;#     apk --upgrade add vim&#x000A;#     cd -&#x000A;# }&#x000A;&#x000A;# 在ubuntu上源代码安装vim&#x000A;function compile_vim_on_ubuntu()&#x000A;{&#x000A;    sudo apt-get install -y libncurses5-dev libncurses5 libgnome2-dev libgnomeui-dev \&#x000A;        libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \&#x000A;        libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev lua5.1 lua5.1-dev&#x000A;&#x000A;    rm -rf ~/vim82&#x000A;    git clone https://gitee.com/chxuan/vim82.git ~/vim82&#x000A;    cd ~/vim82&#x000A;    ./configure --with-features=huge \&#x000A;        --enable-multibyte \&#x000A;        --enable-rubyinterp \&#x000A;        --enable-pythoninterp \&#x000A;        --enable-perlinterp \&#x000A;        --enable-luainterp \&#x000A;        --enable-gui=gtk2 \&#x000A;        --enable-cscope \&#x000A;        --prefix=/usr&#x000A;    make&#x000A;    sudo make install&#x000A;    cd -&#x000A;}&#x000A;&#x000A;# 在debian上源代码安装vim&#x000A;function compile_vim_on_debian()&#x000A;{&#x000A;    sudo apt-get install -y libncurses5-dev libncurses5 libgtk2.0-dev libatk1.0-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev lua5.1 lua5.1-dev&#x000A;&#x000A;    rm -rf ~/vim82&#x000A;    git clone https://gitee.com/chxuan/vim82.git ~/vim82&#x000A;    cd ~/vim82&#x000A;    ./configure --with-features=huge \&#x000A;        --enable-multibyte \&#x000A;        --enable-rubyinterp \&#x000A;        --enable-pythoninterp \&#x000A;        --enable-perlinterp \&#x000A;        --enable-luainterp \&#x000A;        --enable-gui=gtk2 \&#x000A;        --enable-cscope \&#x000A;        --prefix=/usr&#x000A;    make&#x000A;    sudo make install&#x000A;    cd -&#x000A;}&#x000A;&#x000A;# 在parrot上源代码安装vim&#x000A;function compile_vim_on_parrot()&#x000A;{&#x000A;    sudo apt-get install -y libncurses5-dev libncurses5 libgtk2.0-dev libatk1.0-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev lua5.1 vim&#x000A;&#x000A;    rm -rf ~/vim82&#x000A;    git clone https://gitee.com/chxuan/vim82.git ~/vim82&#x000A;    cd ~/vim82&#x000A;    ./configure --with-features=huge \&#x000A;        --enable-multibyte \&#x000A;        --enable-rubyinterp \&#x000A;        --enable-pythoninterp \&#x000A;        --enable-perlinterp \&#x000A;        --enable-luainterp \&#x000A;        --enable-gui=gtk2 \&#x000A;        --enable-cscope \&#x000A;        --prefix=/usr&#x000A;    make&#x000A;    sudo make install&#x000A;    cd -&#x000A;}&#x000A;&#x000A;# 在centos上源代码安装vim&#x000A;function compile_vim_on_centos()&#x000A;{&#x000A;    sudo yum install -y ruby ruby-devel lua lua-devel luajit \&#x000A;        luajit-devel ctags git python python-devel \&#x000A;        python34 python34-devel tcl-devel \&#x000A;        perl perl-devel perl-ExtUtils-ParseXS \&#x000A;        perl-ExtUtils-XSpp perl-ExtUtils-CBuilder \&#x000A;        perl-ExtUtils-Embed libX11-devel ncurses-devel&#x000A;    &#x000A;    rm -rf ~/vim82&#x000A;    git clone https://gitee.com/chxuan/vim82.git ~/vim82&#x000A;    cd ~/vim82&#x000A;    ./configure --with-features=huge \&#x000A;        --enable-multibyte \&#x000A;        --with-tlib=tinfo \&#x000A;        --enable-rubyinterp=yes \&#x000A;        --enable-pythoninterp=yes \&#x000A;        --enable-perlinterp=yes \&#x000A;        --enable-luainterp=yes \&#x000A;        --enable-gui=gtk2 \&#x000A;        --enable-cscope \&#x000A;        --prefix=/usr&#x000A;    make&#x000A;    sudo make install&#x000A;    cd -&#x000A;}&#x000A;&#x000A;# 安装mac平台必备软件&#x000A;function install_prepare_software_on_mac()&#x000A;{&#x000A;    xcode-select --install&#x000A;&#x000A;    brew install vim gcc cmake ctags-exuberant ack&#x000A;&#x000A;    macos1014=$(is_macos1014)&#x000A;    if [ $macos1014 == 1 ]; then&#x000A;        open /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg&#x000A;    fi&#x000A;}&#x000A;&#x000A;# 安装FreeBSD必备软件&#x000A;function install_prepare_software_on_freebsd()&#x000A;{&#x000A;    sudo pkg install -y vim ctags automake gcc cmake p5-ack python git fontconfig&#x000A;}&#x000A;&#x000A;# 安装android平台必备软件&#x000A;function install_prepare_software_on_android()&#x000A;{&#x000A;    pkg update&#x000A;    pkg install -y git vim-python cmake python2 python ctags ack-grep ncurses-utils&#x000A;}&#x000A;&#x000A;# 安装alpine必备软件 需要更换源&#x000A;function install_prepare_software_on_alpine()&#x000A;{&#x000A;    sed -i &quot;s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g&quot; /etc/apk/repositories&#x000A;&#x000A;    version=$(get_alpine_version)&#x000A;&#x000A;    apk update&#x000A;&#x000A;    apk add python3 python3-dev ruby ruby-dev lua lua-dev luajit luajit-dev ctags tcl tcl-dev perl perl-dev libx11 libx11-dev ncurses ncurses-dev g++ gcc make automake cmake fontconfig fontconfig-dev nerd-fonts gcompat clang clang-dev vim&#x000A;}&#x000A;&#x000A;# 安装ubuntu必备软件&#x000A;function install_prepare_software_on_ubuntu()&#x000A;{&#x000A;    sudo apt-get update&#x000A;&#x000A;    version=$(get_ubuntu_version)&#x000A;    if [ $version -eq 14 ];then&#x000A;        sudo apt-get install -y cmake3&#x000A;    else&#x000A;        sudo apt-get install -y cmake&#x000A;    fi&#x000A;&#x000A;    sudo apt-get install -y build-essential python python-dev python3-dev fontconfig libfile-next-perl ack-grep git&#x000A;    sudo apt-get install -y universal-ctags || sudo apt-get install -y exuberant-ctags&#x000A;    &#x000A;    if [ $version -ge 18 ];then&#x000A;        sudo apt-get install -y vim&#x000A;    else&#x000A;        compile_vim_on_ubuntu&#x000A;    fi&#x000A;}&#x000A;&#x000A;# 安装ubuntu系必备软件&#x000A;function install_prepare_software_on_ubuntu_like()&#x000A;{&#x000A;    sudo apt-get update&#x000A;    sudo apt-get install -y cmake build-essential python python-dev python3-dev fontconfig libfile-next-perl ack-grep git&#x000A;    sudo apt-get install -y universal-ctags || sudo apt-get install -y exuberant-ctags&#x000A;    compile_vim_on_ubuntu&#x000A;}&#x000A;&#x000A;# 安装debian必备软件&#x000A;function install_prepare_software_on_debian()&#x000A;{&#x000A;    sudo apt-get update&#x000A;    sudo apt-get install -y cmake build-essential python python-dev python3-dev fontconfig libfile-next-perl ack git&#x000A;    sudo apt-get install -y universal-ctags || sudo apt-get install -y exuberant-ctags&#x000A;    compile_vim_on_debian&#x000A;}&#x000A;&#x000A;# 安装parrot必备软件&#x000A;function install_prepare_software_on_parrot()&#x000A;{&#x000A;    sudo apt-get update&#x000A;    sudo apt-get install -y cmake exuberant-ctags build-essential python python-dev python3-dev fontconfig libfile-next-perl ack git&#x000A;    compile_vim_on_parrot&#x000A;}&#x000A;&#x000A;# 安装centos必备软件&#x000A;function install_prepare_software_on_centos()&#x000A;{&#x000A;    version=$(get_centos_version)&#x000A;    if [ $version -ge 8 ];then&#x000A;        sudo dnf install -y epel-release&#x000A;        sudo dnf install -y vim ctags automake gcc gcc-c++ kernel-devel make cmake python2 python2-devel python3-devel fontconfig ack git&#x000A;    else&#x000A;        sudo yum install -y ctags automake gcc gcc-c++ kernel-devel cmake python-devel python3-devel fontconfig ack git&#x000A;        compile_vim_on_centos&#x000A;    fi&#x000A;}&#x000A;&#x000A;# 安装fedora必备软件&#x000A;function install_prepare_software_on_fedora()&#x000A;{&#x000A;    sudo dnf install -y vim ctags automake gcc gcc-c++ kernel-devel cmake python-devel python3-devel fontconfig ack git&#x000A;}&#x000A;&#x000A;# 安装archlinux必备软件&#x000A;function install_prepare_software_on_archlinux()&#x000A;{&#x000A;    sudo pacman -S --noconfirm vim ctags automake gcc cmake python3 python2 ack git fontconfig&#x000A;    sudo ln -s /usr/lib/libtinfo.so.6 /usr/lib/libtinfo.so.5&#x000A;}&#x000A;&#x000A;# 安装gentoo必备软件&#x000A;function install_prepare_software_on_gentoo()&#x000A;{&#x000A;    install_software_on_gentoo app-editors/vim dev-util/ctags sys-devel/automake sys-devel/gcc dev-util/cmake sys-apps/ack dev-vcs/git media-libs/fontconfig&#x000A;    su - -c &quot;ln -s /usr/lib/libtinfo.so.6 /usr/lib/libtinfo.so.5&quot; -s /bin/bash&#x000A;}&#x000A;&#x000A;function install_software_on_gentoo()&#x000A;{&#x000A;    pkgs=$*&#x000A;    pkg_need_install=&quot;&quot;&#x000A;    for pkg in ${pkgs}&#x000A;    do&#x000A;        if qlist -I | grep -Eq $pkg; then&#x000A;            echo &quot;$pkg is already installed.&quot;&#x000A;        else&#x000A;            pkg_need_install=&quot;$pkg_need_install $pkg&quot;&#x000A;        fi&#x000A;    done&#x000A;&#x000A;    if sudo -l | grep -Eq &quot;emerge&quot;; then&#x000A;        sudo emerge -v $pkg_need_install &#x000A;    else&#x000A;        echo &quot;Need Root password:&quot;&#x000A;        su - -c &quot;emerge -v $pkg_need_install&quot; -s /bin/bash&#x000A;    fi&#x000A;}&#x000A;&#x000A;# 安装opensuse必备软件&#x000A;function install_prepare_software_on_opensuse()&#x000A;{&#x000A;    sudo zypper install -y vim ctags gcc gcc-c++ cmake python-devel python3-devel ack fontconfig git ncurses5-devel&#x000A;}&#x000A;&#x000A;# 拷贝文件&#x000A;function copy_files()&#x000A;{&#x000A;    rm -rf ~/.vimrc&#x000A;    ln -s ${PWD}/.vimrc ~&#x000A;&#x000A;    rm -rf ~/.vimrc.custom.plugins&#x000A;    cp ${PWD}/.vimrc.custom.plugins ~&#x000A;&#x000A;    rm -rf ~/.vimrc.custom.config&#x000A;    cp ${PWD}/.vimrc.custom.config ~&#x000A;&#x000A;    rm -rf ~/.ycm_extra_conf.py&#x000A;    ln -s ${PWD}/.ycm_extra_conf.py ~&#x000A;&#x000A;    mkdir ~/.vim&#x000A;    rm -rf ~/.vim/colors&#x000A;    ln -s ${PWD}/colors ~/.vim&#x000A;&#x000A;    rm -rf ~/.vim/ftplugin&#x000A;    ln -s ${PWD}/ftplugin ~/.vim&#x000A;&#x000A;    rm -rf ~/.vim/autoload&#x000A;    ln -s ${PWD}/autoload ~/.vim&#x000A;}&#x000A;&#x000A;# 安装mac平台字体&#x000A;function install_fonts_on_mac()&#x000A;{&#x000A;    rm -rf ~/Library/Fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf&#x000A;    cp ./fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/Library/Fonts&#x000A;}&#x000A;&#x000A;# 安装android平台字体&#x000A;function install_fonts_on_android()&#x000A;{&#x000A;    rm -rf ~/.termux/font.ttf&#x000A;    mkdir ~/.termux&#x000A;    cp ./fonts/DejaVu.ttf ~/.termux/font.ttf&#x000A;&#x000A;    # 刷新style&#x000A;    REL=&quot;am broadcast --user 0 -a com.termux.app.reload_style com.termux&quot;&#x000A;    $REL &gt; /dev/null&#x000A;}&#x000A;&#x000A;# 安装linux平台字体&#x000A;function install_fonts_on_linux()&#x000A;{&#x000A;    mkdir -p ~/.local/share/fonts&#x000A;    rm -rf ~/.local/share/fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf&#x000A;    cp ./fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/.local/share/fonts&#x000A;&#x000A;    fc-cache -vf ~/.local/share/fonts&#x000A;}&#x000A;&#x000A;# 安装vim插件&#x000A;function install_vim_plugin()&#x000A;{&#x000A;    vim -c &quot;PlugInstall&quot; -c &quot;q&quot; -c &quot;q&quot;&#x000A;}&#x000A;&#x000A;# 安装ycm插件&#x000A;function install_ycm()&#x000A;{&#x000A;    git clone https://gitee.com/chxuan/YouCompleteMe-clang.git ~/.vim/plugged/YouCompleteMe&#x000A;&#x000A;    cd ~/.vim/plugged/YouCompleteMe&#x000A;    distro=`get_linux_distro`&#x000A;    read -p &quot;Please choose to compile ycm with python2 or python3, if there is a problem with the current selection, please choose another one. [2/3] &quot; version&#x000A;    if [[ $version == &quot;2&quot; ]]; then&#x000A;        echo &quot;Compile ycm with python2.&quot;&#x000A;        # alpine 忽略 --clang-completer 并将 let g:ycm_clangd_binary_path 注入 .vimrc&#x000A;        {&#x000A;            if [ ${distro} == &quot;Alpine&quot; ]; then&#x000A;                echo &quot;##########################################&quot;&#x000A;                echo &quot;Apline Build, need without GLIBC.&quot;&#x000A;                echo &quot;##########################################&quot;&#x000A;                sed -i &quot;273ilet g:ycm_clangd_binary_path=&#39;/usr/bin/clang&#39;&quot; ~/.vimrc&#x000A;                python2.7 ./install.py&#x000A;                return&#x000A;            fi&#x000A;        } || {&#x000A;            python2.7 ./install.py --clang-completer&#x000A;        } || {&#x000A;            echo &quot;##########################################&quot;&#x000A;            echo &quot;Build error, trying rebuild without Clang.&quot;&#x000A;            echo &quot;##########################################&quot;&#x000A;            python2.7 ./install.py&#x000A;        }&#x000A;    else&#x000A;        echo &quot;Compile ycm with python3.&quot;&#x000A;        {&#x000A;            # alpine 跳过该步骤&#x000A;            if [ ${distro} == &quot;Alpine&quot; ]; then&#x000A;                echo &quot;##########################################&quot;&#x000A;                echo &quot;Apline Build, need without GLIBC.&quot;&#x000A;                echo &quot;##########################################&quot;&#x000A;                sed -i &quot;273ilet g:ycm_clangd_binary_path=&#39;/usr/bin/clang&#39;&quot; ~/.vimrc&#x000A;                python3 ./install.py&#x000A;                return&#x000A;            fi&#x000A;        } || {&#x000A;            python3 ./install.py --clang-completer&#x000A;        } || {&#x000A;            echo &quot;##########################################&quot;&#x000A;            echo &quot;Build error, trying rebuild without Clang.&quot;&#x000A;            echo &quot;##########################################&quot;&#x000A;            python3 ./install.py&#x000A;        }&#x000A;    fi&#x000A;}&#x000A;&#x000A;# 在android上安装ycm插件&#x000A;function install_ycm_on_android()&#x000A;{&#x000A;    git clone https://gitee.com/chxuan/YouCompleteMe-clang.git ~/.vim/plugged/YouCompleteMe&#x000A;&#x000A;    cd ~/.vim/plugged/YouCompleteMe&#x000A;&#x000A;    read -p &quot;Please choose to compile ycm with python2 or python3, if there is a problem with the current selection, please choose another one. [2/3] &quot; version&#x000A;    if [[ $version == &quot;2&quot; ]]; then&#x000A;        echo &quot;Compile ycm with python2.&quot;&#x000A;        python2.7 ./install.py --clang-completer --system-libclang&#x000A;    else&#x000A;        echo &quot;Compile ycm with python3.&quot;&#x000A;        python3 ./install.py --clang-completer --system-libclang&#x000A;    fi&#x000A;}&#x000A;&#x000A;# 打印logo&#x000A;function print_logo()&#x000A;{&#x000A;    color=&quot;$(tput setaf 6)&quot;&#x000A;    normal=&quot;$(tput sgr0)&quot;&#x000A;    printf &quot;${color}&quot;&#x000A;    echo &#39;        __                __           &#39;&#x000A;    echo &#39;__   __/_/___ ___  ____  / /_  _______ &#39;&#x000A;    echo &#39;\ \ / / / __ `__ \/ __ \/ / / / / ___/ &#39;&#x000A;    echo &#39; \ V / / / / / / / /_/ / / /_/ (__  )  &#39;&#x000A;    echo &#39;  \_/_/_/ /_/ /_/ ,___/_/\____/____/   &#39;&#x000A;    echo &#39;               /_/                     ...is now installed!&#39;&#x000A;    echo &#39;&#39;&#x000A;    echo &#39;&#39;&#x000A;    echo &#39;Just enjoy it!&#39;&#x000A;    echo &#39;p.s. Follow me at https://github.com/chxuan.&#39;&#x000A;    echo &#39;&#39;&#x000A;    printf &quot;${normal}&quot;&#x000A;}&#x000A;&#x000A;# 在mac平台安装vimplus&#x000A;function install_vimplus_on_mac()&#x000A;{&#x000A;    backup_vimrc_and_vim&#x000A;    install_prepare_software_on_mac&#x000A;    copy_files&#x000A;    install_fonts_on_mac&#x000A;    install_ycm&#x000A;    install_vim_plugin&#x000A;    print_logo&#x000A;}&#x000A;&#x000A;# 在FreeBSD上安装vimplus&#x000A;function install_vimplus_on_freebsd()&#x000A;{&#x000A;    backup_vimrc_and_vim&#x000A;    install_prepare_software_on_freebsd&#x000A;    begin_install_vimplus&#x000A;}&#x000A;&#x000A;# 在android平台安装vimplus&#x000A;function install_vimplus_on_android()&#x000A;{&#x000A;    backup_vimrc_and_vim&#x000A;    install_prepare_software_on_android&#x000A;    copy_files&#x000A;    install_fonts_on_android&#x000A;    install_ycm_on_android&#x000A;    install_vim_plugin&#x000A;    print_logo&#x000A;}&#x000A;&#x000A;# 开始安装vimplus&#x000A;function begin_install_vimplus()&#x000A;{&#x000A;    copy_files&#x000A;    install_fonts_on_linux&#x000A;    install_ycm&#x000A;    install_vim_plugin&#x000A;    print_logo&#x000A;}&#x000A;&#x000A;# 在ubuntu上安装vimplus&#x000A;function install_vimplus_on_ubuntu()&#x000A;{&#x000A;    backup_vimrc_and_vim&#x000A;    install_prepare_software_on_ubuntu&#x000A;    begin_install_vimplus&#x000A;}&#x000A;&#x000A;# 在ubuntu系上安装vimplus&#x000A;function install_vimplus_on_ubuntu_like()&#x000A;{&#x000A;    backup_vimrc_and_vim&#x000A;    install_prepare_software_on_ubuntu_like&#x000A;    begin_install_vimplus&#x000A;}&#x000A;&#x000A;# 在debian上安装vimplus&#x000A;function install_vimplus_on_debian()&#x000A;{&#x000A;    backup_vimrc_and_vim&#x000A;    install_prepare_software_on_debian&#x000A;    begin_install_vimplus&#x000A;}&#x000A;&#x000A;# 在parrot上安装vimplus&#x000A;function install_vimplus_on_parrot()&#x000A;{&#x000A;    backup_vimrc_and_vim&#x000A;    install_prepare_software_on_parrot&#x000A;    begin_install_vimplus&#x000A;}&#x000A;&#x000A;# 在centos上安装vimplus&#x000A;function install_vimplus_on_centos()&#x000A;{&#x000A;    backup_vimrc_and_vim&#x000A;    install_prepare_software_on_centos&#x000A;    begin_install_vimplus&#x000A;}&#x000A;&#x000A;# 在fedora上安装vimplus&#x000A;function install_vimplus_on_fedora()&#x000A;{&#x000A;    backup_vimrc_and_vim&#x000A;    install_prepare_software_on_fedora&#x000A;    begin_install_vimplus&#x000A;}&#x000A;&#x000A;# 在archlinux上安装vimplus&#x000A;function install_vimplus_on_archlinux()&#x000A;{&#x000A;    backup_vimrc_and_vim&#x000A;    install_prepare_software_on_archlinux&#x000A;    begin_install_vimplus&#x000A;}&#x000A;&#x000A;# 在Gentoo上安装vimplus&#x000A;function install_vimplus_on_gentoo()&#x000A;{&#x000A;    backup_vimrc_and_vim&#x000A;    install_prepare_software_on_gentoo&#x000A;    begin_install_vimplus&#x000A;}&#x000A;&#x000A;# 在opensuse上安装vimplus&#x000A;function install_vimplus_on_opensuse()&#x000A;{&#x000A;    backup_vimrc_and_vim&#x000A;    install_prepare_software_on_opensuse&#x000A;    begin_install_vimplus&#x000A;}&#x000A;&#x000A;# 在alpine上安装vimplus&#x000A;function install_vimplus_on_alpine()&#x000A;{&#x000A;    backup_vimrc_and_vim&#x000A;    install_prepare_software_on_alpine&#x000A;    begin_install_vimplus&#x000A;&#x000A;    # 单独安装 ycm&#x000A;&#x000A;}&#x000A;&#x000A;# 在linux平上台安装vimplus&#x000A;function install_vimplus_on_linux()&#x000A;{&#x000A;    distro=`get_linux_distro`&#x000A;    echo &quot;Linux distro: &quot;${distro}&#x000A;&#x000A;    if [ ${distro} == &quot;Ubuntu&quot; ]; then&#x000A;        install_vimplus_on_ubuntu&#x000A;    elif [ ${distro} == &quot;Deepin&quot; ]; then&#x000A;        install_vimplus_on_ubuntu_like&#x000A;    elif [ ${distro} == &quot;LinuxMint&quot; ]; then&#x000A;        install_vimplus_on_ubuntu_like&#x000A;    elif [ ${distro} == &quot;elementaryOS&quot; ]; then&#x000A;        install_vimplus_on_ubuntu_like&#x000A;    elif [ ${distro} == &quot;Debian&quot; ]; then&#x000A;        install_vimplus_on_debian&#x000A;    elif [ ${distro} == &quot;Raspbian&quot; ]; then&#x000A;        install_vimplus_on_debian&#x000A;    elif [ ${distro} == &quot;UOS&quot; ]; then&#x000A;        install_vimplus_on_debian&#x000A;    elif [ ${distro} == &quot;Kali&quot; ]; then&#x000A;        install_vimplus_on_debian&#x000A;    elif [ ${distro} == &quot;Parrot&quot; ]; then&#x000A;        install_vimplus_on_parrot&#x000A;    elif [ ${distro} == &quot;CentOS&quot; ]; then&#x000A;        install_vimplus_on_centos&#x000A;    elif [ ${distro} == &quot;fedora&quot; ]; then&#x000A;        install_vimplus_on_fedora&#x000A;    elif [ ${distro} == &quot;openSUSE&quot; ]; then&#x000A;        install_vimplus_on_opensuse&#x000A;    elif [ ${distro} == &quot;ArchLinux&quot; ]; then&#x000A;        install_vimplus_on_archlinux&#x000A;    elif [ ${distro} == &quot;ManjaroLinux&quot; ]; then&#x000A;        install_vimplus_on_archlinux&#x000A;    elif [ ${distro} == &quot;Gentoo&quot; ]; then&#x000A;        install_vimplus_on_gentoo&#x000A;    elif [ ${distro} == &quot;Alpine&quot; ]; then&#x000A;        install_vimplus_on_alpine&#x000A;    else&#x000A;        echo &quot;Not support linux distro: &quot;${distro}&#x000A;    fi&#x000A;}&#x000A;&#x000A;# 获取当前时间戳&#x000A;function get_now_timestamp()&#x000A;{&#x000A;    cur_sec_and_ns=`date &#39;+%s-%N&#39;`&#x000A;    echo ${cur_sec_and_ns%-*}&#x000A;}&#x000A;&#x000A;# main函数&#x000A;function main()&#x000A;{&#x000A;    begin=`get_now_timestamp`&#x000A;&#x000A;    type=$(uname)&#x000A;    echo &quot;Platform type: &quot;${type}&#x000A;&#x000A;    if [ ${type} == &quot;Darwin&quot; ]; then&#x000A;        install_vimplus_on_mac&#x000A;    elif [ ${type} == &quot;FreeBSD&quot; ]; then&#x000A;        install_vimplus_on_freebsd&#x000A;    elif [ ${type} == &quot;Linux&quot; ]; then&#x000A;        tp=$(uname -a)&#x000A;        if [[ $tp =~ &quot;Android&quot; ]]; then&#x000A;            echo &quot;Android&quot;&#x000A;            install_vimplus_on_android&#x000A;        else&#x000A;            install_vimplus_on_linux&#x000A;        fi&#x000A;    else&#x000A;        echo &quot;Not support platform type: &quot;${type}&#x000A;    fi&#x000A;&#x000A;    end=`get_now_timestamp`&#x000A;    second=`expr ${end} - ${begin}`&#x000A;    min=`expr ${second} / 60`&#x000A;    echo &quot;It takes &quot;${min}&quot; minutes.&quot;&#x000A;}&#x000A;&#x000A;# 调用main函数&#x000A;main&#x000A;</textarea>
<a class="ui button" href="#" id="copy-text">一键复制</a>
<a class="ui button edit-blob" href="/chxuan/vimplus/edit/master/install.sh" title="只有登陆后才可以编辑">编辑</a>
<a class="ui button web-ide" href="/-/ide/project/chxuan/vimplus/edit/master/-/install.sh" target="_blank">Web IDE</a>
<a class="ui button edit-raw" href="/chxuan/vimplus/raw/master/install.sh" target="_blank">原始数据</a>
<a class="ui button edit-blame" href="/chxuan/vimplus/blame/master/install.sh">按行查看</a>
<a class="ui button edit-history" href="/chxuan/vimplus/commits/master/install.sh">历史</a>
</div>
<script>
  "use strict";
  try {
    if((gon.wait_fork!=undefined && gon.wait_fork==true) || (gon.wait_fetch!=undefined && gon.wait_fetch==true)){
      $('.edit-blob').popup({content:"当前仓库正在后台处理中,暂时无法编辑", on: 'hover', delay: { show: 200, hide: 200 }});
      $('.edit-blob').click(function(e){
        e.preventDefault();
      })
    }
  
    var setUrl = function() {
      var params = window.location.search
      if (params==undefined || $.trim(params).length==0) return;
      $('span.options').children('.basic').find('a').each(function(index,ele){
        var origin_href = $(ele).attr('href');
        if (origin_href!="#" && origin_href.indexOf('?') == -1){
          $(ele).attr('href',origin_href+params);
        }
      });
    }
  
    setUrl();
  
    var clipboard = null,
        $btncopy  = $("#copy-text");
  
    clipboard = new Clipboard("#copy-text", {
      text: function(trigger) {
        return $("#blob_raw").val();
      }
    })
  
    clipboard.on('success', function(e) {
      $btncopy.popup('hide');
      $btncopy.popup('destroy');
      $btncopy.popup({content: '已复制', position: 'bottom center'});
      $btncopy.popup('show');
    })
  
    clipboard.on('error', function(e) {
      var giteeModal = new GiteeModalHelper({okText: '确定'});
      giteeModal.alert("一键复制", '复制失败，请手动复制');
    })
  
    $(function() {
      $btncopy.popup({
        content: '点击复制',
        position: 'bottom center'
      })
    })
  
  } catch (error) {
    console.log('blob/action error:' + error);
  }
  
  $('.disabled-edit-readonly').popup({
    content: "只读文件不可编辑",
    className: {
      popup: 'ui popup',
    },
    position: 'bottom center',
  })
  $('.disabled-edit-readonly').click(function() {
    return false
  })
</script>
<style>
  .disabled-edit-readonly {
    background-color: #dcddde !important;
    color: rgba(0, 0, 0, 0.4) !important;
    opacity: 0.3 !important;
    background-image: none !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important; }
</style>
</div>
</div>
<div class='contributor-description'><span class='recent-commit' style='margin-top: 0.7rem'>
<a class="commit-author-link  js-popover-card " data-username="chxuan" href="/chxuan">chxuan</a>
<span>提交于</span>
<span class='timeago commit-date' title='2021-06-27 09:43:33 +0800'>
2021-06-27 09:43
</span>
.
<a href="/chxuan/vimplus/commit/9317318d2689ad925e7fda9ad408b58d29aa661e">Merge pull request #359 from xuthus5/master</a>
</span>
</div>
</div>
<div class='clearfix'></div>
<div class='file_content code'>
<div class='lines white'>
<div class='line-numbers'><a href='#L1' id='L1'>1</a><a href='#L2' id='L2'>2</a><a href='#L3' id='L3'>3</a><a href='#L4' id='L4'>4</a><a href='#L5' id='L5'>5</a><a href='#L6' id='L6'>6</a><a href='#L7' id='L7'>7</a><a href='#L8' id='L8'>8</a><a href='#L9' id='L9'>9</a><a href='#L10' id='L10'>10</a><a href='#L11' id='L11'>11</a><a href='#L12' id='L12'>12</a><a href='#L13' id='L13'>13</a><a href='#L14' id='L14'>14</a><a href='#L15' id='L15'>15</a><a href='#L16' id='L16'>16</a><a href='#L17' id='L17'>17</a><a href='#L18' id='L18'>18</a><a href='#L19' id='L19'>19</a><a href='#L20' id='L20'>20</a><a href='#L21' id='L21'>21</a><a href='#L22' id='L22'>22</a><a href='#L23' id='L23'>23</a><a href='#L24' id='L24'>24</a><a href='#L25' id='L25'>25</a><a href='#L26' id='L26'>26</a><a href='#L27' id='L27'>27</a><a href='#L28' id='L28'>28</a><a href='#L29' id='L29'>29</a><a href='#L30' id='L30'>30</a><a href='#L31' id='L31'>31</a><a href='#L32' id='L32'>32</a><a href='#L33' id='L33'>33</a><a href='#L34' id='L34'>34</a><a href='#L35' id='L35'>35</a><a href='#L36' id='L36'>36</a><a href='#L37' id='L37'>37</a><a href='#L38' id='L38'>38</a><a href='#L39' id='L39'>39</a><a href='#L40' id='L40'>40</a><a href='#L41' id='L41'>41</a><a href='#L42' id='L42'>42</a><a href='#L43' id='L43'>43</a><a href='#L44' id='L44'>44</a><a href='#L45' id='L45'>45</a><a href='#L46' id='L46'>46</a><a href='#L47' id='L47'>47</a><a href='#L48' id='L48'>48</a><a href='#L49' id='L49'>49</a><a href='#L50' id='L50'>50</a><a href='#L51' id='L51'>51</a><a href='#L52' id='L52'>52</a><a href='#L53' id='L53'>53</a><a href='#L54' id='L54'>54</a><a href='#L55' id='L55'>55</a><a href='#L56' id='L56'>56</a><a href='#L57' id='L57'>57</a><a href='#L58' id='L58'>58</a><a href='#L59' id='L59'>59</a><a href='#L60' id='L60'>60</a><a href='#L61' id='L61'>61</a><a href='#L62' id='L62'>62</a><a href='#L63' id='L63'>63</a><a href='#L64' id='L64'>64</a><a href='#L65' id='L65'>65</a><a href='#L66' id='L66'>66</a><a href='#L67' id='L67'>67</a><a href='#L68' id='L68'>68</a><a href='#L69' id='L69'>69</a><a href='#L70' id='L70'>70</a><a href='#L71' id='L71'>71</a><a href='#L72' id='L72'>72</a><a href='#L73' id='L73'>73</a><a href='#L74' id='L74'>74</a><a href='#L75' id='L75'>75</a><a href='#L76' id='L76'>76</a><a href='#L77' id='L77'>77</a><a href='#L78' id='L78'>78</a><a href='#L79' id='L79'>79</a><a href='#L80' id='L80'>80</a><a href='#L81' id='L81'>81</a><a href='#L82' id='L82'>82</a><a href='#L83' id='L83'>83</a><a href='#L84' id='L84'>84</a><a href='#L85' id='L85'>85</a><a href='#L86' id='L86'>86</a><a href='#L87' id='L87'>87</a><a href='#L88' id='L88'>88</a><a href='#L89' id='L89'>89</a><a href='#L90' id='L90'>90</a><a href='#L91' id='L91'>91</a><a href='#L92' id='L92'>92</a><a href='#L93' id='L93'>93</a><a href='#L94' id='L94'>94</a><a href='#L95' id='L95'>95</a><a href='#L96' id='L96'>96</a><a href='#L97' id='L97'>97</a><a href='#L98' id='L98'>98</a><a href='#L99' id='L99'>99</a><a href='#L100' id='L100'>100</a><a href='#L101' id='L101'>101</a><a href='#L102' id='L102'>102</a><a href='#L103' id='L103'>103</a><a href='#L104' id='L104'>104</a><a href='#L105' id='L105'>105</a><a href='#L106' id='L106'>106</a><a href='#L107' id='L107'>107</a><a href='#L108' id='L108'>108</a><a href='#L109' id='L109'>109</a><a href='#L110' id='L110'>110</a><a href='#L111' id='L111'>111</a><a href='#L112' id='L112'>112</a><a href='#L113' id='L113'>113</a><a href='#L114' id='L114'>114</a><a href='#L115' id='L115'>115</a><a href='#L116' id='L116'>116</a><a href='#L117' id='L117'>117</a><a href='#L118' id='L118'>118</a><a href='#L119' id='L119'>119</a><a href='#L120' id='L120'>120</a><a href='#L121' id='L121'>121</a><a href='#L122' id='L122'>122</a><a href='#L123' id='L123'>123</a><a href='#L124' id='L124'>124</a><a href='#L125' id='L125'>125</a><a href='#L126' id='L126'>126</a><a href='#L127' id='L127'>127</a><a href='#L128' id='L128'>128</a><a href='#L129' id='L129'>129</a><a href='#L130' id='L130'>130</a><a href='#L131' id='L131'>131</a><a href='#L132' id='L132'>132</a><a href='#L133' id='L133'>133</a><a href='#L134' id='L134'>134</a><a href='#L135' id='L135'>135</a><a href='#L136' id='L136'>136</a><a href='#L137' id='L137'>137</a><a href='#L138' id='L138'>138</a><a href='#L139' id='L139'>139</a><a href='#L140' id='L140'>140</a><a href='#L141' id='L141'>141</a><a href='#L142' id='L142'>142</a><a href='#L143' id='L143'>143</a><a href='#L144' id='L144'>144</a><a href='#L145' id='L145'>145</a><a href='#L146' id='L146'>146</a><a href='#L147' id='L147'>147</a><a href='#L148' id='L148'>148</a><a href='#L149' id='L149'>149</a><a href='#L150' id='L150'>150</a><a href='#L151' id='L151'>151</a><a href='#L152' id='L152'>152</a><a href='#L153' id='L153'>153</a><a href='#L154' id='L154'>154</a><a href='#L155' id='L155'>155</a><a href='#L156' id='L156'>156</a><a href='#L157' id='L157'>157</a><a href='#L158' id='L158'>158</a><a href='#L159' id='L159'>159</a><a href='#L160' id='L160'>160</a><a href='#L161' id='L161'>161</a><a href='#L162' id='L162'>162</a><a href='#L163' id='L163'>163</a><a href='#L164' id='L164'>164</a><a href='#L165' id='L165'>165</a><a href='#L166' id='L166'>166</a><a href='#L167' id='L167'>167</a><a href='#L168' id='L168'>168</a><a href='#L169' id='L169'>169</a><a href='#L170' id='L170'>170</a><a href='#L171' id='L171'>171</a><a href='#L172' id='L172'>172</a><a href='#L173' id='L173'>173</a><a href='#L174' id='L174'>174</a><a href='#L175' id='L175'>175</a><a href='#L176' id='L176'>176</a><a href='#L177' id='L177'>177</a><a href='#L178' id='L178'>178</a><a href='#L179' id='L179'>179</a><a href='#L180' id='L180'>180</a><a href='#L181' id='L181'>181</a><a href='#L182' id='L182'>182</a><a href='#L183' id='L183'>183</a><a href='#L184' id='L184'>184</a><a href='#L185' id='L185'>185</a><a href='#L186' id='L186'>186</a><a href='#L187' id='L187'>187</a><a href='#L188' id='L188'>188</a><a href='#L189' id='L189'>189</a><a href='#L190' id='L190'>190</a><a href='#L191' id='L191'>191</a><a href='#L192' id='L192'>192</a><a href='#L193' id='L193'>193</a><a href='#L194' id='L194'>194</a><a href='#L195' id='L195'>195</a><a href='#L196' id='L196'>196</a><a href='#L197' id='L197'>197</a><a href='#L198' id='L198'>198</a><a href='#L199' id='L199'>199</a><a href='#L200' id='L200'>200</a><a href='#L201' id='L201'>201</a><a href='#L202' id='L202'>202</a><a href='#L203' id='L203'>203</a><a href='#L204' id='L204'>204</a><a href='#L205' id='L205'>205</a><a href='#L206' id='L206'>206</a><a href='#L207' id='L207'>207</a><a href='#L208' id='L208'>208</a><a href='#L209' id='L209'>209</a><a href='#L210' id='L210'>210</a><a href='#L211' id='L211'>211</a><a href='#L212' id='L212'>212</a><a href='#L213' id='L213'>213</a><a href='#L214' id='L214'>214</a><a href='#L215' id='L215'>215</a><a href='#L216' id='L216'>216</a><a href='#L217' id='L217'>217</a><a href='#L218' id='L218'>218</a><a href='#L219' id='L219'>219</a><a href='#L220' id='L220'>220</a><a href='#L221' id='L221'>221</a><a href='#L222' id='L222'>222</a><a href='#L223' id='L223'>223</a><a href='#L224' id='L224'>224</a><a href='#L225' id='L225'>225</a><a href='#L226' id='L226'>226</a><a href='#L227' id='L227'>227</a><a href='#L228' id='L228'>228</a><a href='#L229' id='L229'>229</a><a href='#L230' id='L230'>230</a><a href='#L231' id='L231'>231</a><a href='#L232' id='L232'>232</a><a href='#L233' id='L233'>233</a><a href='#L234' id='L234'>234</a><a href='#L235' id='L235'>235</a><a href='#L236' id='L236'>236</a><a href='#L237' id='L237'>237</a><a href='#L238' id='L238'>238</a><a href='#L239' id='L239'>239</a><a href='#L240' id='L240'>240</a><a href='#L241' id='L241'>241</a><a href='#L242' id='L242'>242</a><a href='#L243' id='L243'>243</a><a href='#L244' id='L244'>244</a><a href='#L245' id='L245'>245</a><a href='#L246' id='L246'>246</a><a href='#L247' id='L247'>247</a><a href='#L248' id='L248'>248</a><a href='#L249' id='L249'>249</a><a href='#L250' id='L250'>250</a><a href='#L251' id='L251'>251</a><a href='#L252' id='L252'>252</a><a href='#L253' id='L253'>253</a><a href='#L254' id='L254'>254</a><a href='#L255' id='L255'>255</a><a href='#L256' id='L256'>256</a><a href='#L257' id='L257'>257</a><a href='#L258' id='L258'>258</a><a href='#L259' id='L259'>259</a><a href='#L260' id='L260'>260</a><a href='#L261' id='L261'>261</a><a href='#L262' id='L262'>262</a><a href='#L263' id='L263'>263</a><a href='#L264' id='L264'>264</a><a href='#L265' id='L265'>265</a><a href='#L266' id='L266'>266</a><a href='#L267' id='L267'>267</a><a href='#L268' id='L268'>268</a><a href='#L269' id='L269'>269</a><a href='#L270' id='L270'>270</a><a href='#L271' id='L271'>271</a><a href='#L272' id='L272'>272</a><a href='#L273' id='L273'>273</a><a href='#L274' id='L274'>274</a><a href='#L275' id='L275'>275</a><a href='#L276' id='L276'>276</a><a href='#L277' id='L277'>277</a><a href='#L278' id='L278'>278</a><a href='#L279' id='L279'>279</a><a href='#L280' id='L280'>280</a><a href='#L281' id='L281'>281</a><a href='#L282' id='L282'>282</a><a href='#L283' id='L283'>283</a><a href='#L284' id='L284'>284</a><a href='#L285' id='L285'>285</a><a href='#L286' id='L286'>286</a><a href='#L287' id='L287'>287</a><a href='#L288' id='L288'>288</a><a href='#L289' id='L289'>289</a><a href='#L290' id='L290'>290</a><a href='#L291' id='L291'>291</a><a href='#L292' id='L292'>292</a><a href='#L293' id='L293'>293</a><a href='#L294' id='L294'>294</a><a href='#L295' id='L295'>295</a><a href='#L296' id='L296'>296</a><a href='#L297' id='L297'>297</a><a href='#L298' id='L298'>298</a><a href='#L299' id='L299'>299</a><a href='#L300' id='L300'>300</a><a href='#L301' id='L301'>301</a><a href='#L302' id='L302'>302</a><a href='#L303' id='L303'>303</a><a href='#L304' id='L304'>304</a><a href='#L305' id='L305'>305</a><a href='#L306' id='L306'>306</a><a href='#L307' id='L307'>307</a><a href='#L308' id='L308'>308</a><a href='#L309' id='L309'>309</a><a href='#L310' id='L310'>310</a><a href='#L311' id='L311'>311</a><a href='#L312' id='L312'>312</a><a href='#L313' id='L313'>313</a><a href='#L314' id='L314'>314</a><a href='#L315' id='L315'>315</a><a href='#L316' id='L316'>316</a><a href='#L317' id='L317'>317</a><a href='#L318' id='L318'>318</a><a href='#L319' id='L319'>319</a><a href='#L320' id='L320'>320</a><a href='#L321' id='L321'>321</a><a href='#L322' id='L322'>322</a><a href='#L323' id='L323'>323</a><a href='#L324' id='L324'>324</a><a href='#L325' id='L325'>325</a><a href='#L326' id='L326'>326</a><a href='#L327' id='L327'>327</a><a href='#L328' id='L328'>328</a><a href='#L329' id='L329'>329</a><a href='#L330' id='L330'>330</a><a href='#L331' id='L331'>331</a><a href='#L332' id='L332'>332</a><a href='#L333' id='L333'>333</a><a href='#L334' id='L334'>334</a><a href='#L335' id='L335'>335</a><a href='#L336' id='L336'>336</a><a href='#L337' id='L337'>337</a><a href='#L338' id='L338'>338</a><a href='#L339' id='L339'>339</a><a href='#L340' id='L340'>340</a><a href='#L341' id='L341'>341</a><a href='#L342' id='L342'>342</a><a href='#L343' id='L343'>343</a><a href='#L344' id='L344'>344</a><a href='#L345' id='L345'>345</a><a href='#L346' id='L346'>346</a><a href='#L347' id='L347'>347</a><a href='#L348' id='L348'>348</a><a href='#L349' id='L349'>349</a><a href='#L350' id='L350'>350</a><a href='#L351' id='L351'>351</a><a href='#L352' id='L352'>352</a><a href='#L353' id='L353'>353</a><a href='#L354' id='L354'>354</a><a href='#L355' id='L355'>355</a><a href='#L356' id='L356'>356</a><a href='#L357' id='L357'>357</a><a href='#L358' id='L358'>358</a><a href='#L359' id='L359'>359</a><a href='#L360' id='L360'>360</a><a href='#L361' id='L361'>361</a><a href='#L362' id='L362'>362</a><a href='#L363' id='L363'>363</a><a href='#L364' id='L364'>364</a><a href='#L365' id='L365'>365</a><a href='#L366' id='L366'>366</a><a href='#L367' id='L367'>367</a><a href='#L368' id='L368'>368</a><a href='#L369' id='L369'>369</a><a href='#L370' id='L370'>370</a><a href='#L371' id='L371'>371</a><a href='#L372' id='L372'>372</a><a href='#L373' id='L373'>373</a><a href='#L374' id='L374'>374</a><a href='#L375' id='L375'>375</a><a href='#L376' id='L376'>376</a><a href='#L377' id='L377'>377</a><a href='#L378' id='L378'>378</a><a href='#L379' id='L379'>379</a><a href='#L380' id='L380'>380</a><a href='#L381' id='L381'>381</a><a href='#L382' id='L382'>382</a><a href='#L383' id='L383'>383</a><a href='#L384' id='L384'>384</a><a href='#L385' id='L385'>385</a><a href='#L386' id='L386'>386</a><a href='#L387' id='L387'>387</a><a href='#L388' id='L388'>388</a><a href='#L389' id='L389'>389</a><a href='#L390' id='L390'>390</a><a href='#L391' id='L391'>391</a><a href='#L392' id='L392'>392</a><a href='#L393' id='L393'>393</a><a href='#L394' id='L394'>394</a><a href='#L395' id='L395'>395</a><a href='#L396' id='L396'>396</a><a href='#L397' id='L397'>397</a><a href='#L398' id='L398'>398</a><a href='#L399' id='L399'>399</a><a href='#L400' id='L400'>400</a><a href='#L401' id='L401'>401</a><a href='#L402' id='L402'>402</a><a href='#L403' id='L403'>403</a><a href='#L404' id='L404'>404</a><a href='#L405' id='L405'>405</a><a href='#L406' id='L406'>406</a><a href='#L407' id='L407'>407</a><a href='#L408' id='L408'>408</a><a href='#L409' id='L409'>409</a><a href='#L410' id='L410'>410</a><a href='#L411' id='L411'>411</a><a href='#L412' id='L412'>412</a><a href='#L413' id='L413'>413</a><a href='#L414' id='L414'>414</a><a href='#L415' id='L415'>415</a><a href='#L416' id='L416'>416</a><a href='#L417' id='L417'>417</a><a href='#L418' id='L418'>418</a><a href='#L419' id='L419'>419</a><a href='#L420' id='L420'>420</a><a href='#L421' id='L421'>421</a><a href='#L422' id='L422'>422</a><a href='#L423' id='L423'>423</a><a href='#L424' id='L424'>424</a><a href='#L425' id='L425'>425</a><a href='#L426' id='L426'>426</a><a href='#L427' id='L427'>427</a><a href='#L428' id='L428'>428</a><a href='#L429' id='L429'>429</a><a href='#L430' id='L430'>430</a><a href='#L431' id='L431'>431</a><a href='#L432' id='L432'>432</a><a href='#L433' id='L433'>433</a><a href='#L434' id='L434'>434</a><a href='#L435' id='L435'>435</a><a href='#L436' id='L436'>436</a><a href='#L437' id='L437'>437</a><a href='#L438' id='L438'>438</a><a href='#L439' id='L439'>439</a><a href='#L440' id='L440'>440</a><a href='#L441' id='L441'>441</a><a href='#L442' id='L442'>442</a><a href='#L443' id='L443'>443</a><a href='#L444' id='L444'>444</a><a href='#L445' id='L445'>445</a><a href='#L446' id='L446'>446</a><a href='#L447' id='L447'>447</a><a href='#L448' id='L448'>448</a><a href='#L449' id='L449'>449</a><a href='#L450' id='L450'>450</a><a href='#L451' id='L451'>451</a><a href='#L452' id='L452'>452</a><a href='#L453' id='L453'>453</a><a href='#L454' id='L454'>454</a><a href='#L455' id='L455'>455</a><a href='#L456' id='L456'>456</a><a href='#L457' id='L457'>457</a><a href='#L458' id='L458'>458</a><a href='#L459' id='L459'>459</a><a href='#L460' id='L460'>460</a><a href='#L461' id='L461'>461</a><a href='#L462' id='L462'>462</a><a href='#L463' id='L463'>463</a><a href='#L464' id='L464'>464</a><a href='#L465' id='L465'>465</a><a href='#L466' id='L466'>466</a><a href='#L467' id='L467'>467</a><a href='#L468' id='L468'>468</a><a href='#L469' id='L469'>469</a><a href='#L470' id='L470'>470</a><a href='#L471' id='L471'>471</a><a href='#L472' id='L472'>472</a><a href='#L473' id='L473'>473</a><a href='#L474' id='L474'>474</a><a href='#L475' id='L475'>475</a><a href='#L476' id='L476'>476</a><a href='#L477' id='L477'>477</a><a href='#L478' id='L478'>478</a><a href='#L479' id='L479'>479</a><a href='#L480' id='L480'>480</a><a href='#L481' id='L481'>481</a><a href='#L482' id='L482'>482</a><a href='#L483' id='L483'>483</a><a href='#L484' id='L484'>484</a><a href='#L485' id='L485'>485</a><a href='#L486' id='L486'>486</a><a href='#L487' id='L487'>487</a><a href='#L488' id='L488'>488</a><a href='#L489' id='L489'>489</a><a href='#L490' id='L490'>490</a><a href='#L491' id='L491'>491</a><a href='#L492' id='L492'>492</a><a href='#L493' id='L493'>493</a><a href='#L494' id='L494'>494</a><a href='#L495' id='L495'>495</a><a href='#L496' id='L496'>496</a><a href='#L497' id='L497'>497</a><a href='#L498' id='L498'>498</a><a href='#L499' id='L499'>499</a><a href='#L500' id='L500'>500</a><a href='#L501' id='L501'>501</a><a href='#L502' id='L502'>502</a><a href='#L503' id='L503'>503</a><a href='#L504' id='L504'>504</a><a href='#L505' id='L505'>505</a><a href='#L506' id='L506'>506</a><a href='#L507' id='L507'>507</a><a href='#L508' id='L508'>508</a><a href='#L509' id='L509'>509</a><a href='#L510' id='L510'>510</a><a href='#L511' id='L511'>511</a><a href='#L512' id='L512'>512</a><a href='#L513' id='L513'>513</a><a href='#L514' id='L514'>514</a><a href='#L515' id='L515'>515</a><a href='#L516' id='L516'>516</a><a href='#L517' id='L517'>517</a><a href='#L518' id='L518'>518</a><a href='#L519' id='L519'>519</a><a href='#L520' id='L520'>520</a><a href='#L521' id='L521'>521</a><a href='#L522' id='L522'>522</a><a href='#L523' id='L523'>523</a><a href='#L524' id='L524'>524</a><a href='#L525' id='L525'>525</a><a href='#L526' id='L526'>526</a><a href='#L527' id='L527'>527</a><a href='#L528' id='L528'>528</a><a href='#L529' id='L529'>529</a><a href='#L530' id='L530'>530</a><a href='#L531' id='L531'>531</a><a href='#L532' id='L532'>532</a><a href='#L533' id='L533'>533</a><a href='#L534' id='L534'>534</a><a href='#L535' id='L535'>535</a><a href='#L536' id='L536'>536</a><a href='#L537' id='L537'>537</a><a href='#L538' id='L538'>538</a><a href='#L539' id='L539'>539</a><a href='#L540' id='L540'>540</a><a href='#L541' id='L541'>541</a><a href='#L542' id='L542'>542</a><a href='#L543' id='L543'>543</a><a href='#L544' id='L544'>544</a><a href='#L545' id='L545'>545</a><a href='#L546' id='L546'>546</a><a href='#L547' id='L547'>547</a><a href='#L548' id='L548'>548</a><a href='#L549' id='L549'>549</a><a href='#L550' id='L550'>550</a><a href='#L551' id='L551'>551</a><a href='#L552' id='L552'>552</a><a href='#L553' id='L553'>553</a><a href='#L554' id='L554'>554</a><a href='#L555' id='L555'>555</a><a href='#L556' id='L556'>556</a><a href='#L557' id='L557'>557</a><a href='#L558' id='L558'>558</a><a href='#L559' id='L559'>559</a><a href='#L560' id='L560'>560</a><a href='#L561' id='L561'>561</a><a href='#L562' id='L562'>562</a><a href='#L563' id='L563'>563</a><a href='#L564' id='L564'>564</a><a href='#L565' id='L565'>565</a><a href='#L566' id='L566'>566</a><a href='#L567' id='L567'>567</a><a href='#L568' id='L568'>568</a><a href='#L569' id='L569'>569</a><a href='#L570' id='L570'>570</a><a href='#L571' id='L571'>571</a><a href='#L572' id='L572'>572</a><a href='#L573' id='L573'>573</a><a href='#L574' id='L574'>574</a><a href='#L575' id='L575'>575</a><a href='#L576' id='L576'>576</a><a href='#L577' id='L577'>577</a><a href='#L578' id='L578'>578</a><a href='#L579' id='L579'>579</a><a href='#L580' id='L580'>580</a><a href='#L581' id='L581'>581</a><a href='#L582' id='L582'>582</a><a href='#L583' id='L583'>583</a><a href='#L584' id='L584'>584</a><a href='#L585' id='L585'>585</a><a href='#L586' id='L586'>586</a><a href='#L587' id='L587'>587</a><a href='#L588' id='L588'>588</a><a href='#L589' id='L589'>589</a><a href='#L590' id='L590'>590</a><a href='#L591' id='L591'>591</a><a href='#L592' id='L592'>592</a><a href='#L593' id='L593'>593</a><a href='#L594' id='L594'>594</a><a href='#L595' id='L595'>595</a><a href='#L596' id='L596'>596</a><a href='#L597' id='L597'>597</a><a href='#L598' id='L598'>598</a><a href='#L599' id='L599'>599</a><a href='#L600' id='L600'>600</a><a href='#L601' id='L601'>601</a><a href='#L602' id='L602'>602</a><a href='#L603' id='L603'>603</a><a href='#L604' id='L604'>604</a><a href='#L605' id='L605'>605</a><a href='#L606' id='L606'>606</a><a href='#L607' id='L607'>607</a><a href='#L608' id='L608'>608</a><a href='#L609' id='L609'>609</a><a href='#L610' id='L610'>610</a><a href='#L611' id='L611'>611</a><a href='#L612' id='L612'>612</a><a href='#L613' id='L613'>613</a><a href='#L614' id='L614'>614</a><a href='#L615' id='L615'>615</a><a href='#L616' id='L616'>616</a><a href='#L617' id='L617'>617</a><a href='#L618' id='L618'>618</a><a href='#L619' id='L619'>619</a><a href='#L620' id='L620'>620</a><a href='#L621' id='L621'>621</a><a href='#L622' id='L622'>622</a><a href='#L623' id='L623'>623</a><a href='#L624' id='L624'>624</a><a href='#L625' id='L625'>625</a><a href='#L626' id='L626'>626</a><a href='#L627' id='L627'>627</a><a href='#L628' id='L628'>628</a><a href='#L629' id='L629'>629</a><a href='#L630' id='L630'>630</a><a href='#L631' id='L631'>631</a><a href='#L632' id='L632'>632</a><a href='#L633' id='L633'>633</a><a href='#L634' id='L634'>634</a><a href='#L635' id='L635'>635</a><a href='#L636' id='L636'>636</a><a href='#L637' id='L637'>637</a><a href='#L638' id='L638'>638</a><a href='#L639' id='L639'>639</a><a href='#L640' id='L640'>640</a><a href='#L641' id='L641'>641</a><a href='#L642' id='L642'>642</a><a href='#L643' id='L643'>643</a><a href='#L644' id='L644'>644</a><a href='#L645' id='L645'>645</a><a href='#L646' id='L646'>646</a><a href='#L647' id='L647'>647</a><a href='#L648' id='L648'>648</a><a href='#L649' id='L649'>649</a><a href='#L650' id='L650'>650</a><a href='#L651' id='L651'>651</a><a href='#L652' id='L652'>652</a><a href='#L653' id='L653'>653</a><a href='#L654' id='L654'>654</a><a href='#L655' id='L655'>655</a><a href='#L656' id='L656'>656</a><a href='#L657' id='L657'>657</a><a href='#L658' id='L658'>658</a><a href='#L659' id='L659'>659</a><a href='#L660' id='L660'>660</a><a href='#L661' id='L661'>661</a><a href='#L662' id='L662'>662</a><a href='#L663' id='L663'>663</a><a href='#L664' id='L664'>664</a><a href='#L665' id='L665'>665</a><a href='#L666' id='L666'>666</a><a href='#L667' id='L667'>667</a><a href='#L668' id='L668'>668</a><a href='#L669' id='L669'>669</a><a href='#L670' id='L670'>670</a><a href='#L671' id='L671'>671</a><a href='#L672' id='L672'>672</a><a href='#L673' id='L673'>673</a><a href='#L674' id='L674'>674</a><a href='#L675' id='L675'>675</a><a href='#L676' id='L676'>676</a><a href='#L677' id='L677'>677</a><a href='#L678' id='L678'>678</a><a href='#L679' id='L679'>679</a><a href='#L680' id='L680'>680</a><a href='#L681' id='L681'>681</a><a href='#L682' id='L682'>682</a><a href='#L683' id='L683'>683</a><a href='#L684' id='L684'>684</a><a href='#L685' id='L685'>685</a><a href='#L686' id='L686'>686</a><a href='#L687' id='L687'>687</a><a href='#L688' id='L688'>688</a><a href='#L689' id='L689'>689</a><a href='#L690' id='L690'>690</a><a href='#L691' id='L691'>691</a><a href='#L692' id='L692'>692</a><a href='#L693' id='L693'>693</a><a href='#L694' id='L694'>694</a><a href='#L695' id='L695'>695</a><a href='#L696' id='L696'>696</a><a href='#L697' id='L697'>697</a><a href='#L698' id='L698'>698</a><a href='#L699' id='L699'>699</a><a href='#L700' id='L700'>700</a><a href='#L701' id='L701'>701</a><a href='#L702' id='L702'>702</a><a href='#L703' id='L703'>703</a><a href='#L704' id='L704'>704</a><a href='#L705' id='L705'>705</a><a href='#L706' id='L706'>706</a><a href='#L707' id='L707'>707</a><a href='#L708' id='L708'>708</a><a href='#L709' id='L709'>709</a><a href='#L710' id='L710'>710</a><a href='#L711' id='L711'>711</a><a href='#L712' id='L712'>712</a><a href='#L713' id='L713'>713</a><a href='#L714' id='L714'>714</a><a href='#L715' id='L715'>715</a><a href='#L716' id='L716'>716</a><a href='#L717' id='L717'>717</a><a href='#L718' id='L718'>718</a><a href='#L719' id='L719'>719</a><a href='#L720' id='L720'>720</a><a href='#L721' id='L721'>721</a><a href='#L722' id='L722'>722</a><a href='#L723' id='L723'>723</a><a href='#L724' id='L724'>724</a><a href='#L725' id='L725'>725</a><a href='#L726' id='L726'>726</a><a href='#L727' id='L727'>727</a><a href='#L728' id='L728'>728</a><a href='#L729' id='L729'>729</a><a href='#L730' id='L730'>730</a><a href='#L731' id='L731'>731</a><a href='#L732' id='L732'>732</a><a href='#L733' id='L733'>733</a><a href='#L734' id='L734'>734</a><a href='#L735' id='L735'>735</a><a href='#L736' id='L736'>736</a><a href='#L737' id='L737'>737</a><a href='#L738' id='L738'>738</a><a href='#L739' id='L739'>739</a><a href='#L740' id='L740'>740</a><a href='#L741' id='L741'>741</a><a href='#L742' id='L742'>742</a><a href='#L743' id='L743'>743</a><a href='#L744' id='L744'>744</a><a href='#L745' id='L745'>745</a><a href='#L746' id='L746'>746</a><a href='#L747' id='L747'>747</a><a href='#L748' id='L748'>748</a><a href='#L749' id='L749'>749</a><a href='#L750' id='L750'>750</a><a href='#L751' id='L751'>751</a><a href='#L752' id='L752'>752</a><a href='#L753' id='L753'>753</a><a href='#L754' id='L754'>754</a><a href='#L755' id='L755'>755</a><a href='#L756' id='L756'>756</a><a href='#L757' id='L757'>757</a><a href='#L758' id='L758'>758</a><a href='#L759' id='L759'>759</a><a href='#L760' id='L760'>760</a><a href='#L761' id='L761'>761</a><a href='#L762' id='L762'>762</a><a href='#L763' id='L763'>763</a><a href='#L764' id='L764'>764</a><a href='#L765' id='L765'>765</a><a href='#L766' id='L766'>766</a><a href='#L767' id='L767'>767</a><a href='#L768' id='L768'>768</a><a href='#L769' id='L769'>769</a><a href='#L770' id='L770'>770</a><a href='#L771' id='L771'>771</a><a href='#L772' id='L772'>772</a><a href='#L773' id='L773'>773</a><a href='#L774' id='L774'>774</a><a href='#L775' id='L775'>775</a><a href='#L776' id='L776'>776</a><a href='#L777' id='L777'>777</a><a href='#L778' id='L778'>778</a><a href='#L779' id='L779'>779</a><a href='#L780' id='L780'>780</a><a href='#L781' id='L781'>781</a></div><div class="highlight"><pre class=""><div class='line' id='LC1'><span class="c">#!/usr/bin/env bash</span>&#x000A;</div><div class='line' id='LC2'>&#x000A;</div><div class='line' id='LC3'><span class="c"># 获取linux发行版名称</span>&#x000A;</div><div class='line' id='LC4'><span class="k">function </span>get_linux_distro<span class="o">()</span>&#x000A;</div><div class='line' id='LC5'><span class="o">{</span>&#x000A;</div><div class='line' id='LC6'>    <span class="k">if </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"Ubuntu"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC7'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Ubuntu"</span>&#x000A;</div><div class='line' id='LC8'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"Deepin"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC9'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Deepin"</span>&#x000A;</div><div class='line' id='LC10'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"Raspbian"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC11'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Raspbian"</span>&#x000A;</div><div class='line' id='LC12'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"uos"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC13'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"UOS"</span>&#x000A;</div><div class='line' id='LC14'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"LinuxMint"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC15'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"LinuxMint"</span>&#x000A;</div><div class='line' id='LC16'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"elementary"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC17'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"elementaryOS"</span>&#x000A;</div><div class='line' id='LC18'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"Debian"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC19'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Debian"</span>&#x000A;</div><div class='line' id='LC20'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"Kali"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC21'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Kali"</span>&#x000A;</div><div class='line' id='LC22'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"Parrot"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC23'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Parrot"</span>&#x000A;</div><div class='line' id='LC24'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"CentOS"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC25'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"CentOS"</span>&#x000A;</div><div class='line' id='LC26'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"fedora"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC27'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"fedora"</span>&#x000A;</div><div class='line' id='LC28'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"openSUSE"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC29'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"openSUSE"</span>&#x000A;</div><div class='line' id='LC30'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"Arch Linux"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC31'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"ArchLinux"</span>&#x000A;</div><div class='line' id='LC32'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"ManjaroLinux"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC33'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"ManjaroLinux"</span>&#x000A;</div><div class='line' id='LC34'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"Gentoo"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC35'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Gentoo"</span>&#x000A;</div><div class='line' id='LC36'>    <span class="k">elif </span><span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"alpine"</span> /etc/<span class="k">*</span><span class="nt">-release</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC37'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Alpine"</span>&#x000A;</div><div class='line' id='LC38'>    <span class="k">else</span>&#x000A;</div><div class='line' id='LC39'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Unknow"</span>&#x000A;</div><div class='line' id='LC40'>    <span class="k">fi</span>&#x000A;</div><div class='line' id='LC41'><span class="o">}</span>&#x000A;</div><div class='line' id='LC42'>&#x000A;</div><div class='line' id='LC43'><span class="c"># 获取日期</span>&#x000A;</div><div class='line' id='LC44'><span class="k">function </span>get_datetime<span class="o">()</span>&#x000A;</div><div class='line' id='LC45'><span class="o">{</span>&#x000A;</div><div class='line' id='LC46'>    <span class="nb">time</span><span class="o">=</span><span class="si">$(</span><span class="nb">date</span> <span class="s2">"+%Y%m%d%H%M%S"</span><span class="si">)</span>&#x000A;</div><div class='line' id='LC47'>    <span class="nb">echo</span> <span class="nv">$time</span>&#x000A;</div><div class='line' id='LC48'><span class="o">}</span>&#x000A;</div><div class='line' id='LC49'>&#x000A;</div><div class='line' id='LC50'><span class="c"># 判断文件是否存在</span>&#x000A;</div><div class='line' id='LC51'><span class="k">function </span>is_exist_file<span class="o">()</span>&#x000A;</div><div class='line' id='LC52'><span class="o">{</span>&#x000A;</div><div class='line' id='LC53'>    <span class="nv">filename</span><span class="o">=</span><span class="nv">$1</span>&#x000A;</div><div class='line' id='LC54'>    <span class="k">if</span> <span class="o">[</span> <span class="nt">-f</span> <span class="nv">$filename</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC55'><span class="k">        </span><span class="nb">echo </span>1&#x000A;</div><div class='line' id='LC56'>    <span class="k">else</span>&#x000A;</div><div class='line' id='LC57'><span class="k">        </span><span class="nb">echo </span>0&#x000A;</div><div class='line' id='LC58'>    <span class="k">fi</span>&#x000A;</div><div class='line' id='LC59'><span class="o">}</span>&#x000A;</div><div class='line' id='LC60'>&#x000A;</div><div class='line' id='LC61'><span class="c"># 判断目录是否存在</span>&#x000A;</div><div class='line' id='LC62'><span class="k">function </span>is_exist_dir<span class="o">()</span>&#x000A;</div><div class='line' id='LC63'><span class="o">{</span>&#x000A;</div><div class='line' id='LC64'>    <span class="nb">dir</span><span class="o">=</span><span class="nv">$1</span>&#x000A;</div><div class='line' id='LC65'>    <span class="k">if</span> <span class="o">[</span> <span class="nt">-d</span> <span class="nv">$dir</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC66'><span class="k">        </span><span class="nb">echo </span>1&#x000A;</div><div class='line' id='LC67'>    <span class="k">else</span>&#x000A;</div><div class='line' id='LC68'><span class="k">        </span><span class="nb">echo </span>0&#x000A;</div><div class='line' id='LC69'>    <span class="k">fi</span>&#x000A;</div><div class='line' id='LC70'><span class="o">}</span>&#x000A;</div><div class='line' id='LC71'>&#x000A;</div><div class='line' id='LC72'><span class="c">#备份原有的.vimrc文件</span>&#x000A;</div><div class='line' id='LC73'><span class="k">function </span>backup_vimrc_file<span class="o">()</span>&#x000A;</div><div class='line' id='LC74'><span class="o">{</span>&#x000A;</div><div class='line' id='LC75'>    <span class="nv">old_vimrc</span><span class="o">=</span><span class="nv">$HOME</span><span class="s2">"/.vimrc"</span>&#x000A;</div><div class='line' id='LC76'>    <span class="nv">is_exist</span><span class="o">=</span><span class="si">$(</span>is_exist_file <span class="nv">$old_vimrc</span><span class="si">)</span>&#x000A;</div><div class='line' id='LC77'>    <span class="k">if</span> <span class="o">[</span> <span class="nv">$is_exist</span> <span class="o">==</span> 1 <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC78'><span class="k">        </span><span class="nb">time</span><span class="o">=</span><span class="si">$(</span>get_datetime<span class="si">)</span>&#x000A;</div><div class='line' id='LC79'>        <span class="nv">backup_vimrc</span><span class="o">=</span><span class="nv">$old_vimrc</span><span class="s2">"_bak_"</span><span class="nv">$time</span>&#x000A;</div><div class='line' id='LC80'>        <span class="nb">read</span> <span class="nt">-p</span> <span class="s2">"Find "</span><span class="nv">$old_vimrc</span><span class="s2">" already exists,backup "</span><span class="nv">$old_vimrc</span><span class="s2">" to "</span><span class="nv">$backup_vimrc</span><span class="s2">"? [Y/N] "</span> ch&#x000A;</div><div class='line' id='LC81'>        <span class="k">if</span> <span class="o">[[</span> <span class="nv">$ch</span> <span class="o">==</span> <span class="s2">"Y"</span> <span class="o">]]</span> <span class="o">||</span> <span class="o">[[</span> <span class="nv">$ch</span> <span class="o">==</span> <span class="s2">"y"</span> <span class="o">]]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC82'><span class="k">            </span><span class="nb">cp</span> <span class="nv">$old_vimrc</span> <span class="nv">$backup_vimrc</span>&#x000A;</div><div class='line' id='LC83'>        <span class="k">fi</span>&#x000A;</div><div class='line' id='LC84'><span class="k">    fi</span>&#x000A;</div><div class='line' id='LC85'><span class="o">}</span>&#x000A;</div><div class='line' id='LC86'>&#x000A;</div><div class='line' id='LC87'><span class="c">#备份原有的.vimrc.custom.plugins文件</span>&#x000A;</div><div class='line' id='LC88'><span class="k">function </span>backup_vimrc_custom_plugins_file<span class="o">()</span>&#x000A;</div><div class='line' id='LC89'><span class="o">{</span>&#x000A;</div><div class='line' id='LC90'>    <span class="nv">old_vimrc_plugins</span><span class="o">=</span><span class="nv">$HOME</span><span class="s2">"/.vimrc.custom.plugins"</span>&#x000A;</div><div class='line' id='LC91'>    <span class="nv">is_exist</span><span class="o">=</span><span class="si">$(</span>is_exist_file <span class="nv">$old_vimrc_plugins</span><span class="si">)</span>&#x000A;</div><div class='line' id='LC92'>    <span class="k">if</span> <span class="o">[</span> <span class="nv">$is_exist</span> <span class="o">==</span> 1 <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC93'><span class="k">        </span><span class="nb">time</span><span class="o">=</span><span class="si">$(</span>get_datetime<span class="si">)</span>&#x000A;</div><div class='line' id='LC94'>        <span class="nv">backup_vimrc_plugins</span><span class="o">=</span><span class="nv">$old_vimrc_plugins</span><span class="s2">"_bak_"</span><span class="nv">$time</span>&#x000A;</div><div class='line' id='LC95'>        <span class="nb">read</span> <span class="nt">-p</span> <span class="s2">"Find "</span><span class="nv">$old_vimrc_plugins</span><span class="s2">" already exists,backup "</span><span class="nv">$old_vimrc_plugins</span><span class="s2">" to "</span><span class="nv">$backup_vimrc_plugins</span><span class="s2">"? [Y/N] "</span> ch&#x000A;</div><div class='line' id='LC96'>        <span class="k">if</span> <span class="o">[[</span> <span class="nv">$ch</span> <span class="o">==</span> <span class="s2">"Y"</span> <span class="o">]]</span> <span class="o">||</span> <span class="o">[[</span> <span class="nv">$ch</span> <span class="o">==</span> <span class="s2">"y"</span> <span class="o">]]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC97'><span class="k">            </span><span class="nb">cp</span> <span class="nv">$old_vimrc_plugins</span> <span class="nv">$backup_vimrc_plugins</span>&#x000A;</div><div class='line' id='LC98'>        <span class="k">fi</span>&#x000A;</div><div class='line' id='LC99'><span class="k">    fi</span>&#x000A;</div><div class='line' id='LC100'><span class="o">}</span>&#x000A;</div><div class='line' id='LC101'>&#x000A;</div><div class='line' id='LC102'><span class="c">#备份原有的.vimrc.custom.config文件</span>&#x000A;</div><div class='line' id='LC103'><span class="k">function </span>backup_vimrc_custom_config_file<span class="o">()</span>&#x000A;</div><div class='line' id='LC104'><span class="o">{</span>&#x000A;</div><div class='line' id='LC105'>    <span class="nv">old_vimrc_config</span><span class="o">=</span><span class="nv">$HOME</span><span class="s2">"/.vimrc.custom.config"</span>&#x000A;</div><div class='line' id='LC106'>    <span class="nv">is_exist</span><span class="o">=</span><span class="si">$(</span>is_exist_file <span class="nv">$old_vimrc_config</span><span class="si">)</span>&#x000A;</div><div class='line' id='LC107'>    <span class="k">if</span> <span class="o">[</span> <span class="nv">$is_exist</span> <span class="o">==</span> 1 <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC108'><span class="k">        </span><span class="nb">time</span><span class="o">=</span><span class="si">$(</span>get_datetime<span class="si">)</span>&#x000A;</div><div class='line' id='LC109'>        <span class="nv">backup_vimrc_config</span><span class="o">=</span><span class="nv">$old_vimrc_config</span><span class="s2">"_bak_"</span><span class="nv">$time</span>&#x000A;</div><div class='line' id='LC110'>        <span class="nb">read</span> <span class="nt">-p</span> <span class="s2">"Find "</span><span class="nv">$old_vimrc_config</span><span class="s2">" already exists,backup "</span><span class="nv">$old_vimrc_config</span><span class="s2">" to "</span><span class="nv">$backup_vimrc_config</span><span class="s2">"? [Y/N] "</span> ch&#x000A;</div><div class='line' id='LC111'>        <span class="k">if</span> <span class="o">[[</span> <span class="nv">$ch</span> <span class="o">==</span> <span class="s2">"Y"</span> <span class="o">]]</span> <span class="o">||</span> <span class="o">[[</span> <span class="nv">$ch</span> <span class="o">==</span> <span class="s2">"y"</span> <span class="o">]]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC112'><span class="k">            </span><span class="nb">cp</span> <span class="nv">$old_vimrc_config</span> <span class="nv">$backup_vimrc_config</span>&#x000A;</div><div class='line' id='LC113'>        <span class="k">fi</span>&#x000A;</div><div class='line' id='LC114'><span class="k">    fi</span>&#x000A;</div><div class='line' id='LC115'><span class="o">}</span>&#x000A;</div><div class='line' id='LC116'>&#x000A;</div><div class='line' id='LC117'><span class="c">#备份原有的.vim目录</span>&#x000A;</div><div class='line' id='LC118'><span class="k">function </span>backup_vim_dir<span class="o">()</span>&#x000A;</div><div class='line' id='LC119'><span class="o">{</span>&#x000A;</div><div class='line' id='LC120'>    <span class="nv">old_vim</span><span class="o">=</span><span class="nv">$HOME</span><span class="s2">"/.vim"</span>&#x000A;</div><div class='line' id='LC121'>    <span class="nv">is_exist</span><span class="o">=</span><span class="si">$(</span>is_exist_dir <span class="nv">$old_vim</span><span class="si">)</span>&#x000A;</div><div class='line' id='LC122'>    <span class="k">if</span> <span class="o">[</span> <span class="nv">$is_exist</span> <span class="o">==</span> 1 <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC123'><span class="k">        </span><span class="nb">time</span><span class="o">=</span><span class="si">$(</span>get_datetime<span class="si">)</span>&#x000A;</div><div class='line' id='LC124'>        <span class="nv">backup_vim</span><span class="o">=</span><span class="nv">$old_vim</span><span class="s2">"_bak_"</span><span class="nv">$time</span>&#x000A;</div><div class='line' id='LC125'>        <span class="nb">read</span> <span class="nt">-p</span> <span class="s2">"Find "</span><span class="nv">$old_vim</span><span class="s2">" already exists,backup "</span><span class="nv">$old_vim</span><span class="s2">" to "</span><span class="nv">$backup_vim</span><span class="s2">"? [Y/N] "</span> ch&#x000A;</div><div class='line' id='LC126'>        <span class="k">if</span> <span class="o">[[</span> <span class="nv">$ch</span> <span class="o">==</span> <span class="s2">"Y"</span> <span class="o">]]</span> <span class="o">||</span> <span class="o">[[</span> <span class="nv">$ch</span> <span class="o">==</span> <span class="s2">"y"</span> <span class="o">]]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC127'><span class="k">            </span><span class="nb">cp</span> <span class="nt">-R</span> <span class="nv">$old_vim</span> <span class="nv">$backup_vim</span>&#x000A;</div><div class='line' id='LC128'>        <span class="k">fi</span>&#x000A;</div><div class='line' id='LC129'><span class="k">    fi</span>&#x000A;</div><div class='line' id='LC130'><span class="o">}</span>&#x000A;</div><div class='line' id='LC131'>&#x000A;</div><div class='line' id='LC132'><span class="c"># 备份原有的.vimrc和.vim</span>&#x000A;</div><div class='line' id='LC133'><span class="k">function </span>backup_vimrc_and_vim<span class="o">()</span>&#x000A;</div><div class='line' id='LC134'><span class="o">{</span>&#x000A;</div><div class='line' id='LC135'>    backup_vimrc_file&#x000A;</div><div class='line' id='LC136'>    backup_vimrc_custom_plugins_file&#x000A;</div><div class='line' id='LC137'>    backup_vimrc_custom_config_file&#x000A;</div><div class='line' id='LC138'>    backup_vim_dir&#x000A;</div><div class='line' id='LC139'><span class="o">}</span>&#x000A;</div><div class='line' id='LC140'>&#x000A;</div><div class='line' id='LC141'><span class="c"># 获取ubuntu版本</span>&#x000A;</div><div class='line' id='LC142'><span class="k">function </span>get_ubuntu_version<span class="o">()</span>&#x000A;</div><div class='line' id='LC143'><span class="o">{</span>&#x000A;</div><div class='line' id='LC144'>    <span class="nv">line</span><span class="o">=</span><span class="si">$(</span><span class="nb">cat</span> /etc/lsb-release | <span class="nb">grep</span> <span class="s2">"DISTRIB_RELEASE"</span><span class="si">)</span>&#x000A;</div><div class='line' id='LC145'>    <span class="nv">arr</span><span class="o">=(</span><span class="k">${</span><span class="nv">line</span><span class="p">//=/ </span><span class="k">}</span><span class="o">)</span>&#x000A;</div><div class='line' id='LC146'>    <span class="nv">version</span><span class="o">=(</span><span class="k">${</span><span class="nv">arr</span><span class="p">[1]//./ </span><span class="k">}</span><span class="o">)</span>&#x000A;</div><div class='line' id='LC147'>&#x000A;</div><div class='line' id='LC148'>    <span class="nb">echo</span> <span class="k">${</span><span class="nv">version</span><span class="p">[0]</span><span class="k">}</span>&#x000A;</div><div class='line' id='LC149'><span class="o">}</span>&#x000A;</div><div class='line' id='LC150'>&#x000A;</div><div class='line' id='LC151'><span class="c"># 获取alpine版本</span>&#x000A;</div><div class='line' id='LC152'><span class="k">function </span>get_alpine_version<span class="o">()</span>&#x000A;</div><div class='line' id='LC153'><span class="o">{</span>&#x000A;</div><div class='line' id='LC154'>    <span class="nv">version</span><span class="o">=</span><span class="si">$(</span><span class="nb">cat</span> /etc/os-release | <span class="nb">grep</span> <span class="s1">'VERSION_ID'</span> | <span class="nb">awk</span> <span class="nt">-F</span> <span class="s1">'='</span> <span class="s1">'{print $2}'</span><span class="si">)</span>&#x000A;</div><div class='line' id='LC155'>    &#x000A;</div><div class='line' id='LC156'>    <span class="nb">echo</span> <span class="nv">$version</span>&#x000A;</div><div class='line' id='LC157'><span class="o">}</span>&#x000A;</div><div class='line' id='LC158'>&#x000A;</div><div class='line' id='LC159'><span class="c"># 获取centos版本</span>&#x000A;</div><div class='line' id='LC160'><span class="k">function </span>get_centos_version<span class="o">()</span>&#x000A;</div><div class='line' id='LC161'><span class="o">{</span>&#x000A;</div><div class='line' id='LC162'>    <span class="nv">version</span><span class="o">=</span><span class="sb">`</span><span class="nb">cat</span> /etc/redhat-release | <span class="nb">awk</span> <span class="s1">'{print $4}'</span> | <span class="nb">awk</span> <span class="nt">-F</span> <span class="nb">.</span> <span class="s1">'{printf "%s",$1}'</span><span class="sb">`</span>&#x000A;</div><div class='line' id='LC163'>    <span class="nb">echo</span> <span class="nv">$version</span>&#x000A;</div><div class='line' id='LC164'><span class="o">}</span>&#x000A;</div><div class='line' id='LC165'>&#x000A;</div><div class='line' id='LC166'><span class="c"># 判断是否是macos10.14版本</span>&#x000A;</div><div class='line' id='LC167'><span class="k">function </span>is_macos1014<span class="o">()</span>&#x000A;</div><div class='line' id='LC168'><span class="o">{</span>&#x000A;</div><div class='line' id='LC169'>    <span class="nv">product_version</span><span class="o">=</span><span class="si">$(</span>sw_vers | <span class="nb">grep </span>ProductVersion<span class="si">)</span>&#x000A;</div><div class='line' id='LC170'>    <span class="k">if</span> <span class="o">[[</span> <span class="nv">$product_version</span> <span class="o">=</span>~ <span class="s2">"10.14"</span> <span class="o">]]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC171'><span class="k">        </span><span class="nb">echo </span>1&#x000A;</div><div class='line' id='LC172'>    <span class="k">else</span>&#x000A;</div><div class='line' id='LC173'><span class="k">        </span><span class="nb">echo </span>0&#x000A;</div><div class='line' id='LC174'>    <span class="k">fi</span>&#x000A;</div><div class='line' id='LC175'><span class="o">}</span>&#x000A;</div><div class='line' id='LC176'>&#x000A;</div><div class='line' id='LC177'><span class="c"># 在alpine上直装vim8.2</span>&#x000A;</div><div class='line' id='LC178'><span class="c"># function compile_vim_on_alpine()</span>&#x000A;</div><div class='line' id='LC179'><span class="c"># {</span>&#x000A;</div><div class='line' id='LC180'><span class="c">#     apk --upgrade add vim</span>&#x000A;</div><div class='line' id='LC181'><span class="c">#     cd -</span>&#x000A;</div><div class='line' id='LC182'><span class="c"># }</span>&#x000A;</div><div class='line' id='LC183'>&#x000A;</div><div class='line' id='LC184'><span class="c"># 在ubuntu上源代码安装vim</span>&#x000A;</div><div class='line' id='LC185'><span class="k">function </span>compile_vim_on_ubuntu<span class="o">()</span>&#x000A;</div><div class='line' id='LC186'><span class="o">{</span>&#x000A;</div><div class='line' id='LC187'>    <span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> libncurses5-dev libncurses5 libgnome2-dev libgnomeui-dev <span class="se">\</span>&#x000A;</div><div class='line' id='LC188'>        libgtk2.0-dev libatk1.0-dev libbonoboui2-dev <span class="se">\</span>&#x000A;</div><div class='line' id='LC189'>        libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev lua5.1 lua5.1-dev&#x000A;</div><div class='line' id='LC190'>&#x000A;</div><div class='line' id='LC191'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/vim82&#x000A;</div><div class='line' id='LC192'>    git clone https://gitee.com/chxuan/vim82.git ~/vim82&#x000A;</div><div class='line' id='LC193'>    <span class="nb">cd</span> ~/vim82&#x000A;</div><div class='line' id='LC194'>    ./configure <span class="nt">--with-features</span><span class="o">=</span>huge <span class="se">\</span>&#x000A;</div><div class='line' id='LC195'>        <span class="nt">--enable-multibyte</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC196'>        <span class="nt">--enable-rubyinterp</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC197'>        <span class="nt">--enable-pythoninterp</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC198'>        <span class="nt">--enable-perlinterp</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC199'>        <span class="nt">--enable-luainterp</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC200'>        <span class="nt">--enable-gui</span><span class="o">=</span>gtk2 <span class="se">\</span>&#x000A;</div><div class='line' id='LC201'>        <span class="nt">--enable-cscope</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC202'>        <span class="nt">--prefix</span><span class="o">=</span>/usr&#x000A;</div><div class='line' id='LC203'>    make&#x000A;</div><div class='line' id='LC204'>    <span class="nb">sudo </span>make <span class="nb">install</span>&#x000A;</div><div class='line' id='LC205'><span class="nb">    cd</span> -&#x000A;</div><div class='line' id='LC206'><span class="o">}</span>&#x000A;</div><div class='line' id='LC207'>&#x000A;</div><div class='line' id='LC208'><span class="c"># 在debian上源代码安装vim</span>&#x000A;</div><div class='line' id='LC209'><span class="k">function </span>compile_vim_on_debian<span class="o">()</span>&#x000A;</div><div class='line' id='LC210'><span class="o">{</span>&#x000A;</div><div class='line' id='LC211'>    <span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> libncurses5-dev libncurses5 libgtk2.0-dev libatk1.0-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev lua5.1 lua5.1-dev&#x000A;</div><div class='line' id='LC212'>&#x000A;</div><div class='line' id='LC213'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/vim82&#x000A;</div><div class='line' id='LC214'>    git clone https://gitee.com/chxuan/vim82.git ~/vim82&#x000A;</div><div class='line' id='LC215'>    <span class="nb">cd</span> ~/vim82&#x000A;</div><div class='line' id='LC216'>    ./configure <span class="nt">--with-features</span><span class="o">=</span>huge <span class="se">\</span>&#x000A;</div><div class='line' id='LC217'>        <span class="nt">--enable-multibyte</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC218'>        <span class="nt">--enable-rubyinterp</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC219'>        <span class="nt">--enable-pythoninterp</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC220'>        <span class="nt">--enable-perlinterp</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC221'>        <span class="nt">--enable-luainterp</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC222'>        <span class="nt">--enable-gui</span><span class="o">=</span>gtk2 <span class="se">\</span>&#x000A;</div><div class='line' id='LC223'>        <span class="nt">--enable-cscope</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC224'>        <span class="nt">--prefix</span><span class="o">=</span>/usr&#x000A;</div><div class='line' id='LC225'>    make&#x000A;</div><div class='line' id='LC226'>    <span class="nb">sudo </span>make <span class="nb">install</span>&#x000A;</div><div class='line' id='LC227'><span class="nb">    cd</span> -&#x000A;</div><div class='line' id='LC228'><span class="o">}</span>&#x000A;</div><div class='line' id='LC229'>&#x000A;</div><div class='line' id='LC230'><span class="c"># 在parrot上源代码安装vim</span>&#x000A;</div><div class='line' id='LC231'><span class="k">function </span>compile_vim_on_parrot<span class="o">()</span>&#x000A;</div><div class='line' id='LC232'><span class="o">{</span>&#x000A;</div><div class='line' id='LC233'>    <span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> libncurses5-dev libncurses5 libgtk2.0-dev libatk1.0-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev lua5.1 vim&#x000A;</div><div class='line' id='LC234'>&#x000A;</div><div class='line' id='LC235'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/vim82&#x000A;</div><div class='line' id='LC236'>    git clone https://gitee.com/chxuan/vim82.git ~/vim82&#x000A;</div><div class='line' id='LC237'>    <span class="nb">cd</span> ~/vim82&#x000A;</div><div class='line' id='LC238'>    ./configure <span class="nt">--with-features</span><span class="o">=</span>huge <span class="se">\</span>&#x000A;</div><div class='line' id='LC239'>        <span class="nt">--enable-multibyte</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC240'>        <span class="nt">--enable-rubyinterp</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC241'>        <span class="nt">--enable-pythoninterp</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC242'>        <span class="nt">--enable-perlinterp</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC243'>        <span class="nt">--enable-luainterp</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC244'>        <span class="nt">--enable-gui</span><span class="o">=</span>gtk2 <span class="se">\</span>&#x000A;</div><div class='line' id='LC245'>        <span class="nt">--enable-cscope</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC246'>        <span class="nt">--prefix</span><span class="o">=</span>/usr&#x000A;</div><div class='line' id='LC247'>    make&#x000A;</div><div class='line' id='LC248'>    <span class="nb">sudo </span>make <span class="nb">install</span>&#x000A;</div><div class='line' id='LC249'><span class="nb">    cd</span> -&#x000A;</div><div class='line' id='LC250'><span class="o">}</span>&#x000A;</div><div class='line' id='LC251'>&#x000A;</div><div class='line' id='LC252'><span class="c"># 在centos上源代码安装vim</span>&#x000A;</div><div class='line' id='LC253'><span class="k">function </span>compile_vim_on_centos<span class="o">()</span>&#x000A;</div><div class='line' id='LC254'><span class="o">{</span>&#x000A;</div><div class='line' id='LC255'>    <span class="nb">sudo </span>yum <span class="nb">install</span> <span class="nt">-y</span> ruby ruby-devel lua lua-devel luajit <span class="se">\</span>&#x000A;</div><div class='line' id='LC256'>        luajit-devel ctags git python python-devel <span class="se">\</span>&#x000A;</div><div class='line' id='LC257'>        python34 python34-devel tcl-devel <span class="se">\</span>&#x000A;</div><div class='line' id='LC258'>        perl perl-devel perl-ExtUtils-ParseXS <span class="se">\</span>&#x000A;</div><div class='line' id='LC259'>        perl-ExtUtils-XSpp perl-ExtUtils-CBuilder <span class="se">\</span>&#x000A;</div><div class='line' id='LC260'>        perl-ExtUtils-Embed libX11-devel ncurses-devel&#x000A;</div><div class='line' id='LC261'>    &#x000A;</div><div class='line' id='LC262'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/vim82&#x000A;</div><div class='line' id='LC263'>    git clone https://gitee.com/chxuan/vim82.git ~/vim82&#x000A;</div><div class='line' id='LC264'>    <span class="nb">cd</span> ~/vim82&#x000A;</div><div class='line' id='LC265'>    ./configure <span class="nt">--with-features</span><span class="o">=</span>huge <span class="se">\</span>&#x000A;</div><div class='line' id='LC266'>        <span class="nt">--enable-multibyte</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC267'>        <span class="nt">--with-tlib</span><span class="o">=</span>tinfo <span class="se">\</span>&#x000A;</div><div class='line' id='LC268'>        <span class="nt">--enable-rubyinterp</span><span class="o">=</span><span class="nb">yes</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC269'>        <span class="nt">--enable-pythoninterp</span><span class="o">=</span><span class="nb">yes</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC270'>        <span class="nt">--enable-perlinterp</span><span class="o">=</span><span class="nb">yes</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC271'>        <span class="nt">--enable-luainterp</span><span class="o">=</span><span class="nb">yes</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC272'>        <span class="nt">--enable-gui</span><span class="o">=</span>gtk2 <span class="se">\</span>&#x000A;</div><div class='line' id='LC273'>        <span class="nt">--enable-cscope</span> <span class="se">\</span>&#x000A;</div><div class='line' id='LC274'>        <span class="nt">--prefix</span><span class="o">=</span>/usr&#x000A;</div><div class='line' id='LC275'>    make&#x000A;</div><div class='line' id='LC276'>    <span class="nb">sudo </span>make <span class="nb">install</span>&#x000A;</div><div class='line' id='LC277'><span class="nb">    cd</span> -&#x000A;</div><div class='line' id='LC278'><span class="o">}</span>&#x000A;</div><div class='line' id='LC279'>&#x000A;</div><div class='line' id='LC280'><span class="c"># 安装mac平台必备软件</span>&#x000A;</div><div class='line' id='LC281'><span class="k">function </span>install_prepare_software_on_mac<span class="o">()</span>&#x000A;</div><div class='line' id='LC282'><span class="o">{</span>&#x000A;</div><div class='line' id='LC283'>    xcode-select <span class="nt">--install</span>&#x000A;</div><div class='line' id='LC284'>&#x000A;</div><div class='line' id='LC285'>    brew <span class="nb">install </span>vim gcc cmake ctags-exuberant ack&#x000A;</div><div class='line' id='LC286'>&#x000A;</div><div class='line' id='LC287'>    <span class="nv">macos1014</span><span class="o">=</span><span class="si">$(</span>is_macos1014<span class="si">)</span>&#x000A;</div><div class='line' id='LC288'>    <span class="k">if</span> <span class="o">[</span> <span class="nv">$macos1014</span> <span class="o">==</span> 1 <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC289'><span class="k">        </span>open /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg&#x000A;</div><div class='line' id='LC290'>    <span class="k">fi</span>&#x000A;</div><div class='line' id='LC291'><span class="o">}</span>&#x000A;</div><div class='line' id='LC292'>&#x000A;</div><div class='line' id='LC293'><span class="c"># 安装FreeBSD必备软件</span>&#x000A;</div><div class='line' id='LC294'><span class="k">function </span>install_prepare_software_on_freebsd<span class="o">()</span>&#x000A;</div><div class='line' id='LC295'><span class="o">{</span>&#x000A;</div><div class='line' id='LC296'>    <span class="nb">sudo </span>pkg <span class="nb">install</span> <span class="nt">-y</span> vim ctags automake gcc cmake p5-ack python git fontconfig&#x000A;</div><div class='line' id='LC297'><span class="o">}</span>&#x000A;</div><div class='line' id='LC298'>&#x000A;</div><div class='line' id='LC299'><span class="c"># 安装android平台必备软件</span>&#x000A;</div><div class='line' id='LC300'><span class="k">function </span>install_prepare_software_on_android<span class="o">()</span>&#x000A;</div><div class='line' id='LC301'><span class="o">{</span>&#x000A;</div><div class='line' id='LC302'>    pkg update&#x000A;</div><div class='line' id='LC303'>    pkg <span class="nb">install</span> <span class="nt">-y</span> git vim-python cmake python2 python ctags ack-grep ncurses-utils&#x000A;</div><div class='line' id='LC304'><span class="o">}</span>&#x000A;</div><div class='line' id='LC305'>&#x000A;</div><div class='line' id='LC306'><span class="c"># 安装alpine必备软件 需要更换源</span>&#x000A;</div><div class='line' id='LC307'><span class="k">function </span>install_prepare_software_on_alpine<span class="o">()</span>&#x000A;</div><div class='line' id='LC308'><span class="o">{</span>&#x000A;</div><div class='line' id='LC309'>    <span class="nb">sed</span> <span class="nt">-i</span> <span class="s2">"s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g"</span> /etc/apk/repositories&#x000A;</div><div class='line' id='LC310'>&#x000A;</div><div class='line' id='LC311'>    <span class="nv">version</span><span class="o">=</span><span class="si">$(</span>get_alpine_version<span class="si">)</span>&#x000A;</div><div class='line' id='LC312'>&#x000A;</div><div class='line' id='LC313'>    apk update&#x000A;</div><div class='line' id='LC314'>&#x000A;</div><div class='line' id='LC315'>    apk add python3 python3-dev ruby ruby-dev lua lua-dev luajit luajit-dev ctags tcl tcl-dev perl perl-dev libx11 libx11-dev ncurses ncurses-dev g++ gcc make automake cmake fontconfig fontconfig-dev nerd-fonts gcompat clang clang-dev vim&#x000A;</div><div class='line' id='LC316'><span class="o">}</span>&#x000A;</div><div class='line' id='LC317'>&#x000A;</div><div class='line' id='LC318'><span class="c"># 安装ubuntu必备软件</span>&#x000A;</div><div class='line' id='LC319'><span class="k">function </span>install_prepare_software_on_ubuntu<span class="o">()</span>&#x000A;</div><div class='line' id='LC320'><span class="o">{</span>&#x000A;</div><div class='line' id='LC321'>    <span class="nb">sudo </span>apt-get update&#x000A;</div><div class='line' id='LC322'>&#x000A;</div><div class='line' id='LC323'>    <span class="nv">version</span><span class="o">=</span><span class="si">$(</span>get_ubuntu_version<span class="si">)</span>&#x000A;</div><div class='line' id='LC324'>    <span class="k">if</span> <span class="o">[</span> <span class="nv">$version</span> <span class="nt">-eq</span> 14 <span class="o">]</span><span class="p">;</span><span class="k">then</span>&#x000A;</div><div class='line' id='LC325'><span class="k">        </span><span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> cmake3&#x000A;</div><div class='line' id='LC326'>    <span class="k">else</span>&#x000A;</div><div class='line' id='LC327'><span class="k">        </span><span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> cmake&#x000A;</div><div class='line' id='LC328'>    <span class="k">fi</span>&#x000A;</div><div class='line' id='LC329'>&#x000A;</div><div class='line' id='LC330'><span class="k">    </span><span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> build-essential python python-dev python3-dev fontconfig libfile-next-perl ack-grep git&#x000A;</div><div class='line' id='LC331'>    <span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> universal-ctags <span class="o">||</span> <span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> exuberant-ctags&#x000A;</div><div class='line' id='LC332'>    &#x000A;</div><div class='line' id='LC333'>    <span class="k">if</span> <span class="o">[</span> <span class="nv">$version</span> <span class="nt">-ge</span> 18 <span class="o">]</span><span class="p">;</span><span class="k">then</span>&#x000A;</div><div class='line' id='LC334'><span class="k">        </span><span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> vim&#x000A;</div><div class='line' id='LC335'>    <span class="k">else</span>&#x000A;</div><div class='line' id='LC336'><span class="k">        </span>compile_vim_on_ubuntu&#x000A;</div><div class='line' id='LC337'>    <span class="k">fi</span>&#x000A;</div><div class='line' id='LC338'><span class="o">}</span>&#x000A;</div><div class='line' id='LC339'>&#x000A;</div><div class='line' id='LC340'><span class="c"># 安装ubuntu系必备软件</span>&#x000A;</div><div class='line' id='LC341'><span class="k">function </span>install_prepare_software_on_ubuntu_like<span class="o">()</span>&#x000A;</div><div class='line' id='LC342'><span class="o">{</span>&#x000A;</div><div class='line' id='LC343'>    <span class="nb">sudo </span>apt-get update&#x000A;</div><div class='line' id='LC344'>    <span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> cmake build-essential python python-dev python3-dev fontconfig libfile-next-perl ack-grep git&#x000A;</div><div class='line' id='LC345'>    <span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> universal-ctags <span class="o">||</span> <span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> exuberant-ctags&#x000A;</div><div class='line' id='LC346'>    compile_vim_on_ubuntu&#x000A;</div><div class='line' id='LC347'><span class="o">}</span>&#x000A;</div><div class='line' id='LC348'>&#x000A;</div><div class='line' id='LC349'><span class="c"># 安装debian必备软件</span>&#x000A;</div><div class='line' id='LC350'><span class="k">function </span>install_prepare_software_on_debian<span class="o">()</span>&#x000A;</div><div class='line' id='LC351'><span class="o">{</span>&#x000A;</div><div class='line' id='LC352'>    <span class="nb">sudo </span>apt-get update&#x000A;</div><div class='line' id='LC353'>    <span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> cmake build-essential python python-dev python3-dev fontconfig libfile-next-perl ack git&#x000A;</div><div class='line' id='LC354'>    <span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> universal-ctags <span class="o">||</span> <span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> exuberant-ctags&#x000A;</div><div class='line' id='LC355'>    compile_vim_on_debian&#x000A;</div><div class='line' id='LC356'><span class="o">}</span>&#x000A;</div><div class='line' id='LC357'>&#x000A;</div><div class='line' id='LC358'><span class="c"># 安装parrot必备软件</span>&#x000A;</div><div class='line' id='LC359'><span class="k">function </span>install_prepare_software_on_parrot<span class="o">()</span>&#x000A;</div><div class='line' id='LC360'><span class="o">{</span>&#x000A;</div><div class='line' id='LC361'>    <span class="nb">sudo </span>apt-get update&#x000A;</div><div class='line' id='LC362'>    <span class="nb">sudo </span>apt-get <span class="nb">install</span> <span class="nt">-y</span> cmake exuberant-ctags build-essential python python-dev python3-dev fontconfig libfile-next-perl ack git&#x000A;</div><div class='line' id='LC363'>    compile_vim_on_parrot&#x000A;</div><div class='line' id='LC364'><span class="o">}</span>&#x000A;</div><div class='line' id='LC365'>&#x000A;</div><div class='line' id='LC366'><span class="c"># 安装centos必备软件</span>&#x000A;</div><div class='line' id='LC367'><span class="k">function </span>install_prepare_software_on_centos<span class="o">()</span>&#x000A;</div><div class='line' id='LC368'><span class="o">{</span>&#x000A;</div><div class='line' id='LC369'>    <span class="nv">version</span><span class="o">=</span><span class="si">$(</span>get_centos_version<span class="si">)</span>&#x000A;</div><div class='line' id='LC370'>    <span class="k">if</span> <span class="o">[</span> <span class="nv">$version</span> <span class="nt">-ge</span> 8 <span class="o">]</span><span class="p">;</span><span class="k">then</span>&#x000A;</div><div class='line' id='LC371'><span class="k">        </span><span class="nb">sudo </span>dnf <span class="nb">install</span> <span class="nt">-y</span> epel-release&#x000A;</div><div class='line' id='LC372'>        <span class="nb">sudo </span>dnf <span class="nb">install</span> <span class="nt">-y</span> vim ctags automake gcc gcc-c++ kernel-devel make cmake python2 python2-devel python3-devel fontconfig ack git&#x000A;</div><div class='line' id='LC373'>    <span class="k">else</span>&#x000A;</div><div class='line' id='LC374'><span class="k">        </span><span class="nb">sudo </span>yum <span class="nb">install</span> <span class="nt">-y</span> ctags automake gcc gcc-c++ kernel-devel cmake python-devel python3-devel fontconfig ack git&#x000A;</div><div class='line' id='LC375'>        compile_vim_on_centos&#x000A;</div><div class='line' id='LC376'>    <span class="k">fi</span>&#x000A;</div><div class='line' id='LC377'><span class="o">}</span>&#x000A;</div><div class='line' id='LC378'>&#x000A;</div><div class='line' id='LC379'><span class="c"># 安装fedora必备软件</span>&#x000A;</div><div class='line' id='LC380'><span class="k">function </span>install_prepare_software_on_fedora<span class="o">()</span>&#x000A;</div><div class='line' id='LC381'><span class="o">{</span>&#x000A;</div><div class='line' id='LC382'>    <span class="nb">sudo </span>dnf <span class="nb">install</span> <span class="nt">-y</span> vim ctags automake gcc gcc-c++ kernel-devel cmake python-devel python3-devel fontconfig ack git&#x000A;</div><div class='line' id='LC383'><span class="o">}</span>&#x000A;</div><div class='line' id='LC384'>&#x000A;</div><div class='line' id='LC385'><span class="c"># 安装archlinux必备软件</span>&#x000A;</div><div class='line' id='LC386'><span class="k">function </span>install_prepare_software_on_archlinux<span class="o">()</span>&#x000A;</div><div class='line' id='LC387'><span class="o">{</span>&#x000A;</div><div class='line' id='LC388'>    <span class="nb">sudo </span>pacman <span class="nt">-S</span> <span class="nt">--noconfirm</span> vim ctags automake gcc cmake python3 python2 ack git fontconfig&#x000A;</div><div class='line' id='LC389'>    <span class="nb">sudo ln</span> <span class="nt">-s</span> /usr/lib/libtinfo.so.6 /usr/lib/libtinfo.so.5&#x000A;</div><div class='line' id='LC390'><span class="o">}</span>&#x000A;</div><div class='line' id='LC391'>&#x000A;</div><div class='line' id='LC392'><span class="c"># 安装gentoo必备软件</span>&#x000A;</div><div class='line' id='LC393'><span class="k">function </span>install_prepare_software_on_gentoo<span class="o">()</span>&#x000A;</div><div class='line' id='LC394'><span class="o">{</span>&#x000A;</div><div class='line' id='LC395'>    install_software_on_gentoo app-editors/vim dev-util/ctags sys-devel/automake sys-devel/gcc dev-util/cmake sys-apps/ack dev-vcs/git media-libs/fontconfig&#x000A;</div><div class='line' id='LC396'>    su - <span class="nt">-c</span> <span class="s2">"ln -s /usr/lib/libtinfo.so.6 /usr/lib/libtinfo.so.5"</span> <span class="nt">-s</span> /bin/bash&#x000A;</div><div class='line' id='LC397'><span class="o">}</span>&#x000A;</div><div class='line' id='LC398'>&#x000A;</div><div class='line' id='LC399'><span class="k">function </span>install_software_on_gentoo<span class="o">()</span>&#x000A;</div><div class='line' id='LC400'><span class="o">{</span>&#x000A;</div><div class='line' id='LC401'>    <span class="nv">pkgs</span><span class="o">=</span><span class="nv">$*</span>&#x000A;</div><div class='line' id='LC402'>    <span class="nv">pkg_need_install</span><span class="o">=</span><span class="s2">""</span>&#x000A;</div><div class='line' id='LC403'>    <span class="k">for </span>pkg <span class="k">in</span> <span class="k">${</span><span class="nv">pkgs</span><span class="k">}</span>&#x000A;</div><div class='line' id='LC404'>    <span class="k">do</span>&#x000A;</div><div class='line' id='LC405'><span class="k">        if </span>qlist <span class="nt">-I</span> | <span class="nb">grep</span> <span class="nt">-Eq</span> <span class="nv">$pkg</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC406'><span class="k">            </span><span class="nb">echo</span> <span class="s2">"</span><span class="nv">$pkg</span><span class="s2"> is already installed."</span>&#x000A;</div><div class='line' id='LC407'>        <span class="k">else</span>&#x000A;</div><div class='line' id='LC408'><span class="k">            </span><span class="nv">pkg_need_install</span><span class="o">=</span><span class="s2">"</span><span class="nv">$pkg_need_install</span><span class="s2"> </span><span class="nv">$pkg</span><span class="s2">"</span>&#x000A;</div><div class='line' id='LC409'>        <span class="k">fi</span>&#x000A;</div><div class='line' id='LC410'><span class="k">    done</span>&#x000A;</div><div class='line' id='LC411'>&#x000A;</div><div class='line' id='LC412'><span class="k">    if </span><span class="nb">sudo</span> <span class="nt">-l</span> | <span class="nb">grep</span> <span class="nt">-Eq</span> <span class="s2">"emerge"</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC413'><span class="k">        </span><span class="nb">sudo </span>emerge <span class="nt">-v</span> <span class="nv">$pkg_need_install</span> &#x000A;</div><div class='line' id='LC414'>    <span class="k">else</span>&#x000A;</div><div class='line' id='LC415'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Need Root password:"</span>&#x000A;</div><div class='line' id='LC416'>        su - <span class="nt">-c</span> <span class="s2">"emerge -v </span><span class="nv">$pkg_need_install</span><span class="s2">"</span> <span class="nt">-s</span> /bin/bash&#x000A;</div><div class='line' id='LC417'>    <span class="k">fi</span>&#x000A;</div><div class='line' id='LC418'><span class="o">}</span>&#x000A;</div><div class='line' id='LC419'>&#x000A;</div><div class='line' id='LC420'><span class="c"># 安装opensuse必备软件</span>&#x000A;</div><div class='line' id='LC421'><span class="k">function </span>install_prepare_software_on_opensuse<span class="o">()</span>&#x000A;</div><div class='line' id='LC422'><span class="o">{</span>&#x000A;</div><div class='line' id='LC423'>    <span class="nb">sudo </span>zypper <span class="nb">install</span> <span class="nt">-y</span> vim ctags gcc gcc-c++ cmake python-devel python3-devel ack fontconfig git ncurses5-devel&#x000A;</div><div class='line' id='LC424'><span class="o">}</span>&#x000A;</div><div class='line' id='LC425'>&#x000A;</div><div class='line' id='LC426'><span class="c"># 拷贝文件</span>&#x000A;</div><div class='line' id='LC427'><span class="k">function </span>copy_files<span class="o">()</span>&#x000A;</div><div class='line' id='LC428'><span class="o">{</span>&#x000A;</div><div class='line' id='LC429'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/.vimrc&#x000A;</div><div class='line' id='LC430'>    <span class="nb">ln</span> <span class="nt">-s</span> <span class="k">${</span><span class="nv">PWD</span><span class="k">}</span>/.vimrc ~&#x000A;</div><div class='line' id='LC431'>&#x000A;</div><div class='line' id='LC432'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/.vimrc.custom.plugins&#x000A;</div><div class='line' id='LC433'>    <span class="nb">cp</span> <span class="k">${</span><span class="nv">PWD</span><span class="k">}</span>/.vimrc.custom.plugins ~&#x000A;</div><div class='line' id='LC434'>&#x000A;</div><div class='line' id='LC435'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/.vimrc.custom.config&#x000A;</div><div class='line' id='LC436'>    <span class="nb">cp</span> <span class="k">${</span><span class="nv">PWD</span><span class="k">}</span>/.vimrc.custom.config ~&#x000A;</div><div class='line' id='LC437'>&#x000A;</div><div class='line' id='LC438'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/.ycm_extra_conf.py&#x000A;</div><div class='line' id='LC439'>    <span class="nb">ln</span> <span class="nt">-s</span> <span class="k">${</span><span class="nv">PWD</span><span class="k">}</span>/.ycm_extra_conf.py ~&#x000A;</div><div class='line' id='LC440'>&#x000A;</div><div class='line' id='LC441'>    <span class="nb">mkdir</span> ~/.vim&#x000A;</div><div class='line' id='LC442'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/.vim/colors&#x000A;</div><div class='line' id='LC443'>    <span class="nb">ln</span> <span class="nt">-s</span> <span class="k">${</span><span class="nv">PWD</span><span class="k">}</span>/colors ~/.vim&#x000A;</div><div class='line' id='LC444'>&#x000A;</div><div class='line' id='LC445'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/.vim/ftplugin&#x000A;</div><div class='line' id='LC446'>    <span class="nb">ln</span> <span class="nt">-s</span> <span class="k">${</span><span class="nv">PWD</span><span class="k">}</span>/ftplugin ~/.vim&#x000A;</div><div class='line' id='LC447'>&#x000A;</div><div class='line' id='LC448'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/.vim/autoload&#x000A;</div><div class='line' id='LC449'>    <span class="nb">ln</span> <span class="nt">-s</span> <span class="k">${</span><span class="nv">PWD</span><span class="k">}</span>/autoload ~/.vim&#x000A;</div><div class='line' id='LC450'><span class="o">}</span>&#x000A;</div><div class='line' id='LC451'>&#x000A;</div><div class='line' id='LC452'><span class="c"># 安装mac平台字体</span>&#x000A;</div><div class='line' id='LC453'><span class="k">function </span>install_fonts_on_mac<span class="o">()</span>&#x000A;</div><div class='line' id='LC454'><span class="o">{</span>&#x000A;</div><div class='line' id='LC455'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/Library/Fonts/Droid<span class="se">\ </span>Sans<span class="se">\ </span>Mono<span class="se">\ </span>Nerd<span class="se">\ </span>Font<span class="se">\ </span>Complete.otf&#x000A;</div><div class='line' id='LC456'>    <span class="nb">cp</span> ./fonts/Droid<span class="se">\ </span>Sans<span class="se">\ </span>Mono<span class="se">\ </span>Nerd<span class="se">\ </span>Font<span class="se">\ </span>Complete.otf ~/Library/Fonts&#x000A;</div><div class='line' id='LC457'><span class="o">}</span>&#x000A;</div><div class='line' id='LC458'>&#x000A;</div><div class='line' id='LC459'><span class="c"># 安装android平台字体</span>&#x000A;</div><div class='line' id='LC460'><span class="k">function </span>install_fonts_on_android<span class="o">()</span>&#x000A;</div><div class='line' id='LC461'><span class="o">{</span>&#x000A;</div><div class='line' id='LC462'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/.termux/font.ttf&#x000A;</div><div class='line' id='LC463'>    <span class="nb">mkdir</span> ~/.termux&#x000A;</div><div class='line' id='LC464'>    <span class="nb">cp</span> ./fonts/DejaVu.ttf ~/.termux/font.ttf&#x000A;</div><div class='line' id='LC465'>&#x000A;</div><div class='line' id='LC466'>    <span class="c"># 刷新style</span>&#x000A;</div><div class='line' id='LC467'>    <span class="nv">REL</span><span class="o">=</span><span class="s2">"am broadcast --user 0 -a com.termux.app.reload_style com.termux"</span>&#x000A;</div><div class='line' id='LC468'>    <span class="nv">$REL</span> <span class="o">&gt;</span> /dev/null&#x000A;</div><div class='line' id='LC469'><span class="o">}</span>&#x000A;</div><div class='line' id='LC470'>&#x000A;</div><div class='line' id='LC471'><span class="c"># 安装linux平台字体</span>&#x000A;</div><div class='line' id='LC472'><span class="k">function </span>install_fonts_on_linux<span class="o">()</span>&#x000A;</div><div class='line' id='LC473'><span class="o">{</span>&#x000A;</div><div class='line' id='LC474'>    <span class="nb">mkdir</span> <span class="nt">-p</span> ~/.local/share/fonts&#x000A;</div><div class='line' id='LC475'>    <span class="nb">rm</span> <span class="nt">-rf</span> ~/.local/share/fonts/Droid<span class="se">\ </span>Sans<span class="se">\ </span>Mono<span class="se">\ </span>Nerd<span class="se">\ </span>Font<span class="se">\ </span>Complete.otf&#x000A;</div><div class='line' id='LC476'>    <span class="nb">cp</span> ./fonts/Droid<span class="se">\ </span>Sans<span class="se">\ </span>Mono<span class="se">\ </span>Nerd<span class="se">\ </span>Font<span class="se">\ </span>Complete.otf ~/.local/share/fonts&#x000A;</div><div class='line' id='LC477'>&#x000A;</div><div class='line' id='LC478'>    fc-cache <span class="nt">-vf</span> ~/.local/share/fonts&#x000A;</div><div class='line' id='LC479'><span class="o">}</span>&#x000A;</div><div class='line' id='LC480'>&#x000A;</div><div class='line' id='LC481'><span class="c"># 安装vim插件</span>&#x000A;</div><div class='line' id='LC482'><span class="k">function </span>install_vim_plugin<span class="o">()</span>&#x000A;</div><div class='line' id='LC483'><span class="o">{</span>&#x000A;</div><div class='line' id='LC484'>    vim <span class="nt">-c</span> <span class="s2">"PlugInstall"</span> <span class="nt">-c</span> <span class="s2">"q"</span> <span class="nt">-c</span> <span class="s2">"q"</span>&#x000A;</div><div class='line' id='LC485'><span class="o">}</span>&#x000A;</div><div class='line' id='LC486'>&#x000A;</div><div class='line' id='LC487'><span class="c"># 安装ycm插件</span>&#x000A;</div><div class='line' id='LC488'><span class="k">function </span>install_ycm<span class="o">()</span>&#x000A;</div><div class='line' id='LC489'><span class="o">{</span>&#x000A;</div><div class='line' id='LC490'>    git clone https://gitee.com/chxuan/YouCompleteMe-clang.git ~/.vim/plugged/YouCompleteMe&#x000A;</div><div class='line' id='LC491'>&#x000A;</div><div class='line' id='LC492'>    <span class="nb">cd</span> ~/.vim/plugged/YouCompleteMe&#x000A;</div><div class='line' id='LC493'>    <span class="nv">distro</span><span class="o">=</span><span class="sb">`</span>get_linux_distro<span class="sb">`</span>&#x000A;</div><div class='line' id='LC494'>    <span class="nb">read</span> <span class="nt">-p</span> <span class="s2">"Please choose to compile ycm with python2 or python3, if there is a problem with the current selection, please choose another one. [2/3] "</span> version&#x000A;</div><div class='line' id='LC495'>    <span class="k">if</span> <span class="o">[[</span> <span class="nv">$version</span> <span class="o">==</span> <span class="s2">"2"</span> <span class="o">]]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC496'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Compile ycm with python2."</span>&#x000A;</div><div class='line' id='LC497'>        <span class="c"># alpine 忽略 --clang-completer 并将 let g:ycm_clangd_binary_path 注入 .vimrc</span>&#x000A;</div><div class='line' id='LC498'>        <span class="o">{</span>&#x000A;</div><div class='line' id='LC499'>            <span class="k">if</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"Alpine"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC500'><span class="k">                </span><span class="nb">echo</span> <span class="s2">"##########################################"</span>&#x000A;</div><div class='line' id='LC501'>                <span class="nb">echo</span> <span class="s2">"Apline Build, need without GLIBC."</span>&#x000A;</div><div class='line' id='LC502'>                <span class="nb">echo</span> <span class="s2">"##########################################"</span>&#x000A;</div><div class='line' id='LC503'>                <span class="nb">sed</span> <span class="nt">-i</span> <span class="s2">"273ilet g:ycm_clangd_binary_path='/usr/bin/clang'"</span> ~/.vimrc&#x000A;</div><div class='line' id='LC504'>                python2.7 ./install.py&#x000A;</div><div class='line' id='LC505'>                <span class="k">return</span>&#x000A;</div><div class='line' id='LC506'><span class="k">            fi</span>&#x000A;</div><div class='line' id='LC507'>        <span class="o">}</span> <span class="o">||</span> <span class="o">{</span>&#x000A;</div><div class='line' id='LC508'>            python2.7 ./install.py <span class="nt">--clang-completer</span>&#x000A;</div><div class='line' id='LC509'>        <span class="o">}</span> <span class="o">||</span> <span class="o">{</span>&#x000A;</div><div class='line' id='LC510'>            <span class="nb">echo</span> <span class="s2">"##########################################"</span>&#x000A;</div><div class='line' id='LC511'>            <span class="nb">echo</span> <span class="s2">"Build error, trying rebuild without Clang."</span>&#x000A;</div><div class='line' id='LC512'>            <span class="nb">echo</span> <span class="s2">"##########################################"</span>&#x000A;</div><div class='line' id='LC513'>            python2.7 ./install.py&#x000A;</div><div class='line' id='LC514'>        <span class="o">}</span>&#x000A;</div><div class='line' id='LC515'>    <span class="k">else</span>&#x000A;</div><div class='line' id='LC516'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Compile ycm with python3."</span>&#x000A;</div><div class='line' id='LC517'>        <span class="o">{</span>&#x000A;</div><div class='line' id='LC518'>            <span class="c"># alpine 跳过该步骤</span>&#x000A;</div><div class='line' id='LC519'>            <span class="k">if</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"Alpine"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC520'><span class="k">                </span><span class="nb">echo</span> <span class="s2">"##########################################"</span>&#x000A;</div><div class='line' id='LC521'>                <span class="nb">echo</span> <span class="s2">"Apline Build, need without GLIBC."</span>&#x000A;</div><div class='line' id='LC522'>                <span class="nb">echo</span> <span class="s2">"##########################################"</span>&#x000A;</div><div class='line' id='LC523'>                <span class="nb">sed</span> <span class="nt">-i</span> <span class="s2">"273ilet g:ycm_clangd_binary_path='/usr/bin/clang'"</span> ~/.vimrc&#x000A;</div><div class='line' id='LC524'>                python3 ./install.py&#x000A;</div><div class='line' id='LC525'>                <span class="k">return</span>&#x000A;</div><div class='line' id='LC526'><span class="k">            fi</span>&#x000A;</div><div class='line' id='LC527'>        <span class="o">}</span> <span class="o">||</span> <span class="o">{</span>&#x000A;</div><div class='line' id='LC528'>            python3 ./install.py <span class="nt">--clang-completer</span>&#x000A;</div><div class='line' id='LC529'>        <span class="o">}</span> <span class="o">||</span> <span class="o">{</span>&#x000A;</div><div class='line' id='LC530'>            <span class="nb">echo</span> <span class="s2">"##########################################"</span>&#x000A;</div><div class='line' id='LC531'>            <span class="nb">echo</span> <span class="s2">"Build error, trying rebuild without Clang."</span>&#x000A;</div><div class='line' id='LC532'>            <span class="nb">echo</span> <span class="s2">"##########################################"</span>&#x000A;</div><div class='line' id='LC533'>            python3 ./install.py&#x000A;</div><div class='line' id='LC534'>        <span class="o">}</span>&#x000A;</div><div class='line' id='LC535'>    <span class="k">fi</span>&#x000A;</div><div class='line' id='LC536'><span class="o">}</span>&#x000A;</div><div class='line' id='LC537'>&#x000A;</div><div class='line' id='LC538'><span class="c"># 在android上安装ycm插件</span>&#x000A;</div><div class='line' id='LC539'><span class="k">function </span>install_ycm_on_android<span class="o">()</span>&#x000A;</div><div class='line' id='LC540'><span class="o">{</span>&#x000A;</div><div class='line' id='LC541'>    git clone https://gitee.com/chxuan/YouCompleteMe-clang.git ~/.vim/plugged/YouCompleteMe&#x000A;</div><div class='line' id='LC542'>&#x000A;</div><div class='line' id='LC543'>    <span class="nb">cd</span> ~/.vim/plugged/YouCompleteMe&#x000A;</div><div class='line' id='LC544'>&#x000A;</div><div class='line' id='LC545'>    <span class="nb">read</span> <span class="nt">-p</span> <span class="s2">"Please choose to compile ycm with python2 or python3, if there is a problem with the current selection, please choose another one. [2/3] "</span> version&#x000A;</div><div class='line' id='LC546'>    <span class="k">if</span> <span class="o">[[</span> <span class="nv">$version</span> <span class="o">==</span> <span class="s2">"2"</span> <span class="o">]]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC547'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Compile ycm with python2."</span>&#x000A;</div><div class='line' id='LC548'>        python2.7 ./install.py <span class="nt">--clang-completer</span> <span class="nt">--system-libclang</span>&#x000A;</div><div class='line' id='LC549'>    <span class="k">else</span>&#x000A;</div><div class='line' id='LC550'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Compile ycm with python3."</span>&#x000A;</div><div class='line' id='LC551'>        python3 ./install.py <span class="nt">--clang-completer</span> <span class="nt">--system-libclang</span>&#x000A;</div><div class='line' id='LC552'>    <span class="k">fi</span>&#x000A;</div><div class='line' id='LC553'><span class="o">}</span>&#x000A;</div><div class='line' id='LC554'>&#x000A;</div><div class='line' id='LC555'><span class="c"># 打印logo</span>&#x000A;</div><div class='line' id='LC556'><span class="k">function </span>print_logo<span class="o">()</span>&#x000A;</div><div class='line' id='LC557'><span class="o">{</span>&#x000A;</div><div class='line' id='LC558'>    <span class="nv">color</span><span class="o">=</span><span class="s2">"</span><span class="si">$(</span>tput setaf 6<span class="si">)</span><span class="s2">"</span>&#x000A;</div><div class='line' id='LC559'>    <span class="nv">normal</span><span class="o">=</span><span class="s2">"</span><span class="si">$(</span>tput sgr0<span class="si">)</span><span class="s2">"</span>&#x000A;</div><div class='line' id='LC560'>    <span class="nb">printf</span> <span class="s2">"</span><span class="k">${</span><span class="nv">color</span><span class="k">}</span><span class="s2">"</span>&#x000A;</div><div class='line' id='LC561'>    <span class="nb">echo</span> <span class="s1">'        __                __           '</span>&#x000A;</div><div class='line' id='LC562'>    <span class="nb">echo</span> <span class="s1">'__   __/_/___ ___  ____  / /_  _______ '</span>&#x000A;</div><div class='line' id='LC563'>    <span class="nb">echo</span> <span class="s1">'\ \ / / / __ `__ \/ __ \/ / / / / ___/ '</span>&#x000A;</div><div class='line' id='LC564'>    <span class="nb">echo</span> <span class="s1">' \ V / / / / / / / /_/ / / /_/ (__  )  '</span>&#x000A;</div><div class='line' id='LC565'>    <span class="nb">echo</span> <span class="s1">'  \_/_/_/ /_/ /_/ ,___/_/\____/____/   '</span>&#x000A;</div><div class='line' id='LC566'>    <span class="nb">echo</span> <span class="s1">'               /_/                     ...is now installed!'</span>&#x000A;</div><div class='line' id='LC567'>    <span class="nb">echo</span> <span class="s1">''</span>&#x000A;</div><div class='line' id='LC568'>    <span class="nb">echo</span> <span class="s1">''</span>&#x000A;</div><div class='line' id='LC569'>    <span class="nb">echo</span> <span class="s1">'Just enjoy it!'</span>&#x000A;</div><div class='line' id='LC570'>    <span class="nb">echo</span> <span class="s1">'p.s. Follow me at https://github.com/chxuan.'</span>&#x000A;</div><div class='line' id='LC571'>    <span class="nb">echo</span> <span class="s1">''</span>&#x000A;</div><div class='line' id='LC572'>    <span class="nb">printf</span> <span class="s2">"</span><span class="k">${</span><span class="nv">normal</span><span class="k">}</span><span class="s2">"</span>&#x000A;</div><div class='line' id='LC573'><span class="o">}</span>&#x000A;</div><div class='line' id='LC574'>&#x000A;</div><div class='line' id='LC575'><span class="c"># 在mac平台安装vimplus</span>&#x000A;</div><div class='line' id='LC576'><span class="k">function </span>install_vimplus_on_mac<span class="o">()</span>&#x000A;</div><div class='line' id='LC577'><span class="o">{</span>&#x000A;</div><div class='line' id='LC578'>    backup_vimrc_and_vim&#x000A;</div><div class='line' id='LC579'>    install_prepare_software_on_mac&#x000A;</div><div class='line' id='LC580'>    copy_files&#x000A;</div><div class='line' id='LC581'>    install_fonts_on_mac&#x000A;</div><div class='line' id='LC582'>    install_ycm&#x000A;</div><div class='line' id='LC583'>    install_vim_plugin&#x000A;</div><div class='line' id='LC584'>    print_logo&#x000A;</div><div class='line' id='LC585'><span class="o">}</span>&#x000A;</div><div class='line' id='LC586'>&#x000A;</div><div class='line' id='LC587'><span class="c"># 在FreeBSD上安装vimplus</span>&#x000A;</div><div class='line' id='LC588'><span class="k">function </span>install_vimplus_on_freebsd<span class="o">()</span>&#x000A;</div><div class='line' id='LC589'><span class="o">{</span>&#x000A;</div><div class='line' id='LC590'>    backup_vimrc_and_vim&#x000A;</div><div class='line' id='LC591'>    install_prepare_software_on_freebsd&#x000A;</div><div class='line' id='LC592'>    begin_install_vimplus&#x000A;</div><div class='line' id='LC593'><span class="o">}</span>&#x000A;</div><div class='line' id='LC594'>&#x000A;</div><div class='line' id='LC595'><span class="c"># 在android平台安装vimplus</span>&#x000A;</div><div class='line' id='LC596'><span class="k">function </span>install_vimplus_on_android<span class="o">()</span>&#x000A;</div><div class='line' id='LC597'><span class="o">{</span>&#x000A;</div><div class='line' id='LC598'>    backup_vimrc_and_vim&#x000A;</div><div class='line' id='LC599'>    install_prepare_software_on_android&#x000A;</div><div class='line' id='LC600'>    copy_files&#x000A;</div><div class='line' id='LC601'>    install_fonts_on_android&#x000A;</div><div class='line' id='LC602'>    install_ycm_on_android&#x000A;</div><div class='line' id='LC603'>    install_vim_plugin&#x000A;</div><div class='line' id='LC604'>    print_logo&#x000A;</div><div class='line' id='LC605'><span class="o">}</span>&#x000A;</div><div class='line' id='LC606'>&#x000A;</div><div class='line' id='LC607'><span class="c"># 开始安装vimplus</span>&#x000A;</div><div class='line' id='LC608'><span class="k">function </span>begin_install_vimplus<span class="o">()</span>&#x000A;</div><div class='line' id='LC609'><span class="o">{</span>&#x000A;</div><div class='line' id='LC610'>    copy_files&#x000A;</div><div class='line' id='LC611'>    install_fonts_on_linux&#x000A;</div><div class='line' id='LC612'>    install_ycm&#x000A;</div><div class='line' id='LC613'>    install_vim_plugin&#x000A;</div><div class='line' id='LC614'>    print_logo&#x000A;</div><div class='line' id='LC615'><span class="o">}</span>&#x000A;</div><div class='line' id='LC616'>&#x000A;</div><div class='line' id='LC617'><span class="c"># 在ubuntu上安装vimplus</span>&#x000A;</div><div class='line' id='LC618'><span class="k">function </span>install_vimplus_on_ubuntu<span class="o">()</span>&#x000A;</div><div class='line' id='LC619'><span class="o">{</span>&#x000A;</div><div class='line' id='LC620'>    backup_vimrc_and_vim&#x000A;</div><div class='line' id='LC621'>    install_prepare_software_on_ubuntu&#x000A;</div><div class='line' id='LC622'>    begin_install_vimplus&#x000A;</div><div class='line' id='LC623'><span class="o">}</span>&#x000A;</div><div class='line' id='LC624'>&#x000A;</div><div class='line' id='LC625'><span class="c"># 在ubuntu系上安装vimplus</span>&#x000A;</div><div class='line' id='LC626'><span class="k">function </span>install_vimplus_on_ubuntu_like<span class="o">()</span>&#x000A;</div><div class='line' id='LC627'><span class="o">{</span>&#x000A;</div><div class='line' id='LC628'>    backup_vimrc_and_vim&#x000A;</div><div class='line' id='LC629'>    install_prepare_software_on_ubuntu_like&#x000A;</div><div class='line' id='LC630'>    begin_install_vimplus&#x000A;</div><div class='line' id='LC631'><span class="o">}</span>&#x000A;</div><div class='line' id='LC632'>&#x000A;</div><div class='line' id='LC633'><span class="c"># 在debian上安装vimplus</span>&#x000A;</div><div class='line' id='LC634'><span class="k">function </span>install_vimplus_on_debian<span class="o">()</span>&#x000A;</div><div class='line' id='LC635'><span class="o">{</span>&#x000A;</div><div class='line' id='LC636'>    backup_vimrc_and_vim&#x000A;</div><div class='line' id='LC637'>    install_prepare_software_on_debian&#x000A;</div><div class='line' id='LC638'>    begin_install_vimplus&#x000A;</div><div class='line' id='LC639'><span class="o">}</span>&#x000A;</div><div class='line' id='LC640'>&#x000A;</div><div class='line' id='LC641'><span class="c"># 在parrot上安装vimplus</span>&#x000A;</div><div class='line' id='LC642'><span class="k">function </span>install_vimplus_on_parrot<span class="o">()</span>&#x000A;</div><div class='line' id='LC643'><span class="o">{</span>&#x000A;</div><div class='line' id='LC644'>    backup_vimrc_and_vim&#x000A;</div><div class='line' id='LC645'>    install_prepare_software_on_parrot&#x000A;</div><div class='line' id='LC646'>    begin_install_vimplus&#x000A;</div><div class='line' id='LC647'><span class="o">}</span>&#x000A;</div><div class='line' id='LC648'>&#x000A;</div><div class='line' id='LC649'><span class="c"># 在centos上安装vimplus</span>&#x000A;</div><div class='line' id='LC650'><span class="k">function </span>install_vimplus_on_centos<span class="o">()</span>&#x000A;</div><div class='line' id='LC651'><span class="o">{</span>&#x000A;</div><div class='line' id='LC652'>    backup_vimrc_and_vim&#x000A;</div><div class='line' id='LC653'>    install_prepare_software_on_centos&#x000A;</div><div class='line' id='LC654'>    begin_install_vimplus&#x000A;</div><div class='line' id='LC655'><span class="o">}</span>&#x000A;</div><div class='line' id='LC656'>&#x000A;</div><div class='line' id='LC657'><span class="c"># 在fedora上安装vimplus</span>&#x000A;</div><div class='line' id='LC658'><span class="k">function </span>install_vimplus_on_fedora<span class="o">()</span>&#x000A;</div><div class='line' id='LC659'><span class="o">{</span>&#x000A;</div><div class='line' id='LC660'>    backup_vimrc_and_vim&#x000A;</div><div class='line' id='LC661'>    install_prepare_software_on_fedora&#x000A;</div><div class='line' id='LC662'>    begin_install_vimplus&#x000A;</div><div class='line' id='LC663'><span class="o">}</span>&#x000A;</div><div class='line' id='LC664'>&#x000A;</div><div class='line' id='LC665'><span class="c"># 在archlinux上安装vimplus</span>&#x000A;</div><div class='line' id='LC666'><span class="k">function </span>install_vimplus_on_archlinux<span class="o">()</span>&#x000A;</div><div class='line' id='LC667'><span class="o">{</span>&#x000A;</div><div class='line' id='LC668'>    backup_vimrc_and_vim&#x000A;</div><div class='line' id='LC669'>    install_prepare_software_on_archlinux&#x000A;</div><div class='line' id='LC670'>    begin_install_vimplus&#x000A;</div><div class='line' id='LC671'><span class="o">}</span>&#x000A;</div><div class='line' id='LC672'>&#x000A;</div><div class='line' id='LC673'><span class="c"># 在Gentoo上安装vimplus</span>&#x000A;</div><div class='line' id='LC674'><span class="k">function </span>install_vimplus_on_gentoo<span class="o">()</span>&#x000A;</div><div class='line' id='LC675'><span class="o">{</span>&#x000A;</div><div class='line' id='LC676'>    backup_vimrc_and_vim&#x000A;</div><div class='line' id='LC677'>    install_prepare_software_on_gentoo&#x000A;</div><div class='line' id='LC678'>    begin_install_vimplus&#x000A;</div><div class='line' id='LC679'><span class="o">}</span>&#x000A;</div><div class='line' id='LC680'>&#x000A;</div><div class='line' id='LC681'><span class="c"># 在opensuse上安装vimplus</span>&#x000A;</div><div class='line' id='LC682'><span class="k">function </span>install_vimplus_on_opensuse<span class="o">()</span>&#x000A;</div><div class='line' id='LC683'><span class="o">{</span>&#x000A;</div><div class='line' id='LC684'>    backup_vimrc_and_vim&#x000A;</div><div class='line' id='LC685'>    install_prepare_software_on_opensuse&#x000A;</div><div class='line' id='LC686'>    begin_install_vimplus&#x000A;</div><div class='line' id='LC687'><span class="o">}</span>&#x000A;</div><div class='line' id='LC688'>&#x000A;</div><div class='line' id='LC689'><span class="c"># 在alpine上安装vimplus</span>&#x000A;</div><div class='line' id='LC690'><span class="k">function </span>install_vimplus_on_alpine<span class="o">()</span>&#x000A;</div><div class='line' id='LC691'><span class="o">{</span>&#x000A;</div><div class='line' id='LC692'>    backup_vimrc_and_vim&#x000A;</div><div class='line' id='LC693'>    install_prepare_software_on_alpine&#x000A;</div><div class='line' id='LC694'>    begin_install_vimplus&#x000A;</div><div class='line' id='LC695'>&#x000A;</div><div class='line' id='LC696'>    <span class="c"># 单独安装 ycm</span>&#x000A;</div><div class='line' id='LC697'>&#x000A;</div><div class='line' id='LC698'><span class="o">}</span>&#x000A;</div><div class='line' id='LC699'>&#x000A;</div><div class='line' id='LC700'><span class="c"># 在linux平上台安装vimplus</span>&#x000A;</div><div class='line' id='LC701'><span class="k">function </span>install_vimplus_on_linux<span class="o">()</span>&#x000A;</div><div class='line' id='LC702'><span class="o">{</span>&#x000A;</div><div class='line' id='LC703'>    <span class="nv">distro</span><span class="o">=</span><span class="sb">`</span>get_linux_distro<span class="sb">`</span>&#x000A;</div><div class='line' id='LC704'>    <span class="nb">echo</span> <span class="s2">"Linux distro: "</span><span class="k">${</span><span class="nv">distro</span><span class="k">}</span>&#x000A;</div><div class='line' id='LC705'>&#x000A;</div><div class='line' id='LC706'>    <span class="k">if</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"Ubuntu"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC707'><span class="k">        </span>install_vimplus_on_ubuntu&#x000A;</div><div class='line' id='LC708'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"Deepin"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC709'><span class="k">        </span>install_vimplus_on_ubuntu_like&#x000A;</div><div class='line' id='LC710'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"LinuxMint"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC711'><span class="k">        </span>install_vimplus_on_ubuntu_like&#x000A;</div><div class='line' id='LC712'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"elementaryOS"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC713'><span class="k">        </span>install_vimplus_on_ubuntu_like&#x000A;</div><div class='line' id='LC714'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"Debian"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC715'><span class="k">        </span>install_vimplus_on_debian&#x000A;</div><div class='line' id='LC716'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"Raspbian"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC717'><span class="k">        </span>install_vimplus_on_debian&#x000A;</div><div class='line' id='LC718'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"UOS"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC719'><span class="k">        </span>install_vimplus_on_debian&#x000A;</div><div class='line' id='LC720'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"Kali"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC721'><span class="k">        </span>install_vimplus_on_debian&#x000A;</div><div class='line' id='LC722'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"Parrot"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC723'><span class="k">        </span>install_vimplus_on_parrot&#x000A;</div><div class='line' id='LC724'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"CentOS"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC725'><span class="k">        </span>install_vimplus_on_centos&#x000A;</div><div class='line' id='LC726'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"fedora"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC727'><span class="k">        </span>install_vimplus_on_fedora&#x000A;</div><div class='line' id='LC728'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"openSUSE"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC729'><span class="k">        </span>install_vimplus_on_opensuse&#x000A;</div><div class='line' id='LC730'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"ArchLinux"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC731'><span class="k">        </span>install_vimplus_on_archlinux&#x000A;</div><div class='line' id='LC732'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"ManjaroLinux"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC733'><span class="k">        </span>install_vimplus_on_archlinux&#x000A;</div><div class='line' id='LC734'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"Gentoo"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC735'><span class="k">        </span>install_vimplus_on_gentoo&#x000A;</div><div class='line' id='LC736'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">distro</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"Alpine"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC737'><span class="k">        </span>install_vimplus_on_alpine&#x000A;</div><div class='line' id='LC738'>    <span class="k">else</span>&#x000A;</div><div class='line' id='LC739'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Not support linux distro: "</span><span class="k">${</span><span class="nv">distro</span><span class="k">}</span>&#x000A;</div><div class='line' id='LC740'>    <span class="k">fi</span>&#x000A;</div><div class='line' id='LC741'><span class="o">}</span>&#x000A;</div><div class='line' id='LC742'>&#x000A;</div><div class='line' id='LC743'><span class="c"># 获取当前时间戳</span>&#x000A;</div><div class='line' id='LC744'><span class="k">function </span>get_now_timestamp<span class="o">()</span>&#x000A;</div><div class='line' id='LC745'><span class="o">{</span>&#x000A;</div><div class='line' id='LC746'>    <span class="nv">cur_sec_and_ns</span><span class="o">=</span><span class="sb">`</span><span class="nb">date</span> <span class="s1">'+%s-%N'</span><span class="sb">`</span>&#x000A;</div><div class='line' id='LC747'>    <span class="nb">echo</span> <span class="k">${</span><span class="nv">cur_sec_and_ns</span><span class="p">%-*</span><span class="k">}</span>&#x000A;</div><div class='line' id='LC748'><span class="o">}</span>&#x000A;</div><div class='line' id='LC749'>&#x000A;</div><div class='line' id='LC750'><span class="c"># main函数</span>&#x000A;</div><div class='line' id='LC751'><span class="k">function </span>main<span class="o">()</span>&#x000A;</div><div class='line' id='LC752'><span class="o">{</span>&#x000A;</div><div class='line' id='LC753'>    <span class="nv">begin</span><span class="o">=</span><span class="sb">`</span>get_now_timestamp<span class="sb">`</span>&#x000A;</div><div class='line' id='LC754'>&#x000A;</div><div class='line' id='LC755'>    <span class="nb">type</span><span class="o">=</span><span class="si">$(</span><span class="nb">uname</span><span class="si">)</span>&#x000A;</div><div class='line' id='LC756'>    <span class="nb">echo</span> <span class="s2">"Platform type: "</span><span class="k">${</span><span class="nv">type</span><span class="k">}</span>&#x000A;</div><div class='line' id='LC757'>&#x000A;</div><div class='line' id='LC758'>    <span class="k">if</span> <span class="o">[</span> <span class="k">${</span><span class="nv">type</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"Darwin"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC759'><span class="k">        </span>install_vimplus_on_mac&#x000A;</div><div class='line' id='LC760'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">type</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"FreeBSD"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC761'><span class="k">        </span>install_vimplus_on_freebsd&#x000A;</div><div class='line' id='LC762'>    <span class="k">elif</span> <span class="o">[</span> <span class="k">${</span><span class="nv">type</span><span class="k">}</span> <span class="o">==</span> <span class="s2">"Linux"</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC763'><span class="k">        </span><span class="nv">tp</span><span class="o">=</span><span class="si">$(</span><span class="nb">uname</span> <span class="nt">-a</span><span class="si">)</span>&#x000A;</div><div class='line' id='LC764'>        <span class="k">if</span> <span class="o">[[</span> <span class="nv">$tp</span> <span class="o">=</span>~ <span class="s2">"Android"</span> <span class="o">]]</span><span class="p">;</span> <span class="k">then</span>&#x000A;</div><div class='line' id='LC765'><span class="k">            </span><span class="nb">echo</span> <span class="s2">"Android"</span>&#x000A;</div><div class='line' id='LC766'>            install_vimplus_on_android&#x000A;</div><div class='line' id='LC767'>        <span class="k">else</span>&#x000A;</div><div class='line' id='LC768'><span class="k">            </span>install_vimplus_on_linux&#x000A;</div><div class='line' id='LC769'>        <span class="k">fi</span>&#x000A;</div><div class='line' id='LC770'><span class="k">    else</span>&#x000A;</div><div class='line' id='LC771'><span class="k">        </span><span class="nb">echo</span> <span class="s2">"Not support platform type: "</span><span class="k">${</span><span class="nv">type</span><span class="k">}</span>&#x000A;</div><div class='line' id='LC772'>    <span class="k">fi</span>&#x000A;</div><div class='line' id='LC773'>&#x000A;</div><div class='line' id='LC774'><span class="k">    </span><span class="nv">end</span><span class="o">=</span><span class="sb">`</span>get_now_timestamp<span class="sb">`</span>&#x000A;</div><div class='line' id='LC775'>    <span class="nv">second</span><span class="o">=</span><span class="sb">`</span><span class="nb">expr</span> <span class="k">${</span><span class="nv">end</span><span class="k">}</span> - <span class="k">${</span><span class="nv">begin</span><span class="k">}</span><span class="sb">`</span>&#x000A;</div><div class='line' id='LC776'>    <span class="nv">min</span><span class="o">=</span><span class="sb">`</span><span class="nb">expr</span> <span class="k">${</span><span class="nv">second</span><span class="k">}</span> / 60<span class="sb">`</span>&#x000A;</div><div class='line' id='LC777'>    <span class="nb">echo</span> <span class="s2">"It takes "</span><span class="k">${</span><span class="nv">min</span><span class="k">}</span><span class="s2">" minutes."</span>&#x000A;</div><div class='line' id='LC778'><span class="o">}</span>&#x000A;</div><div class='line' id='LC779'>&#x000A;</div><div class='line' id='LC780'><span class="c"># 调用main函数</span>&#x000A;</div><div class='line' id='LC781'>main&#x000A;</div></pre></div></div>
</div>
<script>
  toMathMlCode('','markdown-body');
</script>

</div>
</div>
<div class='tree_progress'></div>
<div class='ui small modal' id='modal-linejump'>
<div class='ui custom form content'>
<div class='field'>
<div class='ui right action input'>
<input placeholder='跳转至某一行...' type='number'>
<div class='ui orange button'>
跳转
</div>
</div>
</div>
</div>
</div>


<div class='row column inner-comment' id='blob-comment'>
<input id="comment_path" name="comment_path" type="hidden" value="install.sh" />
<div class='tree-comments'>
<h3 id='tree_comm_title'>
评论
(
<span class='comments-count'>
0
</span>
)
</h3>
<div class='ui threaded comments middle aligned' id='notes-list'></div>
<input id="ajax_add_note_id" name="ajax_add_note_id" type="hidden" />
<div class='text-center'>
<div class='tip-loading' style='display: none'>
<div class='ui active mini inline loader'></div>
正在加载...
</div>
</div>
</div>
<script>
  "use strict";
  $(function(){
    var page = 1
    var commentsCount = 0
    var $container = $('.tree-comments')
    var $comments = $container.find('.ui.comments')
    var $tipLoading = $container.find('.tip-loading')
    var $btnLoad = $container.find('.btn-load-more')
    var noteAnchor = new Gitee.NoteAnchor({ defaultAnchor: '#tree_comm_title' })
  
    if (commentsCount < 1) {
      return;
    }
  
    var path;
    if ($('#comment_path').val() === '') {
      path = '/';
    } else {
      path = $('#comment_path').val();
    }
  
    function loadComments () {
      $btnLoad.hide();
      $tipLoading.show();
      $.ajax({
        url: '/chxuan/vimplus/comment_list',
        data: {
          page: page,
          path: path
        },
        success: function(data) {
          var err;
          try {
            $tipLoading.hide();
            $btnLoad.show();
            if (data.status !== 0) {
              $btnLoad.text('无更多评论')
              return $btnLoad.prop('disabled', true).addClass('disabled');
            } else {
              TreeComment.CommentListHandler(data);
              page += 1;
              if (data.comments_count < 10) {
                $('#ajax_add_note_id').val('');
                $btnLoad.text('无更多评论')
                $btnLoad.prop('disabled', true).addClass('disabled');
              }
              // osctree can not load script
              $comments.find('.timeago').timeago();
              $comments.find('.commenter-role-label').popup();
              noteAnchor.locate();
              toMathMlCode('', 'comments');
              return $('.markdown-body pre code').each(function(i, block) {
                return hljs.highlightBlock(block);
              });
            }
          } catch (error) {
            err = error;
            return console.log('loadComments error:' + err);
          }
        }
      });
    };
  
  
    function checkLoad () {
      var listTop, top;
      top = $(window).scrollTop();
      listTop = $container.offset().top;
      if (listTop >= top && listTop < top + $(window).height()) {
        $(window).off('scroll', checkLoad);
        return loadComments();
      }
    };
  
    $btnLoad.on('click', loadComments);
    loadComments()
  })
</script>

</div>
<div class='inner-comment-box' id='comment-box'>
<p>
你可以在<a href="/login">登录</a>后，发表评论
</p>

</div>

<div class='complaint'>
<div class='ui modal small form' id='landing-comments-complaint-modal'>
<i class='iconfont icon-close close'></i>
<div class='header'>
举报
</div>
<div class='content'>
<div class='appeal-success-tip hide'>
<i class='iconfont icon-ic_msg_success'></i>
<div class='appeal-success-text'>
举报成功
</div>
<span>
我们将于2个工作日内通过站内信反馈结果给你！
</span>
</div>
<div class='appeal-tip'>
请认真填写举报原因，尽可能描述详细。
</div>
<div class='ui form appeal-form'>
<div class='inline field'>
<label class='left-part appeal-type-wrap'>
举报类型
</label>
<div class='ui dropdown selection' id='appeal-comments-types'>
<div class='text default'>
请选择举报类型
</div>
<i class='dropdown icon'></i>
<div class='menu'></div>
</div>
</div>
<div class='inline field'>
<label class='left-part'>
举报原因
</label>
<textarea class='appeal-reason' id='appeal-comment-reason' name='msg' placeholder='请说明举报原因' rows='3'></textarea>
</div>
<div class='ui message callback-msg hide'></div>
<div class='ui small error text message exceeded-size-tip'></div>
</div>
</div>
<div class='actions'>
<div class='ui button blank cancel'>
取消
</div>
<div class='ui orange icon button disabled ok' id='complaint-comment-confirm'>
发送
</div>
</div>
</div>
<script>
  var $complaintCommentsModal = $('#landing-comments-complaint-modal'),
      $complainCommentType = $complaintCommentsModal.find('#appeal-comments-types'),
      $complaintModalTip = $complaintCommentsModal.find('.callback-msg'),
      $complaintCommentsContent = $complaintCommentsModal.find('.appeal-reason'),
      $complaintCommentBtn = $complaintCommentsModal.find('#complaint-comment-confirm'),
      complaintSending = false,
      initedCommentsType = false;
  
  function initCommentsTypeList() {
    if (!initedCommentsType) {
      $.ajax({
        url: "/appeals/fetch_types",
        method: 'get',
        data: {'type': 'comment'},
        success: function (data) {
          var result = '';
          for (var i = 0; i < data.length; i++) {
            result = result + "<div class='item' data-value='" + data[i].id + "'>" + data[i].name + "</div>";
          }
          $complainCommentType.find('.menu').html(result);
        }
      });
      $complainCommentType.dropdown({showOnFocus: false});
      initedCommentsType = true;
    }
  }
  $complainCommentType.on('click', function() {
    $complaintCommentsModal.modal({
      autofocus: false,
      onApprove: function() {
        return false;
      },
      onHidden: function() {
        restoreCommonentDefault();
      }
    }).modal('show');
  });
  
  $complaintCommentsContent.on('change keyup', function(e) {
    var content = $(this).val();
    if ($.trim(content).length > 0 && $complainCommentType.dropdown('get value').length > 0 ) {
      $complaintCommentBtn.removeClass('disabled');
      return;
    }
    $complaintCommentBtn.addClass('disabled');
  });
  
  
  $complainCommentType.dropdown({
    showOnFocus: false,
    onChange: function(value, text, $selectedItem) {
      if (value.length > 0 && $.trim($complaintCommentsContent.val()).length > 0) {
        $complaintCommentBtn.removeClass('disabled');
        return
      }
      $complaintCommentBtn.addClass('disabled');
    }
  });
  
  function restoreCommonentDefault() {
    $complainCommentType.dropdown('restore defaults');
    $complaintCommentsContent.val('');
    $('.exceeded-size-tip').text('').hide();
    $complaintModalTip.text('').hide();
    setTimeout(function() {
      setCommentSendTip(false);
    }, 1500);
  }
  
  $complaintCommentBtn.on('click',function(e){
    var reason = $complaintCommentsContent.val();
    var appealableId = $('#landing-comments-complaint-modal').attr('data-id');
    if (complaintSending) {
      return;
    }
    var appealType = $complainCommentType.dropdown('get value');
    var formData = new FormData();
    formData.append('appeal_type_id', appealType);
    formData.append('reason', reason);
    formData.append('appeal_type','Note');
    formData.append('target_id',appealableId);
    $.ajax({
      type: 'POST',
      url: "/appeals",
      cache: false,
      contentType: false,
      processData: false,
      data: formData,
      beforeSend: function() {
        setCommentSendStatus(true);
      },
      success: function(res) {
        if (res.status == 200) {
          setCommentSendTip(true);
          setTimeout(function() {
            $complaintCommentsModal.modal('hide');
            restoreCommonentDefault();
          }, 3000);
        }
        setCommentSendStatus(false);
      },
      error: function(err) {
        showCommonTips(err.responseJSON.message, 'error');
        setCommentSendStatus(false);
      }
    })
  });
  
  function showCommonTips(text, type) {
    $complaintModalTip.text(text).show();
    if (type == 'error') {
      $complaintModalTip.removeClass('success').addClass('error');
    } else {
      $complaintModalTip.removeClass('error').addClass('success');
    }
  }
  
  function setCommentSendStatus(value) {
    complaintSending = value;
    if (complaintSending) {
      $complaintCommentBtn.addClass('loading');
      $complaintCommentsContent.attr('readonly', true);
      $complainCommentType.attr('readonly', true);
    } else {
      $complaintCommentBtn.removeClass('loading');
      $complaintCommentsContent.attr('readonly', false);
      $complainCommentType.attr('readonly', false);
    }
  }
  
  function setCommentSendTip(value) {
    if (value) {
      $('.appeal-success-tip').removeClass('hide');
      $('.appeal-tip').addClass('hide');
      $('.appeal-form').addClass('hide');
      $('#landing-comments-complaint-modal .actions').addClass('hide');
    } else {
      $('.appeal-success-tip').addClass('hide');
      $('.appeal-tip').removeClass('hide');
      $('.appeal-form').removeClass('hide');
      $('#landing-comments-complaint-modal .actions').removeClass('hide');
    }
  }
</script>

</div>
<script>
  "use strict";
  $('.js-check-star').checkbox('set unchecked')
</script>

</div>
</div>
</div>
<div class='four wide column' style='display: none;'>
<div class='project__right-side'>
<div class='side-item intro'>
<div class='header'>
<h4>简介</h4>
</div>
<div class='content'>
<span class='git-project-desc-text'>An automatic configuration program for vim</span>
<a class='hide spread' href='javascript:void(0);'>
展开
<i class='caret down icon'></i>
</a>
<a class='retract hide' href='javascript:void(0);'>
收起
<i class='caret up icon'></i>
</a>
<div class='intro-list'>
<div class='item project-label-list d-flex label-list-line-feed'>
</div>
<div class='item'>
<i class='iconfont icon-link'></i>
<span class='git-project-homepage'>
<a href="https://github.com/chxuan/vimplus" id="homepage" rel="nofollow" target="_blank">https://github.com/chxuan/vimplus</a>
</span>
</div>
<div class='item'>
<i class='iconfont icon-tag-program'></i>
<span class='summary-languages'>
VimL
<span class='text-muted'>
等 3 种语言
<i class='icon dropdown'></i>
</span>
</span>
<div class='ui popup summary-languages-popup'>
<div class='row'>
<div class='lang'>
<a href="/explore/all?lang=Vim+script">Vim script</a>
</div>
<div class='lang-bar'>
<div class='bar' style='width: 84.5%;'></div>
</div>
<a class="percentage" href="/explore/all?lang=Vim+script">84.5%</a>
</div>
<div class='row'>
<div class='lang'>
<a href="/explore/all?lang=Shell">Shell</a>
</div>
<div class='lang-bar'>
<div class='bar' style='width: 13.2%;'></div>
</div>
<a class="percentage" href="/explore/all?lang=Shell">13.2%</a>
</div>
<div class='row'>
<div class='lang'>
<a href="/explore/all?lang=Python">Python</a>
</div>
<div class='lang-bar'>
<div class='bar' style='width: 2.3%;'></div>
</div>
<a class="percentage" href="/explore/all?lang=Python">2.3%</a>
</div>
</div>
</div>

<div class='item'>
<i class='iconfont icon-licence'></i>
<a href="/chxuan/vimplus/blob/master/LICENSE" id="license-popup" target="_blank">MIT</a>
<div class='ui popup dark'>使用 MIT 开源许可协议</div>
</div>
</div>
</div>
<div class='content intro-form'>
<div class='ui small input'>
<textarea name='project[description]' placeholder='描述' rows='5'></textarea>
</div>
<div class='ui small input'>
<input data-regex-value='(^$)|(^(http|https):\/\/(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]).*)|(^(http|https):\/\/[a-zA-Z0-9]+([_\-\.]{1}[a-zA-Z0-9]+)*\.[a-zA-Z]{2,10}(:[0-9]{1,10})?(\?.*)?(\/.*)?$)' name='project[homepage]' placeholder='主页(eg: https://gitee.com)' type='text'>
</div>
<button class='ui orange button mt-1 btn-save'>
保存更改
</button>
<div class='ui blank button btn-cancel-edit'>
取消
</div>
</div>
</div>
<div class='side-item release'>
<div class='header'>
<h4>发行版</h4>
</div>
<div class='content'>
<span class='text-muted'>
暂无发行版
</span>
</div>
</div>
<div class='side-item radar'>
<div class='header mb-1'>
<h4 class='limit-length'>vimplus</h4>
<a class="ui link button radar-qa" href="javascript:void(0);"><i class='iconfont icon-help-circle'></i>
</a></div>
<div class='content'>
<div data-url='/chxuan/vimplus/project_radars' id='metrics-radar'>
<div class='wrap skeleton'>
<div class='total-score hide'>
<div class='text'></div>
<div class='score'></div>
</div>
</div>
<div class='ui popup radar-popup'>
<h4 class='title'>Gitee 指数包含如下维度</h4>
<div class='project-radar-list'>
<div class='descript-contianer'>
<div class='descript-title'>
<p>代码活跃度</p>
<p>社区活跃度</p>
<p>团队健康</p>
<p>流行趋势</p>
<p>影响力</p>
</div>
<div class='descript'>
<p>：与代码提交频次相关</p>
<p>：与项目和用户的issue、pr互动相关</p>
<p>：与团队成员人数和稳定度相关</p>
<p>：与项目近期受关注度相关</p>
<p>：与项目的star、下载量等社交指标相关</p>
</div>
</div>
</div>
<div class='finaltime'></div>
</div>
</div>
<script src="https://assets.gitee.com/assets/skill_radar/rep_app-bfe82d2bc79d00c15f1a571f5370c79b.js"></script>

</div>
</div>
<div class='side-item contrib' data-url='/chxuan/vimplus/contributors_count?ref=master' id='contributor'>
<div class='header'>
<h4>
贡献者
<span class='text-muted' id='contributor-count'></span>
</h4>
<a class="ui link button pull-right" href="/chxuan/vimplus/contributors?ref=master">全部</a>
</div>
<div class='content' id='contributor-list'></div>
<div class='ui active centered inline loader' id='contributor-loader'></div>
</div>
<div class='side-item events' data-url='/chxuan/vimplus/events.json' id='proj-events'>
<div class='header'>
<h4>近期动态</h4>
</div>
<div class='content'>
<div class='ui comments' id='event-list'></div>
<a class="loadmore hide" href="javascript:void(0);">加载更多
<i class='icon dropdown'></i>
</a><center>
<div class='text-muted nomore hide'>不能加载更多了</div>
<div class='ui inline loader active'></div>
</center>
</div>
</div>
</div>
<div class='ui modal tiny' id='edit-project-description'>
<i class='iconfont icon-close close'></i>
<div class='header'>编辑仓库简介</div>
<div class='content'>
<div class='item mb-2'>
<div class='title label'>简介内容</div>
<div class='ui small input'>
<textarea maxlength='100' name='project[description]' placeholder='描述' rows='5'>An automatic configuration program for vim</textarea>
</div>
</div>
<div class='item mb-2'>
<div class='title label'>主页</div>
<div class='ui small input'>
<input data-regex-value='(^$)|(^(http|https):\/\/(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]).*)|(^(http|https):\/\/[a-zA-Z0-9]+([_\-\.]{1}[a-zA-Z0-9]+)*\.[a-zA-Z]{2,10}(:[0-9]{1,10})?(\?.*)?(\/.*)?$)' name='project[homepage]' placeholder='主页(eg: https://gitee.com)' type='text' value='https://github.com/chxuan/vimplus'>
</div>
</div>
<div class='item mb-2'>
<div class='title label'>标签</div>
<div class='ui fluid multiple search selection dropdown js-project-label-selection mt-1 mb-2' name='project_labels[]'>
<input name='project_labels' type='hidden'>
<div class='default text'>搜索或按下回车键创建你的标签。</div>
<div class='menu'></div>
</div>
<script>
  $(function () {
    var wrapper_class = '' ? '.' + ' ' : '';
    var $labelSelection = $(wrapper_class + '.js-project-label-selection');
    var $submitInput = $labelSelection.find('input[name=' + 'project_labels' + ']');
    var arrSelectedLabel = [] || [];
    var MAXSELECTCOUNT = 5;
    var regName = /^[0-9A-Za-z\u4e00-\u9fa5]{1}[A-Za-z0-9\-\u4e00-\u9fa5]{0,34}$/;
    window.gon.current_selected_label_info = arrSelectedLabel;
    var messages = {
      'zh-CN': {
        addResult: false
          ? '添加 “<b class="user-add-label">{term}</b>”'
          : '直接添加 “<b class="user-add-label">{term}</b>” 标签'
      },
      'zh-TW': {
        addResult: '直接添加 “<b class="user-add-label">{term}</b>” 標籤'
      },
      en: {
        addResult: 'Add <b class="user-add-label">{term}</b> directly'
      }
    };
    // 屏幕过小时 dropdown 方向改为固定向上的
    var direction = innerWidth < 1500 ? 'upward' : 'auto';
  
    $labelSelection.dropdown({
      allowAdditions: true,
      maxSelections: MAXSELECTCOUNT,
      forceSelection: false,
      match: 'text',
      saveRemoteData: false,
      selectOnKeydown: false,
      hideAdditions: false,
      ignoreCase: true,
      direction: direction,
      message: {
        addResult: messages[gon.locale].addResult
        //maxSelections:''
      },
      action: function (value, text) {
        if (!value) {
          Flash.error("标签名不能为空", 4500);
          removeSelected(value);
          return false;
        }
        if (value.length > 35) {
          Flash.error("标签名只允许包含中文、字母、数字或者中划线(-)，不能以中划线开头，且长度少于35个字符", 4500);
          removeSelected(value);
          return false;
        }
        if (!regName.test(value)) {
          Flash.error("标签名只允许包含中文、字母、数字或者中划线(-)，不能以中划线开头，且长度少于35个字符", 4500);
          removeSelected(value);
          return false;
        }
        // 检测大小写 , 大小写不敏感
        var arrCurrentValue = ($labelSelection.dropdown('get value') || '').split(',');
        var arrCurrentValueUpperCase = arrCurrentValue.map(function (item) {
          return item ? String(item).toUpperCase() : '';
        });
        // 未全部转为大写前就有相同的,停止, 避免semantic内置检测与这个检测重复删除
        if (arrCurrentValue.indexOf(value) < 0) {
          if (arrCurrentValueUpperCase.indexOf(String(value).toUpperCase()) > -1) {
            removeSelected(value);
            return false;
          }
        }
  
        checkLabelLock(text, function (notLocked, status, res) {
          if (notLocked) {
            if (status == 200) {
              // 修改为修正后的文本
              // ident 在这个接口.
              removeSelected(value, res.data.name, res.data.ident);
              // res.data.ident
            } else if (status == 204) {
              // 不变
              $labelSelection.dropdown('set selected', value);
              addGolbalValue(value, value);
            }
          } else {
            // 等待检测完成后 为已锁定添加后删除
            removeSelected(value);
            return false;
          }
        });
      },
      onChange: function (addedValue, addedText, $addedChoice) {
        var currentValue = ($labelSelection.dropdown('get value') || '').split(',');
        if (currentValue.length >= MAXSELECTCOUNT) {
          //$labelSelection.dropdown('hide')
          $labelSelection.addClass('disabled-class');
        } else {
          $labelSelection.removeClass('disabled-class');
        }
      },
      onLabelCreate (value, text) {
        return $(
          '<a class="ui label transition" data-value=' +
            value +
            ' style="display: inline-block !important;">' +
            text +
            '<i class="delete icon"></i></a>'
        );
      },
      onAdd: function (addedValue, addedText, $addedChoice) {
        var ident = $addedChoice.attr('data-ident');
        var category = $addedChoice.attr('data-category');
      },
      onRemove: function (removedValue, removedText, $removedChoice) {
        var currentName = removedValue.name || removedValue;
        var index = gon.current_selected_label_info.findIndex(function (item, index) {
          return item.name === currentName;
        });
        if (index < 0) return;
        gon.current_selected_label_info.splice(index, 1);
        return true;
      }
    });
  
    var $search = $labelSelection.find('.search');
    $search.keypress(function (e) {
      if (e.which == 13) {
        e.preventDefault();
        return false;
      }
    });
  
    function getDropdownLabelLength () {
      var currentValue = ($labelSelection.dropdown('get value') || '').split(',');
      if (!currentValue) return 0;
      return currentValue.length;
    }
  
    $labelSelection.on('mouseenter', function () {
      if (getDropdownLabelLength() >= MAXSELECTCOUNT) {
        $labelSelection.dropdown('show');
      }
    });
    $labelSelection.on('mouseleave', function () {
      if (getDropdownLabelLength() >= MAXSELECTCOUNT) {
        $labelSelection.dropdown('hide');
      }
    });
    function addGolbalValue (addedValue, ident) {
      var isAlready = gon.current_selected_label_info.some(function (item) {
        return (item.name || item) === addedValue;
      });
      if (!isAlready) {
        gon.current_selected_label_info.push({ name: addedValue, ident: ident });
      }
    }
    function removeSelected (addedValue, replaceText, ident) {
      setTimeout(function () {
        $labelSelection.dropdown('remove selected', addedValue);
        if (replaceText) {
          $labelSelection.dropdown('set selected', replaceText);
          // 添加到全局 , 给其他地方找到 ident
          addGolbalValue(replaceText, ident);
        }
      }, 0);
    }
    function checkLabelLock (word, callback) {
      var url = '/projects/check_project_label';
      var paramsKey = 'project_label';
      if (false) {
        url = '/admin/system/project_labels/check_synonym';
        paramsKey = 'synonym';
      }
      // 兼容 ie
      var paramsLabelLock = {};
      paramsLabelLock[paramsKey] = word;
      $.post(url, paramsLabelLock)
        .done(function (res) {
          var status = Number(res.status);
          //{status: 400，message: message}，代表用户输入的是个屏蔽的标签。
          //{status：200，data: 标签名}，更换用户输入的标签为这个标签名
          //{status: 204}, 对用户的操作不做改变
          if (status !== 400) {
            callback(true, status, res);
          } else {
            callback(false);
            Flash.error(res.message, 4500);
          }
        })
        .fail(function (err) {
          callback(false);
          Flash.error(err.statusText + ':' + err.status, 4500);
        });
    }
    // 多选 联想
    function requestLenovoLabelList (word, callback, errorCallback, finallyCallback) {
      $.get('/projects/find_related_label', { project_label: word })
        .done(function (res) {
          if (res.status == 200) {
            callback(res.data);
          } else {
            Flash.error(res.message, 4500);
          }
        })
        .fail(function (err) {
          errorCallback(err);
        })
        .always(function () {
          finallyCallback();
        });
    }
    // mac chrome 搜狗输入法 诡异bug: 必须加: text、防抖
    $search.attr('type', 'text');
    $search.on(
      'input',
      window.globalUtils.debouce(function () {
        if ($(this).prop('inputStart')) return;
        $(this).val($(this).val().replace(/[,.:?(){}*$@!|&/\<>'"]/g, ''));
        var currentValue = $labelSelection.dropdown('get value');
        if (currentValue) {
          if (Array.isArray(currentValue)) {
            var isOverflow = currentValue.some(function (item) {
              return item.split(',').length >= MAXSELECTCOUNT;
            });
            isOverflow && $(this).val('');
          } else {
            var arrCurrentValue = currentValue.split(',');
            if (arrCurrentValue.length >= MAXSELECTCOUNT) {
              $(this).val('');
            }
          }
        }
        if(!$(this).val()) {
          $labelSelection.dropdown('setup menu', { values: [] });
        }
      }, 200)
    ).on('compositionstart', function () {
        $(this).prop('inputStart', true);
      })
      .on('compositionend', function () {
        $(this).prop('inputStart', false);
        $(this).trigger('input');
      });
    $search
      .on(
        'input',
        window.globalUtils.debouce(function () {
          if ($(this).prop('inputStart')) return;
          var value = $(this).val().trim();
          // 同义词不需要联想
          if (!value || false) return;
          $labelSelection.addClass('loading');
          requestLenovoLabelList(
            value,
            function (res) {
              var strHTML = '';
              var showAddbtn = res.display;
              var arrData = (res.labels || []).map(function (item) {
                //item.value = item.name
                //item.ident = item.ident ? item.ident : ''
                strHTML +=
                  '<div class="item"  data-category=' +
                  item.category +
                  ' data-ident=' +
                  item.ident +
                  ' data-value=' +
                  item +
                  '>' +
                  item +
                  '</div>';
                return item;
              });
              $labelSelection.dropdown('setup menu', { values: [] });
              $labelSelection.find('.menu').html(strHTML);
              $labelSelection.dropdown('show');
              $search.focus();
              // 控制直接添加按钮是否显示, 要求输入C不自动变成C语言,允许直接输入C
              // 替换 "直接添加标签" 按钮的位置 移动到底部
              var $menu = $labelSelection.find('.menu');
              var $addition = $labelSelection.find('.addition');
              $addition.remove();
              if (showAddbtn) {
                $addition.show();
                $menu.append($addition);
              } else {
              }
  
              var selectedItem = $menu.find('.selected');
              selectedItem.removeClass('selected');
              $menu.find(':first').addClass('selected');
            },
            function (err) {
              Flash.error(err.statusText, 4500);
            },
            function () {
              $labelSelection.removeClass('loading');
            }
          );
        }, 300)
      )
      .on('compositionstart', function () {
        // 中文输入开始
        $(this).prop('inputStart', true);
      })
      .on('compositionend', function () {
        // 中文输入完成 主动并允许触发 input
        $(this).prop('inputStart', false);
        $(this).trigger('input');
      });
  
    function setDefaultSelected (arr) {
      if (arr.length <= 0) return;
      var arrLabelSelectedName = arr.map(function (item) {
        return item.name;
      });
      $labelSelection.dropdown('set selected', arrLabelSelectedName);
    }
    setDefaultSelected(arrSelectedLabel);
  });
</script>

<div class='ui warning message select_project_label_tips d-none'>
<span class='text item'>检测到此仓库已存在旧标签</span>
<div class='labels item d-inline'></div>
<span class='text item'>，已为你自动填入</span>
</div>
</div>
</div>
<div class='actions'>
<div class='ui button blank cancel'>取消</div>
<div class='ui button orange btn-save'>保存更改</div>
</div>
</div>

<script>
  window.gon.projectRightSide = {
    homepage: "https://github.com/chxuan/vimplus",
    description: "An automatic configuration program for vim",
    url: "/chxuan/vimplus/update_description",
  }
  window.gon.cloneArrSelectedLabel = [] || []
  $(function () {
    var $labelSelection = $('.js-project-label-selection');
    var $search = $labelSelection.find('.search');
    // 设置 标签选择框默认值.
    function setDefaultSelected ($labelSelection, arr) {
      var arrLabelSelectedName = arr.map(function (item) {
        return item.name || item;
      });
      $labelSelection.dropdown('clear');
      window.gon.current_selected_label_info = (arr || []).slice();
      $labelSelection.dropdown('set selected', arrLabelSelectedName);
    }
  
    function toggleDisabledSelectLabel () {
      if ($labelSelection.hasClass('loading')) {
        $labelSelection.removeClass('loading');
        $search.removeAttr('disabled');
      } else {
        $labelSelection.addClass('loading');
        $search.attr('disabled', true);
      }
    }
  
    // !要求每次打开都重置 , 不保留用户操作。 需要前端自行克隆 确保最新数据。
    var $editModal = $('#edit-project-description');
    $editModal.modal({
      autofocus:false,
      onHide: function () {
        // 清空输入框
        $editModal.find('.search').val('');
        // 清空下拉选项
        $labelSelection.dropdown('setup menu', { values: [] });
      },
      onDeny: function () {
        setDefaultSelected($('.js-project-label-selection'), window.gon.cloneArrSelectedLabel);
      }
    });
    // onDeny 拒绝时 点击关闭按钮时 点击遮罩时
    $(document).on('click', '.modals.page.active, #edit-project-description .icon-close', function (e) {
      // 弹出框已打开 且触发事件元素非子元素
      if ($editModal.hasClass('visible') && e.currentTarget === e.target) {
        setDefaultSelected($('.js-project-label-selection'), window.gon.cloneArrSelectedLabel);
      }
      return false;
    });
    $('.project__right-side').on('click', '.header .btn-edit', function () {
      $editModal.modal('show');
    });
    $('#license-popup').popup({ position: 'bottom center', lastResort: 'bottom center' });
    // open_edit_modal 参数为1 则 自动打开
    if(location.search.indexOf('open_edit_modal=1') > -1) {
      $editModal.modal('show');
      $search.focus();
      // 清空参数 且不刷新 避免刷新页面再次打开modal
      window.globalUtils.clearURLParams()
    }
  });
</script>

</div>
</div>
</div>
<script>
  (function() {
    $(function() {
      Tree.init();
      return TreeCommentActions.init();
    });
  
  }).call(this);
</script>

</div>
<script>
  (function() {
    var donateModal;
  
    Gitee.modalHelper = new GiteeModalHelper({
      alertText: '提示',
      okText: '确定'
    });
  
    donateModal = new ProjectDonateModal({
      el: '#project-donate-modal',
      alipayUrl: '/chxuan/vimplus/alipay',
      wepayUrl: '/chxuan/vimplus/wepay',
      nameIsBlank: '名称不能为空',
      nameTooLong: '名称过长（最多为 36 个字符）',
      modalHelper: Gitee.modalHelper
    });
  
    if (null === 'true') {
      donateModal.show();
    }
  
    $('#project-donate').on('click', function() {
      return donateModal.show();
    });
  
  }).call(this);
</script>
<script>
  Tree.initHighlightTheme('white')
</script>


</div>
<div class='gitee-project-extension'>
<div class='extension lang'>VimL</div>
<div class='extension public'>1</div>
<div class='extension https'>https://gitee.com/chxuan/vimplus.git</div>
<div class='extension ssh'>git@gitee.com:chxuan/vimplus.git</div>
<div class='extension namespace'>chxuan</div>
<div class='extension repo'>vimplus</div>
<div class='extension name'>vimplus</div>
<div class='extension branch'>master</div>
</div>

<script>
  $(function() {
    GitLab.GfmAutoComplete.dataSource = "/chxuan/vimplus/autocomplete_sources"
    GitLab.GfmAutoComplete.Emoji.assetBase = '/assets/emoji'
    GitLab.GfmAutoComplete.setup();
  });
</script>

<footer id='git-footer-main'>
<div class='ui container'>
<div class='logo-row'>
<img class='logo-img' src='/static/images/logo-black.svg?t=158106666'>
</div>
<div class='name-important'>
深圳市奥思网络科技有限公司版权所有
</div>
<div class='ui two column grid d-flex-center'>
<div class='nine wide column git-footer-left'>
<div class='ui four column grid' id='footer-left'>
<div class='column'>
<div class='ui link list'>
<div class='item'>
<a class="item" href="/about_us">关于我们</a>
</div>
<div class='item'>
<a class="item" href="https://www.oschina.net/news/131099/oschina-hiring">加入我们</a>
</div>
<div class='item'>
<a class="item" href="/terms">使用条款</a>
</div>
<div class='item'>
<a class="item" href="/oschina/git-osc/issues">意见建议</a>
</div>
<div class='item'>
<a class="item" href="/links.html">合作伙伴</a>
</div>
</div>
</div>
<div class='column'>
<div class='ui link list'>
<div class='item'>
<a class="item" href="/all-about-git">Git 大全</a>
</div>
<div class='item'>
<a class="item" href="https://oschina.gitee.io/learn-git-branching/">Git 命令学习</a>
</div>
<div class='item'>
<a class="item" href="https://copycat.gitee.com/">CopyCat 代码克隆检测</a>
</div>
<div class='item'>
<a class="item" href="/appclient">APP与插件下载</a>
</div>
</div>
</div>
<div class='column'>
<div class='ui link list'>
<div class='item'>
<a class="item" href="/gitee-stars">Gitee 封面人物</a>
</div>
<div class='item'>
<a class="item" href="/gvp">GVP 项目</a>
</div>
<div class='item'>
<a class="item" href="https://blog.gitee.com/">Gitee 博客</a>
</div>
<div class='item'>
<a class="item" href="/enterprises#nonprofit-plan">Gitee 公益计划</a>
</div>
</div>
</div>
<div class='column'>
<div class='ui link list'>
<div class='item'>
<a class="item" href="/api/v5/swagger">OpenAPI</a>
</div>
<div class='item'>
<a class="item" href="/help">帮助文档</a>
</div>
<div class='item'>
<a class="item" href="/self_services">在线自助服务</a>
</div>
<div class='item'>
<a class="item" href="/help/articles/4338#article-header0">更新日志</a>
</div>
</div>
</div>
</div>
</div>
<div class='seven wide column right aligned followus git-footer-right'>
<div class='qrcode weixin'>
<img alt="Qrcode weixin" src="https://assets.gitee.com/assets/qrcode-weixin-9e7cfb27165143d2b8e8b268a52ea822.jpg" />
<p class='weixin-text'>微信服务号</p>
</div>
<div class='phone-and-qq column'>
<div class='ui list official-support-container'>
<div class='item'>
<a class="icon-popup" href="//shang.qq.com/wpa/qunwpa?idkey=df785aa7af71f7d74149ab062742d761b845464350ecba25eb440357a3e573b7" title="点击加入 Gitee 官方群"><i class='iconfont icon-logo-qq'></i>
<span>官方技术交流QQ群：1050025484</span>
</a></div>
<div class='item mail-and-zhihu'>
<a href="mailto: git@oschina.cn"><i class='iconfont icon-msg-mail'></i>
<span id='git-footer-email'>git#oschina.cn</span>
</a></div>
<div class='item mail-and-zhihu'>
<a href="https://www.zhihu.com/org/ma-yun-osc/" target="_blank"><i class='iconfont icon-zhihu'></i>
<span>Gitee</span>
</a></div>
<div class='item tel'>
<a>
<i class='iconfont icon-tel'></i>
<span>售前及售后使用咨询：400-606-0201</span>
</a>
</div>
</div>
</div>
</div>
</div>
</div>
<div class='bottombar'>
<div class='ui container'>
<div class='ui d-flex d-flex-between'>
<div class='seven wide column partner d-flex'>
<div class='open-atom d-flex-center'>
<img alt="Logo openatom" class="logo-openatom mr-1" src="https://assets.gitee.com/assets/logo-openatom-d083391cc8a54e283529f3fc11cc38ca.svg" />
<a href="https://www.openatom.org/" target="_blank">开放原子开源基金会</a>
<div class='sub-title ml-1'>合作代码托管平台</div>
</div>
<div class='report-12377 d-flex-center ml-3'>
<img alt="12377@2x" class="report-12377__logo mr-1" src="https://assets.gitee.com/assets/12377@2x-1aa42ed2d2256f82a61ecf57be1ec244.png" />
<a href="https://12377.cn" target="_blank">违法和不良信息举报中心</a>
</div>
<div class='copyright ml-3'>
<a href="http://beian.miit.gov.cn/">粤ICP备12009483号</a>
</div>
</div>
<div class='nine wide column right aligned'>
<i class='icon world'></i>
<a href="/language/zh-CN">简 体</a>
/
<a href="/language/zh-TW">繁 體</a>
/
<a href="/language/en">English</a>
</div>
</div>
</div>
</div>
</footer>
<script>
  var officialEmail = $('#git-footer-email').text()
  $('#git-footer-main .icon-popup').popup({ position: 'bottom center' })
  $('#git-footer-email').text(officialEmail.replace('#', '@'))
  window.gon.popover_card_locale = {
    follow:"关注",
    unfollow:"已关注",
    gvp_title: "GVP - Gitee 最有价值开源项目",
    project: "项目",
    org: "开源组织",
    member: "",
    author: "作者",
    user_blocked: "该用户已被屏蔽或已注销",
    net_error: "网络错误",
    unknown_exception: "未知异常"
  }
  window.gon.select_message = {
    placeholder: "请输入个人空间地址或完整的邮箱地址"
  }
</script>
<script src="https://assets.gitee.com/webpacks/popover_card-8d19c6730e535d7bb468.bundle.js"></script>


<div class='side-toolbar'>
<div class='button toolbar-help'>
<i class='iconfont icon-help'></i>
</div>
<div class='ui popup left center dark'>点此查找更多帮助</div>
<div class='toolbar-help-dialog'>
<div class='toolbar-dialog-header'>
<h3 class='toolbar-dialog-title'>搜索帮助</h3>
<form accept-charset="UTF-8" action="/help/load_keywords_data" class="toolbar-help-search-form" method="get"><div style="display:none"><input name="utf8" type="hidden" value="&#x2713;" /></div>
<div class='ui icon input fluid toolbar-help-search'>
<input name='keywords' placeholder='请输入产品名称或问题' type='text'>
<i class='icon search'></i>
</div>
</form>

<i class='iconfont icon-close toolbar-dialog-close-icon'></i>
</div>
<div class='toolbar-dialog-content'>
<div class='toolbar-help-hot-search'>
<div class='toolbar-roll'>
<a class="init active" href="https://oschina.gitee.io/learn-git-branching/?utm_source==gitee-help-widget" title="Git 命令在线学习"><i class='Blue icon icon-command iconfont'></i>
<span>Git 命令在线学习</span>
</a><a class="init " href="https://gitee.com/help/articles/4261?utm_source==gitee-help-widget" title="如何在 Gitee 导入 GitHub 仓库"><i class='icon icon-clipboard iconfont orange'></i>
<span>如何在 Gitee 导入 GitHub 仓库</span>
</a></div>
<div class='toolbar-list'>
<div class='toolbar-list-item'>
<a href="/help/articles/4114">Git 仓库基础操作</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4166">企业版和社区版功能对比</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4191">SSH 公钥设置</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4194">如何处理代码冲突</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4232">仓库体积过大，如何减小？</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4279">如何找回被删除的仓库数据</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4283">Gitee 产品配额说明</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4284">GitHub仓库快速导入Gitee及同步更新</a>
</div>
<div class='toolbar-list-item'>
<a href="/help/articles/4328">什么是 Release（发行版）</a>
</div>
</div>
</div>
<div class='toolbar-help-search-reseult'>
<div class='toolbar-help-flex-column'>
<div class='ui centered inline loader toolbar-help-loader'></div>
<div class='toolbar-list'></div>
<div class='toolbar-help-link-to-help'>
<a href="" target="_blank">查看更多搜索结果</a>
</div>
</div>
</div>
</div>
</div>
<script>
  var opt = { position: 'left center'};
  var $helpSideToolbar = $('.button.toolbar-help');
  var $toolbarRoll = $('.toolbar-roll');
  
  $(function() {
    if (false) {
      $helpSideToolbar.popup(opt).popup({lastResort:'left center'})
    } else {
      $helpSideToolbar.popup({lastResort:'left center'}).popup('show', opt);
      setTimeout(function() {
        $helpSideToolbar.popup('hide', opt);
      }, 3000);
    }
  
    if ($toolbarRoll.length) {
      setInterval(function() {
        var $nextActiveLink = $toolbarRoll.find('a.active').next();
        if (!$nextActiveLink.length) {
          $nextActiveLink = $toolbarRoll.find('a:first-child');
        }
        $nextActiveLink.attr('class', 'active').siblings().removeClass('active init');
      }, 5000);
    }
  })
</script>

<div class='button share-link'>
<i class='iconfont icon-share'></i>
</div>
<div class='ui popup dark'>
<div class='header'>
分享到
</div>
<div class='bdsharebuttonbox' style='display: flex'>
<a class='iconfont icon-home-service-wechat' data-cmd='weixin' title='分享到微信'></a>
<a class='iconfont icon-weibo' data-cmd='tsina' title='分享到新浪微博'></a>
<a class='iconfont icon-qq' data-cmd='sqq' title='分享到QQ好友'></a>
<a class='iconfont icon-qzone' data-cmd='qzone' title='分享到QQ空间'></a>
</div>
</div>
<div class='popup button' id='home-comment'>
<i class='iconfont icon-comment'></i>
</div>
<div class='ui popup dark'>评论</div>
<div class='toolbar-appeal popup button'>
<i class='iconfont icon-report'></i>
</div>
<div class='ui popup dark'>
仓库举报
</div>
<script>
  $('.toolbar-appeal').popup({ position: 'left center' });
</script>

<div class='button gotop popup' id='gotop'>
<i class='iconfont icon-top'></i>
</div>
<div class='ui popup dark'>回到顶部</div>
</div>
<div class='form modal normal-modal tiny ui' id='unlanding-complaint-modal'>
<i class='iconfont icon-close close'></i>
<div class='header'>
登录提示
</div>
<div class='container actions'>
<div class='content'>
该操作需登录 Gitee 帐号，请先登录后再操作。
</div>
<div class='ui orange icon large button ok'>
立即登录
</div>
<div class='ui button blank cancel'>
没有帐号，去注册
</div>
</div>
</div>
<script>
  var $elm = $('.toolbar-appeal');
  
  $elm.on('click', function() {
    var modals = $("#unlanding-complaint-modal.normal-modal");
    if (modals.length > 1) {
      modals.eq(0).modal('show');
    } else {
      modals.modal('show');
    }
  })
  $("#unlanding-complaint-modal.normal-modal").modal({
    onDeny: function() {
      window.location.href = "/signup?from=";
    },
    onApprove: function() {
      window.location.href = "/login?from=";
    }
  })
</script>

<style>
  .side-toolbar .bdsharebuttonbox a {
    font-size: 24px;
    color: white !important;
    opacity: 0.9;
    margin: 6px 6px 0px 6px;
    background-image: none;
    text-indent: 0;
    height: auto;
    width: auto;
  }
  
  #udesk_btn a{
    margin: 0px 20px 217px 0px !important;
  }
</style>
<script>
  (function() {
    $('#project-user-message').popup({
      position: 'left center'
    });
  
  }).call(this);
</script>
<script>
  Gitee.initSideToolbar({
    hasComment: true,
    commentUrl: '/chxuan/vimplus#tree_comm_title'
  })
</script>
<script>
  window._bd_share_config = {
    "common": {
      "bdSnsKey": {},
      "bdText": document.title,
      "bdMini": "1",
      "bdMiniList": ["bdxc","tqf","douban","bdhome","sqq","thx","ibaidu","meilishuo","mogujie","diandian","huaban","duitang","hx","fx","youdao","sdo","qingbiji","people","xinhua","mail","isohu","yaolan","wealink","ty","iguba","fbook","twi","linkedin","h163","evernotecn","copy","print"],
      "bdPic": "",
      "bdStyle": "1",
      "bdSize": "32"
    },
    "share": {}
  }
</script>
<script src="/bd_share/static/api/js/share.js"></script>





<script>
  (function() {
    this.__gac = {
      domain: 'www.oschina.net'
    };
  
  }).call(this);
</script>

<script src="https://assets.gitee.com/assets/bdstatic/app-070a9e339ac82bf2bf7ef20375cd4121.js"></script>
</body>
</html>
