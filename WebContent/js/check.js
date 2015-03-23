/**
 * 验证方法
 * 
 */

/**
 * 是否为空
 * @param id
 * **/
function checkNull(id){
	var val = $("#"+id).val();
	if(val == "" || val == null || $.trim(val) == ""){
		return false;
	}else{
		return true;
	}
}
/**
 * 是否为空
 * @param id
 * **/
function checkNullByName(name){
	var val = $("input[name='"+name+"']").val();
	if(val == "" || val == null || $.trim(val) == ""){
		return false;
	}else{
		return true;
	}
}

/**
 * 是否为空
 * @param id
 * **/
function checkNullByVal(val){
	if(val == "" || val == null || $.trim(val) == ""){
		return false;
	}else{
		return true;
	}
}

/**
 * 判断富文本编辑框内容(含源码)的长度
 * @param id
 * @returns {Boolean}
 * **/
function checkTextLength(id,length){
	var val = $("#"+id).val();
	if(val.length > length){
		return false;
	}else{
		return true;
	}
}

/**
 * 时间比较
 * @param beginTime
 * @param endTime
 * @returns {Boolean}
 */
 
function compareTime(beginTime, endTime){
	var diff = (Date.parse(beginTime) - Date.parse(endTime)) / 3600 / 1000;
	if(diff < 0){
		return true;
	}else{
		return false;
	}
}

/**
 * 查询区域的时间比较
 * @returns {Boolean}
 */
function checkSearchTime(){
	var sTime = $("input[name=startTimeQuery]").val();
	var eTime = $("input[name=endTimeQuery]").val();
	if(checkNullByVal(sTime) && checkNullByVal(eTime)){
		var diff = (Date.parse(sTime) - Date.parse(eTime)) / 3600 / 1000;
		if(diff > 0){
			return false;
		}
	}
	if((checkNullByVal(sTime) && !checkNullByVal(eTime)) || (!checkNullByVal(sTime) && checkNullByVal(eTime))){
		return false;
	}
	return true;
}