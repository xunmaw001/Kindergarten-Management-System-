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
 * 工作日志
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
@TableName("gongzuorizhi")
public class GongzuorizhiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public GongzuorizhiEntity() {
		
	}
	
	public GongzuorizhiEntity(T t) {
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
	 * 日志标题
	 */
					
	private String rizhibiaoti;
	
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
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date jilushijian;
	
	
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
	 * 设置：日志标题
	 */
	public void setRizhibiaoti(String rizhibiaoti) {
		this.rizhibiaoti = rizhibiaoti;
	}
	/**
	 * 获取：日志标题
	 */
	public String getRizhibiaoti() {
		return rizhibiaoti;
	}
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
