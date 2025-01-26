package com.entity.model;

import com.entity.HuiyijiluEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 会议记录
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public class HuiyijiluModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 会议主题
	 */
	
	private String huiyizhuti;
		
	/**
	 * 参与人员
	 */
	
	private String canyurenyuan;
		
	/**
	 * 会议内容
	 */
	
	private String huiyineirong;
		
	/**
	 * 教师工号
	 */
	
	private String jiaoshigonghao;
		
	/**
	 * 会议时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date huiyishijian;
				
	
	/**
	 * 设置：会议主题
	 */
	 
	public void setHuiyizhuti(String huiyizhuti) {
		this.huiyizhuti = huiyizhuti;
	}
	
	/**
	 * 获取：会议主题
	 */
	public String getHuiyizhuti() {
		return huiyizhuti;
	}
				
	
	/**
	 * 设置：参与人员
	 */
	 
	public void setCanyurenyuan(String canyurenyuan) {
		this.canyurenyuan = canyurenyuan;
	}
	
	/**
	 * 获取：参与人员
	 */
	public String getCanyurenyuan() {
		return canyurenyuan;
	}
				
	
	/**
	 * 设置：会议内容
	 */
	 
	public void setHuiyineirong(String huiyineirong) {
		this.huiyineirong = huiyineirong;
	}
	
	/**
	 * 获取：会议内容
	 */
	public String getHuiyineirong() {
		return huiyineirong;
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
	 * 设置：会议时间
	 */
	 
	public void setHuiyishijian(Date huiyishijian) {
		this.huiyishijian = huiyishijian;
	}
	
	/**
	 * 获取：会议时间
	 */
	public Date getHuiyishijian() {
		return huiyishijian;
	}
			
}
