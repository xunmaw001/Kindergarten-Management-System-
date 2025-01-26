package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TijiandengjiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.TijiandengjiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.TijiandengjiView;


/**
 * 体检登记
 *
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public interface TijiandengjiService extends IService<TijiandengjiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<TijiandengjiVO> selectListVO(Wrapper<TijiandengjiEntity> wrapper);
   	
   	TijiandengjiVO selectVO(@Param("ew") Wrapper<TijiandengjiEntity> wrapper);
   	
   	List<TijiandengjiView> selectListView(Wrapper<TijiandengjiEntity> wrapper);
   	
   	TijiandengjiView selectView(@Param("ew") Wrapper<TijiandengjiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<TijiandengjiEntity> wrapper);
   	

}

