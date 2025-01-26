package com.entity.model;

import com.entity.YouerqingjiaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 幼儿请假
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public class YouerqingjiaModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 请假类型
	 */
	
	private String qingjialeixing;
		
	/**
	 * 请假事由
	 */
	
	private String qingjiashiyou;
		
	/**
	 * 请假天数
	 */
	
	private Integer qingjiatianshu;
		
	/**
	 * 请假时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date qingjiashijian;
		
	/**
	 * 教师工号
	 */
	
	private String jiaoshigonghao;
		
	/**
	 * 家长账号
	 */
	
	private String jiazhangzhanghao;
		
	/**
	 * 孩子姓名
	 */
	
	private String haizixingming;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：请假类型
	 */
	 
	public void setQingjialeixing(String qingjialeixing) {
		this.qingjialeixing = qingjialeixing;
	}
	
	/**
	 * 获取：请假类型
	 */
	public String getQingjialeixing() {
		return qingjialeixing;
	}
				
	
	/**
	 * 设置：请假事由
	 */
	 
	public void setQingjiashiyou(String qingjiashiyou) {
		this.qingjiashiyou = qingjiashiyou;
	}
	
	/**
	 * 获取：请假事由
	 */
	public String getQingjiashiyou() {
		return qingjiashiyou;
	}
				
	
	/**
	 * 设置：请假天数
	 */
	 
	public void setQingjiatianshu(Integer qingjiatianshu) {
		this.qingjiatianshu = qingjiatianshu;
	}
	
	/**
	 * 获取：请假天数
	 */
	public Integer getQingjiatianshu() {
		return qingjiatianshu;
	}
				
	
	/**
	 * 设置：请假时间
	 */
	 
	public void setQingjiashijian(Date qingjiashijian) {
		this.qingjiashijian = qingjiashijian;
	}
	
	/**
	 * 获取：请假时间
	 */
	public Date getQingjiashijian() {
		return qingjiashijian;
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
	 * 设置：家长账号
	 */
	 
	public void setJiazhangzhanghao(String jiazhangzhanghao) {
		this.jiazhangzhanghao = jiazhangzhanghao;
	}
	
	/**
	 * 获取：家长账号
	 */
	public String getJiazhangzhanghao() {
		return jiazhangzhanghao;
	}
				
	
	/**
	 * 设置：孩子姓名
	 */
	 
	public void setHaizixingming(String haizixingming) {
		this.haizixingming = haizixingming;
	}
	
	/**
	 * 获取：孩子姓名
	 */
	public String getHaizixingming() {
		return haizixingming;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
			
}
