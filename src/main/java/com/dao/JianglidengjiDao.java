package com.dao;

import com.entity.JianglidengjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JianglidengjiVO;
import com.entity.view.JianglidengjiView;


/**
 * 奖励登记
 * 
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public interface JianglidengjiDao extends BaseMapper<JianglidengjiEntity> {
	
	List<JianglidengjiVO> selectListVO(@Param("ew") Wrapper<JianglidengjiEntity> wrapper);
	
	JianglidengjiVO selectVO(@Param("ew") Wrapper<JianglidengjiEntity> wrapper);
	
	List<JianglidengjiView> selectListView(@Param("ew") Wrapper<JianglidengjiEntity> wrapper);

	List<JianglidengjiView> selectListView(Pagination page,@Param("ew") Wrapper<JianglidengjiEntity> wrapper);
	
	JianglidengjiView selectView(@Param("ew") Wrapper<JianglidengjiEntity> wrapper);
	

}
