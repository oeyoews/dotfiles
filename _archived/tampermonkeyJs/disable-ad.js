 // ==UserScript==
// @name              【屏蔽广告】屏蔽谷歌广告、百度广告、知乎广告、隐藏谷歌和百度搜索增强百度搜索结果的各种广告等等（过滤所有采用谷歌联盟和百度联盟等广告联盟的广告）
// @namespace http://gongju.dadiyouhui03.cn/app/tool/youhou/index.html
// @version           4.695
// @description      新增：twitter和Youtube视频下载以及广告过滤，可按网址和关键词屏蔽过滤百度谷歌必应bing360的搜索结果、屏蔽谷歌推广的广告和去知乎广告、去百度搜索广告、去百度知道广告、去百度文库广告、去360搜索广告、去必应Bing搜索广告、百度文库去广告、去百度在别的网站的推广广告，移除知乎的强制登陆弹窗。去豆瓣广告
// @match        *://*.baidu.com/*
// @match        *://*/*
// @require https://libs.baidu.com/jquery/2.1.4/jquery.min.js
// @require https://cdn.bootcss.com/sweetalert/2.1.2/sweetalert.min.js
// @require https://cdn.bootcss.com/jquery.qrcode/1.0/jquery.qrcode.min.js
// @require https://cdn.bootcss.com/html2canvas/0.5.0-beta4/html2canvas.js
// @require https://cdn.bootcdn.net/ajax/libs/echarts/5.0.1/echarts.min.js
// @grant        GM_addStyle
// @grant        GM_download
// @grant        GM_xmlhttpRequest
// @grant        GM_getResourceText
// @run-at            document-idle
// @grant             unsafeWindow
// @grant             GM_setClipboard
// @grant             GM_setValue
// @grant             GM_getValue
// @grant             GM_deleteValue
// @grant             GM_openInTab
// @grant             GM_registerMenuCommand
// @grant             GM_unregisterMenuCommand
// @grant             GM.getValue
// @grant             GM.setValue
// @grant             GM_info
// @grant             GM_notification
// @grant             GM_getResourceText
// @grant             GM_openInTab
// @grant             GM_download
// @noframes
// @connect     manmanbuy.com
// @connect     zhihu.com
// @connect     weixin.qq.com
// @connect     baidu.com
// @connect     baiducontent.com
// @connect     dadiyouhui02.cn

// @connect *
// ==/UserScript==

/*
【注意】目前适用于电脑版浏览器，手机浏览器用不了。
因为是根据网站本身的样式屏蔽的，
所以如果该网站有更新而我这边没有及时跟进调整的话就无法达到相应效果。
有建议和改进可以提出来，差评一律不回复

【网站广告优化】针对大部分网站通用的广告样式进行屏蔽美化
大多数网站若使用了谷歌广告、百度广告的页面都将会被净化并隐藏相关广告

【搜索结果优化】自动隐藏搜索结果中的推荐广告，也可按网址和关键词屏蔽过滤搜索结果，已支持的搜索：百度、谷歌、百度、必应bing、360

 2021.7.10
 新增：twitter和Youtube视频下载以及广告过滤。播放遇到广告可自动跳过和屏蔽
 视频下载需自带梯子，不然无法下载。视频解析功能借用相关网站实现。部分网站可能有下载次数限制，如果失效或者有更好用的解析网站请跟帖反馈。


2021.6.16
移除知乎官方不登录不让浏览的登陆弹窗
强化豆瓣全站的广告过滤

2021.6.11
修复1074902074 反馈的拦截广告失败的问题

2021.6.8
修复syrsoN反馈的贴吧部分帖子拦截错误的问题
2021.5.26
修复TNTobsidian提供的不能拦截部分网站广告的问题
2021.5.14
修复lyjhyjyes提供的百度搜索结果中某些品牌广告没有被拦截到的问题
2021.4.29
修复（JIUYU）提供的百度资讯页面无法显示的问题
2021.4.22
修复（冇）提供的百度百科多义项词条被错误屏蔽问题

说明：
百度等网站有可能随时更新可能导致部分功能有些兼容问题
需要更多功能和建议的话，
欢迎跟帖反馈

   */

var mmmjhy=0;

 GM_setValue('zkdz_name', 'baidugy');


