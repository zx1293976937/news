$(function () {
    //日历
    //$("#datepicker").datepicker();
    //左边菜单

	$(".acc div a.one").click( 
		function () {
			$(this).parent().siblings().find("ul").slideUp("normal");
			$(this).parent().parent().siblings().find("ul").removeClass('normal');
			$(this).next().slideToggle("normal"); 
			
			$(this).parent().siblings().find("a").removeClass("one-hover");
			$(this).parent().parent().siblings().find("a").removeClass("one-hover");
			$(this).toggleClass("one-hover");
			
			
		}
	);
	
	
	$(".kid li a").click(function(){				
		if($(this).attr("class")=="current"){
			$(this).attr('class','current');
		 }else{
			$(this).parent().siblings().find("a").removeClass("current");
			$(this).parent().parent().siblings().find("a").removeClass("current");
			$(this).toggleClass("current"); 
		} 
	});
	
	
	$(".acc div a.one").click( 
			function () {
				$(this).parent().siblings().find("a").removeClass("current");
				$(this).parent().parent().siblings().find("a").removeClass("current");
				$(this).toggleClass("current");
			}
	);
    //隐藏菜单
    var l = $('.left_c');
    var r = $('.right_c');
    var c = $('.Conframe');
    $('.nav-tip').click(function () {
        if (l.css('left') == '8px') {
            l.animate({
                left: -300
            }, 500);
            r.animate({
                left: 21
            }, 500);
            c.animate({
                left: 29
            }, 500);
            $(this).animate({
                "background-position-x": "-12"
            }, 300);
        } else {
            l.animate({
                left: 8
            }, 500);
            r.animate({
                left: 260
            }, 500);
            c.animate({
                left: 268
            }, 500);
            $(this).animate({
                "background-position-x": "0"
            }, 300);
        };
    })
    //横向菜单
    $('.top-menu-nav li').click(function () {
        $('.kidc').hide();
        $(this).find('.kidc').show();
        
    })
    $('.kidc').bind('mouseleave', function () {
        $('.kidc').hide();
    })
	
//js选项卡插件
function $i(id){
	return document.getElementById(id);
}
function tabswitch(c, config){
	this.config = config ? config : {start_delay:3000, delay:1500};
	this.container = $i(c);
	this.pause = false;
	this.nexttb = 1;
	this.tabs = this.container.getElementsByTagName('dt');
	var _this = this;
	if(this.tabs.length<1)this.tabs = this.container.getElementsByTagName('li');
	for(var i = 0; i < this.tabs.length; i++){
		var _ec = this.tabs[i].getElementsByTagName('span');
		if(_ec.length<1)_ec = this.tabs[i].getElementsByTagName('a');
		if(_ec.length<1){
			_ec = this.tabs[i]
		}else{
			_ec = _ec[0];
		}
		_ec.onmouseover = function(e){
			_this.pause = true;
			var ev = !e ? window.event : e;
			_this.start(ev, false, null);
		};
		
		_ec.onmouseout = function() {
			_this.pause = false;
		};
		
		try{
			$i(this.tabs[i].id + '_body').onmouseover = function(){
				_this.pause = true;
			};
			
			$i(this.tabs[i].id + '_body').onmouseout = function(){
				_this.pause = false;
			};
		}catch(e){}
	}
 
	if ($i(c + '_sts')) {
		var _sts = $i(c + '_sts');
		var _step = _sts.getElementsByTagName('li');
		if(_step.length<1)_step = _sts.getElementsByTagName('div');
		_step[0].onclick = function() {
			if (_this.tabs[_this.tabs.length-1].className.indexOf('current') > -1) {
				_this.nexttb = _this.tabs.length + 1;
			};
			_this.nexttb = _this.nexttb - 2 < 1 ? _this.tabs.length : _this.nexttb - 2;
			//alert(_this.nexttb);
			_this.start(null, null, _this.nexttb);
		};
		
		_step[1].onclick = function() {
			_this.nexttb = _this.nexttb < 1 ? 1 : _this.nexttb;
			_this.start(null, null, _this.nexttb);
		};
	};
	
	this.start = function(e, r, n){
		if(_this.pause && !e)return;
		if(r){
			curr_tab = $i(_this.container.id + '_' + rand(4));
		}else{
			if(n){				
				curr_tab = $i(_this.container.id + '_' + _this.nexttb);
			}else{
				curr_tab = e.target ? e.target : e.srcElement;
				if(curr_tab.id=="")curr_tab = curr_tab.parentNode;
			}
		}
		
		var tb = curr_tab.id.split("_");
		for(var i = 0; i < _this.tabs.length; i++){
			if(_this.tabs[i]==curr_tab){
				_this.tabs[i].className="current";
				try{					
					$i(_this.tabs[i].id + '_body').style.display = "block";
				}catch(e){}
			}else{
				_this.tabs[i].className="";
				try{
					$i(_this.tabs[i].id + '_body').style.display = "none";
				}catch(e){}
			}
		}
		_this.nexttb = parseInt(tb[tb.length-1]) >= _this.tabs.length ? 1 : parseInt(tb[tb.length-1]) + 1;
	};
}
//设置
var tab1,tab2,tab3,tab4,tab5,tab6,tab7;
function init_load(){
    if ($i('tab1')) {
		tab1 = new tabswitch('tab1', {});
		setInterval("tab1.start(null, null, 1);", 3000);
	}
	if ($i('tab2')) {
		tab2 = new tabswitch('tab2', {});
	}
	if ($i('tab3')) {
		tab3 = new tabswitch('tab3', {});
	}
	if ($i('tab4')) {
		tab4 = new tabswitch('tab4', {});
	}
	if ($i('tab5')) {
		tab5 = new tabswitch('tab5', {});
	}
	if ($i('tab6')) {
		tab6 = new tabswitch('tab6', {});
	}
	if ($i('tab7')) {
		tab7 = new tabswitch('tab7', {});
	}
}

if(window.attachEvent){
    window.attachEvent("onload",init_load);
}else if(window.addEventListener){
    window.addEventListener("load",init_load,false);
}
})