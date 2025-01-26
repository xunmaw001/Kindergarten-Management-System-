package com.dao;

import com.entity.JiaoshiqingjiaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiaoshiqingjiaVO;
import com.entity.view.JiaoshiqingjiaView;


/**
 * 教师请假
 * 
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public interface JiaoshiqingjiaDao extends BaseMapper<JiaoshiqingjiaEntity> {
	
	List<JiaoshiqingjiaVO> selectListVO(@Param("ew") Wrapper<JiaoshiqingjiaEntity> wrapper);
	
	JiaoshiqingjiaVO selectVO(@Param("ew") Wrapper<JiaoshiqingjiaEntity> wrapper);
	
	List<JiaoshiqingjiaView> selectListView(@Param("ew") Wrapper<JiaoshiqingjiaEntity> wrapper);

	List<JiaoshiqingjiaView> selectListView(Pagination page,@Param("ew") Wrapper<JiaoshiqingjiaEntity> wrapper);
	
	JiaoshiqingjiaView selectView(@Param("ew") Wrapper<JiaoshiqingjiaEntity> wrapper);
	

}
