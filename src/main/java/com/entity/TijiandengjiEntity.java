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
 * 体检登记
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
@TableName("tijiandengji")
public class TijiandengjiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public TijiandengjiEntity() {
		
	}
	
	public TijiandengjiEntity(T t) {
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
	 * 体检名称
	 */
					
	private String tijianmingcheng;
	
	/**
	 * 家长账号
	 */
					
	private String jiazhangzhanghao;
	
	/**
	 * 体检图片
	 */
					
	private String tijiantupian;
	
	/**
	 * 孩子姓名
	 */
					
	private String haizixingming;
	
	/**
	 * 身高
	 */
					
	private String shengao;
	
	/**
	 * 体重
	 */
					
	private Integer tizhong;
	
	/**
	 * 视力
	 */
					
	private String shili;
	
	/**
	 * 心率
	 */
					
	private String xinlv;
	
	/**
	 * 体检详情
	 */
					
	private String tijianxiangqing;
	
	/**
	 * 体检评价
	 */
					
	private String tijianpingjia;
	
	/**
	 * 教师工号
	 */
					
	private String jiaoshigonghao;
	
	/**
	 * 体检时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date tijianshijian;
	
	
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
	 * 设置：体检名称
	 */
	public void setTijianmingcheng(String tijianmingcheng) {
		this.tijianmingcheng = tijianmingcheng;
	}
	/**
	 * 获取：体检名称
	 */
	public String getTijianmingcheng() {
		return tijianmingcheng;
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
	 * 设置：体检图片
	 */
	public void setTijiantupian(String tijiantupian) {
		this.tijiantupian = tijiantupian;
	}
	/**
	 * 获取：体检图片
	 */
	public String getTijiantupian() {
		return tijiantupian;
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
	 * 设置：身高
	 */
	public void setShengao(String shengao) {
		this.shengao = shengao;
	}
	/**
	 * 获取：身高
	 */
	public String getShengao() {
		return shengao;
	}
	/**
	 * 设置：体重
	 */
	public void setTizhong(Integer tizhong) {
		this.tizhong = tizhong;
	}
	/**
	 * 获取：体重
	 */
	public Integer getTizhong() {
		return tizhong;
	}
	/**
	 * 设置：视力
	 */
	public void setShili(String shili) {
		this.shili = shili;
	}
	/**
	 * 获取：视力
	 */
	public String getShili() {
		return shili;
	}
	/**
	 * 设置：心率
	 */
	public void setXinlv(String xinlv) {
		this.xinlv = xinlv;
	}
	/**
	 * 获取：心率
	 */
	public String getXinlv() {
		return xinlv;
	}
	/**
	 * 设置：体检详情
	 */
	public void setTijianxiangqing(String tijianxiangqing) {
		this.tijianxiangqing = tijianxiangqing;
	}
	/**
	 * 获取：体检详情
	 */
	public String getTijianxiangqing() {
		return tijianxiangqing;
	}
	/**
	 * 设置：体检评价
	 */
	public void setTijianpingjia(String tijianpingjia) {
		this.tijianpingjia = tijianpingjia;
	}
	/**
	 * 获取：体检评价
	 */
	public String getTijianpingjia() {
		return tijianpingjia;
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
	 * 设置：体检时间
	 */
	public void setTijianshijian(Date tijianshijian) {
		this.tijianshijian = tijianshijian;
	}
	/**
	 * 获取：体检时间
	 */
	public Date getTijianshijian() {
		return tijianshijian;
	}

}
