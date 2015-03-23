function Nav(DomParentObjBox,DomParentObj,DomChildObjBox,ParentName,boolLevelOrVertical,DomPageWidth,DomChildTop,DomChildLeft){
	$(DomParentObj).mouseenter(function(){
		$(DomChildObjBox).hide();
		$(this).addClass("nav_li_on").siblings().removeClass("nav_li_on");
		$(DomParentObj+":eq(0)").addClass("nav_li_on");
		var currentitle=$(this).attr(ParentName);
		//var currentindex=$(this).index();
		var currentleft=$(this).position().left;
		var currentwidth=$(this).width();
		var currentChildWidth=$(DomChildObjBox+'[id='+currentitle+']').width();
		if($(DomChildObjBox+'[id='+currentitle+']').length>0){
			if(!$(DomChildObjBox+'[id='+currentitle+']').is(':animated')){
				if(boolLevelOrVertical==0){
					$(DomChildObjBox+'[id='+currentitle+']').css('top',DomChildTop);
					if(DomPageWidth-currentleft<currentChildWidth){
						$(DomChildObjBox+'[id='+currentitle+']').css('left',currentleft-(currentChildWidth-currentwidth)+2);
					}else{
						$(DomChildObjBox+'[id='+currentitle+']').css('left',currentleft+2);
					}
				}else{
					$(DomChildObjBox+'[id='+currentitle+']').css('left',DomChildLeft);
				}
				$(DomChildObjBox+'[id='+currentitle+']').show();
			}
		}
	});
	$(DomParentObjBox).mouseleave(function(){
		$(DomChildObjBox).hide();
		$(DomParentObj).removeClass("nav_li_on");
		$(DomParentObj+":eq(0)").addClass("nav_li_on");
	});
	$(DomChildObjBox).mouseleave(function(){
		var currentitle=$(this).attr('id');
		if(!$(DomChildObjBox+'[id='+currentitle+']').is(':animated')){
			$(DomChildObjBox+'[id='+currentitle+']').hide();
		}
		$(DomParentObj).removeClass("nav_li_on");
		$(DomParentObj+":eq(0)").addClass("nav_li_on");
	});
}




/*$(document).ready(function() {
	$(".n_l .l_nav > ul li").hover( 
		function () {
			$(this).parent().addClass("li_on");
			//$(this).parent().siblings().removeClass("li_on");
			$(this).toggleClass("li_on");			
			return false;
		}
	);
	
	
	$(".l_nav >ul li a").click(
		function(){				
			if($(this).attr("class")=="active"){
				$(this).attr('class','active');
			 }else{
				
				$(this).parent().find("a").removeClass("active");
				//$(this).parent().siblings().find("a").removeClass("active");
				$(this).toggleClass("active"); 
			} 
		}						   
	)
	
	
	
	
	
	
});*/


