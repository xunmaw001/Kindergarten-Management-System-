package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 待办事项
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
@TableName("daibanshixiang")
public class DaibanshixiangEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public DaibanshixiangEntity() {
		
	}
	
	public DaibanshixiangEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 待办事项
	 */
					
	private String daibanshixiang;
	
	/**
	 * 事项内容
	 */
					
	private String shixiangneirong;
	
	/**
	 * 待办时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：待办事项
	 */
	public void setDaibanshixiang(String daibanshixiang) {
		this.daibanshixiang = daibanshixiang;
	}
	/**
	 * 获取：待办事项
	 */
	public String getDaibanshixiang() {
		return daibanshixiang;
	}
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
