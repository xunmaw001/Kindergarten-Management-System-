package com.dao;

import com.entity.YiqingshangbaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YiqingshangbaoVO;
import com.entity.view.YiqingshangbaoView;


/**
 * 疫情上报
 * 
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public interface YiqingshangbaoDao extends BaseMapper<YiqingshangbaoEntity> {
	
	List<YiqingshangbaoVO> selectListVO(@Param("ew") Wrapper<YiqingshangbaoEntity> wrapper);
	
	YiqingshangbaoVO selectVO(@Param("ew") Wrapper<YiqingshangbaoEntity> wrapper);
	
	List<YiqingshangbaoView> selectListView(@Param("ew") Wrapper<YiqingshangbaoEntity> wrapper);

	List<YiqingshangbaoView> selectListView(Pagination page,@Param("ew") Wrapper<YiqingshangbaoEntity> wrapper);
	
	YiqingshangbaoView selectView(@Param("ew") Wrapper<YiqingshangbaoEntity> wrapper);
	

}
