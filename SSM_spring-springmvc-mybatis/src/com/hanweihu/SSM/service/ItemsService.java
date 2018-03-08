package com.hanweihu.SSM.service;

import java.util.Date;
import java.util.List;

import com.hanweihu.SSM.pojo.Items;

public interface ItemsService {
	// 添加商品
	public void saveItems(Items items);
	
	// 查询商品列表
	public List<Items> showItemsList();
	
	// 根据id批量删除商品
	public void deleteByIds(Integer id);
	
	// 根据id删除单个商品
	public void deleteOneById(Integer id);
	
	// 根据id查到商品
	public Items selectByID(Integer id);
	
	// 修改单个商品
	public void updateOne(Items items);

}
