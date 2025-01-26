package com.entity.view;

import com.entity.ShoufeixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 收费信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
@TableName("shoufeixinxi")
public class ShoufeixinxiView  extends ShoufeixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShoufeixinxiView(){
	}
 
 	public ShoufeixinxiView(ShoufeixinxiEntity shoufeixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, shoufeixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
