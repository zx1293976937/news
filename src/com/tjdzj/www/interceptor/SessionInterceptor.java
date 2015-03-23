package com.tjdzj.www.interceptor;
import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.tjdzj.www.action.UserAction;
import com.tjdzj.www.model.User;

public class SessionInterceptor extends AbstractInterceptor {

private static final long serialVersionUID = 1L;
public static Map<String,String> Sessionmap;

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		//获取session
		Map session=actionInvocation.getInvocationContext().getSession();
		//获取拦截器对象
		Object action = (Action) actionInvocation.getAction();
		//请求的方法名
		String method = actionInvocation.getProxy().getMethod();
		//得到session中的用户
		User user = (User)session.get("loginUser");
		//如果是登录跳过
		if(action instanceof UserAction  ){
			return actionInvocation.invoke();
		}
		//如果用户为空则跳到LOGIN页面，否则退出拦截
		if(user==null){
			return "loginresult";//loginresult
		}else{
			return actionInvocation.invoke();
		}
	}
	public SessionInterceptor(){
		if(Sessionmap == null){
			Sessionmap = new HashMap<String,String>();
		}
	}
	
	public Map<String,String> getSessionMap(){
		return Sessionmap;
	}
	
}

