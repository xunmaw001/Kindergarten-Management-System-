package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JianglidengjiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JianglidengjiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JianglidengjiView;


/**
 * 奖励登记
 *
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
public interface JianglidengjiService extends IService<JianglidengjiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JianglidengjiVO> selectListVO(Wrapper<JianglidengjiEntity> wrapper);
   	
   	JianglidengjiVO selectVO(@Param("ew") Wrapper<JianglidengjiEntity> wrapper);
   	
   	List<JianglidengjiView> selectListView(Wrapper<JianglidengjiEntity> wrapper);
   	
   	JianglidengjiView selectView(@Param("ew") Wrapper<JianglidengjiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JianglidengjiEntity> wrapper);
   	

}

