package com.dao;

import com.entity.WupinshenlingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WupinshenlingVO;
import com.entity.view.WupinshenlingView;


/**
 * 物品申领
 * 
 * @author 
 * @email 
 * @date 2021-03-13 13:10:51
 */
public interface WupinshenlingDao extends BaseMapper<WupinshenlingEntity> {
	
	List<WupinshenlingVO> selectListVO(@Param("ew") Wrapper<WupinshenlingEntity> wrapper);
	
	WupinshenlingVO selectVO(@Param("ew") Wrapper<WupinshenlingEntity> wrapper);
	
	List<WupinshenlingView> selectListView(@Param("ew") Wrapper<WupinshenlingEntity> wrapper);

	List<WupinshenlingView> selectListView(Pagination page,@Param("ew") Wrapper<WupinshenlingEntity> wrapper);
	
	WupinshenlingView selectView(@Param("ew") Wrapper<WupinshenlingEntity> wrapper);
	
}
