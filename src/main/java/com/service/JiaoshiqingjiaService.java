package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiaoshiqingjiaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiaoshiqingjiaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiaoshiqingjiaView;


/**
 * 教师请假
 *
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public interface JiaoshiqingjiaService extends IService<JiaoshiqingjiaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiaoshiqingjiaVO> selectListVO(Wrapper<JiaoshiqingjiaEntity> wrapper);
   	
   	JiaoshiqingjiaVO selectVO(@Param("ew") Wrapper<JiaoshiqingjiaEntity> wrapper);
   	
   	List<JiaoshiqingjiaView> selectListView(Wrapper<JiaoshiqingjiaEntity> wrapper);
   	
   	JiaoshiqingjiaView selectView(@Param("ew") Wrapper<JiaoshiqingjiaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiaoshiqingjiaEntity> wrapper);
   	

}

