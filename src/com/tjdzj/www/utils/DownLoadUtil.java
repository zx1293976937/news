package com.tjdzj.www.utils;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.tjdzj.www.action.PoiUtil;

public class DownLoadUtil {
    public void downloadFile(HttpServletResponse response) throws Exception {
    	// 文件路径
    	Properties p = getIncomeServerFilePath();
		String filePath = getServerFilePath(p, "help");
        // 下载本地文件
        String fileName = "使用手册".toString(); // 文件的默认保存名
        String encodeFileName = URLEncoder.encode(fileName, "UTF-8")+".docx";
        // 读到流中
        InputStream inStream = new FileInputStream(filePath);// 文件的存放路径
        // 设置输出的格式
        response.reset();
        response.setContentType("bin");
        response.addHeader("Content-Disposition", "attachment; filename=\"" + encodeFileName + "\"");
        OutputStream out = null;
        // 循环取出流中的数据
        byte[] b = new byte[1024];
        int len;
        try {
        	out = response.getOutputStream();
            while ((len = inStream.read(b)) > 0)
            out.write(b, 0, len);
            inStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    /**
	 * 根据配置对象获取绩效工资路径
	 * @param p
	 * @param fileName
	 * @return
	 * @throws Exception
	 */
	public static String getServerFilePath(Properties p ,String fileName) throws Exception {
		if(null == p){
			System.err.println("===== 配置对象无效 =====");
			throw new Exception();
		}
		if(fileName == null || fileName.equals("")){
			System.err.println("===== 无效文件名 =====");
			throw new Exception();
		}
		String path = p.getProperty("beian.income.path");
		String type = p.getProperty("help.income.type");
		//创建指定文件夹
		//createFileFile(path);
		HttpServletRequest request = ServletActionContext.getRequest();  
		/* 得到当前上下文绝对路径 */  
		String contextPath = request.getSession().getServletContext().getRealPath("//");  
		System.out.println("----"+contextPath +path + fileName + type);
		//System.out.println("----" +path + fileName + type);
		return contextPath +path + fileName + type;
	}
	
	/**
	 * 获取配置文件路径
	 * @return
	 */
	public static Properties getIncomeServerFilePath() throws Exception{
		InputStream is = PoiUtil.class.getClassLoader().getResourceAsStream("income.properties");
		if(null == is){
			return null;
		}
		Properties p = new Properties();
		p.load(is);
		return p;
	}
    
}
