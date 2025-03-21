package com.entity.model;

import com.entity.YisirenyuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 疑似人员
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-03-13 13:10:51
 */
public class YisirenyuanModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 检测温度
	 */
	
	private String jiancewendu;
		
	/**
	 * 测量时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date celiangshijian;
		
	/**
	 * 备注
	 */
	
	private String beizhu;
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：检测温度
	 */
	 
	public void setJiancewendu(String jiancewendu) {
		this.jiancewendu = jiancewendu;
	}
	
	/**
	 * 获取：检测温度
	 */
	public String getJiancewendu() {
		return jiancewendu;
	}
				
	
	/**
	 * 设置：测量时间
	 */
	 
	public void setCeliangshijian(Date celiangshijian) {
		this.celiangshijian = celiangshijian;
	}
	
	/**
	 * 获取：测量时间
	 */
	public Date getCeliangshijian() {
		return celiangshijian;
	}
				
	
	/**
	 * 设置：备注
	 */
	 
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}
			
}
