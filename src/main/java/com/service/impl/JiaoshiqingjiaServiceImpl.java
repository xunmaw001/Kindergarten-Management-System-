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


import com.dao.JiaoshiqingjiaDao;
import com.entity.JiaoshiqingjiaEntity;
import com.service.JiaoshiqingjiaService;
import com.entity.vo.JiaoshiqingjiaVO;
import com.entity.view.JiaoshiqingjiaView;

@Service("jiaoshiqingjiaService")
public class JiaoshiqingjiaServiceImpl extends ServiceImpl<JiaoshiqingjiaDao, JiaoshiqingjiaEntity> implements JiaoshiqingjiaService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiaoshiqingjiaEntity> page = this.selectPage(
                new Query<JiaoshiqingjiaEntity>(params).getPage(),
                new EntityWrapper<JiaoshiqingjiaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiaoshiqingjiaEntity> wrapper) {
		  Page<JiaoshiqingjiaView> page =new Query<JiaoshiqingjiaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiaoshiqingjiaVO> selectListVO(Wrapper<JiaoshiqingjiaEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiaoshiqingjiaVO selectVO(Wrapper<JiaoshiqingjiaEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiaoshiqingjiaView> selectListView(Wrapper<JiaoshiqingjiaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiaoshiqingjiaView selectView(Wrapper<JiaoshiqingjiaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
