package com.tjdzj.www.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.CellRangeAddress;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.struts2.ServletActionContext;

import com.tjdzj.www.model.Province;
import com.tjdzj.www.model.User;


/**
 * POI
 * @author 庞
 *
 */
public class PoiUtil {
	public static void main(String[] args) {
		//PoiUtil pu = new PoiUtil();
		//HSSFWorkbook fwb = pu.getHSSFWorkbookModel();
		//HSSFWorkbook wb = 	pu.getHSSFWorkbook(null,null,fwb);
		//downloadFile(request, response, wb, fileName);
	}

	/**
	 * 读取XLS模版
	 * @return
	 */
	public HSSFWorkbook getHSSFWorkbookModel(){
		HSSFWorkbook wb = null;
		try {
			Properties p = getIncomeServerFilePath();
			String filePath = PoiUtil.getServerFilePath(p, "model");
			File file = new File(filePath);
			if (file.exists()) {
				POIFSFileSystem fs = new POIFSFileSystem(new FileInputStream(file));
				if(fs!=null){
					wb = new HSSFWorkbook(fs);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return wb;
	}
	
	/**
	 * 写xls
	 * @param workList
	 * @param hw
	 */
	public HSSFWorkbook getHSSFWorkbook(List<Province> workList1,List<Province> workList2,User user,Map<String,Integer> dataMap,String title,HSSFWorkbook hw){
		HSSFSheet sheet =  hw.getSheetAt(0);
		int y = 0;//列
		HSSFRow row =  sheet.createRow(y); //创建第一行，添加标题
		HSSFCell cell = row.createCell(0);
		cell.setCellValue(title);
		sheet.addMergedRegion(new CellRangeAddress(0,0,0,2));
		//空一行
		//合计
		y = y+2;
		row =  sheet.createRow(y);
		cell = row.createCell(0);
		cell.setCellValue("合计");
		cell = row.createCell(2);
		cell.setCellValue(dataMap.get("allCount")==null?0:dataMap.get("allCount"));
		//
		y = y+2;
		row =  sheet.createRow(y);
		cell = row.createCell(0);
		cell.setCellValue(user.getInchargeMent());
		cell = row.createCell(2);
		cell.setCellValue(dataMap.get(user.getInchargeMent())==null?0:dataMap.get(user.getInchargeMent()));
		if(user.getPrivilege().equals("1")){
			y = y+2;
		}else{
			y = y+1;
		}
		if(workList1!=null && workList1.size()>0){
			for(Province p1:workList1){
				row =  sheet.createRow(y);
				if(user.getPrivilege().equals("1")){
					cell = row.createCell(0);
				}else{
					cell = row.createCell(1);
				}
				cell.setCellValue(p1.getProvinceName());
				cell = row.createCell(2);
				cell.setCellValue(dataMap.get(p1.getProvinceName())==null?0:dataMap.get(p1.getProvinceName()));
				if(workList2!=null && workList2.size()>0){
					for(Province p2:workList2){
						if(p2.getParentUnit().equals(p1.getProvinceName())){
							y=y+1;
							row =  sheet.createRow(y);
							cell = row.createCell(1);
							cell.setCellValue(p2.getProvinceName());
							cell = row.createCell(2);
							cell.setCellValue(dataMap.get(p2.getProvinceName())==null?0:dataMap.get(p2.getProvinceName()));
						}
					}
				}
				y=y+2;
			}
		}
		
		/**
		FileOutputStream fileOut;
		try {

			fileOut = new FileOutputStream("C:\\workbook.xls");
			hsw.write(fileOut);
			fileOut.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		*/
		return hw;
	}
	
	/**
	 * 写xls
	 * @param workList
	 * @param hw
	 */
	public HSSFWorkbook getHSSFWorkbook(List<Province> workList1,List<Province> workList2,User user,Map<String,Integer> dataMap,String title,List<String> listName,List<Map<String, Integer>> listMap,HSSFWorkbook hw){
		HSSFSheet sheet =  hw.getSheetAt(0);
		int y = 0;//列
		HSSFRow row =  sheet.createRow(y); //创建第一行，添加标题
		HSSFCell cell = row.createCell(0);
		cell.setCellValue(title);
		sheet.addMergedRegion(new CellRangeAddress(0,0,0,2));
		//空一行
		//合计
		y = y+2;
		row =  sheet.createRow(y);
		cell = row.createCell(0);
		cell.setCellValue("合计");
		cell = row.createCell(listName.size()+1);
		cell.setCellValue(dataMap.get("allCount")==null?0:dataMap.get("allCount"));
		//
		y = y+2;
		
		row =  sheet.createRow(y);
		int name = 1;
		for(int ln=0;ln<listName.size();ln++){
			cell = row.createCell(name);
			cell.setCellValue(listName.get(ln));
			name+=1;
		}
		cell = row.createCell(name);
		cell.setCellValue("小计");
		
		y = y+1;
		row =  sheet.createRow(y);
		cell = row.createCell(0);
		cell.setCellValue(user.getInchargeMent());
		int nameMap1 = 1;
		for(int ln=0;ln<listMap.size();ln++){
			cell = row.createCell(nameMap1);
			cell.setCellValue(listMap.get(ln).get(user.getInchargeMent())==null?0:listMap.get(ln).get(user.getInchargeMent()));
			nameMap1+=1;
		}
		cell = row.createCell(nameMap1);
		cell.setCellValue(dataMap.get(user.getInchargeMent())==null?0:dataMap.get(user.getInchargeMent()));
		if(user.getPrivilege().equals("1")){
			y = y+2;
		}else{
			y = y+1;
		}
		if(workList1!=null && workList1.size()>0){
			for(Province p1:workList1){
				row =  sheet.createRow(y);
				if(user.getPrivilege().equals("1")){
					cell = row.createCell(0);
				}else{
					cell = row.createCell(1);
				}
				cell.setCellValue(p1.getProvinceName());
				int nameMap2 = 1;
				for(int ln=0;ln<listMap.size();ln++){
					cell = row.createCell(nameMap2);
					cell.setCellValue(listMap.get(ln).get(p1.getProvinceName())==null?0:listMap.get(ln).get(p1.getProvinceName()));
					nameMap2+=1;
				}
				cell = row.createCell(nameMap2);
				cell.setCellValue(dataMap.get(p1.getProvinceName())==null?0:dataMap.get(p1.getProvinceName()));
				if(workList2!=null && workList2.size()>0){
					for(Province p2:workList2){
						if(p2.getParentUnit().equals(p1.getProvinceName())){
							y=y+1;
							row =  sheet.createRow(y);
							cell = row.createCell(0);
							cell.setCellValue(p2.getProvinceName());
							int nameMap = 1;
							for(int ln=0;ln<listMap.size();ln++){
								cell = row.createCell(nameMap);
								cell.setCellValue(listMap.get(ln).get(p2.getProvinceName())==null?0:listMap.get(ln).get(p2.getProvinceName()));
								nameMap+=1;
							}
							cell = row.createCell(nameMap);
							cell.setCellValue(dataMap.get(p2.getProvinceName())==null?0:dataMap.get(p2.getProvinceName()));
						}
					}
				}
				y=y+2;
			}
		}
		
		/**
		FileOutputStream fileOut;
		try {

			fileOut = new FileOutputStream("C:\\workbook.xls");
			hsw.write(fileOut);
			fileOut.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		*/
		return hw;
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
		String type = p.getProperty("beian.income.type");
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
	
	/**
	 * 创建配置路径
	 * @return
	 */
	public static boolean createFileFile(String path) throws Exception{
		if(null == path || path.trim().equals("")){
			return false;
		}
		File file = new File(path);
		if(!file.exists()){
			file.mkdirs();
		}
		return true;
	}
	
	/**
	 * 文件下载
	 * @param request
	 * @param response
	 * @param wb
	 * @throws Exception
	 */
	public static void downloadFile(HttpServletRequest request,HttpServletResponse response,HSSFWorkbook wb,String fileName)throws Exception{
		/*---------------------------------------文件下载----------------------------------*/
		if(fileName==null && fileName.indexOf(".xls") < 0 ){
			System.err.println("== 文件名无效 ==");
			throw new Exception();
		}
		String filenamedownload = null; 
		UUID uuid = UUID.randomUUID();
		filenamedownload = request.getRealPath("/") +fileName.substring(0,fileName.indexOf(".xls"))+uuid+".xls";
		OutputStream out = new FileOutputStream(filenamedownload);
		wb.write(out);//在项目根下生成excel文件 (最后会删除)
		out.close();
		
		//向页面输出流下载excel表格
		OutputStream outp = null; 
		FileInputStream input = null;
		File file = new File(filenamedownload);
		long fileLength=file.length();
		String length=String.valueOf(fileLength);
		String encodeFileName = URLEncoder.encode(fileName.trim(), "UTF-8");
		response.setContentType("application/vnd.ms-excel");//设置页面以excel打开并弹出对话框保存
		response.addHeader("Content-disposition","inline; filename=" + encodeFileName);//设置下载的文件名
		response.addHeader("Content_Length",length);//设置打开的文件大小
			outp = response.getOutputStream();//得到向网页输出的输出流
			input = new FileInputStream(filenamedownload);//读取项目根下的excel生成好的模板
			byte[] b = wb.getBytes();
			int temp = 0;
			while((temp = input.read(b)) > 0){
				outp.write(b, 0, temp);
			}
			outp.flush();
			if(input != null){
				input.close();
				input = null;
			}
			outp.close();
			//删除文件
			file.delete();
	}
}