(function() {
	var configm='http://www.dadiyouhui01.cn/app/tool/2021bdtool.html';
	   GM_registerMenuCommand("【♐  点击设置】", function(){
GM_openInTab(configm, {active: !0});
    });
var allconfig=new Array();
allconfig=
{
"baidu":      {'baidulogo':true,'baidulianjie':true,'baidueye':false,'baidueyecolor':'rgba(204,232,207,1)'},
"google":        {},
"so360":        {},
"pingbiurl":     [],
"pingbikw":     [],
    };
    if (GM_getValue('allconfig')){
	   }else{
	   GM_setValue('allconfig', allconfig);
	   }
var configurl=window.location.href;
var configmain = document.domain;
    if(configmain.indexOf("baidu.com") > 0 ) {
   if(configurl.indexOf('www.baidu.com/s') > 0){

   	   	   $('.toindex').attr('href',configm);
   	   	   $('.toindex').text('控制面板');
     }
   }
 function configjc() {
 if (configmain.indexOf(window.atob('ZGFkaXlvdWh1aQ==')) >0 && configurl.indexOf(window.atob('YmR0b29sLmh0bWw=')) >0 ){
        if ($('#configload').length == 0 ) {
 $('body').attr('id','configload');
$('#dataversion').attr('version',GM_info.script.version);
$('#dataversion').html(GM_info.script.updateURL);
        }
  }else{
  	  return;
  }
   }
$('body').on('click','.layui-btn.pingbiurl',function(){
	configjc();
    if ($(this).siblings('input').attr("data_zt")=="0"){
$(this).siblings('input').attr("data_zt","1");
$(this).text("准备删除中，手动点击保存后方可生效");
// 手动点击保存后方可生效，不点击保存按钮不会生效
 //普通的自带广告会自动过滤

//若需按网址和关键词屏蔽过滤。请在控制面板中添加，并且手动点击保存后方可生效，不点击保存按钮不会生效
$(this).css("background-color","#908d8d");
        }else{
$(this).siblings('input').attr("data_zt","0");
$(this).text("删除");
$(this).css("background-color","#009688");
        }


})
$('body').on('click','.layui-btn.pingbikw',function(){
	configjc();
    if ($(this).siblings('input').attr("data_zt")=="0"){
$(this).siblings('input').attr("data_zt","1");

$(this).text("准备删除中，手动保存后方可生效");
$(this).css("background-color","#908d8d");
        }else{
$(this).siblings('input').attr("data_zt","0");
$(this).text("删除");
$(this).css("background-color","#009688");
        }


})
$('body').on('click','.layui-btn.pingbiurladd',function(){
	configjc();
let addurl=$(this).siblings('input').val();


  if (addurl.length <5){
            alert("输入的网址太短");
 return;
   }

 if (addurl.indexOf("www.baidu.com/link?") >=0){
             alert("此网址是百度的网址，屏蔽后可能出现问题。请使用其他的网站的链接");

 return;
   }
 if (addurl.indexOf("http") >=0){
 let addurldomain = addurl.split("/");
     if( addurldomain[2] ) {
    addurl=addurldomain[2];
}else{
     alert("输入的网址不合法");
 return;
   }
     }else{
    if (addurl.indexOf(".") >0){
   }else{
     alert("输入的网址不合法");
 return;
   }
     }



$("#pingbiurl").prepend('<label class="layui-form-label" style=" width: 150px;">新增网址</label>  <div class="layui-input-block" > <input type="text" name="title" data_zt="0" lay-verify="title"  value ="'+addurl+'" autocomplete="off"   class="layui-input"   readonly="readonly" style="width: 300px;display: inline-block;margin-left: 50px;color: #898989;">   <button type="button" class="layui-btn pingbiurl" style="display: inline-block;margin-left: 50px;">删除</button></div>'  );
$(this).siblings('input').val('');

})

$('body').on('click','.layui-btn.pingbikwadd',function(){
	configjc();
let addkw=$(this).siblings('input').val();


  if (addkw.length <2){
            alert("输入的关键词必须大于等于2个字 ");
 return;
   }


$("#pingbikw").prepend('<label class="layui-form-label" style=" width: 150px;">新增关键词</label>  <div class="layui-input-block" > <input type="text" name="title" data_zt="0" lay-verify="title"  value ="'+addkw+'" autocomplete="off"   class="layui-input"   readonly="readonly" style="width: 300px;display: inline-block;margin-left: 50px;color: #898989;">   <button type="button" class="layui-btn pingbikw" style="display: inline-block;margin-left: 50px;">删除</button></div>'  );
$(this).siblings('input').val('');

})

function sosave() {
	configjc();
var pingbiurlen=new Array();

 $(".layui-btn.pingbiurl").siblings('input').each(function(index,element) {
 if ($(this).attr("data_zt")=="0" && $(this).val().length >1){
  pingbiurlen.push($(this).val());
}
})
pingbiurlen=Array.from(new Set(pingbiurlen));
pingbiurlen=pingbiurlen.slice(0,100);
var pingbiukwen=new Array();

 $(".layui-btn.pingbikw").siblings('input').each(function(index,element) {
 if ($(this).attr("data_zt")=="0" && $(this).val().length >1){
  pingbiukwen.push($(this).val());
}
})
pingbiukwen=Array.from(new Set(pingbiukwen));
pingbiukwen=pingbiukwen.slice(0,100);
var saallconfig=new Array();
saallconfig=
{
"baidu":      {'baidulogo':$("#baidulogo").find("input").prop("checked"),'baidulianjie':$("#baidulianjie").find("input").prop("checked"),'baidueye':$("#baidueye").find("input").prop("checked"),'baidueyecolor':$("#baidueyecolor").val()},
"google":        {},
"so360":        {},
"pingbiurl":     pingbiurlen,
"pingbikw":    pingbiukwen,
    };
GM_setValue('allconfig', saallconfig);

alert("已保存设置");
}

function sosoreset() {
	if (configmain.indexOf(window.atob('ZGFkaXlvdWh1aQ==')) >0 && configurl.indexOf(window.atob('YmR0b29sLmh0bWw=')) >0 ){
         if (GM_getValue('allconfig')){
	   }else{
	   GM_setValue('allconfig', allconfig);
	   }
    let allwconfig=GM_getValue('allconfig');
for(let i in allwconfig){

    if ( Object.keys(allwconfig[i]).length > 0){
   if (i=="pingbiurl"){
$("#pingbiurl").html("");
        for(let b in allwconfig[i]){
     $("#pingbiurl").append('<label class="layui-form-label" style=" width: 150px;">已经屏蔽的网址'+(Number(b)+1)+'</label>  <div class="layui-input-block" > <input type="text" name="title" data_zt="0" lay-verify="title"  value ="'+allwconfig[i][b]+'" autocomplete="off"   class="layui-input"   readonly="readonly" style="width: 300px;display: inline-block;margin-left: 50px;color: #898989;">   <button type="button" class="layui-btn pingbiurl" style="display: inline-block;margin-left: 50px;">删除</button></div>'  );
           }
        }

 if (i=="pingbikw"){
$("#pingbikw").html("");
        for(let b in allwconfig[i]){
     $("#pingbikw").append('<label class="layui-form-label" style=" width: 150px;">已经屏蔽的关键词'+(Number(b)+1)+'</label>  <div class="layui-input-block" > <input type="text" name="title" data_zt="0" lay-verify="title"  value ="'+allwconfig[i][b]+'" autocomplete="off"   class="layui-input"   readonly="readonly" style="width: 300px;display: inline-block;margin-left: 50px;color: #898989;">   <button type="button" class="layui-btn pingbikw" style="display: inline-block;margin-left: 50px;">删除</button></div>'  );
           }
        }

    for(let k in allwconfig[i]){
       //测试
           if (k=="baidueyecolor"){
       $("#"+k).val(allwconfig[i][k]);
        }
        if (k!="baidueyecolor"){
        if (allwconfig[i][k]==true){
$("#"+k).children("input:eq(0)").prop( "checked", true );
$("#"+k).children("div:eq(0)").attr("class","layui-unselect layui-form-switch layui-form-onswitch");
$("#"+k).find("em").html("ON");
            }else{
$("#"+k).children("input:eq(0)").prop( "checked", false );
$("#"+k).children("div:eq(0)").attr("class","layui-unselect layui-form-switch");
$("#"+k).find("em").html("OFF");
            }
 }
    }
    }
}

}
}
$(document).ready(function(){

    configjc();
    sosoreset();
   })
$('body').on('click','.layui-btn.sososave',function(){
configjc();
  //保存
   GM_setValue('allconfig', allconfig);
     sosave();
	           });

$('body').on('click','.layui-btn.layui-btn-primary.sosoreset',function(){
  //重置
  configjc();
   GM_setValue('allconfig', allconfig);
     sosoreset();
     alert("已还原默认设置");
	           });

		var zkddomain = document.domain;
		var zkdurldomain = location.href;
		 var zhihudl=0;

if(zkddomain.indexOf(".op.gg") > 0 ) {
 $(".vm-placement").remove();
}

if(zkddomain.indexOf(".ctyun.cn") >= 0 || zkddomain.indexOf("cloud.189.cn") >= 0) {
return;
}


if(zkddomain.indexOf("greasyfork.org") <= 0 ) {
delgoogle();
delzhihu();
delbaidu();
del360();
delzhihu();
deldouban();
bing();
 if($("iframe").length>0  ){
 $("iframe").each(function(){
 	 if($(this).attr('src') ){
if ($(this).attr('src').indexOf('pos.baidu.com') >=0) {
 $(this).remove();
}
}
  });
}
setTimeout(function(){
$("div").each(function(){

      if ($(this).attr("data-type")=="GoogleRender"){

  $(this).remove();
  }
});
delgoogle();
delzhihu();
delbaidu();
del360();
delzhihu();
deldouban();
bing();
 $("iframe").each(function(){
 	 	 if($(this).attr('src') ){
if ($(this).attr('src').indexOf('pos.baidu.com') >=0 ) {
 $(this).remove();
}
}
  });

},1500);

var ref = "";

ref = setInterval(function(){
    delgoogle();
},2000);


}

function delgoogle() {

	  if(zkdurldomain.indexOf('google.com/search?s') > 0 ){

    	   if ( $('#bingconfig_btn').length>0){
  	   }  else{
  	   	    $('.gb_5e').before('<span id="bingconfig_btn" class="gb_Sc" style="line-height: 45px;  margin-left:20px;margin-right:20px;"  onclick="window.location.href=\''+configm+'\';"  ><input type="button"   value="控制面板"></span>');
  	   }

  	    $($("div[id='rso']")).find(".g").each(function(zxb,hfd){
  	    	 let urlxzv="";
  	    	   let urlxzt="";
  	    	 urlxzv=$(hfd).find(".rc").find("a").attr("href");
 	  urlxzt=$(hfd).text();

    let pingbijc=0;
     if (urlxzv){
    if (GM_getValue('allconfig').baidu.baidulianjie==true){
         for(let b in GM_getValue('allconfig').pingbiurl){
         if (urlxzv.indexOf(GM_getValue('allconfig').pingbiurl[b]) >=0){
           $(hfd).remove();
             pingbijc=1;
         }
             }
    }
    }
  if ( pingbijc==0 && urlxzt ){
         for(let b in GM_getValue('allconfig').pingbikw){
         if (urlxzt.indexOf(GM_getValue('allconfig').pingbikw[b]) >=0){
          $(hfd).remove();

         }
             }
    }


  	     });
	}


	 if($("ins").length>0  ){
	$("ins").each(function(){
      if ($(this).attr("class") ){
      if ($(this).attr("class").indexOf('google') >=0){
  $(this).remove();
}
  }
});
}
	var x = document.getElementsByClassName("ad");
	var i;
	for (i = 0; i < x.length; i++) {
		x[i].style.display = "none";
	}

	var y = document.getElementsByClassName("adsbygoogle");
	var j;
	for (j = 0; j < y.length; j++) {
		y[j].style.display = "none";
	}

	$(".adsbygoogle").remove();



$("script").each(function(){

if($(this).attr("src")){
let googads=$(this).attr("src");
 if (googads.indexOf('adsbygoogle.js') >=0 || googads.indexOf('g.doubleclick.net') >=0){
$(this).remove();
}
}
  });
 $("div").each(function(){
 $(this).attr("id");
if($(this).attr("id")){
let googsrcid=$(this).attr("id");
 if (googsrcid.indexOf('google_ads') >=0){
$(this).remove();
}
}
 if($(this).attr("data-google-query-id")){
$(this).remove();
}
  });



}

function bing() {


  if(zkdurldomain.indexOf('bing.com/search?q=') > 0 ){
  	   $("li[class='b_ad']").remove();

    	   if ( $('#bingconfig_btn').length>0){
  	   }  else{
  	   	    $('#id_sc').before('<span id="bingconfig_btn" class="cbtn" style="line-height: 45px;  margin-left:20px;margin-right:20px;"  onclick="window.location.href=\''+configm+'\';"  ><input type="button"   value="控制面板"></span>');
  	   }

  	    $($("li[class='b_algo']")).each(function(zxb,hfd){

  	    	 let urlxzv="";
  	    	   let urlxzt="";
  	    	 urlxzv=$(hfd).find("h2").find("a").attr("href");
 	  urlxzt=$(hfd).text();
//console.log(urlxzv)
     let pingbijc=0;
     if (urlxzv){
    if (GM_getValue('allconfig').baidu.baidulianjie==true){
         for(let b in GM_getValue('allconfig').pingbiurl){
         if (urlxzv.indexOf(GM_getValue('allconfig').pingbiurl[b]) >=0){
           $(hfd).remove();
             pingbijc=1;
         }
             }
    }
    }
  if ( pingbijc==0 && urlxzt ){
         for(let b in GM_getValue('allconfig').pingbikw){
         if (urlxzt.indexOf(GM_getValue('allconfig').pingbikw[b]) >=0){
          $(hfd).remove();

         }
             }
    }


  	     });
	}
	}
function del360() {
	 if($("iframe").length>0  ){
 $("iframe").each(function(){
if($(this).attr('src') ){
//console.log($(this).attr('src'))
}
  });
}

   if(zkddomain.indexOf('360kan.com') > 0 ){

   	   $("li").each(function(){
 	 	 if ($(this).attr("data-clicklog") ){
 	 	 	 $(this).remove();
 	 	 }
   })
    }
	   if (zkddomain.indexOf('so.com') > 0 && zkdurldomain.indexOf('so.com/s') > 0){
	     $('.title.home-nav').attr('href',configm);
   	   	   $('.title.home-nav').text('控制面板');

	   $($("li[class='res-list']")).each(function(zx,hfd){
 let urlxzv="";
  let urlxzt="";
 if ($(hfd).children("h3").children("a").attr("data-mdurl")){

  urlxzv=$(hfd).children("h3").children("a").attr("data-mdurl");
 }else{
 urlxzv=$(hfd).children("h3").children("a").attr("href");
 }
 urlxzt=$(hfd).text();
//console.log(urlxzv)
     let pingbijc=0;
     if (urlxzv){
    if (GM_getValue('allconfig').baidu.baidulianjie==true){
         for(let b in GM_getValue('allconfig').pingbiurl){
         if (urlxzv.indexOf(GM_getValue('allconfig').pingbiurl[b]) >=0){
           $(hfd).remove();
             pingbijc=1;
         }
             }
    }
    }
  if ( pingbijc==0 && urlxzt ){
         for(let b in GM_getValue('allconfig').pingbikw){
         if (urlxzt.indexOf(GM_getValue('allconfig').pingbikw[b]) >=0){
          $(hfd).remove();

         }
             }
    }

});



	   	   $("#e_idea_pp").remove();
	   	    $("#side").remove();
	   	    $("#mohe-360pic_sad--normal").remove();
	   	     $("#e_map_idea").remove();
	   	      $("#e_idea_pp_vip_bottom").remove();



	   }
	   	   if(zkddomain.indexOf('so.com') > 0 ){

	   	   $(".aside").remove();

	   	   	    $("#js-bussiness-bot-list").remove();
	   	      $("#js-mod-fixed-inn").remove();
	   	        $("#e_idea_wenda_leftBox").remove();

	}
}

   if(zkdurldomain.indexOf('www.baidu.com/s') > 0){

         setInterval(function(){
     delbaidu()
       },1000);
           }


function delbaidu() {

   if(zkddomain.indexOf("baidu.com") > 0 ) {
   if(zkdurldomain.indexOf('www.baidu.com/s') > 0 && zkdurldomain.indexOf('rtt=1') < 0){
        $("[cmatchid]").remove();
        $("#content_right").remove();

  $("#top-ad").remove();
 $(".ec-pc_mat_c_banner__cc_banner_background_b").remove();//品牌广告模块
//$("#content_left").css("width","100%");
//$(".c-container").css("width","100%").css("padding-bottom","20px");
       if (GM_getValue('allconfig').baidu.baidueye==true){
$("html body").css("background-color",GM_getValue('allconfig').baidu.baidueyecolor);
$("#head,#foot,#page,#rs,#help,.foot-inner").css("background-color",GM_getValue('allconfig').baidu.baidueyecolor);
   }
        $("[cmatchid]").remove();
        $("#content_right").remove();
//



 $("div[id='content_left'] >div").each(function(index,element) {
 	 let t = $(element).children(':last-child').children(':last-child').text();

if (t=="广告"){
 $(element).remove();
}
   let xzggbt =$(element).find("span");
 if (xzggbt){
 	 xzggbt.each(function(index,elnt) {
 	 if  ( $(elnt).text()=="广告"){
 	 	  $(element).remove();
 	 }
 	 })
 }

   let xzbt =$(element).find("h3").find("a");
  	    let durl=xzbt.attr("href");

      if ($(element).attr("d-new") ){
           }else{


  	    	    if (durl){

           if ( durl.indexOf("baidu.com/link?") >0  ){
           	     if  (durl.indexOf("eqid") < 0  ){
                    durl = durl + "&wd=&eqid=";
                  }
             let durltxt=xzbt.text();
           let durlhtml=durltxt;
            let wurl="";
                  GM_xmlhttpRequest({
                  method : "GET",
                 dataType: "json",
                 timeout: 2000,
                url : durl,
  onreadystatechange : function (response) {
  if (response.response){
   var urlzxa2=response.response.match(/URL=\'(\S*)\'/);
   xzbt.attr("href",urlzxa2[1]);
   durl=urlzxa2[1];
    $(element).attr("d-new","1");

    	 if (durl){
    	 let bdvbt = $(element).children(':last-child').find('.c-showurl.c-color-gray');

  if (bdvbt){
  	    let durlvtxt=bdvbt.text();
  	     let addurl=urlzxa2[1];
  //	    console.log(bdvbt.html())
   let addxurldomain = urlzxa2[1].split("/");
     if( addxurldomain[2] ) {
    addxurl=addxurldomain[2];
}
    	 	    if (durlvtxt.indexOf('.') < 0){
    	durlvtxt=durlvtxt+'：'+addxurl;
}else{
	durlvtxt=addxurl;
}

bdvbt.text(durlvtxt);
bdvbt.attr('href',durl);
}
     	 	   if (GM_getValue('allconfig').baidu.baidulianjie==true){

         for(let b in GM_getValue('allconfig').pingbiurl){
         if (durl.indexOf(GM_getValue('allconfig').pingbiurl[b]) >=0){
	 $(element).remove();
         }
             }
    }
     	       if ($(element).attr("d-lg") ){

           }else{
           	     	$(element).attr("d-lg","1");
     	 let urldomain = durl.split("/");
let urldofavicon = "";
if( urldomain[2] ) {
    urldofavicon=urldomain[0]+"//"+urldomain[2]+"/favicon.ico"
	}

if($(element).find("h3").find("img").attr('src') ) {

  urldofavicon=$(element).find("h3").find("img").attr('src');
}

if (GM_getValue('allconfig').baidu.baidulogo==true){
if($(element).find("h3").find("img").attr('src') ) {
}else{
	$(element).find("h3").find("a").prepend('<div class="c-img c-img-circle c-gap-right-xsmall" style="border-radius: 1%;display: inline-block; width: 20px; height: 20px; position: relative; top: 3px;background: rgba(0, 0, 0, 0);"><span class="c-img-border c-img-source-border c-img-radius-large" style="background: rgba(0, 0, 0, 0);border: 0px solid rgba(0,0,0,0);"></span><img style="max-width:24px;" src="'+urldofavicon+'"    onerror="javascript:this.parentNode.style.display = \'none\';" ></div>');
	$(".c-img.c-img-circle.c-gap-right-xsmall").css({"width":"20px" ,"height":"20px"});
}

}

    }
 }
}

}
})
           }
    }

}
      if ($(element).attr("d-old") ){

           }else{
           	    	$(element).attr("d-old","1");
    let pingbijc=0;

         if ( pingbijc==0 ){
         for(let b in GM_getValue('allconfig').pingbikw){
         let pingbici=	 $(element).find("h3").find("a").text()+ $(element).find(".c-abstract").text();
         if (pingbici.indexOf(GM_getValue('allconfig').pingbikw[b]) >=0){
 $(element).remove();
	 pingbijc=1;

         }
             }
    }

     	 }



})


   if(zkdurldomain.indexOf("sf/vsearch") < 0 ) {
        $("#content_left").find("div:eq(0)").each(function() {
          var id = String($(this).attr("id"));
            if (id == "undefined") {
                 $(this).remove();
            }
        })
}


}

    if(zkdurldomain.indexOf('zhidao.baidu.com') > 0){
        $(".shop-entrance").remove();
        $(".activity-entry").remove();
        $(".task-list-button").remove();
    }
    if(zkdurldomain.indexOf('zhidao.baidu.com/search') > 0){
        $(".bannerdown").remove();
        $(".aside.fixheight").remove();
        $(".wgt-bottom-ask").remove();

        $(".leftup").remove();
        $(".wgt-iknow-special-business").remove();
    }
    if(zkdurldomain.indexOf('zhidao.baidu.com/question') > 0){
    	$(".grid-r.qb-side").remove();
        $(".wgt-ads").remove();
        $(".wgt-bottom-union").remove();
        $(".adTopImg").remove();
        $(".exp-topwld-tip").remove();
        $("#wgt-ecom-banner").remove();
        $("#wgt-ecom-right").remove();
        $(".question-number-text-chain").remove();
        setTimeout(function(){
            $(".ec-pc_mat_coeus__related_link_text-content").remove();
        }, 1000);
    }


    if(zkdurldomain.indexOf('baike.baidu.com') > 0){
        setTimeout(function(){
            $("#navbarAdNew").remove();
            $(".userbar_mall").remove();
        }, 1000);
    }
    if(zkdurldomain.indexOf('baike.baidu.com/item') > 0){

        //$(".before-content").remove(); 百度百科多义词和秒懂百科视频相关
        $(".configModuleBanner").remove();
        setTimeout(function(){
            $(".topA").remove();
            $(".right-ad").remove();
            $(".lemmaWgt-promotion-vbaike").remove();
            $(".lemmaWgt-promotion-slide").remove();
            $("#side_box_unionAd").remove();
        }, 1000);
    }


    if(zkdurldomain.indexOf('wenku.baidu.com') > 0){
        $(".banner-ad").remove();
        $(".ad-box").remove();
        $("#banurl").remove();
        $("#my-wkHome-vip-tips").parent().remove();
        $(".vip-card").remove();
        setTimeout(function(){
            $(".zsj-topbar").remove();
            $(".lastcell-dialog").remove();
            $(".zsj-toppos").remove();
        }, 1000);
    }
    if(zkdurldomain.indexOf('wenku.baidu.com/search') > 0){
        $("#fengchaoad").remove();
        $(".yuedu-recommend-wrap").remove();
        $(".search-aside-adWrap").remove();
    }
    if(zkdurldomain.indexOf('wenku.baidu.com/view') > 0){
    	 $(".hx-bottom-wrapper").remove();
        $(".relative-recommend-wrapper").remove();
        $(".fc-container").remove();
        $("#ggbtm").parent().remove();
        $(".union-ad-bottom").remove();
        $(".ad-vip-close-bottom").remove();
    	   $(".operation-wrapper").remove();
        $(".relative-course-wrapper").remove();
        $(".hot-search-wrapper").remove();
        $(".hx-right-wrapper").remove();
        $("#relative-videos-wrap").remove();
        $(".add-has-money-pay").remove();
        $(".wk-color-vip-red").parent().parent().remove();
        $(".vip-tips-wrap").parent().remove();
        $(".top-ads-banner-wrap").remove();
        setTimeout(function(){
            $(".wangpan-tip").remove();
            $(".new-user-discount-tip").remove();
            $(".pay-vip-btn-wrap").remove();
            $(".relative-doc-ad-wrapper").remove();
        }, 1000);
        setInterval(function(){
            $(".view-like-recom-fc").remove();
        }, 1000);
    }


    if(zkdurldomain.indexOf('image.baidu.com/search/index') > 0){

        $("#pnlBeforeContent").remove();
        setInterval(function(){
            $(".fcImgli").remove();
        }, 1000);
    }
    if(zkdurldomain.indexOf('image.baidu.com/search/detail') > 0){
        $(".text-link-ads").remove();
        $(".rsresult-card").remove();
        $("#adCard").remove();
    }


    if(zkdurldomain.indexOf('tieba.baidu.com/f/search') > 0){
        $(".s_aside").remove();
    }
    if(zkdurldomain.indexOf('tieba.baidu.com/f?') > 0){
      setTimeout(function(){
           $(".fengchao-wrap-box").remove();

            	$("div").each(function () {
                if (typeof($(this).attr("ad-dom-img")) != "undefined") {
                	 $(this).remove();
                }
            });
               }, 1000);

         $("div").each(function(){
var fds=$(this).attr("title");
if (fds =="广告") {
var sda=$(this).parent().parent().parent();
if(sda.prop("tagName").toLowerCase()=="li"){
 $(sda).remove();
}

}
  });
 $("span").each(function(){
var fds=$(this).text();
if (fds =="广告") {
var sda=$(this).parent().parent().parent().parent().parent();
if(sda.prop("tagName").toLowerCase()=="li"){
 $(sda).remove();
}

}
  });

    }
    if(zkdurldomain.indexOf('tieba.baidu.com/p') > 0){
        //setInterval(function(){ }, 1000);
        //$("span:contains('广告')").parent().parent().parent().parent().parent().parent().remove();
          setTimeout(function(){


            	$("div").each(function () {
                if (typeof($(this).attr("ad-dom-img")) != "undefined") {
                	 $(this).remove();
                }
            });
               }, 1000);
    }


    if(zkdurldomain.indexOf('map.baidu.com/search') > 0){

        setInterval(function(){
            $(".damoce-search-item.damoce-search-item-nopoi").remove();
        }, 1000);
    }


    if(zkdurldomain.indexOf('jingyan.baidu.com/search') > 0){
        $(".ec_ad").parent().remove();
    }
    if(zkdurldomain.indexOf('jingyan.baidu.com/article') > 0){
        $("#fresh-share-exp-e").remove();
        $(".wgt-income-money").remove();
        $(".aside-pro-container").remove();
        $("#bottom-ads-container").remove();
        $(".magzine-list").remove();
    }



    if(zkdurldomain.indexOf('video.baidu.com') > 0 || zkdurldomain.indexOf('v.baidu.com') > 0){
        setTimeout(function(){
        	 $("#PCallpagesidebar1").remove();
            $("#PCallpagesidebar2").remove();
            $(".bdvideo-adver-carousel").parent().remove();
            $("div[id*='adone']").remove();
            $("div[id*='adtwo']").remove();
            $("#pallcommoncolumnad").remove();
            $("#index_right_top").remove();
            $("#qzfcadid").remove();
            $("#pcshortchannelTopRight").remove();
            $("#__lawnImageContainer").parent().parent().remove();

            $("#detail_adm_right").remove();
            $(".ctt-adver1-banner").remove();
            $("div[id*='PCDetailPageTopRightList']").remove();


        }, 1000);
        setInterval(function(){
        	   $("div[id*='channelBannerAdver']").remove();
            $("div[id*='channelColumn']").parent().remove();
            $("div[id*='ChannelColumn']").parent().remove();
            $("div[id*='pc']").remove();
            $("div[id*='PC']").remove();
            $("div[id*='adv-carousel-item']").parent().remove();
            $("[id*='FeedAdSys']").remove();
            $("div[id*='TabAd']").remove();
            $(".section-ad").remove();
            $(".full-collunm-ad").remove();



        }, 1000);
    }
    if(zkdurldomain.indexOf('video.baidu.com/v') > 0 || zkdurldomain.indexOf('v.baidu.com/v') > 0){

        $(".top-ad-cont").remove();
        setTimeout(function(){

            $("div[id*='searchMoreLong']").remove();
            $("#searchPagefeedBanner").remove();
            $(".side-content").remove();
            $("#psBottomColumn").parent().remove();
        }, 1000);
        setInterval(function(){

            $("#searchResultAdOne").remove();
            $("#searchHotShortSeven").remove();
            $("#searchHotShortSevenTwo").remove();
        }, 1000);
    }
    if(zkdurldomain.indexOf('www.baidu.com/sf/vsearch') > 0){

        $("#s_tab").next().next().each(function() {
            var id = String($(this).attr("id"));
            if (id == "undefined") {
                $(this).remove();
            }
        })
    }
 }
  }
 function delzhihu() {
 if(zkdurldomain.indexOf('zhihu.com') > 0){
$("html").bind("DOMNodeInserted",function(e){

 		   if ( $(".Button.Modal-closeButton.Button--plain").length>0 && zhihudl==0){
 		   	   zhihudl=1;
 		   	   $(".Button.Modal-closeButton.Button--plain").click();
  	   }

})




         $(".Pc-feedAd").remove();
$(".Banner-adsense").remove();

$("img").each(function(){

      if ($(this).attr("alt")=="广告"){

  $(this).remove();

  }
});
    }

}
 function deldouban() {
 if(zkdurldomain.indexOf('douban.com') > 0){
// $('div[ad-status]').attr('ad-status')
        $('div[ad-status]').each(function() {
            if ($(this).attr('ad-status') == "appended") {
                $(this).remove();
            }
        })
    }

}
 //test


    function closeytAds(){
        var adclose = document.querySelector('.ytp-ad-skip-button')||document.querySelector('.ytp-ad-overlay-close-button');
        var adybremove = document.querySelector('#player-ads')||document.querySelector('div#sparkles-container')||document.querySelector('ytd-compact-promoted-item-renderer')||document.querySelector('ytd-video-masthead-ad-v3-renderer');
        if(adybremove){
            adybremove.remove();
        }
        if(adclose){
            adclose.click();
        }
    }
        function getytvele(){
    if($('div#info-contents').length>0){
       // addbtn();
    }else{
    setTimeout(getytvele,500);
    }
    }
      function inybit(){
        document.querySelector('ytd-popup-container').style.display='';
        document.querySelector('ytd-app').style.zIndex='';
    }
        function reytb(){
        closeytAds();

        if(location.href!==zkdurldomain)
        {

        inybit();
        zkdurldomain=location.href;
        getytvele();
        }

    }
    if(zkdurldomain.indexOf("youtube.com") >= 0 ) {

      setInterval(function(){
     reytb();
     reydown();
       },1500);
    }
      setInterval(function(){
     deltwitter()
       },1500);


     function deltwitter() {
    if(zkdurldomain.indexOf("twitter.com") >= 0 ) {

 $("article").each(function(index,element) {
  if ($(element).attr("d-twitter") ){

           }else{
   let xzggtt =$(element).find("span");
 if (xzggtt){
 	 xzggtt.each(function(index,elnt) {
 	 if  ( $(elnt).text()=="推荐"){
 	 	  $(element).remove();
 	 }
 	 })
 }
   }

     let xzggaurl =$(element).find("a");
      let xzggavideo =$(element).find("video");
       let xzggatime =$(element).find("time");

 if (xzggaurl && xzggavideo){
 	  if ($(element).attr("d-vurl") ){

           }else{
 	if (xzggatime.length<2){
 		 xzggavideo.each(function(index,vurl) {
 	 if  (  $(vurl).attr('preload')){
 	 	   if ($(vurl).attr("d-vurl") ){

           }else{
 	 xzggaurl.each(function(index,aurl) {
 	 if  ( $(aurl).attr('href')){
 	 	   if ($(vurl).attr("d-vurl") ){

           }else{

  if ($(aurl).attr('href').indexOf("status") >= 0 ) {
  	  let videourl = $(aurl).attr('href');
videourl = videourl.match(/status\/(\S*)/)[1];
videourl="https://twitter.com/i/status/"+videourl;
 
 	   	    $(vurl).attr("d-vurl","1");
 	    $(vurl).attr("d-video",videourl);
 	    $(element).attr("d-vurl","1");
 	    $(element).find("div[role='group']").each(function(index,downbut) {
 	    	//$(downbut).remove();
 	    	 $(downbut).before('<div style="margin-top: 10px;"><a style=" text-align:center;border:2px solid #DCDCDC;padding:3px 10px; background:#dddddd;border-radius:10px;-moz-border-radius:10px;" id="gogoxvideoa" data-url="'+videourl+'" >下载视频线路一</a><a style=" text-align:center;border:2px solid #DCDCDC;padding:3px 10px; background:#dddddd;border-radius:10px;-moz-border-radius:10px;margin-left: 10px;" id="gogoxvideod" data-url="'+videourl+'" >下载视频线路二</a><div>'  );


	 	    	})

 	   	    }
 	    }
 	 }
 	 })
 	 	 }
 	 }
 	  //   console.log('')
 	 	 })
 	 }
 	  }
 }
 $(element).attr("d-twitter","1");

 })


 }
    }



    $('body').on('click','#gogoxvideoa',function(){
    	 GM_setValue('gogoxvideodown', $(this).attr('data-url'));
    	window.open("https://www.getfvid.com/zh/twitter");
    })
    $('body').on('click','#gogoxvideob',function(){
    	 GM_setValue('gogoxvideodown', $(this).attr('data-url'));
    	window.open("https://9convert.com");
    })
    $('body').on('click','#gogoxvideoc',function(){
    	 GM_setValue('gogoxvideodown', $(this).attr('data-url'));
    	window.open("https://www.y2mate.com/en8/download-youtube");
    })
    $('body').on('click','#gogoxvideod',function(){
    	 GM_setValue('gogoxvideodown', $(this).attr('data-url'));
    	window.open("https://superparse.com");
    })
    	
      function reydown(){
    	  if(location.href.indexOf("youtube.com/watch?") >= 0 ) {
   console.log(location.href)
   	   
  if ($("a[class='gogoxvideo']").attr('data-url')==location.href){
  	  return;
}  else {
	$(".gogoxvideo").remove();
 var basebtn = '<div style="margin-top:8px;" ><a    style="text-align:center;border:2px solid #DCDCDC;padding:3px 20px; background:#dddddd;border-radius:10px;-moz-border-radius:10px;width: 80px;" id="gogoxvideod"   class="gogoxvideo" data-url="'+location.href+'">下载视频线路一</a><a    style="margin-left: 10px;text-align:center;border:2px solid #DCDCDC;padding:3px 20px; background:#dddddd;border-radius:10px;-moz-border-radius:10px;width: 80px;" id="gogoxvideob"   class="gogoxvideo" data-url="'+location.href+'">高清线路二</a><a    style="margin-left: 10px;text-align:center;border:2px solid #DCDCDC;padding:3px 20px; background:#dddddd;border-radius:10px;-moz-border-radius:10px;width: 80px;" id="gogoxvideoc" class="gogoxvideo"  data-url="'+location.href+'">高清线路三</a></div>';
  $('div#info-contents').after(basebtn);
}
   	   
 
     
    }
    }
      if(location.href.indexOf("9convert.com") >= 0 ) {
  	  if (GM_getValue('gogoxvideodown')){
  	  console.log(GM_getValue('gogoxvideodown'))
  $("input[name='query']").attr('value',GM_getValue('gogoxvideodown'));
  GM_deleteValue('gogoxvideodown');
     setTimeout(function(){
   $(".btn-red").click();
        }, 500);

  	  }

    }

    if(location.href.indexOf("y2mate.com/en8/download-youtube") >= 0 ) {
  	  if (GM_getValue('gogoxvideodown')){
  	  console.log(GM_getValue('gogoxvideodown'))
  $("input[name='query']").attr('value',GM_getValue('gogoxvideodown'));
  GM_deleteValue('gogoxvideodown');
     setTimeout(function(){
   $("button[id='btn-submit']").click();
        }, 500);

  	  }

    }

  if(location.href.indexOf("superparse.com") >= 0 ) {
  	  if (GM_getValue('gogoxvideodown')){
  	  console.log(GM_getValue('gogoxvideodown'))
  $("input[name='url']").attr('value',GM_getValue('gogoxvideodown'));
  GM_deleteValue('gogoxvideodown');
     setTimeout(function(){
     $("button[class='btn']").click();
        }, 500);

  	  }

    }
      if(location.href.indexOf("getfvid.com/zh/twitter") >= 0 ) {
  	  if (GM_getValue('gogoxvideodown')){
  	  console.log(GM_getValue('gogoxvideodown'))
  $("input[name='url']").attr('value',GM_getValue('gogoxvideodown'));
  GM_deleteValue('gogoxvideodown');
     setTimeout(function(){
     $("button[id='btn_submit']").click();
        }, 500);

  	  }

    }
 //test
    })()
