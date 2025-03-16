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


import com.dao.YisirenyuanDao;
import com.entity.YisirenyuanEntity;
import com.service.YisirenyuanService;
import com.entity.vo.YisirenyuanVO;
import com.entity.view.YisirenyuanView;

@Service("yisirenyuanService")
public class YisirenyuanServiceImpl extends ServiceImpl<YisirenyuanDao, YisirenyuanEntity> implements YisirenyuanService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YisirenyuanEntity> page = this.selectPage(
                new Query<YisirenyuanEntity>(params).getPage(),
                new EntityWrapper<YisirenyuanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YisirenyuanEntity> wrapper) {
		  Page<YisirenyuanView> page =new Query<YisirenyuanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YisirenyuanVO> selectListVO(Wrapper<YisirenyuanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YisirenyuanVO selectVO(Wrapper<YisirenyuanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YisirenyuanView> selectListView(Wrapper<YisirenyuanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YisirenyuanView selectView(Wrapper<YisirenyuanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
