package com.entity.view;

import com.entity.JiaoshiqingjiaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 教师请假
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
@TableName("jiaoshiqingjia")
public class JiaoshiqingjiaView  extends JiaoshiqingjiaEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiaoshiqingjiaView(){
	}
 
 	public JiaoshiqingjiaView(JiaoshiqingjiaEntity jiaoshiqingjiaEntity){
 	try {
			BeanUtils.copyProperties(this, jiaoshiqingjiaEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
