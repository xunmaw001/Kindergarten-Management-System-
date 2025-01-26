package com.entity.model;

import com.entity.DaibanshixiangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 待办事项
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public class DaibanshixiangModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 事项内容
	 */
	
	private String shixiangneirong;
		
	/**
	 * 待办时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date daibanshijian;
		
	/**
	 * 教师工号
	 */
	
	private String jiaoshigonghao;
		
	/**
	 * 录入时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date lurushijian;
		
	/**
	 * 用户id
	 */
	
	private Long userid;
				
	
	/**
	 * 设置：事项内容
	 */
	 
	public void setShixiangneirong(String shixiangneirong) {
		this.shixiangneirong = shixiangneirong;
	}
	
	/**
	 * 获取：事项内容
	 */
	public String getShixiangneirong() {
		return shixiangneirong;
	}
				
	
	/**
	 * 设置：待办时间
	 */
	 
	public void setDaibanshijian(Date daibanshijian) {
		this.daibanshijian = daibanshijian;
	}
	
	/**
	 * 获取：待办时间
	 */
	public Date getDaibanshijian() {
		return daibanshijian;
	}
				
	
	/**
	 * 设置：教师工号
	 */
	 
	public void setJiaoshigonghao(String jiaoshigonghao) {
		this.jiaoshigonghao = jiaoshigonghao;
	}
	
	/**
	 * 获取：教师工号
	 */
	public String getJiaoshigonghao() {
		return jiaoshigonghao;
	}
				
	
	/**
	 * 设置：录入时间
	 */
	 
	public void setLurushijian(Date lurushijian) {
		this.lurushijian = lurushijian;
	}
	
	/**
	 * 获取：录入时间
	 */
	public Date getLurushijian() {
		return lurushijian;
	}
				
	
	/**
	 * 设置：用户id
	 */
	 
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	
	/**
	 * 获取：用户id
	 */
	public Long getUserid() {
		return userid;
	}
			
}
