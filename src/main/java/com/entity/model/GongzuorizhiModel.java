package com.entity.model;

import com.entity.GongzuorizhiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 工作日志
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public class GongzuorizhiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 日志简介
	 */
	
	private String rizhijianjie;
		
	/**
	 * 日志内容
	 */
	
	private String rizhineirong;
		
	/**
	 * 教师工号
	 */
	
	private String jiaoshigonghao;
		
	/**
	 * 教师姓名
	 */
	
	private String jiaoshixingming;
		
	/**
	 * 记录时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date jilushijian;
				
	
	/**
	 * 设置：日志简介
	 */
	 
	public void setRizhijianjie(String rizhijianjie) {
		this.rizhijianjie = rizhijianjie;
	}
	
	/**
	 * 获取：日志简介
	 */
	public String getRizhijianjie() {
		return rizhijianjie;
	}
				
	
	/**
	 * 设置：日志内容
	 */
	 
	public void setRizhineirong(String rizhineirong) {
		this.rizhineirong = rizhineirong;
	}
	
	/**
	 * 获取：日志内容
	 */
	public String getRizhineirong() {
		return rizhineirong;
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
	 * 设置：教师姓名
	 */
	 
	public void setJiaoshixingming(String jiaoshixingming) {
		this.jiaoshixingming = jiaoshixingming;
	}
	
	/**
	 * 获取：教师姓名
	 */
	public String getJiaoshixingming() {
		return jiaoshixingming;
	}
				
	
	/**
	 * 设置：记录时间
	 */
	 
	public void setJilushijian(Date jilushijian) {
		this.jilushijian = jilushijian;
	}
	
	/**
	 * 获取：记录时间
	 */
	public Date getJilushijian() {
		return jilushijian;
	}
			
}
