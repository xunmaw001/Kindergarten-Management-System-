package com.dao;

import com.entity.TijiandengjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.TijiandengjiVO;
import com.entity.view.TijiandengjiView;


/**
 * 体检登记
 * 
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public interface TijiandengjiDao extends BaseMapper<TijiandengjiEntity> {
	
	List<TijiandengjiVO> selectListVO(@Param("ew") Wrapper<TijiandengjiEntity> wrapper);
	
	TijiandengjiVO selectVO(@Param("ew") Wrapper<TijiandengjiEntity> wrapper);
	
	List<TijiandengjiView> selectListView(@Param("ew") Wrapper<TijiandengjiEntity> wrapper);

	List<TijiandengjiView> selectListView(Pagination page,@Param("ew") Wrapper<TijiandengjiEntity> wrapper);
	
	TijiandengjiView selectView(@Param("ew") Wrapper<TijiandengjiEntity> wrapper);
	

}
