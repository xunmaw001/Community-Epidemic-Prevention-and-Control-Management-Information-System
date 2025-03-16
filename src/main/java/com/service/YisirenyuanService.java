package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YisirenyuanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YisirenyuanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YisirenyuanView;


/**
 * 疑似人员
 *
 * @author 
 * @email 
 * @date 2021-03-13 13:10:51
 */
public interface YisirenyuanService extends IService<YisirenyuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YisirenyuanVO> selectListVO(Wrapper<YisirenyuanEntity> wrapper);
   	
   	YisirenyuanVO selectVO(@Param("ew") Wrapper<YisirenyuanEntity> wrapper);
   	
   	List<YisirenyuanView> selectListView(Wrapper<YisirenyuanEntity> wrapper);
   	
   	YisirenyuanView selectView(@Param("ew") Wrapper<YisirenyuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YisirenyuanEntity> wrapper);
   	
}

