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


import com.dao.JianglidengjiDao;
import com.entity.JianglidengjiEntity;
import com.service.JianglidengjiService;
import com.entity.vo.JianglidengjiVO;
import com.entity.view.JianglidengjiView;

@Service("jianglidengjiService")
public class JianglidengjiServiceImpl extends ServiceImpl<JianglidengjiDao, JianglidengjiEntity> implements JianglidengjiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JianglidengjiEntity> page = this.selectPage(
                new Query<JianglidengjiEntity>(params).getPage(),
                new EntityWrapper<JianglidengjiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JianglidengjiEntity> wrapper) {
		  Page<JianglidengjiView> page =new Query<JianglidengjiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JianglidengjiVO> selectListVO(Wrapper<JianglidengjiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JianglidengjiVO selectVO(Wrapper<JianglidengjiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JianglidengjiView> selectListView(Wrapper<JianglidengjiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JianglidengjiView selectView(Wrapper<JianglidengjiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
