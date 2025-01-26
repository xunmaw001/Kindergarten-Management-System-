package com.entity.vo;

import com.entity.TesemeishiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 特色美食
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public class TesemeishiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 菜品类别
	 */
	
	private String caipinleibie;
		
	/**
	 * 特色
	 */
	
	private String tese;
		
	/**
	 * 主食材
	 */
	
	private String zhushicai;
		
	/**
	 * 菜品详情
	 */
	
	private String caipinxiangqing;
		
	/**
	 * 菜单时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date caidanshijian;
		
	/**
	 * 赞
	 */
	
	private Integer thumbsupnum;
		
	/**
	 * 踩
	 */
	
	private Integer crazilynum;
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：菜品类别
	 */
	 
	public void setCaipinleibie(String caipinleibie) {
		this.caipinleibie = caipinleibie;
	}
	
	/**
	 * 获取：菜品类别
	 */
	public String getCaipinleibie() {
		return caipinleibie;
	}
				
	
	/**
	 * 设置：特色
	 */
	 
	public void setTese(String tese) {
		this.tese = tese;
	}
	
	/**
	 * 获取：特色
	 */
	public String getTese() {
		return tese;
	}
				
	
	/**
	 * 设置：主食材
	 */
	 
	public void setZhushicai(String zhushicai) {
		this.zhushicai = zhushicai;
	}
	
	/**
	 * 获取：主食材
	 */
	public String getZhushicai() {
		return zhushicai;
	}
				
	
	/**
	 * 设置：菜品详情
	 */
	 
	public void setCaipinxiangqing(String caipinxiangqing) {
		this.caipinxiangqing = caipinxiangqing;
	}
	
	/**
	 * 获取：菜品详情
	 */
	public String getCaipinxiangqing() {
		return caipinxiangqing;
	}
				
	
	/**
	 * 设置：菜单时间
	 */
	 
	public void setCaidanshijian(Date caidanshijian) {
		this.caidanshijian = caidanshijian;
	}
	
	/**
	 * 获取：菜单时间
	 */
	public Date getCaidanshijian() {
		return caidanshijian;
	}
				
	
	/**
	 * 设置：赞
	 */
	 
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
				
	
	/**
	 * 设置：踩
	 */
	 
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
			
}
