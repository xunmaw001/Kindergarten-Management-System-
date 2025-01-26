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

import com.entity.JiaoshiqingjiaEntity;
import com.entity.view.JiaoshiqingjiaView;

import com.service.JiaoshiqingjiaService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 教师请假
 * 后端接口
 * @author 
 * @email 
 * @date 2023-03-21 00:07:46
 */
@RestController
@RequestMapping("/jiaoshiqingjia")
public class JiaoshiqingjiaController {
    @Autowired
    private JiaoshiqingjiaService jiaoshiqingjiaService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,JiaoshiqingjiaEntity jiaoshiqingjia, 
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") Date qingjiashijianstart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") Date qingjiashijianend,
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			jiaoshiqingjia.setJiaoshigonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<JiaoshiqingjiaEntity> ew = new EntityWrapper<JiaoshiqingjiaEntity>();

                if(qingjiashijianstart!=null) ew.ge("qingjiashijian", qingjiashijianstart);
                if(qingjiashijianend!=null) ew.le("qingjiashijian", qingjiashijianend);

		PageUtils page = jiaoshiqingjiaService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiaoshiqingjia), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,JiaoshiqingjiaEntity jiaoshiqingjia, 
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") Date qingjiashijianstart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") Date qingjiashijianend,
		HttpServletRequest request){
        EntityWrapper<JiaoshiqingjiaEntity> ew = new EntityWrapper<JiaoshiqingjiaEntity>();
                if(qingjiashijianstart!=null) ew.ge("qingjiashijian", qingjiashijianstart);
                if(qingjiashijianend!=null) ew.le("qingjiashijian", qingjiashijianend);

		PageUtils page = jiaoshiqingjiaService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiaoshiqingjia), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( JiaoshiqingjiaEntity jiaoshiqingjia){
       	EntityWrapper<JiaoshiqingjiaEntity> ew = new EntityWrapper<JiaoshiqingjiaEntity>();
      	ew.allEq(MPUtil.allEQMapPre( jiaoshiqingjia, "jiaoshiqingjia")); 
        return R.ok().put("data", jiaoshiqingjiaService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(JiaoshiqingjiaEntity jiaoshiqingjia){
        EntityWrapper< JiaoshiqingjiaEntity> ew = new EntityWrapper< JiaoshiqingjiaEntity>();
 		ew.allEq(MPUtil.allEQMapPre( jiaoshiqingjia, "jiaoshiqingjia")); 
		JiaoshiqingjiaView jiaoshiqingjiaView =  jiaoshiqingjiaService.selectView(ew);
		return R.ok("查询教师请假成功").put("data", jiaoshiqingjiaView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        JiaoshiqingjiaEntity jiaoshiqingjia = jiaoshiqingjiaService.selectById(id);
        return R.ok().put("data", jiaoshiqingjia);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        JiaoshiqingjiaEntity jiaoshiqingjia = jiaoshiqingjiaService.selectById(id);
        return R.ok().put("data", jiaoshiqingjia);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody JiaoshiqingjiaEntity jiaoshiqingjia, HttpServletRequest request){
    	jiaoshiqingjia.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jiaoshiqingjia);

        jiaoshiqingjiaService.insert(jiaoshiqingjia);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody JiaoshiqingjiaEntity jiaoshiqingjia, HttpServletRequest request){
    	jiaoshiqingjia.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jiaoshiqingjia);

        jiaoshiqingjiaService.insert(jiaoshiqingjia);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody JiaoshiqingjiaEntity jiaoshiqingjia, HttpServletRequest request){
        //ValidatorUtils.validateEntity(jiaoshiqingjia);
        jiaoshiqingjiaService.updateById(jiaoshiqingjia);//全部更新
        return R.ok();
    }
    
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        jiaoshiqingjiaService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<JiaoshiqingjiaEntity> wrapper = new EntityWrapper<JiaoshiqingjiaEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			wrapper.eq("jiaoshigonghao", (String)request.getSession().getAttribute("username"));
		}

		int count = jiaoshiqingjiaService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	









}
