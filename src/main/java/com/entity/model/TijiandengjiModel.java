package com.entity.model;

import com.entity.TijiandengjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 体检登记
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public class TijiandengjiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
