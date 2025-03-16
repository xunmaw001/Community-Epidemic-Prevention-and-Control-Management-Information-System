package com.entity.view;

import com.entity.YisirenyuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 疑似人员
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-13 13:10:51
 */
@TableName("yisirenyuan")
public class YisirenyuanView  extends YisirenyuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YisirenyuanView(){
	}
 
 	public YisirenyuanView(YisirenyuanEntity yisirenyuanEntity){
 	try {
			BeanUtils.copyProperties(this, yisirenyuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
