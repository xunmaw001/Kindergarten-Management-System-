package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.TijiandengjiDao;
import com.entity.TijiandengjiEntity;
import com.service.TijiandengjiService;
import com.entity.vo.TijiandengjiVO;
import com.entity.view.TijiandengjiView;

@Service("tijiandengjiService")
public class TijiandengjiServiceImpl extends ServiceImpl<TijiandengjiDao, TijiandengjiEntity> implements TijiandengjiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TijiandengjiEntity> page = this.selectPage(
                new Query<TijiandengjiEntity>(params).getPage(),
                new EntityWrapper<TijiandengjiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<TijiandengjiEntity> wrapper) {
		  Page<TijiandengjiView> page =new Query<TijiandengjiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<TijiandengjiVO> selectListVO(Wrapper<TijiandengjiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public TijiandengjiVO selectVO(Wrapper<TijiandengjiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<TijiandengjiView> selectListView(Wrapper<TijiandengjiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public TijiandengjiView selectView(Wrapper<TijiandengjiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
