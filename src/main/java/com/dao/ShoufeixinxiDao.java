package com.dao;

import com.entity.ShoufeixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShoufeixinxiVO;
import com.entity.view.ShoufeixinxiView;


/**
 * 收费信息
 * 
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public interface ShoufeixinxiDao extends BaseMapper<ShoufeixinxiEntity> {
	
	List<ShoufeixinxiVO> selectListVO(@Param("ew") Wrapper<ShoufeixinxiEntity> wrapper);
	
	ShoufeixinxiVO selectVO(@Param("ew") Wrapper<ShoufeixinxiEntity> wrapper);
	
	List<ShoufeixinxiView> selectListView(@Param("ew") Wrapper<ShoufeixinxiEntity> wrapper);

	List<ShoufeixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ShoufeixinxiEntity> wrapper);
	
	ShoufeixinxiView selectView(@Param("ew") Wrapper<ShoufeixinxiEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params")Map<String, Object> params,@Param("ew") Wrapper<ShoufeixinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ShoufeixinxiEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<ShoufeixinxiEntity> wrapper);



}
