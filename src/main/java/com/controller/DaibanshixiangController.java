package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.DaibanshixiangEntity;
import com.entity.view.DaibanshixiangView;

import com.service.DaibanshixiangService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 待办事项
 * 后端接口
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
@RestController
@RequestMapping("/daibanshixiang")
public class DaibanshixiangController {
    @Autowired
    private DaibanshixiangService daibanshixiangService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DaibanshixiangEntity daibanshixiang, 
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date daibanshijianstart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date daibanshijianend,
		HttpServletRequest request){
    	if(!request.getSession().getAttribute("role").toString().equals("管理员")) {
    		daibanshixiang.setUserid((Long)request.getSession().getAttribute("userId"));
    	}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			daibanshixiang.setJiaoshigonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<DaibanshixiangEntity> ew = new EntityWrapper<DaibanshixiangEntity>();

                if(daibanshijianstart!=null) ew.ge("daibanshijian", daibanshijianstart);
                if(daibanshijianend!=null) ew.le("daibanshijian", daibanshijianend);

		PageUtils page = daibanshixiangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, daibanshixiang), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,DaibanshixiangEntity daibanshixiang, 
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date daibanshijianstart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date daibanshijianend,
		HttpServletRequest request){
        EntityWrapper<DaibanshixiangEntity> ew = new EntityWrapper<DaibanshixiangEntity>();
                if(daibanshijianstart!=null) ew.ge("daibanshijian", daibanshijianstart);
                if(daibanshijianend!=null) ew.le("daibanshijian", daibanshijianend);

		PageUtils page = daibanshixiangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, daibanshixiang), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DaibanshixiangEntity daibanshixiang){
       	EntityWrapper<DaibanshixiangEntity> ew = new EntityWrapper<DaibanshixiangEntity>();
      	ew.allEq(MPUtil.allEQMapPre( daibanshixiang, "daibanshixiang")); 
        return R.ok().put("data", daibanshixiangService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DaibanshixiangEntity daibanshixiang){
        EntityWrapper< DaibanshixiangEntity> ew = new EntityWrapper< DaibanshixiangEntity>();
 		ew.allEq(MPUtil.allEQMapPre( daibanshixiang, "daibanshixiang")); 
		DaibanshixiangView daibanshixiangView =  daibanshixiangService.selectView(ew);
		return R.ok("查询待办事项成功").put("data", daibanshixiangView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        DaibanshixiangEntity daibanshixiang = daibanshixiangService.selectById(id);
        return R.ok().put("data", daibanshixiang);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        DaibanshixiangEntity daibanshixiang = daibanshixiangService.selectById(id);
        return R.ok().put("data", daibanshixiang);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody DaibanshixiangEntity daibanshixiang, HttpServletRequest request){
    	daibanshixiang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(daibanshixiang);
    	daibanshixiang.setUserid((Long)request.getSession().getAttribute("userId"));

        daibanshixiangService.insert(daibanshixiang);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody DaibanshixiangEntity daibanshixiang, HttpServletRequest request){
    	daibanshixiang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(daibanshixiang);

        daibanshixiangService.insert(daibanshixiang);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody DaibanshixiangEntity daibanshixiang, HttpServletRequest request){
        //ValidatorUtils.validateEntity(daibanshixiang);
        daibanshixiangService.updateById(daibanshixiang);//全部更新
        return R.ok();
    }
    
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        daibanshixiangService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<DaibanshixiangEntity> wrapper = new EntityWrapper<DaibanshixiangEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}
		if(!request.getSession().getAttribute("role").toString().equals("管理员")) {
    		wrapper.eq("userid", (Long)request.getSession().getAttribute("userId"));
    	}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			wrapper.eq("jiaoshigonghao", (String)request.getSession().getAttribute("username"));
		}

		int count = daibanshixiangService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	









}
