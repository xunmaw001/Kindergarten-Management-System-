package com.entity.view;

import com.entity.YiqingshangbaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 疫情上报
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
@TableName("yiqingshangbao")
public class YiqingshangbaoView  extends YiqingshangbaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YiqingshangbaoView(){
	}
 
 	public YiqingshangbaoView(YiqingshangbaoEntity yiqingshangbaoEntity){
 	try {
			BeanUtils.copyProperties(this, yiqingshangbaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
