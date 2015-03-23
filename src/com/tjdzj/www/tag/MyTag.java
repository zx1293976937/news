package com.tjdzj.www.tag;

import javax.servlet.jsp.JspException;  
import javax.servlet.jsp.tagext.TagSupport;

public class MyTag extends TagSupport{
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override  
    //当遇到开始标签 该方法会得到调用  
    public int doStartTag() throws JspException {  
          
        //EVAL_BODY_INCLUDE 正常执行 开始标签 与结束标签之间的内容  
        return EVAL_BODY_INCLUDE;  
    }  
      
    @Override  
    //当遇到结束标签 该方法会得到调用  
    public int doEndTag() throws JspException {  
          
        //EVAL_PAGE 正常执行 结束标签之后的内容  
        return EVAL_PAGE;  
    }  
}
