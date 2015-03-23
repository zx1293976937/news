package com.tjdzj.www.action;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.tjdzj.www.utils.DownLoadUtil;


public class DownloadAction {

	public String download() throws Exception{
		HttpServletResponse response = ServletActionContext.getResponse();
		DownLoadUtil dlu = new DownLoadUtil();
		dlu.downloadFile(response);
		return null;
	}
	
	
}
