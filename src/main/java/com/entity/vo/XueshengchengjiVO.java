package com.entity.vo;

import com.entity.XueshengchengjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 学生成绩
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public class XueshengchengjiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 家长账号
	 */
	
	private String jiazhangzhanghao;
		
	/**
	 * 班级名称
	 */
	
	private String banjimingcheng;
		
	/**
	 * 孩子姓名
	 */
	
	private String haizixingming;
		
	/**
	 * 成绩
	 */
	
	private Integer chengji;
		
	/**
	 * 成绩等级
	 */
	
	private String chengjidengji;
		
	/**
	 * 班级排名
	 */
	
	private String banjipaiming;
		
	/**
	 * 教师评语
	 */
	
	private String jiaoshipingyu;
		
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
	 * 设置：班级名称
	 */
	 
	public void setBanjimingcheng(String banjimingcheng) {
		this.banjimingcheng = banjimingcheng;
	}
	
	/**
	 * 获取：班级名称
	 */
	public String getBanjimingcheng() {
		return banjimingcheng;
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
	 * 设置：成绩
	 */
	 
	public void setChengji(Integer chengji) {
		this.chengji = chengji;
	}
	
	/**
	 * 获取：成绩
	 */
	public Integer getChengji() {
		return chengji;
	}
				
	
	/**
	 * 设置：成绩等级
	 */
	 
	public void setChengjidengji(String chengjidengji) {
		this.chengjidengji = chengjidengji;
	}
	
	/**
	 * 获取：成绩等级
	 */
	public String getChengjidengji() {
		return chengjidengji;
	}
				
	
	/**
	 * 设置：班级排名
	 */
	 
	public void setBanjipaiming(String banjipaiming) {
		this.banjipaiming = banjipaiming;
	}
	
	/**
	 * 获取：班级排名
	 */
	public String getBanjipaiming() {
		return banjipaiming;
	}
				
	
	/**
	 * 设置：教师评语
	 */
	 
	public void setJiaoshipingyu(String jiaoshipingyu) {
		this.jiaoshipingyu = jiaoshipingyu;
	}
	
	/**
	 * 获取：教师评语
	 */
	public String getJiaoshipingyu() {
		return jiaoshipingyu;
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
