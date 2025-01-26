package com.entity.vo;

import com.entity.JianglidengjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 奖励登记
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public class JianglidengjiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 奖励详情
	 */
	
	private String jianglixiangqing;
		
	/**
	 * 家长账号
	 */
	
	private String jiazhangzhanghao;
		
	/**
	 * 孩子姓名
	 */
	
	private String haizixingming;
		
	/**
	 * 教师工号
	 */
	
	private String jiaoshigonghao;
		
	/**
	 * 登记时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjishijian;
				
	
	/**
	 * 设置：奖励详情
	 */
	 
	public void setJianglixiangqing(String jianglixiangqing) {
		this.jianglixiangqing = jianglixiangqing;
	}
	
	/**
	 * 获取：奖励详情
	 */
	public String getJianglixiangqing() {
		return jianglixiangqing;
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
	 * 设置：登记时间
	 */
	 
	public void setDengjishijian(Date dengjishijian) {
		this.dengjishijian = dengjishijian;
	}
	
	/**
	 * 获取：登记时间
	 */
	public Date getDengjishijian() {
		return dengjishijian;
	}
			
}
