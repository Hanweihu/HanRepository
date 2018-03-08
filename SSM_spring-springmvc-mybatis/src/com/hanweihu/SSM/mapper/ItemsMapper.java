package com.hanweihu.SSM.mapper;

import java.util.List;

import com.hanweihu.SSM.pojo.Items;

public interface ItemsMapper {
	// 添加商品
	public void addItems(Items items) ;
	
	// 查询商品列表
	public List<Items> showItemsList();
	
	// 根据id批量删除用户
	public void deleteByIds(Integer id);
	
	// 根据id删除单个用户
	public void deleteOneById(Integer id);
	
	// 根据id修改单个用户
	public void updateOne(Items items);
	
	// 根据id查到用户
	public Items selectByID(Integer id);
}
