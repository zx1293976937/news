//排序
function sortAll(sortField,sortOrder){
	 var thLength =  $(".table tr:first").find("th").length;
	 $(".table tr:first").find("th").each(function(i,v){
		 if((i+1)!=thLength){
			 $(this).css("cursor","pointer");
			 $(this).click(function(){
				 if(sortField == (i+1)){
					 if(sortOrder == 1){
						 sortFormSubmit(sortField,2);
					 }else{
						 sortFormSubmit(sortField,1);
					 }
				 }else{
					 sortFormSubmit(i+1,1);
				 }
			 });
		 }
	 });
 }
 function sortFormSubmit(sortField,sortOrder){
	 $("input[name='fieldQuery']").val(sortField);
	 $("input[name='orderQuery']").val(sortOrder);
	 $('form').submit();
 }