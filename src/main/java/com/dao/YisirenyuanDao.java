package com.dao;

import com.entity.YisirenyuanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YisirenyuanVO;
import com.entity.view.YisirenyuanView;


/**
 * 疑似人员
 * 
 * @author 
 * @email 
 * @date 2021-03-13 13:10:51
 */
public interface YisirenyuanDao extends BaseMapper<YisirenyuanEntity> {
	
	List<YisirenyuanVO> selectListVO(@Param("ew") Wrapper<YisirenyuanEntity> wrapper);
	
	YisirenyuanVO selectVO(@Param("ew") Wrapper<YisirenyuanEntity> wrapper);
	
	List<YisirenyuanView> selectListView(@Param("ew") Wrapper<YisirenyuanEntity> wrapper);

	List<YisirenyuanView> selectListView(Pagination page,@Param("ew") Wrapper<YisirenyuanEntity> wrapper);
	
	YisirenyuanView selectView(@Param("ew") Wrapper<YisirenyuanEntity> wrapper);
	
}
