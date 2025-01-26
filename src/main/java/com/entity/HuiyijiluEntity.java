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
 * 会议记录
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
@TableName("huiyijilu")
public class HuiyijiluEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public HuiyijiluEntity() {
		
	}
	
	public HuiyijiluEntity(T t) {
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
	 * 会议编号
	 */
					
	private String huiyibianhao;
	
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
	 * 设置：会议编号
	 */
	public void setHuiyibianhao(String huiyibianhao) {
		this.huiyibianhao = huiyibianhao;
	}
	/**
	 * 获取：会议编号
	 */
	public String getHuiyibianhao() {
		return huiyibianhao;
	}
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
