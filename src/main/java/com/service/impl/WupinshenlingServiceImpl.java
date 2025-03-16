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


import com.dao.WupinshenlingDao;
import com.entity.WupinshenlingEntity;
import com.service.WupinshenlingService;
import com.entity.vo.WupinshenlingVO;
import com.entity.view.WupinshenlingView;

@Service("wupinshenlingService")
public class WupinshenlingServiceImpl extends ServiceImpl<WupinshenlingDao, WupinshenlingEntity> implements WupinshenlingService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WupinshenlingEntity> page = this.selectPage(
                new Query<WupinshenlingEntity>(params).getPage(),
                new EntityWrapper<WupinshenlingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WupinshenlingEntity> wrapper) {
		  Page<WupinshenlingView> page =new Query<WupinshenlingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WupinshenlingVO> selectListVO(Wrapper<WupinshenlingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WupinshenlingVO selectVO(Wrapper<WupinshenlingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WupinshenlingView> selectListView(Wrapper<WupinshenlingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WupinshenlingView selectView(Wrapper<WupinshenlingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
