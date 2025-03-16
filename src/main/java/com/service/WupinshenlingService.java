package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WupinshenlingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WupinshenlingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WupinshenlingView;


/**
 * 物品申领
 *
 * @author 
 * @email 
 * @date 2021-03-13 13:10:51
 */
public interface WupinshenlingService extends IService<WupinshenlingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WupinshenlingVO> selectListVO(Wrapper<WupinshenlingEntity> wrapper);
   	
   	WupinshenlingVO selectVO(@Param("ew") Wrapper<WupinshenlingEntity> wrapper);
   	
   	List<WupinshenlingView> selectListView(Wrapper<WupinshenlingEntity> wrapper);
   	
   	WupinshenlingView selectView(@Param("ew") Wrapper<WupinshenlingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WupinshenlingEntity> wrapper);
   	
}

