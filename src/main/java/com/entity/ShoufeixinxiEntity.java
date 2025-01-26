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
 * 收费信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
@TableName("shoufeixinxi")
public class ShoufeixinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ShoufeixinxiEntity() {
		
	}
	
	public ShoufeixinxiEntity(T t) {
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
	 * 费用编号
	 */
					
	private String feiyongbianhao;
	
	/**
	 * 费用名称
	 */
					
	private String feiyongmingcheng;
	
	/**
	 * 费用金额
	 */
					
	private Float feiyongjine;
	
	/**
	 * 费用明细
	 */
					
	private String feiyongmingxi;
	
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
	 * 录入时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date lurushijian;
	
	/**
	 * 是否支付
	 */
					
	private String ispay;
	
	
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
	 * 设置：费用编号
	 */
	public void setFeiyongbianhao(String feiyongbianhao) {
		this.feiyongbianhao = feiyongbianhao;
	}
	/**
	 * 获取：费用编号
	 */
	public String getFeiyongbianhao() {
		return feiyongbianhao;
	}
	/**
	 * 设置：费用名称
	 */
	public void setFeiyongmingcheng(String feiyongmingcheng) {
		this.feiyongmingcheng = feiyongmingcheng;
	}
	/**
	 * 获取：费用名称
	 */
	public String getFeiyongmingcheng() {
		return feiyongmingcheng;
	}
	/**
	 * 设置：费用金额
	 */
	public void setFeiyongjine(Float feiyongjine) {
		this.feiyongjine = feiyongjine;
	}
	/**
	 * 获取：费用金额
	 */
	public Float getFeiyongjine() {
		return feiyongjine;
	}
	/**
	 * 设置：费用明细
	 */
	public void setFeiyongmingxi(String feiyongmingxi) {
		this.feiyongmingxi = feiyongmingxi;
	}
	/**
	 * 获取：费用明细
	 */
	public String getFeiyongmingxi() {
		return feiyongmingxi;
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
	 * 设置：是否支付
	 */
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}

}
